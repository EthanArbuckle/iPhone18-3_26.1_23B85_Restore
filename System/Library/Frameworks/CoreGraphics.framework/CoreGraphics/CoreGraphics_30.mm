uint64_t std::__introsort<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4, double a5, double a6, double a7, double a8)
{
  v13 = result;
LABEL_2:
  v14 = a2 - 1;
  v15 = v13;
  while (1)
  {
    while (1)
    {
      v13 = v15;
      v16 = a2 - v15;
      if (v16 > 2)
      {
        switch(v16)
        {
          case 3:

            return std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(v15, v15 + 1, a2 - 1);
          case 4:

            return std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(v15, v15 + 1, v15 + 2, a2 - 1);
          case 5:

            return std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(v15, v15 + 1, v15 + 2, v15 + 3, a2 - 1);
        }
      }

      else
      {
        if (v16 < 2)
        {
          return result;
        }

        if (v16 == 2)
        {
          v16 = *v14;
          v19 = *(*v14 + 8);
          i = *(*v14 + 16);
          if (i == v19)
          {
            goto LABEL_807;
          }

          i = *v15;
          v8 = *(v19 + 16);
          v140 = *(v19 + 32);
          if (v140 != -1 && (v8 < v140 ? (v141 = v8 == -1) : (v141 = 1), v141))
          {
            LODWORD(v9) = 0;
            v8 = *(v19 + 32);
          }

          else
          {
            LODWORD(v9) = 1;
          }

          v286 = *(i + 8);
          if (*(i + 16) == v286)
          {
            goto LABEL_807;
          }

          a5 = *(v19 + 24);
          a6 = *(v19 + 40);
          v287 = *(v286 + 16);
          a7 = *(v286 + 24);
          v19 = *(v286 + 32);
          a8 = *(v286 + 40);
          if (v19 != -1 && (v287 >= v19 || v287 == -1))
          {
            goto LABEL_808;
          }

          if (v287 != -1)
          {
            v289 = 1;
            v19 = v287;
            goto LABEL_809;
          }

LABEL_822:
          *v13 = v16;
          *v14 = i;
          return result;
        }
      }

      if (v16 <= 23)
      {
        v19 = (v15 + 1);
        v143 = v15 == a2 || v19 == a2;
        if (a4)
        {
          if (v143)
          {
            return result;
          }

          v16 = 0;
          v9 = v15;
          while (1)
          {
            i = v19;
            v8 = *(v9 + 8);
            v144 = *(v8 + 8);
            v19 = *(v8 + 16);
            if (v19 == v144)
            {
              goto LABEL_807;
            }

            v19 = *(v144 + 16);
            v145 = *(v144 + 32);
            if (v145 != -1 && (v19 < v145 ? (v146 = v19 == -1) : (v146 = 1), v146))
            {
              v147 = 0;
              v19 = *(v144 + 32);
            }

            else
            {
              v147 = 1;
            }

            v148 = *(*v9 + 8);
            if (*(*v9 + 16) == v148)
            {
              goto LABEL_807;
            }

            a5 = *(v144 + 24);
            a6 = *(v144 + 40);
            v149 = *(v148 + 16);
            a7 = *(v148 + 24);
            v150 = *(v148 + 32);
            a8 = *(v148 + 40);
            if (v150 != -1 && (v149 >= v150 || v149 == -1))
            {
              break;
            }

            if (v149 != -1)
            {
              v152 = 1;
              v150 = v149;
LABEL_448:
              if (v19 == -1 || v19 >= v150)
              {
                if (!v152)
                {
                  a7 = a8;
                }

                if (!v147)
                {
                  a5 = a6;
                }

                if (v19 != v150 || a5 >= a7)
                {
                  goto LABEL_496;
                }
              }
            }

            *(v9 + 8) = *v9;
            v155 = v15;
            if (v9 == v15)
            {
              goto LABEL_495;
            }

            v9 = v16;
            do
            {
              v156 = *(v8 + 8);
              v19 = *(v8 + 16);
              if (v19 == v156)
              {
                goto LABEL_807;
              }

              v19 = *(v156 + 16);
              v157 = *(v156 + 32);
              if (v157 != -1 && (v19 < v157 ? (v158 = v19 == -1) : (v158 = 1), v158))
              {
                v159 = 0;
                v19 = *(v156 + 32);
              }

              else
              {
                v159 = 1;
              }

              v160 = *(v15 + v9 - 8);
              result = *(v160 + 8);
              if (*(v160 + 16) == result)
              {
                goto LABEL_807;
              }

              a5 = *(v156 + 24);
              a6 = *(v156 + 40);
              v161 = *(result + 16);
              a7 = *(result + 24);
              v162 = *(result + 32);
              a8 = *(result + 40);
              if (v162 != -1 && (v161 < v162 ? (v163 = v161 == -1) : (v163 = 1), v163))
              {
                result = 0;
              }

              else
              {
                if (v161 == -1)
                {
                  goto LABEL_493;
                }

                result = 1;
                v162 = v161;
              }

              if (v19 == -1 || v19 >= v162)
              {
                if (!result)
                {
                  a7 = a8;
                }

                if (!v159)
                {
                  a5 = a6;
                }

                if (v19 != v162 || a5 >= a7)
                {
                  v155 = (v15 + v9);
                  goto LABEL_495;
                }
              }

LABEL_493:
              *(v15 + v9) = v160;
              v9 -= 8;
            }

            while (v9);
            v155 = v15;
LABEL_495:
            *v155 = v8;
LABEL_496:
            v19 = i + 8;
            v16 += 8;
            v9 = i;
            if ((i + 8) == a2)
            {
              return result;
            }
          }

          v152 = 0;
          goto LABEL_448;
        }

        if (v143)
        {
          return result;
        }

        v260 = 0;
        v16 = -8;
        v261 = 8;
        i = v15;
LABEL_733:
        v8 = v261;
        v9 = *v19;
        v262 = *(*v19 + 8);
        if (*(*v19 + 16) == v262)
        {
          goto LABEL_807;
        }

        v263 = *(v262 + 16);
        v264 = *(v262 + 32);
        if (v264 != -1 && (v263 < v264 ? (v265 = v263 == -1) : (v265 = 1), v265))
        {
          v266 = 0;
          v263 = *(v262 + 32);
        }

        else
        {
          v266 = 1;
        }

        v267 = *(v15 + v260);
        result = *(v267 + 8);
        if (*(v267 + 16) == result)
        {
          goto LABEL_807;
        }

        a5 = *(v262 + 24);
        a6 = *(v262 + 40);
        v268 = *(result + 16);
        a7 = *(result + 24);
        v269 = *(result + 32);
        a8 = *(result + 40);
        if (v269 != -1 && (v268 < v269 ? (v270 = v268 == -1) : (v270 = 1), v270))
        {
          result = 0;
        }

        else
        {
          if (v268 == -1)
          {
LABEL_763:
            *v19 = v267;
            v273 = v16;
            v19 = i;
            while (1)
            {
              v274 = *(v9 + 8);
              if (*(v9 + 16) == v274)
              {
                goto LABEL_807;
              }

              v275 = *(v274 + 16);
              v276 = *(v274 + 32);
              if (v276 != -1 && (v275 < v276 ? (v277 = v275 == -1) : (v277 = 1), v277))
              {
                v278 = 0;
                v275 = *(v274 + 32);
              }

              else
              {
                v278 = 1;
              }

              v279 = *(v19 - 8);
              v280 = *(v279 + 8);
              result = *(v279 + 16);
              if (result == v280)
              {
                goto LABEL_807;
              }

              a5 = *(v274 + 24);
              a6 = *(v274 + 40);
              result = *(v280 + 16);
              a7 = *(v280 + 24);
              v281 = *(v280 + 32);
              a8 = *(v280 + 40);
              if (v281 != -1 && (result < v281 ? (v282 = result == -1) : (v282 = 1), v282))
              {
                v283 = 0;
              }

              else
              {
                if (result == -1)
                {
                  goto LABEL_794;
                }

                v283 = 1;
                v281 = result;
              }

              if (v275 == -1 || v275 >= v281)
              {
                if (!v283)
                {
                  a7 = a8;
                }

                if (!v278)
                {
                  a5 = a6;
                }

                if (v275 != v281 || a5 >= a7)
                {
                  *v19 = v9;
LABEL_796:
                  v261 = v8 + 8;
                  v19 = v15 + v8 + 8;
                  i += 8;
                  v16 -= 8;
                  v260 = v8;
                  if (v19 == a2)
                  {
                    return result;
                  }

                  goto LABEL_733;
                }
              }

LABEL_794:
              *v19 = v279;
              v19 -= 8;
              v273 += 8;
              if (!v273)
              {
                goto LABEL_807;
              }
            }
          }

          result = 1;
          v269 = v268;
        }

        if (v263 == -1 || v263 >= v269)
        {
          if (!result)
          {
            a7 = a8;
          }

          if (!v266)
          {
            a5 = a6;
          }

          if (v263 != v269 || a5 >= a7)
          {
            goto LABEL_796;
          }
        }

        goto LABEL_763;
      }

      if (!a3)
      {
        if (v15 == a2)
        {
          return result;
        }

        i = (v16 - 2) >> 1;
        v166 = i;
        while (1)
        {
          v8 = v166;
          if (i < v166)
          {
            goto LABEL_626;
          }

          v9 = (2 * v166) | 1;
          v19 = &v15[v9];
          if (2 * v8 + 2 >= v16)
          {
            goto LABEL_533;
          }

          v167 = *(*v19 + 8);
          if (*(*v19 + 16) == v167)
          {
            goto LABEL_807;
          }

          v168 = *(v167 + 16);
          v169 = *(v167 + 32);
          if (v169 != -1 && (v168 < v169 ? (v170 = v168 == -1) : (v170 = 1), v170))
          {
            v171 = 0;
            v168 = *(v167 + 32);
          }

          else
          {
            v171 = 1;
          }

          result = *(v19 + 8);
          v172 = *(result + 8);
          if (*(result + 16) == v172)
          {
            goto LABEL_807;
          }

          a5 = *(v167 + 24);
          a6 = *(v167 + 40);
          v173 = *(v172 + 16);
          a7 = *(v172 + 24);
          v174 = *(v172 + 32);
          a8 = *(v172 + 40);
          if (v174 != -1 && (v173 >= v174 || v173 == -1))
          {
            break;
          }

          if (v173 != -1)
          {
            v176 = 1;
            v174 = v173;
LABEL_519:
            if (v168 == -1 || v168 >= v174)
            {
              if (!v176)
              {
                a7 = a8;
              }

              if (!v171)
              {
                a5 = a6;
              }

              if (v168 != v174 || a5 >= a7)
              {
                goto LABEL_533;
              }
            }
          }

          v19 += 8;
          v9 = 2 * v8 + 2;
LABEL_533:
          v179 = *v19;
          result = *(*v19 + 8);
          if (*(*v19 + 16) == result)
          {
            goto LABEL_807;
          }

          v180 = *(result + 16);
          v181 = *(result + 32);
          if (v181 != -1 && (v180 < v181 ? (v182 = v180 == -1) : (v182 = 1), v182))
          {
            v183 = 0;
            v180 = *(result + 32);
          }

          else
          {
            v183 = 1;
          }

          v184 = &v15[v8];
          v185 = *v184;
          v186 = *(*v184 + 8);
          if (*(*v184 + 16) == v186)
          {
            goto LABEL_807;
          }

          a5 = *(result + 24);
          a6 = *(result + 40);
          v187 = *(v186 + 16);
          a7 = *(v186 + 24);
          result = *(v186 + 32);
          a8 = *(v186 + 40);
          if (result != -1 && (v187 < result ? (v188 = v187 == -1) : (v188 = 1), v188))
          {
            v189 = 0;
          }

          else
          {
            if (v187 == -1)
            {
              goto LABEL_626;
            }

            v189 = 1;
            result = v187;
          }

          if (v180 == -1 || v180 >= result)
          {
            if (!v189)
            {
              a7 = a8;
            }

            if (!v183)
            {
              a5 = a6;
            }

            if (v180 != result || a5 >= a7)
            {
              while (1)
              {
                v192 = v19;
                *v184 = v179;
                if (i < v9)
                {
LABEL_625:
                  *v192 = v185;
                  goto LABEL_626;
                }

                v193 = 2 * v9;
                v9 = (2 * v9) | 1;
                v19 = &v15[v9];
                v194 = v193 + 2;
                if (v194 < v16)
                {
                  break;
                }

LABEL_595:
                v179 = *v19;
                result = *(*v19 + 8);
                if (*(*v19 + 16) == result)
                {
                  goto LABEL_807;
                }

                v207 = *(result + 16);
                v208 = *(result + 32);
                if (v208 != -1 && (v207 < v208 ? (v209 = v207 == -1) : (v209 = 1), v209))
                {
                  v210 = 0;
                  v207 = *(result + 32);
                }

                else
                {
                  v210 = 1;
                }

                v211 = *(v185 + 8);
                if (*(v185 + 16) == v211)
                {
                  goto LABEL_807;
                }

                a5 = *(result + 24);
                a6 = *(result + 40);
                v212 = *(v211 + 16);
                a7 = *(v211 + 24);
                result = *(v211 + 32);
                a8 = *(v211 + 40);
                if (result != -1 && (v212 < result ? (v213 = v212 == -1) : (v213 = 1), v213))
                {
                  v214 = 0;
                }

                else
                {
                  if (v212 == -1)
                  {
                    goto LABEL_625;
                  }

                  v214 = 1;
                  result = v212;
                }

                if (v207 == -1 || v207 >= result)
                {
                  if (!v214)
                  {
                    a7 = a8;
                  }

                  if (!v210)
                  {
                    a5 = a6;
                  }

                  v216 = v207 == result && a5 < a7;
                  v184 = v192;
                  if (!v216)
                  {
                    continue;
                  }
                }

                goto LABEL_625;
              }

              v195 = *(*v19 + 8);
              if (*(*v19 + 16) == v195)
              {
                goto LABEL_807;
              }

              v196 = *(v195 + 16);
              v197 = *(v195 + 32);
              if (v197 != -1 && (v196 < v197 ? (v198 = v196 == -1) : (v198 = 1), v198))
              {
                result = 0;
                v196 = *(v195 + 32);
              }

              else
              {
                result = 1;
              }

              v199 = *(v19 + 8);
              v200 = *(v199 + 8);
              if (*(v199 + 16) == v200)
              {
                goto LABEL_807;
              }

              a5 = *(v195 + 24);
              a6 = *(v195 + 40);
              v201 = *(v200 + 16);
              a7 = *(v200 + 24);
              v202 = *(v200 + 32);
              a8 = *(v200 + 40);
              if (v202 != -1 && (v201 < v202 ? (v203 = v201 == -1) : (v203 = 1), v203))
              {
                v204 = 0;
              }

              else
              {
                if (v201 == -1)
                {
LABEL_594:
                  v19 += 8;
                  v9 = v194;
                  goto LABEL_595;
                }

                v204 = 1;
                v202 = v201;
              }

              if (v196 == -1 || v196 >= v202)
              {
                if (!v204)
                {
                  a7 = a8;
                }

                if (!result)
                {
                  a5 = a6;
                }

                if (v196 != v202 || a5 >= a7)
                {
                  goto LABEL_595;
                }
              }

              goto LABEL_594;
            }
          }

LABEL_626:
          v166 = v8 - 1;
          if (!v8)
          {
LABEL_627:
            v9 = 0;
            v8 = *v15;
            v19 = (v16 - 2) >> 1;
            i = v15;
            while (1)
            {
              v217 = i;
              v218 = i + 8 * v9;
              i = v218 + 8;
              v219 = 2 * v9;
              v9 = (2 * v9) | 1;
              v220 = v219 + 2;
              if (v220 < v16)
              {
                break;
              }

LABEL_660:
              *v217 = *i;
              if (v9 > v19)
              {
                if (i == --a2)
                {
                  *i = v8;
                  goto LABEL_728;
                }

                *i = *a2;
                *a2 = v8;
                v235 = (i - v15 + 8) >> 3;
                v236 = v235 - 2;
                if (v235 >= 2)
                {
                  v8 = v236 >> 1;
                  v9 = &v15[v236 >> 1];
                  v237 = *(*v9 + 8);
                  v19 = *(*v9 + 16);
                  if (v19 == v237)
                  {
                    goto LABEL_807;
                  }

                  v238 = *(v237 + 16);
                  v239 = *(v237 + 32);
                  if (v239 != -1 && (v238 < v239 ? (v240 = v238 == -1) : (v240 = 1), v240))
                  {
                    v241 = 0;
                    v238 = *(v237 + 32);
                  }

                  else
                  {
                    v241 = 1;
                  }

                  v19 = *i;
                  v242 = *(*i + 8);
                  result = *(*i + 16);
                  if (result == v242)
                  {
                    goto LABEL_807;
                  }

                  a5 = *(v237 + 24);
                  a6 = *(v237 + 40);
                  result = *(v242 + 16);
                  a7 = *(v242 + 24);
                  v243 = *(v242 + 32);
                  a8 = *(v242 + 40);
                  if (v243 != -1 && (result >= v243 || result == -1))
                  {
                    v245 = 0;
                    goto LABEL_681;
                  }

                  if (result == -1)
                  {
                    goto LABEL_694;
                  }

                  v245 = 1;
                  v243 = result;
LABEL_681:
                  if (v238 != -1 && v238 < v243)
                  {
                    goto LABEL_694;
                  }

                  if (!v245)
                  {
                    a7 = a8;
                  }

                  if (!v241)
                  {
                    a5 = a6;
                  }

                  if (v238 == v243 && a5 < a7)
                  {
LABEL_694:
                    *i = *v9;
                    if (v236 < 2)
                    {
LABEL_695:
                      i = v9;
LABEL_727:
                      *i = v19;
                      goto LABEL_728;
                    }

                    while (2)
                    {
                      v248 = v8 - 1;
                      v8 = (v8 - 1) >> 1;
                      i = &v15[v8];
                      v249 = *(*i + 8);
                      if (*(*i + 16) == v249)
                      {
                        goto LABEL_807;
                      }

                      v250 = *(v249 + 16);
                      v251 = *(v249 + 32);
                      if (v251 != -1 && (v250 < v251 ? (v252 = v250 == -1) : (v252 = 1), v252))
                      {
                        v253 = 0;
                        v250 = *(v249 + 32);
                      }

                      else
                      {
                        v253 = 1;
                      }

                      v254 = *(v19 + 8);
                      result = *(v19 + 16);
                      if (result == v254)
                      {
                        goto LABEL_807;
                      }

                      a5 = *(v249 + 24);
                      a6 = *(v249 + 40);
                      result = *(v254 + 16);
                      a7 = *(v254 + 24);
                      v255 = *(v254 + 32);
                      a8 = *(v254 + 40);
                      if (v255 != -1 && (result < v255 ? (v256 = result == -1) : (v256 = 1), v256))
                      {
                        v257 = 0;
LABEL_713:
                        if (v250 == -1 || v250 >= v255)
                        {
                          if (!v257)
                          {
                            a7 = a8;
                          }

                          if (!v253)
                          {
                            a5 = a6;
                          }

                          if (v250 != v255 || a5 >= a7)
                          {
                            goto LABEL_695;
                          }
                        }
                      }

                      else if (result != -1)
                      {
                        v257 = 1;
                        v255 = result;
                        goto LABEL_713;
                      }

                      *v9 = *i;
                      v9 = &v15[v8];
                      if (v248 <= 1)
                      {
                        goto LABEL_727;
                      }

                      continue;
                    }
                  }
                }

LABEL_728:
                v39 = v16-- <= 2;
                if (v39)
                {
                  return result;
                }

                goto LABEL_627;
              }
            }

            v223 = *(v218 + 16);
            v222 = v218 + 16;
            v221 = v223;
            v224 = *(v222 - 8);
            result = *(v224 + 8);
            if (*(v224 + 16) == result)
            {
              goto LABEL_807;
            }

            v225 = *(result + 16);
            v226 = *(result + 32);
            if (v226 != -1 && (v225 < v226 ? (v227 = v225 == -1) : (v227 = 1), v227))
            {
              v228 = 0;
              v225 = *(result + 32);
            }

            else
            {
              v228 = 1;
            }

            v229 = *(v221 + 8);
            if (*(v221 + 16) == v229)
            {
              goto LABEL_807;
            }

            a5 = *(result + 24);
            a6 = *(result + 40);
            v230 = *(v229 + 16);
            a7 = *(v229 + 24);
            result = *(v229 + 32);
            a8 = *(v229 + 40);
            if (result != -1 && (v230 < result ? (v231 = v230 == -1) : (v231 = 1), v231))
            {
              v232 = 0;
LABEL_646:
              if (v225 == -1 || v225 >= result)
              {
                if (!v232)
                {
                  a7 = a8;
                }

                if (!v228)
                {
                  a5 = a6;
                }

                if (v225 != result || a5 >= a7)
                {
                  goto LABEL_660;
                }
              }
            }

            else if (v230 != -1)
            {
              v232 = 1;
              result = v230;
              goto LABEL_646;
            }

            i = v222;
            v9 = v220;
            goto LABEL_660;
          }
        }

        v176 = 0;
        goto LABEL_519;
      }

      v17 = v16 >> 1;
      v18 = &v15[v16 >> 1];
      if (v16 < 0x81)
      {
        result = std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(&v13[v16 >> 1], v13, a2 - 1);
      }

      else
      {
        std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(v13, &v13[v16 >> 1], a2 - 1);
        std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(v13 + 1, v18 - 1, a2 - 2);
        std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(v13 + 2, &v13[v17 + 1], a2 - 3);
        result = std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(v18 - 1, v18, &v13[v17 + 1]);
        v20 = *v13;
        *v13 = *v18;
        *v18 = v20;
      }

      --a3;
      v16 = *v13;
      if (a4)
      {
        goto LABEL_42;
      }

      i = *(*(v13 - 1) + 8);
      v8 = *(*(v13 - 1) + 16);
      if (v8 == i)
      {
        goto LABEL_807;
      }

      v9 = *(i + 16);
      v22 = *(i + 32);
      if (v22 != -1 && (v9 < v22 ? (v23 = v9 == -1) : (v23 = 1), v23))
      {
        v19 = 0;
        v9 = *(i + 32);
      }

      else
      {
        v19 = 1;
      }

      v24 = *(v16 + 8);
      v8 = *(v16 + 16);
      if (v8 == v24)
      {
        goto LABEL_807;
      }

      a7 = *(i + 24);
      a8 = *(i + 40);
      i = *(v24 + 16);
      a5 = *(v24 + 24);
      v8 = *(v24 + 32);
      a6 = *(v24 + 40);
      if (v8 == -1)
      {
        break;
      }

      if (i < v8 && i != -1)
      {
        break;
      }

      v26 = 0;
      v27 = v8;
LABEL_33:
      if (v9 != -1 && v9 < v27)
      {
        goto LABEL_42;
      }

      if (v26)
      {
        v28 = a5;
      }

      else
      {
        v28 = a6;
      }

      if (!v19)
      {
        a7 = a8;
      }

      if (v9 == v27 && a7 < v28)
      {
        goto LABEL_42;
      }

      if (v8 != -1 && (i < v8 ? (v88 = i == -1) : (v88 = 1), v88))
      {
        LODWORD(v9) = 0;
        v19 = v8;
      }

      else
      {
        LODWORD(v9) = 1;
        v19 = i;
      }

      v89 = *(*v14 + 8);
      if (*(*v14 + 16) == v89)
      {
        goto LABEL_807;
      }

      v90 = *(v89 + 16);
      v91 = *(v89 + 24);
      v92 = *(v89 + 32);
      a8 = *(v89 + 40);
      if (v92 != -1 && (v90 < v92 ? (v93 = v90 == -1) : (v93 = 1), v93))
      {
        v94 = 0;
      }

      else
      {
        if (v90 == -1)
        {
          goto LABEL_236;
        }

        v94 = 1;
        v92 = v90;
      }

      if (v19 == -1 || v19 >= v92)
      {
        if (!v94)
        {
          v91 = a8;
        }

        a8 = v9 ? a5 : a6;
        if (v19 != v92 || a8 >= v91)
        {
          v132 = i != -1 && i < v8 || v8 == -1;
          if (v132)
          {
            v9 = i;
          }

          else
          {
            v9 = v8;
          }

          if (v132)
          {
            a7 = a5;
          }

          else
          {
            a7 = a6;
          }

          v133 = v13 + 1;
          do
          {
            v15 = v133;
            if (v133 >= a2)
            {
              break;
            }

            v19 = *v133;
            v134 = *(*v133 + 8);
            if (*(*v133 + 16) == v134)
            {
              goto LABEL_807;
            }

            v135 = *(v134 + 16);
            a8 = *(v134 + 24);
            v19 = *(v134 + 32);
            v136 = *(v134 + 40);
            if (v19 != -1 && (v135 < v19 ? (v137 = v135 == -1) : (v137 = 1), v137))
            {
              v138 = 0;
            }

            else
            {
              if (v135 == -1)
              {
                goto LABEL_268;
              }

              v138 = 1;
              v19 = v135;
            }

            if (v9 != -1 && v9 < v19)
            {
              break;
            }

            if (!v138)
            {
              a8 = v136;
            }

            v133 = v15 + 1;
          }

          while (v9 != v19 || a7 >= a8);
          goto LABEL_268;
        }
      }

LABEL_236:
      v96 = i != -1 && i < v8 || v8 == -1;
      if (v96)
      {
        v9 = i;
      }

      else
      {
        v9 = v8;
      }

      if (v96)
      {
        a7 = a5;
      }

      else
      {
        a7 = a6;
      }

      v97 = v13 + 1;
      do
      {
        if (v97 == a2)
        {
          goto LABEL_807;
        }

        v15 = v97;
        v19 = *v97;
        v98 = *(*v97 + 8);
        if (*(*v97 + 16) == v98)
        {
          goto LABEL_807;
        }

        v99 = *(v98 + 16);
        a8 = *(v98 + 24);
        v19 = *(v98 + 32);
        v100 = *(v98 + 40);
        if (v19 != -1 && (v99 < v19 ? (v101 = v99 == -1) : (v101 = 1), v101))
        {
          v102 = 0;
        }

        else
        {
          if (v99 == -1)
          {
            break;
          }

          v102 = 1;
          v19 = v99;
        }

        if (v9 != -1 && v9 < v19)
        {
          break;
        }

        if (!v102)
        {
          a8 = v100;
        }

        v97 = v15 + 1;
      }

      while (v9 != v19 || a7 >= a8);
LABEL_268:
      v9 = a2;
      if (v15 < a2)
      {
        if (a2 == v13)
        {
          goto LABEL_807;
        }

        if ((i == -1 || i >= v8) && v8 != -1)
        {
          i = v8;
          a5 = a6;
        }

        v9 = (a2 - 1);
        while (1)
        {
          v8 = *v9;
          v106 = *(*v9 + 8);
          v19 = *(*v9 + 16);
          if (v19 == v106)
          {
            goto LABEL_807;
          }

          v19 = *(v106 + 16);
          a6 = *(v106 + 24);
          v8 = *(v106 + 32);
          a7 = *(v106 + 40);
          if (v8 != -1 && (v19 < v8 ? (v107 = v19 == -1) : (v107 = 1), v107))
          {
            v108 = 0;
          }

          else
          {
            if (v19 == -1)
            {
              goto LABEL_297;
            }

            v108 = 1;
            v8 = v19;
          }

          if (i == -1 || i >= v8)
          {
            if (!v108)
            {
              a6 = a7;
            }

            if (i != v8 || a5 >= a6)
            {
              break;
            }
          }

LABEL_297:
          v8 = v9 - 8;
          v23 = v9 == v13;
          v9 -= 8;
          if (v23)
          {
            goto LABEL_807;
          }
        }
      }

      if (v15 >= v9)
      {
        goto LABEL_368;
      }

      i = *v15;
      v8 = *v9;
      do
      {
        *v15 = v8;
        *v9 = i;
        v110 = v15 + 1;
        do
        {
          if (v110 == a2)
          {
            goto LABEL_807;
          }

          v111 = *(v16 + 8);
          i = *(v16 + 16);
          if (i == v111)
          {
            goto LABEL_807;
          }

          v15 = v110;
          v8 = *(v111 + 16);
          v19 = *(v111 + 32);
          if (v19 != -1 && (v8 < v19 ? (v112 = v8 == -1) : (v112 = 1), v112))
          {
            v113 = 0;
            v114 = *(v111 + 32);
          }

          else
          {
            v113 = 1;
            v114 = *(v111 + 16);
          }

          i = *v15;
          v115 = *(*v15 + 8);
          if (*(*v15 + 16) == v115)
          {
            goto LABEL_807;
          }

          a5 = *(v111 + 24);
          a6 = *(v111 + 40);
          v116 = *(v115 + 16);
          a7 = *(v115 + 24);
          v117 = *(v115 + 32);
          a8 = *(v115 + 40);
          if (v117 != -1 && (v116 < v117 ? (v118 = v116 == -1) : (v118 = 1), v118))
          {
            v119 = 0;
          }

          else
          {
            if (v116 == -1)
            {
              break;
            }

            v119 = 1;
            v117 = v116;
          }

          if (v114 != -1 && v114 < v117)
          {
            break;
          }

          if (!v119)
          {
            a7 = a8;
          }

          a8 = v113 ? a5 : a6;
          v110 = v15 + 1;
        }

        while (v114 != v117 || a8 >= a7);
        if (v9 == v13)
        {
          goto LABEL_807;
        }

        if (v8 != -1 && v8 < v19 || v19 == -1)
        {
          v19 = v8;
        }

        else
        {
          a5 = a6;
        }

        v9 -= 8;
        while (1)
        {
          v8 = *v9;
          v124 = *(*v9 + 8);
          if (*(*v9 + 16) == v124)
          {
            goto LABEL_807;
          }

          v125 = *(v124 + 16);
          a6 = *(v124 + 24);
          v126 = *(v124 + 32);
          a7 = *(v124 + 40);
          if (v126 != -1 && (v125 >= v126 || v125 == -1))
          {
            break;
          }

          if (v125 != -1)
          {
            v128 = 1;
            v126 = v125;
            goto LABEL_355;
          }

LABEL_364:
          v8 = v9 - 8;
          v23 = v9 == v13;
          v9 -= 8;
          if (v23)
          {
            goto LABEL_807;
          }
        }

        v128 = 0;
LABEL_355:
        if (v19 == -1 || v19 >= v126)
        {
          if (!v128)
          {
            a6 = a7;
          }

          if (v19 != v126 || a5 >= a6)
          {
            continue;
          }
        }

        goto LABEL_364;
      }

      while (v15 < v9);
LABEL_368:
      v130 = v15 - 1;
      if (v15 - 1 != v13)
      {
        v8 = *v130;
        *v13 = *v130;
      }

      a4 = 0;
      *v130 = v16;
    }

    if (i != -1)
    {
      v26 = 1;
      v27 = i;
      goto LABEL_33;
    }

LABEL_42:
    for (i = (v13 + 1); ; i += 8)
    {
      if (i == a2)
      {
        goto LABEL_807;
      }

      v9 = i - 8;
      v8 = *i;
      v29 = *(*i + 8);
      v19 = *(*i + 16);
      if (v19 == v29)
      {
        goto LABEL_807;
      }

      v19 = *(v29 + 16);
      v30 = *(v29 + 32);
      if (v30 != -1 && (v19 < v30 ? (v31 = v19 == -1) : (v31 = 1), v31))
      {
        v32 = 0;
        v19 = *(v29 + 32);
      }

      else
      {
        v32 = 1;
      }

      v33 = *(v16 + 8);
      if (*(v16 + 16) == v33)
      {
        goto LABEL_807;
      }

      a7 = *(v29 + 24);
      a8 = *(v29 + 40);
      v34 = *(v33 + 16);
      a5 = *(v33 + 24);
      v35 = *(v33 + 32);
      a6 = *(v33 + 40);
      if (v35 != -1 && (v34 < v35 ? (v36 = v34 == -1) : (v36 = 1), v36))
      {
        v37 = 0;
        v38 = v35;
      }

      else
      {
        if (v34 == -1)
        {
          continue;
        }

        v37 = 1;
        v38 = v34;
      }

      v39 = v19 != -1 && v19 < v38;
      if (!v39)
      {
        if (v37)
        {
          v40 = a5;
        }

        else
        {
          v40 = a6;
        }

        if (!v32)
        {
          a7 = a8;
        }

        if (v19 != v38 || a7 >= v40)
        {
          break;
        }
      }
    }

    v42 = v34 != -1;
    if (v34 >= v35)
    {
      v42 = 0;
    }

    v43 = v35 == -1 || v42;
    if (v34 == -1)
    {
      v19 = v43;
    }

    else
    {
      v19 = 0;
    }

    v44 = v43 == 0;
    if (v43)
    {
      v45 = v34;
    }

    else
    {
      v45 = v35;
    }

    if (v44)
    {
      a5 = a6;
    }

    v46 = a2 - 1;
    if (v9 != v13)
    {
      break;
    }

    v54 = a2 - 1;
    while (1)
    {
      v9 = v54;
      v55 = (v54 + 1);
      if (i >= v55)
      {
        break;
      }

      v56 = *(*v9 + 8);
      if (*(*v9 + 16) == v56)
      {
        goto LABEL_807;
      }

      v57 = *(v56 + 16);
      v58 = *(v56 + 32);
      if (v58 != -1 && (v57 < v58 ? (v59 = v57 == -1) : (v59 = 1), v59))
      {
        v60 = 0;
        v57 = *(v56 + 32);
        if (v19)
        {
          goto LABEL_137;
        }
      }

      else
      {
        v60 = 1;
        if (v19)
        {
          goto LABEL_137;
        }
      }

      if (v57 == -1 || v57 >= v45)
      {
        a6 = *(v56 + 24);
        a7 = *(v56 + 40);
        if (!v60)
        {
          a6 = *(v56 + 40);
        }

        v54 = (v9 - 8);
        if (v57 != v45 || a6 >= a5)
        {
          continue;
        }
      }

      goto LABEL_137;
    }

    v9 = v55;
LABEL_137:
    v15 = i;
    if (i < v9)
    {
      v63 = *v9;
      v15 = i;
      v19 = v9;
LABEL_139:
      *v15++ = v63;
      *v19 = v8;
      while (2)
      {
        if (v15 == a2)
        {
          goto LABEL_807;
        }

        v8 = *v15;
        v64 = *(*v15 + 8);
        if (*(*v15 + 16) == v64)
        {
          goto LABEL_807;
        }

        v65 = *(v64 + 16);
        v66 = *(v64 + 32);
        if (v66 != -1 && (v65 < v66 ? (v67 = v65 == -1) : (v67 = 1), v67))
        {
          v68 = 0;
          v65 = *(v64 + 32);
        }

        else
        {
          v68 = 1;
        }

        v69 = *(v16 + 8);
        if (*(v16 + 16) == v69)
        {
          goto LABEL_807;
        }

        a7 = *(v64 + 24);
        a8 = *(v64 + 40);
        v70 = *(v69 + 16);
        a5 = *(v69 + 24);
        v71 = *(v69 + 32);
        a6 = *(v69 + 40);
        if (v71 != -1 && (v70 < v71 ? (v72 = v70 == -1) : (v72 = 1), v72))
        {
          v73 = 0;
          result = v71;
LABEL_158:
          if (v65 == -1 || v65 >= result)
          {
            if (v73)
            {
              v75 = a5;
            }

            else
            {
              v75 = a6;
            }

            if (!v68)
            {
              a7 = a8;
            }

            if (v65 != result || a7 >= v75)
            {
              v77 = v70 != -1;
              if (v70 >= v71)
              {
                v77 = 0;
              }

              if (v71 == -1)
              {
                v77 = 1;
              }

              v78 = v70 == -1 && v77;
              if (!v77)
              {
                v70 = v71;
                a5 = a6;
              }

              v79 = (v19 - 8);
              while (v79 + 1 != v13)
              {
                v19 = v79;
                v63 = *v79;
                v80 = *(*v79 + 8);
                if (*(v63 + 16) == v80)
                {
                  break;
                }

                v81 = *(v80 + 16);
                v82 = *(v80 + 32);
                if (v82 != -1 && (v81 < v82 ? (v83 = v81 == -1) : (v83 = 1), v83))
                {
                  result = 0;
                  v81 = *(v80 + 32);
                  if (v78)
                  {
                    goto LABEL_204;
                  }
                }

                else
                {
                  result = 1;
                  if (v78)
                  {
                    goto LABEL_204;
                  }
                }

                if (v81 == -1 || v81 >= v70)
                {
                  a6 = *(v80 + 24);
                  a7 = *(v80 + 40);
                  if (!result)
                  {
                    a6 = *(v80 + 40);
                  }

                  v79 = (v19 - 8);
                  if (v81 != v70 || a6 >= a5)
                  {
                    continue;
                  }
                }

LABEL_204:
                if (v15 < v19)
                {
                  goto LABEL_139;
                }

                goto LABEL_205;
              }

              goto LABEL_807;
            }
          }
        }

        else if (v70 != -1)
        {
          v73 = 1;
          result = v70;
          goto LABEL_158;
        }

        ++v15;
        continue;
      }
    }

LABEL_205:
    v86 = v15 - 1;
    if (v15 - 1 != v13)
    {
      *v13 = *v86;
    }

    *v86 = v16;
    if (i < v9)
    {
LABEL_210:
      result = std::__introsort<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,false>(v13, v15 - 1, a3, a4 & 1);
      a4 = 0;
    }

    else
    {
      v87 = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **>(v13, v15 - 1);
      result = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **>(v15, a2);
      if (result)
      {
        a2 = v15 - 1;
        if (v87)
        {
          return result;
        }

        goto LABEL_2;
      }

      if ((v87 & 1) == 0)
      {
        goto LABEL_210;
      }
    }
  }

  while (1)
  {
    v9 = v46;
    if (v46 + 1 == v13)
    {
      break;
    }

    v47 = *(*v46 + 8);
    if (*(*v9 + 16) == v47)
    {
      break;
    }

    v48 = *(v47 + 16);
    v49 = *(v47 + 32);
    if (v49 != -1 && (v48 < v49 ? (v50 = v48 == -1) : (v50 = 1), v50))
    {
      v51 = 0;
      v48 = *(v47 + 32);
      if (v19)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v51 = 1;
      if (v19)
      {
        goto LABEL_137;
      }
    }

    if (v48 == -1 || v48 >= v45)
    {
      a6 = *(v47 + 24);
      a7 = *(v47 + 40);
      if (!v51)
      {
        a6 = *(v47 + 40);
      }

      v46 = (v9 - 8);
      if (v48 != v45 || a6 >= a5)
      {
        continue;
      }
    }

    goto LABEL_137;
  }

LABEL_807:
  __break(1u);
LABEL_808:
  v289 = 0;
LABEL_809:
  if (v8 != -1 && v8 < v19)
  {
    goto LABEL_822;
  }

  if (!v289)
  {
    a7 = a8;
  }

  if (!v9)
  {
    a5 = a6;
  }

  if (v8 == v19 && a5 < a7)
  {
    goto LABEL_822;
  }

  return result;
}

