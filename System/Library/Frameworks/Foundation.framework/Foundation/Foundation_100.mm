unint64_t specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(unint64_t __s1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6, uint64_t (*a7)(void), uint64_t (*a8)(void, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t), uint64_t (*a9)(void))
{
  if ((a5 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
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
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  v10 = *__s1;
  if (v10 == 48)
  {
    if (a2 >= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = a2;
    }

    if (a2 >= 2)
    {
      v12 = 0;
      v13 = __s1 + v11;
      v14 = *(__s1 + v11);
      if (*(__s1 + v11) <= 0x57u)
      {
        v15 = __s1;
        if (v14 != 46 && v14 != 69)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v14 == 120)
        {
LABEL_12:
          v15 = v13 + 1;
          if (__s1 + a2 < v13 + 1)
          {
            if (a2 - v11 >= 1)
            {
LABEL_118:
              v60 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v13, a3, a4);
              v62 = v61;
              v64 = v63;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v39 = xmmword_181237560;
LABEL_119:
              *(v39 + 16) = v14;
LABEL_120:
              *(v39 + 24) = v60;
              *(v39 + 32) = v62;
              *(v39 + 40) = v64;
              goto LABEL_121;
            }

            __break(1u);
LABEL_15:
            if (a2)
            {
              v16 = *__s1;
              if (v16 == 48)
              {
                if (a2 >= 1)
                {
                  v17 = 1;
                }

                else
                {
                  v17 = a2;
                }

                v15 = __s1;
                if (a2 < 2)
                {
                  goto LABEL_109;
                }

                v14 = *(__s1 + v17);
                v18 = (v14 - 46) > 0x37 || ((1 << (v14 - 46)) & 0x80000000800001) == 0;
                v15 = __s1;
                if (!v18)
                {
                  goto LABEL_109;
                }

                v19 = v14 - 58;
                v20 = __s1 + v17;
LABEL_71:
                v34 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v20, a3, a4);
                v36 = v35;
                v38 = v37;
                if (v19 > 0xFFFFFFF5)
                {
                  lazy protocol witness table accessor for type JSONError and conformance JSONError();
                  swift_allocError();
                  *v39 = v34;
                  *(v39 + 8) = v36;
                  *(v39 + 16) = v38;
                  *(v39 + 24) = 0;
                  *(v39 + 32) = 0;
                  *(v39 + 40) = 0;
                  v65 = 10;
                  goto LABEL_241;
                }

                lazy protocol witness table accessor for type JSONError and conformance JSONError();
                swift_allocError();
                *v39 = xmmword_181237560;
                *(v39 + 16) = v14;
                *(v39 + 24) = v34;
                *(v39 + 32) = v36;
                *(v39 + 40) = v38;
LABEL_121:
                v65 = 1;
LABEL_241:
                *(v39 + 48) = v65;
                return swift_willThrow();
              }

              v15 = __s1;
              if ((v16 - 58) >= 0xFFFFFFF7)
              {
                goto LABEL_109;
              }

              if (v16 != 45)
              {
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
                goto LABEL_290;
              }

              if (a2 < 2)
              {
                v22 = __s1 - a3;
                if (__s1 >= a3)
                {
                  v23 = a3 + a4;
                  if (a3 + a4 >= __s1)
                  {
                    if (v23 >= __s1 + 1)
                    {
                      v23 = __s1 + 1;
                    }

                    if (v23 <= a3)
                    {
                      v31 = 0;
                      v26 = 1;
LABEL_151:
                      lazy protocol witness table accessor for type JSONError and conformance JSONError();
                      swift_allocError();
                      *v79 = 0xD000000000000010;
                      *(v79 + 8) = 0x8000000181481B20;
                      *(v79 + 16) = 45;
                      *(v79 + 24) = v26;
                      *(v79 + 32) = v31;
                      *(v79 + 40) = v22;
                      *(v79 + 48) = 1;
                      return swift_willThrow();
                    }

                    v24 = a4 + a3;
                    v25 = -a3;
                    v26 = 1;
LABEL_49:
                    while (1)
                    {
                      v27 = 0;
                      v28 = 0;
                      v29 = v24 - a3;
                      while (1)
                      {
                        if ((v25 + a3 + v28) < 0 || (v29 + v27) < 1)
                        {
                          __break(1u);
LABEL_270:
                          __break(1u);
                          goto LABEL_271;
                        }

                        v30 = *(a3 + v28);
                        if (v30 == 10)
                        {
                          v33 = __OFADD__(v26++, 1);
                          if (v33)
                          {
                            goto LABEL_288;
                          }

                          a3 += v28 + 1;
                          if (a3 >= v23)
                          {
                            goto LABEL_67;
                          }

                          goto LABEL_49;
                        }

                        if (v30 == 13)
                        {
                          break;
                        }

                        v31 = v28 + 1;
                        if (__OFADD__(v28, 1))
                        {
                          goto LABEL_270;
                        }

                        ++v28;
                        --v27;
                        if (a3 + v28 >= v23)
                        {
                          goto LABEL_151;
                        }
                      }

                      v32 = a3 + v28;
                      if (a3 + v28 + 1 > __s1)
                      {
                        goto LABEL_62;
                      }

                      if (((v25 + a3 + v28 + 1) & 0x8000000000000000) != 0 || (~v28 + v29) < 1)
                      {
                        goto LABEL_294;
                      }

                      if (*(v32 + 1) == 10)
                      {
                        v32 = a3 + v28 + 1;
                      }

LABEL_62:
                      v33 = __OFADD__(v26++, 1);
                      if (v33)
                      {
                        goto LABEL_289;
                      }

                      a3 = v32 + 1;
                      if (v32 + 1 >= v23)
                      {
LABEL_67:
                        v31 = 0;
                        goto LABEL_151;
                      }
                    }
                  }
                }

                goto LABEL_284;
              }

              v15 = __s1 + 1;
              v21 = *(__s1 + 1);
              if (v21 != 48)
              {
                if ((v21 - 58) < 0xFFFFFFF7)
                {
                  v47 = v15 - a3;
                  if (v15 >= a3)
                  {
                    v48 = a3 + a4;
                    if (a3 + a4 >= v15)
                    {
                      if (v48 >= __s1 + 2)
                      {
                        v48 = __s1 + 2;
                      }

                      if (v48 > a3)
                      {
                        v49 = a4 + a3;
                        v50 = -a3;
                        v51 = 1;
                        while (2)
                        {
                          v52 = 0;
                          v53 = 0;
                          v54 = v49 - a3;
                          while (1)
                          {
                            if ((v50 + a3 + v53) < 0 || (v54 + v52) < 1)
                            {
                              goto LABEL_275;
                            }

                            v55 = *(a3 + v53);
                            if (v55 == 10)
                            {
                              break;
                            }

                            if (v55 == 13)
                            {
                              v57 = a3 + v53;
                              if (a3 + v53 <= __s1)
                              {
                                if (((v50 + a3 + v53 + 1) & 0x8000000000000000) != 0 || (~v53 + v54) < 1)
                                {
                                  goto LABEL_300;
                                }

                                if (*(v57 + 1) == 10)
                                {
                                  ++v57;
                                }
                              }

                              v33 = __OFADD__(v51++, 1);
                              if (v33)
                              {
                                goto LABEL_298;
                              }

                              a3 = v57 + 1;
                              goto LABEL_107;
                            }

                            v56 = v53 + 1;
                            if (__OFADD__(v53, 1))
                            {
                              goto LABEL_277;
                            }

                            ++v53;
                            --v52;
                            if (a3 + v53 >= v48)
                            {
                              goto LABEL_249;
                            }
                          }

                          v33 = __OFADD__(v51++, 1);
                          if (v33)
                          {
                            goto LABEL_297;
                          }

                          a3 += v53 + 1;
LABEL_107:
                          if (a3 < v48)
                          {
                            continue;
                          }

                          break;
                        }

                        v56 = 0;
                        goto LABEL_249;
                      }

                      v56 = 0;
                      v51 = 1;
LABEL_249:
                      lazy protocol witness table accessor for type JSONError and conformance JSONError();
                      swift_allocError();
                      *v155 = 0xD000000000000013;
                      *(v155 + 8) = 0x8000000181481F30;
                      *(v155 + 16) = v21;
                      *(v155 + 24) = v51;
                      *(v155 + 32) = v56;
                      *(v155 + 40) = v47;
                      *(v155 + 48) = 1;
                      return swift_willThrow();
                    }
                  }

                  goto LABEL_293;
                }

                goto LABEL_109;
              }

              if (a2 == 2 || (v14 = *(__s1 + 2), (v14 - 46) <= 0x37) && ((1 << (v14 - 46)) & 0x80000000800001) != 0)
              {
LABEL_109:
                if (a6)
                {
                  v58 = v15 + 1;
                  if (v15 + 1 < __s1 + a2)
                  {
                    v59 = 0;
                    while (1)
                    {
                      v14 = *(v58 + v59);
                      if ((v14 | 0x20) == 0x65)
                      {
                        break;
                      }

                      if (~v15 + a2 + __s1 == ++v59)
                      {
                        goto LABEL_122;
                      }
                    }

                    v13 = v58 + v59;
                    if (*(v13 - 1) - 58 <= 0xFFFFFFF5)
                    {
                      if (((v15 - __s1 + v59 + 1) & 0x8000000000000000) == 0 && (~v15 + a2 + __s1 - v59) >= 1)
                      {
                        goto LABEL_118;
                      }

                      goto LABEL_287;
                    }
                  }
                }

LABEL_122:
                v66 = __s1 + a2;
                v67 = (__s1 + a2 - 1);
                v10 = *v67;
                if ((v10 - 58) <= 0xFFFFFFF5)
                {
                  v15 = &v67[-a3];
                  if (v67 >= a3 && a3 + a4 >= v67)
                  {
                    if (a3 + a4 < v66)
                    {
                      v66 = a3 + a4;
                    }

                    if (v66 > a3)
                    {
                      v68 = a4 + a3;
                      v69 = -a3;
                      v70 = 1;
                      while (2)
                      {
                        v71 = 0;
                        v72 = 0;
                        v73 = v68 - a3;
                        while (1)
                        {
                          if ((v69 + a3 + v72) < 0 || (v73 + v71) < 1)
                          {
                            __break(1u);
                            goto LABEL_264;
                          }

                          v74 = *(a3 + v72);
                          if (v74 == 10)
                          {
                            v33 = __OFADD__(v70++, 1);
                            if (v33)
                            {
                              goto LABEL_282;
                            }

                            a3 += v72 + 1;
                            goto LABEL_146;
                          }

                          if (v74 == 13)
                          {
                            break;
                          }

                          v75 = v72 + 1;
                          if (__OFADD__(v72, 1))
                          {
                            __break(1u);
                            goto LABEL_266;
                          }

                          ++v72;
                          --v71;
                          if (a3 + v72 >= v66)
                          {
                            goto LABEL_236;
                          }
                        }

                        v76 = a3 + v72;
                        if (v67 >= a3 + v72 + 1)
                        {
                          if (((v69 + a3 + v72 + 1) & 0x8000000000000000) != 0 || (~v72 + v73) < 1)
                          {
                            goto LABEL_286;
                          }

                          if (*(v76 + 1) == 10)
                          {
                            v76 = a3 + v72 + 1;
                          }
                        }

                        v33 = __OFADD__(v70++, 1);
                        if (v33)
                        {
                          goto LABEL_283;
                        }

                        a3 = v76 + 1;
LABEL_146:
                        if (a3 < v66)
                        {
                          continue;
                        }

                        goto LABEL_234;
                      }
                    }

                    goto LABEL_235;
                  }

                  goto LABEL_278;
                }

                v41 = a5;
                v42 = a8;
                v43 = a4;
                v44 = a3;
                v77 = __s1;
                v78 = a2;
                __s1 = a9();
                if ((__s1 & 0x100) == 0)
                {
                  return __s1;
                }

LABEL_244:
                LODWORD(__s1) = v42(v41 & 1, v77, v78, v44, v43, v15);
                if (v9)
                {
                  return v148;
                }

                else
                {
                  return __s1;
                }
              }

LABEL_253:
              v19 = v14 - 58;
              v20 = __s1 + 2;
              goto LABEL_71;
            }

            goto LABEL_272;
          }

          v168 = a2;
          v169 = a7;
          v41 = a5;
          v42 = a8;
          v43 = a4;
          v45 = __s1;
          v44 = a3;
          v46 = *v15;
          goto LABEL_192;
        }

        v15 = __s1;
        if (v14 != 101)
        {
          if (v14 == 88)
          {
            goto LABEL_12;
          }

LABEL_70:
          v19 = v14 - 58;
          v20 = __s1 + v11;
          goto LABEL_71;
        }
      }

LABEL_209:
      v135 = __s1 + a2;
      v136 = (__s1 + a2 - 1);
      v10 = *v136;
      if ((v10 | 0x20) == 0x65)
      {
        v15 = &v136[-a3];
        if (v136 >= a3 && a3 + a4 >= v136)
        {
          if (a3 + a4 < v135)
          {
            v135 = a3 + a4;
          }

          if (v135 > a3)
          {
            v137 = a4 + a3;
            v138 = -a3;
            v70 = 1;
LABEL_216:
            while (2)
            {
              v139 = 0;
              v140 = 0;
              v141 = v137 - a3;
              while (1)
              {
                if ((v138 + a3 + v140) < 0 || (v141 + v139) < 1)
                {
                  __break(1u);
LABEL_255:
                  __break(1u);
                  goto LABEL_256;
                }

                v142 = *(a3 + v140);
                if (v142 == 10)
                {
                  v33 = __OFADD__(v70++, 1);
                  if (v33)
                  {
                    goto LABEL_280;
                  }

                  a3 += v140 + 1;
                  if (a3 < v135)
                  {
                    goto LABEL_216;
                  }

                  goto LABEL_234;
                }

                if (v142 == 13)
                {
                  break;
                }

                v75 = v140 + 1;
                if (__OFADD__(v140, 1))
                {
                  goto LABEL_255;
                }

                ++v140;
                --v139;
                if (a3 + v140 >= v135)
                {
                  goto LABEL_236;
                }
              }

              v143 = a3 + v140;
              if (v136 >= a3 + v140 + 1)
              {
                if (((v138 + a3 + v140 + 1) & 0x8000000000000000) != 0 || (~v140 + v141) < 1)
                {
                  goto LABEL_285;
                }

                if (*(v143 + 1) == 10)
                {
                  v143 = a3 + v140 + 1;
                }
              }

              v33 = __OFADD__(v70++, 1);
              if (v33)
              {
                goto LABEL_281;
              }

              a3 = v143 + 1;
              if (v143 + 1 < v135)
              {
                continue;
              }

              break;
            }

LABEL_234:
            v75 = 0;
LABEL_236:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v144 = 0xD000000000000010;
            *(v144 + 8) = 0x8000000181481B20;
            *(v144 + 16) = v10;
            *(v144 + 24) = v70;
            *(v144 + 32) = v75;
            *(v144 + 40) = v15;
            *(v144 + 48) = 1;
            return swift_willThrow();
          }

LABEL_235:
          v75 = 0;
          v70 = 1;
          goto LABEL_236;
        }

        goto LABEL_276;
      }

      v41 = a5;
      v42 = a8;
      v43 = a4;
      v44 = a3;
LABEL_238:
      v77 = __s1;
      v78 = a2;
      __s1 = a7();
      if ((__s1 & 0x100) == 0)
      {
        return __s1;
      }

      if (v12)
      {
        v145 = static String._fromUTF8Repairing(_:)();
        v147 = v146;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v39 = v145;
        *(v39 + 8) = v147;
        *(v39 + 16) = 0u;
        *(v39 + 32) = 0u;
        v65 = 11;
        goto LABEL_241;
      }

      goto LABEL_244;
    }

    goto LABEL_207;
  }

  if ((v10 - 58) >= 0xFFFFFFF7)
  {
    goto LABEL_207;
  }

  if (*__s1 <= 0x2Du)
  {
    if (v10 != 43 && v10 != 45)
    {
      goto LABEL_291;
    }

    if (a2 < 2)
    {
      if (a2 != 1)
      {
LABEL_290:
        __break(1u);
        goto LABEL_291;
      }

      v15 = __s1 - a3;
      if (__s1 < a3)
      {
        goto LABEL_292;
      }

      v80 = a3 + a4;
      if (a3 + a4 < __s1)
      {
        goto LABEL_292;
      }

      if (v80 >= __s1 + 1)
      {
        v80 = __s1 + 1;
      }

      if (v80 > a3)
      {
        v81 = a4 + a3;
        v82 = -a3;
        v70 = 1;
        while (2)
        {
          v83 = 0;
          v84 = 0;
          v85 = v81 - a3;
          while (1)
          {
            if ((v82 + a3 + v84) < 0 || (v85 + v83) < 1)
            {
              goto LABEL_273;
            }

            v86 = *(a3 + v84);
            if (v86 == 10)
            {
              break;
            }

            if (v86 == 13)
            {
              v87 = a3 + v84;
              if (a3 + v84 + 1 <= __s1)
              {
                if (((v82 + a3 + v84 + 1) & 0x8000000000000000) != 0 || (~v84 + v85) < 1)
                {
                  goto LABEL_299;
                }

                if (*(v87 + 1) == 10)
                {
                  v87 = a3 + v84 + 1;
                }
              }

              v33 = __OFADD__(v70++, 1);
              if (v33)
              {
                goto LABEL_296;
              }

              a3 = v87 + 1;
              goto LABEL_177;
            }

            v75 = v84 + 1;
            if (__OFADD__(v84, 1))
            {
              goto LABEL_274;
            }

            ++v84;
            --v83;
            if (a3 + v84 >= v80)
            {
              goto LABEL_236;
            }
          }

          v33 = __OFADD__(v70++, 1);
          if (v33)
          {
            goto LABEL_295;
          }

          a3 += v84 + 1;
LABEL_177:
          if (a3 < v80)
          {
            continue;
          }

          goto LABEL_234;
        }
      }

      goto LABEL_235;
    }

    v15 = __s1 + 1;
    v40 = *(__s1 + 1);
    if (v40 == 48)
    {
      if (a2 != 2)
      {
        v12 = 0;
        v14 = *(__s1 + 2);
        if (*(__s1 + 2) <= 0x57u)
        {
          if (v14 != 46 && v14 != 69)
          {
            goto LABEL_253;
          }

          goto LABEL_209;
        }

        if (v14 != 120)
        {
          if (v14 == 101)
          {
            goto LABEL_209;
          }

          if (v14 != 88)
          {
            goto LABEL_253;
          }
        }

        v168 = a2;
        v169 = a7;
        v41 = a5;
        v42 = a8;
        v43 = a4;
        v44 = a3;
        v45 = __s1;
        v15 = __s1 + 3;
        v46 = *(__s1 + 3);
LABEL_192:
        if (!UInt8.isValidHexDigit.getter(v46))
        {
          v149 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v15, v44, v43);
          v151 = v150;
          v153 = v152;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v154 = xmmword_181237560;
          *(v154 + 16) = v46;
          *(v154 + 24) = v149;
          *(v154 + 32) = v151;
          *(v154 + 40) = v153;
          *(v154 + 48) = 1;
          return swift_willThrow();
        }

        v12 = 0;
        __s1 = v45;
        a2 = v168;
        a7 = v169;
        goto LABEL_238;
      }
    }

    else if ((v40 - 58) < 0xFFFFFFF7)
    {
      if (v40 != 46)
      {
        if (v40 == 78)
        {
LABEL_256:
          if (a2 > 3 && *(__s1 + 2) == 97 && *(__s1 + 3) == 78)
          {
            v12 = 1;
            goto LABEL_209;
          }

LABEL_264:
          v165 = a3;
          v166 = a4;
          v106 = StaticString.description.getter();
          v108 = v167;
          v109 = v15;
          v110 = v165;
          v111 = v166;
LABEL_189:
          v112 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v109, v110, v111);
          v114 = v113;
          v98 = v115;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v39 = v106;
          *(v39 + 8) = v108;
          *(v39 + 16) = v112;
          *(v39 + 24) = v114;
          goto LABEL_190;
        }

        if (v40 != 73)
        {
          v156 = a3;
          v157 = a4;
          v158 = static String._uncheckedFromUTF8(_:)();
          MEMORY[0x1865CB0E0](v158);

          MEMORY[0x1865CB0E0](0x6D756E206E692027, 0xEB00000000726562);
          v159 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v15, v156, v157);
          v161 = v160;
          v163 = v162;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v164 = 0x27207265746661;
          *(v164 + 8) = 0xE700000000000000;
          *(v164 + 16) = v40;
          *(v164 + 24) = v159;
          *(v164 + 32) = v161;
          *(v164 + 40) = v163;
          *(v164 + 48) = 1;
          return swift_willThrow();
        }

        v88 = a4;
        v89 = a3;
        if (a2 > 8)
        {
          v170 = a7;
          v116 = a5;
          v117 = a8;
          v118 = a2;
          v119 = __s1;
          if (!strncmp((__s1 + 1), "Infinity", 8uLL))
          {
            v12 = 1;
            a3 = v89;
            __s1 = v119;
            a4 = v88;
            a2 = v118;
            a8 = v117;
            a5 = v116;
            a7 = v170;
            goto LABEL_209;
          }
        }

LABEL_202:
        v124 = StaticString.description.getter();
        v126 = v125;
        v127 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v15, v89, v88);
        v129 = v128;
        v131 = v130;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v39 = v124;
        *(v39 + 8) = v126;
        *(v39 + 16) = v127;
        *(v39 + 24) = v129;
        *(v39 + 32) = v131;
        goto LABEL_203;
      }

      if (a2 == 2)
      {
        v100 = __s1 + 2;
        goto LABEL_187;
      }

LABEL_266:
      v14 = *(__s1 + 2);
      if ((v14 - 58) <= 0xFFFFFFF5)
      {
        v132 = __s1 + 2;
        goto LABEL_206;
      }
    }

    v12 = 0;
    goto LABEL_209;
  }

  switch(v10)
  {
    case 'I':
      v88 = a4;
      v89 = a3;
      if (a2 <= 7)
      {
        v90 = __s1;
        v91 = StaticString.description.getter();
        v93 = v92;
        v94 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v90, v89, v88);
        v96 = v95;
        v98 = v97;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v39 = v91;
        *(v39 + 8) = v93;
        *(v39 + 16) = v94;
        *(v39 + 24) = v96;
LABEL_190:
        *(v39 + 32) = v98;
LABEL_203:
        *(v39 + 40) = 0;
        v65 = 5;
        goto LABEL_241;
      }

      v120 = a7;
      v121 = a5;
      v122 = a8;
      v123 = a2;
      v15 = __s1;
      if (!strncmp(__s1, "Infinity", 8uLL))
      {
        v12 = 1;
        __s1 = v15;
        a3 = v89;
        a4 = v88;
        a2 = v123;
        a8 = v122;
        a5 = v121;
        a7 = v120;
        goto LABEL_209;
      }

      goto LABEL_202;
    case 'N':
      if (a2 >= 3 && *(__s1 + 1) == 97 && *(__s1 + 2) == 78)
      {
        v12 = 1;
LABEL_208:
        v15 = __s1;
        goto LABEL_209;
      }

      v103 = __s1;
      v104 = a3;
      v105 = a4;
      v106 = StaticString.description.getter();
      v108 = v107;
      v109 = v103;
      v110 = v104;
      v111 = v105;
      goto LABEL_189;
    case '.':
      if (a2 >= 1)
      {
        v99 = 1;
      }

      else
      {
        v99 = a2;
      }

      if (a2 < 2)
      {
        v100 = __s1 + v99;
LABEL_187:
        v60 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v100, a3, a4);
        v62 = v101;
        v64 = v102;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v39 = 0;
        *(v39 + 8) = 0;
        *(v39 + 16) = 46;
        goto LABEL_120;
      }

      v14 = *(__s1 + v99);
      if ((v14 - 58) <= 0xFFFFFFF5)
      {
        v132 = __s1 + v99;
LABEL_206:
        v60 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v132, a3, a4);
        v62 = v133;
        v64 = v134;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v39 = 0xD000000000000013;
        *(v39 + 8) = 0x8000000181481B40;
        goto LABEL_119;
      }

LABEL_207:
      v12 = 0;
      goto LABEL_208;
  }

LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
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
  return __s1;
}

{
  if ((a5 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
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
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  v10 = *__s1;
  if (v10 == 48)
  {
    if (a2 >= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = a2;
    }

    if (a2 >= 2)
    {
      v12 = 0;
      v13 = __s1 + v11;
      v14 = *(__s1 + v11);
      if (*(__s1 + v11) <= 0x57u)
      {
        v15 = __s1;
        if (v14 != 46 && v14 != 69)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v14 == 120)
        {
LABEL_12:
          v15 = v13 + 1;
          if (__s1 + a2 < v13 + 1)
          {
            if (a2 - v11 >= 1)
            {
LABEL_118:
              v60 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v13, a3, a4);
              v62 = v61;
              v64 = v63;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v39 = xmmword_181237560;
LABEL_119:
              *(v39 + 16) = v14;
LABEL_120:
              *(v39 + 24) = v60;
              *(v39 + 32) = v62;
              *(v39 + 40) = v64;
              goto LABEL_121;
            }

            __break(1u);
LABEL_15:
            if (a2)
            {
              v16 = *__s1;
              if (v16 == 48)
              {
                if (a2 >= 1)
                {
                  v17 = 1;
                }

                else
                {
                  v17 = a2;
                }

                v15 = __s1;
                if (a2 < 2)
                {
                  goto LABEL_109;
                }

                v14 = *(__s1 + v17);
                v18 = (v14 - 46) > 0x37 || ((1 << (v14 - 46)) & 0x80000000800001) == 0;
                v15 = __s1;
                if (!v18)
                {
                  goto LABEL_109;
                }

                v19 = v14 - 58;
                v20 = __s1 + v17;
LABEL_71:
                v34 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v20, a3, a4);
                v36 = v35;
                v38 = v37;
                if (v19 > 0xFFFFFFF5)
                {
                  lazy protocol witness table accessor for type JSONError and conformance JSONError();
                  swift_allocError();
                  *v39 = v34;
                  *(v39 + 8) = v36;
                  *(v39 + 16) = v38;
                  *(v39 + 24) = 0;
                  *(v39 + 32) = 0;
                  *(v39 + 40) = 0;
                  v65 = 10;
                  goto LABEL_241;
                }

                lazy protocol witness table accessor for type JSONError and conformance JSONError();
                swift_allocError();
                *v39 = xmmword_181237560;
                *(v39 + 16) = v14;
                *(v39 + 24) = v34;
                *(v39 + 32) = v36;
                *(v39 + 40) = v38;
LABEL_121:
                v65 = 1;
LABEL_241:
                *(v39 + 48) = v65;
                return swift_willThrow();
              }

              v15 = __s1;
              if ((v16 - 58) >= 0xFFFFFFF7)
              {
                goto LABEL_109;
              }

              if (v16 != 45)
              {
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
                goto LABEL_290;
              }

              if (a2 < 2)
              {
                v22 = __s1 - a3;
                if (__s1 >= a3)
                {
                  v23 = a3 + a4;
                  if (a3 + a4 >= __s1)
                  {
                    if (v23 >= __s1 + 1)
                    {
                      v23 = __s1 + 1;
                    }

                    if (v23 <= a3)
                    {
                      v31 = 0;
                      v26 = 1;
LABEL_151:
                      lazy protocol witness table accessor for type JSONError and conformance JSONError();
                      swift_allocError();
                      *v79 = 0xD000000000000010;
                      *(v79 + 8) = 0x8000000181481B20;
                      *(v79 + 16) = 45;
                      *(v79 + 24) = v26;
                      *(v79 + 32) = v31;
                      *(v79 + 40) = v22;
                      *(v79 + 48) = 1;
                      return swift_willThrow();
                    }

                    v24 = a4 + a3;
                    v25 = -a3;
                    v26 = 1;
LABEL_49:
                    while (1)
                    {
                      v27 = 0;
                      v28 = 0;
                      v29 = v24 - a3;
                      while (1)
                      {
                        if ((v25 + a3 + v28) < 0 || (v29 + v27) < 1)
                        {
                          __break(1u);
LABEL_270:
                          __break(1u);
                          goto LABEL_271;
                        }

                        v30 = *(a3 + v28);
                        if (v30 == 10)
                        {
                          v33 = __OFADD__(v26++, 1);
                          if (v33)
                          {
                            goto LABEL_288;
                          }

                          a3 += v28 + 1;
                          if (a3 >= v23)
                          {
                            goto LABEL_67;
                          }

                          goto LABEL_49;
                        }

                        if (v30 == 13)
                        {
                          break;
                        }

                        v31 = v28 + 1;
                        if (__OFADD__(v28, 1))
                        {
                          goto LABEL_270;
                        }

                        ++v28;
                        --v27;
                        if (a3 + v28 >= v23)
                        {
                          goto LABEL_151;
                        }
                      }

                      v32 = a3 + v28;
                      if (a3 + v28 + 1 > __s1)
                      {
                        goto LABEL_62;
                      }

                      if (((v25 + a3 + v28 + 1) & 0x8000000000000000) != 0 || (~v28 + v29) < 1)
                      {
                        goto LABEL_294;
                      }

                      if (*(v32 + 1) == 10)
                      {
                        v32 = a3 + v28 + 1;
                      }

LABEL_62:
                      v33 = __OFADD__(v26++, 1);
                      if (v33)
                      {
                        goto LABEL_289;
                      }

                      a3 = v32 + 1;
                      if (v32 + 1 >= v23)
                      {
LABEL_67:
                        v31 = 0;
                        goto LABEL_151;
                      }
                    }
                  }
                }

                goto LABEL_284;
              }

              v15 = __s1 + 1;
              v21 = *(__s1 + 1);
              if (v21 != 48)
              {
                if ((v21 - 58) < 0xFFFFFFF7)
                {
                  v47 = v15 - a3;
                  if (v15 >= a3)
                  {
                    v48 = a3 + a4;
                    if (a3 + a4 >= v15)
                    {
                      if (v48 >= __s1 + 2)
                      {
                        v48 = __s1 + 2;
                      }

                      if (v48 > a3)
                      {
                        v49 = a4 + a3;
                        v50 = -a3;
                        v51 = 1;
                        while (2)
                        {
                          v52 = 0;
                          v53 = 0;
                          v54 = v49 - a3;
                          while (1)
                          {
                            if ((v50 + a3 + v53) < 0 || (v54 + v52) < 1)
                            {
                              goto LABEL_275;
                            }

                            v55 = *(a3 + v53);
                            if (v55 == 10)
                            {
                              break;
                            }

                            if (v55 == 13)
                            {
                              v57 = a3 + v53;
                              if (a3 + v53 <= __s1)
                              {
                                if (((v50 + a3 + v53 + 1) & 0x8000000000000000) != 0 || (~v53 + v54) < 1)
                                {
                                  goto LABEL_300;
                                }

                                if (*(v57 + 1) == 10)
                                {
                                  ++v57;
                                }
                              }

                              v33 = __OFADD__(v51++, 1);
                              if (v33)
                              {
                                goto LABEL_298;
                              }

                              a3 = v57 + 1;
                              goto LABEL_107;
                            }

                            v56 = v53 + 1;
                            if (__OFADD__(v53, 1))
                            {
                              goto LABEL_277;
                            }

                            ++v53;
                            --v52;
                            if (a3 + v53 >= v48)
                            {
                              goto LABEL_249;
                            }
                          }

                          v33 = __OFADD__(v51++, 1);
                          if (v33)
                          {
                            goto LABEL_297;
                          }

                          a3 += v53 + 1;
LABEL_107:
                          if (a3 < v48)
                          {
                            continue;
                          }

                          break;
                        }

                        v56 = 0;
                        goto LABEL_249;
                      }

                      v56 = 0;
                      v51 = 1;
LABEL_249:
                      lazy protocol witness table accessor for type JSONError and conformance JSONError();
                      swift_allocError();
                      *v155 = 0xD000000000000013;
                      *(v155 + 8) = 0x8000000181481F30;
                      *(v155 + 16) = v21;
                      *(v155 + 24) = v51;
                      *(v155 + 32) = v56;
                      *(v155 + 40) = v47;
                      *(v155 + 48) = 1;
                      return swift_willThrow();
                    }
                  }

                  goto LABEL_293;
                }

                goto LABEL_109;
              }

              if (a2 == 2 || (v14 = *(__s1 + 2), (v14 - 46) <= 0x37) && ((1 << (v14 - 46)) & 0x80000000800001) != 0)
              {
LABEL_109:
                if (a6)
                {
                  v58 = v15 + 1;
                  if (v15 + 1 < __s1 + a2)
                  {
                    v59 = 0;
                    while (1)
                    {
                      v14 = *(v58 + v59);
                      if ((v14 | 0x20) == 0x65)
                      {
                        break;
                      }

                      if (~v15 + a2 + __s1 == ++v59)
                      {
                        goto LABEL_122;
                      }
                    }

                    v13 = v58 + v59;
                    if (*(v13 - 1) - 58 <= 0xFFFFFFF5)
                    {
                      if (((v15 - __s1 + v59 + 1) & 0x8000000000000000) == 0 && (~v15 + a2 + __s1 - v59) >= 1)
                      {
                        goto LABEL_118;
                      }

                      goto LABEL_287;
                    }
                  }
                }

LABEL_122:
                v66 = __s1 + a2;
                v67 = (__s1 + a2 - 1);
                v10 = *v67;
                if ((v10 - 58) <= 0xFFFFFFF5)
                {
                  v15 = &v67[-a3];
                  if (v67 >= a3 && a3 + a4 >= v67)
                  {
                    if (a3 + a4 < v66)
                    {
                      v66 = a3 + a4;
                    }

                    if (v66 > a3)
                    {
                      v68 = a4 + a3;
                      v69 = -a3;
                      v70 = 1;
                      while (2)
                      {
                        v71 = 0;
                        v72 = 0;
                        v73 = v68 - a3;
                        while (1)
                        {
                          if ((v69 + a3 + v72) < 0 || (v73 + v71) < 1)
                          {
                            __break(1u);
                            goto LABEL_264;
                          }

                          v74 = *(a3 + v72);
                          if (v74 == 10)
                          {
                            v33 = __OFADD__(v70++, 1);
                            if (v33)
                            {
                              goto LABEL_282;
                            }

                            a3 += v72 + 1;
                            goto LABEL_146;
                          }

                          if (v74 == 13)
                          {
                            break;
                          }

                          v75 = v72 + 1;
                          if (__OFADD__(v72, 1))
                          {
                            __break(1u);
                            goto LABEL_266;
                          }

                          ++v72;
                          --v71;
                          if (a3 + v72 >= v66)
                          {
                            goto LABEL_236;
                          }
                        }

                        v76 = a3 + v72;
                        if (v67 >= a3 + v72 + 1)
                        {
                          if (((v69 + a3 + v72 + 1) & 0x8000000000000000) != 0 || (~v72 + v73) < 1)
                          {
                            goto LABEL_286;
                          }

                          if (*(v76 + 1) == 10)
                          {
                            v76 = a3 + v72 + 1;
                          }
                        }

                        v33 = __OFADD__(v70++, 1);
                        if (v33)
                        {
                          goto LABEL_283;
                        }

                        a3 = v76 + 1;
LABEL_146:
                        if (a3 < v66)
                        {
                          continue;
                        }

                        goto LABEL_234;
                      }
                    }

                    goto LABEL_235;
                  }

                  goto LABEL_278;
                }

                v41 = a5;
                v42 = a8;
                v43 = a4;
                v44 = a3;
                v77 = __s1;
                v78 = a2;
                __s1 = a9();
                if ((__s1 & 0x10000) == 0)
                {
                  return __s1;
                }

LABEL_244:
                LODWORD(__s1) = v42(v41 & 1, v77, v78, v44, v43, v15);
                if (v9)
                {
                  return v148;
                }

                else
                {
                  return __s1;
                }
              }

LABEL_253:
              v19 = v14 - 58;
              v20 = __s1 + 2;
              goto LABEL_71;
            }

            goto LABEL_272;
          }

          v168 = a2;
          v169 = a7;
          v41 = a5;
          v42 = a8;
          v43 = a4;
          v45 = __s1;
          v44 = a3;
          v46 = *v15;
          goto LABEL_192;
        }

        v15 = __s1;
        if (v14 != 101)
        {
          if (v14 == 88)
          {
            goto LABEL_12;
          }

LABEL_70:
          v19 = v14 - 58;
          v20 = __s1 + v11;
          goto LABEL_71;
        }
      }

LABEL_209:
      v135 = __s1 + a2;
      v136 = (__s1 + a2 - 1);
      v10 = *v136;
      if ((v10 | 0x20) == 0x65)
      {
        v15 = &v136[-a3];
        if (v136 >= a3 && a3 + a4 >= v136)
        {
          if (a3 + a4 < v135)
          {
            v135 = a3 + a4;
          }

          if (v135 > a3)
          {
            v137 = a4 + a3;
            v138 = -a3;
            v70 = 1;
LABEL_216:
            while (2)
            {
              v139 = 0;
              v140 = 0;
              v141 = v137 - a3;
              while (1)
              {
                if ((v138 + a3 + v140) < 0 || (v141 + v139) < 1)
                {
                  __break(1u);
LABEL_255:
                  __break(1u);
                  goto LABEL_256;
                }

                v142 = *(a3 + v140);
                if (v142 == 10)
                {
                  v33 = __OFADD__(v70++, 1);
                  if (v33)
                  {
                    goto LABEL_280;
                  }

                  a3 += v140 + 1;
                  if (a3 < v135)
                  {
                    goto LABEL_216;
                  }

                  goto LABEL_234;
                }

                if (v142 == 13)
                {
                  break;
                }

                v75 = v140 + 1;
                if (__OFADD__(v140, 1))
                {
                  goto LABEL_255;
                }

                ++v140;
                --v139;
                if (a3 + v140 >= v135)
                {
                  goto LABEL_236;
                }
              }

              v143 = a3 + v140;
              if (v136 >= a3 + v140 + 1)
              {
                if (((v138 + a3 + v140 + 1) & 0x8000000000000000) != 0 || (~v140 + v141) < 1)
                {
                  goto LABEL_285;
                }

                if (*(v143 + 1) == 10)
                {
                  v143 = a3 + v140 + 1;
                }
              }

              v33 = __OFADD__(v70++, 1);
              if (v33)
              {
                goto LABEL_281;
              }

              a3 = v143 + 1;
              if (v143 + 1 < v135)
              {
                continue;
              }

              break;
            }

LABEL_234:
            v75 = 0;
LABEL_236:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v144 = 0xD000000000000010;
            *(v144 + 8) = 0x8000000181481B20;
            *(v144 + 16) = v10;
            *(v144 + 24) = v70;
            *(v144 + 32) = v75;
            *(v144 + 40) = v15;
            *(v144 + 48) = 1;
            return swift_willThrow();
          }

LABEL_235:
          v75 = 0;
          v70 = 1;
          goto LABEL_236;
        }

        goto LABEL_276;
      }

      v41 = a5;
      v42 = a8;
      v43 = a4;
      v44 = a3;
LABEL_238:
      v77 = __s1;
      v78 = a2;
      __s1 = a7();
      if ((__s1 & 0x10000) == 0)
      {
        return __s1;
      }

      if (v12)
      {
        v145 = static String._fromUTF8Repairing(_:)();
        v147 = v146;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v39 = v145;
        *(v39 + 8) = v147;
        *(v39 + 16) = 0u;
        *(v39 + 32) = 0u;
        v65 = 11;
        goto LABEL_241;
      }

      goto LABEL_244;
    }

    goto LABEL_207;
  }

  if ((v10 - 58) >= 0xFFFFFFF7)
  {
    goto LABEL_207;
  }

  if (*__s1 <= 0x2Du)
  {
    if (v10 != 43 && v10 != 45)
    {
      goto LABEL_291;
    }

    if (a2 < 2)
    {
      if (a2 != 1)
      {
LABEL_290:
        __break(1u);
        goto LABEL_291;
      }

      v15 = __s1 - a3;
      if (__s1 < a3)
      {
        goto LABEL_292;
      }

      v80 = a3 + a4;
      if (a3 + a4 < __s1)
      {
        goto LABEL_292;
      }

      if (v80 >= __s1 + 1)
      {
        v80 = __s1 + 1;
      }

      if (v80 > a3)
      {
        v81 = a4 + a3;
        v82 = -a3;
        v70 = 1;
        while (2)
        {
          v83 = 0;
          v84 = 0;
          v85 = v81 - a3;
          while (1)
          {
            if ((v82 + a3 + v84) < 0 || (v85 + v83) < 1)
            {
              goto LABEL_273;
            }

            v86 = *(a3 + v84);
            if (v86 == 10)
            {
              break;
            }

            if (v86 == 13)
            {
              v87 = a3 + v84;
              if (a3 + v84 + 1 <= __s1)
              {
                if (((v82 + a3 + v84 + 1) & 0x8000000000000000) != 0 || (~v84 + v85) < 1)
                {
                  goto LABEL_299;
                }

                if (*(v87 + 1) == 10)
                {
                  v87 = a3 + v84 + 1;
                }
              }

              v33 = __OFADD__(v70++, 1);
              if (v33)
              {
                goto LABEL_296;
              }

              a3 = v87 + 1;
              goto LABEL_177;
            }

            v75 = v84 + 1;
            if (__OFADD__(v84, 1))
            {
              goto LABEL_274;
            }

            ++v84;
            --v83;
            if (a3 + v84 >= v80)
            {
              goto LABEL_236;
            }
          }

          v33 = __OFADD__(v70++, 1);
          if (v33)
          {
            goto LABEL_295;
          }

          a3 += v84 + 1;
LABEL_177:
          if (a3 < v80)
          {
            continue;
          }

          goto LABEL_234;
        }
      }

      goto LABEL_235;
    }

    v15 = __s1 + 1;
    v40 = *(__s1 + 1);
    if (v40 == 48)
    {
      if (a2 != 2)
      {
        v12 = 0;
        v14 = *(__s1 + 2);
        if (*(__s1 + 2) <= 0x57u)
        {
          if (v14 != 46 && v14 != 69)
          {
            goto LABEL_253;
          }

          goto LABEL_209;
        }

        if (v14 != 120)
        {
          if (v14 == 101)
          {
            goto LABEL_209;
          }

          if (v14 != 88)
          {
            goto LABEL_253;
          }
        }

        v168 = a2;
        v169 = a7;
        v41 = a5;
        v42 = a8;
        v43 = a4;
        v44 = a3;
        v45 = __s1;
        v15 = __s1 + 3;
        v46 = *(__s1 + 3);
LABEL_192:
        if (!UInt8.isValidHexDigit.getter(v46))
        {
          v149 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v15, v44, v43);
          v151 = v150;
          v153 = v152;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v154 = xmmword_181237560;
          *(v154 + 16) = v46;
          *(v154 + 24) = v149;
          *(v154 + 32) = v151;
          *(v154 + 40) = v153;
          *(v154 + 48) = 1;
          return swift_willThrow();
        }

        v12 = 0;
        __s1 = v45;
        a2 = v168;
        a7 = v169;
        goto LABEL_238;
      }
    }

    else if ((v40 - 58) < 0xFFFFFFF7)
    {
      if (v40 != 46)
      {
        if (v40 == 78)
        {
LABEL_256:
          if (a2 > 3 && *(__s1 + 2) == 97 && *(__s1 + 3) == 78)
          {
            v12 = 1;
            goto LABEL_209;
          }

LABEL_264:
          v165 = a3;
          v166 = a4;
          v106 = StaticString.description.getter();
          v108 = v167;
          v109 = v15;
          v110 = v165;
          v111 = v166;
LABEL_189:
          v112 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v109, v110, v111);
          v114 = v113;
          v98 = v115;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v39 = v106;
          *(v39 + 8) = v108;
          *(v39 + 16) = v112;
          *(v39 + 24) = v114;
          goto LABEL_190;
        }

        if (v40 != 73)
        {
          v156 = a3;
          v157 = a4;
          v158 = static String._uncheckedFromUTF8(_:)();
          MEMORY[0x1865CB0E0](v158);

          MEMORY[0x1865CB0E0](0x6D756E206E692027, 0xEB00000000726562);
          v159 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v15, v156, v157);
          v161 = v160;
          v163 = v162;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v164 = 0x27207265746661;
          *(v164 + 8) = 0xE700000000000000;
          *(v164 + 16) = v40;
          *(v164 + 24) = v159;
          *(v164 + 32) = v161;
          *(v164 + 40) = v163;
          *(v164 + 48) = 1;
          return swift_willThrow();
        }

        v88 = a4;
        v89 = a3;
        if (a2 > 8)
        {
          v170 = a7;
          v116 = a5;
          v117 = a8;
          v118 = a2;
          v119 = __s1;
          if (!strncmp((__s1 + 1), "Infinity", 8uLL))
          {
            v12 = 1;
            a3 = v89;
            __s1 = v119;
            a4 = v88;
            a2 = v118;
            a8 = v117;
            a5 = v116;
            a7 = v170;
            goto LABEL_209;
          }
        }

LABEL_202:
        v124 = StaticString.description.getter();
        v126 = v125;
        v127 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v15, v89, v88);
        v129 = v128;
        v131 = v130;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v39 = v124;
        *(v39 + 8) = v126;
        *(v39 + 16) = v127;
        *(v39 + 24) = v129;
        *(v39 + 32) = v131;
        goto LABEL_203;
      }

      if (a2 == 2)
      {
        v100 = __s1 + 2;
        goto LABEL_187;
      }

LABEL_266:
      v14 = *(__s1 + 2);
      if ((v14 - 58) <= 0xFFFFFFF5)
      {
        v132 = __s1 + 2;
        goto LABEL_206;
      }
    }

    v12 = 0;
    goto LABEL_209;
  }

  switch(v10)
  {
    case 'I':
      v88 = a4;
      v89 = a3;
      if (a2 <= 7)
      {
        v90 = __s1;
        v91 = StaticString.description.getter();
        v93 = v92;
        v94 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v90, v89, v88);
        v96 = v95;
        v98 = v97;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v39 = v91;
        *(v39 + 8) = v93;
        *(v39 + 16) = v94;
        *(v39 + 24) = v96;
LABEL_190:
        *(v39 + 32) = v98;
LABEL_203:
        *(v39 + 40) = 0;
        v65 = 5;
        goto LABEL_241;
      }

      v120 = a7;
      v121 = a5;
      v122 = a8;
      v123 = a2;
      v15 = __s1;
      if (!strncmp(__s1, "Infinity", 8uLL))
      {
        v12 = 1;
        __s1 = v15;
        a3 = v89;
        a4 = v88;
        a2 = v123;
        a8 = v122;
        a5 = v121;
        a7 = v120;
        goto LABEL_209;
      }

      goto LABEL_202;
    case 'N':
      if (a2 >= 3 && *(__s1 + 1) == 97 && *(__s1 + 2) == 78)
      {
        v12 = 1;
LABEL_208:
        v15 = __s1;
        goto LABEL_209;
      }

      v103 = __s1;
      v104 = a3;
      v105 = a4;
      v106 = StaticString.description.getter();
      v108 = v107;
      v109 = v103;
      v110 = v104;
      v111 = v105;
      goto LABEL_189;
    case '.':
      if (a2 >= 1)
      {
        v99 = 1;
      }

      else
      {
        v99 = a2;
      }

      if (a2 < 2)
      {
        v100 = __s1 + v99;
LABEL_187:
        v60 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v100, a3, a4);
        v62 = v101;
        v64 = v102;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v39 = 0;
        *(v39 + 8) = 0;
        *(v39 + 16) = 46;
        goto LABEL_120;
      }

      v14 = *(__s1 + v99);
      if ((v14 - 58) <= 0xFFFFFFF5)
      {
        v132 = __s1 + v99;
LABEL_206:
        v60 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v132, a3, a4);
        v62 = v133;
        v64 = v134;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v39 = 0xD000000000000013;
        *(v39 + 8) = 0x8000000181481B40;
        goto LABEL_119;
      }

LABEL_207:
      v12 = 0;
      goto LABEL_208;
  }

LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
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
  return __s1;
}

char *specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:)(__int16 a1, const char *a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  LOWORD(v8) = v6;
  LOWORD(v14) = a1;
  v135 = *MEMORY[0x1E69E9840];
  v129[0] = 0;
  v15 = _stringshims_strtod_clocale(a2, v129);
  if (v129[0])
  {
    v16 = &a2[a3] == v129[0];
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v19 = v15;
    if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int64V_SdTt1g5Tm(v129, v15) || (v129[1] & 1) != 0)
    {
      goto LABEL_288;
    }

    if (fabs(v19) < 9.00719925e15)
    {
      return v129[0];
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 0x2EuLL, 0xE100000000000000, 1, v131);
    if (v132 != 1)
    {
      a6 = v131[1];
      v17 = v131[2];
      v18 = v131[0];
      goto LABEL_56;
    }
  }

  else
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 46, 0xE100000000000000, 1, v133);
    if ((v134 & 1) == 0)
    {
      a6 = v133[1];
      v17 = v133[2];
      v18 = v133[0];
LABEL_56:
      v129[0] = v18;
      v22 = (v18 >> 32);
      a4 = v18 >> 48;
      v129[1] = a6;
      v7 = HIDWORD(a6);
      a3 = v17 >> 16;
      v130 = v17;
      isNegative_getter = _So9NSDecimala__isNegative_getter(v129);
      v127 = v18;
      LODWORD(v129[0]) = v18;
      v8 = (a6 >> 16);
      WORD2(v129[0]) = v22;
      HIWORD(v129[0]) = a4;
      v129[1] = a6;
      v130 = v17;
      LOWORD(v14) = v17;
      if (_So9NSDecimala__length_getter(v129) || !isNegative_getter)
      {
        LODWORD(v129[0]) = v127;
        WORD2(v129[0]) = v22;
        HIWORD(v129[0]) = a4;
        v129[1] = a6;
        v126 = HIWORD(a6);
        v130 = v17;
        v38 = _So9NSDecimala__length_getter(v129);
        if (v38)
        {
          v39 = v38 - 1;
          if (v38 == 1)
          {
            v44 = 0;
            v42 = HIWORD(a6);
            goto LABEL_103;
          }

          v40 = 0;
          v41 = 0;
          v42 = HIWORD(a6);
          do
          {
            if (v39 + 1 <= 4)
            {
              LOWORD(v43) = a4;
              if (v39 != 1)
              {
                LOWORD(v43) = a6;
                if (v39 != 2)
                {
                  v43 = a6 >> 16;
                  if (v39 != 3)
                  {
LABEL_345:
                    strcpy(v129, "Invalid index ");
                    HIBYTE(v129[1]) = -18;
                    v125 = dispatch thunk of CustomStringConvertible.description.getter();
                    MEMORY[0x1865CB0E0](v125);

                    MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
                    result = _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                    return result;
                  }
                }
              }
            }

            else if (v39 + 1 > 6)
            {
              LOWORD(v43) = v17;
              if (v39 != 6)
              {
                v43 = v17 >> 16;
                if (v39 != 7)
                {
                  goto LABEL_345;
                }
              }
            }

            else
            {
              v43 = HIDWORD(a6);
              if (v39 != 4)
              {
                LOWORD(v43) = HIWORD(a6);
                if (v39 != 5)
                {
                  goto LABEL_345;
                }
              }
            }

            if (v40)
            {
              goto LABEL_288;
            }

            v44 = (v43 | v41) << 16;
            v40 = HIWORD(v41) != 0;
            v41 = v44;
            --v39;
          }

          while (v39);
          if (v40)
          {
            goto LABEL_288;
          }

LABEL_103:
          v55 = v22;
          v56 = v127;
          v37 = v44 | WORD2(v127);
LABEL_104:
          LODWORD(v129[0]) = v56;
          v57 = v55;
          WORD2(v129[0]) = v55;
          HIWORD(v129[0]) = a4;
          LOWORD(v129[1]) = a6;
          WORD1(v129[1]) = v8;
          WORD2(v129[1]) = v7;
          HIWORD(v129[1]) = v42;
          LOWORD(v130) = v14;
          HIWORD(v130) = a3;
          v58 = v56;
          if ((_So9NSDecimala__exponent_getter(v129) & 0x80000000) == 0)
          {
            LODWORD(v129[0]) = v58;
            WORD2(v129[0]) = v57;
            HIWORD(v129[0]) = a4;
            LOWORD(v129[1]) = a6;
            WORD1(v129[1]) = v8;
            WORD2(v129[1]) = v7;
            HIWORD(v129[1]) = v126;
            LOWORD(v130) = v14;
            HIWORD(v130) = a3;
            v59 = _So9NSDecimala__exponent_getter(v129);
            if ((v59 & 0x80000000) == 0)
            {
              v60 = v59 + 1;
              while (--v60)
              {
                v61 = (v37 * 0xAuLL) >> 64;
                v37 *= 10;
                if (v61)
                {
                  goto LABEL_288;
                }
              }

              goto LABEL_259;
            }

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
          }

          LODWORD(v129[0]) = v58;
          WORD2(v129[0]) = v57;
          HIWORD(v129[0]) = a4;
          LOWORD(v129[1]) = a6;
          WORD1(v129[1]) = v8;
          WORD2(v129[1]) = v7;
          HIWORD(v129[1]) = v126;
          LOWORD(v130) = v14;
          HIWORD(v130) = a3;
          v111 = _So9NSDecimala__exponent_getter(v129);
          if (v111 > 0)
          {
            goto LABEL_328;
          }

          if (v111)
          {
            if (!__CFADD__(v111, -v111 & ~(-v111 >> 31)))
            {
              goto LABEL_332;
            }

            do
            {
              v37 /= 0xAuLL;
            }

            while (!__CFADD__(v111++, 1));
          }

LABEL_259:
          if (isNegative_getter)
          {
            if ((v37 & 0x8000000000000000) != 0)
            {
              goto LABEL_288;
            }

            return -v37;
          }

          else if ((v37 & 0x8000000000000000) != 0)
          {
            goto LABEL_288;
          }

          return v37;
        }

        goto LABEL_313;
      }

LABEL_288:
      v122 = static String._fromUTF8Repairing(_:)();
      v37 = v123;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v48 = v122;
      *(v48 + 8) = v37;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0u;
      v49 = 11;
      goto LABEL_289;
    }
  }

  v20 = specialized BufferView.suffix(from:)(a6, a2, a3);
  v22 = &v20[v21];
  if ((v14 & 1) == 0)
  {
    if (v21 >= 1)
    {
      v33 = 0;
      v34 = v21;
      v35 = v20;
      v36 = v20;
      while ((v33 & 0x8000000000000000) == 0)
      {
        v32 = v34-- < 1;
        if (v32)
        {
          break;
        }

        if (*v36 - 58 >= 0xFFFFFFF6)
        {
          ++v36;
          ++v35;
          ++v33;
          if (v36 < v22)
          {
            continue;
          }
        }

        goto LABEL_80;
      }

      goto LABEL_300;
    }

    v35 = v20;
    v36 = v20;
LABEL_80:
    if (v36 >= v22)
    {
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
      goto LABEL_296;
    }

    v50 = 0;
    v51 = 0;
    v52 = v35 - v20;
    v53 = (&v20[v21] - v35);
    v54 = &v20[v21] - v36;
    while (1)
    {
      if (v36 - v20 + v50 < 0)
      {
        goto LABEL_295;
      }

      v32 = v54-- < 1;
      if (v32)
      {
        goto LABEL_295;
      }

      v26 = v36[v50];
      if (v26 - 58 >= 0xFFFFFFF6)
      {
        v31 = __OFADD__(v52++, 1);
        if (v31)
        {
          goto LABEL_298;
        }
      }

      else if (v36[v50] <= 0x2Du)
      {
        if (v26 != 43 && v26 != 45)
        {
LABEL_198:
          v91 = &v36[v50];
          if (&v36[v50] < a4)
          {
            goto LABEL_322;
          }

          v92 = a4 + a5;
          if (a4 + a5 < v91)
          {
            goto LABEL_322;
          }

          if (v92 >= &v36[v50 + 1])
          {
            v92 = &v36[v50 + 1];
          }

          if (v92 <= a4)
          {
            goto LABEL_223;
          }

          v93 = a5 + a4;
          v37 = 1;
          v94 = a4;
          while (1)
          {
LABEL_204:
            v95 = 0;
            v96 = 0;
            v97 = v93 - v94;
            while (1)
            {
              if ((v94 - a4 + v96) < 0 || (v97 + v95) < 1)
              {
                goto LABEL_307;
              }

              v98 = *(v94 + v96);
              if (v98 == 10)
              {
                v31 = __OFADD__(v37++, 1);
                if (v31)
                {
                  goto LABEL_333;
                }

                v94 += v96 + 1;
                if (v94 >= v92)
                {
                  goto LABEL_222;
                }

                goto LABEL_204;
              }

              if (v98 == 13)
              {
                break;
              }

              a3 = v96 + 1;
              if (__OFADD__(v96, 1))
              {
                goto LABEL_309;
              }

              ++v96;
              --v95;
              if (v94 + v96 >= v92)
              {
                goto LABEL_225;
              }
            }

            v99 = v94 + v96;
            if (v91 >= v94 + v96 + 1)
            {
              if (((v94 - a4 + v96 + 1) & 0x8000000000000000) != 0 || (~v96 + v97) < 1)
              {
                goto LABEL_342;
              }

              if (*(v99 + 1) == 10)
              {
                v99 = v94 + v96 + 1;
              }
            }

            v31 = __OFADD__(v37++, 1);
            if (v31)
            {
              goto LABEL_334;
            }

            v94 = v99 + 1;
            if (v99 + 1 >= v92)
            {
LABEL_222:
              a3 = 0;
LABEL_225:
              v100 = &v36[v50 - a4];
              v101 = v26;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v48 = xmmword_181237560;
              *(v48 + 16) = v101;
              *(v48 + 24) = v37;
              *(v48 + 32) = a3;
              *(v48 + 40) = v100;
              v49 = 1;
              goto LABEL_289;
            }
          }
        }

        if (v52 || v51 != 2)
        {
          v74 = &v36[v50];
          if (&v36[v50] >= a4)
          {
            v75 = a4 + a5;
            if (a4 + a5 >= v74)
            {
              if (v75 >= &v36[v50 + 1])
              {
                v75 = &v36[v50 + 1];
              }

              if (v75 <= a4)
              {
                goto LABEL_223;
              }

              v76 = a5 + a4;
              v37 = 1;
              v77 = a4;
              while (1)
              {
LABEL_154:
                v78 = 0;
                v79 = 0;
                v80 = v76 - v77;
                while (1)
                {
                  if ((v77 - a4 + v79) < 0 || (v80 + v78) < 1)
                  {
                    goto LABEL_302;
                  }

                  v81 = *(v77 + v79);
                  if (v81 == 10)
                  {
                    v31 = __OFADD__(v37++, 1);
                    if (v31)
                    {
                      goto LABEL_325;
                    }

                    v77 += v79 + 1;
                    if (v77 >= v75)
                    {
                      goto LABEL_222;
                    }

                    goto LABEL_154;
                  }

                  if (v81 == 13)
                  {
                    break;
                  }

                  a3 = v79 + 1;
                  if (__OFADD__(v79, 1))
                  {
                    goto LABEL_304;
                  }

                  ++v79;
                  --v78;
                  if (v77 + v79 >= v75)
                  {
                    goto LABEL_225;
                  }
                }

                v82 = v77 + v79;
                if (v74 >= v77 + v79 + 1)
                {
                  if (((v77 - a4 + v79 + 1) & 0x8000000000000000) != 0 || (~v79 + v80) < 1)
                  {
                    goto LABEL_337;
                  }

                  if (*(v82 + 1) == 10)
                  {
                    v82 = v77 + v79 + 1;
                  }
                }

                v31 = __OFADD__(v37++, 1);
                if (v31)
                {
                  goto LABEL_327;
                }

                v77 = v82 + 1;
                if (v82 + 1 >= v75)
                {
                  goto LABEL_222;
                }
              }
            }
          }

LABEL_319:
          __break(1u);
          goto LABEL_320;
        }

        v52 = 0;
        v51 = 3;
      }

      else if (v26 == 101 || v26 == 69)
      {
        if (v52 < 1 || v51 >= 2)
        {
          goto LABEL_123;
        }

        v52 = 0;
        v51 = 2;
      }

      else
      {
        if (v26 != 46)
        {
          goto LABEL_198;
        }

        if (v52 < 1 || v51)
        {
          v102 = &v36[v50];
          if (&v36[v50] < a4 || a4 + a5 < v102)
          {
            goto LABEL_323;
          }

          if (a4 + a5 >= &v36[v50 + 1])
          {
            v103 = &v36[v50 + 1];
          }

          else
          {
            v103 = a4 + a5;
          }

          if (v103 > a4)
          {
            v104 = a5 + a4;
            v37 = 1;
            v105 = a4;
            while (1)
            {
              v106 = 0;
              v107 = 0;
              v108 = v104 - v105;
              while (1)
              {
                if ((v105 - a4 + v107) < 0 || (v108 + v106) < 1)
                {
                  goto LABEL_308;
                }

                v109 = *(v105 + v107);
                if (v109 == 10)
                {
                  break;
                }

                if (v109 == 13)
                {
                  v110 = v105 + v107;
                  if (v102 >= v105 + v107 + 1)
                  {
                    if (((v105 - a4 + v107 + 1) & 0x8000000000000000) != 0 || (~v107 + v108) < 1)
                    {
                      goto LABEL_343;
                    }

                    if (*(v110 + 1) == 10)
                    {
                      v110 = v105 + v107 + 1;
                    }
                  }

                  v31 = __OFADD__(v37++, 1);
                  if (v31)
                  {
                    goto LABEL_338;
                  }

                  a3 = 0;
                  v105 = v110 + 1;
                  goto LABEL_250;
                }

                a3 = v107 + 1;
                if (__OFADD__(v107, 1))
                {
                  goto LABEL_310;
                }

                ++v107;
                --v106;
                if (v105 + v107 >= v103)
                {
                  v26 = 46;
                  goto LABEL_225;
                }
              }

              v31 = __OFADD__(v37++, 1);
              if (v31)
              {
                goto LABEL_335;
              }

              a3 = 0;
              v105 += v107 + 1;
LABEL_250:
              v26 = 46;
              if (v105 >= v103)
              {
                goto LABEL_225;
              }
            }
          }

          a3 = 0;
          v26 = 46;
          goto LABEL_224;
        }

        v52 = 0;
        v51 = 1;
      }

      if (v53 == ++v50)
      {
        goto LABEL_294;
      }
    }
  }

  if (v21 < 1)
  {
    __break(1u);
LABEL_315:
    __break(1u);
    goto LABEL_316;
  }

  v23 = *v20;
  if (v23 == 45 || (v8 = v20, v23 == 43))
  {
    v8 = v20 + 1;
  }

  if (v22 < v8)
  {
    goto LABEL_315;
  }

  a6 = v8 - v20;
  if (v8 - v20 < 0)
  {
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  a3 = v22 - v8;
  if (v22 - v8 < 0)
  {
LABEL_317:
    __break(1u);
LABEL_318:
    __break(1u);
    goto LABEL_319;
  }

  v14 = v21;
  v24 = v20;
  if (a3 >= 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = v22 - v8;
  }

  if (!_stringshims_strncasecmp_clocale(v8, "0x", v25))
  {
    v36 = v8 + 2;
    v50 = v22 - (v8 + 2);
    if (v50 >= 1 && v36 < v22)
    {
      v50 = v36 - v24;
      if (((v36 - v24) & 0x8000000000000000) == 0)
      {
        a3 = &v8[-a4 + 2];
        v50 = &v24[v14] - v8 - 3;
        v62 = a6 + 3;
        v26 = 1;
        while (1)
        {
          v63 = v62;
          LOWORD(v14) = *v36;
          if ((v14 - 58) <= 0xF5u && (*v36 - 65 > 0x25 || ((1 << (v14 - 65)) & 0x3F0000003FLL) == 0))
          {
            break;
          }

          v32 = v50-- < 1;
          if (!v32 && ++v36 < v22)
          {
            ++a3;
            ++v62;
            if ((v63 & 0x8000000000000000) == 0)
            {
              continue;
            }
          }

          goto LABEL_122;
        }

        if (v36 >= a4)
        {
          v83 = a4 + a5;
          if (a4 + a5 >= v36)
          {
            if (v83 >= (v36 + 1))
            {
              v83 = (v36 + 1);
            }

            if (v83 <= a4)
            {
              v22 = 0;
              a6 = 0xED00007265626D75;
              v47 = 0x6E20786568206E69;
              v37 = 1;
              goto LABEL_78;
            }

            v84 = a5 + a4;
            v85 = -a4;
            v37 = 1;
            a6 = 0xED00007265626D75;
            v47 = 0x6E20786568206E69;
            while (1)
            {
              v86 = 0;
              v87 = 0;
              v88 = v84 - a4;
              while (1)
              {
                if ((v85 + a4 + v87) < 0 || (v88 + v86) < 1)
                {
                  goto LABEL_305;
                }

                v89 = *(a4 + v87);
                if (v89 == 10)
                {
                  break;
                }

                if (v89 == 13)
                {
                  v90 = a4 + v87;
                  if (v36 >= a4 + v87 + 1)
                  {
                    if (((v85 + a4 + v87 + 1) & 0x8000000000000000) != 0 || (~v87 + v88) < 1)
                    {
                      goto LABEL_339;
                    }

                    if (*(v90 + 1) == 10)
                    {
                      v90 = a4 + v87 + 1;
                    }
                  }

                  v31 = __OFADD__(v37++, 1);
                  if (v31)
                  {
                    goto LABEL_330;
                  }

                  a4 = v90 + 1;
                  goto LABEL_196;
                }

                v22 = (v87 + 1);
                if (__OFADD__(v87, 1))
                {
                  goto LABEL_306;
                }

                ++v87;
                --v86;
                if (a4 + v87 >= v83)
                {
                  goto LABEL_78;
                }
              }

              v31 = __OFADD__(v37++, 1);
              if (v31)
              {
                goto LABEL_329;
              }

              a4 += v87 + 1;
LABEL_196:
              if (a4 >= v83)
              {
                v22 = 0;
                goto LABEL_78;
              }
            }
          }
        }

LABEL_320:
        __break(1u);
        goto LABEL_321;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    v65 = &v36[v50];
    if (&v36[v50] >= a4)
    {
      v66 = a4 + a5;
      if (a4 + a5 >= v65)
      {
        if (v66 >= &v36[v50 + 1])
        {
          v66 = &v36[v50 + 1];
        }

        if (v66 > a4)
        {
          v67 = a5 + a4;
          v37 = 1;
          v68 = a4;
          while (1)
          {
            while (1)
            {
              v69 = 0;
              v70 = 0;
              v71 = v67 - v68;
LABEL_130:
              if ((v68 - a4 + v70) < 0 || (v71 + v69) < 1)
              {
                goto LABEL_301;
              }

              v72 = *(v68 + v70);
              if (v72 != 10)
              {
                break;
              }

              v31 = __OFADD__(v37++, 1);
              if (v31)
              {
                goto LABEL_324;
              }

              v68 += v70 + 1;
              if (v68 >= v66)
              {
                goto LABEL_222;
              }
            }

            if (v72 != 13)
            {
              a3 = v70 + 1;
              if (__OFADD__(v70, 1))
              {
                goto LABEL_303;
              }

              ++v70;
              --v69;
              if (v68 + v70 >= v66)
              {
                goto LABEL_225;
              }

              goto LABEL_130;
            }

            v73 = v68 + v70;
            if (v65 >= v68 + v70 + 1)
            {
              if (((v68 - a4 + v70 + 1) & 0x8000000000000000) != 0 || (~v70 + v71) < 1)
              {
                goto LABEL_336;
              }

              if (*(v73 + 1) == 10)
              {
                v73 = v68 + v70 + 1;
              }
            }

            v31 = __OFADD__(v37++, 1);
            if (v31)
            {
              goto LABEL_326;
            }

            v68 = v73 + 1;
            if (v73 + 1 >= v66)
            {
              goto LABEL_222;
            }
          }
        }

LABEL_223:
        a3 = 0;
LABEL_224:
        v37 = 1;
        goto LABEL_225;
      }
    }

    goto LABEL_318;
  }

  if (v8 >= v22)
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
LABEL_301:
    __break(1u);
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
LABEL_304:
    __break(1u);
LABEL_305:
    __break(1u);
LABEL_306:
    __break(1u);
LABEL_307:
    __break(1u);
LABEL_308:
    __break(1u);
LABEL_309:
    __break(1u);
LABEL_310:
    __break(1u);
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
LABEL_313:
    v55 = v22;
    v37 = 0;
    v42 = v126;
    v56 = v127;
    goto LABEL_104;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = v22 - v8;
  while (1)
  {
    if ((a6 + v27) < 0)
    {
      goto LABEL_297;
    }

    v32 = v30-- < 1;
    if (v32)
    {
      goto LABEL_297;
    }

    LODWORD(v14) = v8[v27];
    if ((v14 - 58) > 0xF5u)
    {
      v31 = __OFADD__(v29++, 1);
      if (v31)
      {
        goto LABEL_299;
      }

      goto LABEL_27;
    }

    if (v8[v27] > 0x2Du)
    {
      break;
    }

    if (v14 != 43 && v14 != 45 || v29 || v28 != 2)
    {
LABEL_76:
      v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(&v8[v27], a4, a5);
      v22 = v45;
      a3 = v46;
      goto LABEL_77;
    }

    v29 = 0;
    v28 = 3;
LABEL_27:
    if (a3 == ++v27)
    {
      goto LABEL_296;
    }
  }

  if (v14 == 101 || v14 == 69)
  {
    if (v28 != 1 && (v28 || v29 <= 0))
    {
      goto LABEL_76;
    }

    v29 = 0;
    v28 = 2;
    goto LABEL_27;
  }

  if (v14 != 46)
  {
    goto LABEL_76;
  }

  if (!v28)
  {
    v29 = 0;
    v28 = 1;
    goto LABEL_27;
  }

  v113 = &v8[v27];
  if (&v8[v27] < a4)
  {
    goto LABEL_331;
  }

  v114 = a4 + a5;
  if (a4 + a5 < v113)
  {
    goto LABEL_331;
  }

  if (v114 >= &v8[v27 + 1])
  {
    v114 = &v8[v27 + 1];
  }

  if (v114 <= a4)
  {
    v22 = 0;
    v37 = 1;
  }

  else
  {
    v115 = a5 + a4;
    v37 = 1;
    v116 = a4;
    do
    {
      v117 = 0;
      v118 = 0;
      v119 = v115 - v116;
      while (1)
      {
        if ((v116 - a4 + v118) < 0 || (v119 + v117) < 1)
        {
          goto LABEL_311;
        }

        v120 = *(v116 + v118);
        if (v120 == 10)
        {
          v31 = __OFADD__(v37++, 1);
          if (v31)
          {
            goto LABEL_340;
          }

          v116 += v118 + 1;
          goto LABEL_285;
        }

        if (v120 == 13)
        {
          break;
        }

        v22 = (v118 + 1);
        if (__OFADD__(v118, 1))
        {
          goto LABEL_312;
        }

        ++v118;
        --v117;
        if (v116 + v118 >= v114)
        {
          goto LABEL_293;
        }
      }

      v121 = v116 + v118;
      if (v113 >= v116 + v118 + 1)
      {
        if (((v116 - a4 + v118 + 1) & 0x8000000000000000) != 0 || (~v118 + v119) < 1)
        {
          goto LABEL_344;
        }

        if (*(v121 + 1) == 10)
        {
          v121 = v116 + v118 + 1;
        }
      }

      v31 = __OFADD__(v37++, 1);
      if (v31)
      {
        goto LABEL_341;
      }

      v116 = v121 + 1;
LABEL_285:
      ;
    }

    while (v116 < v114);
    v22 = 0;
  }

LABEL_293:
  a3 = &v8[v27 - a4];
  LOBYTE(v14) = 46;
LABEL_77:
  a6 = 0xE900000000000072;
  v47 = 0x65626D756E206E69;
LABEL_78:
  lazy protocol witness table accessor for type JSONError and conformance JSONError();
  swift_allocError();
  *v48 = v47;
  *(v48 + 8) = a6;
  *(v48 + 16) = v14;
  *(v48 + 24) = v37;
  *(v48 + 32) = v22;
  *(v48 + 40) = a3;
  v49 = 1;
LABEL_289:
  *(v48 + 48) = v49;
  swift_willThrow();
  return v37;
}

unint64_t specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(unint64_t __s1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6, uint64_t (*a7)(unsigned __int8 *, uint64_t, uint64_t), uint64_t (*a8)(unsigned __int8 *, uint64_t, uint64_t), uint64_t (*a9)(void, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t), uint64_t (*a10)(void))
{
  if ((a5 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
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
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  v11 = *__s1;
  if (v11 == 48)
  {
    if (a2 >= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a2;
    }

    if (a2 >= 2)
    {
      v13 = 0;
      v14 = __s1 + v12;
      v15 = *(__s1 + v12);
      if (*(__s1 + v12) <= 0x57u)
      {
        v16 = __s1;
        if (v15 != 46 && v15 != 69)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v15 == 120)
        {
LABEL_12:
          v16 = v14 + 1;
          if (__s1 + a2 < v14 + 1)
          {
            if (a2 - v12 >= 1)
            {
LABEL_118:
              v61 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v14, a3, a4);
              v63 = v62;
              v65 = v64;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v40 = xmmword_181237560;
LABEL_119:
              *(v40 + 16) = v15;
LABEL_120:
              *(v40 + 24) = v61;
              *(v40 + 32) = v63;
              *(v40 + 40) = v65;
              goto LABEL_121;
            }

            __break(1u);
LABEL_15:
            if (a2)
            {
              v17 = *__s1;
              if (v17 == 48)
              {
                if (a2 >= 1)
                {
                  v18 = 1;
                }

                else
                {
                  v18 = a2;
                }

                v16 = __s1;
                if (a2 < 2)
                {
                  goto LABEL_109;
                }

                v15 = *(__s1 + v18);
                v19 = (v15 - 46) > 0x37 || ((1 << (v15 - 46)) & 0x80000000800001) == 0;
                v16 = __s1;
                if (!v19)
                {
                  goto LABEL_109;
                }

                v20 = v15 - 58;
                v21 = __s1 + v18;
LABEL_71:
                v35 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v21, a3, a4);
                v37 = v36;
                v39 = v38;
                if (v20 > 0xFFFFFFF5)
                {
                  lazy protocol witness table accessor for type JSONError and conformance JSONError();
                  swift_allocError();
                  *v40 = v35;
                  *(v40 + 8) = v37;
                  *(v40 + 16) = v39;
                  *(v40 + 24) = 0;
                  *(v40 + 32) = 0;
                  *(v40 + 40) = 0;
                  v66 = 10;
                  goto LABEL_241;
                }

                lazy protocol witness table accessor for type JSONError and conformance JSONError();
                swift_allocError();
                *v40 = xmmword_181237560;
                *(v40 + 16) = v15;
                *(v40 + 24) = v35;
                *(v40 + 32) = v37;
                *(v40 + 40) = v39;
LABEL_121:
                v66 = 1;
LABEL_241:
                *(v40 + 48) = v66;
                return swift_willThrow();
              }

              v16 = __s1;
              if ((v17 - 58) >= 0xFFFFFFF7)
              {
                goto LABEL_109;
              }

              if (v17 != 45)
              {
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
                goto LABEL_290;
              }

              if (a2 < 2)
              {
                v23 = __s1 - a3;
                if (__s1 >= a3)
                {
                  v24 = a3 + a4;
                  if (a3 + a4 >= __s1)
                  {
                    if (v24 >= __s1 + 1)
                    {
                      v24 = __s1 + 1;
                    }

                    if (v24 <= a3)
                    {
                      v32 = 0;
                      v27 = 1;
LABEL_151:
                      lazy protocol witness table accessor for type JSONError and conformance JSONError();
                      swift_allocError();
                      *v80 = 0xD000000000000010;
                      *(v80 + 8) = 0x8000000181481B20;
                      *(v80 + 16) = 45;
                      *(v80 + 24) = v27;
                      *(v80 + 32) = v32;
                      *(v80 + 40) = v23;
                      *(v80 + 48) = 1;
                      return swift_willThrow();
                    }

                    v25 = a4 + a3;
                    v26 = -a3;
                    v27 = 1;
LABEL_49:
                    while (1)
                    {
                      v28 = 0;
                      v29 = 0;
                      v30 = v25 - a3;
                      while (1)
                      {
                        if ((v26 + a3 + v29) < 0 || (v30 + v28) < 1)
                        {
                          __break(1u);
LABEL_270:
                          __break(1u);
                          goto LABEL_271;
                        }

                        v31 = *(a3 + v29);
                        if (v31 == 10)
                        {
                          v34 = __OFADD__(v27++, 1);
                          if (v34)
                          {
                            goto LABEL_288;
                          }

                          a3 += v29 + 1;
                          if (a3 >= v24)
                          {
                            goto LABEL_67;
                          }

                          goto LABEL_49;
                        }

                        if (v31 == 13)
                        {
                          break;
                        }

                        v32 = v29 + 1;
                        if (__OFADD__(v29, 1))
                        {
                          goto LABEL_270;
                        }

                        ++v29;
                        --v28;
                        if (a3 + v29 >= v24)
                        {
                          goto LABEL_151;
                        }
                      }

                      v33 = a3 + v29;
                      if (a3 + v29 + 1 > __s1)
                      {
                        goto LABEL_62;
                      }

                      if (((v26 + a3 + v29 + 1) & 0x8000000000000000) != 0 || (~v29 + v30) < 1)
                      {
                        goto LABEL_294;
                      }

                      if (*(v33 + 1) == 10)
                      {
                        v33 = a3 + v29 + 1;
                      }

LABEL_62:
                      v34 = __OFADD__(v27++, 1);
                      if (v34)
                      {
                        goto LABEL_289;
                      }

                      a3 = v33 + 1;
                      if (v33 + 1 >= v24)
                      {
LABEL_67:
                        v32 = 0;
                        goto LABEL_151;
                      }
                    }
                  }
                }

                goto LABEL_284;
              }

              v16 = __s1 + 1;
              v22 = *(__s1 + 1);
              if (v22 != 48)
              {
                if ((v22 - 58) < 0xFFFFFFF7)
                {
                  v48 = v16 - a3;
                  if (v16 >= a3)
                  {
                    v49 = a3 + a4;
                    if (a3 + a4 >= v16)
                    {
                      if (v49 >= __s1 + 2)
                      {
                        v49 = __s1 + 2;
                      }

                      if (v49 > a3)
                      {
                        v50 = a4 + a3;
                        v51 = -a3;
                        v52 = 1;
                        while (2)
                        {
                          v53 = 0;
                          v54 = 0;
                          v55 = v50 - a3;
                          while (1)
                          {
                            if ((v51 + a3 + v54) < 0 || (v55 + v53) < 1)
                            {
                              goto LABEL_275;
                            }

                            v56 = *(a3 + v54);
                            if (v56 == 10)
                            {
                              break;
                            }

                            if (v56 == 13)
                            {
                              v58 = a3 + v54;
                              if (a3 + v54 <= __s1)
                              {
                                if (((v51 + a3 + v54 + 1) & 0x8000000000000000) != 0 || (~v54 + v55) < 1)
                                {
                                  goto LABEL_300;
                                }

                                if (*(v58 + 1) == 10)
                                {
                                  ++v58;
                                }
                              }

                              v34 = __OFADD__(v52++, 1);
                              if (v34)
                              {
                                goto LABEL_298;
                              }

                              a3 = v58 + 1;
                              goto LABEL_107;
                            }

                            v57 = v54 + 1;
                            if (__OFADD__(v54, 1))
                            {
                              goto LABEL_277;
                            }

                            ++v54;
                            --v53;
                            if (a3 + v54 >= v49)
                            {
                              goto LABEL_249;
                            }
                          }

                          v34 = __OFADD__(v52++, 1);
                          if (v34)
                          {
                            goto LABEL_297;
                          }

                          a3 += v54 + 1;
LABEL_107:
                          if (a3 < v49)
                          {
                            continue;
                          }

                          break;
                        }

                        v57 = 0;
                        goto LABEL_249;
                      }

                      v57 = 0;
                      v52 = 1;
LABEL_249:
                      lazy protocol witness table accessor for type JSONError and conformance JSONError();
                      swift_allocError();
                      *v158 = 0xD000000000000013;
                      *(v158 + 8) = 0x8000000181481F30;
                      *(v158 + 16) = v22;
                      *(v158 + 24) = v52;
                      *(v158 + 32) = v57;
                      *(v158 + 40) = v48;
                      *(v158 + 48) = 1;
                      return swift_willThrow();
                    }
                  }

                  goto LABEL_293;
                }

                goto LABEL_109;
              }

              if (a2 == 2 || (v15 = *(__s1 + 2), (v15 - 46) <= 0x37) && ((1 << (v15 - 46)) & 0x80000000800001) != 0)
              {
LABEL_109:
                if (a6)
                {
                  v59 = v16 + 1;
                  if (v16 + 1 < __s1 + a2)
                  {
                    v60 = 0;
                    while (1)
                    {
                      v15 = *(v59 + v60);
                      if ((v15 | 0x20) == 0x65)
                      {
                        break;
                      }

                      if (~v16 + a2 + __s1 == ++v60)
                      {
                        goto LABEL_122;
                      }
                    }

                    v14 = v59 + v60;
                    if (*(v14 - 1) - 58 <= 0xFFFFFFF5)
                    {
                      if (((v16 - __s1 + v60 + 1) & 0x8000000000000000) == 0 && (~v16 + a2 + __s1 - v60) >= 1)
                      {
                        goto LABEL_118;
                      }

                      goto LABEL_287;
                    }
                  }
                }

LABEL_122:
                v67 = __s1 + a2;
                v68 = (__s1 + a2 - 1);
                v11 = *v68;
                if ((v11 - 58) <= 0xFFFFFFF5)
                {
                  v16 = &v68[-a3];
                  if (v68 >= a3 && a3 + a4 >= v68)
                  {
                    if (a3 + a4 < v67)
                    {
                      v67 = a3 + a4;
                    }

                    if (v67 > a3)
                    {
                      v69 = a4 + a3;
                      v70 = -a3;
                      v71 = 1;
                      while (2)
                      {
                        v72 = 0;
                        v73 = 0;
                        v74 = v69 - a3;
                        while (1)
                        {
                          if ((v70 + a3 + v73) < 0 || (v74 + v72) < 1)
                          {
                            __break(1u);
                            goto LABEL_264;
                          }

                          v75 = *(a3 + v73);
                          if (v75 == 10)
                          {
                            v34 = __OFADD__(v71++, 1);
                            if (v34)
                            {
                              goto LABEL_282;
                            }

                            a3 += v73 + 1;
                            goto LABEL_146;
                          }

                          if (v75 == 13)
                          {
                            break;
                          }

                          v76 = v73 + 1;
                          if (__OFADD__(v73, 1))
                          {
                            __break(1u);
                            goto LABEL_266;
                          }

                          ++v73;
                          --v72;
                          if (a3 + v73 >= v67)
                          {
                            goto LABEL_236;
                          }
                        }

                        v77 = a3 + v73;
                        if (v68 >= a3 + v73 + 1)
                        {
                          if (((v70 + a3 + v73 + 1) & 0x8000000000000000) != 0 || (~v73 + v74) < 1)
                          {
                            goto LABEL_286;
                          }

                          if (*(v77 + 1) == 10)
                          {
                            v77 = a3 + v73 + 1;
                          }
                        }

                        v34 = __OFADD__(v71++, 1);
                        if (v34)
                        {
                          goto LABEL_283;
                        }

                        a3 = v77 + 1;
LABEL_146:
                        if (a3 < v67)
                        {
                          continue;
                        }

                        goto LABEL_234;
                      }
                    }

                    goto LABEL_235;
                  }

                  goto LABEL_278;
                }

                v42 = a5;
                v44 = a4;
                v45 = a3;
                v78 = __s1;
                v79 = a2;
                __s1 = a10();
                if ((__s1 & 0x100000000) == 0)
                {
                  return __s1;
                }

LABEL_244:
                LODWORD(__s1) = a9(v42 & 1, v78, v79, v45, v44, v16);
                if (v10)
                {
                  return v151;
                }

                else
                {
                  return __s1;
                }
              }

LABEL_253:
              v20 = v15 - 58;
              v21 = __s1 + 2;
              goto LABEL_71;
            }

            goto LABEL_272;
          }

          v171 = a8;
          v172 = a7;
          v42 = a5;
          v43 = a2;
          v44 = a4;
          v46 = __s1;
          v45 = a3;
          v47 = *v16;
          goto LABEL_192;
        }

        v16 = __s1;
        if (v15 != 101)
        {
          if (v15 == 88)
          {
            goto LABEL_12;
          }

LABEL_70:
          v20 = v15 - 58;
          v21 = __s1 + v12;
          goto LABEL_71;
        }
      }

LABEL_209:
      v138 = __s1 + a2;
      v139 = (__s1 + a2 - 1);
      v11 = *v139;
      if ((v11 | 0x20) == 0x65)
      {
        v16 = &v139[-a3];
        if (v139 >= a3 && a3 + a4 >= v139)
        {
          if (a3 + a4 < v138)
          {
            v138 = a3 + a4;
          }

          if (v138 > a3)
          {
            v140 = a4 + a3;
            v141 = -a3;
            v71 = 1;
LABEL_216:
            while (2)
            {
              v142 = 0;
              v143 = 0;
              v144 = v140 - a3;
              while (1)
              {
                if ((v141 + a3 + v143) < 0 || (v144 + v142) < 1)
                {
                  __break(1u);
LABEL_255:
                  __break(1u);
                  goto LABEL_256;
                }

                v145 = *(a3 + v143);
                if (v145 == 10)
                {
                  v34 = __OFADD__(v71++, 1);
                  if (v34)
                  {
                    goto LABEL_280;
                  }

                  a3 += v143 + 1;
                  if (a3 < v138)
                  {
                    goto LABEL_216;
                  }

                  goto LABEL_234;
                }

                if (v145 == 13)
                {
                  break;
                }

                v76 = v143 + 1;
                if (__OFADD__(v143, 1))
                {
                  goto LABEL_255;
                }

                ++v143;
                --v142;
                if (a3 + v143 >= v138)
                {
                  goto LABEL_236;
                }
              }

              v146 = a3 + v143;
              if (v139 >= a3 + v143 + 1)
              {
                if (((v141 + a3 + v143 + 1) & 0x8000000000000000) != 0 || (~v143 + v144) < 1)
                {
                  goto LABEL_285;
                }

                if (*(v146 + 1) == 10)
                {
                  v146 = a3 + v143 + 1;
                }
              }

              v34 = __OFADD__(v71++, 1);
              if (v34)
              {
                goto LABEL_281;
              }

              a3 = v146 + 1;
              if (v146 + 1 < v138)
              {
                continue;
              }

              break;
            }

LABEL_234:
            v76 = 0;
LABEL_236:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v147 = 0xD000000000000010;
            *(v147 + 8) = 0x8000000181481B20;
            *(v147 + 16) = v11;
            *(v147 + 24) = v71;
            *(v147 + 32) = v76;
            *(v147 + 40) = v16;
            *(v147 + 48) = 1;
            return swift_willThrow();
          }

LABEL_235:
          v76 = 0;
          v71 = 1;
          goto LABEL_236;
        }

        goto LABEL_276;
      }

      v42 = a5;
      v44 = a4;
      v45 = a3;
      v118 = 0;
LABEL_238:
      v78 = __s1;
      v79 = a2;
      __s1 = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v118, a7, a8);
      if ((__s1 & 0x100000000) == 0)
      {
        return __s1;
      }

      if (v13)
      {
        v148 = static String._fromUTF8Repairing(_:)();
        v150 = v149;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = v148;
        *(v40 + 8) = v150;
        *(v40 + 16) = 0u;
        *(v40 + 32) = 0u;
        v66 = 11;
        goto LABEL_241;
      }

      goto LABEL_244;
    }

    goto LABEL_207;
  }

  if ((v11 - 58) >= 0xFFFFFFF7)
  {
    goto LABEL_207;
  }

  if (*__s1 <= 0x2Du)
  {
    if (v11 != 43 && v11 != 45)
    {
      goto LABEL_291;
    }

    if (a2 < 2)
    {
      if (a2 != 1)
      {
LABEL_290:
        __break(1u);
        goto LABEL_291;
      }

      v16 = __s1 - a3;
      if (__s1 < a3)
      {
        goto LABEL_292;
      }

      v81 = a3 + a4;
      if (a3 + a4 < __s1)
      {
        goto LABEL_292;
      }

      if (v81 >= __s1 + 1)
      {
        v81 = __s1 + 1;
      }

      if (v81 > a3)
      {
        v82 = a4 + a3;
        v83 = -a3;
        v71 = 1;
        while (2)
        {
          v84 = 0;
          v85 = 0;
          v86 = v82 - a3;
          while (1)
          {
            if ((v83 + a3 + v85) < 0 || (v86 + v84) < 1)
            {
              goto LABEL_273;
            }

            v87 = *(a3 + v85);
            if (v87 == 10)
            {
              break;
            }

            if (v87 == 13)
            {
              v88 = a3 + v85;
              if (a3 + v85 + 1 <= __s1)
              {
                if (((v83 + a3 + v85 + 1) & 0x8000000000000000) != 0 || (~v85 + v86) < 1)
                {
                  goto LABEL_299;
                }

                if (*(v88 + 1) == 10)
                {
                  v88 = a3 + v85 + 1;
                }
              }

              v34 = __OFADD__(v71++, 1);
              if (v34)
              {
                goto LABEL_296;
              }

              a3 = v88 + 1;
              goto LABEL_177;
            }

            v76 = v85 + 1;
            if (__OFADD__(v85, 1))
            {
              goto LABEL_274;
            }

            ++v85;
            --v84;
            if (a3 + v85 >= v81)
            {
              goto LABEL_236;
            }
          }

          v34 = __OFADD__(v71++, 1);
          if (v34)
          {
            goto LABEL_295;
          }

          a3 += v85 + 1;
LABEL_177:
          if (a3 < v81)
          {
            continue;
          }

          goto LABEL_234;
        }
      }

      goto LABEL_235;
    }

    v16 = __s1 + 1;
    v41 = *(__s1 + 1);
    if (v41 == 48)
    {
      if (a2 != 2)
      {
        v13 = 0;
        v15 = *(__s1 + 2);
        if (*(__s1 + 2) <= 0x57u)
        {
          if (v15 != 46 && v15 != 69)
          {
            goto LABEL_253;
          }

          goto LABEL_209;
        }

        if (v15 != 120)
        {
          if (v15 == 101)
          {
            goto LABEL_209;
          }

          if (v15 != 88)
          {
            goto LABEL_253;
          }
        }

        v171 = a8;
        v172 = a7;
        v42 = a5;
        v43 = a2;
        v44 = a4;
        v45 = a3;
        v46 = __s1;
        v16 = __s1 + 3;
        v47 = *(__s1 + 3);
LABEL_192:
        valid = UInt8.isValidHexDigit.getter(v47);
        v118 = 1;
        if (!valid)
        {
          v152 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v16, v45, v44);
          v154 = v153;
          v156 = v155;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v157 = xmmword_181237560;
          *(v157 + 16) = v47;
          *(v157 + 24) = v152;
          *(v157 + 32) = v154;
          *(v157 + 40) = v156;
          *(v157 + 48) = 1;
          return swift_willThrow();
        }

        v13 = 0;
        __s1 = v46;
        a2 = v43;
        a8 = v171;
        a7 = v172;
        goto LABEL_238;
      }
    }

    else if ((v41 - 58) < 0xFFFFFFF7)
    {
      if (v41 != 46)
      {
        if (v41 == 78)
        {
LABEL_256:
          if (a2 > 3 && *(__s1 + 2) == 97 && *(__s1 + 3) == 78)
          {
            v13 = 1;
            goto LABEL_209;
          }

LABEL_264:
          v168 = a3;
          v169 = a4;
          v107 = StaticString.description.getter();
          v109 = v170;
          v110 = v16;
          v111 = v168;
          v112 = v169;
LABEL_189:
          v113 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v110, v111, v112);
          v115 = v114;
          v99 = v116;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v40 = v107;
          *(v40 + 8) = v109;
          *(v40 + 16) = v113;
          *(v40 + 24) = v115;
          goto LABEL_190;
        }

        if (v41 != 73)
        {
          v159 = a3;
          v160 = a4;
          v161 = static String._uncheckedFromUTF8(_:)();
          MEMORY[0x1865CB0E0](v161);

          MEMORY[0x1865CB0E0](0x6D756E206E692027, 0xEB00000000726562);
          v162 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v16, v159, v160);
          v164 = v163;
          v166 = v165;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v167 = 0x27207265746661;
          *(v167 + 8) = 0xE700000000000000;
          *(v167 + 16) = v41;
          *(v167 + 24) = v162;
          *(v167 + 32) = v164;
          *(v167 + 40) = v166;
          *(v167 + 48) = 1;
          return swift_willThrow();
        }

        v89 = a4;
        v90 = a3;
        if (a2 > 8)
        {
          v173 = a7;
          v119 = a8;
          v120 = a5;
          v121 = a2;
          v122 = __s1;
          if (!strncmp((__s1 + 1), "Infinity", 8uLL))
          {
            v13 = 1;
            a3 = v90;
            __s1 = v122;
            a4 = v89;
            a2 = v121;
            a5 = v120;
            a8 = v119;
            a7 = v173;
            goto LABEL_209;
          }
        }

LABEL_202:
        v127 = StaticString.description.getter();
        v129 = v128;
        v130 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v16, v90, v89);
        v132 = v131;
        v134 = v133;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = v127;
        *(v40 + 8) = v129;
        *(v40 + 16) = v130;
        *(v40 + 24) = v132;
        *(v40 + 32) = v134;
        goto LABEL_203;
      }

      if (a2 == 2)
      {
        v101 = __s1 + 2;
        goto LABEL_187;
      }