void *std::__hash_table<ClipperLib::PolyNode *,std::hash<ClipperLib::PolyNode *>,std::equal_to<ClipperLib::PolyNode *>,std::allocator<ClipperLib::PolyNode *>>::find<ClipperLib::PolyNode *>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(a2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= a2)
    {
      v7 = v5 % a2;
    }
  }

  else
  {
    v7 = v5 & (a2 - 1);
  }

  v8 = *(a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= a2)
          {
            v10 %= a2;
          }
        }

        else
        {
          v10 &= a2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void ClipperLib::PolyTree::~PolyTree(ClipperLib::PolyTree *this)
{
  *this = &unk_1EF236340;
  ClipperLib::PolyTree::Clear(this);
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  ClipperLib::PolyNode::~PolyNode(this);
}

{
  ClipperLib::PolyTree::~PolyTree(this);

  JUMPOUT(0x1865EE610);
}

void ClipperLib::PolyNode::~PolyNode(ClipperLib::PolyNode *this)
{
  *this = &unk_1EF23C178;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  ClipperLib::PolyNode::~PolyNode(this);

  JUMPOUT(0x1865EE610);
}

uint64_t *std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(*a2 + 8);
  if (*(*a2 + 16) == v4)
  {
    goto LABEL_138;
  }

  v5 = *result;
  v6 = *(v4 + 16);
  v7 = *(v4 + 32);
  if (v7 != -1 && (v6 < v7 ? (v8 = v6 == -1) : (v8 = 1), v8))
  {
    v9 = 0;
    v10 = *(v4 + 32);
  }

  else
  {
    v9 = 1;
    v10 = *(v4 + 16);
  }

  v11 = *(v5 + 8);
  if (*(v5 + 16) == v11)
  {
    goto LABEL_138;
  }

  v12 = *(v4 + 24);
  v13 = *(v4 + 40);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v16 = *(v11 + 32);
  v17 = *(v11 + 40);
  if (v16 != -1 && (v14 < v16 ? (v18 = v14 == -1) : (v18 = 1), v18))
  {
    v19 = 0;
  }

  else
  {
    if (v14 == -1)
    {
      goto LABEL_38;
    }

    v19 = 1;
    v16 = v14;
  }

  if (v10 != -1 && v10 < v16)
  {
    goto LABEL_38;
  }

  if (!v19)
  {
    v15 = v17;
  }

  v21 = v9 ? v12 : v13;
  if (v10 == v16 && v21 < v15)
  {
LABEL_38:
    v28 = *(*a3 + 8);
    if (*(*a3 + 16) == v28)
    {
      goto LABEL_138;
    }

    v29 = *(v28 + 16);
    v30 = *(v28 + 32);
    if (v30 != -1 && (v29 < v30 ? (v31 = v29 == -1) : (v31 = 1), v31))
    {
      v32 = 0;
      v29 = *(v28 + 32);
    }

    else
    {
      v32 = 1;
    }

    v33 = *(v28 + 24);
    v34 = *(v28 + 40);
    if (v7 != -1 && (v6 < v7 ? (v35 = v6 == -1) : (v35 = 1), v35))
    {
      v36 = 0;
    }

    else
    {
      if (v6 == -1)
      {
LABEL_65:
        *result = *a3;
LABEL_66:
        *a3 = v5;
        return result;
      }

      v36 = 1;
      v7 = v6;
    }

    if (v29 != -1 && v29 < v7)
    {
      goto LABEL_65;
    }

    if (!v36)
    {
      v12 = v13;
    }

    v38 = v32 ? v33 : v34;
    if (v29 == v7 && v38 < v12)
    {
      goto LABEL_65;
    }

    *result = v3;
    *a2 = v5;
    v39 = *(*a3 + 8);
    if (*(*a3 + 16) == v39)
    {
      goto LABEL_138;
    }

    v40 = *(v39 + 16);
    v41 = *(v39 + 32);
    if (v41 != -1 && (v40 < v41 ? (v42 = v40 == -1) : (v42 = 1), v42))
    {
      v43 = 0;
      v40 = *(v39 + 32);
    }

    else
    {
      v43 = 1;
    }

    v55 = *(v5 + 8);
    if (*(v5 + 16) == v55)
    {
      goto LABEL_138;
    }

    v56 = *(v39 + 24);
    v57 = *(v39 + 40);
    v58 = *(v55 + 16);
    v59 = *(v55 + 24);
    v60 = *(v55 + 32);
    v61 = *(v55 + 40);
    if (v60 != -1 && (v58 < v60 ? (v62 = v58 == -1) : (v62 = 1), v62))
    {
      v63 = 0;
    }

    else
    {
      if (v58 == -1)
      {
LABEL_127:
        *a2 = *a3;
        goto LABEL_66;
      }

      v63 = 1;
      v60 = v58;
    }

    if (v40 == -1 || v40 >= v60)
    {
      if (!v63)
      {
        v59 = v61;
      }

      if (!v43)
      {
        v56 = v57;
      }

      if (v40 != v60 || v56 >= v59)
      {
        return result;
      }
    }

    goto LABEL_127;
  }

  v23 = *(*a3 + 8);
  if (*(*a3 + 16) == v23)
  {
LABEL_138:
    __break(1u);
    return result;
  }

  v24 = *(v23 + 16);
  v25 = *(v23 + 32);
  if (v25 != -1 && (v24 < v25 ? (v26 = v24 == -1) : (v26 = 1), v26))
  {
    v27 = 0;
    v24 = *(v23 + 32);
  }

  else
  {
    v27 = 1;
  }

  v44 = *(v23 + 24);
  v45 = *(v23 + 40);
  if (v7 != -1 && (v6 < v7 ? (v46 = v6 == -1) : (v46 = 1), v46))
  {
    v47 = 0;
  }

  else
  {
    if (v6 == -1)
    {
      goto LABEL_93;
    }

    v47 = 1;
    v7 = v6;
  }

  if (v24 == -1 || v24 >= v7)
  {
    if (!v47)
    {
      v12 = v13;
    }

    v48 = v27 ? v44 : v45;
    if (v24 != v7 || v48 >= v12)
    {
      return result;
    }
  }

LABEL_93:
  *a2 = *a3;
  *a3 = v3;
  v49 = *(*a2 + 8);
  if (*(*a2 + 16) == v49)
  {
    goto LABEL_138;
  }

  v50 = *result;
  v51 = *(v49 + 16);
  v52 = *(v49 + 32);
  if (v52 != -1 && (v51 < v52 ? (v53 = v51 == -1) : (v53 = 1), v53))
  {
    v54 = 0;
    v51 = *(v49 + 32);
  }

  else
  {
    v54 = 1;
  }

  v64 = *(v50 + 8);
  if (*(v50 + 16) == v64)
  {
    goto LABEL_138;
  }

  v65 = *(v49 + 24);
  v66 = *(v49 + 40);
  v67 = *(v64 + 16);
  v68 = *(v64 + 24);
  v69 = *(v64 + 32);
  v70 = *(v64 + 40);
  if (v69 != -1 && (v67 < v69 ? (v71 = v67 == -1) : (v71 = 1), v71))
  {
    v72 = 0;
  }

  else
  {
    if (v67 == -1)
    {
LABEL_137:
      *result = *a2;
      *a2 = v50;
      return result;
    }

    v72 = 1;
    v69 = v67;
  }

  if (v51 != -1 && v51 < v69)
  {
    goto LABEL_137;
  }

  if (!v72)
  {
    v68 = v70;
  }

  if (!v54)
  {
    v65 = v66;
  }

  if (v51 == v69 && v65 < v68)
  {
    goto LABEL_137;
  }

  return result;
}

uint64_t *std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(a1, a2, a3);
  v9 = *(*a4 + 8);
  if (*(*a4 + 16) == v9)
  {
    goto LABEL_83;
  }

  v10 = *a3;
  v11 = *(v9 + 16);
  v12 = *(v9 + 32);
  if (v12 != -1 && (v11 < v12 ? (v13 = v11 == -1) : (v13 = 1), v13))
  {
    v14 = 0;
    v11 = *(v9 + 32);
  }

  else
  {
    v14 = 1;
  }

  v15 = *(v10 + 8);
  if (*(v10 + 16) == v15)
  {
    goto LABEL_83;
  }

  v16 = *(v9 + 24);
  v17 = *(v9 + 40);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  v20 = *(v15 + 32);
  v21 = *(v15 + 40);
  if (v20 != -1 && (v18 < v20 ? (v22 = v18 == -1) : (v22 = 1), v22))
  {
    v23 = 0;
  }

  else
  {
    if (v18 == -1)
    {
      goto LABEL_31;
    }

    v23 = 1;
    v20 = v18;
  }

  if (v11 != -1 && v11 < v20)
  {
    goto LABEL_31;
  }

  if (!v23)
  {
    v19 = v21;
  }

  if (!v14)
  {
    v16 = v17;
  }

  if (v11 == v20 && v16 < v19)
  {
LABEL_31:
    *a3 = *a4;
    *a4 = v10;
    v26 = *(*a3 + 8);
    if (*(*a3 + 16) == v26)
    {
      goto LABEL_83;
    }

    v27 = *a2;
    v28 = *(v26 + 16);
    v29 = *(v26 + 32);
    if (v29 != -1 && (v28 < v29 ? (v30 = v28 == -1) : (v30 = 1), v30))
    {
      v31 = 0;
      v28 = *(v26 + 32);
    }

    else
    {
      v31 = 1;
    }

    v32 = *(v27 + 8);
    if (*(v27 + 16) == v32)
    {
      goto LABEL_83;
    }

    v33 = *(v26 + 24);
    v34 = *(v26 + 40);
    v35 = *(v32 + 16);
    v36 = *(v32 + 24);
    v37 = *(v32 + 32);
    v38 = *(v32 + 40);
    if (v37 != -1 && (v35 < v37 ? (v39 = v35 == -1) : (v39 = 1), v39))
    {
      v40 = 0;
    }

    else
    {
      if (v35 == -1)
      {
        goto LABEL_56;
      }

      v40 = 1;
      v37 = v35;
    }

    if (v28 == -1 || v28 >= v37)
    {
      if (!v40)
      {
        v36 = v38;
      }

      if (!v31)
      {
        v33 = v34;
      }

      if (v28 != v37 || v33 >= v36)
      {
        return result;
      }
    }

LABEL_56:
    *a2 = *a3;
    *a3 = v27;
    v41 = *(*a2 + 8);
    if (*(*a2 + 16) != v41)
    {
      v42 = *a1;
      v43 = *(v41 + 16);
      v44 = *(v41 + 32);
      if (v44 != -1 && (v43 < v44 ? (v45 = v43 == -1) : (v45 = 1), v45))
      {
        v46 = 0;
        v43 = *(v41 + 32);
      }

      else
      {
        v46 = 1;
      }

      v47 = *(v42 + 8);
      if (*(v42 + 16) != v47)
      {
        v48 = *(v41 + 24);
        v49 = *(v41 + 40);
        v50 = *(v47 + 16);
        v51 = *(v47 + 24);
        v52 = *(v47 + 32);
        v53 = *(v47 + 40);
        if (v52 != -1 && (v50 < v52 ? (v54 = v50 == -1) : (v54 = 1), v54))
        {
          v55 = 0;
        }

        else
        {
          if (v50 == -1)
          {
            goto LABEL_81;
          }

          v55 = 1;
          v52 = v50;
        }

        if (v43 == -1 || v43 >= v52)
        {
          if (!v55)
          {
            v51 = v53;
          }

          if (!v46)
          {
            v48 = v49;
          }

          if (v43 != v52 || v48 >= v51)
          {
            return result;
          }
        }

LABEL_81:
        *a1 = *a2;
        *a2 = v42;
        return result;
      }
    }

LABEL_83:
    __break(1u);
  }

  return result;
}

uint64_t *std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(a1, a2, a3, a4);
  v11 = *(*a5 + 8);
  if (*(*a5 + 16) == v11)
  {
    goto LABEL_108;
  }

  v12 = *a4;
  v13 = *(v11 + 16);
  v14 = *(v11 + 32);
  if (v14 != -1 && (v13 < v14 ? (v15 = v13 == -1) : (v15 = 1), v15))
  {
    v16 = 0;
    v13 = *(v11 + 32);
  }

  else
  {
    v16 = 1;
  }

  v17 = *(v12 + 8);
  if (*(v12 + 16) == v17)
  {
    goto LABEL_108;
  }

  v18 = *(v11 + 24);
  v19 = *(v11 + 40);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  v22 = *(v17 + 32);
  v23 = *(v17 + 40);
  if (v22 != -1 && (v20 < v22 ? (v24 = v20 == -1) : (v24 = 1), v24))
  {
    v25 = 0;
  }

  else
  {
    if (v20 == -1)
    {
      goto LABEL_31;
    }

    v25 = 1;
    v22 = v20;
  }

  if (v13 != -1 && v13 < v22)
  {
    goto LABEL_31;
  }

  if (!v25)
  {
    v21 = v23;
  }

  if (!v16)
  {
    v18 = v19;
  }

  if (v13 == v22 && v18 < v21)
  {
LABEL_31:
    *a4 = *a5;
    *a5 = v12;
    v28 = *(*a4 + 8);
    if (*(*a4 + 16) == v28)
    {
      goto LABEL_108;
    }

    v29 = *a3;
    v30 = *(v28 + 16);
    v31 = *(v28 + 32);
    if (v31 != -1 && (v30 < v31 ? (v32 = v30 == -1) : (v32 = 1), v32))
    {
      v33 = 0;
      v30 = *(v28 + 32);
    }

    else
    {
      v33 = 1;
    }

    v34 = *(v29 + 8);
    if (*(v29 + 16) == v34)
    {
      goto LABEL_108;
    }

    v35 = *(v28 + 24);
    v36 = *(v28 + 40);
    v37 = *(v34 + 16);
    v38 = *(v34 + 24);
    v39 = *(v34 + 32);
    v40 = *(v34 + 40);
    if (v39 != -1 && (v37 < v39 ? (v41 = v37 == -1) : (v41 = 1), v41))
    {
      v42 = 0;
    }

    else
    {
      if (v37 == -1)
      {
        goto LABEL_56;
      }

      v42 = 1;
      v39 = v37;
    }

    if (v30 == -1 || v30 >= v39)
    {
      if (!v42)
      {
        v38 = v40;
      }

      if (!v33)
      {
        v35 = v36;
      }

      if (v30 != v39 || v35 >= v38)
      {
        return result;
      }
    }

LABEL_56:
    *a3 = *a4;
    *a4 = v29;
    v43 = *(*a3 + 8);
    if (*(*a3 + 16) == v43)
    {
      goto LABEL_108;
    }

    v44 = *a2;
    v45 = *(v43 + 16);
    v46 = *(v43 + 32);
    if (v46 != -1 && (v45 < v46 ? (v47 = v45 == -1) : (v47 = 1), v47))
    {
      v48 = 0;
      v45 = *(v43 + 32);
    }

    else
    {
      v48 = 1;
    }

    v49 = *(v44 + 8);
    if (*(v44 + 16) == v49)
    {
      goto LABEL_108;
    }

    v50 = *(v43 + 24);
    v51 = *(v43 + 40);
    v52 = *(v49 + 16);
    v53 = *(v49 + 24);
    v54 = *(v49 + 32);
    v55 = *(v49 + 40);
    if (v54 != -1 && (v52 < v54 ? (v56 = v52 == -1) : (v56 = 1), v56))
    {
      v57 = 0;
    }

    else
    {
      if (v52 == -1)
      {
        goto LABEL_81;
      }

      v57 = 1;
      v54 = v52;
    }

    if (v45 == -1 || v45 >= v54)
    {
      if (!v57)
      {
        v53 = v55;
      }

      if (!v48)
      {
        v50 = v51;
      }

      if (v45 != v54 || v50 >= v53)
      {
        return result;
      }
    }

LABEL_81:
    *a2 = *a3;
    *a3 = v44;
    v58 = *(*a2 + 8);
    if (*(*a2 + 16) != v58)
    {
      v59 = *a1;
      v60 = *(v58 + 16);
      v61 = *(v58 + 32);
      if (v61 != -1 && (v60 < v61 ? (v62 = v60 == -1) : (v62 = 1), v62))
      {
        v63 = 0;
        v60 = *(v58 + 32);
      }

      else
      {
        v63 = 1;
      }

      v64 = *(v59 + 8);
      if (*(v59 + 16) != v64)
      {
        v65 = *(v58 + 24);
        v66 = *(v58 + 40);
        v67 = *(v64 + 16);
        v68 = *(v64 + 24);
        v69 = *(v64 + 32);
        v70 = *(v64 + 40);
        if (v69 != -1 && (v67 < v69 ? (v71 = v67 == -1) : (v71 = 1), v71))
        {
          v72 = 0;
        }

        else
        {
          if (v67 == -1)
          {
            goto LABEL_106;
          }

          v72 = 1;
          v69 = v67;
        }

        if (v60 == -1 || v60 >= v69)
        {
          if (!v72)
          {
            v68 = v70;
          }

          if (!v63)
          {
            v65 = v66;
          }

          if (v60 != v69 || v65 >= v68)
          {
            return result;
          }
        }

LABEL_106:
        *a1 = *a2;
        *a2 = v59;
        return result;
      }
    }

LABEL_108:
    __break(1u);
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **>(uint64_t result, void *a2)
{
  v3 = result;
  v4 = (a2 - result) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(result, (result + 8), a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(result, (result + 8), (result + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(result, (result + 8), (result + 16), (result + 24), a2 - 1);
        return 1;
    }

    goto LABEL_16;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
LABEL_16:
    v12 = result + 16;
    result = std::__sort3[abi:fe200100]<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,0>(result, (result + 8), (result + 16));
    v13 = v3 + 3;
    if (v3 + 3 != a2)
    {
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v13;
        v17 = *(*v13 + 8);
        if (*(*v13 + 16) == v17)
        {
          goto LABEL_111;
        }

        v18 = *(v17 + 16);
        v19 = *(v17 + 32);
        if (v19 != -1 && (v18 < v19 ? (v20 = v18 == -1) : (v20 = 1), v20))
        {
          v21 = 0;
          v18 = *(v17 + 32);
        }

        else
        {
          v21 = 1;
        }

        v22 = *(*v12 + 8);
        if (*(*v12 + 16) == v22)
        {
          goto LABEL_111;
        }

        v23 = *(v17 + 24);
        v24 = *(v17 + 40);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v22 + 40);
        if (v27 != -1 && (v25 < v27 ? (v29 = v25 == -1) : (v29 = 1), v29))
        {
          v30 = 0;
        }

        else
        {
          if (v25 == -1)
          {
            break;
          }

          v30 = 1;
          v27 = v25;
        }

        if (v18 != -1 && v18 < v27)
        {
          break;
        }

        if (!v30)
        {
          v26 = v28;
        }

        if (!v21)
        {
          v23 = v24;
        }

        if (v18 == v27 && v23 < v26)
        {
          break;
        }

LABEL_82:
        v12 = v13;
        v14 += 8;
        if (++v13 == a2)
        {
          return 1;
        }
      }

      *v13 = *v12;
      v33 = v14;
      while (1)
      {
        v34 = *(v16 + 8);
        if (*(v16 + 16) == v34)
        {
          goto LABEL_111;
        }

        v35 = *(v34 + 16);
        v36 = *(v34 + 32);
        if (v36 != -1 && (v35 < v36 ? (v37 = v35 == -1) : (v37 = 1), v37))
        {
          v38 = 0;
          v35 = *(v34 + 32);
        }

        else
        {
          v38 = 1;
        }

        v39 = *(v3 + v33 + 8);
        v40 = *(v39 + 8);
        result = *(v39 + 16);
        if (result == v40)
        {
          goto LABEL_111;
        }

        v41 = *(v34 + 24);
        v42 = *(v34 + 40);
        result = *(v40 + 16);
        v43 = *(v40 + 24);
        v44 = *(v40 + 32);
        v45 = *(v40 + 40);
        if (v44 != -1 && (result < v44 ? (v46 = result == -1) : (v46 = 1), v46))
        {
          v47 = 0;
        }

        else
        {
          if (result == -1)
          {
            goto LABEL_79;
          }

          v47 = 1;
          v44 = result;
        }

        if (v35 == -1 || v35 >= v44)
        {
          if (!v47)
          {
            v43 = v45;
          }

          if (!v38)
          {
            v41 = v42;
          }

          if (v35 != v44 || v41 >= v43)
          {
            v50 = (v3 + v33 + 16);
LABEL_81:
            *v50 = v16;
            if (++v15 != 8)
            {
              goto LABEL_82;
            }

            return v13 + 1 == a2;
          }
        }

LABEL_79:
        *(v3 + v33 + 16) = v39;
        v33 -= 8;
        if (v33 == -16)
        {
          v50 = v3;
          goto LABEL_81;
        }
      }
    }

    return 1;
  }

  v5 = *(a2 - 1);
  v6 = *(v5 + 8);
  if (*(v5 + 16) != v6)
  {
    v7 = *result;
    v8 = *(v6 + 16);
    v9 = *(v6 + 32);
    if (v9 != -1 && (v8 < v9 ? (v10 = v8 == -1) : (v10 = 1), v10))
    {
      v11 = 0;
      v8 = *(v6 + 32);
    }

    else
    {
      v11 = 1;
    }

    v51 = *(v7 + 8);
    if (*(v7 + 16) != v51)
    {
      v52 = *(v6 + 24);
      v53 = *(v6 + 40);
      v54 = *(v51 + 16);
      v55 = *(v51 + 24);
      v56 = *(v51 + 32);
      v57 = *(v51 + 40);
      if (v56 != -1 && (v54 < v56 ? (v58 = v54 == -1) : (v58 = 1), v58))
      {
        v59 = 0;
      }

      else
      {
        if (v54 == -1)
        {
LABEL_108:
          *result = v5;
          *(a2 - 1) = v7;
          return 1;
        }

        v59 = 1;
        v56 = v54;
      }

      if (v8 == -1 || v8 >= v56)
      {
        if (!v59)
        {
          v55 = v57;
        }

        if (!v11)
        {
          v52 = v53;
        }

        if (v8 != v56 || v52 >= v55)
        {
          return 1;
        }
      }

      goto LABEL_108;
    }
  }

LABEL_111:
  __break(1u);
  return result;
}

CFArrayRef CGPathCreateSeparateComponents(CGPathRef path, BOOL evenOddFillRule)
{
  if (!path)
  {
    return 0;
  }

  v2 = evenOddFillRule;
  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v4 = CFGetTypeID(path);
    if (v4 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  memset(v19, 0, sizeof(v19));
  memset(v18, 0, 29);
  v17 = 0u;
  v16 = 0u;
  v15 = &unk_1EF236340;
  memset(&v18[5], 0, 24);
  memset(&v14, 0, sizeof(v14));
  clip<ClipperLib::PolyTree>(&v14, 1, path, v2, 1, 0, v2, v19, &v15);
  v12 = v14;
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformInvert(&v13, &v12);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v6 = *(&v17 + 1);
  v7 = v18[0];
  while (v6 != v7)
  {
    v8 = *v6;
    v12 = v14;
    v11 = v13;
    append_tree_path_component(v8, v19, &v12, &v11, Mutable);
    ++v6;
  }

  ClipperLib::PolyTree::~PolyTree(&v15);
  v15 = v19;
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](v9);
  return Mutable;
}

void sub_183FFE720(_Unwind_Exception *a1)
{
  ClipperLib::PolyTree::~PolyTree((v1 - 160));
  *(v1 - 160) = v1 - 56;
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](v3);
  _Unwind_Resume(a1);
}

__CFArray *CGPathCreateSeparateComponentSubpathIndexes(CGPathRef path, int a2)
{
  if (!path)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v4 = CFGetTypeID(path);
    if (v4 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  memset(v14, 0, sizeof(v14));
  memset(v13, 0, 29);
  v12 = 0u;
  v11 = 0u;
  v10 = &unk_1EF236340;
  memset(&v13[5], 0, 24);
  clip<ClipperLib::PolyTree>(v9, 1, path, a2, 1, 0, a2, v14, &v10);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v6 = *(&v12 + 1);
  v7 = v13[0];
  while (v6 != v7)
  {
    append_tree_path_component_indexes(*v6++, Mutable);
  }

  ClipperLib::PolyTree::~PolyTree(&v10);
  v10 = v14;
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&v10);
  return Mutable;
}

void sub_183FFE868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  ClipperLib::PolyTree::~PolyTree(&a17);
  a17 = (v17 - 56);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&a17);
  _Unwind_Resume(a1);
}

CGPathRef CGPathCreateCopyByFlattening(CGPathRef path, CGFloat flatteningThreshold)
{
  if (!path)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v4 = CFGetTypeID(path);
    if (v4 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  Mutable = CGPathCreateMutable();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CGPathCreateCopyByFlattening_block_invoke;
  v7[3] = &__block_descriptor_48_e36_v16__0r__CGPathElement_i__CGPoint__8l;
  v7[4] = Mutable;
  *&v7[5] = flatteningThreshold;
  CGPathApplyWithBlock(path, v7);
  return Mutable;
}

void __CGPathCreateCopyByFlattening_block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2 > 1)
  {
    if (v4 == 2)
    {
      CurrentPoint = CGPathGetCurrentPoint(*(a1 + 32));
      v10 = *(a2 + 8);
      v11 = vdupq_n_s64(0x3FE5555555555555uLL);
      v12 = vmlaq_f64(v10[1], v11, vsubq_f64(*v10, v10[1]));
      v21 = vmlaq_f64(CurrentPoint, v11, vsubq_f64(*v10, CurrentPoint));
      v22 = v12;
      v13 = v10[1];
    }

    else
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          v5 = *(a1 + 32);

          CGPathCloseSubpath(v5);
        }

        return;
      }

      CurrentPoint = CGPathGetCurrentPoint(*(a1 + 32));
      v14 = *(a2 + 8);
      v15 = v14[1];
      v21 = *v14;
      v22 = v15;
      v13 = v14[2];
    }

    v23 = v13;
    subdivide_bezier_with_flatness(*(a1 + 40), &CurrentPoint, *(a1 + 32));
    return;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v6 = *(a1 + 32);
      v7 = *(a2 + 8);
      v8 = *v7;
      v9 = v7[1];

      CGPathAddLineToPoint(v6, 0, v8, v9);
    }
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = *(a2 + 8);
    v18 = *v17;
    v19 = v17[1];

    CGPathMoveToPoint(v16, 0, v18, v19);
  }
}

void subdivide_bezier_with_flatness(double a1, float64x2_t *a2, CGPath *a3)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[1];
  v8 = vsubq_f64(v7, *a2);
  v9 = vsubq_f64(v6, v7);
  v10 = vsubq_f64(v9, v8);
  v11 = vextq_s8(v10, v10, 8uLL);
  v12 = vsubq_f64(vsubq_f64(v5, v6), v9);
  v13 = vextq_s8(v12, v12, 8uLL);
  v14 = vzip1q_s64(v11, v13);
  v15 = vzip2q_s64(v11, v13);
  v16 = vmlaq_f64(vmulq_f64(v14, v14), v15, v15);
  if (v16.f64[0] <= v16.f64[1])
  {
    v16.f64[0] = v16.f64[1];
  }

  v17 = a1 * a1;
  v18 = v16.f64[0] * 9.0 * 0.0625;
  if (v18 > a1 * a1)
  {
    v20 = vextq_s8(*a2, *a2, 8uLL);
    v21 = vaddq_f64(v8, v10);
    v22 = vsubq_f64(v13, v11);
    __asm
    {
      FMOV            V5.2D, #3.0
      FMOV            V6.2D, #6.0
    }

    v29 = vmulq_f64(v22, _Q6);
    v30 = vmlaq_f64(v22, _Q5, vextq_s8(v21, v21, 8uLL));
    v31 = vmulq_f64(vaddq_f64(v11, v22), _Q6);
    v32 = 1;
    __asm
    {
      FMOV            V0.2D, #0.125
      FMOV            V3.2D, #0.25
      FMOV            V4.2D, #0.5
    }

    do
    {
      v29 = vmulq_f64(v29, _Q0);
      v31 = vsubq_f64(vmulq_f64(v31, _Q3), v29);
      v30 = vsubq_f64(vmulq_f64(v30, _Q4), vmulq_f64(v31, _Q4));
      v36 = 2 * v32;
      v18 = v18 * 0.0625;
      if (v18 <= v17)
      {
        break;
      }

      v37 = v32 > 0x8000;
      v32 *= 2;
    }

    while (!v37);
    v38 = v36 - 1;
    v39 = v29;
    do
    {
      v41 = vaddq_f64(v30, v31);
      v42 = vaddq_f64(v20, v30);
      v40 = vaddq_f64(v29, v31);
      CGPathAddLineToPoint(a3, 0, v42.f64[1], v42.f64[0]);
      v31 = v40;
      v30 = v41;
      v29 = v39;
      v20 = v42;
      --v38;
    }

    while (v38);
    v5 = a2[3];
  }

  CGPathAddLineToPoint(a3, 0, v5.f64[0], v5.f64[1]);
}

uint64_t PDFMarkedContentItem::PDFMarkedContentItem(uint64_t result, int a2, void *a3)
{
  *result = a2;
  if (a3)
  {
    v3 = a3[2];
  }

  else
  {
    v3 = 0;
  }

  *(result + 8) = v3;
  *(result + 32) = 0;
  if (a2)
  {
    *(result + 16) = 0;
    v4 = -1;
  }

  else
  {
    v5 = a3[11];
    a3[11] = v5 + 1;
    *(result + 16) = v5;
    v4 = a3[12];
    if (v4 == -1)
    {
      v6 = a3[1];
      v4 = *(v6 + 640);
      *(v6 + 640) = v4 + 1;
      a3[12] = v4;
    }
  }

  *(result + 24) = v4;
  return result;
}

uint64_t rewind(void *a1)
{
  result = a1[2];
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t read_bytes(void *a1, _BYTE *a2, uint64_t a3)
{
  v5 = a1[2];
  if (!v5)
  {
    operator new();
  }

  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = (*(*v5 + 32))(v5);
    if (v7 == -1)
    {
      break;
    }

    a2[v6++] = v7;
    if (a3 == v6)
    {
      return a3;
    }
  }

  return v6;
}

void sub_183FFF4B8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x183FFF450);
  }

  _Unwind_Resume(exception_object);
}

uint64_t release_state(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    if (*v1)
    {
      CFRelease(*v1);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      CFRelease(v3);
    }

    JUMPOUT(0x1865EE610);
  }

  return result;
}

uint64_t create_state(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

void CGBufferStorage::FreeStorage(CGBufferStorage *this, void *a2, void *a3)
{
  v4 = a2[2];
  if (v4)
  {
    free(v4);
  }

  free(a2);
}

uint64_t CGBufferStorage::UnMapStorage(uint64_t this, void *a2, void *a3)
{
  if (this)
  {
    return munmap(*(this + 48), *(this + 56));
  }

  return this;
}

char *CGBufferStorage::Create(size_t a1, uint64_t a2)
{
  v2 = a2;
  if ((1 << a2) <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = 1 << a2;
  }

  if ((a2 & 0x600) != 0)
  {
    v5 = 1 << a2;
  }

  else
  {
    v5 = v4;
  }

  memptr = 0;
  if ((a2 & 0x600) == 0)
  {
    result = malloc_type_malloc(0x60uLL, 0x1080040089CC4A7uLL);
    if (!result)
    {
      return result;
    }

    v17 = result;
    v22 = CGBufferStorage::FreeStorageExternalBuffer;
    if ((v2 & 0x1000) != 0)
    {
      v19 = 0;
      LOBYTE(v18) = 0;
      v21 = 0;
    }

    else
    {
      v21 = (a1 + v4 - 1) & -v4;
      if (malloc_type_posix_memalign(&memptr, v4, v21, 0xAE694F5BuLL))
      {
        free(v17);
        return 0;
      }

      LOBYTE(v18) = 0;
      v22 = CGBufferStorage::FreeStorage;
      v19 = memptr;
    }

    v8 = 96;
    result = v17;
    goto LABEL_20;
  }

  v6 = (a2 << 53 >> 63) & (2 * *MEMORY[0x1E69E9AC8]);
  v7 = (((a1 + 127) & 0xFFFFFFFFFFFFFFE0) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  v8 = v7 + v6;
  v9 = mmap(0, v7 + v6, 3, 4097, 905969664, 0);
  if (v9 == -1)
  {
    return 0;
  }

  v17 = v9;
  v18 = (v2 & 0x200) >> 9;
  v19 = &v9[(v6 >> 1) + 96];
  if ((v2 & 0x200) != 0)
  {
    v19 = &v9[v6 >> 1];
    result = &v9[v8 - (v6 >> 1) - 96];
  }

  else
  {
    result = &v9[v6 >> 1];
  }

  memptr = v19;
  v21 = v7 - 96;
  v22 = CGBufferStorage::UnMapStorage;
LABEL_20:
  *(result + 10) = 0;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *result = 0u;
  atomic_store(1uLL, result);
  *(result + 6) = v17;
  *(result + 7) = v8;
  *(result + 1) = v5;
  *(result + 2) = v19;
  *(result + 3) = v21;
  *(result + 9) = 0;
  *(result + 10) = 0;
  *(result + 8) = v22;
  result[88] = v18 & 1;
  if (v21 < a1 || (v18 & 1) == 0 && (v24 = v19 > (&v19[v21 - a1] & -v5), v19 = (&v19[v21 - a1] & -v5), v24))
  {
    add = atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL);
    if (add <= 0)
    {
      _CGHandleAssert("Release", 252, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/CGBuf.h", "oldVal >= 1", "CGBuf released with zero refcount", v14, v15, v16, v25);
    }

    if (add == 1)
    {
      CGBufferStorage::~CGBufferStorage(result, v10, v11, v12, v13, v14, v15, v16);
    }

    return 0;
  }

  *(result + 4) = v19;
  *(result + 5) = a1;
  return result;
}

void CGBufferStorage::~CGBufferStorage(atomic_ullong *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(this, memory_order_acquire))
  {
    _CGHandleAssert("~CGBufferStorage", 208, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/CGBuf.h", "0 == atomic_load_explicit(&refCount, std::memory_order_acquire)", "CGBufferStorage destructed with non-zero reference count", a6, a7, a8, v11);
  }

  v9 = this[9];
  if (v9)
  {
    v9(this[10], this[2]);
  }

  v10 = this[8];
  if (v10)
  {
    v10(this, this[6]);
  }
}

char *CGBufferStorage::CreateWithBuffer(uint64_t this, void *a2, uint64_t a3, void (*a4)(void *, void *), void *a5)
{
  result = CGBufferStorage::Create(0, 4101);
  if (result)
  {
    *(result + 1) = -this & this;
    *(result + 2) = this;
    *(result + 4) = this;
    *(result + 5) = a2;
    *(result + 3) = a2;
    *(result + 9) = a3;
    *(result + 10) = a4;
  }

  return result;
}

void CGBufferStorage::ReleaseImageBlockSet(uint64_t this, void *a2, void *a3)
{
  if (this)
  {
    CGImageBlockSetRelease(this);
  }
}

char *CGBufferStorage::CreateWithImageBlockSet(char *result, unint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 15) > a2)
    {
      v3 = *&result[8 * a2 + 128];
      if (v3)
      {
        v4 = *(result + 6);
        v5 = *(result + 7);
        if (v4 && v5 != 0)
        {
          v7 = v3[5];
          v8 = *(result + 9);
          atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
          v9 = *v3;
          result = CGBufferStorage::Create(0, 4101);
          if (result)
          {
            v10 = v8 * v4 + (v5 - 1) * v7;
            *(result + 1) = -v9 & v9;
            *(result + 2) = v9;
            *(result + 4) = v9;
            *(result + 5) = v10;
            *(result + 3) = v10;
            *(result + 9) = CGBufferStorage::ReleaseImageBlockSet;
            *(result + 10) = v2;
            return result;
          }

          CGImageBlockSetRelease(v2);
        }
      }
    }

    return 0;
  }

  return result;
}

void CGBufferStorage::ReleaseCFData(CFTypeRef this, void *a2, void *a3)
{
  if (this)
  {
    CFRelease(this);
  }
}

char *CGBufferStorage::CreateWithCFData(CGBufferStorage *this, const __CFData *a2)
{
  if (!this)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(this);
  Length = CFDataGetLength(this);
  v5 = CGBufferStorage::Create(0, 4101);
  v6 = v5;
  if (v5)
  {
    *(v5 + 1) = -BytePtr & BytePtr;
    *(v5 + 2) = BytePtr;
    *(v5 + 4) = BytePtr;
    *(v5 + 5) = Length;
    *(v5 + 3) = Length;
    *(v5 + 9) = CGBufferStorage::ReleaseCFData;
    *(v5 + 10) = this;
    CFRetain(this);
  }

  return v6;
}

uint64_t CGBufferStorage::Resize(CGBufferStorage *this, unint64_t a2)
{
  v2 = *(this + 3);
  v3 = v2 - a2;
  if (v2 < a2)
  {
    return 0;
  }

  v5 = *(this + 2);
  if ((*(this + 88) & 1) == 0)
  {
    v6 = (v3 + v5) & -*(this + 1);
    v7 = v5 > v6;
    v5 = v6;
    if (v7)
    {
      return 0;
    }
  }

  *(this + 4) = v5;
  *(this + 5) = a2;
  return 1;
}

void CGBufferStorage::DataProviderReleaseInfoCallback(atomic_ullong *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this)
  {
    add = atomic_fetch_add(this, 0xFFFFFFFFFFFFFFFFLL);
    if (add <= 0)
    {
      _CGHandleAssert("Release", 252, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/CGBuf.h", "oldVal >= 1", "CGBuf released with zero refcount", a6, a7, a8, v8);
    }

    if (add == 1)
    {

      CGBufferStorage::~CGBufferStorage(this, a2, a3, a4, a5, a6, a7, a8);
    }
  }
}

void CGBufferStorage::BitmapContextReleaseDataCallback(atomic_ullong *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this)
  {
    add = atomic_fetch_add(this, 0xFFFFFFFFFFFFFFFFLL);
    if (add <= 0)
    {
      _CGHandleAssert("Release", 252, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/CGBuf.h", "oldVal >= 1", "CGBuf released with zero refcount", a6, a7, a8, v8);
    }

    if (add == 1)
    {

      CGBufferStorage::~CGBufferStorage(this, a2, a3, a4, a5, a6, a7, a8);
    }
  }
}

void CGBuf::CGBuf(CGBuf *this, CGContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 40) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  if (!a2)
  {
    return;
  }

  if (*(a2 + 4) == 1129601108 && *(a2 + 6) == 4)
  {
    v10 = *(*(a2 + 4) + 8);
  }

  else
  {
    handle_invalid_context("CGBitmapContextGetWidth", a2, a3, a4, a5, a6, a7, a8);
    v10 = 0;
    if (*(a2 + 4) != 1129601108)
    {
      goto LABEL_8;
    }
  }

  if (*(a2 + 6) == 4)
  {
    v11 = *(*(a2 + 4) + 16);
    goto LABEL_9;
  }