LABEL_266:
      v15 = *(__s1 + 2);
      if ((v15 - 58) <= 0xFFFFFFF5)
      {
        v135 = __s1 + 2;
        goto LABEL_206;
      }
    }

    v13 = 0;
    goto LABEL_209;
  }

  switch(v11)
  {
    case 'I':
      v89 = a4;
      v90 = a3;
      if (a2 <= 7)
      {
        v91 = __s1;
        v92 = StaticString.description.getter();
        v94 = v93;
        v95 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v91, v90, v89);
        v97 = v96;
        v99 = v98;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = v92;
        *(v40 + 8) = v94;
        *(v40 + 16) = v95;
        *(v40 + 24) = v97;
LABEL_190:
        *(v40 + 32) = v99;
LABEL_203:
        *(v40 + 40) = 0;
        v66 = 5;
        goto LABEL_241;
      }

      v123 = a7;
      v124 = a8;
      v125 = a5;
      v126 = a2;
      v16 = __s1;
      if (!strncmp(__s1, "Infinity", 8uLL))
      {
        v13 = 1;
        __s1 = v16;
        a3 = v90;
        a4 = v89;
        a2 = v126;
        a5 = v125;
        a8 = v124;
        a7 = v123;
        goto LABEL_209;
      }

      goto LABEL_202;
    case 'N':
      if (a2 >= 3 && *(__s1 + 1) == 97 && *(__s1 + 2) == 78)
      {
        v13 = 1;
LABEL_208:
        v16 = __s1;
        goto LABEL_209;
      }

      v104 = __s1;
      v105 = a3;
      v106 = a4;
      v107 = StaticString.description.getter();
      v109 = v108;
      v110 = v104;
      v111 = v105;
      v112 = v106;
      goto LABEL_189;
    case '.':
      if (a2 >= 1)
      {
        v100 = 1;
      }

      else
      {
        v100 = a2;
      }

      if (a2 < 2)
      {
        v101 = __s1 + v100;
LABEL_187:
        v61 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v101, a3, a4);
        v63 = v102;
        v65 = v103;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = 0;
        *(v40 + 8) = 0;
        *(v40 + 16) = 46;
        goto LABEL_120;
      }

      v15 = *(__s1 + v100);
      if ((v15 - 58) <= 0xFFFFFFF5)
      {
        v135 = __s1 + v100;
LABEL_206:
        v61 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v135, a3, a4);
        v63 = v136;
        v65 = v137;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = 0xD000000000000013;
        *(v40 + 8) = 0x8000000181481B40;
        goto LABEL_119;
      }