LABEL_8:
  handle_invalid_context("CGBitmapContextGetHeight", a2, a3, a4, a5, a6, a7, a8);
  v11 = 0;
  if (*(a2 + 4) != 1129601108)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (*(a2 + 6) != 4)
  {
LABEL_11:
    handle_invalid_context("CGBitmapContextGetBitmapInfo", a2, a3, a4, a5, a6, a7, a8);
    v12 = 0;
    if (*(a2 + 4) != 1129601108)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v12 = *(*(a2 + 4) + 40);
LABEL_12:
  if (*(a2 + 6) == 4)
  {
    v13 = *(*(a2 + 4) + 72);
    goto LABEL_15;
  }

LABEL_14:
  handle_invalid_context("CGBitmapContextGetBitsPerPixel", a2, a3, a4, a5, a6, a7, a8);
  v13 = 0;
  if (*(a2 + 4) != 1129601108)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (*(a2 + 6) != 4)
  {
LABEL_17:
    handle_invalid_context("CGBitmapContextGetBitsPerComponent", a2, a3, a4, a5, a6, a7, a8);
    v14 = 0;
    if (*(a2 + 4) != 1129601108)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v14 = *(*(a2 + 4) + 80);
LABEL_18:
  if (*(a2 + 6) == 4)
  {
    v15 = *(*(a2 + 4) + 32);
    goto LABEL_21;
  }

LABEL_20:
  handle_invalid_context("CGBitmapContextGetColorSpace", a2, a3, a4, a5, a6, a7, a8);
  v15 = 0;
LABEL_21:
  CGBuf::Init(this, v10, v11, v12, v13, v14, v15, 0, 0, 4);
  if (*(a2 + 4) == 1129601108 && *(a2 + 6) == 4)
  {
    v22 = *(*(a2 + 4) + 64);
  }

  else
  {
    handle_invalid_context("CGBitmapContextGetData", a2, v16, v17, v18, v19, v20, v21);
    v22 = 0;
  }

  v24 = *(this + 4);
  v23 = *(this + 5);
  v25 = *(this + 3);
  v26 = *(this + 324);
  v27 = CGBufferStorage::Create(0, 4101);
  if (v27)
  {
    v28 = (v24 - 1) * v23 + ((v25 * v26 + 7) >> 3);
    *(v27 + 1) = -v22 & v22;
    *(v27 + 2) = v22;
    *(v27 + 4) = v22;
    *(v27 + 5) = v28;
    *(v27 + 3) = v28;
    *(v27 + 9) = ReleaseCGContext;
    *(v27 + 10) = a2;
  }

  *this = v27;
  CFRetain(a2);
  *(this + 2) = a2;
}

{
  *(this + 40) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  if (!a2)
  {
    return;
  }

  if (*(a2 + 4) == 1129601108 && *(a2 + 6) == 4)
  {
    v10 = *(*(a2 + 4) + 8);
  }

  else
  {
    handle_invalid_context("CGBitmapContextGetWidth", a2, a3, a4, a5, a6, a7, a8);
    v10 = 0;
    if (*(a2 + 4) != 1129601108)
    {
      goto LABEL_8;
    }
  }

  if (*(a2 + 6) == 4)
  {
    v11 = *(*(a2 + 4) + 16);
    goto LABEL_9;
  }

LABEL_8:
  handle_invalid_context("CGBitmapContextGetHeight", a2, a3, a4, a5, a6, a7, a8);
  v11 = 0;
  if (*(a2 + 4) != 1129601108)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (*(a2 + 6) != 4)
  {
LABEL_11:
    handle_invalid_context("CGBitmapContextGetBitmapInfo", a2, a3, a4, a5, a6, a7, a8);
    v12 = 0;
    if (*(a2 + 4) != 1129601108)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v12 = *(*(a2 + 4) + 40);
LABEL_12:
  if (*(a2 + 6) == 4)
  {
    v13 = *(*(a2 + 4) + 72);
    goto LABEL_15;
  }

LABEL_14:
  handle_invalid_context("CGBitmapContextGetBitsPerPixel", a2, a3, a4, a5, a6, a7, a8);
  v13 = 0;
  if (*(a2 + 4) != 1129601108)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (*(a2 + 6) != 4)
  {
LABEL_17:
    handle_invalid_context("CGBitmapContextGetBitsPerComponent", a2, a3, a4, a5, a6, a7, a8);
    v14 = 0;
    if (*(a2 + 4) != 1129601108)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v14 = *(*(a2 + 4) + 80);
LABEL_18:
  if (*(a2 + 6) == 4)
  {
    v15 = *(*(a2 + 4) + 32);
    goto LABEL_21;
  }

LABEL_20:
  handle_invalid_context("CGBitmapContextGetColorSpace", a2, a3, a4, a5, a6, a7, a8);
  v15 = 0;
LABEL_21:
  CGBuf::Init(this, v10, v11, v12, v13, v14, v15, 0, 0, 4);
  if (*(a2 + 4) == 1129601108 && *(a2 + 6) == 4)
  {
    v22 = *(*(a2 + 4) + 64);
  }

  else
  {
    handle_invalid_context("CGBitmapContextGetData", a2, v16, v17, v18, v19, v20, v21);
    v22 = 0;
  }

  v24 = *(this + 4);
  v23 = *(this + 5);
  v25 = *(this + 3);
  v26 = *(this + 324);
  v27 = CGBufferStorage::Create(0, 4101);
  if (v27)
  {
    v28 = (v24 - 1) * v23 + ((v25 * v26 + 7) >> 3);
    *(v27 + 1) = -v22 & v22;
    *(v27 + 2) = v22;
    *(v27 + 4) = v22;
    *(v27 + 5) = v28;
    *(v27 + 3) = v28;
    *(v27 + 9) = ReleaseCGContext;
    *(v27 + 10) = a2;
  }

  *this = v27;
  CFRetain(a2);
  *(this + 2) = a2;
}

void CGBuf::Init(int8x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, CGColorSpace *cf, const void *a8, __int8 a9, uint64_t a10)
{
  v11 = cf;
  v34 = a5;
  v35 = a4;
  v33 = a6;
  v32 = cf;
  if ((a10 & 0x800) != 0)
  {
    LegalizeForContext(&v35, &v34, &v33, &v32);
    a5 = v34;
    a4 = v35;
    a6 = v33;
    v11 = v32;
  }

  a1[3] = a2;
  a1[4] = a3;
  a1[40].i32[0] = a4;
  a1[40].i8[4] = a5;
  a1[40].i8[5] = a6;
  a1[40].i8[7] = a9;
  if (!v11)
  {
    v17 = a5 / a6;
    v18 = a5 % a6;
    a1[40].i8[6] = a5 / a6;
    v19 = (a4 & 0xF0000) != 0x20000 && (a5 != 16 || a6 != 5 || (a4 & 0x1F) != 0);
    if (v18 == 1)
    {
      v18 = v19;
    }

    if ((a4 & 0x1F) != 0 && !v18)
    {
      LOBYTE(v17) = v17 - 1;
      a1[40].i8[6] = v17;
    }

    switch(v17)
    {
      case 4u:
        DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
        break;
      case 3u:
        DeviceCMYK = CGColorSpaceCreateDeviceRGB();
        break;
      case 1u:
        DeviceCMYK = CGColorSpaceCreateDeviceGray();
        break;
      default:
        DeviceCMYK = 0;
        break;
    }

    a1[6] = DeviceCMYK;
    if (a8)
    {
      goto LABEL_5;
    }

LABEL_32:
    a1[7] = 0;
    memset_pattern16(&a1[8], &xmmword_184562A30, 0x100uLL);
    v16 = 0;
    goto LABEL_33;
  }

  CFRetain(v11);
  a1[6] = v11;
  a1[40].i8[6] = *(*(v11 + 3) + 48);
  if (!a8)
  {
    goto LABEL_32;
  }

LABEL_5:
  v15 = a1[40].u8[6];
  if ((a1[40].i32[0] & 0x1Fu) - 1 < 4)
  {
    ++v15;
  }

  v16 = a1 + 8;
  a1[7] = &a1[8];
  memcpy(&a1[8], a8, 16 * v15);
LABEL_33:
  v23 = a1[40].i32[0];
  v24 = a1[40].u8[4];
  if ((v23 & 0xF0000) != 0)
  {
    goto LABEL_46;
  }

  v25 = a1[40].u8[5];
  if (v25 == 10)
  {
    if (v24 == 32)
    {
      if (v16 && !memcmp(v16, &InferPixelFormat(unsigned long,unsigned long,unsigned int,double const*)::kCIF10decode, 0x40uLL))
      {
        v26 = 0x40000;
      }

      else
      {
        v26 = 196608;
      }

      goto LABEL_45;
    }
  }

  else if (v25 == 5 && v24 == 16)
  {
    if ((v23 & 0x1F) != 0)
    {
      v26 = ((a1[40].i32[0] & 0x1F) != 7) << 16;
    }

    else
    {
      v26 = 0x20000;
    }

    goto LABEL_45;
  }

  v26 = 0;
LABEL_45:
  a1[40].i32[0] = v26 | v23;
LABEL_46:
  v27 = *&a1[3] * v24 + 7;
  v28 = 8;
  if ((1 << a10) > 8)
  {
    v28 = 1 << a10;
  }

  if ((a10 & 0x600) != 0)
  {
    v29 = 1 << a10;
  }

  else
  {
    v29 = v28;
  }

  a1[5] = ((v29 + (v27 >> 3) - 1) & -v29);
  if (GetCachelineSize(void)::onceToken != -1)
  {
    dispatch_once(&GetCachelineSize(void)::onceToken, &__block_literal_global_579);
  }

  if (GetCachelineSize(void)::cachelineSize > v29)
  {
    v29 = GetCachelineSize(void)::cachelineSize;
  }

  v30 = a1[5];
  if (*MEMORY[0x1E69E9AC8] < (8 * *&v30) && v29 << 6 <= *MEMORY[0x1E69E9AC8])
  {
    v31 = vcnt_s8(v30);
    v31.i16[0] = vaddlv_u8(v31);
    if (v31.u32[0] <= 1uLL)
    {
      do
      {
        *&v30 += v29;
      }

      while ((*&v30 & (*&v30 - 1)) == 0);
      a1[5] = v30;
    }
  }
}

void CGBuf::~CGBuf(CGBuf *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 6);
  if (v9)
  {
    CGColorSpaceRelease(v9);
  }

  *(this + 6) = 0;
  v10 = *this;
  if (*this)
  {
    add = atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL);
    if (add <= 0)
    {
      _CGHandleAssert("Release", 252, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/CGBuf.h", "oldVal >= 1", "CGBuf released with zero refcount", a6, a7, a8, v14);
    }

    if (add == 1)
    {
      CGBufferStorage::~CGBufferStorage(v10, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  *this = 0;
  v12 = *(this + 1);
  if (v12)
  {
    CFRelease(v12);
  }

  *(this + 1) = 0;
  v13 = *(this + 2);
  if (v13)
  {
    CFRelease(v13);
  }

  *(this + 2) = 0;
}

void ReleaseCGContext(CFTypeRef cf, void *a2)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CGColorSpaceRef LegalizeForContext(unsigned int *a1, unsigned int *a2, unsigned int *a3, CGColorSpace **a4)
{
  v5 = *a3;
  v6 = 1 << *a1;
  if (*a2 == (*a2 / v5) * v5)
  {
    LOBYTE(v7) = *a2 / *a3 - 1;
  }

  else
  {
    v7 = *a2 / *a3;
  }

  if ((v6 & 0xFE) == 0)
  {
    LOBYTE(v7) = *a2 / *a3;
  }

  if (v5 < 9 || (*a1 & 0x1F) == 7)
  {
    *a3 = 8;
    v11 = *a1 & 0xFFFF8EFF;
    goto LABEL_16;
  }

  if (v5 > 0xB)
  {
    if (v5 > 0x10)
    {
      *a3 = 32;
      v8 = *a1 & 0xFFFF8EE0;
      v9 = (*a1 & 0x1F) - (((1 << *a1) & 0x54) != 0);
      v10 = 8448;
      goto LABEL_15;
    }

LABEL_13:
    *a3 = 16;
    v11 = *a1 & 0xFFFF8FE0 | ((*a1 & 0x1F) - (((1 << *a1) & 0x54) != 0)) | 0x1000;
    goto LABEL_16;
  }

  if ((*a1 & 0x100) != 0)
  {
    goto LABEL_13;
  }

  *a3 = 16;
  v8 = *a1 & 0xFFFF8EE0;
  v9 = (*a1 & 0x1F) - (((1 << *a1) & 0x54) != 0);
  v10 = 4352;
LABEL_15:
  v11 = v8 | v10 | v9;
LABEL_16:
  v12 = v7;
  if ((v7 & 0xFC) != 0)
  {
    v7 = 4;
  }

  else
  {
    v7 = v7;
  }

  if (v12 == 2)
  {
    v7 = 3;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      v16 = 0;
      v15 = v11 & 0xFFFFFFE0;
      v17 = 1;
    }

    else
    {
      v17 = 0;
      *a1 = v11 & 0xFFFFFFE0 | 7;
      *a3 = 8;
      v15 = *a1 & 0xFFFF8EFF;
      v16 = 1;
    }
  }

  else if ((v7 - 2) >= 2)
  {
    v16 = 0;
    v15 = v11 & 0xFFFFFFE0;
    v17 = 4;
  }

  else
  {
    v13 = v11 & 0xFFFFFFE0 | (0x76521210u >> (4 * (v11 & 0x1F))) & 7;
    v14 = v11 & 0xFFFFFFE0 | 5;
    if ((v6 & 0x61) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    v16 = 1;
    v17 = 3;
  }

  *a1 = v15;
  *a2 = (v16 + v17) * *a3;
  result = *a4;
  if (*a4)
  {
    if (*(*(result + 3) + 48) == v17)
    {
      return result;
    }

    CGColorSpaceRelease(result);
    *a4 = 0;
  }

  switch(v17)
  {
    case 4:
      result = CGColorSpaceCreateDeviceCMYK();
      break;
    case 3:
      result = CGColorSpaceCreateDeviceRGB();
      break;
    case 1:
      result = CGColorSpaceCreateDeviceGray();
      break;
    default:
      result = 0;
      break;
  }

  *a4 = result;
  return result;
}

uint64_t ___ZL16GetCachelineSizev_block_invoke()
{
  v2 = 8;
  v3 = 0;
  result = sysctlbyname("hw.cachelinesize", &v3, &v2, 0, 0);
  if (v2 == 4)
  {
    v1 = v3;
  }

  else
  {
    v1 = v3;
  }

  if (result)
  {
    v1 = 32;
  }

  GetCachelineSize(void)::cachelineSize = v1;
  return result;
}

uint64_t _FillBuffer<half>(uint64_t result, unint64_t a2, unsigned int *a3, double a4, double a5, float _S2)
{
  v7 = a2;
  v8 = result;
  i = a2;
  v10 = result;
  if (a2 >= 4)
  {
    v10 = result;
    for (i = a2; i > 3; i -= 4)
    {
      v11 = rand_r(a3);
      result = rand_r(a3);
      *v10++ = v11 ^ (result << 16);
    }
  }

  for (; i; --i)
  {
    result = rand_r(a3);
    *v10 = result;
    v10 = (v10 + 1);
  }

  if (v7 >= 2)
  {
    do
    {
      LOWORD(_S2) = *v8;
      _S2 = (LODWORD(_S2) * 0.000030518) + -0.25;
      __asm { FCVT            H2, S2 }

      *v8++ = LOWORD(_S2);
      v7 -= 2;
    }

    while (v7 > 1);
  }

  return result;
}

float *_FillBuffer<float>(float *result, unint64_t a2, unsigned int *a3)
{
  v4 = a2;
  v5 = result;
  i = a2;
  v7 = result;
  if (a2 >= 4)
  {
    v7 = result;
    for (i = a2; i > 3; i -= 4)
    {
      v8 = rand_r(a3);
      result = rand_r(a3);
      *v7++ = v8 ^ (result << 16);
    }
  }

  for (; i; --i)
  {
    result = rand_r(a3);
    *v7 = result;
    v7 = (v7 + 1);
  }

  if (v4 >= 4)
  {
    do
    {
      *v5 = (*v5 * 3.4925e-10) + -0.25;
      ++v5;
      v4 -= 4;
    }

    while (v4 > 3);
  }

  return result;
}

uint64_t CGBuf::FillBuffer(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 325);
  if (v4 != 32)
  {
    if (v4 == 16 && (*(a1 + 320) & 0x100) != 0)
    {
      v5 = (*(a1 + 320) & 0x7000) == 4096;
      v6 = _SwapBuffer<half>;
      v7 = _FillBuffer<half>;
      goto LABEL_8;
    }

LABEL_6:
    v6 = _FillBuffer<unsigned char>;
    goto LABEL_10;
  }

  if ((*(a1 + 320) & 0x100) == 0)
  {
    goto LABEL_6;
  }

  v5 = (*(a1 + 320) & 0x7000) == 0x2000;
  v6 = _SwapBuffer<float>;
  v7 = _FillBuffer<float>;
LABEL_8:
  if (v5)
  {
    v6 = v7;
  }

LABEL_10:
  v10 = v2;
  v11 = v3;
  v9 = (HIDWORD(a2) & 0xFF000000 | v4) + *(a1 + 24) * *(a1 + 32) + *(a1 + 324) + *(a1 + 326) + *(a1 + 327);
  return (v6)(*(*a1 + 32), *(*a1 + 40), &v9);
}

float *_SwapBuffer<float>(float *a1, unint64_t a2, unsigned int *a3)
{
  v3 = a2;
  v4 = a1;
  result = _FillBuffer<float>(a1, a2, a3);
  if (v3 >= 0x10)
  {
    do
    {
      *v4 = vqtbl1q_s8(*v4, xmmword_18439C680);
      ++v4;
      v3 -= 16;
    }

    while (v3 > 0xF);
  }

  if (v3)
  {
    v6 = 0u;
    memcpy(&v6, v4, v3);
    v6 = vqtbl1q_s8(v6, xmmword_18439C680);
    return memcpy(v4, &v6, v3);
  }

  return result;
}

void *_SwapBuffer<half>(uint64_t a1, unint64_t a2, unsigned int *a3, double a4, double a5, float a6)
{
  v6 = a2;
  v7 = a1;
  result = _FillBuffer<half>(a1, a2, a3, a4, a5, a6);
  if (v6 >= 0x10)
  {
    do
    {
      *v7 = vqtbl1q_s8(*v7, xmmword_18439C690);
      ++v7;
      v6 -= 16;
    }

    while (v6 > 0xF);
  }

  if (v6)
  {
    v9 = 0u;
    memcpy(&v9, v7, v6);
    v9 = vqtbl1q_s8(v9, xmmword_18439C690);
    return memcpy(v7, &v9, v6);
  }

  return result;
}

int *_FillBuffer<unsigned char>(int *result, unint64_t a2, unsigned int *a3)
{
  v4 = a2;
  v5 = result;
  if (a2 >= 4)
  {
    do
    {
      v6 = rand_r(a3);
      result = rand_r(a3);
      *v5++ = v6 ^ (result << 16);
      v4 -= 4;
    }

    while (v4 > 3);
  }

  for (; v4; --v4)
  {
    result = rand_r(a3);
    *v5 = result;
    v5 = (v5 + 1);
  }

  return result;
}

char *CGBuf::CreateBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  v9 = *(a1 + 24) * *(a1 + 324) + 7;
  if (v8 >= v9 >> 3)
  {
    result = CGBufferStorage::Create((v9 >> 3) + a3 + (*(a1 + 32) - 1) * v8, a2);
    *a1 = result;
    if (result)
    {
      if ((a2 & 0x100) != 0)
      {
        CGBuf::FillBuffer(a1, a2);
      }

      return 1;
    }
  }

  else
  {
    CGPostError("%s: rowBytes is too small", a2, a3, a4, a5, a6, a7, a8, "CreateBuffer");
    return 0;
  }

  return result;
}

char *CGBuf::CreateBufferWithData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  v9 = *(a1 + 24) * *(a1 + 324) + 7;
  if (v8 >= v9 >> 3)
  {
    v16 = *(a1 + 32);
    result = CGBufferStorage::Create(0, 4101);
    if (result)
    {
      *(result + 1) = -a2 & a2;
      *(result + 2) = a2;
      v17 = (v9 >> 3) + (v16 - 1) * v8;
      *(result + 4) = a2;
      *(result + 5) = v17;
      *(result + 3) = v17;
      *(result + 9) = a3;
      *(result + 10) = a4;
      *a1 = result;
      if ((a5 & 0x100) != 0)
      {
        CGBuf::FillBuffer(a1, a5);
      }

      return 1;
    }

    else
    {
      *a1 = 0;
    }
  }

  else
  {
    CGPostError("%s: rowBytes is too small", a2, a3, a4, a5, a6, a7, a8, "CreateBufferWithData");
    return 0;
  }

  return result;
}

uint64_t CGBuf::CGBuf(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, CGColorSpace *a7, const void *a8, __int8 a9, uint64_t a10)
{
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  CGBuf::Init(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  if ((CGBuf::CreateBuffer(a1, a10, 0, v11, v12, v13, v14, v15) & 1) == 0)
  {
    CGBuf::~CGBuf(a1, v16, v17, v18, v19, v20, v21, v22);
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    *(a1 + 320) = 0;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    CGBuf::~CGBuf(v31, v23, v24, v25, v26, v27, v28, v29);
  }

  return a1;
}

{
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  CGBuf::Init(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  if ((CGBuf::CreateBuffer(a1, a10, 0, v11, v12, v13, v14, v15) & 1) == 0)
  {
    CGBuf::~CGBuf(a1, v16, v17, v18, v19, v20, v21, v22);
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    *(a1 + 320) = 0;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    CGBuf::~CGBuf(v31, v23, v24, v25, v26, v27, v28, v29);
  }

  return a1;
}

uint64_t CGBuf::CGBuf(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, CGColorSpace *cf, const void *a9, __int8 a10, uint64_t a11)
{
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  CGBuf::Init(a1, a2[2], a2[2], a3, a4, a5, cf, a9, a10, a11);
  *(a1 + 40) = a2[3];
  if (*a2)
  {
    BufferWithData = CGBuf::CreateBufferWithData(a1, *a2, a6, a7, a11, v17, v18, v19);
  }

  else
  {
    BufferWithData = CGBuf::CreateBuffer(a1, a11, 0, v15, v16, v17, v18, v19);
  }

  if ((BufferWithData & 1) == 0)
  {
    CGBuf::~CGBuf(a1, v21, v22, v23, v24, v25, v26, v27);
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    *(a1 + 320) = 0;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    CGBuf::~CGBuf(v36, v28, v29, v30, v31, v32, v33, v34);
  }

  return a1;
}

{
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  CGBuf::Init(a1, a2[2], a2[2], a3, a4, a5, cf, a9, a10, a11);
  *(a1 + 40) = a2[3];
  if (*a2)
  {
    BufferWithData = CGBuf::CreateBufferWithData(a1, *a2, a6, a7, a11, v17, v18, v19);
  }

  else
  {
    BufferWithData = CGBuf::CreateBuffer(a1, a11, 0, v15, v16, v17, v18, v19);
  }

  if ((BufferWithData & 1) == 0)
  {
    CGBuf::~CGBuf(a1, v21, v22, v23, v24, v25, v26, v27);
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    *(a1 + 320) = 0;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    CGBuf::~CGBuf(v36, v28, v29, v30, v31, v32, v33, v34);
  }

  return a1;
}

void CGBuf::CGBuf(CGBuf *this, unsigned int *cf)
{
  *(this + 40) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  if (!cf)
  {
    return;
  }

  CFRetain(cf);
  *(this + 1) = cf;
  ImageProvider = CGImageGetImageProvider(cf);
  if (!ImageProvider)
  {
    goto LABEL_57;
  }

  v12 = ImageProvider;
  {
    CGBuf::CGBuf(CGImage *)::keys = @"kCGImageBlockSingletonRequest";
  }

  {
    CGBuf::CGBuf(CGImage *)::values = *MEMORY[0x1E695E4D0];
  }

  *(this + 324) = 8 * *(v12 + 48);
  *(this + 80) = *(v12 + 36) & 0x1F;
  v13 = *(v12 + 120);
  if (!v13 || (Property = CGPropertiesGetProperty(v13, @"kCGImageProviderColorSpaceChangedOnImageCopy")) == 0)
  {
    Property = *(v12 + 40);
  }

  *(this + 6) = Property;
  v15 = *(v12 + 32);
  if (v15 > 2)
  {
    if (v15 != 3)
    {
      if (v15 == 4)
      {
        v16 = 32;
        *(this + 325) = 32;
        v17 = *(this + 80);
        v18 = 8448;
        goto LABEL_18;
      }

      if (v15 == 5)
      {
        v16 = 16;
        *(this + 325) = 16;
        v17 = *(this + 80);
        v18 = 4352;
LABEL_18:
        v19 = v17 | v18;
        goto LABEL_19;
      }

LABEL_56:
      CGBuf::~CGBuf(this, v5, v6, v7, v8, v9, v10, v11);
      v103 = 0;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      *(this + 40) = 0;
      *(this + 18) = 0u;
      *(this + 19) = 0u;
      *(this + 16) = 0u;
      *(this + 17) = 0u;
      *(this + 14) = 0u;
      *(this + 15) = 0u;
      *(this + 12) = 0u;
      *(this + 13) = 0u;
      *(this + 10) = 0u;
      *(this + 11) = 0u;
      *(this + 8) = 0u;
      *(this + 9) = 0u;
      *(this + 6) = 0u;
      *(this + 7) = 0u;
      *(this + 4) = 0u;
      *(this + 5) = 0u;
      *(this + 2) = 0u;
      *(this + 3) = 0u;
      *this = 0u;
      *(this + 1) = 0u;
      CGBuf::~CGBuf(&v83, v50, v51, v52, v53, v54, v55, v56);
LABEL_57:
      v57 = *(cf + 5);
      v58 = *(cf + 6);
      BitmapInfo = CGImageGetBitmapInfo(cf);
      v60 = cf[16];
      v61 = cf[14];
      ColorSpace = CGImageGetColorSpace(cf);
      Decode = CGImageGetDecode(cf);
      RenderingIntent = CGImageGetRenderingIntent(cf);
      CGBuf::Init(this, v57, v58, BitmapInfo, v60, v61, ColorSpace, Decode, RenderingIntent, 4);
      DataProviderInternal = CGImageGetDataProviderInternal(cf, 0);
      if (!DataProviderInternal || (v73 = CGDataProviderCopyData(DataProviderInternal)) == 0 || (v74 = v73, *this = CGBufferStorage::CreateWithCFData(v73, v66), *(this + 5) = *(cf + 9), CFRelease(v74), !*this))
      {
        CGBuf::~CGBuf(this, v66, v67, v68, v69, v70, v71, v72);
        v103 = 0;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        *(this + 40) = 0;
        *(this + 18) = 0u;
        *(this + 19) = 0u;
        *(this + 16) = 0u;
        *(this + 17) = 0u;
        *(this + 14) = 0u;
        *(this + 15) = 0u;
        *(this + 12) = 0u;
        *(this + 13) = 0u;
        *(this + 10) = 0u;
        *(this + 11) = 0u;
        *(this + 8) = 0u;
        *(this + 9) = 0u;
        *(this + 6) = 0u;
        *(this + 7) = 0u;
        *(this + 4) = 0u;
        *(this + 5) = 0u;
        *(this + 2) = 0u;
        *(this + 3) = 0u;
        *this = 0u;
        *(this + 1) = 0u;
        CGBuf::~CGBuf(&v83, v75, v76, v77, v78, v79, v80, v81);
      }

      return;
    }

    v16 = 32;
    *(this + 325) = 32;
    v19 = *(this + 80) | 0x2000;
LABEL_19:
    *(this + 80) = v19;
    goto LABEL_20;
  }

  if (v15 != 1)
  {
    if (v15 != 2)
    {
      goto LABEL_56;
    }

    v16 = 16;
    *(this + 325) = 16;
    v19 = *(this + 80) | 0x1000;
    goto LABEL_19;
  }

  v16 = 8;
  *(this + 325) = 8;
  v19 = *(this + 80);
LABEL_20:
  v20 = *(cf + 5);
  v21 = *(cf + 6);
  v22 = *(this + 324);
  v23 = CGImageGetDecode(cf);
  v24 = CGImageGetRenderingIntent(cf);
  CGBuf::Init(this, v20, v21, v19, v22, v16, Property, v23, v24, 4);
  v25 = CFDictionaryCreate(0, &CGBuf::CGBuf(CGImage *)::keys, &CGBuf::CGBuf(CGImage *)::values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v26 = CGImageProviderCopyImageBlockSetWithOptions(v12, v25);
  if (v25)
  {
    CFRelease(v25);
  }

  if (!v26)
  {
    goto LABEL_56;
  }

  *this = 0;
  if (*(v26 + 120) != 1 || (v27 = *(v26 + 128)) == 0 || (v28 = CGBufferStorage::CreateWithImageBlockSet(v26, 0), *this = v28, *(this + 5) = *(v27 + 40), !v28))
  {
    v29 = CGBufferStorage::Create((*(this + 4) - 1) * *(this + 5) + ((*(this + 3) * *(this + 324) + 7) >> 3), 4);
    *this = v29;
    if (v29)
    {
      v30 = *(v26 + 120);
      if (v30)
      {
        v31 = 0;
        v82 = *(v26 + 72);
        do
        {
          if (*(v26 + 120) > v31)
          {
            v32 = *(v26 + 128 + 8 * v31);
            if (v32)
            {
              v33 = 0;
              v34 = fmax(v32[1], 0.0);
              v35 = fmax(v32[2], 0.0);
              v36 = fmax(v32[3], 0.0);
              v38 = *(this + 3);
              v37 = *(this + 4);
              v39 = v38 - v34;
              if (v38 < v34)
              {
                v39 = 0;
              }

              if (v36 + v34 > v38)
              {
                v36 = v39;
              }

              v40 = fmax(v32[4], 0.0);
              v41 = v37 - v35;
              if (v37 < v35)
              {
                v41 = 0;
              }

              if (v40 + v35 <= v37)
              {
                v42 = v40;
              }

              else
              {
                v42 = v41;
              }

              if (v38 > v34)
              {
                if (v37 <= v35)
                {
                  v45 = 0;
                }

                else
                {
                  v43 = *this;
                  if (*this)
                  {
                    v43 = *(*&v43 + 32);
                  }

                  v44 = *(this + 5) * v35;
                  if (!*&v43)
                  {
                    v44 = 0;
                  }

                  v45 = v44 + *&v43;
                }

                v46 = (*(this + 324) * v34) >> 3;
                if (!v45)
                {
                  v46 = 0;
                }

                v33 = (v46 + v45);
              }

              if (v42)
              {
                v47 = *v32;
                v48 = *(v32 + 5);
                v49 = v36 * v82;
                do
                {
                  memcpy(v33, v47, v49);
                  v47 = &v47[v48];
                  v33 += *(this + 5);
                  --v42;
                }

                while (v42);
              }
            }
          }

          ++v31;
        }

        while (v31 != v30);
      }
    }
  }

  CGImageBlockSetRelease(v26);
  if (!*this)
  {
    goto LABEL_56;
  }
}

{
  *(this + 40) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  if (!cf)
  {
    return;
  }

  CFRetain(cf);
  *(this + 1) = cf;
  ImageProvider = CGImageGetImageProvider(cf);
  if (!ImageProvider)
  {
    goto LABEL_57;
  }

  v12 = ImageProvider;
  {
    CGBuf::CGBuf(CGImage *)::keys = @"kCGImageBlockSingletonRequest";
  }

  {
    CGBuf::CGBuf(CGImage *)::values = *MEMORY[0x1E695E4D0];
  }

  *(this + 324) = 8 * *(v12 + 48);
  *(this + 80) = *(v12 + 36) & 0x1F;
  v13 = *(v12 + 120);
  if (!v13 || (Property = CGPropertiesGetProperty(v13, @"kCGImageProviderColorSpaceChangedOnImageCopy")) == 0)
  {
    Property = *(v12 + 40);
  }

  *(this + 6) = Property;
  v15 = *(v12 + 32);
  if (v15 > 2)
  {
    if (v15 != 3)
    {
      if (v15 == 4)
      {
        v16 = 32;
        *(this + 325) = 32;
        v17 = *(this + 80);
        v18 = 8448;
        goto LABEL_18;
      }

      if (v15 == 5)
      {
        v16 = 16;
        *(this + 325) = 16;
        v17 = *(this + 80);
        v18 = 4352;
LABEL_18:
        v19 = v17 | v18;
        goto LABEL_19;
      }

LABEL_56:
      CGBuf::~CGBuf(this, v5, v6, v7, v8, v9, v10, v11);
      v103 = 0;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      *(this + 40) = 0;
      *(this + 18) = 0u;
      *(this + 19) = 0u;
      *(this + 16) = 0u;
      *(this + 17) = 0u;
      *(this + 14) = 0u;
      *(this + 15) = 0u;
      *(this + 12) = 0u;
      *(this + 13) = 0u;
      *(this + 10) = 0u;
      *(this + 11) = 0u;
      *(this + 8) = 0u;
      *(this + 9) = 0u;
      *(this + 6) = 0u;
      *(this + 7) = 0u;
      *(this + 4) = 0u;
      *(this + 5) = 0u;
      *(this + 2) = 0u;
      *(this + 3) = 0u;
      *this = 0u;
      *(this + 1) = 0u;
      CGBuf::~CGBuf(&v83, v50, v51, v52, v53, v54, v55, v56);
LABEL_57:
      v57 = *(cf + 5);
      v58 = *(cf + 6);
      BitmapInfo = CGImageGetBitmapInfo(cf);
      v60 = cf[16];
      v61 = cf[14];
      ColorSpace = CGImageGetColorSpace(cf);
      Decode = CGImageGetDecode(cf);
      RenderingIntent = CGImageGetRenderingIntent(cf);
      CGBuf::Init(this, v57, v58, BitmapInfo, v60, v61, ColorSpace, Decode, RenderingIntent, 4);
      DataProviderInternal = CGImageGetDataProviderInternal(cf, 0);
      if (!DataProviderInternal || (v73 = CGDataProviderCopyData(DataProviderInternal)) == 0 || (v74 = v73, *this = CGBufferStorage::CreateWithCFData(v73, v66), *(this + 5) = *(cf + 9), CFRelease(v74), !*this))
      {
        CGBuf::~CGBuf(this, v66, v67, v68, v69, v70, v71, v72);
        v103 = 0;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        *(this + 40) = 0;
        *(this + 18) = 0u;
        *(this + 19) = 0u;
        *(this + 16) = 0u;
        *(this + 17) = 0u;
        *(this + 14) = 0u;
        *(this + 15) = 0u;
        *(this + 12) = 0u;
        *(this + 13) = 0u;
        *(this + 10) = 0u;
        *(this + 11) = 0u;
        *(this + 8) = 0u;
        *(this + 9) = 0u;
        *(this + 6) = 0u;
        *(this + 7) = 0u;
        *(this + 4) = 0u;
        *(this + 5) = 0u;
        *(this + 2) = 0u;
        *(this + 3) = 0u;
        *this = 0u;
        *(this + 1) = 0u;
        CGBuf::~CGBuf(&v83, v75, v76, v77, v78, v79, v80, v81);
      }

      return;
    }

    v16 = 32;
    *(this + 325) = 32;
    v19 = *(this + 80) | 0x2000;
LABEL_19:
    *(this + 80) = v19;
    goto LABEL_20;
  }

  if (v15 != 1)
  {
    if (v15 != 2)
    {
      goto LABEL_56;
    }

    v16 = 16;
    *(this + 325) = 16;
    v19 = *(this + 80) | 0x1000;
    goto LABEL_19;
  }

  v16 = 8;
  *(this + 325) = 8;
  v19 = *(this + 80);
LABEL_20:
  v20 = *(cf + 5);
  v21 = *(cf + 6);
  v22 = *(this + 324);
  v23 = CGImageGetDecode(cf);
  v24 = CGImageGetRenderingIntent(cf);
  CGBuf::Init(this, v20, v21, v19, v22, v16, Property, v23, v24, 4);
  v25 = CFDictionaryCreate(0, &CGBuf::CGBuf(CGImage *)::keys, &CGBuf::CGBuf(CGImage *)::values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v26 = CGImageProviderCopyImageBlockSetWithOptions(v12, v25);
  if (v25)
  {
    CFRelease(v25);
  }

  if (!v26)
  {
    goto LABEL_56;
  }

  *this = 0;
  if (*(v26 + 120) != 1 || (v27 = *(v26 + 128)) == 0 || (v28 = CGBufferStorage::CreateWithImageBlockSet(v26, 0), *this = v28, *(this + 5) = *(v27 + 40), !v28))
  {
    v29 = CGBufferStorage::Create((*(this + 4) - 1) * *(this + 5) + ((*(this + 3) * *(this + 324) + 7) >> 3), 4);
    *this = v29;
    if (v29)
    {
      v30 = *(v26 + 120);
      if (v30)
      {
        v31 = 0;
        v82 = *(v26 + 72);
        do
        {
          if (*(v26 + 120) > v31)
          {
            v32 = *(v26 + 128 + 8 * v31);
            if (v32)
            {
              v33 = 0;
              v34 = fmax(v32[1], 0.0);
              v35 = fmax(v32[2], 0.0);
              v36 = fmax(v32[3], 0.0);
              v38 = *(this + 3);
              v37 = *(this + 4);
              v39 = v38 - v34;
              if (v38 < v34)
              {
                v39 = 0;
              }

              if (v36 + v34 > v38)
              {
                v36 = v39;
              }

              v40 = fmax(v32[4], 0.0);
              v41 = v37 - v35;
              if (v37 < v35)
              {
                v41 = 0;
              }

              if (v40 + v35 <= v37)
              {
                v42 = v40;
              }

              else
              {
                v42 = v41;
              }

              if (v38 > v34)
              {
                if (v37 <= v35)
                {
                  v45 = 0;
                }

                else
                {
                  v43 = *this;
                  if (*this)
                  {
                    v43 = *(*&v43 + 32);
                  }

                  v44 = *(this + 5) * v35;
                  if (!*&v43)
                  {
                    v44 = 0;
                  }

                  v45 = v44 + *&v43;
                }

                v46 = (*(this + 324) * v34) >> 3;
                if (!v45)
                {
                  v46 = 0;
                }

                v33 = (v46 + v45);
              }

              if (v42)
              {
                v47 = *v32;
                v48 = *(v32 + 5);
                v49 = v36 * v82;
                do
                {
                  memcpy(v33, v47, v49);
                  v47 = &v47[v48];
                  v33 += *(this + 5);
                  --v42;
                }

                while (v42);
              }
            }
          }

          ++v31;
        }

        while (v31 != v30);
      }
    }
  }

  CGImageBlockSetRelease(v26);
  if (!*this)
  {
    goto LABEL_56;
  }
}

CGImageRef CGBuf::CreateCGImage(CGBuf *this, BOOL a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v5 = *(v2 + 32);
  v6 = (*(this + 4) - 1) * *(this + 5) + ((*(this + 3) * *(this + 324) + 7) >> 3);
  check_clients_buffer("CGDataProviderCreateWithData", v5, v6);
  v7 = CGDataProviderCreateWithDataInternal(v2, v5, v6, CGBufferStorage::DataProviderReleaseInfoCallback, 0);
  if (!v7)
  {
    return 0;
  }

  v11 = *this;
  if (atomic_load_explicit(*this, memory_order_acquire) <= 0)
  {
    _CGHandleAssert("Retain", 246, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/CGBuf.h", "0 < atomic_load_explicit(&refCount, std::memory_order_acquire)", "CGBuf retained with 0 refcount", v8, v9, v10, decode);
  }

  v12 = v7;
  atomic_fetch_add(v11, 1uLL);
  v13 = CGImageCreate(*(this + 3), *(this + 4), *(this + 325), *(this + 324), *(this + 5), *(this + 6), *(this + 80), v7, *(this + 7), a2, *(this + 327));
  CGDataProviderRelease(v12);
  return v13;
}

CGContextRef CGBuf::CreateCGBitmapContext(size_t *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *this;
  if (!*this)
  {
    return 0;
  }

  if (atomic_load_explicit(v8, memory_order_acquire) <= 0)
  {
    _CGHandleAssert("Retain", 246, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/CGBuf.h", "0 < atomic_load_explicit(&refCount, std::memory_order_acquire)", "CGBuf retained with 0 refcount", a6, a7, a8, releaseInfo);
  }

  atomic_fetch_add(v8, 1uLL);
  return CGBitmapContextCreateWithData(*(*this + 32), this[3], this[4], *(this + 325), this[5], this[6], *(this + 80), CGBufferStorage::BitmapContextReleaseDataCallback, *this);
}

uint64_t CGBuf::_GetAlphaData(CGBuf *this, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  v9 = *(this + 2);
  if (!v9)
  {
    return 0;
  }

  if (*(v9 + 16) == 1129601108 && *(v9 + 24) == 4)
  {
    v11 = *(*(v9 + 32) + 136);
  }

  else
  {
    handle_invalid_context("CGBitmapContextGetAlphaBytesPerRow", v9, a3, a4, a5, a6, a7, a8);
    v11 = 0;
    v9 = *(this + 2);
  }

  *a2 = v11;

  return CGBitmapContextGetAlphaData(v9, v9, a3, a4, a5, a6, a7, a8);
}

void CGBuf::ReInit(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, CGColorSpace *cf1, const void *a10, __int8 a11, uint64_t a12)
{
  v16 = a12;
  v17 = cf1;
  v85 = a5;
  v86 = a4;
  v18 = *(a1 + 320);
  v83 = *(a1 + 325);
  v84 = a6;
  v81 = *(a1 + 324);
  v82 = v18;
  if ((a12 & 0x800) != 0)
  {
    LegalizeForContext(&v86, &v85, &v84, &cf1);
    v17 = cf1;
  }

  if (!v17)
  {
    v20 = v86;
    v22 = v85 / v84;
    v21 = v86 & 0x1F;
    v25 = v85 != 16 || v84 != 5 || v21 != 0;
    if ((v86 & 0xF0000) == 0x20000)
    {
      v25 = 0;
    }

    if (v85 % v84 != 1)
    {
      v25 = v85 % v84;
    }

    v27 = (v86 & 0x1F) != 0 && v25 == 0;
    v28 = v22 - v27;
    v29 = (v22 - v27);
    switch(v29)
    {
      case 4:
        DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
        break;
      case 3:
        DeviceCMYK = CGColorSpaceCreateDeviceRGB();
        break;
      case 1:
        DeviceCMYK = CGColorSpaceCreateDeviceGray();
        break;
      default:
        v17 = 0;
        goto LABEL_34;
    }

    v17 = DeviceCMYK;
LABEL_34:
    cf1 = v17;
    v19 = v28;
    goto LABEL_35;
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    v19 = *(*(v19 + 24) + 48);
  }

  v20 = v86;
  LOBYTE(v21) = v86 & 0x1F;
LABEL_35:
  v31 = a10;
  if (((1 << v21) & 0x9E) != 0)
  {
    v32 = v19 + 1;
  }

  else
  {
    v32 = v19;
  }

  if (*(a1 + 24) != a2)
  {
    v33 = v84;
LABEL_56:
    v43 = *(a1 + 8);
    if (v43)
    {
      CFRelease(v43);
    }

    v44 = a11;
    *(a1 + 8) = 0;
    v45 = *(a1 + 16);
    if (v45)
    {
      CFRelease(v45);
    }

    *(a1 + 16) = 0;
    CGColorSpaceRelease(*(a1 + 48));
    *(a1 + 48) = 0;
    CGBuf::Init(a1, a2, a3, v20, v85, v33, v17, v31, v44, v16);
    goto LABEL_61;
  }

  v33 = v84;
  if (*(a1 + 32) != a3 || v84 != *(a1 + 325) || *(a1 + 320) != v20 || v85 != *(a1 + 324) || !CFEqual(v17, *(a1 + 48)))
  {
    goto LABEL_56;
  }

  v40 = v31 ? v31 : &CompareDecodes(double const*,double const*,unsigned long)::kDefaultDecode;
  v41 = *(a1 + 56) ? *(a1 + 56) : &CompareDecodes(double const*,double const*,unsigned long)::kDefaultDecode;
  if (v40 != v41)
  {
    v42 = 16;
    if (v32 < 0x10)
    {
      v42 = v32;
    }

    if (memcmp(v40, v41, 16 * v42))
    {
      goto LABEL_56;
    }
  }

LABEL_61:
  v46 = *a1;
  if (!*a1)
  {
LABEL_69:
    if ((CGBuf::CreateBuffer(a1, v16, a8, v35, v36, v37, v38, v39) & 1) == 0)
    {
      CGBuf::~CGBuf(a1, v52, v53, v54, v55, v56, v57, v58);
      v88 = 0;
      memset(v87, 0, sizeof(v87));
      *(a1 + 320) = 0;
      *(a1 + 288) = 0u;
      *(a1 + 304) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      CGBuf::~CGBuf(v87, v59, v60, v61, v62, v63, v64, v65);
    }

    return;
  }

  if (*(a1 + 325) != v83 || ((*(a1 + 320) ^ v82) & 0x100) != 0 || (v47 = a8 + (*(a1 + 32) - 1) * *(a1 + 40) + ((*(a1 + 24) * *(a1 + 324) + 7) >> 3), v48 = *(*&v46 + 24), v49 = v48 >= v47, v50 = v48 - v47, !v49) || (v67 = *(*&v46 + 32), v66 = *(*&v46 + 40), v68 = *(*&v46 + 16), (*(*&v46 + 88) & 1) == 0) && (v69 = (v50 + v68) & -*(*&v46 + 8), v70 = v68 > v69, v68 = v69, v70))
  {
    add = atomic_fetch_add(*&v46, 0xFFFFFFFFFFFFFFFFLL);
    if (add <= 0)
    {
      _CGHandleAssert("Release", 252, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/CGBuf.h", "oldVal >= 1", "CGBuf released with zero refcount", v37, v38, v39, v80);
    }

    if (add == 1)
    {
      CGBufferStorage::~CGBufferStorage(*&v46, v41, v34, v35, v36, v37, v38, v39);
    }

    *a1 = 0;
    goto LABEL_69;
  }

  *(*&v46 + 32) = v68;
  *(*&v46 + 40) = v47;
  if (v67 != v68)
  {
    v71 = *(a1 + 8);
    if (v71)
    {
      CFRelease(v71);
    }

    *(a1 + 8) = 0;
    v72 = *(a1 + 16);
    if (v72)
    {
      CFRelease(v72);
    }

    *(a1 + 16) = 0;
  }

  if ((v16 & 0x100) == 0)
  {
    return;
  }

  if (v67 != v68 || v66 != *(*a1 + 40))
  {
    goto LABEL_123;
  }

  v73 = v82 & 0x7000;
  v74 = (v82 >> 12) & 7;
  if (v74 > 1)
  {
    if (v74 == 2)
    {
LABEL_87:
      if (v83 == 32)
      {
        v75 = v73 == 0x2000;
LABEL_92:
        v76 = v75;
        goto LABEL_103;
      }

      if (v83 != 8 || v81 != 32)
      {
        goto LABEL_116;
      }

LABEL_102:
      v76 = 1;
      goto LABEL_103;
    }

    if (v74 != 3)
    {
      if (v74 != 4)
      {
        goto LABEL_125;
      }

      goto LABEL_87;
    }

LABEL_90:
    if (v83 != 16)
    {
      goto LABEL_125;
    }

    v75 = v73 == 4096;
    goto LABEL_92;
  }

  if (v74)
  {
    goto LABEL_90;
  }

  if (v83 == 8)
  {
    goto LABEL_102;
  }

  if (v83 != 32 && v83 != 16)
  {
    goto LABEL_125;
  }

  v76 = 0;
LABEL_103:
  v77 = *(a1 + 325);
  v78 = (*(a1 + 320) >> 12) & 7;
  if (v78 <= 1)
  {
    if (!v78)
    {
      if (v77 == 8)
      {
        goto LABEL_122;
      }

      if (v77 == 16 || v77 == 32)
      {
        if (v76)
        {
          goto LABEL_123;
        }

        return;
      }

LABEL_125:
      __break(1u);
      return;
    }

LABEL_110:
    if (v77 == 16)
    {
      v79 = 4096;
LABEL_112:
      if (v76 != ((*(a1 + 320) & 0x7000) == v79))
      {
        goto LABEL_123;
      }

      return;
    }

    goto LABEL_125;
  }

  if (v78 == 2)
  {
    goto LABEL_107;
  }

  if (v78 == 3)
  {
    goto LABEL_110;
  }

  if (v78 != 4)
  {
    goto LABEL_125;
  }

LABEL_107:
  if (v77 == 32)
  {
    v79 = 0x2000;
    goto LABEL_112;
  }

  if (v77 != 8 || *(a1 + 324) != 32)
  {
LABEL_116:
    __assert_rtn("IsFormatHostEndian", "CGBuf.cpp", 1100, "bitsPerComponent == 8 && bitsPerPixel == 32");
  }

LABEL_122:
  if ((v76 & 1) == 0)
  {
LABEL_123:
    CGBuf::FillBuffer(a1, v16);
  }
}

uint64_t StringPrint(char **a1, unint64_t *a2, const char *a3, ...)
{
  va_start(va, a3);
  result = vsnprintf(*a1, *a2, a3, va);
  v6 = result;
  v7 = *a2;
  if (*a2 < result)
  {
    v6 = *a2;
  }

  *a1 += v6;
  *a2 = v7 - v6;
  return result;
}

uint64_t _PrintChannel<unsigned short>(char **a1, unint64_t *a2, void *a3)
{
  v3 = **a3;
  *a3 += 2;
  return StringPrint(a1, a2, "0x4.4x", v3);
}

uint64_t _PrintChannel<half>(char **a1, unint64_t *a2, _WORD **a3)
{
  v3 = *(*a3)++;
  _H0 = v3;
  __asm { FCVT            D0, H0 }

  return StringPrint(a1, a2, "%f (0x4.4x)", _D0);
}

uint64_t _PrintChannel_WrongEndian<unsigned short>(char **a1, unint64_t *a2, void *a3)
{
  v3 = **a3;
  *a3 += 2;
  return StringPrint(a1, a2, "0x4.4x", bswap32(v3) >> 16);
}

uint64_t _PrintChannel_WrongEndian<half>(char **a1, unint64_t *a2, void *a3)
{
  v3 = **a3;
  *a3 += 2;
  _H0 = bswap32(v3) >> 16;
  __asm { FCVT            D0, H0 }

  return StringPrint(a1, a2, "%f (0x4.4x)", _D0);
}

uint64_t CGBuf::PrintPixel(CGBuf *this, char **a2, unint64_t *a3, unint64_t a4, unint64_t a5)
{
  if (*(this + 3) <= a4)
  {
    return StringPrint(a2, a3, "<Out of bounds: x coordinate (%lu) >= width (%lu))>");
  }

  if (*(this + 4) <= a5)
  {
    return StringPrint(a2, a3, "<Out of bounds: y coordinate (%lu) >= height (%lu))>");
  }

  v7 = *(this + 326);
  v8 = *(this + 80);
  v9 = (v8 & 0x1F) != 0;
  if ((v8 & 0x1F) != 0)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = *(this + 326);
  }

  v11 = *(this + 325);
  v12 = _PrintChannel<unsigned char>;
  if (v11 == 8)
  {
    goto LABEL_15;
  }

  if (v11 != 32)
  {
    if (v11 == 16)
    {
      v13 = (v8 & 0x7000) == 4096;
      if ((v8 & 0x100) != 0)
      {
        v14 = _PrintChannel_WrongEndian<half>;
        v15 = _PrintChannel<half>;
      }

      else
      {
        v14 = _PrintChannel_WrongEndian<unsigned short>;
        v15 = _PrintChannel<unsigned short>;
      }

      goto LABEL_20;
    }

    v12 = UnsupportedFormat;
LABEL_15:
    v17 = v12;
    if (v10)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  v13 = (v8 & 0x7000) == 0x2000;
  v14 = _PrintChannel_WrongEndian<float>;
  v15 = _PrintChannel<float>;
LABEL_20:
  if (v13)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  if (v10)
  {
LABEL_24:
    v19 = (*this + *(this + 5) * a5 + ((*(this + 324) * a4) >> 3));
    StringPrint(a2, a3, "%p { ", v19);
    v17(a2, a3, &v19);
    if (v10 != 1)
    {
      v18 = v9 + v7 - 1;
      do
      {
        StringPrint(a2, a3, ", ");
        v17(a2, a3, &v19);
        --v18;
      }

      while (v18);
    }

    return StringPrint(a2, a3, " }");
  }

LABEL_16:

  return StringPrint(a2, a3, "<no channels>");
}

uint64_t CGBuf::Print(CGBuf *this, char **a2, unint64_t *a3, const char *a4)
{
  v4 = *this;
  if (*this)
  {
    v5 = *(v4 + 32);
    v4 = *(v4 + 40);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 80);
  if ((v6 & 0x1Fu) <= 7)
  {
    v7 = off_1E6E31C78[v6 & 0x1F];
  }

  else
  {
    v7 = "<invalid alpha>";
  }

  if ((v6 & 0x7000) >> 12 <= 4u)
  {
    v8 = *(GetByteOrderName(CGImageByteOrderInfo)::kByteOrderNames + ((v6 & 0x7000) >> 9));
  }

  else
  {
    v8 = "<invalid byte order>";
  }

  v9 = *(this + 327);
  if (v9 <= 4)
  {
    v10 = GetRenderingIntentName(CGColorRenderingIntent)::kRenderingIntentNames[v9];
  }

  else
  {
    v10 = "<invalid rendering intent>";
  }

  if ((v6 & 0x100) != 0)
  {
    v11 = "float";
  }

  else
  {
    v11 = "unorm";
  }

  return StringPrint(a2, a3, "%s%p CGBuf:\n%s\tbuffer:             %p  (%lu bytes)\n%s\tsize:               {%lu x %lu}\n%s\tbits per pixel:     %u\n%s\tcomponent type:     %s%u\n%s\talpha:              %s\n%s\tbyteOrder:          %s\n%s\trowBytes:           %lu\n%s\tcolorSpace:         %p\n%s\tCGImage:            %p\n%s\tcontext:            %p\n%s\tdecode:             %p\n%s\trendering intent:   %s\n", a4, this, a4, v5, v4, a4, *(this + 3), *(this + 4), a4, *(this + 324), a4, v11, *(this + 325), a4, v7, a4, v8, a4, *(this + 5), a4, *(this + 6), a4, *(this + 1), a4, *(this + 2), a4, *(this + 7), a4, v10);
}

uint64_t CGBuf::Print(CGBuf *this, const CGBuf *a2, __n128 a3)
{
  v3 = MEMORY[0x1EEE9AC00](this, a3);
  v8 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    v5 = 4096;
    v6 = v7;
    CGBuf::Print(v3, &v6, &v5, "");
    return printf("%s", v7);
  }

  else
  {

    return puts("CGBuf <NULL>");
  }
}

double boundsForOverlap(void *a1, int a2, int a3)
{
  [a1 normalizedBounds];
  v7 = v6;
  v9 = v8;
  v10 = [a1 count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0.0;
    while (1)
    {
      v14 = [a1 childAtIndex:v12];
      if ([v14 leftSpacerIndex] != a2 || objc_msgSend(v14, "rightSpacerIndex") != a3)
      {
        break;
      }

      [v14 normalizedBounds];
      v13 = v13 + v15;
      v12 = (v12 + 1);
      if (v11 == v12)
      {
        v16 = v13 / v11 * 6.0;
        if (v9 < v16)
        {
          return v7 + (v16 - v9) * -0.5;
        }

        return v7;
      }
    }
  }

  return v7;
}

uint64_t center_finalize(uint64_t a1)
{
  registry_release(*(a1 + 80));

  return pthread_mutex_destroy((a1 + 16));
}

uint64_t CGNotificationCenterRemoveCallback(uint64_t result, uint64_t a2, __CFString *a3, __CFString *a4)
{
  if (a2)
  {
    v5 = result;
    if (a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = @"kCGNotificationAnyName";
    }

    if (a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = @"kCGNotificationAnyObject";
    }

    pthread_mutex_lock((result + 16));
    for (i = *(v5 + 80); i; *(v5 + 80) = i)
    {
      while (1)
      {
        v9 = *i;
        if (*(*i + 32) == a2 && *(v9 + 24) == v7 && CFEqual(v6, *(v9 + 16)))
        {
          break;
        }

        i = i[1];
        if (!i)
        {
          goto LABEL_15;
        }
      }

      i = x_list_remove(*(v5 + 80), v9);
      registry_entry_release(v9);
    }

LABEL_15:

    return pthread_mutex_unlock((v5 + 16));
  }

  return result;
}

void *skip_comment(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  while (1)
  {
    v9 = v8[2];
    v10 = *(v9 + 120);
    if (!v10)
    {
      result = CGPDFSourceRefill(v8[2], a2, a3, a4, a5, a6, a7, a8);
      if (!result)
      {
        return result;
      }

      v10 = *(v9 + 120);
    }

    v11 = *(v9 + 128);
    *(v9 + 120) = v10 - 1;
    *(v9 + 128) = v11 + 1;
    v12 = *v11;
    if (v12 == 10)
    {
      return result;
    }

    if (v12 == 13)
    {
      v13 = v8[2];
      v14 = *(v13 + 120);
      if (v14)
      {
LABEL_10:
        v15 = *(v13 + 128);
        *(v13 + 120) = v14 - 1;
        *(v13 + 128) = v15 + 1;
        v16 = *v15;
        if (v16 == 10)
        {
          return result;
        }
      }

      else
      {
        result = CGPDFSourceRefill(v8[2], a2, a3, a4, a5, a6, a7, a8);
        if (result)
        {
          v14 = *(v13 + 120);
          goto LABEL_10;
        }

        v16 = -1;
      }

      v17 = v8[2];

      return CGPDFSourceUngetc(v17, v16);
    }
  }
}

void *skip_to_delimiter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  while (1)
  {
    v9 = a1[2];
    v10 = *(v9 + 120);
    if (!v10)
    {
      result = CGPDFSourceRefill(a1[2], a2, a3, a4, a5, a6, a7, a8);
      if (!result)
      {
        return result;
      }

      v10 = *(v9 + 120);
    }

    v12 = *(v9 + 128);
    *(v9 + 120) = v10 - 1;
    *(v9 + 128) = v12 + 1;
    v13 = *v12;
    if (v13 <= 0x3E && ((1 << v13) & 0x5000832100003601) != 0)
    {
      break;
    }

    if (v13 - 91 <= 0x22 && ((1 << (v13 - 91)) & 0x500000005) != 0)
    {
      break;
    }

    v16 = a1[3];
    v17 = a1[4];
    v18 = a1[5];
    if (v16 >= v17)
    {
      v19 = 2 * v17 + 128;
      a1[4] = v19;
      v18 = malloc_type_realloc(v18, v19, 0x9E65F011uLL);
      a1[5] = v18;
      if (!v18)
      {
        _CGHandleAssert("lex_grow_buffer", 55, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFLexer.c", "lexer->buffer != NULL", "lexer buffer missing", a6, a7, a8, v22);
      }

      v16 = a1[3];
    }

    a1[3] = v16 + 1;
    *(v18 + v16) = v13;
  }

  v20 = a1[2];
  v21 = *v12;

  return CGPDFSourceUngetc(v20, v21);
}

char *create_image_stream(const void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, CGDataProvider *a12, CGDataProvider *a13, uint64_t *a14)
{
  if (a8 < a6)
  {
    _CGHandleAssert("create_image_stream", 145, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "src_image_bytes_per_row >= image_data_bytes_per_row", "src image bpr: %lu  image bpr: %lu", a6, a7, a8, a8);
  }

  if (a9 < a7)
  {
    _CGHandleAssert("create_image_stream", 146, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "src_smask_bytes_per_row >= smask_data_bytes_per_row", "src mask bpr: %lu  mask bpr: %lu", a6, a7, a8, a9);
  }

  v18 = *(a2 + 24);
  if (v18 >= 2 && v18 != 3)
  {
    _CGHandleAssert("create_image_stream", 149, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "pixel_info.alpha_info == kCGImageAlphaNone || pixel_info.alpha_info == kCGImageAlphaLast || pixel_info.alpha_info == kCGImageAlphaPremultipliedLast", "alpha unsupported (%d)", a6, a7, a8, *(a2 + 24));
  }

  v24 = malloc_type_calloc(1uLL, 0x518uLL, 0x10B0040ABF645E3uLL);
  if (!v24)
  {
    return v24;
  }

  v25 = a14;
  if (a1)
  {
    CFRetain(a1);
  }

  *v24 = a1;
  memcpy(v24 + 8, a2, 0x130uLL);
  if (*(a2 + 40))
  {
    v26 = *(a2 + 24) - 1;
    if (v26 > 8)
    {
      v27 = 0;
    }

    else
    {
      v27 = qword_1844E0DE8[v26];
    }

    v28 = v27 + *(a2 + 16);
    if (v28)
    {
      v29 = v24 + 64;
      v30 = (a2 + 56);
      do
      {
        *(v29 - 1) = *(v30 - 1);
        v31 = *v30;
        v30 += 2;
        *v29 = v31;
        v29 += 2;
        --v28;
      }

      while (v28);
    }

    *(v24 + 6) = v24 + 56;
  }

  *(v24 + 39) = a4;
  *(v24 + 40) = a5;
  *(v24 + 41) = a6;
  *(v24 + 42) = a7;
  *(v24 + 44) = a8;
  *(v24 + 45) = a9;
  CGDataProviderRetain(a12);
  *(v24 + 66) = a12;
  CGDataProviderRetain(a13);
  *(v24 + 67) = a13;
  if (a13)
  {
    v35 = a14 == 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = !v35;
  if (a3)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  v24[520] = v37;
  if (a14)
  {
    v38 = *(a2 + 16);
    if (v38)
    {
      v39 = v24 + 544;
      v40 = a14;
      do
      {
        v41 = *v40++;
        *v39++ = v41;
        --v38;
      }

      while (v38);
    }
  }

  if (*(a2 + 24))
  {
    v42 = v24 + 521;
    v43 = 1;
    v24[521] = 1;
  }

  else
  {
    v43 = a13 != 0;
    v42 = v24 + 521;
    v24[521] = v43;
    if (!a13)
    {
      goto LABEL_41;
    }
  }

  if (v37)
  {
    if (!a13 || !a14)
    {
      _CGHandleAssert("create_image_stream", 187, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "src_image_matte != NULL && src_smask_data_provider != NULL", "matte %p  provider %p", v32, v33, v34, a14);
    }

    v44 = *(a2 + 16);
    if (v44)
    {
      v45 = v24 + 392;
      do
      {
        v46 = *v25++;
        *v45++ = v46;
        --v44;
      }

      while (v44);
    }
  }

LABEL_41:
  if (a13)
  {
    v47 = 0;
  }

  else
  {
    v47 = v43;
  }

  v48 = CGAccessSessionCreate(a12);
  *(v24 + 84) = v48;
  if (!v48)
  {
    goto LABEL_58;
  }

  v49 = a6 > 0x10000 ? 1 : 0x10000 / a6;
  *(v24 + 43) = v49;
  v50 = a10 + v49 * a6;
  v51 = malloc_type_calloc(1uLL, v50, 0xF803A1DEuLL);
  *(v24 + 46) = v51;
  if (!v51)
  {
    goto LABEL_58;
  }

  if (*v42 == 1)
  {
    if (!a9)
    {
      _CGHandleAssert("create_image_stream", 218, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "src_smask_bytes_per_row > 0", "bpr %lu", v52, v53, v54, 0);
    }

    v55 = malloc_type_calloc(1uLL, a11 + v49 * a7, 0x3B22438DuLL);
    *(v24 + 47) = v55;
    if (!v55)
    {
      goto LABEL_58;
    }
  }

  if (a13)
  {
    v56 = CGAccessSessionCreate(a13);
    *(v24 + 85) = v56;
    if (!v56)
    {
LABEL_58:
      CGImageStreamRelease(v24);
      return 0;
    }
  }

  else if (v47)
  {
    v57 = malloc_type_calloc(1uLL, v50, 0x1DDFFADAuLL);
    *(v24 + 48) = v57;
    if (!v57)
    {
      goto LABEL_58;
    }

    memcpy(v24 + 696, a2, 0x130uLL);
    memcpy(v24 + 1000, a2, 0x130uLL);
    *(v24 + 180) = 5;
    *(v24 + 256) = 0;
    memset(&srcFormat, 0, sizeof(srcFormat));
    memcpy(__dst, v24 + 696, sizeof(__dst));
    CGBitmapPixelInfoGet_vImageFormat(&srcFormat, __dst, v58, v59, v60, v61, v62, v63);
    memset(&destFormat, 0, sizeof(destFormat));
    memcpy(__dst, v24 + 1000, sizeof(__dst));
    CGBitmapPixelInfoGet_vImageFormat(&destFormat, __dst, v64, v65, v66, v67, v68, v69);
    v70 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0x100u, 0);
    *(v24 + 86) = v70;
    if (!v70)
    {
      goto LABEL_58;
    }
  }

  return v24;
}

void CGImageStreamRelease(void *a1)
{
  v2 = a1[66];
  if (v2)
  {
    CGDataProviderRelease(v2);
  }

  v3 = a1[84];
  if (v3)
  {
    CGAccessSessionRelease(v3);
  }

  v4 = a1[67];
  if (v4)
  {
    CGDataProviderRelease(v4);
  }

  v5 = a1[85];
  if (v5)
  {
    CGAccessSessionRelease(v5);
  }

  v6 = a1[46];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[47];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[48];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[86];
  if (v9)
  {
    vImageConverter_Release(v9);
  }

  free(a1);
}

uint64_t CGColorTRCGetTypeID()
{
  if (CGColorTRCGetTypeID_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorTRCGetTypeID_cglibrarypredicate, &__block_literal_global_770);
  }

  v1 = CGColorTRCGetTypeID_f;

  return v1();
}

uint64_t CGColorMatrixGetTypeID()
{
  if (CGColorMatrixGetTypeID_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorMatrixGetTypeID_cglibrarypredicate, &__block_literal_global_16);
  }

  v1 = CGColorMatrixGetTypeID_f;

  return v1();
}

uint64_t CGColorNxMTransformGetTypeID()
{
  if (CGColorNxMTransformGetTypeID_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorNxMTransformGetTypeID_cglibrarypredicate, &__block_literal_global_24);
  }

  v1 = CGColorNxMTransformGetTypeID_f;

  return v1();
}

uint64_t CGColorNxMLUTGetTypeID()
{
  if (CGColorNxMTransformGetTypeID_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorNxMTransformGetTypeID_cglibrarypredicate, &__block_literal_global_24);
  }

  v1 = CGColorNxMTransformGetTypeID_f;

  return v1();
}

uint64_t CGColorNxMTransformGetVersion(uint64_t a1)
{
  if (CGColorNxMTransformGetVersion_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorNxMTransformGetVersion_cglibrarypredicate, &__block_literal_global_32);
  }

  v2 = CGColorNxMTransformGetVersion_f;

  return v2(a1);
}

uint64_t (*__nxm_get_properties_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncNxMGetProperties");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  nxm_get_properties_f = v1;
  return result;
}

uint64_t (*__nxm_get_input_range_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncNxMGetInputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  nxm_get_input_range_f_86 = v1;
  return result;
}

uint64_t (*__nxm_get_input_range_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncNxMGetInputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  nxm_get_input_range_f = v1;
  return result;
}

uint64_t (*__nxm_get_output_range_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncNxMGetOutputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  nxm_get_output_range_f_113 = v1;
  return result;
}

uint64_t (*__nxm_get_output_range_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncNxMGetOutputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  nxm_get_output_range_f = v1;
  return result;
}

uint64_t CGColorConversionInfoIterateColorSpaceFunctionsWithCallbacks(CGColorSpace *a1, CGColorSpace *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9)
{
  if (!CGColorSpaceSupportsOutput(a1))
  {
    return 0;
  }

  Type = CGColorSpaceGetType(a2);
  v18 = 0;
  if (Type <= 0xB && ((1 << Type) & 0xC78) != 0)
  {
    v18 = 1;
    v19 = CGColorConversionInfoCreateFromList(0, a2, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, a1, 1, 0, 0);
    if (v19)
    {
      v20 = v19;
      v21 = CGColorConversionInfoIterateFunctionsWithCallbacks(v19, a3, a4, a5, a6, a7, a8, a9);
      CFRelease(v20);
      return v21;
    }
  }

  return v18;
}

uint64_t CGColorConversionInfoIterateColorSpaceFunctionsWithCallbacksAndOptions(uint64_t a1, CGColorSpace *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, CFDictionaryRef options)
{
  Type = CGColorSpaceGetType(a2);
  v19 = 0;
  if (Type > 0xB)
  {
    return v19;
  }

  if (((1 << Type) & 0xC78) == 0)
  {
    return v19;
  }

  v19 = 1;
  v20 = CGColorConversionInfoCreateFromList(options, a2, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, a1, 1, 0, 0);
  if (!v20)
  {
    return v19;
  }

  v21 = v20;
  v22 = CGColorConversionInfoIterateFunctionsWithCallbacks(v20, a3, a4, a5, a6, a7, a8, a9);
  CFRelease(v21);
  return v22;
}

void CGFontDBRelease(char *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 1);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 2);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 3);
    if (v5)
    {
      CFRelease(v5);
    }

    pthread_mutex_destroy((a1 + 32));

    free(a1);
  }
}

uint64_t CGFontDBAddFont(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    pthread_mutex_lock((result + 32));
    if (a2)
    {
      v4 = (*(a2[2] + 160))(a2[14]);
      if (v4)
      {
        v5 = v4;
        CFDictionarySetValue(*(v3 + 8), v4, a2);
        CFRelease(v5);
      }

      v6 = (*(a2[2] + 176))(a2[14]);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(*(v3 + 8), v6, a2);
        CFRelease(v7);
      }
    }

    return pthread_mutex_unlock((v3 + 32));
  }

  return result;
}

uint64_t CGFontDBRemoveFont(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    pthread_mutex_lock((result + 32));
    if (a2)
    {
      v4 = (*(*(a2 + 16) + 160))(*(a2 + 112));
      v5 = (*(*(a2 + 16) + 176))(*(a2 + 112));
      remove_font_names_locked(v3, v4, v5);
      if (v4)
      {
        CFRelease(v4);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      remove_font_names_locked(v3, 0, 0);
    }

    return pthread_mutex_unlock((v3 + 32));
  }

  return result;
}

void remove_font_names_locked(CFArrayRef *a1, void *key, void *a3)
{
  if (key)
  {
    CFDictionaryRemoveValue(a1[1], key);
  }

  if (a3)
  {
    CFDictionaryRemoveValue(a1[1], a3);
  }

  Count = CFArrayGetCount(*a1);
  if (Count)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
      v10 = ValueAtIndex;
      if (key && CFDictionaryContainsKey(ValueAtIndex, key) || a3 && CFDictionaryContainsKey(v10, a3))
      {
        v11 = CFDictionaryGetCount(v10);
        MutableCopy = CFDictionaryCreateMutableCopy(0, v11, v10);
        v13 = MutableCopy;
        if (key)
        {
          CFDictionaryRemoveValue(MutableCopy, key);
        }

        if (a3)
        {
          CFDictionaryRemoveValue(v13, a3);
        }

        CFArraySetValueAtIndex(*a1, i, v13);
        CFRelease(v13);
      }
    }
  }
}