LABEL_207:
      v13 = 0;
      goto LABEL_208;
  }

LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
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
  return __s1;
}

char *specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:)(__int16 a1, const char *a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  LOWORD(v9) = v6;
  LOWORD(v15) = a1;
  v142 = *MEMORY[0x1E69E9840];
  v136[0] = 0;
  v16 = _stringshims_strtod_clocale(a2, v136);
  if (v136[0])
  {
    v17 = &a2[a3] == v136[0];
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v20 = v16;
    if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt64V_SdTt1g5Tm(v136, v16) || (v136[1] & 1) != 0)
    {
      goto LABEL_57;
    }

    if (fabs(v20) < 9.00719925e15)
    {
      return v136[0];
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) != MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 46, 0xE100000000000000, 1, v140);
    if ((v141 & 1) == 0)
    {
      v18 = v140[1];
      v8 = v140[2];
      v19 = v140[0];
      goto LABEL_56;
    }

LABEL_12:
    v21 = specialized BufferView.suffix(from:)(a6, a2, a3);
    v23 = &v21[v22];
    if (v15)
    {
      if (v22 < 1)
      {
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

      v24 = *v21;
      if (v24 == 45 || (v9 = v21, v24 == 43))
      {
        v9 = v21 + 1;
      }

      if (v23 < v9)
      {
        goto LABEL_311;
      }

      a6 = v9 - v21;
      if (v9 - v21 < 0)
      {
LABEL_312:
        __break(1u);
        goto LABEL_313;
      }

      v25 = v23 - v9;
      if (v23 - v9 < 0)
      {
LABEL_313:
        __break(1u);
LABEL_314:
        v87 = a4;
        v38 = 0;
        v51 = v134;
        v52 = v8;
        v53 = v135;
LABEL_169:
        v133 = v52;
        LODWORD(v136[0]) = a6;
        WORD2(v136[0]) = v9;
        v88 = v87;
        HIWORD(v136[0]) = v87;
        LOWORD(v136[1]) = v53;
        WORD1(v136[1]) = a5;
        WORD2(v136[1]) = v7;
        HIWORD(v136[1]) = v51;
        LOWORD(v137) = v52;
        v89 = v15;
        HIWORD(v137) = v15;
        v90 = v53;
        if ((_So9NSDecimala__exponent_getter(v136) & 0x80000000) != 0)
        {
          LODWORD(v136[0]) = a6;
          WORD2(v136[0]) = v9;
          HIWORD(v136[0]) = v88;
          LOWORD(v136[1]) = v90;
          WORD1(v136[1]) = a5;
          WORD2(v136[1]) = v7;
          HIWORD(v136[1]) = v134;
          LOWORD(v137) = v133;
          HIWORD(v137) = v89;
          v130 = _So9NSDecimala__exponent_getter(v136);
          if (v130 > 0)
          {
            goto LABEL_328;
          }

          if (!v130)
          {
            return v38;
          }

          if (__CFADD__(v130, -v130 & ~(-v130 >> 31)))
          {
            do
            {
              v38 /= 0xAuLL;
            }

            while (!__CFADD__(v130++, 1));
            return v38;
          }

          goto LABEL_336;
        }

        LODWORD(v136[0]) = a6;
        WORD2(v136[0]) = v9;
        HIWORD(v136[0]) = v88;
        LOWORD(v136[1]) = v90;
        WORD1(v136[1]) = a5;
        WORD2(v136[1]) = v7;
        HIWORD(v136[1]) = v134;
        LOWORD(v137) = v133;
        HIWORD(v137) = v89;
        v91 = _So9NSDecimala__exponent_getter(v136);
        if ((v91 & 0x80000000) == 0)
        {
          v92 = v91 + 1;
          while (--v92)
          {
            v93 = (v38 * 0xAuLL) >> 64;
            v38 *= 10;
            if (v93)
            {
              goto LABEL_57;
            }
          }

          return v38;
        }

        goto LABEL_318;
      }

      v15 = v22;
      v7 = v21;
      if (v25 >= 2)
      {
        v26 = 2;
      }

      else
      {
        v26 = v23 - v9;
      }

      if (_stringshims_strncasecmp_clocale(v9, "0x", v26))
      {
        if (v9 < v23)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = v23 - v9;
          do
          {
            if (a6 + v28 < 0)
            {
              goto LABEL_294;
            }

            v33 = v31-- < 1;
            if (v33)
            {
              goto LABEL_294;
            }

            LODWORD(v15) = v9[v28];
            if ((v15 - 58) > 0xF5u)
            {
              v32 = __OFADD__(v30++, 1);
              if (v32)
              {
                goto LABEL_296;
              }
            }

            else if (v9[v28] <= 0x2Du)
            {
              if (v15 != 43 && v15 != 45 || v30 || v29 != 2)
              {
LABEL_77:
                a5 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(&v9[v28], a4, a5);
                v57 = v56;
                v59 = v58;
                goto LABEL_78;
              }

              v30 = 0;
              v29 = 3;
            }

            else if (v15 == 101 || v15 == 69)
            {
              if (v29 != 1 && (v29 || v30 <= 0))
              {
                goto LABEL_77;
              }

              v30 = 0;
              v29 = 2;
            }

            else
            {
              if (v15 != 46)
              {
                goto LABEL_77;
              }

              if (v29)
              {
                v121 = &v9[v28];
                if (&v9[v28] >= a4)
                {
                  v122 = a4 + a5;
                  if (a4 + a5 >= v121)
                  {
                    if (v122 >= &v9[v28 + 1])
                    {
                      v122 = &v9[v28 + 1];
                    }

                    if (v122 <= a4)
                    {
                      v57 = 0;
                      a5 = 1;
                    }

                    else
                    {
                      v123 = a5 + a4;
                      a5 = 1;
                      v124 = a4;
                      do
                      {
                        v125 = 0;
                        v126 = 0;
                        v127 = v123 - v124;
                        while (1)
                        {
                          if ((v124 - a4 + v126) < 0 || (v127 + v125) < 1)
                          {
                            goto LABEL_308;
                          }

                          v128 = *(v124 + v126);
                          if (v128 == 10)
                          {
                            break;
                          }

                          if (v128 == 13)
                          {
                            v129 = v124 + v126;
                            if (v121 < v124 + v126 + 1)
                            {
                              goto LABEL_274;
                            }

                            if (((v124 - a4 + v126 + 1) & 0x8000000000000000) == 0 && (~v126 + v127) >= 1)
                            {
                              if (*(v129 + 1) == 10)
                              {
                                v129 = v124 + v126 + 1;
                              }

LABEL_274:
                              v32 = __OFADD__(a5++, 1);
                              if (!v32)
                              {
                                v124 = v129 + 1;
                                goto LABEL_278;
                              }

LABEL_338:
                              __break(1u);
LABEL_339:
                              __break(1u);
LABEL_340:
                              __break(1u);
                            }

                            __break(1u);
                          }

                          v57 = v126 + 1;
                          if (__OFADD__(v126, 1))
                          {
                            goto LABEL_309;
                          }

                          ++v126;
                          --v125;
                          if (v124 + v126 >= v122)
                          {
                            goto LABEL_290;
                          }
                        }

                        v32 = __OFADD__(a5++, 1);
                        if (v32)
                        {
                          goto LABEL_337;
                        }

                        v124 += v126 + 1;
LABEL_278:
                        ;
                      }

                      while (v124 < v122);
                      v57 = 0;
                    }

LABEL_290:
                    v59 = &v9[v28 - a4];
                    LOBYTE(v15) = 46;
LABEL_78:
                    a6 = 0xE900000000000072;
                    v7 = 0x65626D756E206E69;
LABEL_79:
                    v38 = v15;
                    lazy protocol witness table accessor for type JSONError and conformance JSONError();
                    swift_allocError();
                    *v43 = v7;
                    *(v43 + 8) = a6;
                    *(v43 + 16) = v15;
                    *(v43 + 24) = a5;
                    *(v43 + 32) = v57;
                    *(v43 + 40) = v59;
                    v44 = 1;
LABEL_58:
                    *(v43 + 48) = v44;
                    swift_willThrow();
                    return v38;
                  }
                }

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
                goto LABEL_338;
              }

              v30 = 0;
              v29 = 1;
            }

            ++v28;
          }

          while (v25 != v28);
        }

LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
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
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
        goto LABEL_310;
      }

      v37 = v9 + 2;
      v60 = v23 - (v9 + 2);
      if (v60 >= 1 && v37 < v23)
      {
        v60 = &v37[-v7];
        if ((&v37[-v7] & 0x8000000000000000) == 0)
        {
          v59 = &v9[-a4 + 2];
          v60 = v15 + v7 - v9 - 3;
          v65 = a6 + 3;
          v27 = 1;
          while (1)
          {
            v66 = v65;
            LOWORD(v15) = *v37;
            if ((v15 - 58) <= 0xF5u && (*v37 - 65 > 0x25 || ((1 << (v15 - 65)) & 0x3F0000003FLL) == 0))
            {
              break;
            }

            v33 = v60-- < 1;
            if (!v33 && ++v37 < v23)
            {
              ++v59;
              ++v65;
              if ((v66 & 0x8000000000000000) == 0)
              {
                continue;
              }
            }

            goto LABEL_115;
          }

          if (v37 >= a4)
          {
            v94 = a4 + a5;
            if (a4 + a5 >= v37)
            {
              if (v94 >= (v37 + 1))
              {
                v94 = (v37 + 1);
              }

              if (v94 <= a4)
              {
                v57 = 0;
                a6 = 0xED00007265626D75;
                v7 = 0x6E20786568206E69;
                a5 = 1;
                goto LABEL_79;
              }

              v95 = a5 + a4;
              v96 = -a4;
              a5 = 1;
              a6 = 0xED00007265626D75;
              v7 = 0x6E20786568206E69;
              while (1)
              {
                v97 = 0;
                v98 = 0;
                v99 = v95 - a4;
                while (1)
                {
                  if ((v96 + a4 + v98) < 0 || (v99 + v97) < 1)
                  {
                    goto LABEL_302;
                  }

                  v100 = *(a4 + v98);
                  if (v100 == 10)
                  {
                    v32 = __OFADD__(a5++, 1);
                    if (!v32)
                    {
                      a4 += v98 + 1;
                      goto LABEL_198;
                    }

                    goto LABEL_325;
                  }

                  if (v100 == 13)
                  {
                    break;
                  }

                  v57 = v98 + 1;
                  if (__OFADD__(v98, 1))
                  {
                    goto LABEL_303;
                  }

                  ++v98;
                  --v97;
                  if (a4 + v98 >= v94)
                  {
                    goto LABEL_79;
                  }
                }

                v101 = a4 + v98;
                if (v37 >= a4 + v98 + 1)
                {
                  if (((v96 + a4 + v98 + 1) & 0x8000000000000000) != 0 || (~v98 + v99) < 1)
                  {
                    goto LABEL_335;
                  }

                  if (*(v101 + 1) == 10)
                  {
                    v101 = a4 + v98 + 1;
                  }
                }

                v32 = __OFADD__(a5++, 1);
                if (v32)
                {
                  goto LABEL_326;
                }

                a4 = v101 + 1;
LABEL_198:
                if (a4 >= v94)
                {
                  v57 = 0;
                  goto LABEL_79;
                }
              }
            }
          }

          goto LABEL_317;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      v68 = &v37[v60];
      if (&v37[v60] >= a4)
      {
        v69 = a4 + a5;
        if (a4 + a5 >= v68)
        {
          if (v69 >= &v37[v60 + 1])
          {
            v69 = &v37[v60 + 1];
          }

          if (v69 > a4)
          {
            v70 = a5 + a4;
            a5 = 1;
            v71 = a4;
            while (1)
            {
              while (1)
              {
                v72 = 0;
                v73 = 0;
                v74 = v70 - v71;
LABEL_123:
                if ((v71 - a4 + v73) < 0 || (v74 + v72) < 1)
                {
                  goto LABEL_298;
                }

                v75 = *(v71 + v73);
                if (v75 != 10)
                {
                  break;
                }

                v32 = __OFADD__(a5++, 1);
                if (v32)
                {
                  goto LABEL_321;
                }

                v71 += v73 + 1;
                if (v71 >= v69)
                {
                  goto LABEL_224;
                }
              }

              if (v75 != 13)
              {
                v76 = v73 + 1;
                if (__OFADD__(v73, 1))
                {
                  goto LABEL_300;
                }

                ++v73;
                --v72;
                if (v71 + v73 >= v69)
                {
                  goto LABEL_227;
                }

                goto LABEL_123;
              }

              v77 = v71 + v73;
              if (v68 >= v71 + v73 + 1)
              {
                if (((v71 - a4 + v73 + 1) & 0x8000000000000000) != 0 || (~v73 + v74) < 1)
                {
                  goto LABEL_332;
                }

                if (*(v77 + 1) == 10)
                {
                  v77 = v71 + v73 + 1;
                }
              }

              v32 = __OFADD__(a5++, 1);
              if (v32)
              {
                goto LABEL_323;
              }

              v71 = v77 + 1;
              if (v77 + 1 >= v69)
              {
                goto LABEL_224;
              }
            }
          }

LABEL_225:
          v76 = 0;
LABEL_226:
          a5 = 1;
          goto LABEL_227;
        }
      }

      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
      goto LABEL_320;
    }

    if (v22 >= 1)
    {
      v34 = 0;
      v35 = v22;
      v36 = v21;
      v37 = v21;
      while ((v34 & 0x8000000000000000) == 0)
      {
        v33 = v35-- < 1;
        if (v33)
        {
          break;
        }

        if (*v37 - 58 >= 0xFFFFFFF6)
        {
          ++v37;
          ++v36;
          ++v34;
          if (v37 < v23)
          {
            continue;
          }
        }

        goto LABEL_81;
      }

      goto LABEL_297;
    }

    v36 = v21;
    v37 = v21;
LABEL_81:
    if (v37 >= v23)
    {
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

    v60 = 0;
    v61 = 0;
    v62 = v36 - v21;
    v63 = (&v21[v22] - v36);
    v64 = &v21[v22] - v37;
    while (1)
    {
      if (v37 - v21 + v60 < 0)
      {
        goto LABEL_292;
      }

      v33 = v64-- < 1;
      if (v33)
      {
        goto LABEL_292;
      }

      v27 = v37[v60];
      if (v27 - 58 >= 0xFFFFFFF6)
      {
        v32 = __OFADD__(v62++, 1);
        if (v32)
        {
          goto LABEL_295;
        }
      }

      else if (v37[v60] <= 0x2Du)
      {
        if (v27 != 43 && v27 != 45)
        {
LABEL_200:
          v102 = &v37[v60];
          if (&v37[v60] < a4)
          {
            goto LABEL_319;
          }

          v103 = a4 + a5;
          if (a4 + a5 < v102)
          {
            goto LABEL_319;
          }

          if (v103 >= &v37[v60 + 1])
          {
            v103 = &v37[v60 + 1];
          }

          if (v103 <= a4)
          {
            goto LABEL_225;
          }

          v104 = a5 + a4;
          a5 = 1;
          v105 = a4;
          while (1)
          {
LABEL_206:
            v106 = 0;
            v107 = 0;
            v108 = v104 - v105;
            while (1)
            {
              if ((v105 - a4 + v107) < 0 || (v108 + v106) < 1)
              {
                goto LABEL_304;
              }

              v109 = *(v105 + v107);
              if (v109 == 10)
              {
                v32 = __OFADD__(a5++, 1);
                if (v32)
                {
                  goto LABEL_329;
                }

                v105 += v107 + 1;
                if (v105 >= v103)
                {
                  goto LABEL_224;
                }

                goto LABEL_206;
              }

              if (v109 == 13)
              {
                break;
              }

              v76 = v107 + 1;
              if (__OFADD__(v107, 1))
              {
                goto LABEL_306;
              }

              ++v107;
              --v106;
              if (v105 + v107 >= v103)
              {
                goto LABEL_227;
              }
            }

            v110 = v105 + v107;
            if (v102 >= v105 + v107 + 1)
            {
              if (((v105 - a4 + v107 + 1) & 0x8000000000000000) != 0 || (~v107 + v108) < 1)
              {
                goto LABEL_339;
              }

              if (*(v110 + 1) == 10)
              {
                v110 = v105 + v107 + 1;
              }
            }

            v32 = __OFADD__(a5++, 1);
            if (v32)
            {
              goto LABEL_330;
            }

            v105 = v110 + 1;
            if (v110 + 1 >= v103)
            {
LABEL_224:
              v76 = 0;
LABEL_227:
              v38 = &v37[v60 - a4];
              v111 = v27;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v43 = xmmword_181237560;
              *(v43 + 16) = v111;
              *(v43 + 24) = a5;
              *(v43 + 32) = v76;
              *(v43 + 40) = v38;
              v44 = 1;
              goto LABEL_58;
            }
          }
        }

        if (v62 || v61 != 2)
        {
          v78 = &v37[v60];
          if (&v37[v60] >= a4)
          {
            v79 = a4 + a5;
            if (a4 + a5 >= v78)
            {
              if (v79 >= &v37[v60 + 1])
              {
                v79 = &v37[v60 + 1];
              }

              if (v79 <= a4)
              {
                goto LABEL_225;
              }

              v80 = a5 + a4;
              a5 = 1;
              v81 = a4;
              while (1)
              {
LABEL_147:
                v82 = 0;
                v83 = 0;
                v84 = v80 - v81;
                while (1)
                {
                  if ((v81 - a4 + v83) < 0 || (v84 + v82) < 1)
                  {
                    goto LABEL_299;
                  }

                  v85 = *(v81 + v83);
                  if (v85 == 10)
                  {
                    v32 = __OFADD__(a5++, 1);
                    if (v32)
                    {
                      goto LABEL_322;
                    }

                    v81 += v83 + 1;
                    if (v81 >= v79)
                    {
                      goto LABEL_224;
                    }

                    goto LABEL_147;
                  }

                  if (v85 == 13)
                  {
                    break;
                  }

                  v76 = v83 + 1;
                  if (__OFADD__(v83, 1))
                  {
                    goto LABEL_301;
                  }

                  ++v83;
                  --v82;
                  if (v81 + v83 >= v79)
                  {
                    goto LABEL_227;
                  }
                }

                v86 = v81 + v83;
                if (v78 >= v81 + v83 + 1)
                {
                  if (((v81 - a4 + v83 + 1) & 0x8000000000000000) != 0 || (~v83 + v84) < 1)
                  {
                    goto LABEL_333;
                  }

                  if (*(v86 + 1) == 10)
                  {
                    v86 = v81 + v83 + 1;
                  }
                }

                v32 = __OFADD__(a5++, 1);
                if (v32)
                {
                  goto LABEL_324;
                }

                v81 = v86 + 1;
                if (v86 + 1 >= v79)
                {
                  goto LABEL_224;
                }
              }
            }
          }

          goto LABEL_316;
        }

        v62 = 0;
        v61 = 3;
      }

      else if (v27 == 101 || v27 == 69)
      {
        if (v62 < 1 || v61 >= 2)
        {
          goto LABEL_116;
        }

        v62 = 0;
        v61 = 2;
      }

      else
      {
        if (v27 != 46)
        {
          goto LABEL_200;
        }

        if (v62 < 1 || v61)
        {
          v112 = &v37[v60];
          if (&v37[v60] >= a4 && a4 + a5 >= v112)
          {
            if (a4 + a5 >= &v37[v60 + 1])
            {
              v113 = &v37[v60 + 1];
            }

            else
            {
              v113 = a4 + a5;
            }

            if (v113 > a4)
            {
              v114 = a5 + a4;
              a5 = 1;
              v115 = a4;
              while (1)
              {
                v116 = 0;
                v117 = 0;
                v118 = v114 - v115;
                while (1)
                {
                  if ((v115 - a4 + v117) < 0 || (v118 + v116) < 1)
                  {
                    goto LABEL_305;
                  }

                  v119 = *(v115 + v117);
                  if (v119 == 10)
                  {
                    break;
                  }

                  if (v119 == 13)
                  {
                    v120 = v115 + v117;
                    if (v112 >= v115 + v117 + 1)
                    {
                      if (((v115 - a4 + v117 + 1) & 0x8000000000000000) != 0 || (~v117 + v118) < 1)
                      {
                        goto LABEL_340;
                      }

                      if (*(v120 + 1) == 10)
                      {
                        v120 = v115 + v117 + 1;
                      }
                    }

                    v32 = __OFADD__(a5++, 1);
                    if (v32)
                    {
                      goto LABEL_334;
                    }

                    v76 = 0;
                    v115 = v120 + 1;
                    goto LABEL_252;
                  }

                  v76 = v117 + 1;
                  if (__OFADD__(v117, 1))
                  {
                    goto LABEL_307;
                  }

                  ++v117;
                  --v116;
                  if (v115 + v117 >= v113)
                  {
                    v27 = 46;
                    goto LABEL_227;
                  }
                }

                v32 = __OFADD__(a5++, 1);
                if (v32)
                {
                  goto LABEL_331;
                }

                v76 = 0;
                v115 += v117 + 1;
LABEL_252:
                v27 = 46;
                if (v115 >= v113)
                {
                  goto LABEL_227;
                }
              }
            }

            v76 = 0;
            v27 = 46;
            goto LABEL_226;
          }

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
          goto LABEL_327;
        }

        v62 = 0;
        v61 = 1;
      }

      if (v63 == ++v60)
      {
        goto LABEL_291;
      }
    }
  }

  specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 0x2EuLL, 0xE100000000000000, 1, v138);
  if (v139 == 1)
  {
    goto LABEL_12;
  }

  v18 = v138[1];
  v8 = v138[2];
  v19 = v138[0];
LABEL_56:
  v135 = v18;
  v136[0] = v19;
  v39 = HIDWORD(v19);
  v40 = v18 >> 16;
  v136[1] = v18;
  a5 = v18 >> 32;
  v7 = v18 >> 48;
  v15 = v8 >> 16;
  v137 = v8;
  if (_So9NSDecimala__isNegative_getter(v136))
  {
LABEL_57:
    v38 = static String._fromUTF8Repairing(_:)();
    v42 = v41;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v43 = v38;
    *(v43 + 8) = v42;
    *(v43 + 16) = 0u;
    *(v43 + 32) = 0u;
    v44 = 11;
    goto LABEL_58;
  }

  v46 = v7;
  LOWORD(v7) = a5;
  LOWORD(a5) = v40;
  a4 = HIWORD(v19);
  a6 = v19;
  v9 = HIDWORD(v19);
  LODWORD(v136[0]) = a6;
  WORD2(v136[0]) = v39;
  HIWORD(v136[0]) = a4;
  LOWORD(v136[1]) = v135;
  WORD1(v136[1]) = a5;
  WORD2(v136[1]) = v7;
  v134 = v46;
  HIWORD(v136[1]) = v46;
  v137 = v8;
  v47 = _So9NSDecimala__length_getter(v136);
  if (!v47)
  {
    goto LABEL_314;
  }

  v48 = v47 - 1;
  if (v47 == 1)
  {
    v55 = 0;
    v49 = 0;
    v51 = v134;
    v52 = v8;
    v53 = v135;
LABEL_167:
    if (v49)
    {
      goto LABEL_57;
    }

    v87 = a4;
    v38 = v55 | WORD2(a6);
    goto LABEL_169;
  }

  v49 = 0;
  v50 = 0;
  v51 = v134;
  v52 = v8;
  v53 = v135;
  while (1)
  {
    if (v48 + 1 > 4)
    {
      if (v48 + 1 > 6)
      {
        LOWORD(v54) = v8;
        if (v48 != 6)
        {
          v54 = v8 >> 16;
          if (v48 != 7)
          {
            break;
          }
        }
      }

      else
      {
        LOWORD(v54) = v7;
        if (v48 != 4)
        {
          LOWORD(v54) = v134;
          if (v48 != 5)
          {
            break;
          }
        }
      }

      goto LABEL_74;
    }

    LOWORD(v54) = a4;
    if (v48 != 1)
    {
      LOWORD(v54) = v135;
      if (v48 != 2)
      {
        LOWORD(v54) = a5;
        if (v48 != 3)
        {
          break;
        }
      }
    }

LABEL_74:
    if (v49)
    {
      goto LABEL_57;
    }

    v55 = (v54 | v50) << 16;
    v49 = HIWORD(v50) != 0;
    v50 = v55;
    if (!--v48)
    {
      goto LABEL_167;
    }
  }

  strcpy(v136, "Invalid index ");
  HIBYTE(v136[1]) = -18;
  v132 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v132);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unsigned __int8 *specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(unsigned __int8 *__s1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6, uint64_t (*a7)(unsigned __int8 *, uint64_t, uint64_t), uint64_t (*a8)(unsigned __int8 *, uint64_t, uint64_t), uint64_t (*a9)(void, unsigned __int8 *, uint64_t, unint64_t, uint64_t, unint64_t), uint64_t (*a10)(void))
{
  if ((a5 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
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
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  v11 = *__s1;
  if (v11 == 48)
  {
    if (a2 >= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a2;
    }

    if (a2 >= 2)
    {
      v13 = 0;
      v14 = &__s1[v12];
      v15 = __s1[v12];
      if (__s1[v12] <= 0x57u)
      {
        v16 = __s1;
        if (v15 != 46 && v15 != 69)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v15 == 120)
        {
LABEL_12:
          v16 = v14 + 1;
          if (&__s1[a2] < v14 + 1)
          {
            if (a2 - v12 >= 1)
            {
LABEL_118:
              v61 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v14, a3, a4);
              v63 = v62;
              v65 = v64;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v40 = xmmword_181237560;
LABEL_119:
              *(v40 + 16) = v15;
LABEL_120:
              *(v40 + 24) = v61;
              *(v40 + 32) = v63;
              *(v40 + 40) = v65;
              goto LABEL_121;
            }

            __break(1u);
LABEL_15:
            if (a2)
            {
              v17 = *__s1;
              if (v17 == 48)
              {
                if (a2 >= 1)
                {
                  v18 = 1;
                }

                else
                {
                  v18 = a2;
                }

                v16 = __s1;
                if (a2 < 2)
                {
                  goto LABEL_109;
                }

                v15 = __s1[v18];
                v19 = (v15 - 46) > 0x37 || ((1 << (v15 - 46)) & 0x80000000800001) == 0;
                v16 = __s1;
                if (!v19)
                {
                  goto LABEL_109;
                }

                v20 = v15 - 58;
                v21 = &__s1[v18];
LABEL_71:
                v35 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v21, a3, a4);
                v37 = v36;
                v39 = v38;
                if (v20 > 0xFFFFFFF5)
                {
                  lazy protocol witness table accessor for type JSONError and conformance JSONError();
                  swift_allocError();
                  *v40 = v35;
                  *(v40 + 8) = v37;
                  *(v40 + 16) = v39;
                  *(v40 + 24) = 0;
                  *(v40 + 32) = 0;
                  *(v40 + 40) = 0;
                  v66 = 10;
                  goto LABEL_241;
                }

                lazy protocol witness table accessor for type JSONError and conformance JSONError();
                swift_allocError();
                *v40 = xmmword_181237560;
                *(v40 + 16) = v15;
                *(v40 + 24) = v35;
                *(v40 + 32) = v37;
                *(v40 + 40) = v39;
LABEL_121:
                v66 = 1;
LABEL_241:
                *(v40 + 48) = v66;
                return swift_willThrow();
              }

              v16 = __s1;
              if ((v17 - 58) >= 0xFFFFFFF7)
              {
                goto LABEL_109;
              }

              if (v17 != 45)
              {
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
                goto LABEL_290;
              }

              if (a2 < 2)
              {
                v23 = &__s1[-a3];
                if (__s1 >= a3)
                {
                  v24 = a3 + a4;
                  if (a3 + a4 >= __s1)
                  {
                    if (v24 >= (__s1 + 1))
                    {
                      v24 = (__s1 + 1);
                    }

                    if (v24 <= a3)
                    {
                      v32 = 0;
                      v27 = 1;
LABEL_151:
                      lazy protocol witness table accessor for type JSONError and conformance JSONError();
                      swift_allocError();
                      *v81 = 0xD000000000000010;
                      *(v81 + 8) = 0x8000000181481B20;
                      *(v81 + 16) = 45;
                      *(v81 + 24) = v27;
                      *(v81 + 32) = v32;
                      *(v81 + 40) = v23;
                      *(v81 + 48) = 1;
                      return swift_willThrow();
                    }

                    v25 = a4 + a3;
                    v26 = -a3;
                    v27 = 1;
LABEL_49:
                    while (1)
                    {
                      v28 = 0;
                      v29 = 0;
                      v30 = v25 - a3;
                      while (1)
                      {
                        if ((v26 + a3 + v29) < 0 || (v30 + v28) < 1)
                        {
                          __break(1u);
LABEL_270:
                          __break(1u);
                          goto LABEL_271;
                        }

                        v31 = *(a3 + v29);
                        if (v31 == 10)
                        {
                          v34 = __OFADD__(v27++, 1);
                          if (v34)
                          {
                            goto LABEL_288;
                          }

                          a3 += v29 + 1;
                          if (a3 >= v24)
                          {
                            goto LABEL_67;
                          }

                          goto LABEL_49;
                        }

                        if (v31 == 13)
                        {
                          break;
                        }

                        v32 = v29 + 1;
                        if (__OFADD__(v29, 1))
                        {
                          goto LABEL_270;
                        }

                        ++v29;
                        --v28;
                        if (a3 + v29 >= v24)
                        {
                          goto LABEL_151;
                        }
                      }

                      v33 = a3 + v29;
                      if (a3 + v29 + 1 > __s1)
                      {
                        goto LABEL_62;
                      }

                      if (((v26 + a3 + v29 + 1) & 0x8000000000000000) != 0 || (~v29 + v30) < 1)
                      {
                        goto LABEL_294;
                      }

                      if (*(v33 + 1) == 10)
                      {
                        v33 = a3 + v29 + 1;
                      }

LABEL_62:
                      v34 = __OFADD__(v27++, 1);
                      if (v34)
                      {
                        goto LABEL_289;
                      }

                      a3 = v33 + 1;
                      if (v33 + 1 >= v24)
                      {
LABEL_67:
                        v32 = 0;
                        goto LABEL_151;
                      }
                    }
                  }
                }

                goto LABEL_284;
              }

              v16 = (__s1 + 1);
              v22 = __s1[1];
              if (v22 != 48)
              {
                if ((v22 - 58) < 0xFFFFFFF7)
                {
                  v48 = v16 - a3;
                  if (v16 >= a3)
                  {
                    v49 = a3 + a4;
                    if (a3 + a4 >= v16)
                    {
                      if (v49 >= (__s1 + 2))
                      {
                        v49 = (__s1 + 2);
                      }

                      if (v49 > a3)
                      {
                        v50 = a4 + a3;
                        v51 = -a3;
                        v52 = 1;
                        while (2)
                        {
                          v53 = 0;
                          v54 = 0;
                          v55 = v50 - a3;
                          while (1)
                          {
                            if ((v51 + a3 + v54) < 0 || (v55 + v53) < 1)
                            {
                              goto LABEL_275;
                            }

                            v56 = *(a3 + v54);
                            if (v56 == 10)
                            {
                              break;
                            }

                            if (v56 == 13)
                            {
                              v58 = a3 + v54;
                              if (a3 + v54 <= __s1)
                              {
                                if (((v51 + a3 + v54 + 1) & 0x8000000000000000) != 0 || (~v54 + v55) < 1)
                                {
                                  goto LABEL_300;
                                }

                                if (*(v58 + 1) == 10)
                                {
                                  ++v58;
                                }
                              }

                              v34 = __OFADD__(v52++, 1);
                              if (v34)
                              {
                                goto LABEL_298;
                              }

                              a3 = v58 + 1;
                              goto LABEL_107;
                            }

                            v57 = v54 + 1;
                            if (__OFADD__(v54, 1))
                            {
                              goto LABEL_277;
                            }

                            ++v54;
                            --v53;
                            if (a3 + v54 >= v49)
                            {
                              goto LABEL_249;
                            }
                          }

                          v34 = __OFADD__(v52++, 1);
                          if (v34)
                          {
                            goto LABEL_297;
                          }

                          a3 += v54 + 1;
LABEL_107:
                          if (a3 < v49)
                          {
                            continue;
                          }

                          break;
                        }

                        v57 = 0;
                        goto LABEL_249;
                      }

                      v57 = 0;
                      v52 = 1;
LABEL_249:
                      lazy protocol witness table accessor for type JSONError and conformance JSONError();
                      swift_allocError();
                      *v160 = 0xD000000000000013;
                      *(v160 + 8) = 0x8000000181481F30;
                      *(v160 + 16) = v22;
                      *(v160 + 24) = v52;
                      *(v160 + 32) = v57;
                      *(v160 + 40) = v48;
                      *(v160 + 48) = 1;
                      return swift_willThrow();
                    }
                  }

                  goto LABEL_293;
                }

                goto LABEL_109;
              }

              if (a2 == 2 || (v15 = __s1[2], (v15 - 46) <= 0x37) && ((1 << (v15 - 46)) & 0x80000000800001) != 0)
              {
LABEL_109:
                if (a6)
                {
                  v59 = v16 + 1;
                  if (v16 + 1 < &__s1[a2])
                  {
                    v60 = 0;
                    while (1)
                    {
                      v15 = *(v59 + v60);
                      if ((v15 | 0x20) == 0x65)
                      {
                        break;
                      }

                      if (&__s1[a2 + ~v16] == ++v60)
                      {
                        goto LABEL_122;
                      }
                    }

                    v14 = v59 + v60;
                    if (*(v14 - 1) - 58 <= 0xFFFFFFF5)
                    {
                      if (((v16 - __s1 + v60 + 1) & 0x8000000000000000) == 0 && &__s1[a2 + ~v16 - v60] >= 1)
                      {
                        goto LABEL_118;
                      }

                      goto LABEL_287;
                    }
                  }
                }

LABEL_122:
                v67 = &__s1[a2];
                v68 = &__s1[a2 - 1];
                v11 = *v68;
                if ((v11 - 58) <= 0xFFFFFFF5)
                {
                  v16 = &v68[-a3];
                  if (v68 >= a3 && a3 + a4 >= v68)
                  {
                    if (a3 + a4 < v67)
                    {
                      v67 = (a3 + a4);
                    }

                    if (v67 > a3)
                    {
                      v69 = a4 + a3;
                      v70 = -a3;
                      v71 = 1;
                      while (2)
                      {
                        v72 = 0;
                        v73 = 0;
                        v74 = v69 - a3;
                        while (1)
                        {
                          if ((v70 + a3 + v73) < 0 || (v74 + v72) < 1)
                          {
                            __break(1u);
                            goto LABEL_264;
                          }

                          v75 = *(a3 + v73);
                          if (v75 == 10)
                          {
                            v34 = __OFADD__(v71++, 1);
                            if (v34)
                            {
                              goto LABEL_282;
                            }

                            a3 += v73 + 1;
                            goto LABEL_146;
                          }

                          if (v75 == 13)
                          {
                            break;
                          }

                          v76 = v73 + 1;
                          if (__OFADD__(v73, 1))
                          {
                            __break(1u);
                            goto LABEL_266;
                          }

                          ++v73;
                          --v72;
                          if (a3 + v73 >= v67)
                          {
                            goto LABEL_236;
                          }
                        }

                        v77 = a3 + v73;
                        if (v68 >= a3 + v73 + 1)
                        {
                          if (((v70 + a3 + v73 + 1) & 0x8000000000000000) != 0 || (~v73 + v74) < 1)
                          {
                            goto LABEL_286;
                          }

                          if (*(v77 + 1) == 10)
                          {
                            v77 = a3 + v73 + 1;
                          }
                        }

                        v34 = __OFADD__(v71++, 1);
                        if (v34)
                        {
                          goto LABEL_283;
                        }

                        a3 = v77 + 1;
LABEL_146:
                        if (a3 < v67)
                        {
                          continue;
                        }

                        goto LABEL_234;
                      }
                    }

                    goto LABEL_235;
                  }

                  goto LABEL_278;
                }

                v42 = a5;
                v44 = a4;
                v45 = a3;
                v78 = __s1;
                v79 = a2;
                __s1 = a10();
                if ((v80 & 1) == 0)
                {
                  return __s1;
                }

LABEL_244:
                __s1 = a9(v42 & 1, v78, v79, v45, v44, v16);
                if (v10)
                {
                  return v153;
                }

                return __s1;
              }

LABEL_253:
              v20 = v15 - 58;
              v21 = (__s1 + 2);
              goto LABEL_71;
            }

            goto LABEL_272;
          }

          v173 = a8;
          v174 = a7;
          v42 = a5;
          v43 = a2;
          v44 = a4;
          v46 = __s1;
          v45 = a3;
          v47 = *v16;
          goto LABEL_192;
        }

        v16 = __s1;
        if (v15 != 101)
        {
          if (v15 == 88)
          {
            goto LABEL_12;
          }

LABEL_70:
          v20 = v15 - 58;
          v21 = &__s1[v12];
          goto LABEL_71;
        }
      }

LABEL_209:
      v139 = &__s1[a2];
      v140 = &__s1[a2 - 1];
      v11 = *v140;
      if ((v11 | 0x20) == 0x65)
      {
        v16 = &v140[-a3];
        if (v140 >= a3 && a3 + a4 >= v140)
        {
          if (a3 + a4 < v139)
          {
            v139 = a3 + a4;
          }

          if (v139 > a3)
          {
            v141 = a4 + a3;
            v142 = -a3;
            v71 = 1;
LABEL_216:
            while (2)
            {
              v143 = 0;
              v144 = 0;
              v145 = v141 - a3;
              while (1)
              {
                if ((v142 + a3 + v144) < 0 || (v145 + v143) < 1)
                {
                  __break(1u);
LABEL_255:
                  __break(1u);
                  goto LABEL_256;
                }

                v146 = *(a3 + v144);
                if (v146 == 10)
                {
                  v34 = __OFADD__(v71++, 1);
                  if (v34)
                  {
                    goto LABEL_280;
                  }

                  a3 += v144 + 1;
                  if (a3 < v139)
                  {
                    goto LABEL_216;
                  }

                  goto LABEL_234;
                }

                if (v146 == 13)
                {
                  break;
                }

                v76 = v144 + 1;
                if (__OFADD__(v144, 1))
                {
                  goto LABEL_255;
                }

                ++v144;
                --v143;
                if (a3 + v144 >= v139)
                {
                  goto LABEL_236;
                }
              }

              v147 = a3 + v144;
              if (v140 >= a3 + v144 + 1)
              {
                if (((v142 + a3 + v144 + 1) & 0x8000000000000000) != 0 || (~v144 + v145) < 1)
                {
                  goto LABEL_285;
                }

                if (*(v147 + 1) == 10)
                {
                  v147 = a3 + v144 + 1;
                }
              }

              v34 = __OFADD__(v71++, 1);
              if (v34)
              {
                goto LABEL_281;
              }

              a3 = v147 + 1;
              if (v147 + 1 < v139)
              {
                continue;
              }

              break;
            }

LABEL_234:
            v76 = 0;
LABEL_236:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v148 = 0xD000000000000010;
            *(v148 + 8) = 0x8000000181481B20;
            *(v148 + 16) = v11;
            *(v148 + 24) = v71;
            *(v148 + 32) = v76;
            *(v148 + 40) = v16;
            *(v148 + 48) = 1;
            return swift_willThrow();
          }

LABEL_235:
          v76 = 0;
          v71 = 1;
          goto LABEL_236;
        }

        goto LABEL_276;
      }

      v42 = a5;
      v44 = a4;
      v45 = a3;
      v119 = 0;
LABEL_238:
      v78 = __s1;
      v79 = a2;
      __s1 = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v119, a7, a8);
      if ((v149 & 1) == 0)
      {
        return __s1;
      }

      if (v13)
      {
        v150 = static String._fromUTF8Repairing(_:)();
        v152 = v151;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = v150;
        *(v40 + 8) = v152;
        *(v40 + 16) = 0u;
        *(v40 + 32) = 0u;
        v66 = 11;
        goto LABEL_241;
      }

      goto LABEL_244;
    }

    goto LABEL_207;
  }

  if ((v11 - 58) >= 0xFFFFFFF7)
  {
    goto LABEL_207;
  }

  if (*__s1 <= 0x2Du)
  {
    if (v11 != 43 && v11 != 45)
    {
      goto LABEL_291;
    }

    if (a2 < 2)
    {
      if (a2 != 1)
      {
LABEL_290:
        __break(1u);
        goto LABEL_291;
      }

      v16 = &__s1[-a3];
      if (__s1 < a3)
      {
        goto LABEL_292;
      }

      v82 = a3 + a4;
      if (a3 + a4 < __s1)
      {
        goto LABEL_292;
      }

      if (v82 >= (__s1 + 1))
      {
        v82 = (__s1 + 1);
      }

      if (v82 > a3)
      {
        v83 = a4 + a3;
        v84 = -a3;
        v71 = 1;
        while (2)
        {
          v85 = 0;
          v86 = 0;
          v87 = v83 - a3;
          while (1)
          {
            if ((v84 + a3 + v86) < 0 || (v87 + v85) < 1)
            {
              goto LABEL_273;
            }

            v88 = *(a3 + v86);
            if (v88 == 10)
            {
              break;
            }

            if (v88 == 13)
            {
              v89 = a3 + v86;
              if (a3 + v86 + 1 <= __s1)
              {
                if (((v84 + a3 + v86 + 1) & 0x8000000000000000) != 0 || (~v86 + v87) < 1)
                {
                  goto LABEL_299;
                }

                if (*(v89 + 1) == 10)
                {
                  v89 = a3 + v86 + 1;
                }
              }

              v34 = __OFADD__(v71++, 1);
              if (v34)
              {
                goto LABEL_296;
              }

              a3 = v89 + 1;
              goto LABEL_177;
            }

            v76 = v86 + 1;
            if (__OFADD__(v86, 1))
            {
              goto LABEL_274;
            }

            ++v86;
            --v85;
            if (a3 + v86 >= v82)
            {
              goto LABEL_236;
            }
          }

          v34 = __OFADD__(v71++, 1);
          if (v34)
          {
            goto LABEL_295;
          }

          a3 += v86 + 1;
LABEL_177:
          if (a3 < v82)
          {
            continue;
          }

          goto LABEL_234;
        }
      }

      goto LABEL_235;
    }

    v16 = (__s1 + 1);
    v41 = __s1[1];
    if (v41 == 48)
    {
      if (a2 != 2)
      {
        v13 = 0;
        v15 = __s1[2];
        if (__s1[2] <= 0x57u)
        {
          if (v15 != 46 && v15 != 69)
          {
            goto LABEL_253;
          }

          goto LABEL_209;
        }

        if (v15 != 120)
        {
          if (v15 == 101)
          {
            goto LABEL_209;
          }

          if (v15 != 88)
          {
            goto LABEL_253;
          }
        }

        v173 = a8;
        v174 = a7;
        v42 = a5;
        v43 = a2;
        v44 = a4;
        v45 = a3;
        v46 = __s1;
        v16 = (__s1 + 3);
        v47 = __s1[3];
LABEL_192:
        valid = UInt8.isValidHexDigit.getter(v47);
        v119 = 1;
        if (!valid)
        {
          v154 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v16, v45, v44);
          v156 = v155;
          v158 = v157;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v159 = xmmword_181237560;
          *(v159 + 16) = v47;
          *(v159 + 24) = v154;
          *(v159 + 32) = v156;
          *(v159 + 40) = v158;
          *(v159 + 48) = 1;
          return swift_willThrow();
        }

        v13 = 0;
        __s1 = v46;
        a2 = v43;
        a8 = v173;
        a7 = v174;
        goto LABEL_238;
      }
    }

    else if ((v41 - 58) < 0xFFFFFFF7)
    {
      if (v41 != 46)
      {
        if (v41 == 78)
        {
LABEL_256:
          if (a2 > 3 && __s1[2] == 97 && __s1[3] == 78)
          {
            v13 = 1;
            goto LABEL_209;
          }

LABEL_264:
          v170 = a3;
          v171 = a4;
          v108 = StaticString.description.getter();
          v110 = v172;
          v111 = v16;
          v112 = v170;
          v113 = v171;
LABEL_189:
          v114 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v111, v112, v113);
          v116 = v115;
          v100 = v117;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v40 = v108;
          *(v40 + 8) = v110;
          *(v40 + 16) = v114;
          *(v40 + 24) = v116;
          goto LABEL_190;
        }

        if (v41 != 73)
        {
          v161 = a3;
          v162 = a4;
          v163 = static String._uncheckedFromUTF8(_:)();
          MEMORY[0x1865CB0E0](v163);

          MEMORY[0x1865CB0E0](0x6D756E206E692027, 0xEB00000000726562);
          v164 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v16, v161, v162);
          v166 = v165;
          v168 = v167;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v169 = 0x27207265746661;
          *(v169 + 8) = 0xE700000000000000;
          *(v169 + 16) = v41;
          *(v169 + 24) = v164;
          *(v169 + 32) = v166;
          *(v169 + 40) = v168;
          *(v169 + 48) = 1;
          return swift_willThrow();
        }

        v90 = a4;
        v91 = a3;
        if (a2 > 8)
        {
          v175 = a7;
          v120 = a8;
          v121 = a5;
          v122 = a2;
          v123 = __s1;
          if (!strncmp(__s1 + 1, "Infinity", 8uLL))
          {
            v13 = 1;
            a3 = v91;
            __s1 = v123;
            a4 = v90;
            a2 = v122;
            a5 = v121;
            a8 = v120;
            a7 = v175;
            goto LABEL_209;
          }
        }