uint64_t CGFontDBRemoveFontByName(uint64_t result, void *a2)
{
  if (result && a2)
  {
    v3 = result;
    pthread_mutex_lock((result + 32));
    remove_font_names_locked(v3, a2, 0);

    return pthread_mutex_unlock((v3 + 32));
  }

  return result;
}

uint64_t CGFontDBPurgeAllFonts(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pthread_mutex_lock((result + 32));
    CFDictionaryRemoveAllValues(*(v1 + 8));

    return pthread_mutex_unlock((v1 + 32));
  }

  return result;
}

void CGFontDBAddFontReferencesAtPath(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      FontsWithPath = CGFontCreateFontsWithPath(a2, a2, a3, a4, a5, a6, a7, a8);
      if (FontsWithPath)
      {
        v11 = FontsWithPath;
        pthread_mutex_lock((a1 + 32));
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, 0);
        Count = CFArrayGetCount(v11);
        if (Count)
        {
          v14 = Count;
          for (i = 0; i != v14; ++i)
          {
            v16 = CFArrayGetValueAtIndex(v11, i);
            if (v16)
            {
              v17 = v16;
              v18 = (*(v16[2] + 160))(v16[14]);
              if (v18)
              {
                v19 = v18;
                CFDictionarySetValue(ValueAtIndex, v18, a2);
                CFRelease(v19);
              }

              v20 = (*(v17[2] + 176))(v17[14]);
              if (v20)
              {
                v21 = v20;
                CFDictionarySetValue(ValueAtIndex, v20, a2);
                CFRelease(v21);
              }
            }
          }
        }

        pthread_mutex_unlock((a1 + 32));

        CFRelease(v11);
      }
    }
  }
}

DIR *CGFontDBAddFontsInDirectory(uint64_t a1, CFStringRef string, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&v6, 0, sizeof(v6));
  result = CFStringGetFileSystemRepresentation(string, buffer, 1025);
  if (result)
  {
    result = stat(buffer, &v6);
    if (!result && (v6.st_mode & 0xF000) == 0x4000)
    {
      return activate_directory(a1, buffer, a3);
    }
  }

  return result;
}

DIR *activate_directory(uint64_t a1, uint64_t a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  __strcpy_chk();
  v5 = strlen(__s);
  v6 = v5;
  if (__s[v5 - 1] != 47)
  {
    *&__s[v5] = 47;
    v6 = v5 + 1;
  }

  result = opendir(__s);
  if (result)
  {
    v8 = result;
    while (1)
    {
      v9 = readdir(v8);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      if (v9->d_name[0] != 46 || v9->d_name[1] && (v9->d_name[1] != 46 || v9->d_name[2]))
      {
        strncpy(&__s[v6], v9->d_name, 1024 - v6);
        d_type = v10->d_type;
        if (d_type == 8)
        {
          v13 = CFStringCreateWithFileSystemRepresentation(0, __s);
          if (v13)
          {
            v20 = v13;
            CGFontDBAddFontReferencesAtPath(a1, v13, v14, v15, v16, v17, v18, v19);
            CFRelease(v20);
          }
        }

        else if (d_type == 4 && a3 != 0)
        {
          activate_directory(a1, __s, 1);
        }
      }
    }

    return closedir(v8);
  }

  return result;
}

__CFDictionary *CGFontDBCreatePlist(CFArrayRef *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v3)
    {
      v4 = v3;
      Count = CFArrayGetCount(*a1);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
          CFDictionaryApplyFunction(ValueAtIndex, append_to_dictionary, v4);
        }
      }

      CFDictionaryApplyFunction(a1[1], get_names_and_paths, v4);
      CFDictionarySetValue(Mutable, @"Names", v4);
    }

    else
    {
      v4 = Mutable;
      Mutable = 0;
    }

    CFRelease(v4);
  }

  return Mutable;
}

void get_names_and_paths(const void *a1, CFTypeRef cf, __CFDictionary *a3)
{
  v9 = CFGetTypeID(cf);
  if (_block_invoke_once_3400 != -1)
  {
    dispatch_once(&_block_invoke_once_3400, &__block_literal_global_8_3401);
  }

  if (v9 != CGFontGetTypeID_font_type_id)
  {
    if (cf)
    {
      v13 = CFGetTypeID(cf);
      v14 = CFCopyTypeIDDescription(v13);
      LOBYTE(v12) = CFStringGetCStringPtr(v14, 0x8000100u);
    }

    else
    {
      v12 = "<NULL>";
    }

    _CGHandleAssert("get_names_and_paths", 460, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGFontDB.c", "CFGetTypeID(value) == CGFontGetTypeID()", "value is a %s", v6, v7, v8, v12);
  }

  if (cf)
  {
    v10 = (*(*(cf + 2) + 232))(*(cf + 14));
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(a3, a1, v10);

      CFRelease(v11);
    }
  }
}

void append_to_dictionary(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (value)
  {
    CFDictionarySetValue(theDict, key, value);
  }
}

void CGFontDBAddFontsFromPlist(CFMutableArrayRef *a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"Names");
      if (Value)
      {
        v5 = Value;
        v6 = CFGetTypeID(Value);
        if (v6 == CFDictionaryGetTypeID())
        {
          CFArrayInsertValueAtIndex(*a1, 1, v5);
          v7 = CFDictionaryGetValue(theDict, @"Aliases");
          if (v7)
          {
            v8 = v7;
            v9 = CFGetTypeID(v7);
            if (v9 == CFDictionaryGetTypeID())
            {
              v10 = CFDictionaryGetValue(v8, @"Faces");
              if (v10)
              {
                v11 = v10;
                v12 = CFGetTypeID(v10);
                if (v12 == CFDictionaryGetTypeID())
                {
                  CFArrayInsertValueAtIndex(a1[2], 0, v11);
                }
              }

              v13 = CFDictionaryGetValue(v8, @"Families");
              if (v13)
              {
                v14 = v13;
                v15 = CFGetTypeID(v13);
                if (v15 == CFDictionaryGetTypeID())
                {
                  v16 = a1[3];

                  CFArrayInsertValueAtIndex(v16, 0, v14);
                }
              }
            }
          }
        }
      }
    }
  }
}

const void *CGFontDBGetFontWithName(uint64_t a1, const void *a2)
{
  v3 = a1;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (CGFontDBGetLocal_once != -1)
  {
    dispatch_once_f(&CGFontDBGetLocal_once, 0, create_local_db);
  }

  v3 = local_db;
  if (!a2)
  {
    return 0;
  }

LABEL_3:
  pthread_mutex_lock((v3 + 32));
  Value = CFDictionaryGetValue(*(v3 + 8), a2);
  if (Value)
  {
LABEL_4:
    pthread_mutex_unlock((v3 + 32));
    return Value;
  }

  Count = CFArrayGetCount(*v3);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*v3, v8);
      v10 = CFDictionaryGetValue(ValueAtIndex, a2);
      if (v10)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_14;
      }
    }

    add_fonts_at_path_locked(v3, v10, a2, v11, v12, v13, v14, v15);
    v19 = CFDictionaryGetValue(*(v3 + 8), a2);
    Value = v19;
    if (v19)
    {
      v20 = CFRetain(v19);
      CFAutorelease(v20);
    }

    goto LABEL_4;
  }

LABEL_14:
  v16 = copy_aliased_font_name_locked(v3, a2);
  if (!v16)
  {
    Value = 0;
    goto LABEL_4;
  }

  v17 = v16;
  pthread_mutex_unlock((v3 + 32));
  v18 = CGFontDBGetFontWithName(v3, v17);
  CFRelease(v17);
  return v18;
}

CFTypeRef copy_aliased_font_name_locked(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v7);
        Value = CFDictionaryGetValue(ValueAtIndex, a2);
        if (Value)
        {
          goto LABEL_13;
        }
      }

      while (v6 != ++v7);
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    return 0;
  }

  v11 = CFArrayGetCount(v10);
  if (v11 < 1)
  {
    return 0;
  }

  v12 = v11;
  v13 = 0;
  while (1)
  {
    v14 = CFArrayGetValueAtIndex(*(a1 + 24), v13);
    Value = CFDictionaryGetValue(v14, a2);
    if (Value)
    {
      break;
    }

    if (v12 == ++v13)
    {
      return 0;
    }
  }

LABEL_13:

  return CFRetain(Value);
}

CFTypeRef CGFontDBCopyFontWithName(uint64_t a1, const void *a2)
{
  v3 = a1;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (CGFontDBGetLocal_once != -1)
  {
    dispatch_once_f(&CGFontDBGetLocal_once, 0, create_local_db);
  }

  v3 = local_db;
  if (!a2)
  {
    return 0;
  }

LABEL_3:
  pthread_mutex_lock((v3 + 32));
  Value = CFDictionaryGetValue(*(v3 + 8), a2);
  if (Value)
  {
    v5 = Value;
    CFRetain(Value);
LABEL_5:
    pthread_mutex_unlock((v3 + 32));
    return v5;
  }

  Count = CFArrayGetCount(*v3);
  if (Count >= 1)
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*v3, v9);
      v11 = CFDictionaryGetValue(ValueAtIndex, a2);
      if (v11)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_15;
      }
    }

    add_fonts_at_path_locked(v3, v11, a2, v12, v13, v14, v15, v16);
    v20 = CFDictionaryGetValue(*(v3 + 8), a2);
    if (v20)
    {
      v5 = CFRetain(v20);
      goto LABEL_5;
    }

LABEL_19:
    v5 = 0;
    goto LABEL_5;
  }

LABEL_15:
  v17 = copy_aliased_font_name_locked(v3, a2);
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  pthread_mutex_unlock((v3 + 32));
  v19 = CGFontDBCopyFontWithName(v3, v18);
  CFRelease(v18);
  return v19;
}

void CGFontDBApplyFunction(uint64_t a1, unsigned int (*a2)(const void *, uint64_t), uint64_t a3)
{
  if (a2)
  {
    v5 = a1;
    if (a1)
    {
      goto LABEL_6;
    }

    if (CGFontDBGetLocal_once != -1)
    {
      dispatch_once_f(&CGFontDBGetLocal_once, 0, create_local_db);
    }

    v5 = local_db;
    if (local_db)
    {
LABEL_6:
      pthread_mutex_lock((v5 + 32));
      apply_function_locked(v5, a2, a3);

      pthread_mutex_unlock((v5 + 32));
    }
  }
}

void apply_function_locked(CFArrayRef *a1, unsigned int (*a2)(const void *, uint64_t), uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(*a1);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
      fault_all_in_map_locked(a1, ValueAtIndex);
    }
  }

  v10 = CFDictionaryGetCount(a1[1]);
  v12 = MEMORY[0x1EEE9AC00](8 * v10, v11);
  v15 = (v21 - v14);
  if (v13 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v16 = (v21 - v14);
  }

  else
  {
    v16 = 0;
  }

  if (v13 - 0x1FFFFFFFFFFFFFFFLL >= 0xE00000000000007ALL)
  {
    v16 = malloc_type_malloc(v12, 0x3FDBC428uLL);
  }

  if (v16)
  {
    CFDictionaryGetKeysAndValues(a1[1], 0, v16);
    Mutable = CFSetCreateMutable(0, v10, MEMORY[0x1E695E9F8]);
    if (Mutable)
    {
      v18 = Mutable;
      if (v10)
      {
        v19 = v16;
        do
        {
          v20 = *v19;
          if (!CFSetContainsValue(v18, *v19))
          {
            if (a2(v20, a3))
            {
              break;
            }

            CFSetAddValue(v18, v20);
          }

          ++v19;
          --v10;
        }

        while (v10);
      }

      CFRelease(v18);
    }

    if (v16 != v15)
    {
      free(v16);
    }
  }
}

void fault_all_in_map_locked(uint64_t a1, CFDictionaryRef theDict)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    if (Count)
    {
      v6 = Count;
      v7 = MEMORY[0x1EEE9AC00](16 * Count, v5);
      v10 = (&v18[-1] - v8 - 7);
      if (v9 <= 0x1FFFFFFFFFFFFFFELL)
      {
        v11 = (&v18[-1] - v8 - 7);
      }

      else
      {
        v11 = 0;
      }

      if (v9 - 0x1FFFFFFFFFFFFFFFLL >= 0xE00000000000007ALL)
      {
        v11 = malloc_type_malloc(v7, 0x3AF39A6DuLL);
      }

      if (v11)
      {
        CFDictionaryGetKeysAndValues(theDict, v11, &v11[v6]);
        for (i = 0; i != v6; ++i)
        {
          if (!CFDictionaryGetValue(*(a1 + 8), v11[i]))
          {
            add_fonts_at_path_locked(a1, *(&v11[v6] + i), v11[i], v13, v14, v15, v16, v17);
          }
        }

        if (v11 != v10)
        {
          free(v11);
        }
      }
    }
  }
}

uint64_t CGPDFImageCreate(uint64_t a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 80));
  mask = CGPDFDictionaryCopyAssociation(*(a1 + 48), "Image");
  if (mask)
  {
    goto LABEL_27;
  }

  v3 = *(a1 + 48);
  value = CGPDFDictionaryGetBoolean(v3, "ImageMask", &value);
  image_filter_name = get_image_filter_name(v3);
  v5 = objc_autoreleasePoolPush();
  if (CGAnalyticsSendCreatePDFImageEvent_onceToken == -1)
  {
    if (image_filter_name)
    {
LABEL_4:
      v6 = [CGAnalyticsSendCreatePDFImageEvent_filterNameToEnumMapping objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", image_filter_name)}];
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&CGAnalyticsSendCreatePDFImageEvent_onceToken, &__block_literal_global_16586);
    if (image_filter_name)
    {
      goto LABEL_4;
    }
  }

  v6 = 0;
LABEL_7:
  v7 = &unk_1EF254868;
  if (v6)
  {
    v7 = v6;
  }

  v31 = @"filterName";
  v32[0] = v7;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  send_analytics_event("com.apple.CoreGraphics.CreatePDFImage");
  objc_autoreleasePoolPop(v5);
  if (value)
  {
    mask = create_mask(a1);
    goto LABEL_25;
  }

  v32[0] = a1;
  if (CGPDFImageGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFImageGetTypeID_onceToken, &__block_literal_global_835);
  }

  cftype = pdf_create_cftype();
  mask = cftype;
  if (!cftype)
  {
    goto LABEL_25;
  }

  pthread_mutex_init((cftype + 152), 0);
  *(mask + 24) = a1;
  *(mask + 16) = 0;
  DataProvider = CGPDFStreamCreateDataProvider(a1, (mask + 40));
  *(mask + 32) = DataProvider;
  if (!DataProvider)
  {
    goto LABEL_24;
  }

  array = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  dict = 0;
  v10 = *(a1 + 48);
  if (!CGPDFDictionaryGetInteger(v10, "Width", &v31) || v31 <= 0)
  {
LABEL_24:
    CFRelease(mask);
    mask = 0;
    goto LABEL_25;
  }

  *(mask + 48) = v31;
  if (!CGPDFDictionaryGetInteger(v10, "Height", &v31) || v31 <= 0)
  {
LABEL_23:
    pdf_error(v12);
    goto LABEL_24;
  }

  *(mask + 56) = v31;
  if (*(mask + 40) == 2)
  {
    v11 = 0;
  }

  else
  {
    if (!CGPDFDictionaryGetInteger(v10, "BitsPerComponent", &v31))
    {
      goto LABEL_24;
    }

    v11 = v31;
    if (v31 > 0x10 || ((1 << v31) & 0x10116) == 0)
    {
      goto LABEL_24;
    }
  }

  *(mask + 64) = v11;
  set_image_rendering_intent(mask, v10);
  if (!CGPDFDictionaryGetObject(v10, "ColorSpace", &v29))
  {
    if (*(mask + 40) != 2)
    {
      goto LABEL_24;
    }

    v29 = 0;
    goto LABEL_38;
  }

  if (!v29)
  {
LABEL_38:
    *(mask + 72) = 0;
    goto LABEL_39;
  }

  v14 = CGPDFCreateColorSpace(v29);
  *(mask + 72) = v14;
  if (!v14 || CGColorSpaceGetType(v14) == 9)
  {
    goto LABEL_24;
  }

LABEL_39:
  *(mask + 84) = 0;
  if (CGPDFDictionaryGetBoolean(v10, "Interpolate", &v27))
  {
    *(mask + 84) = v27 != 0;
  }

  v15 = *(mask + 72);
  if (v15)
  {
    v16 = *(*(v15 + 24) + 48);
  }

  else
  {
    v16 = 0;
  }

  set_image_decode_array(mask, v10, v16, 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_24;
  }

  *(mask + 88) = v16 == 3;
  if (*(mask + 40) == 1)
  {
    if (CGPDFDictionaryGetDictionary(v10, "DecodeParms", &dict) || CGPDFDictionaryGetDictionary(v10, "DP", &dict))
    {
      if (dict && CGPDFDictionaryGetInteger(dict, "ColorTransform", &v31))
      {
        if (v31 > 1)
        {
        }

        else
        {
          *(mask + 88) = v31;
        }
      }
    }

    else
    {
      dict = 0;
    }
  }

  v25 = 0;
  v24 = 0;
  if (CGPDFDictionaryGetInteger(v10, "SMaskInData", &v25) && v25 || CGPDFDictionaryGetBoolean(v10, "SMaskInData", &v24) && v24)
  {
    *(mask + 120) = 1;
  }

  if (CGPDFDictionaryGetStream(v10, "SMask", v32))
  {
    smask = create_smask(v32[0], v16);
    *(mask + 112) = smask;
    if (!smask)
    {
      goto LABEL_24;
    }
  }

  else if (CGPDFDictionaryGetStream(v10, "Mask", v32))
  {
    v19 = create_mask(v32[0]);
    *(mask + 104) = v19;
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  else if (CGPDFDictionaryGetArray(v10, "Mask", &array))
  {
    v20 = 2 * v16;
    v21 = malloc_type_malloc(16 * v16, 0x100004000313F17uLL);
    __CFSetLastAllocationEventName();
    *(mask + 128) = v21;
    if (!CGPDFArrayGetNumbers(array, v21, v20))
    {
      goto LABEL_24;
    }
  }

  if (CGPDFDictionaryGetStream(v10, "AAPL:EPSData", v32))
  {
    v22 = CGPDFStreamCreateDataProvider(v32[0], &v28);
    *(mask + 96) = v22;
    if (!v22 || v28)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  if (mask)
  {
    mask = CGPDFDictionarySetAssociation(*(a1 + 48), mask, "Image");
  }

LABEL_27:
  os_unfair_lock_unlock((a1 + 80));
  return mask;
}

char *get_image_filter_name(CGPDFDictionary *a1)
{
  array = 0;
  value = 0;
  if (CGPDFDictionaryGetName(a1, "Filter", &value))
  {
    return value;
  }

  if (!CGPDFDictionaryGetArray(a1, "Filter", &array))
  {
    return 0;
  }

  result = array;
  if (!array)
  {
    return result;
  }

  v3 = *(array + 3) - *(array + 2);
  if (!v3)
  {
    return 0;
  }

  if (CGPDFArrayGetName(array, (v3 >> 3) - 1, &value))
  {
    return value;
  }

  return 0;
}

uint64_t create_mask(void *a1)
{
  if (CGPDFImageGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFImageGetTypeID_onceToken, &__block_literal_global_835);
  }

  cftype = pdf_create_cftype();
  v3 = cftype;
  if (cftype)
  {
    pthread_mutex_init((cftype + 152), 0);
    *(v3 + 24) = a1;
    *(v3 + 16) = 1;
    DataProvider = CGPDFStreamCreateDataProvider(a1, (v3 + 40));
    *(v3 + 32) = DataProvider;
    if (!DataProvider)
    {
LABEL_22:
      CFRelease(v3);
      return 0;
    }

    v15 = 0;
    *value = 0;
    if (a1)
    {
      a1 = a1[6];
    }

    if (!CGPDFDictionaryGetBoolean(a1, "ImageMask", &value[1]) || !value[1])
    {
      goto LABEL_22;
    }

    if (!CGPDFDictionaryGetInteger(a1, "Width", &v15) || v15 <= 0)
    {
      goto LABEL_22;
    }

    *(v3 + 48) = v15;
    if (!CGPDFDictionaryGetInteger(a1, "Height", &v15) || v15 <= 0)
    {
      goto LABEL_22;
    }

    *(v3 + 56) = v15;
    if (*(v3 + 40) == 2)
    {
      v8 = 0;
    }

    else
    {
      Integer = CGPDFDictionaryGetInteger(a1, "BitsPerComponent", &v15);
      v8 = 1;
      if (Integer && v15 != 1)
      {
        goto LABEL_22;
      }
    }

    *(v3 + 64) = v8;
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    *(v3 + 84) = 0;
    if (CGPDFDictionaryGetBoolean(a1, "Interpolate", value))
    {
      *(v3 + 84) = value[0] != 0;
    }

    v9 = set_image_decode_array(v3, a1, 1, 0);
    if ((v10 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  return v3;
}

void set_image_rendering_intent(uint64_t a1, CGPDFDictionaryRef dict)
{
  value = 0;
  if (CGPDFDictionaryGetName(dict, "Intent", &value))
  {
    v3 = value;
    if (!strcmp(value, "AbsoluteColorimetric"))
    {
      v4 = 1;
      goto LABEL_12;
    }

    if (!strcmp(v3, "RelativeColorimetric"))
    {
      v4 = 2;
      goto LABEL_12;
    }

    if (!strcmp(v3, "Saturation"))
    {
      v4 = 4;
      goto LABEL_12;
    }

    if (!strcmp(v3, "Perceptual"))
    {
      v4 = 3;
      goto LABEL_12;
    }
  }

  v4 = 0;
LABEL_12:
  *(a1 + 80) = v4;
}

CGPDFReal set_image_decode_array(uint64_t a1, CGPDFDictionaryRef dict, uint64_t a3, int a4)
{
  if (*(a1 + 40) != 2 || CGPDFDictionaryGetObject(dict, "ColorSpace", 0) || (*(a1 + 16)) && ((array = 0, CGPDFDictionaryGetArray(dict, "Decode", &array)) || a4 && CGPDFDictionaryGetArray(dict, "D", &array)))
  {
    v9 = malloc_type_malloc(16 * a3, 0x100004000313F17uLL);
    __CFSetLastAllocationEventName();
    *(a1 + 136) = v9;
    v10 = array;
    if (array)
    {
      v11 = 2 * a3;
      if (2 * a3 <= ((*(array + 3) - *(array + 2)) >> 3))
      {
        if (v11)
        {
          v12 = 0;
          value = 0.0;
          do
          {
            if (!CGPDFArrayGetNumber(v10, v12, &value))
            {
              break;
            }

            result = value;
            v9[v12++] = value;
          }

          while (v11 != v12);
        }
      }
    }
  }

  else
  {
    *(a1 + 136) = 0;
  }

  return result;
}

uint64_t create_smask(void *a1, uint64_t a2)
{
  if (CGPDFImageGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFImageGetTypeID_onceToken, &__block_literal_global_835);
  }

  cftype = pdf_create_cftype();
  v5 = cftype;
  if (cftype)
  {
    pthread_mutex_init((cftype + 152), 0);
    *(v5 + 24) = a1;
    *(v5 + 16) = 0;
    DataProvider = CGPDFStreamCreateDataProvider(a1, (v5 + 40));
    *(v5 + 32) = DataProvider;
    if (DataProvider)
    {
      __s1 = 0;
      v15 = 0;
      array = 0;
      *value = 0;
      if (a1)
      {
        a1 = a1[6];
      }

      if (CGPDFDictionaryGetBoolean(a1, "ImageMask", &value[1]) && value[1])
      {
      }

      else if (CGPDFDictionaryGetInteger(a1, "Width", &v15) && v15 > 0)
      {
        *(v5 + 48) = v15;
        if (CGPDFDictionaryGetInteger(a1, "Height", &v15) && v15 > 0)
        {
          *(v5 + 56) = v15;
          if (*(v5 + 40) == 2)
          {
            v7 = 0;
          }

          else
          {
            if (!CGPDFDictionaryGetInteger(a1, "BitsPerComponent", &v15))
            {
              goto LABEL_18;
            }

            v7 = v15;
            if (v15 > 0x10 || ((1 << v15) & 0x10116) == 0)
            {
              goto LABEL_18;
            }
          }

          *(v5 + 64) = v7;
          if (CGPDFDictionaryGetName(a1, "ColorSpace", &__s1))
          {
            if (__s1)
            {
              if (strcmp(__s1, "DeviceGray"))
              {
                goto LABEL_18;
              }

              DeviceGray = CGColorSpaceCreateDeviceGray();
            }

            else
            {
              DeviceGray = 0;
            }
          }

          else
          {
            if (*(v5 + 40) != 2)
            {
              goto LABEL_18;
            }

            DeviceGray = 0;
            __s1 = 0;
          }

          *(v5 + 72) = DeviceGray;
          *(v5 + 84) = 0;
          if (CGPDFDictionaryGetBoolean(a1, "Interpolate", value))
          {
            *(v5 + 84) = value[0] != 0;
          }

          set_image_decode_array(v5, a1, 1, 0);
          if (v10)
          {
            *(v5 + 144) = 0;
            if (CGPDFDictionaryGetArray(a1, "Matte", &array) && (v11 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL), __CFSetLastAllocationEventName(), *(v5 + 144) = v11, (CGPDFArrayGetNumbers(array, v11, a2) & 1) == 0))
            {
            }

            else if (CGPDFDictionaryGetObject(a1, "Mask", 0))
            {
            }

            else
            {
              if (!CGPDFDictionaryGetStream(a1, "SMask", 0))
              {
                return v5;
              }
            }
          }

          else
          {
          }

          goto LABEL_18;
        }
      }

      else
      {
      }
    }

LABEL_18:
    CFRelease(v5);
    return 0;
  }

  return v5;
}

uint64_t __CGPDFImageGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFImageGetTypeID_class);
  CGPDFImageGetTypeID_id = result;
  return result;
}

uint64_t CGPDFImageFinalize(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    CFRelease(v2);
  }

  CGDataProviderRelease(*(a1 + 96));
  CGDataProviderRelease(*(a1 + 32));
  CGColorSpaceRelease(*(a1 + 72));
  v3 = *(a1 + 112);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    CFRelease(v4);
  }

  free(*(a1 + 128));
  free(*(a1 + 136));
  free(*(a1 + 144));

  return pthread_mutex_destroy((a1 + 152));
}

uint64_t CGPDFImageCreateInline(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *(a2 + 48);
  }

  else
  {
    v4 = 0;
  }

  value = 0;
  if (!CGPDFDictionaryGetBoolean(v4, "ImageMask", &value) && !CGPDFDictionaryGetBoolean(v4, "IM", &value))
  {
    value = 0;
LABEL_24:
    if (CGPDFImageGetTypeID_onceToken != -1)
    {
      dispatch_once(&CGPDFImageGetTypeID_onceToken, &__block_literal_global_835);
    }

    cftype = pdf_create_cftype();
    v6 = cftype;
    if (!cftype)
    {
      return v6;
    }

    pthread_mutex_init((cftype + 152), 0);
    *(v6 + 24) = v2;
    *(v6 + 16) = 0;
    DataProvider = CGPDFStreamCreateDataProvider(v2, (v6 + 40));
    *(v6 + 32) = DataProvider;
    if (!DataProvider)
    {
LABEL_108:
      CFRelease(v6);
      return 0;
    }

    v42 = 0;
    v43 = 0.0;
    dict = 0;
    v41 = 0;
    v39 = 0;
    if (v2)
    {
      v2 = v2[6];
    }

    if (!CGPDFDictionaryGetNumber(v2, "Width", &v43) || (v16 = v43, v43 < 1.0))
    {
      if (!CGPDFDictionaryGetNumber(v2, "W", &v43) || (v16 = v43, v43 < 1.0))
      {
        goto LABEL_108;
      }
    }

    *(v6 + 48) = v16;
    if (!CGPDFDictionaryGetNumber(v2, "Height", &v43) || (v17 = v43, v43 < 1.0))
    {
      if (!CGPDFDictionaryGetNumber(v2, "H", &v43) || (v17 = v43, v43 < 1.0))
      {
        goto LABEL_108;
      }
    }

    *(v6 + 56) = v17;
    if (*(v6 + 40) == 2)
    {
      v18 = 0;
    }

    else
    {
      if (!CGPDFDictionaryGetInteger(v2, "BitsPerComponent", &v42) && !CGPDFDictionaryGetInteger(v2, "BPC", &v42))
      {
        goto LABEL_108;
      }

      v18 = v42;
      if (v42 > 0x10 || ((1 << v42) & 0x10116) == 0)
      {
        return 0;
      }
    }

    *(v6 + 64) = v18;
    if (!CGPDFDictionaryGetObject(v2, "ColorSpace", &v41) && !CGPDFDictionaryGetObject(v2, "CS", &v41))
    {
      if (*(v6 + 40) != 2)
      {
        goto LABEL_108;
      }

      v21 = 0;
      v41 = 0;
      goto LABEL_60;
    }

    if (!v41)
    {
      v21 = 0;
      goto LABEL_60;
    }

    v45 = 0;
    v46 = 0;
    v44 = 0;
    v19 = *(v41 + 2);
    if (v19 == 7)
    {
      v22 = *(v41 + 4);
      if (v22)
      {
        if (*(v22 + 3) - *(v22 + 2) == 32 && CGPDFArrayGetName(v22, 0, &v46))
        {
          v23 = v46;
          if ((!strcmp(v46, "Indexed") || *v23 == 73 && !v23[1]) && CGPDFArrayGetName(v22, 1uLL, &v46) && CGPDFArrayGetInteger(v22, 2uLL, &v44) && CGPDFArrayGetString(v22, 3uLL, &v45))
          {
            inline_device_color_space = create_inline_device_color_space(v46);
            if (inline_device_color_space)
            {
              v25 = inline_device_color_space;
              v26 = v45;
              v27 = *(*(inline_device_color_space + 3) + 48) + *(*(inline_device_color_space + 3) + 48) * v44;
              if (v45)
              {
                if (*(v45 + 3))
                {
                  decrypt_string(v45);
                }

                v28 = *(v26 + 9);
              }

              else
              {
                v28 = 0;
              }

              if (v27 == v28)
              {
                v36 = v45;
                if (v45)
                {
                  if (*(v45 + 3))
                  {
                    decrypt_string(v45);
                  }

                  Indexed = CGColorSpaceCreateIndexed(v25, v44, v36 + 80);
                  CGColorSpaceRelease(v25);
                  *(v6 + 72) = Indexed;
                  if (Indexed)
                  {
                    goto LABEL_61;
                  }

LABEL_106:
LABEL_107:
                  pdf_error(v10);
                  goto LABEL_108;
                }
              }

              CGColorSpaceRelease(v25);
            }
          }
        }
      }
    }

    else if (v19 == 5)
    {
      v46 = *(v41 + 4);
      v20 = create_inline_device_color_space(v46);
      if (v20)
      {
        v21 = v20;
LABEL_60:
        *(v6 + 72) = v21;
LABEL_61:
        set_image_rendering_intent(v6, v2);
        *(v6 + 84) = (CGPDFDictionaryGetBoolean(v2, "Interpolate", &v39) || CGPDFDictionaryGetBoolean(v2, "I", &v39)) && v39 != 0;
        v30 = *(v6 + 72);
        if (v30)
        {
          v31 = *(*(v30 + 24) + 48);
        }

        else
        {
          v31 = 0;
        }

        v42 = v31;
        set_image_decode_array(v6, v2, v31, 1);
        if ((v32 & 1) == 0)
        {
          goto LABEL_108;
        }

        *(v6 + 88) = v42 == 3;
        if (*(v6 + 40) == 1 && (CGPDFDictionaryGetDictionary(v2, "DecodeParms", &dict) || CGPDFDictionaryGetDictionary(v2, "DP", &dict)) && dict && CGPDFDictionaryGetInteger(dict, "ColorTransform", &v42))
        {
          if (v42 > 1)
          {
          }

          else
          {
            *(v6 + 88) = v43;
          }
        }

        return v6;
      }

      if (a1)
      {
        v33 = v46;
        while (1)
        {
          ColorSpace = CGPDFResourcesGetColorSpace(*(a1 + 32), v33);
          if (ColorSpace)
          {
            break;
          }

          a1 = *(a1 + 40);
          if (!a1)
          {
            goto LABEL_105;
          }
        }

        v21 = ColorSpace;
        CFRetain(ColorSpace);
        goto LABEL_60;
      }
    }

LABEL_105:
    *(v6 + 72) = 0;
    goto LABEL_106;
  }

  if (!value)
  {
    goto LABEL_24;
  }

  if (CGPDFImageGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFImageGetTypeID_onceToken, &__block_literal_global_835);
  }

  v5 = pdf_create_cftype();
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  pthread_mutex_init((v5 + 152), 0);
  *(v6 + 24) = v2;
  *(v6 + 16) = 1;
  v7 = CGPDFStreamCreateDataProvider(v2, (v6 + 40));
  *(v6 + 32) = v7;
  if (!v7)
  {
    goto LABEL_108;
  }

  v46 = 0;
  LOBYTE(v45) = 0;
  if (v2)
  {
    v2 = v2[6];
  }

  if (!CGPDFDictionaryGetInteger(v2, "Width", &v46) || (v8 = v46, v46 <= 0))
  {
    Integer = CGPDFDictionaryGetInteger(v2, "W", &v46);
    if (!Integer)
    {
      goto LABEL_107;
    }

    v8 = v46;
    if (v46 < 1)
    {
      goto LABEL_107;
    }
  }

  *(v6 + 48) = v8;
  if (!CGPDFDictionaryGetInteger(v2, "Height", &v46) || (v11 = v46, v46 <= 0))
  {
    v12 = CGPDFDictionaryGetInteger(v2, "H", &v46);
    if (!v12)
    {
      goto LABEL_107;
    }

    v11 = v46;
    if (v46 < 1)
    {
      goto LABEL_107;
    }
  }

  *(v6 + 56) = v11;
  if (*(v6 + 40) == 2)
  {
    v13 = 0;
    goto LABEL_80;
  }

  if (!CGPDFDictionaryGetInteger(v2, "BitsPerComponent", &v46) && !CGPDFDictionaryGetInteger(v2, "BPC", &v46))
  {
    v13 = 1;
    v46 = 1;
    goto LABEL_80;
  }

  v13 = v46;
  if (v46 != 1)
  {
    goto LABEL_108;
  }

LABEL_80:
  *(v6 + 64) = v13;
  *(v6 + 84) = (CGPDFDictionaryGetBoolean(v2, "Interpolate", &v45) || CGPDFDictionaryGetBoolean(v2, "I", &v45)) && v45 != 0;
  set_image_decode_array(v6, v2, 1, 1);
  if ((v29 & 1) == 0)
  {
    goto LABEL_108;
  }

  return v6;
}

CGColorSpaceRef create_inline_device_color_space(char *__s1)
{
  if (*__s1 == 71 && !__s1[1] || !strcmp(__s1, "DeviceGray"))
  {

    return CGColorSpaceCreateDeviceGray();
  }

  else if (!strcmp(__s1, "RGB") || !strcmp(__s1, "DeviceRGB"))
  {

    return CGColorSpaceCreateDeviceRGB();
  }

  else if (!strcmp(__s1, "CMYK") || !strcmp(__s1, "DeviceCMYK"))
  {

    return CGColorSpaceCreateDeviceCMYK();
  }

  else
  {
    return 0;
  }
}

CGImageRef CGPDFImageCreateImageForRenderingSize(CGImageRef result, uint64_t a2, double a3, double a4)
{
  if (result)
  {
    v7 = result;
    CFRetain(result);
    if (a3 == 0.0 && a4 == 0.0)
    {
      goto LABEL_4;
    }

    v9 = *(v7 + 48) / a3;
    if (v9 >= *(v7 + 56) / a4)
    {
      v9 = *(v7 + 56) / a4;
    }

    if (v9 >= 16.0)
    {
      v8 = 16;
    }

    else if (v9 >= 8.0)
    {
      v8 = 8;
    }

    else if (v9 >= 4.0)
    {
      v8 = 4;
    }

    else
    {
      if (v9 < 2.0)
      {
LABEL_4:
        v8 = 1;
        goto LABEL_15;
      }

      v8 = 2;
    }

LABEL_15:
    if ((*(v7 + 16) & 1) == 0)
    {
      ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(a2, *(v7 + 72));
      if (!CGColorSpaceEqualToColorSpace(ResolvedColorSpace, *(v7 + 72)))
      {
        image_for_image = create_image_for_image(v7, ResolvedColorSpace, v8);
        CGColorSpaceRelease(ResolvedColorSpace);
        CFRelease(v7);
        return image_for_image;
      }

      CGColorSpaceRelease(ResolvedColorSpace);
    }

    pthread_mutex_lock((v7 + 152));
    v11 = *(v7 + 216);
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = *(v11 + 216);
    if (v12)
    {
      Property = CGPropertiesGetProperty(v12, @"com.apple.CoreGraphics.SubsampleFactor");
      if (Property)
      {
        valuePtr = 0;
        CFNumberGetValue(Property, kCFNumberIntType, &valuePtr);
        if (v8 < valuePtr)
        {
          pdf_log("CGPDFImage(%p): subsample_factor MISMATCH. existing = %d, requested = %d\n", v7, valuePtr, v8);
          v14 = *(v7 + 216);
          *(v7 + 216) = 0;
          if (v14)
          {
            CFRelease(v14);
          }
        }
      }
    }

    v15 = *(v7 + 216);
    if (!v15)
    {
LABEL_25:
      if (*(v7 + 16) == 1)
      {
        if (*(v7 + 40))
        {
          *(v7 + 216) = 0;
LABEL_36:
          pthread_mutex_unlock((v7 + 152));
          CFRelease(v7);
          return *(v7 + 216);
        }

        v17 = mask_create(*(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 64), (*(v7 + 48) * *(v7 + 64) + 7) >> 3, *(v7 + 32), *(v7 + 136), *(v7 + 84), 4);
      }

      else
      {
        pdf_log("CGPDFImage(%p): Creating image with subsample_factor = %d\n", v7, v8);
        v17 = create_image_for_image(v7, *(v7 + 72), v8);
      }

      *(v7 + 216) = v17;
      if (!v17)
      {
        goto LABEL_36;
      }

      v20 = *(v7 + 48) / *(v17 + 40);
      v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v20);
      if (v18)
      {
        v19 = v18;
        CGImageSetProperty(*(v7 + 216), @"com.apple.CoreGraphics.SubsampleFactor", v18);
        CFRelease(v19);
      }

      v15 = *(v7 + 216);
      if (!v15)
      {
        goto LABEL_36;
      }
    }

    CFRetain(v15);
    goto LABEL_36;
  }

  return result;
}