LABEL_202:
        v128 = StaticString.description.getter();
        v130 = v129;
        v131 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v16, v91, v90);
        v133 = v132;
        v135 = v134;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = v128;
        *(v40 + 8) = v130;
        *(v40 + 16) = v131;
        *(v40 + 24) = v133;
        *(v40 + 32) = v135;
        goto LABEL_203;
      }

      if (a2 == 2)
      {
        v102 = (__s1 + 2);
        goto LABEL_187;
      }

LABEL_266:
      v15 = __s1[2];
      if ((v15 - 58) <= 0xFFFFFFF5)
      {
        v136 = (__s1 + 2);
        goto LABEL_206;
      }
    }

    v13 = 0;
    goto LABEL_209;
  }

  switch(v11)
  {
    case 'I':
      v90 = a4;
      v91 = a3;
      if (a2 <= 7)
      {
        v92 = __s1;
        v93 = StaticString.description.getter();
        v95 = v94;
        v96 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v92, v91, v90);
        v98 = v97;
        v100 = v99;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = v93;
        *(v40 + 8) = v95;
        *(v40 + 16) = v96;
        *(v40 + 24) = v98;
LABEL_190:
        *(v40 + 32) = v100;
LABEL_203:
        *(v40 + 40) = 0;
        v66 = 5;
        goto LABEL_241;
      }

      v124 = a7;
      v125 = a8;
      v126 = a5;
      v127 = a2;
      v16 = __s1;
      if (!strncmp(__s1, "Infinity", 8uLL))
      {
        v13 = 1;
        __s1 = v16;
        a3 = v91;
        a4 = v90;
        a2 = v127;
        a5 = v126;
        a8 = v125;
        a7 = v124;
        goto LABEL_209;
      }

      goto LABEL_202;
    case 'N':
      if (a2 >= 3 && __s1[1] == 97 && __s1[2] == 78)
      {
        v13 = 1;
LABEL_208:
        v16 = __s1;
        goto LABEL_209;
      }

      v105 = __s1;
      v106 = a3;
      v107 = a4;
      v108 = StaticString.description.getter();
      v110 = v109;
      v111 = v105;
      v112 = v106;
      v113 = v107;
      goto LABEL_189;
    case '.':
      if (a2 >= 1)
      {
        v101 = 1;
      }

      else
      {
        v101 = a2;
      }

      if (a2 < 2)
      {
        v102 = &__s1[v101];
LABEL_187:
        v61 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v102, a3, a4);
        v63 = v103;
        v65 = v104;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = 0;
        *(v40 + 8) = 0;
        *(v40 + 16) = 46;
        goto LABEL_120;
      }

      v15 = __s1[v101];
      if ((v15 - 58) <= 0xFFFFFFF5)
      {
        v136 = &__s1[v101];
LABEL_206:
        v61 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v136, a3, a4);
        v63 = v137;
        v65 = v138;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = 0xD000000000000013;
        *(v40 + 8) = 0x8000000181481B40;
        goto LABEL_119;
      }