CGImageRef create_image_for_image(uint64_t a1, CGColorSpaceRef space, int a3)
{
  v5 = *(a1 + 40);
  if (v5 == 2)
  {
    v23 = *(a1 + 32);
    v24 = *(a1 + 136);
    v25 = *(a1 + 84);
    v26 = *(a1 + 80);
    v27 = *(a1 + 120);
    if (CGImageCreateWithJPEG2000DataProvider_predicate != -1)
    {
      dispatch_once(&CGImageCreateWithJPEG2000DataProvider_predicate, &__block_literal_global_171);
    }

    CopyWithColorSpace = CGImageCreateWithJPEG2000DataProvider_f(v23, 0);
    if (!CopyWithColorSpace)
    {
      return CopyWithColorSpace;
    }

    if (CGImageCreateWithJPEG2000DataProvider_predicate_173 != -1)
    {
      dispatch_once(&CGImageCreateWithJPEG2000DataProvider_predicate_173, &__block_literal_global_176);
    }

    v29 = CGImageCreateWithJPEG2000DataProvider_f_172(CopyWithColorSpace);
    if (!v29 || !CFEqual(v29, @"public.jpeg-2000"))
    {
      v34 = 0;
LABEL_92:
      CFRelease(CopyWithColorSpace);
      return v34;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v31 = Mutable;
    if (Mutable)
    {
      if ((v27 & 1) == 0)
      {
        CFDictionaryAddValue(Mutable, @"kCGImageSourceSkipAlpha", *MEMORY[0x1E695E4D0]);
      }

      CFDictionaryAddValue(v31, @"kCGImageSourceShouldCache", *MEMORY[0x1E695E4C0]);
    }

    if (CGImageCreateWithJPEG2000DataProvider_predicate_184 != -1)
    {
      dispatch_once(&CGImageCreateWithJPEG2000DataProvider_predicate_184, &__block_literal_global_187);
    }

    v9 = CGImageCreateWithJPEG2000DataProvider_f_183(CopyWithColorSpace, 0, v31);
    if (v31)
    {
      CFRelease(v31);
    }

    CFRelease(CopyWithColorSpace);
    if (!v9)
    {
      return 0;
    }

    if (v25)
    {
      v32 = 0x1000000;
    }

    else
    {
      v32 = 0;
    }

    *(v9 + 9) = v32 & 0xFFFF00FF | (v26 << 8) | *(v9 + 9) & 0xFEFF00FF;
    if (space)
    {
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v9, space);
      CFRelease(v9);
      if (!CopyWithColorSpace)
      {
        return CopyWithColorSpace;
      }

      v33 = *(*(space + 3) + 48);
      v9 = CopyWithColorSpace;
    }

    else
    {
      v33 = 0;
    }

    v36 = v9;
    v37 = v24;
    goto LABEL_66;
  }

  if (v5 == 1)
  {
    CGColorSpaceGetModel(space);
    v11 = *(a1 + 32);
    v12 = *(a1 + 136);
    v13 = *(a1 + 84);
    v14 = *(a1 + 80);
    v15 = *(a1 + 88);
    if (CGImageCreateWithJPEGDataProvider3_predicate != -1)
    {
      dispatch_once(&CGImageCreateWithJPEGDataProvider3_predicate, &__block_literal_global_119_5283);
    }

    v16 = CGImageCreateWithJPEGDataProvider3_f(v11, 0);
    if (!v16)
    {
      return 0;
    }

    v17 = v16;
    if (CGImageCreateWithJPEGDataProvider3_predicate_121 != -1)
    {
      dispatch_once(&CGImageCreateWithJPEGDataProvider3_predicate_121, &__block_literal_global_124);
    }

    v18 = CGImageCreateWithJPEGDataProvider3_f_120(v17);
    if (v18 && CFEqual(v18, @"public.jpeg"))
    {
      v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v20 = v19;
      if (v19)
      {
        if (*MEMORY[0x1E695E4C0])
        {
          CFDictionarySetValue(v19, @"kCGImageSourceShouldCache", *MEMORY[0x1E695E4C0]);
        }

        if ((v15 & 0x80000000) == 0)
        {
          CGCFDictionarySetInteger(v20, @"kCGImageSourceColorTransform", v15);
          if (space)
          {
            CFDictionarySetValue(v20, @"kCGImageSourceColorTransformSpace", space);
          }
        }

        if (a3 >= 2)
        {
          CGCFDictionarySetInteger(v20, @"kCGImageSourceSubsampleFactor", a3);
        }
      }

      if (CGImageCreateWithJPEGDataProvider3_predicate_165 != -1)
      {
        dispatch_once(&CGImageCreateWithJPEGDataProvider3_predicate_165, &__block_literal_global_168);
      }

      v21 = CGImageCreateWithJPEGDataProvider3_f_164(v17, 0, v20);
      if (v21)
      {
        v9 = v21;
        if (v20)
        {
          CFRelease(v20);
        }

        CFRelease(v17);
        if (v13)
        {
          v22 = 0x1000000;
        }

        else
        {
          v22 = 0;
        }

        *(v9 + 9) = v22 & 0xFFFF00FF | (v14 << 8) | *(v9 + 9) & 0xFEFF00FF;
        if (space)
        {
          cgimage_set_decode_array(v9, v12, *(*(space + 3) + 48));
          v17 = v9;
          v9 = CGImageCreateCopyWithColorSpace(v9, space);
LABEL_59:
          CFRelease(v17);
          goto LABEL_60;
        }

        v36 = v9;
        v37 = v12;
        v33 = 0;
LABEL_66:
        cgimage_set_decode_array(v36, v37, v33);
        goto LABEL_67;
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    v9 = 0;
    goto LABEL_59;
  }

  if (v5)
  {
    return 0;
  }

  if (!space)
  {
    return 0;
  }

  v6 = *(*(space + 3) + 48);
  if (!v6)
  {
    return 0;
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 48);
  if (v8 >= 0xFFFFFFFFFFFFFFF7 / (v7 * v6))
  {
    return 0;
  }

  v9 = CGImageCreate(v8, *(a1 + 56), v7, v7 * v6, (v7 * v6 * v8 + 7) >> 3, space, 0, *(a1 + 32), *(a1 + 136), *(a1 + 84), *(a1 + 80));
LABEL_60:
  if (!v9)
  {
    return 0;
  }

LABEL_67:
  if (*(a1 + 120) == 1 && *(a1 + 40) == 2)
  {
    if ((*(v9 + 39) & 4) != 0)
    {
      v38 = *(a1 + 112);
      if (v38)
      {
        CFRelease(v38);
      }

      *(a1 + 112) = 0;
    }

    else
    {
      *(a1 + 120) = 0;
    }
  }

  v39 = *(a1 + 128);
  if (v39)
  {
    CopyWithColorSpace = CGImageCreateWithMaskingColors(v9, v39);
    goto LABEL_87;
  }

  v40 = *(a1 + 112);
  if (v40)
  {
    ImageForRenderingSize = CGPDFImageCreateImageForRenderingSize(v40, 0, 0.0, 0.0);
    if (ImageForRenderingSize)
    {
      v42 = ImageForRenderingSize;
      if (is_image_alpha_opaque(ImageForRenderingSize))
      {
        CopyWithColorSpace = 0;
      }

      else
      {
        v44 = CGImageCreateWithMaskAndMatte(v9, v42, *(a1 + 144));
        CopyWithColorSpace = v44;
        if (v44)
        {
          CopyByApplyingSoftMask = CGImageCreateCopyByApplyingSoftMask(v44, v45, v46, v47, v48, v49, v50, v51);
          if (CopyByApplyingSoftMask)
          {
            v53 = CopyByApplyingSoftMask;
            CFRelease(CopyWithColorSpace);
            CopyWithColorSpace = v53;
          }
        }
      }

      goto LABEL_86;
    }

LABEL_89:
    CopyWithColorSpace = v9;
    goto LABEL_90;
  }

  v43 = *(a1 + 104);
  if (!v43)
  {
    goto LABEL_89;
  }

  v42 = CGPDFImageCreateImageForRenderingSize(v43, 0, 0.0, 0.0);
  CopyWithColorSpace = CGImageCreateWithMaskAndMatte(v9, v42, 0);
  if (v42)
  {
LABEL_86:
    CFRelease(v42);
  }

LABEL_87:
  if (!CopyWithColorSpace)
  {
    goto LABEL_89;
  }

  CFRelease(v9);
LABEL_90:
  v54 = *(a1 + 96);
  if (v54)
  {
    v34 = CGImageCreateWithEPSDataProvider(v54, CopyWithColorSpace);
    if (v34)
    {
      goto LABEL_92;
    }
  }

  return CopyWithColorSpace;
}

void CGContextDrawConicGradient(CGContextRef c, CGGradientRef gradient, CGPoint center, CGFloat angle)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (gradient)
      {
        v12 = *(c + 5);
        if (v12)
        {
          y = center.y;
          x = center.x;
          v16 = *(v12 + 120);
          if (!v16 || v16(center, *&center.y, angle) == 1006)
          {
            v17 = *(gradient + 3);
            Function = CGGradientGetFunction(gradient, gradient, v4, v5, v6, v7, v8, v9);
            Conic = CGShadingCreateConic(v17, Function, x, y, angle, v19, v20, v21, v22, v23, v24);
            CGContextDrawShading(c, Conic);
            if (Conic)
            {

              CFRelease(Conic);
            }
          }
        }
      }

      return;
    }

    v26 = c;
  }

  else
  {
    v26 = 0;
  }

  handle_invalid_context("CGContextDrawConicGradient", v26, v4, v5, v6, v7, v8, v9);
}

float64x2_t CGSScanconverterAddLineToPoint(uint64_t a1, float64x2_t result, double a3)
{
  v3 = a3;
  v4.f64[0] = result.f64[0];
  if ((*&result.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v6 != result.f64[0] || v7 != v3)
    {
      if (v6 >= result.f64[0])
      {
        if (v6 <= result.f64[0])
        {
LABEL_16:
          *(a1 + 8) = v4.f64[0];
          *(a1 + 16) = v3;
          v4.f64[1] = v3;
          *(a1 + 40) = vminnmq_f64(*(a1 + 40), v4);
          result = vmaxnmq_f64(*(a1 + 56), v4);
          *(a1 + 56) = result;
          return result;
        }

        v10 = 0.0;
        if (v6 - result.f64[0] >= 0.00001)
        {
          v10 = (v3 - v7) / (result.f64[0] - v6);
        }

        v11 = result.f64[0];
        v12 = v6;
        v16 = v4.f64[0];
        v13 = v3;
        v14 = -1.0;
      }

      else
      {
        v9 = result.f64[0] - v6;
        v10 = 0.0;
        if (v4.f64[0] - v6 >= 0.00001)
        {
          v10 = (v3 - v7) / v9;
        }

        v11 = v6;
        v12 = v4.f64[0];
        v16 = v4.f64[0];
        v13 = v7;
        v14 = 1.0;
      }

      v15 = v3;
      add_quadratic(a1, v11, v12, v14, 0.0, v10, v13);
      v3 = v15;
      v4.f64[0] = v16;
      goto LABEL_16;
    }
  }

  return result;
}

char *add_quadratic(char **a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v14 = a1[10];
  v15 = a1[11];
  v16 = (v14 + 1);
  result = *a1;
  if (v15 < (v14 + 1))
  {
    if (2 * v15 <= v16)
    {
      v18 = (v14 + 1);
    }

    else
    {
      v18 = 2 * v15;
    }

    result = malloc_type_realloc(result, 24 * v18, 0x1000040504FFAC1uLL);
    *a1 = result;
    if (!result)
    {
      _CGHandleAssert("grow", 98, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGSScanConverter.c", "sc->quadratics != NULL", "quadratics missing", v19, v20, v21, v23);
    }

    a1[11] = v18;
    v14 = a1[10];
    v16 = (v14 + 1);
  }

  a1[10] = v16;
  v22 = &result[24 * v14];
  *v22 = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  return result;
}

char *approximateMonotonicCube(char *result, int a2, double a3, double a4, __n128 a5, int64x2_t a6, float64x2_t a7, __n128 a8, float64_t a9, double a10)
{
  if (a2 <= 500)
  {
    v11 = a10;
    v12 = a8.n128_f64[0];
    *&v10 = a7.f64[0];
    v13 = *a6.i64;
    v14 = a5.n128_f64[0];
    v17 = result;
    v117 = a9 * a9;
    v116 = vdupq_lane_s64(*&a10, 0);
    v115 = vdupq_lane_s64(*&a9, 0);
    v18 = (a2 + 1);
    v19 = -2.0;
    v20 = 0.5;
    v21 = 2.0;
    v22 = 0.25;
    v23 = 3.0;
    v24 = 6.0;
    v119 = a9;
    v120 = v11;
    while (1)
    {
      v25 = *(v17 + 18);
      v26 = (v25 * v25);
      if ((a4 + v13 * v19 + v12) * (a4 + v13 * v19 + v12) + (a3 + v14 * v19 + *&v10) * (a3 + v14 * v19 + *&v10) <= v26 && (v13 + v12 * v19 + v11) * (v13 + v12 * v19 + v11) + (v14 + *&v10 * v19 + a9) * (v14 + *&v10 * v19 + a9) <= v26)
      {
        break;
      }

      if (vabdd_f64(a9, a3) + vabdd_f64(v11, a4) <= 60.0)
      {
        v42 = 1.0 / (a3 - a9);
        v123 = v13 + v12 * v21;
        v122 = v12 + v11;
        v43 = v42 * (v42 * (v42 * ((a9 * (v123 + a4 * -3.0) - (v12 + v11 + a4 * v19) * v14 - a3 * (v12 + v13 * v21 + v11 * -3.0) + *&v10 * (a4 + v13 + v11 * v19)) * 0.9)));
        v44 = v42 * (a4 + v43 * (a9 * a9 - a3 * a3) - v11);
        v45 = v14 + a3 * v21;
        v46 = (v14 * 12.0 + a3 * 8.0 + *&v10 * v24 + a9) * 0.037037037;
        v47 = (v13 + a4 * 2.0) * 0.333333333;
        v48 = (v13 * 4.0 + a4 * 4.0 + v12) * 0.111111111;
        v49 = (v13 * 12.0 + a4 * 8.0 + v12 * v24 + v11) * 0.037037037;
        v125 = v10;
        v121 = v44 + v43 * a3;
        v50 = a4 - a3 * v121;
        v51 = v46 * v46;
        v118 = v44;
        v52 = v44 * -0.5;
        *&v53 = v25;
        if (fabs(((v46 * (a4 + v48 * v24 + v49 * 10.0 + v47 * v23) - (v47 * 6.0 + a4 * 10.0 + v48 * 3.0 + v49) * a3 + v45 * 0.333333333 * 3.0 * (-(v48 - a4 * 2.0) - v49) + (v14 * 4.0 + a3 * 4.0 + *&v10) * 0.111111111 * -3.0 * (-(v47 - v49 * 2.0) - a4)) * 0.05 + v43 * -0.333333333 * (a3 * -(a3 * a3) + v46 * v46 * v46) + v44 * -0.5 * (v46 * v46 - a3 * a3) - v50 * (v46 - a3)) / sqrt((v49 - a4) * (v49 - a4) + (v46 - a3) * (v46 - a3))) <= *&v53)
        {
          v54.f64[0] = (a3 + v14 * 6.0 + *&v10 * 12.0 + a9 * 8.0) * 0.037037037;
          v55.f64[0] = v54.f64[0] * v54.f64[0];
          v56.f64[0] = v13 + v12 * 4.0 + v11 * 4.0;
          v57.f64[0] = (a4 + v13 * 6.0 + v12 * 12.0 + v11 * 8.0) * 0.037037037;
          v58.f64[0] = v14 + *&v10 * 4.0;
          v56.f64[1] = v13 * 12.0 + a4 * 4.0 + v12 * 9.0 + v11 * 2.0;
          v59.f64[0] = a9;
          v59.f64[1] = v54.f64[0];
          v54.f64[1] = v46;
          v60 = vmulq_f64(v56, xmmword_18439C6A0);
          v61.f64[0] = v11;
          v61.f64[1] = v57.f64[0];
          v57.f64[1] = v49;
          v58.f64[1] = v14 * 12.0 + a3 * 4.0 + *&v10 * 9.0;
          v62 = vmulq_f64(vmlaq_f64(v58, xmmword_18439C6D0, v115), xmmword_18439C6A0);
          v58.f64[0] = v12;
          v58.f64[1] = v13 * 9.0 + a4 * 2.0 + v12 * 12.0;
          v63 = vmulq_f64(vmlaq_f64(v58, xmmword_18439C6B0, v116), xmmword_18439C6C0);
          __asm
          {
            FMOV            V27.2D, #6.0
            FMOV            V29.2D, #10.0
          }

          v68 = vmlaq_f64(vmulq_f64(v63, _Q27), _Q29, v61);
          v69 = vmlaq_f64(vmulq_f64(v60, _Q27), _Q29, v57);
          __asm { FMOV            V29.2D, #3.0 }

          v71 = vmlaq_f64(vmulq_f64(vaddq_f64(v61, vmlaq_f64(v69, _Q29, v63)), vnegq_f64(v54)), vaddq_f64(v57, vmlaq_f64(v68, _Q29, v60)), v59);
          __asm { FMOV            V28.2D, #2.0 }

          v73 = vmlaq_f64(v71, vsubq_f64(vmlaq_f64(vnegq_f64(v63), _Q28, v57), v61), vmulq_f64(v62, _Q29));
          *&v63.f64[0] = v10;
          v63.f64[1] = v14 * 9.0 + a3 * 2.0 + *&v10 * 12.0;
          v74 = vmulq_f64(vmlaq_f64(v63, xmmword_18439C6B0, v115), xmmword_18439C6C0);
          v20 = 0.5;
          v19 = -2.0;
          __asm { FMOV            V24.2D, #-3.0 }

          v76 = vmulq_f64(v74, _Q24);
          _Q24.f64[0] = v117;
          _Q24.f64[1] = v54.f64[0] * v54.f64[0];
          v55.f64[1] = v51;
          v77 = vnegq_f64(v55);
          v78 = vmulq_f64(vmlaq_f64(v73, vsubq_f64(vmlaq_f64(vnegq_f64(v60), _Q28, v61), v57), v76), vdupq_n_s64(0x3FA999999999999AuLL));
          v22 = 0.25;
          a7 = vsubq_f64(v59, v54);
          v79 = vsubq_f64(v61, v57);
          a6 = vdupq_lane_s64(v53, 0);
          *&v79.f64[0] = vmovn_s64(vcgtq_f64(vabsq_f64(vdivq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v78, vmlaq_f64(vmulq_f64(v54, v77), v59, _Q24), v43 * -0.333333333), vmlaq_f64(v77, v59, v59), v52), a7, -(a4 + -a3 * v121)), vsqrtq_f64(vmlaq_f64(vmulq_f64(v79, v79), a7, a7)))), a6));
          if (((HIDWORD(v79.f64[0]) | LODWORD(v79.f64[0])) & 1) == 0)
          {
            v94 = a9 - a3;
            v95 = v52 / v43;
            _NF = v52 / v43 > a3 && v95 < a9;
            if (_NF || (v95 > a9 ? (v97 = v95 < a3) : (v97 = 0), v98 = a4, v97))
            {
              v98 = v50 + v95 * 0.5 * v118;
            }

            v99 = fmin(a3, a9);
            v100 = fmax(a3, a9);
            v101 = fmin(fmin(a4, v11), v98);
            v102 = fmax(fmax(a4, v11), v98);
            v105 = 0.0;
            if (v94 < 0.0)
            {
              v105 = -1.0;
            }

            if (v94 > 0.0)
            {
              v105 = 1.0;
            }

            v106 = v105;
            v107 = v43;
            v108 = v118 + (v43 + v43) * v99;
            v109 = v50 + v99 * v43 * v99 + v118 * v99;
            v103 = v99;
            v104 = v100;
            result = add_quadratic(v17, v103, v104, v106, v107, v108, v109);
            v110 = *(v17 + 8);
            v90 = (v17 + 64);
            v111 = *(v90 - 2);
            v112 = fmin(*(v90 - 3), v99);
            *(v90 - 3) = v112;
            v113.f64[0] = fmin(v111, v101);
            v113.f64[1] = fmax(*(v90 - 1), v100);
            *(v90 - 1) = vcvtq_f64_f32(vcvt_f32_f64(v113));
            v93 = fmax(v110, v102);
            goto LABEL_86;
          }
        }

        a5.n128_f64[0] = (a3 + v14) * v20;
        a7.f64[0] = (a3 + v14 * 2.0 + *&v10) * v22;
        v23 = 3.0;
        v28 = (a3 + v14 * 3.0 + *&v10 * 3.0 + a9) * 0.125;
        *a6.i64 = (a4 + v13) * v20;
        a8.n128_f64[0] = (a4 + v13 * 2.0 + v12) * v22;
        v29 = (a4 + v13 * 3.0 + v12 * 3.0 + v11) * 0.125;
        v21 = 2.0;
        if (v29 != v11 || v28 != a9 || a5.n128_f64[0] != v14 || *a6.i64 != v13 || a7.f64[0] != *&v10 || a8.n128_f64[0] != v12)
        {
          result = approximateMonotonicCube(v17, v18, a3, a4, a5, a6, a7, a8, (a3 + v14 * 3.0 + *&v10 * 3.0 + a9) * 0.125, (a4 + v13 * 3.0 + v12 * 3.0 + v11) * 0.125);
          v21 = 2.0;
          v10 = v125;
          v22 = 0.25;
          v20 = 0.5;
          v19 = -2.0;
          a9 = v119;
          v11 = v120;
        }

        v35 = (v14 + *&v10 * v21 + a9) * v22;
        v36 = (*&v10 + a9) * v20;
        v37 = (v123 + v11) * v22;
        v38 = v122 * v20;
        if (v122 * v20 == v12)
        {
          v24 = 6.0;
          if (v36 == *&v10 && v37 == v13 && v35 == v14 && v28 == a3 && v29 == a4)
          {
            return result;
          }
        }

        else
        {
          v24 = 6.0;
        }
      }

      else
      {
        a5.n128_f64[0] = (a3 + v14) * v20;
        a7.f64[0] = (a3 + v14 * v21 + *&v10) * v22;
        v28 = (a3 + v14 * v23 + *&v10 * v23 + a9) * 0.125;
        *a6.i64 = (a4 + v13) * v20;
        a8.n128_f64[0] = (a4 + v13 * v21 + v12) * v22;
        v29 = (a4 + v13 * v23 + v12 * v23 + v11) * 0.125;
        if (v29 != v11 || v28 != a9 || a5.n128_f64[0] != v14 || *a6.i64 != v13 || a7.f64[0] != *&v10 || a8.n128_f64[0] != v12)
        {
          v124 = v10;
          result = approximateMonotonicCube(v17, v18, a3, a4, a5, a6, a7, a8, (a3 + v14 * v23 + *&v10 * v23 + a9) * 0.125, v29);
          v21 = 2.0;
          v10 = v124;
          v24 = 6.0;
          v22 = 0.25;
          v20 = 0.5;
          v19 = -2.0;
          a9 = v119;
          v11 = v120;
        }

        v35 = (v14 + *&v10 * v21 + a9) * v22;
        v36 = (*&v10 + a9) * v20;
        v37 = (v13 + v12 * v21 + v11) * v22;
        v38 = (v12 + v11) * v20;
        if (v38 == v12 && v36 == *&v10)
        {
          v39 = v37 == v13 && v35 == v14;
          v40 = v39 && v28 == a3;
          if (v40 && v29 == a4)
          {
            return result;
          }
        }
      }

      v18 = (v18 + 1);
      v12 = v38;
      *&v10 = v36;
      v13 = v37;
      v14 = v35;
      a4 = v29;
      a3 = v28;
      if (v18 == 502)
      {
        return result;
      }
    }

    if (a3 != a9 || a4 != v11)
    {
      v80.f64[0] = fmin(a3, a9);
      v81 = fmax(a3, a9);
      v82 = 0.0;
      v83 = a9 - a3;
      if (a3 == a9)
      {
        v84 = 0.0;
      }

      else
      {
        v84 = (v11 - a4) / (a9 - a3);
      }

      if (v80.f64[0] != v81)
      {
        if (v83 < 0.0)
        {
          v82 = -1.0;
        }

        if (v83 > 0.0)
        {
          v82 = 1.0;
        }

        v87 = v82;
        v88 = v84;
        v89 = v11 - v84 * (a9 - v80.f64[0]);
        v126 = v80.f64[0];
        v85 = v80.f64[0];
        v86 = v81;
        result = add_quadratic(v17, v85, v86, v87, 0.0, v88, v89);
        v80.f64[0] = v126;
        v11 = v120;
      }

      v91 = *(v17 + 8);
      v90 = (v17 + 64);
      v80.f64[1] = fmin(a4, v11);
      *(v90 - 3) = vcvtq_f64_f32(vcvt_f32_f64(vminnmq_f64(*(v90 - 3), v80)));
      v92 = fmax(*(v90 - 1), v81);
      *(v90 - 1) = v92;
      v93 = fmax(v91, fmax(a4, v11));
LABEL_86:
      v114 = v93;
      *v90 = v114;
    }
  }

  return result;
}