LABEL_207:
      v13 = 0;
      goto LABEL_208;
  }

LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
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
  return __s1;
}

{
  if ((a5 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
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
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  v11 = *__s1;
  if (v11 == 48)
  {
    if (a2 >= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a2;
    }

    if (a2 >= 2)
    {
      v13 = 0;
      v14 = &__s1[v12];
      v15 = __s1[v12];
      if (__s1[v12] <= 0x57u)
      {
        v16 = __s1;
        if (v15 != 46 && v15 != 69)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v15 == 120)
        {
LABEL_12:
          v16 = v14 + 1;
          if (&__s1[a2] < v14 + 1)
          {
            if (a2 - v12 >= 1)
            {
LABEL_118:
              v61 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v14, a3, a4);
              v63 = v62;
              v65 = v64;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v40 = xmmword_181237560;
LABEL_119:
              *(v40 + 16) = v15;
LABEL_120:
              *(v40 + 24) = v61;
              *(v40 + 32) = v63;
              *(v40 + 40) = v65;
              goto LABEL_121;
            }

            __break(1u);
LABEL_15:
            if (a2)
            {
              v17 = *__s1;
              if (v17 == 48)
              {
                if (a2 >= 1)
                {
                  v18 = 1;
                }

                else
                {
                  v18 = a2;
                }

                v16 = __s1;
                if (a2 < 2)
                {
                  goto LABEL_109;
                }

                v15 = __s1[v18];
                v19 = (v15 - 46) > 0x37 || ((1 << (v15 - 46)) & 0x80000000800001) == 0;
                v16 = __s1;
                if (!v19)
                {
                  goto LABEL_109;
                }

                v20 = v15 - 58;
                v21 = &__s1[v18];
LABEL_71:
                v35 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v21, a3, a4);
                v37 = v36;
                v39 = v38;
                if (v20 > 0xFFFFFFF5)
                {
                  lazy protocol witness table accessor for type JSONError and conformance JSONError();
                  swift_allocError();
                  *v40 = v35;
                  *(v40 + 8) = v37;
                  *(v40 + 16) = v39;
                  *(v40 + 24) = 0;
                  *(v40 + 32) = 0;
                  *(v40 + 40) = 0;
                  v66 = 10;
                  goto LABEL_241;
                }

                lazy protocol witness table accessor for type JSONError and conformance JSONError();
                swift_allocError();
                *v40 = xmmword_181237560;
                *(v40 + 16) = v15;
                *(v40 + 24) = v35;
                *(v40 + 32) = v37;
                *(v40 + 40) = v39;
LABEL_121:
                v66 = 1;
LABEL_241:
                *(v40 + 48) = v66;
                return swift_willThrow();
              }

              v16 = __s1;
              if ((v17 - 58) >= 0xFFFFFFF7)
              {
                goto LABEL_109;
              }

              if (v17 != 45)
              {
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
                goto LABEL_290;
              }

              if (a2 < 2)
              {
                v23 = &__s1[-a3];
                if (__s1 >= a3)
                {
                  v24 = a3 + a4;
                  if (a3 + a4 >= __s1)
                  {
                    if (v24 >= (__s1 + 1))
                    {
                      v24 = (__s1 + 1);
                    }

                    if (v24 <= a3)
                    {
                      v32 = 0;
                      v27 = 1;
LABEL_151:
                      lazy protocol witness table accessor for type JSONError and conformance JSONError();
                      swift_allocError();
                      *v81 = 0xD000000000000010;
                      *(v81 + 8) = 0x8000000181481B20;
                      *(v81 + 16) = 45;
                      *(v81 + 24) = v27;
                      *(v81 + 32) = v32;
                      *(v81 + 40) = v23;
                      *(v81 + 48) = 1;
                      return swift_willThrow();
                    }

                    v25 = a4 + a3;
                    v26 = -a3;
                    v27 = 1;
LABEL_49:
                    while (1)
                    {
                      v28 = 0;
                      v29 = 0;
                      v30 = v25 - a3;
                      while (1)
                      {
                        if ((v26 + a3 + v29) < 0 || (v30 + v28) < 1)
                        {
                          __break(1u);
LABEL_270:
                          __break(1u);
                          goto LABEL_271;
                        }

                        v31 = *(a3 + v29);
                        if (v31 == 10)
                        {
                          v34 = __OFADD__(v27++, 1);
                          if (v34)
                          {
                            goto LABEL_288;
                          }

                          a3 += v29 + 1;
                          if (a3 >= v24)
                          {
                            goto LABEL_67;
                          }

                          goto LABEL_49;
                        }

                        if (v31 == 13)
                        {
                          break;
                        }

                        v32 = v29 + 1;
                        if (__OFADD__(v29, 1))
                        {
                          goto LABEL_270;
                        }

                        ++v29;
                        --v28;
                        if (a3 + v29 >= v24)
                        {
                          goto LABEL_151;
                        }
                      }

                      v33 = a3 + v29;
                      if (a3 + v29 + 1 > __s1)
                      {
                        goto LABEL_62;
                      }

                      if (((v26 + a3 + v29 + 1) & 0x8000000000000000) != 0 || (~v29 + v30) < 1)
                      {
                        goto LABEL_294;
                      }

                      if (*(v33 + 1) == 10)
                      {
                        v33 = a3 + v29 + 1;
                      }

LABEL_62:
                      v34 = __OFADD__(v27++, 1);
                      if (v34)
                      {
                        goto LABEL_289;
                      }

                      a3 = v33 + 1;
                      if (v33 + 1 >= v24)
                      {
LABEL_67:
                        v32 = 0;
                        goto LABEL_151;
                      }
                    }
                  }
                }

                goto LABEL_284;
              }

              v16 = (__s1 + 1);
              v22 = __s1[1];
              if (v22 != 48)
              {
                if ((v22 - 58) < 0xFFFFFFF7)
                {
                  v48 = v16 - a3;
                  if (v16 >= a3)
                  {
                    v49 = a3 + a4;
                    if (a3 + a4 >= v16)
                    {
                      if (v49 >= (__s1 + 2))
                      {
                        v49 = (__s1 + 2);
                      }

                      if (v49 > a3)
                      {
                        v50 = a4 + a3;
                        v51 = -a3;
                        v52 = 1;
                        while (2)
                        {
                          v53 = 0;
                          v54 = 0;
                          v55 = v50 - a3;
                          while (1)
                          {
                            if ((v51 + a3 + v54) < 0 || (v55 + v53) < 1)
                            {
                              goto LABEL_275;
                            }

                            v56 = *(a3 + v54);
                            if (v56 == 10)
                            {
                              break;
                            }

                            if (v56 == 13)
                            {
                              v58 = a3 + v54;
                              if (a3 + v54 <= __s1)
                              {
                                if (((v51 + a3 + v54 + 1) & 0x8000000000000000) != 0 || (~v54 + v55) < 1)
                                {
                                  goto LABEL_300;
                                }

                                if (*(v58 + 1) == 10)
                                {
                                  ++v58;
                                }
                              }

                              v34 = __OFADD__(v52++, 1);
                              if (v34)
                              {
                                goto LABEL_298;
                              }

                              a3 = v58 + 1;
                              goto LABEL_107;
                            }

                            v57 = v54 + 1;
                            if (__OFADD__(v54, 1))
                            {
                              goto LABEL_277;
                            }

                            ++v54;
                            --v53;
                            if (a3 + v54 >= v49)
                            {
                              goto LABEL_249;
                            }
                          }

                          v34 = __OFADD__(v52++, 1);
                          if (v34)
                          {
                            goto LABEL_297;
                          }

                          a3 += v54 + 1;
LABEL_107:
                          if (a3 < v49)
                          {
                            continue;
                          }

                          break;
                        }

                        v57 = 0;
                        goto LABEL_249;
                      }

                      v57 = 0;
                      v52 = 1;
LABEL_249:
                      lazy protocol witness table accessor for type JSONError and conformance JSONError();
                      swift_allocError();
                      *v160 = 0xD000000000000013;
                      *(v160 + 8) = 0x8000000181481F30;
                      *(v160 + 16) = v22;
                      *(v160 + 24) = v52;
                      *(v160 + 32) = v57;
                      *(v160 + 40) = v48;
                      *(v160 + 48) = 1;
                      return swift_willThrow();
                    }
                  }

                  goto LABEL_293;
                }

                goto LABEL_109;
              }

              if (a2 == 2 || (v15 = __s1[2], (v15 - 46) <= 0x37) && ((1 << (v15 - 46)) & 0x80000000800001) != 0)
              {
LABEL_109:
                if (a6)
                {
                  v59 = v16 + 1;
                  if (v16 + 1 < &__s1[a2])
                  {
                    v60 = 0;
                    while (1)
                    {
                      v15 = *(v59 + v60);
                      if ((v15 | 0x20) == 0x65)
                      {
                        break;
                      }

                      if (&__s1[a2 + ~v16] == ++v60)
                      {
                        goto LABEL_122;
                      }
                    }

                    v14 = v59 + v60;
                    if (*(v14 - 1) - 58 <= 0xFFFFFFF5)
                    {
                      if (((v16 - __s1 + v60 + 1) & 0x8000000000000000) == 0 && &__s1[a2 + ~v16 - v60] >= 1)
                      {
                        goto LABEL_118;
                      }

                      goto LABEL_287;
                    }
                  }
                }

LABEL_122:
                v67 = &__s1[a2];
                v68 = &__s1[a2 - 1];
                v11 = *v68;
                if ((v11 - 58) <= 0xFFFFFFF5)
                {
                  v16 = &v68[-a3];
                  if (v68 >= a3 && a3 + a4 >= v68)
                  {
                    if (a3 + a4 < v67)
                    {
                      v67 = (a3 + a4);
                    }

                    if (v67 > a3)
                    {
                      v69 = a4 + a3;
                      v70 = -a3;
                      v71 = 1;
                      while (2)
                      {
                        v72 = 0;
                        v73 = 0;
                        v74 = v69 - a3;
                        while (1)
                        {
                          if ((v70 + a3 + v73) < 0 || (v74 + v72) < 1)
                          {
                            __break(1u);
                            goto LABEL_264;
                          }

                          v75 = *(a3 + v73);
                          if (v75 == 10)
                          {
                            v34 = __OFADD__(v71++, 1);
                            if (v34)
                            {
                              goto LABEL_282;
                            }

                            a3 += v73 + 1;
                            goto LABEL_146;
                          }

                          if (v75 == 13)
                          {
                            break;
                          }

                          v76 = v73 + 1;
                          if (__OFADD__(v73, 1))
                          {
                            __break(1u);
                            goto LABEL_266;
                          }

                          ++v73;
                          --v72;
                          if (a3 + v73 >= v67)
                          {
                            goto LABEL_236;
                          }
                        }

                        v77 = a3 + v73;
                        if (v68 >= a3 + v73 + 1)
                        {
                          if (((v70 + a3 + v73 + 1) & 0x8000000000000000) != 0 || (~v73 + v74) < 1)
                          {
                            goto LABEL_286;
                          }

                          if (*(v77 + 1) == 10)
                          {
                            v77 = a3 + v73 + 1;
                          }
                        }

                        v34 = __OFADD__(v71++, 1);
                        if (v34)
                        {
                          goto LABEL_283;
                        }

                        a3 = v77 + 1;
LABEL_146:
                        if (a3 < v67)
                        {
                          continue;
                        }

                        goto LABEL_234;
                      }
                    }

                    goto LABEL_235;
                  }

                  goto LABEL_278;
                }

                v42 = a5;
                v44 = a4;
                v45 = a3;
                v78 = __s1;
                v79 = a2;
                __s1 = a10();
                if ((v80 & 1) == 0)
                {
                  return __s1;
                }

LABEL_244:
                __s1 = a9(v42 & 1, v78, v79, v45, v44, v16);
                if (v10)
                {
                  return v153;
                }

                return __s1;
              }

LABEL_253:
              v20 = v15 - 58;
              v21 = (__s1 + 2);
              goto LABEL_71;
            }

            goto LABEL_272;
          }

          v173 = a8;
          v174 = a7;
          v42 = a5;
          v43 = a2;
          v44 = a4;
          v46 = __s1;
          v45 = a3;
          v47 = *v16;
          goto LABEL_192;
        }

        v16 = __s1;
        if (v15 != 101)
        {
          if (v15 == 88)
          {
            goto LABEL_12;
          }

LABEL_70:
          v20 = v15 - 58;
          v21 = &__s1[v12];
          goto LABEL_71;
        }
      }

LABEL_209:
      v139 = &__s1[a2];
      v140 = &__s1[a2 - 1];
      v11 = *v140;
      if ((v11 | 0x20) == 0x65)
      {
        v16 = &v140[-a3];
        if (v140 >= a3 && a3 + a4 >= v140)
        {
          if (a3 + a4 < v139)
          {
            v139 = a3 + a4;
          }

          if (v139 > a3)
          {
            v141 = a4 + a3;
            v142 = -a3;
            v71 = 1;
LABEL_216:
            while (2)
            {
              v143 = 0;
              v144 = 0;
              v145 = v141 - a3;
              while (1)
              {
                if ((v142 + a3 + v144) < 0 || (v145 + v143) < 1)
                {
                  __break(1u);
LABEL_255:
                  __break(1u);
                  goto LABEL_256;
                }

                v146 = *(a3 + v144);
                if (v146 == 10)
                {
                  v34 = __OFADD__(v71++, 1);
                  if (v34)
                  {
                    goto LABEL_280;
                  }

                  a3 += v144 + 1;
                  if (a3 < v139)
                  {
                    goto LABEL_216;
                  }

                  goto LABEL_234;
                }

                if (v146 == 13)
                {
                  break;
                }

                v76 = v144 + 1;
                if (__OFADD__(v144, 1))
                {
                  goto LABEL_255;
                }

                ++v144;
                --v143;
                if (a3 + v144 >= v139)
                {
                  goto LABEL_236;
                }
              }

              v147 = a3 + v144;
              if (v140 >= a3 + v144 + 1)
              {
                if (((v142 + a3 + v144 + 1) & 0x8000000000000000) != 0 || (~v144 + v145) < 1)
                {
                  goto LABEL_285;
                }

                if (*(v147 + 1) == 10)
                {
                  v147 = a3 + v144 + 1;
                }
              }

              v34 = __OFADD__(v71++, 1);
              if (v34)
              {
                goto LABEL_281;
              }

              a3 = v147 + 1;
              if (v147 + 1 < v139)
              {
                continue;
              }

              break;
            }

LABEL_234:
            v76 = 0;
LABEL_236:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v148 = 0xD000000000000010;
            *(v148 + 8) = 0x8000000181481B20;
            *(v148 + 16) = v11;
            *(v148 + 24) = v71;
            *(v148 + 32) = v76;
            *(v148 + 40) = v16;
            *(v148 + 48) = 1;
            return swift_willThrow();
          }

LABEL_235:
          v76 = 0;
          v71 = 1;
          goto LABEL_236;
        }

        goto LABEL_276;
      }

      v42 = a5;
      v44 = a4;
      v45 = a3;
      v119 = 0;
LABEL_238:
      v78 = __s1;
      v79 = a2;
      __s1 = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, v119, a7, a8);
      if ((v149 & 1) == 0)
      {
        return __s1;
      }

      if (v13)
      {
        v150 = static String._fromUTF8Repairing(_:)();
        v152 = v151;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = v150;
        *(v40 + 8) = v152;
        *(v40 + 16) = 0u;
        *(v40 + 32) = 0u;
        v66 = 11;
        goto LABEL_241;
      }

      goto LABEL_244;
    }

    goto LABEL_207;
  }

  if ((v11 - 58) >= 0xFFFFFFF7)
  {
    goto LABEL_207;
  }

  if (*__s1 <= 0x2Du)
  {
    if (v11 != 43 && v11 != 45)
    {
      goto LABEL_291;
    }

    if (a2 < 2)
    {
      if (a2 != 1)
      {
LABEL_290:
        __break(1u);
        goto LABEL_291;
      }

      v16 = &__s1[-a3];
      if (__s1 < a3)
      {
        goto LABEL_292;
      }

      v82 = a3 + a4;
      if (a3 + a4 < __s1)
      {
        goto LABEL_292;
      }

      if (v82 >= (__s1 + 1))
      {
        v82 = (__s1 + 1);
      }

      if (v82 > a3)
      {
        v83 = a4 + a3;
        v84 = -a3;
        v71 = 1;
        while (2)
        {
          v85 = 0;
          v86 = 0;
          v87 = v83 - a3;
          while (1)
          {
            if ((v84 + a3 + v86) < 0 || (v87 + v85) < 1)
            {
              goto LABEL_273;
            }

            v88 = *(a3 + v86);
            if (v88 == 10)
            {
              break;
            }

            if (v88 == 13)
            {
              v89 = a3 + v86;
              if (a3 + v86 + 1 <= __s1)
              {
                if (((v84 + a3 + v86 + 1) & 0x8000000000000000) != 0 || (~v86 + v87) < 1)
                {
                  goto LABEL_299;
                }

                if (*(v89 + 1) == 10)
                {
                  v89 = a3 + v86 + 1;
                }
              }

              v34 = __OFADD__(v71++, 1);
              if (v34)
              {
                goto LABEL_296;
              }

              a3 = v89 + 1;
              goto LABEL_177;
            }

            v76 = v86 + 1;
            if (__OFADD__(v86, 1))
            {
              goto LABEL_274;
            }

            ++v86;
            --v85;
            if (a3 + v86 >= v82)
            {
              goto LABEL_236;
            }
          }

          v34 = __OFADD__(v71++, 1);
          if (v34)
          {
            goto LABEL_295;
          }

          a3 += v86 + 1;
LABEL_177:
          if (a3 < v82)
          {
            continue;
          }

          goto LABEL_234;
        }
      }

      goto LABEL_235;
    }

    v16 = (__s1 + 1);
    v41 = __s1[1];
    if (v41 == 48)
    {
      if (a2 != 2)
      {
        v13 = 0;
        v15 = __s1[2];
        if (__s1[2] <= 0x57u)
        {
          if (v15 != 46 && v15 != 69)
          {
            goto LABEL_253;
          }

          goto LABEL_209;
        }

        if (v15 != 120)
        {
          if (v15 == 101)
          {
            goto LABEL_209;
          }

          if (v15 != 88)
          {
            goto LABEL_253;
          }
        }

        v173 = a8;
        v174 = a7;
        v42 = a5;
        v43 = a2;
        v44 = a4;
        v45 = a3;
        v46 = __s1;
        v16 = (__s1 + 3);
        v47 = __s1[3];
LABEL_192:
        valid = UInt8.isValidHexDigit.getter(v47);
        v119 = 1;
        if (!valid)
        {
          v154 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v16, v45, v44);
          v156 = v155;
          v158 = v157;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v159 = xmmword_181237560;
          *(v159 + 16) = v47;
          *(v159 + 24) = v154;
          *(v159 + 32) = v156;
          *(v159 + 40) = v158;
          *(v159 + 48) = 1;
          return swift_willThrow();
        }

        v13 = 0;
        __s1 = v46;
        a2 = v43;
        a8 = v173;
        a7 = v174;
        goto LABEL_238;
      }
    }

    else if ((v41 - 58) < 0xFFFFFFF7)
    {
      if (v41 != 46)
      {
        if (v41 == 78)
        {
LABEL_256:
          if (a2 > 3 && __s1[2] == 97 && __s1[3] == 78)
          {
            v13 = 1;
            goto LABEL_209;
          }

LABEL_264:
          v170 = a3;
          v171 = a4;
          v108 = StaticString.description.getter();
          v110 = v172;
          v111 = v16;
          v112 = v170;
          v113 = v171;
LABEL_189:
          v114 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v111, v112, v113);
          v116 = v115;
          v100 = v117;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v40 = v108;
          *(v40 + 8) = v110;
          *(v40 + 16) = v114;
          *(v40 + 24) = v116;
          goto LABEL_190;
        }

        if (v41 != 73)
        {
          v161 = a3;
          v162 = a4;
          v163 = static String._uncheckedFromUTF8(_:)();
          MEMORY[0x1865CB0E0](v163);

          MEMORY[0x1865CB0E0](0x6D756E206E692027, 0xEB00000000726562);
          v164 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v16, v161, v162);
          v166 = v165;
          v168 = v167;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v169 = 0x27207265746661;
          *(v169 + 8) = 0xE700000000000000;
          *(v169 + 16) = v41;
          *(v169 + 24) = v164;
          *(v169 + 32) = v166;
          *(v169 + 40) = v168;
          *(v169 + 48) = 1;
          return swift_willThrow();
        }

        v90 = a4;
        v91 = a3;
        if (a2 > 8)
        {
          v175 = a7;
          v120 = a8;
          v121 = a5;
          v122 = a2;
          v123 = __s1;
          if (!strncmp(__s1 + 1, "Infinity", 8uLL))
          {
            v13 = 1;
            a3 = v91;
            __s1 = v123;
            a4 = v90;
            a2 = v122;
            a5 = v121;
            a8 = v120;
            a7 = v175;
            goto LABEL_209;
          }
        }

LABEL_202:
        v128 = StaticString.description.getter();
        v130 = v129;
        v131 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v16, v91, v90);
        v133 = v132;
        v135 = v134;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = v128;
        *(v40 + 8) = v130;
        *(v40 + 16) = v131;
        *(v40 + 24) = v133;
        *(v40 + 32) = v135;
        goto LABEL_203;
      }

      if (a2 == 2)
      {
        v102 = (__s1 + 2);
        goto LABEL_187;
      }

LABEL_266:
      v15 = __s1[2];
      if ((v15 - 58) <= 0xFFFFFFF5)
      {
        v136 = (__s1 + 2);
        goto LABEL_206;
      }
    }

    v13 = 0;
    goto LABEL_209;
  }

  switch(v11)
  {
    case 'I':
      v90 = a4;
      v91 = a3;
      if (a2 <= 7)
      {
        v92 = __s1;
        v93 = StaticString.description.getter();
        v95 = v94;
        v96 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v92, v91, v90);
        v98 = v97;
        v100 = v99;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = v93;
        *(v40 + 8) = v95;
        *(v40 + 16) = v96;
        *(v40 + 24) = v98;
LABEL_190:
        *(v40 + 32) = v100;
LABEL_203:
        *(v40 + 40) = 0;
        v66 = 5;
        goto LABEL_241;
      }

      v124 = a7;
      v125 = a8;
      v126 = a5;
      v127 = a2;
      v16 = __s1;
      if (!strncmp(__s1, "Infinity", 8uLL))
      {
        v13 = 1;
        __s1 = v16;
        a3 = v91;
        a4 = v90;
        a2 = v127;
        a5 = v126;
        a8 = v125;
        a7 = v124;
        goto LABEL_209;
      }

      goto LABEL_202;
    case 'N':
      if (a2 >= 3 && __s1[1] == 97 && __s1[2] == 78)
      {
        v13 = 1;
LABEL_208:
        v16 = __s1;
        goto LABEL_209;
      }

      v105 = __s1;
      v106 = a3;
      v107 = a4;
      v108 = StaticString.description.getter();
      v110 = v109;
      v111 = v105;
      v112 = v106;
      v113 = v107;
      goto LABEL_189;
    case '.':
      if (a2 >= 1)
      {
        v101 = 1;
      }

      else
      {
        v101 = a2;
      }

      if (a2 < 2)
      {
        v102 = &__s1[v101];
LABEL_187:
        v61 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v102, a3, a4);
        v63 = v103;
        v65 = v104;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = 0;
        *(v40 + 8) = 0;
        *(v40 + 16) = 46;
        goto LABEL_120;
      }

      v15 = __s1[v101];
      if ((v15 - 58) <= 0xFFFFFFF5)
      {
        v136 = &__s1[v101];
LABEL_206:
        v61 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v136, a3, a4);
        v63 = v137;
        v65 = v138;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v40 = 0xD000000000000013;
        *(v40 + 8) = 0x8000000181481B40;
        goto LABEL_119;
      }

LABEL_207:
      v13 = 0;
      goto LABEL_208;
  }

LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
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
  return __s1;
}

unint64_t specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:)(int a1, const char *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  LOWORD(v9) = v6;
  LODWORD(v15) = a1;
  v139 = *MEMORY[0x1E69E9840];
  v133[0] = 0;
  v16 = _stringshims_strtod_clocale(a2, v133);
  if (v133[0])
  {
    v17 = &a2[a3] == v133[0];
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    goto LABEL_5;
  }

  v19 = v16;
  result = _ss7UInt128V7exactlyABSgx_tcSBRzlufCSd_Tt0g5(v16);
  if (v21)
  {
LABEL_55:
    v38 = static String._fromUTF8Repairing(_:)();
    v40 = v39;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v41 = v38;
    *(v41 + 8) = v40;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0u;
    v42 = 11;
    goto LABEL_225;
  }

  if (fabs(v19) >= 9.00719925e15)
  {
LABEL_5:
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 0x2EuLL, 0xE100000000000000, 1, v135);
      if (v136 != 1)
      {
        a3 = v135[1];
        v7 = v135[2];
        v18 = v135[0];
LABEL_54:
        v133[0] = v18;
        v132 = v18 >> 32;
        v9 = (v18 >> 48);
        v133[1] = a3;
        v134 = v7;
        if (_So9NSDecimala__isNegative_getter(v133))
        {
          goto LABEL_55;
        }

        a6 = HIWORD(a3);
        v8 = HIDWORD(a3);
        a4 = a3 >> 16;
        LODWORD(v15) = v18;
        v133[0] = v18;
        v133[1] = a3;
        v134 = v7;
        v131 = v7 >> 16;
        v43 = _So9NSDecimala__length_getter(v133);
        if (v43)
        {
          v44 = v43 - 1;
          if (v43 != 1)
          {
            v45 = 0;
            v46 = 0;
            v47 = WORD1(v7);
            v48 = v7;
            v49 = a3;
            while (1)
            {
              if (v44 + 1 <= 4)
              {
                v50 = v18 >> 48;
                if (v44 != 1)
                {
                  LOWORD(v50) = a3;
                  if (v44 != 2)
                  {
                    v50 = a3 >> 16;
                    if (v44 != 3)
                    {
LABEL_340:
                      strcpy(v133, "Invalid index ");
                      HIBYTE(v133[1]) = -18;
                      v129 = dispatch thunk of CustomStringConvertible.description.getter();
                      MEMORY[0x1865CB0E0](v129);

                      MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
                      result = _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
                      return result;
                    }
                  }
                }
              }

              else if (v44 + 1 > 6)
              {
                LOWORD(v50) = v7;
                if (v44 != 6)
                {
                  LOWORD(v50) = WORD1(v7);
                  if (v44 != 7)
                  {
                    goto LABEL_340;
                  }
                }
              }

              else
              {
                v50 = HIDWORD(a3);
                if (v44 != 4)
                {
                  v50 = HIWORD(a3);
                  if (v44 != 5)
                  {
                    goto LABEL_340;
                  }
                }
              }

              if (v45)
              {
                goto LABEL_55;
              }

              v51 = (v50 | v46) << 16;
              v45 = HIWORD(v46) != 0;
              v46 = v51;
              if (!--v44)
              {
                goto LABEL_163;
              }
            }
          }

          v51 = 0;
          v45 = 0;
          v47 = WORD1(v7);
          v48 = v7;
          v49 = a3;
LABEL_163:
          if (v45)
          {
            goto LABEL_55;
          }

          v130 = v51 | WORD2(v18);
          goto LABEL_165;
        }

LABEL_312:
        v130 = 0;
        v47 = v131;
        v48 = v7;
        v49 = a3;
LABEL_165:
        LODWORD(v133[0]) = v15;
        WORD2(v133[0]) = v132;
        HIWORD(v133[0]) = v9;
        LOWORD(v133[1]) = v49;
        WORD1(v133[1]) = a4;
        WORD2(v133[1]) = v8;
        HIWORD(v133[1]) = a6;
        LOWORD(v134) = v48;
        HIWORD(v134) = v47;
        v83 = a4;
        v84 = v48;
        v85 = v49;
        if ((_So9NSDecimala__exponent_getter(v133) & 0x80000000) != 0)
        {
          LODWORD(v133[0]) = v15;
          WORD2(v133[0]) = v132;
          HIWORD(v133[0]) = v9;
          LOWORD(v133[1]) = v85;
          WORD1(v133[1]) = v83;
          WORD2(v133[1]) = v8;
          HIWORD(v133[1]) = a6;
          LOWORD(v134) = v84;
          HIWORD(v134) = v131;
          v126 = _So9NSDecimala__exponent_getter(v133);
          if (v126 > 0)
          {
            goto LABEL_326;
          }

          v127 = v126;
          result = v130;
          if (v127)
          {
            if (!__CFADD__(v127, -v127 & ~(-v127 >> 31)))
            {
              goto LABEL_334;
            }

            do
            {
              result /= 0xAuLL;
            }

            while (!__CFADD__(v127++, 1));
          }

          return result;
        }

        LODWORD(v133[0]) = v15;
        WORD2(v133[0]) = v132;
        HIWORD(v133[0]) = v9;
        LOWORD(v133[1]) = v85;
        WORD1(v133[1]) = v83;
        WORD2(v133[1]) = v8;
        HIWORD(v133[1]) = a6;
        LOWORD(v134) = v84;
        HIWORD(v134) = v131;
        v86 = _So9NSDecimala__exponent_getter(v133);
        if ((v86 & 0x80000000) == 0)
        {
          v87 = v86 + 1;
          result = v130;
          while (--v87)
          {
            v88 = (result * 0xAuLL) >> 64;
            result *= 10;
            if (v88)
            {
              goto LABEL_55;
            }
          }

          return result;
        }

        goto LABEL_316;
      }
    }

    else
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 46, 0xE100000000000000, 1, v137);
      if ((v138 & 1) == 0)
      {
        a3 = v137[1];
        v7 = v137[2];
        v18 = v137[0];
        goto LABEL_54;
      }
    }

    v22 = specialized BufferView.suffix(from:)(a6, a2, a3);
    v24 = &v22[v23];
    if (v15)
    {
      if (v23 < 1)
      {
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
        goto LABEL_310;
      }

      v25 = *v22;
      if (v25 == 45 || (v9 = v22, v25 == 43))
      {
        v9 = v22 + 1;
      }

      if (v24 < v9)
      {
        goto LABEL_309;
      }

      a6 = v9 - v22;
      if (v9 - v22 < 0)
      {
LABEL_310:
        __break(1u);
        goto LABEL_311;
      }

      a3 = v24 - v9;
      if (v24 - v9 < 0)
      {
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

      v15 = v23;
      v7 = v22;
      if (a3 >= 2)
      {
        v26 = 2;
      }

      else
      {
        v26 = v24 - v9;
      }

      if (_stringshims_strncasecmp_clocale(v9, "0x", v26))
      {
        if (v9 < v24)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = v24 - v9;
          do
          {
            if (a6 + v28 < 0)
            {
              goto LABEL_292;
            }

            v33 = v31-- < 1;
            if (v33)
            {
              goto LABEL_292;
            }

            LODWORD(v15) = v9[v28];
            if ((v15 - 58) > 0xF5u)
            {
              v32 = __OFADD__(v30++, 1);
              if (v32)
              {
                goto LABEL_294;
              }
            }

            else if (v9[v28] <= 0x2Du)
            {
              if (v15 != 43 && v15 != 45 || v30 || v29 != 2)
              {
LABEL_73:
                v52 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(&v9[v28], a4, a5);
                v54 = v53;
                a3 = v55;
                goto LABEL_74;
              }

              v30 = 0;
              v29 = 3;
            }

            else if (v15 == 101 || v15 == 69)
            {
              if (v29 != 1 && (v29 || v30 <= 0))
              {
                goto LABEL_73;
              }

              v30 = 0;
              v29 = 2;
            }

            else
            {
              if (v15 != 46)
              {
                goto LABEL_73;
              }

              if (v29)
              {
                v117 = &v9[v28];
                if (&v9[v28] >= a4)
                {
                  v118 = a4 + a5;
                  if (a4 + a5 >= v117)
                  {
                    if (v118 >= &v9[v28 + 1])
                    {
                      v118 = &v9[v28 + 1];
                    }

                    if (v118 <= a4)
                    {
                      v54 = 0;
                      v52 = 1;
                    }

                    else
                    {
                      v119 = a5 + a4;
                      v52 = 1;
                      v120 = a4;
                      do
                      {
                        v121 = 0;
                        v122 = 0;
                        v123 = v119 - v120;
                        while (1)
                        {
                          if ((v120 - a4 + v122) < 0 || (v123 + v121) < 1)
                          {
                            goto LABEL_306;
                          }

                          v124 = *(v120 + v122);
                          if (v124 == 10)
                          {
                            break;
                          }

                          if (v124 == 13)
                          {
                            v125 = v120 + v122;
                            if (v117 < v120 + v122 + 1)
                            {
                              goto LABEL_272;
                            }

                            if (((v120 - a4 + v122 + 1) & 0x8000000000000000) == 0 && (~v122 + v123) >= 1)
                            {
                              if (*(v125 + 1) == 10)
                              {
                                v125 = v120 + v122 + 1;
                              }

LABEL_272:
                              v32 = __OFADD__(v52++, 1);
                              if (!v32)
                              {
                                v120 = v125 + 1;
                                goto LABEL_276;
                              }

LABEL_336:
                              __break(1u);
LABEL_337:
                              __break(1u);
LABEL_338:
                              __break(1u);
                            }

                            __break(1u);
                          }

                          v54 = v122 + 1;
                          if (__OFADD__(v122, 1))
                          {
                            goto LABEL_307;
                          }

                          ++v122;
                          --v121;
                          if (v120 + v122 >= v118)
                          {
                            goto LABEL_288;
                          }
                        }

                        v32 = __OFADD__(v52++, 1);
                        if (v32)
                        {
                          goto LABEL_335;
                        }

                        v120 += v122 + 1;
LABEL_276:
                        ;
                      }

                      while (v120 < v118);
                      v54 = 0;
                    }

LABEL_288:
                    a3 = &v9[v28 - a4];
                    LOBYTE(v15) = 46;
LABEL_74:
                    a6 = 0xE900000000000072;
                    v7 = 0x65626D756E206E69;
LABEL_75:
                    lazy protocol witness table accessor for type JSONError and conformance JSONError();
                    swift_allocError();
                    *v41 = v7;
                    *(v41 + 8) = a6;
                    *(v41 + 16) = v15;
                    *(v41 + 24) = v52;
                    *(v41 + 32) = v54;
                    *(v41 + 40) = a3;
LABEL_224:
                    v42 = 1;
LABEL_225:
                    *(v41 + 48) = v42;
                    return swift_willThrow();
                  }
                }

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
                goto LABEL_336;
              }

              v30 = 0;
              v29 = 1;
            }

            ++v28;
          }

          while (a3 != v28);
        }

LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
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
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
        goto LABEL_308;
      }

      v37 = v9 + 2;
      v56 = v24 - (v9 + 2);
      if (v56 >= 1 && v37 < v24)
      {
        v56 = &v37[-v7];
        if ((&v37[-v7] & 0x8000000000000000) == 0)
        {
          a3 = &v9[-a4 + 2];
          v56 = v15 + v7 - v9 - 3;
          v61 = a6 + 3;
          v27 = 1;
          while (1)
          {
            v62 = v61;
            LODWORD(v15) = *v37;
            if ((v15 - 58) <= 0xF5u && (*v37 - 65 > 0x25 || ((1 << (v15 - 65)) & 0x3F0000003FLL) == 0))
            {
              break;
            }

            v33 = v56-- < 1;
            if (!v33 && ++v37 < v24)
            {
              ++a3;
              ++v61;
              if ((v62 & 0x8000000000000000) == 0)
              {
                continue;
              }
            }

            goto LABEL_111;
          }

          if (v37 >= a4)
          {
            v89 = a4 + a5;
            if (a4 + a5 >= v37)
            {
              if (v89 >= (v37 + 1))
              {
                v89 = (v37 + 1);
              }

              if (v89 <= a4)
              {
                v54 = 0;
                a6 = 0xED00007265626D75;
                v7 = 0x6E20786568206E69;
                v52 = 1;
                goto LABEL_75;
              }

              v90 = a5 + a4;
              v91 = -a4;
              v52 = 1;
              a6 = 0xED00007265626D75;
              v7 = 0x6E20786568206E69;
              while (1)
              {
                v92 = 0;
                v93 = 0;
                v94 = v90 - a4;
                while (1)
                {
                  if ((v91 + a4 + v93) < 0 || (v94 + v92) < 1)
                  {
                    goto LABEL_300;
                  }

                  v95 = *(a4 + v93);
                  if (v95 == 10)
                  {
                    v32 = __OFADD__(v52++, 1);
                    if (!v32)
                    {
                      a4 += v93 + 1;
                      goto LABEL_194;
                    }

                    goto LABEL_323;
                  }

                  if (v95 == 13)
                  {
                    break;
                  }

                  v54 = v93 + 1;
                  if (__OFADD__(v93, 1))
                  {
                    goto LABEL_301;
                  }

                  ++v93;
                  --v92;
                  if (a4 + v93 >= v89)
                  {
                    goto LABEL_75;
                  }
                }

                v96 = a4 + v93;
                if (v37 >= a4 + v93 + 1)
                {
                  if (((v91 + a4 + v93 + 1) & 0x8000000000000000) != 0 || (~v93 + v94) < 1)
                  {
                    goto LABEL_333;
                  }

                  if (*(v96 + 1) == 10)
                  {
                    v96 = a4 + v93 + 1;
                  }
                }

                v32 = __OFADD__(v52++, 1);
                if (v32)
                {
                  goto LABEL_324;
                }

                a4 = v96 + 1;
LABEL_194:
                if (a4 >= v89)
                {
                  v54 = 0;
                  goto LABEL_75;
                }
              }
            }
          }

          goto LABEL_315;
        }
      }

LABEL_111:
      __break(1u);
LABEL_112:
      v64 = &v37[v56];
      if (&v37[v56] >= a4)
      {
        v65 = a4 + a5;
        if (a4 + a5 >= v64)
        {
          if (v65 >= &v37[v56 + 1])
          {
            v65 = &v37[v56 + 1];
          }

          if (v65 > a4)
          {
            v66 = a5 + a4;
            v67 = 1;
            v68 = a4;
            while (1)
            {
              while (1)
              {
                v69 = 0;
                v70 = 0;
                v71 = v66 - v68;
LABEL_119:
                if ((v68 - a4 + v70) < 0 || (v71 + v69) < 1)
                {
                  goto LABEL_296;
                }

                v72 = *(v68 + v70);
                if (v72 != 10)
                {
                  break;
                }

                v32 = __OFADD__(v67++, 1);
                if (v32)
                {
                  goto LABEL_319;
                }

                v68 += v70 + 1;
                if (v68 >= v65)
                {
                  goto LABEL_220;
                }
              }

              if (v72 != 13)
              {
                a3 = v70 + 1;
                if (__OFADD__(v70, 1))
                {
                  goto LABEL_298;
                }

                ++v70;
                --v69;
                if (v68 + v70 >= v65)
                {
                  goto LABEL_223;
                }

                goto LABEL_119;
              }

              v73 = v68 + v70;
              if (v64 >= v68 + v70 + 1)
              {
                if (((v68 - a4 + v70 + 1) & 0x8000000000000000) != 0 || (~v70 + v71) < 1)
                {
                  goto LABEL_330;
                }

                if (*(v73 + 1) == 10)
                {
                  v73 = v68 + v70 + 1;
                }
              }

              v32 = __OFADD__(v67++, 1);
              if (v32)
              {
                goto LABEL_321;
              }

              v68 = v73 + 1;
              if (v73 + 1 >= v65)
              {
                goto LABEL_220;
              }
            }
          }

LABEL_221:
          a3 = 0;
LABEL_222:
          v67 = 1;
          goto LABEL_223;
        }
      }

      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
      goto LABEL_318;
    }

    if (v23 >= 1)
    {
      v34 = 0;
      v35 = v23;
      v36 = v22;
      v37 = v22;
      while ((v34 & 0x8000000000000000) == 0)
      {
        v33 = v35-- < 1;
        if (v33)
        {
          break;
        }

        if (*v37 - 58 >= 0xFFFFFFF6)
        {
          ++v37;
          ++v36;
          ++v34;
          if (v37 < v24)
          {
            continue;
          }
        }

        goto LABEL_77;
      }

      goto LABEL_295;
    }

    v36 = v22;
    v37 = v22;
LABEL_77:
    if (v37 >= v24)
    {
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
      goto LABEL_291;
    }

    v56 = 0;
    v57 = 0;
    v58 = v36 - v22;
    v59 = (&v22[v23] - v36);
    v60 = &v22[v23] - v37;
    while (1)
    {
      if (v37 - v22 + v56 < 0)
      {
        goto LABEL_290;
      }

      v33 = v60-- < 1;
      if (v33)
      {
        goto LABEL_290;
      }

      v27 = v37[v56];
      if (v27 - 58 >= 0xFFFFFFF6)
      {
        v32 = __OFADD__(v58++, 1);
        if (v32)
        {
          goto LABEL_293;
        }
      }

      else if (v37[v56] <= 0x2Du)
      {
        if (v27 != 43 && v27 != 45)
        {
LABEL_196:
          v97 = &v37[v56];
          if (&v37[v56] < a4)
          {
            goto LABEL_317;
          }

          v98 = a4 + a5;
          if (a4 + a5 < v97)
          {
            goto LABEL_317;
          }

          if (v98 >= &v37[v56 + 1])
          {
            v98 = &v37[v56 + 1];
          }

          if (v98 <= a4)
          {
            goto LABEL_221;
          }

          v99 = a5 + a4;
          v67 = 1;
          v100 = a4;
          while (1)
          {
LABEL_202:
            v101 = 0;
            v102 = 0;
            v103 = v99 - v100;
            while (1)
            {
              if ((v100 - a4 + v102) < 0 || (v103 + v101) < 1)
              {
                goto LABEL_302;
              }

              v104 = *(v100 + v102);
              if (v104 == 10)
              {
                v32 = __OFADD__(v67++, 1);
                if (v32)
                {
                  goto LABEL_327;
                }

                v100 += v102 + 1;
                if (v100 >= v98)
                {
                  goto LABEL_220;
                }

                goto LABEL_202;
              }

              if (v104 == 13)
              {
                break;
              }

              a3 = v102 + 1;
              if (__OFADD__(v102, 1))
              {
                goto LABEL_304;
              }

              ++v102;
              --v101;
              if (v100 + v102 >= v98)
              {
                goto LABEL_223;
              }
            }

            v105 = v100 + v102;
            if (v97 >= v100 + v102 + 1)
            {
              if (((v100 - a4 + v102 + 1) & 0x8000000000000000) != 0 || (~v102 + v103) < 1)
              {
                goto LABEL_337;
              }

              if (*(v105 + 1) == 10)
              {
                v105 = v100 + v102 + 1;
              }
            }

            v32 = __OFADD__(v67++, 1);
            if (v32)
            {
              goto LABEL_328;
            }

            v100 = v105 + 1;
            if (v105 + 1 >= v98)
            {
LABEL_220:
              a3 = 0;
LABEL_223:
              v106 = &v37[v56 - a4];
              v107 = v27;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v41 = xmmword_181237560;
              *(v41 + 16) = v107;
              *(v41 + 24) = v67;
              *(v41 + 32) = a3;
              *(v41 + 40) = v106;
              goto LABEL_224;
            }
          }
        }

        if (v58 || v57 != 2)
        {
          v74 = &v37[v56];
          if (&v37[v56] >= a4)
          {
            v75 = a4 + a5;
            if (a4 + a5 >= v74)
            {
              if (v75 >= &v37[v56 + 1])
              {
                v75 = &v37[v56 + 1];
              }

              if (v75 <= a4)
              {
                goto LABEL_221;
              }

              v76 = a5 + a4;
              v67 = 1;
              v77 = a4;
              while (1)
              {
LABEL_143:
                v78 = 0;
                v79 = 0;
                v80 = v76 - v77;
                while (1)
                {
                  if ((v77 - a4 + v79) < 0 || (v80 + v78) < 1)
                  {
                    goto LABEL_297;
                  }

                  v81 = *(v77 + v79);
                  if (v81 == 10)
                  {
                    v32 = __OFADD__(v67++, 1);
                    if (v32)
                    {
                      goto LABEL_320;
                    }

                    v77 += v79 + 1;
                    if (v77 >= v75)
                    {
                      goto LABEL_220;
                    }

                    goto LABEL_143;
                  }

                  if (v81 == 13)
                  {
                    break;
                  }

                  a3 = v79 + 1;
                  if (__OFADD__(v79, 1))
                  {
                    goto LABEL_299;
                  }

                  ++v79;
                  --v78;
                  if (v77 + v79 >= v75)
                  {
                    goto LABEL_223;
                  }
                }

                v82 = v77 + v79;
                if (v74 >= v77 + v79 + 1)
                {
                  if (((v77 - a4 + v79 + 1) & 0x8000000000000000) != 0 || (~v79 + v80) < 1)
                  {
                    goto LABEL_331;
                  }

                  if (*(v82 + 1) == 10)
                  {
                    v82 = v77 + v79 + 1;
                  }
                }

                v32 = __OFADD__(v67++, 1);
                if (v32)
                {
                  goto LABEL_322;
                }

                v77 = v82 + 1;
                if (v82 + 1 >= v75)
                {
                  goto LABEL_220;
                }
              }
            }
          }

          goto LABEL_314;
        }

        v58 = 0;
        v57 = 3;
      }

      else if (v27 == 101 || v27 == 69)
      {
        if (v58 < 1 || v57 >= 2)
        {
          goto LABEL_112;
        }

        v58 = 0;
        v57 = 2;
      }

      else
      {
        if (v27 != 46)
        {
          goto LABEL_196;
        }

        if (v58 < 1 || v57)
        {
          v108 = &v37[v56];
          if (&v37[v56] >= a4 && a4 + a5 >= v108)
          {
            if (a4 + a5 >= &v37[v56 + 1])
            {
              v109 = &v37[v56 + 1];
            }

            else
            {
              v109 = a4 + a5;
            }

            if (v109 > a4)
            {
              v110 = a5 + a4;
              v67 = 1;
              v111 = a4;
              while (1)
              {
                v112 = 0;
                v113 = 0;
                v114 = v110 - v111;
                while (1)
                {
                  if ((v111 - a4 + v113) < 0 || (v114 + v112) < 1)
                  {
                    goto LABEL_303;
                  }

                  v115 = *(v111 + v113);
                  if (v115 == 10)
                  {
                    break;
                  }

                  if (v115 == 13)
                  {
                    v116 = v111 + v113;
                    if (v108 >= v111 + v113 + 1)
                    {
                      if (((v111 - a4 + v113 + 1) & 0x8000000000000000) != 0 || (~v113 + v114) < 1)
                      {
                        goto LABEL_338;
                      }

                      if (*(v116 + 1) == 10)
                      {
                        v116 = v111 + v113 + 1;
                      }
                    }

                    v32 = __OFADD__(v67++, 1);
                    if (v32)
                    {
                      goto LABEL_332;
                    }

                    a3 = 0;
                    v111 = v116 + 1;
                    goto LABEL_250;
                  }

                  a3 = v113 + 1;
                  if (__OFADD__(v113, 1))
                  {
                    goto LABEL_305;
                  }

                  ++v113;
                  --v112;
                  if (v111 + v113 >= v109)
                  {
                    v27 = 46;
                    goto LABEL_223;
                  }
                }

                v32 = __OFADD__(v67++, 1);
                if (v32)
                {
                  goto LABEL_329;
                }

                a3 = 0;
                v111 += v113 + 1;
LABEL_250:
                v27 = 46;
                if (v111 >= v109)
                {
                  goto LABEL_223;
                }
              }
            }

            a3 = 0;
            v27 = 46;
            goto LABEL_222;
          }

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
          goto LABEL_325;
        }

        v58 = 0;
        v57 = 1;
      }

      if (v59 == ++v56)
      {
        goto LABEL_289;
      }
    }
  }

  return result;
}