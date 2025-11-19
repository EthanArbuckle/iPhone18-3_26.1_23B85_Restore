uint64_t sub_19B4FF894(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_290;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 204) |= 1u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_282;
          }

          *(a1 + 184) = *(*this + v23);
          v24 = *(this + 1) + 8;
          goto LABEL_285;
        case 2u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v94 = *(this + 1);
            v95 = *(this + 2);
            while (v94 < v95 && (*(this + 24) & 1) == 0)
            {
              v97 = *(a1 + 160);
              v96 = *(a1 + 168);
              if (v97 >= v96)
              {
                v99 = *(a1 + 152);
                v100 = v97 - v99;
                v101 = (v97 - v99) >> 2;
                v102 = v101 + 1;
                if ((v101 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v103 = v96 - v99;
                if (v103 >> 1 > v102)
                {
                  v102 = v103 >> 1;
                }

                if (v103 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v104 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v104 = v102;
                }

                if (v104)
                {
                  sub_19B4C4FA8(a1 + 152, v104);
                }

                v105 = (v97 - v99) >> 2;
                v106 = (4 * v101);
                v107 = (4 * v101 - 4 * v105);
                *v106 = 0;
                v98 = v106 + 1;
                memcpy(v107, v99, v100);
                v108 = *(a1 + 152);
                *(a1 + 152) = v107;
                *(a1 + 160) = v98;
                *(a1 + 168) = 0;
                if (v108)
                {
                  operator delete(v108);
                }
              }

              else
              {
                *v97 = 0;
                v98 = v97 + 4;
              }

              *(a1 + 160) = v98;
              v109 = *(this + 1);
              if (v109 > 0xFFFFFFFFFFFFFFFBLL || v109 + 4 > *(this + 2))
              {
                goto LABEL_177;
              }

              *(v98 - 1) = *(*this + v109);
              v95 = *(this + 2);
              v94 = *(this + 1) + 4;
              *(this + 1) = v94;
            }

            goto LABEL_178;
          }

          v161 = *(a1 + 160);
          v160 = *(a1 + 168);
          if (v161 >= v160)
          {
            v190 = *(a1 + 152);
            v191 = v161 - v190;
            v192 = (v161 - v190) >> 2;
            v193 = v192 + 1;
            if ((v192 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v194 = v160 - v190;
            if (v194 >> 1 > v193)
            {
              v193 = v194 >> 1;
            }

            if (v194 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v195 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v195 = v193;
            }

            if (v195)
            {
              sub_19B4C4FA8(a1 + 152, v195);
            }

            v224 = (v161 - v190) >> 2;
            v225 = (4 * v192);
            v226 = (4 * v192 - 4 * v224);
            *v225 = 0;
            v153 = v225 + 1;
            memcpy(v226, v190, v191);
            v227 = *(a1 + 152);
            *(a1 + 152) = v226;
            *(a1 + 160) = v153;
            *(a1 + 168) = 0;
            if (v227)
            {
              operator delete(v227);
            }
          }

          else
          {
            *v161 = 0;
            v153 = v161 + 4;
          }

          *(a1 + 160) = v153;
          goto LABEL_280;
        case 3u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v58 = *(this + 1);
            v59 = *(this + 2);
            while (v58 < v59 && (*(this + 24) & 1) == 0)
            {
              v61 = *(a1 + 88);
              v60 = *(a1 + 96);
              if (v61 >= v60)
              {
                v63 = *(a1 + 80);
                v64 = v61 - v63;
                v65 = (v61 - v63) >> 2;
                v66 = v65 + 1;
                if ((v65 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v67 = v60 - v63;
                if (v67 >> 1 > v66)
                {
                  v66 = v67 >> 1;
                }

                if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v68 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v68 = v66;
                }

                if (v68)
                {
                  sub_19B4C4FA8(a1 + 80, v68);
                }

                v69 = (v61 - v63) >> 2;
                v70 = (4 * v65);
                v71 = (4 * v65 - 4 * v69);
                *v70 = 0;
                v62 = v70 + 1;
                memcpy(v71, v63, v64);
                v72 = *(a1 + 80);
                *(a1 + 80) = v71;
                *(a1 + 88) = v62;
                *(a1 + 96) = 0;
                if (v72)
                {
                  operator delete(v72);
                }
              }

              else
              {
                *v61 = 0;
                v62 = v61 + 4;
              }

              *(a1 + 88) = v62;
              v73 = *(this + 1);
              if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(this + 2))
              {
                goto LABEL_177;
              }

              *(v62 - 1) = *(*this + v73);
              v59 = *(this + 2);
              v58 = *(this + 1) + 4;
              *(this + 1) = v58;
            }

            goto LABEL_178;
          }

          v157 = *(a1 + 88);
          v156 = *(a1 + 96);
          if (v157 >= v156)
          {
            v178 = *(a1 + 80);
            v179 = v157 - v178;
            v180 = (v157 - v178) >> 2;
            v181 = v180 + 1;
            if ((v180 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v182 = v156 - v178;
            if (v182 >> 1 > v181)
            {
              v181 = v182 >> 1;
            }

            if (v182 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v183 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v183 = v181;
            }

            if (v183)
            {
              sub_19B4C4FA8(a1 + 80, v183);
            }

            v216 = (v157 - v178) >> 2;
            v217 = (4 * v180);
            v218 = (4 * v180 - 4 * v216);
            *v217 = 0;
            v153 = v217 + 1;
            memcpy(v218, v178, v179);
            v219 = *(a1 + 80);
            *(a1 + 80) = v218;
            *(a1 + 88) = v153;
            *(a1 + 96) = 0;
            if (v219)
            {
              operator delete(v219);
            }
          }

          else
          {
            *v157 = 0;
            v153 = v157 + 4;
          }

          *(a1 + 88) = v153;
          goto LABEL_280;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v74 = *(this + 1);
            v75 = *(this + 2);
            while (v74 < v75 && (*(this + 24) & 1) == 0)
            {
              v77 = *(a1 + 16);
              v76 = *(a1 + 24);
              if (v77 >= v76)
              {
                v79 = *(a1 + 8);
                v80 = v77 - v79;
                v81 = (v77 - v79) >> 2;
                v82 = v81 + 1;
                if ((v81 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v83 = v76 - v79;
                if (v83 >> 1 > v82)
                {
                  v82 = v83 >> 1;
                }

                if (v83 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v84 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = v82;
                }

                if (v84)
                {
                  sub_19B4C4FA8(a1 + 8, v84);
                }

                v85 = (v77 - v79) >> 2;
                v86 = (4 * v81);
                v87 = (4 * v81 - 4 * v85);
                *v86 = 0;
                v78 = v86 + 1;
                memcpy(v87, v79, v80);
                v88 = *(a1 + 8);
                *(a1 + 8) = v87;
                *(a1 + 16) = v78;
                *(a1 + 24) = 0;
                if (v88)
                {
                  operator delete(v88);
                }
              }

              else
              {
                *v77 = 0;
                v78 = v77 + 4;
              }

              *(a1 + 16) = v78;
              v89 = *(this + 1);
              if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(this + 2))
              {
                goto LABEL_177;
              }

              *(v78 - 1) = *(*this + v89);
              v75 = *(this + 2);
              v74 = *(this + 1) + 4;
              *(this + 1) = v74;
            }

            goto LABEL_178;
          }

          v159 = *(a1 + 16);
          v158 = *(a1 + 24);
          if (v159 >= v158)
          {
            v184 = *(a1 + 8);
            v185 = v159 - v184;
            v186 = (v159 - v184) >> 2;
            v187 = v186 + 1;
            if ((v186 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v188 = v158 - v184;
            if (v188 >> 1 > v187)
            {
              v187 = v188 >> 1;
            }

            if (v188 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v189 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v189 = v187;
            }

            if (v189)
            {
              sub_19B4C4FA8(a1 + 8, v189);
            }

            v220 = (v159 - v184) >> 2;
            v221 = (4 * v186);
            v222 = (4 * v186 - 4 * v220);
            *v221 = 0;
            v153 = v221 + 1;
            memcpy(v222, v184, v185);
            v223 = *(a1 + 8);
            *(a1 + 8) = v222;
            *(a1 + 16) = v153;
            *(a1 + 24) = 0;
            if (v223)
            {
              operator delete(v223);
            }
          }

          else
          {
            *v159 = 0;
            v153 = v159 + 4;
          }

          *(a1 + 16) = v153;
          goto LABEL_280;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v26 = *(this + 1);
            v27 = *(this + 2);
            while (v26 < v27 && (*(this + 24) & 1) == 0)
            {
              v29 = *(a1 + 40);
              v28 = *(a1 + 48);
              if (v29 >= v28)
              {
                v31 = *(a1 + 32);
                v32 = v29 - v31;
                v33 = (v29 - v31) >> 2;
                v34 = v33 + 1;
                if ((v33 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v35 = v28 - v31;
                if (v35 >> 1 > v34)
                {
                  v34 = v35 >> 1;
                }

                if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v36 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v36 = v34;
                }

                if (v36)
                {
                  sub_19B4C4FA8(a1 + 32, v36);
                }

                v37 = (v29 - v31) >> 2;
                v38 = (4 * v33);
                v39 = (4 * v33 - 4 * v37);
                *v38 = 0;
                v30 = v38 + 1;
                memcpy(v39, v31, v32);
                v40 = *(a1 + 32);
                *(a1 + 32) = v39;
                *(a1 + 40) = v30;
                *(a1 + 48) = 0;
                if (v40)
                {
                  operator delete(v40);
                }
              }

              else
              {
                *v29 = 0;
                v30 = v29 + 4;
              }

              *(a1 + 40) = v30;
              v41 = *(this + 1);
              if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
              {
                goto LABEL_177;
              }

              *(v30 - 1) = *(*this + v41);
              v27 = *(this + 2);
              v26 = *(this + 1) + 4;
              *(this + 1) = v26;
            }

            goto LABEL_178;
          }

          v152 = *(a1 + 40);
          v151 = *(a1 + 48);
          if (v152 >= v151)
          {
            v166 = *(a1 + 32);
            v167 = v152 - v166;
            v168 = (v152 - v166) >> 2;
            v169 = v168 + 1;
            if ((v168 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v170 = v151 - v166;
            if (v170 >> 1 > v169)
            {
              v169 = v170 >> 1;
            }

            if (v170 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v171 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v171 = v169;
            }

            if (v171)
            {
              sub_19B4C4FA8(a1 + 32, v171);
            }

            v208 = (v152 - v166) >> 2;
            v209 = (4 * v168);
            v210 = (4 * v168 - 4 * v208);
            *v209 = 0;
            v153 = v209 + 1;
            memcpy(v210, v166, v167);
            v211 = *(a1 + 32);
            *(a1 + 32) = v210;
            *(a1 + 40) = v153;
            *(a1 + 48) = 0;
            if (v211)
            {
              operator delete(v211);
            }
          }

          else
          {
            *v152 = 0;
            v153 = v152 + 4;
          }

          *(a1 + 40) = v153;
          goto LABEL_280;
        case 6u:
          *(a1 + 204) |= 2u;
          v110 = *(this + 1);
          if (v110 > 0xFFFFFFFFFFFFFFFBLL || v110 + 4 > *(this + 2))
          {
            goto LABEL_282;
          }

          *(a1 + 192) = *(*this + v110);
          goto LABEL_284;
        case 7u:
          *(a1 + 204) |= 8u;
          v127 = *(this + 1);
          if (v127 >= *(this + 2))
          {
            v130 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v128 = v127 + 1;
            v129 = *(*this + v127);
            *(this + 1) = v128;
            v130 = v129 != 0;
          }

          *(a1 + 200) = v130;
          goto LABEL_286;
        case 8u:
          *(a1 + 204) |= 0x10u;
          v90 = *(this + 1);
          if (v90 >= *(this + 2))
          {
            v93 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v91 = v90 + 1;
            v92 = *(*this + v90);
            *(this + 1) = v91;
            v93 = v92 != 0;
          }

          *(a1 + 201) = v93;
          goto LABEL_286;
        case 9u:
          *(a1 + 204) |= 0x20u;
          v147 = *(this + 1);
          if (v147 >= *(this + 2))
          {
            v150 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v148 = v147 + 1;
            v149 = *(*this + v147);
            *(this + 1) = v148;
            v150 = v149 != 0;
          }

          *(a1 + 202) = v150;
          goto LABEL_286;
        case 0xAu:
          operator new();
        case 0xBu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_292:
              v237 = 0;
              return v237 & 1;
            }

            v131 = *(this + 1);
            v132 = *(this + 2);
            while (v131 < v132 && (*(this + 24) & 1) == 0)
            {
              v134 = *(a1 + 112);
              v133 = *(a1 + 120);
              if (v134 >= v133)
              {
                v136 = *(a1 + 104);
                v137 = v134 - v136;
                v138 = (v134 - v136) >> 2;
                v139 = v138 + 1;
                if ((v138 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v140 = v133 - v136;
                if (v140 >> 1 > v139)
                {
                  v139 = v140 >> 1;
                }

                if (v140 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v141 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v141 = v139;
                }

                if (v141)
                {
                  sub_19B4C4FA8(a1 + 104, v141);
                }

                v142 = (v134 - v136) >> 2;
                v143 = (4 * v138);
                v144 = (4 * v138 - 4 * v142);
                *v143 = 0;
                v135 = v143 + 1;
                memcpy(v144, v136, v137);
                v145 = *(a1 + 104);
                *(a1 + 104) = v144;
                *(a1 + 112) = v135;
                *(a1 + 120) = 0;
                if (v145)
                {
                  operator delete(v145);
                }
              }

              else
              {
                *v134 = 0;
                v135 = v134 + 4;
              }

              *(a1 + 112) = v135;
              v146 = *(this + 1);
              if (v146 > 0xFFFFFFFFFFFFFFFBLL || v146 + 4 > *(this + 2))
              {
                goto LABEL_177;
              }

              *(v135 - 1) = *(*this + v146);
              v132 = *(this + 2);
              v131 = *(this + 1) + 4;
              *(this + 1) = v131;
            }

LABEL_178:
            PB::Reader::recallMark();
          }

          else
          {
            v165 = *(a1 + 112);
            v164 = *(a1 + 120);
            if (v165 >= v164)
            {
              v202 = *(a1 + 104);
              v203 = v165 - v202;
              v204 = (v165 - v202) >> 2;
              v205 = v204 + 1;
              if ((v204 + 1) >> 62)
              {
LABEL_293:
                sub_19B5BE690();
              }

              v206 = v164 - v202;
              if (v206 >> 1 > v205)
              {
                v205 = v206 >> 1;
              }

              if (v206 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v207 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v207 = v205;
              }

              if (v207)
              {
                sub_19B4C4FA8(a1 + 104, v207);
              }

              v232 = (v165 - v202) >> 2;
              v233 = (4 * v204);
              v234 = (4 * v204 - 4 * v232);
              *v233 = 0;
              v153 = v233 + 1;
              memcpy(v234, v202, v203);
              v235 = *(a1 + 104);
              *(a1 + 104) = v234;
              *(a1 + 112) = v153;
              *(a1 + 120) = 0;
              if (v235)
              {
                operator delete(v235);
              }
            }

            else
            {
              *v165 = 0;
              v153 = v165 + 4;
            }

            *(a1 + 112) = v153;
LABEL_280:
            v236 = *(this + 1);
            if (v236 <= 0xFFFFFFFFFFFFFFFBLL && v236 + 4 <= *(this + 2))
            {
              *(v153 - 1) = *(*this + v236);
LABEL_284:
              v24 = *(this + 1) + 4;
LABEL_285:
              *(this + 1) = v24;
            }

            else
            {
LABEL_282:
              *(this + 24) = 1;
            }
          }

LABEL_286:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_290;
          }

          break;
        case 0xCu:
          *(a1 + 204) |= 4u;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
          {
            goto LABEL_282;
          }

          *(a1 + 196) = *(*this + v25);
          goto LABEL_284;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v42 = *(this + 1);
            v43 = *(this + 2);
            while (v42 < v43 && (*(this + 24) & 1) == 0)
            {
              v45 = *(a1 + 136);
              v44 = *(a1 + 144);
              if (v45 >= v44)
              {
                v47 = *(a1 + 128);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 2;
                v50 = v49 + 1;
                if ((v49 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v51 = v44 - v47;
                if (v51 >> 1 > v50)
                {
                  v50 = v51 >> 1;
                }

                if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v52 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v52 = v50;
                }

                if (v52)
                {
                  sub_19B4C4FA8(a1 + 128, v52);
                }

                v53 = (v45 - v47) >> 2;
                v54 = (4 * v49);
                v55 = (4 * v49 - 4 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(a1 + 128);
                *(a1 + 128) = v55;
                *(a1 + 136) = v46;
                *(a1 + 144) = 0;
                if (v56)
                {
                  operator delete(v56);
                }
              }

              else
              {
                *v45 = 0;
                v46 = v45 + 4;
              }

              *(a1 + 136) = v46;
              v57 = *(this + 1);
              if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
              {
                goto LABEL_177;
              }

              *(v46 - 1) = *(*this + v57);
              v43 = *(this + 2);
              v42 = *(this + 1) + 4;
              *(this + 1) = v42;
            }

            goto LABEL_178;
          }

          v155 = *(a1 + 136);
          v154 = *(a1 + 144);
          if (v155 >= v154)
          {
            v172 = *(a1 + 128);
            v173 = v155 - v172;
            v174 = (v155 - v172) >> 2;
            v175 = v174 + 1;
            if ((v174 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v176 = v154 - v172;
            if (v176 >> 1 > v175)
            {
              v175 = v176 >> 1;
            }

            if (v176 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v177 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v177 = v175;
            }

            if (v177)
            {
              sub_19B4C4FA8(a1 + 128, v177);
            }

            v212 = (v155 - v172) >> 2;
            v213 = (4 * v174);
            v214 = (4 * v174 - 4 * v212);
            *v213 = 0;
            v153 = v213 + 1;
            memcpy(v214, v172, v173);
            v215 = *(a1 + 128);
            *(a1 + 128) = v214;
            *(a1 + 136) = v153;
            *(a1 + 144) = 0;
            if (v215)
            {
              operator delete(v215);
            }
          }

          else
          {
            *v155 = 0;
            v153 = v155 + 4;
          }

          *(a1 + 136) = v153;
          goto LABEL_280;
        case 0xEu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v111 = *(this + 1);
            v112 = *(this + 2);
            while (v111 < v112 && (*(this + 24) & 1) == 0)
            {
              v114 = *(a1 + 64);
              v113 = *(a1 + 72);
              if (v114 >= v113)
              {
                v116 = *(a1 + 56);
                v117 = v114 - v116;
                v118 = (v114 - v116) >> 2;
                v119 = v118 + 1;
                if ((v118 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v120 = v113 - v116;
                if (v120 >> 1 > v119)
                {
                  v119 = v120 >> 1;
                }

                if (v120 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v121 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v121 = v119;
                }

                if (v121)
                {
                  sub_19B4C4FA8(a1 + 56, v121);
                }

                v122 = (v114 - v116) >> 2;
                v123 = (4 * v118);
                v124 = (4 * v118 - 4 * v122);
                *v123 = 0;
                v115 = v123 + 1;
                memcpy(v124, v116, v117);
                v125 = *(a1 + 56);
                *(a1 + 56) = v124;
                *(a1 + 64) = v115;
                *(a1 + 72) = 0;
                if (v125)
                {
                  operator delete(v125);
                }
              }

              else
              {
                *v114 = 0;
                v115 = v114 + 4;
              }

              *(a1 + 64) = v115;
              v126 = *(this + 1);
              if (v126 > 0xFFFFFFFFFFFFFFFBLL || v126 + 4 > *(this + 2))
              {
LABEL_177:
                *(this + 24) = 1;
                goto LABEL_178;
              }

              *(v115 - 1) = *(*this + v126);
              v112 = *(this + 2);
              v111 = *(this + 1) + 4;
              *(this + 1) = v111;
            }

            goto LABEL_178;
          }

          v163 = *(a1 + 64);
          v162 = *(a1 + 72);
          if (v163 >= v162)
          {
            v196 = *(a1 + 56);
            v197 = v163 - v196;
            v198 = (v163 - v196) >> 2;
            v199 = v198 + 1;
            if ((v198 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v200 = v162 - v196;
            if (v200 >> 1 > v199)
            {
              v199 = v200 >> 1;
            }

            if (v200 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v201 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v201 = v199;
            }

            if (v201)
            {
              sub_19B4C4FA8(a1 + 56, v201);
            }

            v228 = (v163 - v196) >> 2;
            v229 = (4 * v198);
            v230 = (4 * v198 - 4 * v228);
            *v229 = 0;
            v153 = v229 + 1;
            memcpy(v230, v196, v197);
            v231 = *(a1 + 56);
            *(a1 + 56) = v230;
            *(a1 + 64) = v153;
            *(a1 + 72) = 0;
            if (v231)
            {
              operator delete(v231);
            }
          }

          else
          {
            *v163 = 0;
            v153 = v163 + 4;
          }

          *(a1 + 64) = v153;
          goto LABEL_280;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_292;
          }

          goto LABEL_286;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(this + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(this + 24) = 1;
  }

LABEL_290:
  v237 = v4 ^ 1;
  return v237 & 1;
}

uint64_t sub_19B500888(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 204))
  {
    result = PB::Writer::write(this, *(result + 184));
  }

  v4 = *(v3 + 152);
  v5 = *(v3 + 160);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = *(v3 + 204);
  if ((v16 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 192));
    v16 = *(v3 + 204);
    if ((v16 & 8) == 0)
    {
LABEL_17:
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  else if ((*(v3 + 204) & 8) == 0)
  {
    goto LABEL_17;
  }

  v28 = *(v3 + 200);
  result = PB::Writer::write(this);
  v16 = *(v3 + 204);
  if ((v16 & 0x10) == 0)
  {
LABEL_18:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_36:
  v29 = *(v3 + 201);
  result = PB::Writer::write(this);
  if ((*(v3 + 204) & 0x20) != 0)
  {
LABEL_19:
    v17 = *(v3 + 202);
    result = PB::Writer::write(this);
  }

LABEL_20:
  v18 = *(v3 + 176);
  if (v18)
  {
    result = PB::Writer::writeSubmessage(this, v18);
  }

  v19 = *(v3 + 104);
  v20 = *(v3 + 112);
  while (v19 != v20)
  {
    v21 = *v19++;
    result = PB::Writer::write(this, v21);
  }

  if ((*(v3 + 204) & 4) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 196));
  }

  v22 = *(v3 + 128);
  v23 = *(v3 + 136);
  while (v22 != v23)
  {
    v24 = *v22++;
    result = PB::Writer::write(this, v24);
  }

  v26 = *(v3 + 56);
  v25 = *(v3 + 64);
  while (v26 != v25)
  {
    v27 = *v26++;
    result = PB::Writer::write(this, v27);
  }

  return result;
}

uint64_t sub_19B500A48(uint64_t result)
{
  *result = &unk_1F0E2E970;
  *(result + 120) = 0;
  return result;
}

void sub_19B500A70(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B500AA8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 120);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "biasFraction", *(a1 + 16));
    v5 = *(a1 + 120);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 20);
  PB::TextFormatter::format(this, "cookie");
  v5 = *(a1 + 120);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "currentRange", *(a1 + 24));
  v5 = *(a1 + 120);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "distanceReleaseThreshold", *(a1 + 28));
  v5 = *(a1 + 120);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "distanceTriggerThreshold", *(a1 + 32));
  v5 = *(a1 + 120);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "habcBiasCorrectedDenominator", *(a1 + 36));
  v5 = *(a1 + 120);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v7 = *(a1 + 40);
  PB::TextFormatter::format(this, "habcBiasCorrectedNumFramesCaptured");
  v5 = *(a1 + 120);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "habcBiasCorrectedNumerator", *(a1 + 44));
  v5 = *(a1 + 120);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "habcBiasCorrectedRateBaseline", *(a1 + 48));
  v5 = *(a1 + 120);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "habcBiasCorrectedRateBaselineSigma", *(a1 + 52));
  v5 = *(a1 + 120);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "habcDenominator", *(a1 + 56));
  v5 = *(a1 + 120);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v8 = *(a1 + 60);
  PB::TextFormatter::format(this, "habcNumFramesCaptured");
  v5 = *(a1 + 120);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "habcNumerator", *(a1 + 64));
  v5 = *(a1 + 120);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "habcRateBaseline", *(a1 + 68));
  v5 = *(a1 + 120);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "habcRateBaselineSigma", *(a1 + 72));
  v5 = *(a1 + 120);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(a1 + 76);
  PB::TextFormatter::format(this, "numBaselineCaptureFrames");
  v5 = *(a1 + 120);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "numEffSpads", *(a1 + 80));
  v5 = *(a1 + 120);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "rateScalingFactor", *(a1 + 84));
  v5 = *(a1 + 120);
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "reflectanceEstimate", *(a1 + 88));
  v5 = *(a1 + 120);
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "signalDeltaNCounts", *(a1 + 92));
  v5 = *(a1 + 120);
  if ((v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "signalRateBaselineKcpss", *(a1 + 96));
  v5 = *(a1 + 120);
  if ((v5 & 0x400000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "signalRateBaselineSigmaKcpss", *(a1 + 100));
  v5 = *(a1 + 120);
  if ((v5 & 0x800000) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "signalRateNoiseMarginKcpss", *(a1 + 104));
  v5 = *(a1 + 120);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "signalRateSigmaKcpss", *(a1 + 108));
  v5 = *(a1 + 120);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "signalRateTriggerThresholdNCounts", *(a1 + 112));
  v5 = *(a1 + 120);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v5 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_57:
  PB::TextFormatter::format(this, "smudgeTimeoutCountdownMs", *(a1 + 116));
  if (*(a1 + 120))
  {
LABEL_28:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_29:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B500E4C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_181;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 120) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_156;
        case 2u:
          *(a1 + 120) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_155;
        case 3u:
          *(a1 + 120) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_155;
        case 4u:
          *(a1 + 120) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_155;
        case 5u:
          *(a1 + 120) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_155;
        case 6u:
          *(a1 + 120) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_155;
        case 7u:
          *(a1 + 120) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_155;
        case 8u:
          *(a1 + 120) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_155;
        case 9u:
          *(a1 + 120) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_155;
        case 0xAu:
          *(a1 + 120) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_155;
        case 0xBu:
          *(a1 + 120) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_155;
        case 0xCu:
          *(a1 + 120) |= 0x10000u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v61 = 0;
            v62 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v63 = v2 - v30;
            v64 = (v31 + v30);
            v65 = v30 + 1;
            while (1)
            {
              if (!v63)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_171;
              }

              v66 = v65;
              v67 = *v64;
              *(this + 1) = v66;
              v34 |= (v67 & 0x7F) << v61;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              --v63;
              ++v64;
              v65 = v66 + 1;
              v14 = v62++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_170:
                v2 = v66;
                goto LABEL_171;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_170;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(this + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_171;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_171:
          *(a1 + 76) = v34;
          goto LABEL_157;
        case 0xDu:
          *(a1 + 120) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_155;
        case 0xEu:
          *(a1 + 120) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_155;
        case 0xFu:
          *(a1 + 120) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_155;
        case 0x10u:
          *(a1 + 120) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_155;
        case 0x11u:
          *(a1 + 120) |= 0x1000u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v54 = 0;
            v55 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v56 = v2 - v22;
            v57 = (v23 + v22);
            v58 = v22 + 1;
            while (1)
            {
              if (!v56)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_167;
              }

              v59 = v58;
              v60 = *v57;
              *(this + 1) = v59;
              v26 |= (v60 & 0x7F) << v54;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              --v56;
              ++v57;
              v58 = v59 + 1;
              v14 = v55++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_166:
                v2 = v59;
                goto LABEL_167;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_166;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_167;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_167:
          *(a1 + 60) = v26;
          goto LABEL_157;
        case 0x12u:
          *(a1 + 120) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_155;
        case 0x13u:
          *(a1 + 120) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_155;
        case 0x14u:
          *(a1 + 120) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_155;
        case 0x15u:
          *(a1 + 120) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_155;
        case 0x16u:
          *(a1 + 120) |= 0x80u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v75 = 0;
            v76 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v77 = v2 - v46;
            v78 = (v47 + v46);
            v79 = v46 + 1;
            while (1)
            {
              if (!v77)
              {
                LODWORD(v50) = 0;
                *(this + 24) = 1;
                goto LABEL_179;
              }

              v80 = v79;
              v81 = *v78;
              *(this + 1) = v80;
              v50 |= (v81 & 0x7F) << v75;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              --v77;
              ++v78;
              v79 = v80 + 1;
              v14 = v76++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_178:
                v2 = v80;
                goto LABEL_179;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_178;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(this + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_179;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_179:
          *(a1 + 40) = v50;
          goto LABEL_157;
        case 0x17u:
          *(a1 + 120) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_155;
        case 0x18u:
          *(a1 + 120) |= 0x4000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 116) = *(*this + v2);
          goto LABEL_155;
        case 0x19u:
          *(a1 + 120) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_155;
        case 0x1Au:
          *(a1 + 120) |= 4u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v68 = 0;
            v69 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v70 = v2 - v38;
            v71 = (v39 + v38);
            v72 = v38 + 1;
            while (1)
            {
              if (!v70)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_175;
              }

              v73 = v72;
              v74 = *v71;
              *(this + 1) = v73;
              v42 |= (v74 & 0x7F) << v68;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              --v70;
              ++v71;
              v72 = v73 + 1;
              v14 = v69++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_174:
                v2 = v73;
                goto LABEL_175;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_174;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(this + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_175;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_175:
          *(a1 + 20) = v42;
          goto LABEL_157;
        case 0x1Bu:
          *(a1 + 120) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 84) = *(*this + v2);
LABEL_155:
            v2 = *(this + 1) + 4;
LABEL_156:
            *(this + 1) = v2;
          }

          else
          {
LABEL_119:
            *(this + 24) = 1;
          }

          goto LABEL_157;
        default:
          if (!PB::Reader::skip(this))
          {
            v82 = 0;
            return v82 & 1;
          }

          v2 = *(this + 1);
LABEL_157:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_181;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(this + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(this + 24) = 1;
  }

LABEL_181:
  v82 = v4 ^ 1;
  return v82 & 1;
}

uint64_t sub_19B501920(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 120);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 120);
    if ((v4 & 0x1000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x1000000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 120);
  if ((v4 & 0x200000) == 0)
  {
LABEL_4:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 120);
  if ((v4 & 0x400000) == 0)
  {
LABEL_5:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 120);
  if ((v4 & 0x800000) == 0)
  {
LABEL_6:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 120);
  if ((v4 & 0x100000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 120);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 120);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 120);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 120);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 120);
  if ((v4 & 0x20000) == 0)
  {
LABEL_12:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 120);
  if ((v4 & 0x10000) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  v5 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 120);
  if ((v4 & 0x4000) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 120);
  if ((v4 & 0x8000) == 0)
  {
LABEL_15:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 120);
  if ((v4 & 0x2000) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 120);
  if ((v4 & 0x800) == 0)
  {
LABEL_17:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 120);
  if ((v4 & 0x1000) == 0)
  {
LABEL_18:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v6 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 120);
  if ((v4 & 0x200) == 0)
  {
LABEL_19:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 120);
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 120);
  if ((v4 & 0x100) == 0)
  {
LABEL_21:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 120);
  if ((v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 120);
  if ((v4 & 0x80) == 0)
  {
LABEL_23:
    if ((v4 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  v7 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 120);
  if ((v4 & 2) == 0)
  {
LABEL_24:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 120);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 120);
  if ((v4 & 0x80000) == 0)
  {
LABEL_26:
    if ((v4 & 4) == 0)
    {
      goto LABEL_27;
    }

LABEL_54:
    v8 = *(v3 + 20);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 120) & 0x40000) == 0)
    {
      return result;
    }

    goto LABEL_55;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 120);
  if ((v4 & 4) != 0)
  {
    goto LABEL_54;
  }

LABEL_27:
  if ((v4 & 0x40000) == 0)
  {
    return result;
  }

LABEL_55:
  v9 = *(v3 + 84);

  return PB::Writer::write(this, v9);
}

uint64_t sub_19B501C4C(uint64_t result)
{
  *result = &unk_1F0E2DB38;
  *(result + 24) = 0;
  return result;
}

void sub_19B501C74(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B501CAC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "proximityRawValue");
    v5 = *(a1 + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 20);
  PB::TextFormatter::format(this, "proximityState");
  if (*(a1 + 24))
  {
LABEL_4:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B501D50(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_75;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 24) |= 2u;
        v31 = *(this + 1);
        v2 = *(this + 2);
        v32 = *this;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(this + 1);
          }

          v48 = v2 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
              goto LABEL_70;
            }

            v51 = v50;
            v52 = *v49;
            *(this + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            --v48;
            ++v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_69;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_69:
          v2 = v51;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v2 = v37;
            *(this + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_70:
        *(a1 + 16) = v35;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 4u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(this + 1);
          }

          v41 = v2 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_66;
            }

            v44 = v43;
            v45 = *v42;
            *(this + 1) = v44;
            v27 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            --v41;
            ++v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_65;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_65:
          v2 = v44;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_66:
        *(a1 + 20) = v27;
      }

      else if (v22 == 1)
      {
        *(a1 + 24) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_75:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_19B502128(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 24) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = *(v3 + 20);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 24) & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 8));
  v4 = *(v3 + 24);
  if ((v4 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

void *sub_19B5021B4(void *result)
{
  *result = &unk_1F0E2E510;
  *(result + 164) = 0;
  return result;
}

void sub_19B5021DC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B502214(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 164);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "ambientRatePerSPAD", *(a1 + 48));
    v5 = *(a1 + 164);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "ambientRateTotal", *(a1 + 52));
  v5 = *(a1 + 164);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  v7 = *(a1 + 56);
  PB::TextFormatter::format(this, "blockSelectByte");
  v5 = *(a1 + 164);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "correctedSignalRatePerSPAD", *(a1 + 60));
  v5 = *(a1 + 164);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "estimatedAmbientBias", *(a1 + 64));
  v5 = *(a1 + 164);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  v8 = *(a1 + 68);
  PB::TextFormatter::format(this, "integrationTime");
  v5 = *(a1 + 164);
  if ((v5 & 0x800) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  v9 = *(a1 + 72);
  PB::TextFormatter::format(this, "numAOPClients");
  v5 = *(a1 + 164);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  v10 = *(a1 + 76);
  PB::TextFormatter::format(this, "numAperturedSPADs");
  v5 = *(a1 + 164);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  v11 = *(a1 + 80);
  PB::TextFormatter::format(this, "numFullSPADs");
  v5 = *(a1 + 164);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  v12 = *(a1 + 84);
  PB::TextFormatter::format(this, "oscFrequencySetting");
  v5 = *(a1 + 164);
  if ((v5 & 0x8000) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  v13 = *(a1 + 88);
  PB::TextFormatter::format(this, "oscTrim");
  v5 = *(a1 + 164);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  v14 = *(a1 + 8);
  PB::TextFormatter::format(this, "pearlScanWindowOnTs");
  v5 = *(a1 + 164);
  if ((v5 & 0x10000) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  v15 = *(a1 + 92);
  PB::TextFormatter::format(this, "pearlScanWindowOpen");
  v5 = *(a1 + 164);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  v16 = *(a1 + 16);
  PB::TextFormatter::format(this, "pearlScanWindownOffTs");
  v5 = *(a1 + 164);
  if ((v5 & 4) == 0)
  {
LABEL_16:
    if ((v5 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  v17 = *(a1 + 24);
  PB::TextFormatter::format(this, "pearlSessionOffTs");
  v5 = *(a1 + 164);
  if ((v5 & 8) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  v18 = *(a1 + 32);
  PB::TextFormatter::format(this, "pearlSessionOnTs");
  v5 = *(a1 + 164);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  v19 = *(a1 + 96);
  PB::TextFormatter::format(this, "pearlSessionRunning");
  v5 = *(a1 + 164);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  v20 = *(a1 + 100);
  PB::TextFormatter::format(this, "pearlSessionType");
  v5 = *(a1 + 164);
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "rawRange", *(a1 + 104));
  v5 = *(a1 + 164);
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  v21 = *(a1 + 108);
  PB::TextFormatter::format(this, "refPhaseOffset");
  v5 = *(a1 + 164);
  if ((v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "refSignalRateTotal", *(a1 + 112));
  v5 = *(a1 + 164);
  if ((v5 & 0x400000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  v22 = *(a1 + 116);
  PB::TextFormatter::format(this, "regValAmbientWindowEvents");
  v5 = *(a1 + 164);
  if ((v5 & 0x800000) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  v23 = *(a1 + 120);
  PB::TextFormatter::format(this, "regValRange");
  v5 = *(a1 + 164);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  v24 = *(a1 + 124);
  PB::TextFormatter::format(this, "regValRefAmbientWindowEvents");
  v5 = *(a1 + 164);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  v25 = *(a1 + 128);
  PB::TextFormatter::format(this, "regValRefRange");
  v5 = *(a1 + 164);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  v26 = *(a1 + 132);
  PB::TextFormatter::format(this, "regValRefSignalTotalEvents");
  v5 = *(a1 + 164);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  v27 = *(a1 + 136);
  PB::TextFormatter::format(this, "regValSignalTotalEvents");
  v5 = *(a1 + 164);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  v28 = *(a1 + 140);
  PB::TextFormatter::format(this, "signalEventLimit");
  v5 = *(a1 + 164);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "signalRatePerSPAD", *(a1 + 144));
  v5 = *(a1 + 164);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(this, "signalRateTotal", *(a1 + 148));
  v5 = *(a1 + 164);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  v29 = *(a1 + 152);
  PB::TextFormatter::format(this, "signalToAmbientWindowRatio");
  v5 = *(a1 + 164);
  if ((v5 & 0x10) == 0)
  {
LABEL_33:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  v5 = *(a1 + 164);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_71:
  PB::TextFormatter::format(this, "totalRateTotal", *(a1 + 156));
  if ((*(a1 + 164) & 0x200000000) != 0)
  {
LABEL_35:
    v6 = *(a1 + 160);
    PB::TextFormatter::format(this, "vhvSetting");
  }

LABEL_36:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B502698(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_518;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 164) |= 0x10uLL;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 40) = *(*this + v22);
          v23 = *(this + 1) + 8;
          goto LABEL_417;
        case 2u:
          *(a1 + 164) |= 0x80000uLL;
          v110 = *(this + 1);
          if (v110 > 0xFFFFFFFFFFFFFFFBLL || v110 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 104) = *(*this + v110);
          goto LABEL_416;
        case 3u:
          *(a1 + 164) |= 0x20000000uLL;
          v90 = *(this + 1);
          if (v90 > 0xFFFFFFFFFFFFFFFBLL || v90 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 144) = *(*this + v90);
          goto LABEL_416;
        case 4u:
          *(a1 + 164) |= 0x20uLL;
          v100 = *(this + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 48) = *(*this + v100);
          goto LABEL_416;
        case 5u:
          *(a1 + 164) |= 0x40000000uLL;
          v69 = *(this + 1);
          if (v69 > 0xFFFFFFFFFFFFFFFBLL || v69 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 148) = *(*this + v69);
          goto LABEL_416;
        case 6u:
          *(a1 + 164) |= 0x40uLL;
          v138 = *(this + 1);
          if (v138 > 0xFFFFFFFFFFFFFFFBLL || v138 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 52) = *(*this + v138);
          goto LABEL_416;
        case 7u:
          *(a1 + 164) |= 0x100000000uLL;
          v157 = *(this + 1);
          if (v157 > 0xFFFFFFFFFFFFFFFBLL || v157 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 156) = *(*this + v157);
          goto LABEL_416;
        case 8u:
          *(a1 + 164) |= 0x2000uLL;
          v102 = *(this + 1);
          v101 = *(this + 2);
          v103 = *this;
          if (v102 <= 0xFFFFFFFFFFFFFFF5 && v102 + 10 <= v101)
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
            v107 = (v103 + v102);
            v108 = v102 + 1;
            do
            {
              *(this + 1) = v108;
              v109 = *v107++;
              v106 |= (v109 & 0x7F) << v104;
              if ((v109 & 0x80) == 0)
              {
                goto LABEL_468;
              }

              v104 += 7;
              ++v108;
              v14 = v105++ > 8;
            }

            while (!v14);
LABEL_294:
            LODWORD(v106) = 0;
            goto LABEL_468;
          }

          v297 = 0;
          v298 = 0;
          v106 = 0;
          v17 = v101 >= v102;
          v299 = v101 - v102;
          if (!v17)
          {
            v299 = 0;
          }

          v300 = (v103 + v102);
          v301 = v102 + 1;
          while (2)
          {
            if (v299)
            {
              v302 = *v300;
              *(this + 1) = v301;
              v106 |= (v302 & 0x7F) << v297;
              if (v302 < 0)
              {
                v297 += 7;
                --v299;
                ++v300;
                ++v301;
                v14 = v298++ > 8;
                if (v14)
                {
                  goto LABEL_294;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v106) = 0;
              }
            }

            else
            {
              LODWORD(v106) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_468:
          *(a1 + 80) = v106;
          goto LABEL_514;
        case 9u:
          *(a1 + 164) |= 0x1000uLL;
          v177 = *(this + 1);
          v176 = *(this + 2);
          v178 = *this;
          if (v177 <= 0xFFFFFFFFFFFFFFF5 && v177 + 10 <= v176)
          {
            v179 = 0;
            v180 = 0;
            v181 = 0;
            v182 = (v178 + v177);
            v183 = v177 + 1;
            do
            {
              *(this + 1) = v183;
              v184 = *v182++;
              v181 |= (v184 & 0x7F) << v179;
              if ((v184 & 0x80) == 0)
              {
                goto LABEL_492;
              }

              v179 += 7;
              ++v183;
              v14 = v180++ > 8;
            }

            while (!v14);
LABEL_358:
            LODWORD(v181) = 0;
            goto LABEL_492;
          }

          v345 = 0;
          v346 = 0;
          v181 = 0;
          v17 = v176 >= v177;
          v347 = v176 - v177;
          if (!v17)
          {
            v347 = 0;
          }

          v348 = (v178 + v177);
          v349 = v177 + 1;
          while (2)
          {
            if (v347)
            {
              v350 = *v348;
              *(this + 1) = v349;
              v181 |= (v350 & 0x7F) << v345;
              if (v350 < 0)
              {
                v345 += 7;
                --v347;
                ++v348;
                ++v349;
                v14 = v346++ > 8;
                if (v14)
                {
                  goto LABEL_358;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v181) = 0;
              }
            }

            else
            {
              LODWORD(v181) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_492:
          *(a1 + 76) = v181;
          goto LABEL_514;
        case 0xAu:
          *(a1 + 164) |= 0x80uLL;
          v80 = *(this + 1);
          v79 = *(this + 2);
          v81 = *this;
          if (v80 <= 0xFFFFFFFFFFFFFFF5 && v80 + 10 <= v79)
          {
            v82 = 0;
            v83 = 0;
            v84 = 0;
            v85 = (v81 + v80);
            v86 = v80 + 1;
            do
            {
              *(this + 1) = v86;
              v87 = *v85++;
              v84 |= (v87 & 0x7F) << v82;
              if ((v87 & 0x80) == 0)
              {
                goto LABEL_462;
              }

              v82 += 7;
              ++v86;
              v14 = v83++ > 8;
            }

            while (!v14);
LABEL_278:
            LODWORD(v84) = 0;
            goto LABEL_462;
          }

          v285 = 0;
          v286 = 0;
          v84 = 0;
          v17 = v79 >= v80;
          v287 = v79 - v80;
          if (!v17)
          {
            v287 = 0;
          }

          v288 = (v81 + v80);
          v289 = v80 + 1;
          while (2)
          {
            if (v287)
            {
              v290 = *v288;
              *(this + 1) = v289;
              v84 |= (v290 & 0x7F) << v285;
              if (v290 < 0)
              {
                v285 += 7;
                --v287;
                ++v288;
                ++v289;
                v14 = v286++ > 8;
                if (v14)
                {
                  goto LABEL_278;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v84) = 0;
              }
            }

            else
            {
              LODWORD(v84) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_462:
          *(a1 + 56) = v84;
          goto LABEL_514;
        case 0xBu:
          *(a1 + 164) |= 0x200000000uLL;
          v168 = *(this + 1);
          v167 = *(this + 2);
          v169 = *this;
          if (v168 <= 0xFFFFFFFFFFFFFFF5 && v168 + 10 <= v167)
          {
            v170 = 0;
            v171 = 0;
            v172 = 0;
            v173 = (v169 + v168);
            v174 = v168 + 1;
            do
            {
              *(this + 1) = v174;
              v175 = *v173++;
              v172 |= (v175 & 0x7F) << v170;
              if ((v175 & 0x80) == 0)
              {
                goto LABEL_489;
              }

              v170 += 7;
              ++v174;
              v14 = v171++ > 8;
            }

            while (!v14);
LABEL_350:
            LODWORD(v172) = 0;
            goto LABEL_489;
          }

          v339 = 0;
          v340 = 0;
          v172 = 0;
          v17 = v167 >= v168;
          v341 = v167 - v168;
          if (!v17)
          {
            v341 = 0;
          }

          v342 = (v169 + v168);
          v343 = v168 + 1;
          while (2)
          {
            if (v341)
            {
              v344 = *v342;
              *(this + 1) = v343;
              v172 |= (v344 & 0x7F) << v339;
              if (v344 < 0)
              {
                v339 += 7;
                --v341;
                ++v342;
                ++v343;
                v14 = v340++ > 8;
                if (v14)
                {
                  goto LABEL_350;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v172) = 0;
              }
            }

            else
            {
              LODWORD(v172) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_489:
          *(a1 + 160) = v172;
          goto LABEL_514;
        case 0xCu:
          *(a1 + 164) |= 0x10000000uLL;
          v61 = *(this + 1);
          v60 = *(this + 2);
          v62 = *this;
          if (v61 <= 0xFFFFFFFFFFFFFFF5 && v61 + 10 <= v60)
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v66 = (v62 + v61);
            v67 = v61 + 1;
            do
            {
              *(this + 1) = v67;
              v68 = *v66++;
              v65 |= (v68 & 0x7F) << v63;
              if ((v68 & 0x80) == 0)
              {
                goto LABEL_456;
              }

              v63 += 7;
              ++v67;
              v14 = v64++ > 8;
            }

            while (!v14);
LABEL_262:
            LODWORD(v65) = 0;
            goto LABEL_456;
          }

          v273 = 0;
          v274 = 0;
          v65 = 0;
          v17 = v60 >= v61;
          v275 = v60 - v61;
          if (!v17)
          {
            v275 = 0;
          }

          v276 = (v62 + v61);
          v277 = v61 + 1;
          while (2)
          {
            if (v275)
            {
              v278 = *v276;
              *(this + 1) = v277;
              v65 |= (v278 & 0x7F) << v273;
              if (v278 < 0)
              {
                v273 += 7;
                --v275;
                ++v276;
                ++v277;
                v14 = v274++ > 8;
                if (v14)
                {
                  goto LABEL_262;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v65) = 0;
              }
            }

            else
            {
              LODWORD(v65) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_456:
          *(a1 + 140) = v65;
          goto LABEL_514;
        case 0xDu:
          *(a1 + 164) |= 0x400uLL;
          v71 = *(this + 1);
          v70 = *(this + 2);
          v72 = *this;
          if (v71 <= 0xFFFFFFFFFFFFFFF5 && v71 + 10 <= v70)
          {
            v73 = 0;
            v74 = 0;
            v75 = 0;
            v76 = (v72 + v71);
            v77 = v71 + 1;
            do
            {
              *(this + 1) = v77;
              v78 = *v76++;
              v75 |= (v78 & 0x7F) << v73;
              if ((v78 & 0x80) == 0)
              {
                goto LABEL_459;
              }

              v73 += 7;
              ++v77;
              v14 = v74++ > 8;
            }

            while (!v14);
LABEL_270:
            LODWORD(v75) = 0;
            goto LABEL_459;
          }

          v279 = 0;
          v280 = 0;
          v75 = 0;
          v17 = v70 >= v71;
          v281 = v70 - v71;
          if (!v17)
          {
            v281 = 0;
          }

          v282 = (v72 + v71);
          v283 = v71 + 1;
          while (2)
          {
            if (v281)
            {
              v284 = *v282;
              *(this + 1) = v283;
              v75 |= (v284 & 0x7F) << v279;
              if (v284 < 0)
              {
                v279 += 7;
                --v281;
                ++v282;
                ++v283;
                v14 = v280++ > 8;
                if (v14)
                {
                  goto LABEL_270;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v75) = 0;
              }
            }

            else
            {
              LODWORD(v75) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_459:
          *(a1 + 68) = v75;
          goto LABEL_514;
        case 0xEu:
          *(a1 + 164) |= 0x4000uLL;
          v149 = *(this + 1);
          v148 = *(this + 2);
          v150 = *this;
          if (v149 <= 0xFFFFFFFFFFFFFFF5 && v149 + 10 <= v148)
          {
            v151 = 0;
            v152 = 0;
            v153 = 0;
            v154 = (v150 + v149);
            v155 = v149 + 1;
            do
            {
              *(this + 1) = v155;
              v156 = *v154++;
              v153 |= (v156 & 0x7F) << v151;
              if ((v156 & 0x80) == 0)
              {
                goto LABEL_483;
              }

              v151 += 7;
              ++v155;
              v14 = v152++ > 8;
            }

            while (!v14);
LABEL_334:
            LODWORD(v153) = 0;
            goto LABEL_483;
          }

          v327 = 0;
          v328 = 0;
          v153 = 0;
          v17 = v148 >= v149;
          v329 = v148 - v149;
          if (!v17)
          {
            v329 = 0;
          }

          v330 = (v150 + v149);
          v331 = v149 + 1;
          while (2)
          {
            if (v329)
            {
              v332 = *v330;
              *(this + 1) = v331;
              v153 |= (v332 & 0x7F) << v327;
              if (v332 < 0)
              {
                v327 += 7;
                --v329;
                ++v330;
                ++v331;
                v14 = v328++ > 8;
                if (v14)
                {
                  goto LABEL_334;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v153) = 0;
              }
            }

            else
            {
              LODWORD(v153) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_483:
          *(a1 + 84) = v153;
          goto LABEL_514;
        case 0xFu:
          *(a1 + 164) |= 0x800000uLL;
          v43 = *(this + 1);
          v42 = *(this + 2);
          v44 = *this;
          if (v43 <= 0xFFFFFFFFFFFFFFF5 && v43 + 10 <= v42)
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = (v44 + v43);
            v49 = v43 + 1;
            do
            {
              *(this + 1) = v49;
              v50 = *v48++;
              v47 |= (v50 & 0x7F) << v45;
              if ((v50 & 0x80) == 0)
              {
                goto LABEL_450;
              }

              v45 += 7;
              ++v49;
              v14 = v46++ > 8;
            }

            while (!v14);
LABEL_246:
            LODWORD(v47) = 0;
            goto LABEL_450;
          }

          v261 = 0;
          v262 = 0;
          v47 = 0;
          v17 = v42 >= v43;
          v263 = v42 - v43;
          if (!v17)
          {
            v263 = 0;
          }

          v264 = (v44 + v43);
          v265 = v43 + 1;
          while (2)
          {
            if (v263)
            {
              v266 = *v264;
              *(this + 1) = v265;
              v47 |= (v266 & 0x7F) << v261;
              if (v266 < 0)
              {
                v261 += 7;
                --v263;
                ++v264;
                ++v265;
                v14 = v262++ > 8;
                if (v14)
                {
                  goto LABEL_246;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v47) = 0;
              }
            }

            else
            {
              LODWORD(v47) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_450:
          *(a1 + 120) = v47;
          goto LABEL_514;
        case 0x10u:
          *(a1 + 164) |= 0x2000000uLL;
          v92 = *(this + 1);
          v91 = *(this + 2);
          v93 = *this;
          if (v92 <= 0xFFFFFFFFFFFFFFF5 && v92 + 10 <= v91)
          {
            v94 = 0;
            v95 = 0;
            v96 = 0;
            v97 = (v93 + v92);
            v98 = v92 + 1;
            do
            {
              *(this + 1) = v98;
              v99 = *v97++;
              v96 |= (v99 & 0x7F) << v94;
              if ((v99 & 0x80) == 0)
              {
                goto LABEL_465;
              }

              v94 += 7;
              ++v98;
              v14 = v95++ > 8;
            }

            while (!v14);
LABEL_286:
            LODWORD(v96) = 0;
            goto LABEL_465;
          }

          v291 = 0;
          v292 = 0;
          v96 = 0;
          v17 = v91 >= v92;
          v293 = v91 - v92;
          if (!v17)
          {
            v293 = 0;
          }

          v294 = (v93 + v92);
          v295 = v92 + 1;
          while (2)
          {
            if (v293)
            {
              v296 = *v294;
              *(this + 1) = v295;
              v96 |= (v296 & 0x7F) << v291;
              if (v296 < 0)
              {
                v291 += 7;
                --v293;
                ++v294;
                ++v295;
                v14 = v292++ > 8;
                if (v14)
                {
                  goto LABEL_286;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v96) = 0;
              }
            }

            else
            {
              LODWORD(v96) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_465:
          *(a1 + 128) = v96;
          goto LABEL_514;
        case 0x11u:
          *(a1 + 164) |= 0x8000000uLL;
          v34 = *(this + 1);
          v33 = *(this + 2);
          v35 = *this;
          if (v34 <= 0xFFFFFFFFFFFFFFF5 && v34 + 10 <= v33)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = (v35 + v34);
            v40 = v34 + 1;
            do
            {
              *(this + 1) = v40;
              v41 = *v39++;
              v38 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                goto LABEL_447;
              }

              v36 += 7;
              ++v40;
              v14 = v37++ > 8;
            }

            while (!v14);
LABEL_238:
            LODWORD(v38) = 0;
            goto LABEL_447;
          }

          v255 = 0;
          v256 = 0;
          v38 = 0;
          v17 = v33 >= v34;
          v257 = v33 - v34;
          if (!v17)
          {
            v257 = 0;
          }

          v258 = (v35 + v34);
          v259 = v34 + 1;
          while (2)
          {
            if (v257)
            {
              v260 = *v258;
              *(this + 1) = v259;
              v38 |= (v260 & 0x7F) << v255;
              if (v260 < 0)
              {
                v255 += 7;
                --v257;
                ++v258;
                ++v259;
                v14 = v256++ > 8;
                if (v14)
                {
                  goto LABEL_238;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v38) = 0;
              }
            }

            else
            {
              LODWORD(v38) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_447:
          *(a1 + 136) = v38;
          goto LABEL_514;
        case 0x12u:
          *(a1 + 164) |= 0x4000000uLL;
          v121 = *(this + 1);
          v120 = *(this + 2);
          v122 = *this;
          if (v121 <= 0xFFFFFFFFFFFFFFF5 && v121 + 10 <= v120)
          {
            v123 = 0;
            v124 = 0;
            v125 = 0;
            v126 = (v122 + v121);
            v127 = v121 + 1;
            do
            {
              *(this + 1) = v127;
              v128 = *v126++;
              v125 |= (v128 & 0x7F) << v123;
              if ((v128 & 0x80) == 0)
              {
                goto LABEL_474;
              }

              v123 += 7;
              ++v127;
              v14 = v124++ > 8;
            }

            while (!v14);
LABEL_310:
            LODWORD(v125) = 0;
            goto LABEL_474;
          }

          v309 = 0;
          v310 = 0;
          v125 = 0;
          v17 = v120 >= v121;
          v311 = v120 - v121;
          if (!v17)
          {
            v311 = 0;
          }

          v312 = (v122 + v121);
          v313 = v121 + 1;
          while (2)
          {
            if (v311)
            {
              v314 = *v312;
              *(this + 1) = v313;
              v125 |= (v314 & 0x7F) << v309;
              if (v314 < 0)
              {
                v309 += 7;
                --v311;
                ++v312;
                ++v313;
                v14 = v310++ > 8;
                if (v14)
                {
                  goto LABEL_310;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v125) = 0;
              }
            }

            else
            {
              LODWORD(v125) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_474:
          *(a1 + 132) = v125;
          goto LABEL_514;
        case 0x13u:
          *(a1 + 164) |= 0x400000uLL;
          v159 = *(this + 1);
          v158 = *(this + 2);
          v160 = *this;
          if (v159 <= 0xFFFFFFFFFFFFFFF5 && v159 + 10 <= v158)
          {
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = (v160 + v159);
            v165 = v159 + 1;
            do
            {
              *(this + 1) = v165;
              v166 = *v164++;
              v163 |= (v166 & 0x7F) << v161;
              if ((v166 & 0x80) == 0)
              {
                goto LABEL_486;
              }

              v161 += 7;
              ++v165;
              v14 = v162++ > 8;
            }

            while (!v14);
LABEL_342:
            LODWORD(v163) = 0;
            goto LABEL_486;
          }

          v333 = 0;
          v334 = 0;
          v163 = 0;
          v17 = v158 >= v159;
          v335 = v158 - v159;
          if (!v17)
          {
            v335 = 0;
          }

          v336 = (v160 + v159);
          v337 = v159 + 1;
          while (2)
          {
            if (v335)
            {
              v338 = *v336;
              *(this + 1) = v337;
              v163 |= (v338 & 0x7F) << v333;
              if (v338 < 0)
              {
                v333 += 7;
                --v335;
                ++v336;
                ++v337;
                v14 = v334++ > 8;
                if (v14)
                {
                  goto LABEL_342;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v163) = 0;
              }
            }

            else
            {
              LODWORD(v163) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_486:
          *(a1 + 116) = v163;
          goto LABEL_514;
        case 0x14u:
          *(a1 + 164) |= 0x1000000uLL;
          v213 = *(this + 1);
          v212 = *(this + 2);
          v214 = *this;
          if (v213 <= 0xFFFFFFFFFFFFFFF5 && v213 + 10 <= v212)
          {
            v215 = 0;
            v216 = 0;
            v217 = 0;
            v218 = (v214 + v213);
            v219 = v213 + 1;
            do
            {
              *(this + 1) = v219;
              v220 = *v218++;
              v217 |= (v220 & 0x7F) << v215;
              if ((v220 & 0x80) == 0)
              {
                goto LABEL_504;
              }

              v215 += 7;
              ++v219;
              v14 = v216++ > 8;
            }

            while (!v14);
LABEL_390:
            LODWORD(v217) = 0;
            goto LABEL_504;
          }

          v369 = 0;
          v370 = 0;
          v217 = 0;
          v17 = v212 >= v213;
          v371 = v212 - v213;
          if (!v17)
          {
            v371 = 0;
          }

          v372 = (v214 + v213);
          v373 = v213 + 1;
          while (2)
          {
            if (v371)
            {
              v374 = *v372;
              *(this + 1) = v373;
              v217 |= (v374 & 0x7F) << v369;
              if (v374 < 0)
              {
                v369 += 7;
                --v371;
                ++v372;
                ++v373;
                v14 = v370++ > 8;
                if (v14)
                {
                  goto LABEL_390;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v217) = 0;
              }
            }

            else
            {
              LODWORD(v217) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_504:
          *(a1 + 124) = v217;
          goto LABEL_514;
        case 0x15u:
          *(a1 + 164) |= 0x80000000uLL;
          v130 = *(this + 1);
          v129 = *(this + 2);
          v131 = *this;
          if (v130 <= 0xFFFFFFFFFFFFFFF5 && v130 + 10 <= v129)
          {
            v132 = 0;
            v133 = 0;
            v134 = 0;
            v135 = (v131 + v130);
            v136 = v130 + 1;
            do
            {
              *(this + 1) = v136;
              v137 = *v135++;
              v134 |= (v137 & 0x7F) << v132;
              if ((v137 & 0x80) == 0)
              {
                goto LABEL_477;
              }

              v132 += 7;
              ++v136;
              v14 = v133++ > 8;
            }

            while (!v14);
LABEL_318:
            LODWORD(v134) = 0;
            goto LABEL_477;
          }

          v315 = 0;
          v316 = 0;
          v134 = 0;
          v17 = v129 >= v130;
          v317 = v129 - v130;
          if (!v17)
          {
            v317 = 0;
          }

          v318 = (v131 + v130);
          v319 = v130 + 1;
          while (2)
          {
            if (v317)
            {
              v320 = *v318;
              *(this + 1) = v319;
              v134 |= (v320 & 0x7F) << v315;
              if (v320 < 0)
              {
                v315 += 7;
                --v317;
                ++v318;
                ++v319;
                v14 = v316++ > 8;
                if (v14)
                {
                  goto LABEL_318;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v134) = 0;
              }
            }

            else
            {
              LODWORD(v134) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_477:
          *(a1 + 152) = v134;
          goto LABEL_514;
        case 0x16u:
          *(a1 + 164) |= 0x8000uLL;
          v140 = *(this + 1);
          v139 = *(this + 2);
          v141 = *this;
          if (v140 <= 0xFFFFFFFFFFFFFFF5 && v140 + 10 <= v139)
          {
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = (v141 + v140);
            v146 = v140 + 1;
            do
            {
              *(this + 1) = v146;
              v147 = *v145++;
              v144 |= (v147 & 0x7F) << v142;
              if ((v147 & 0x80) == 0)
              {
                goto LABEL_480;
              }

              v142 += 7;
              ++v146;
              v14 = v143++ > 8;
            }

            while (!v14);
LABEL_326:
            LODWORD(v144) = 0;
            goto LABEL_480;
          }

          v321 = 0;
          v322 = 0;
          v144 = 0;
          v17 = v139 >= v140;
          v323 = v139 - v140;
          if (!v17)
          {
            v323 = 0;
          }

          v324 = (v141 + v140);
          v325 = v140 + 1;
          while (2)
          {
            if (v323)
            {
              v326 = *v324;
              *(this + 1) = v325;
              v144 |= (v326 & 0x7F) << v321;
              if (v326 < 0)
              {
                v321 += 7;
                --v323;
                ++v324;
                ++v325;
                v14 = v322++ > 8;
                if (v14)
                {
                  goto LABEL_326;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v144) = 0;
              }
            }

            else
            {
              LODWORD(v144) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_480:
          *(a1 + 88) = v144;
          goto LABEL_514;
        case 0x17u:
          *(a1 + 164) |= 0x100000uLL;
          v204 = *(this + 1);
          v203 = *(this + 2);
          v205 = *this;
          if (v204 <= 0xFFFFFFFFFFFFFFF5 && v204 + 10 <= v203)
          {
            v206 = 0;
            v207 = 0;
            v208 = 0;
            v209 = (v205 + v204);
            v210 = v204 + 1;
            do
            {
              *(this + 1) = v210;
              v211 = *v209++;
              v208 |= (v211 & 0x7F) << v206;
              if ((v211 & 0x80) == 0)
              {
                goto LABEL_501;
              }

              v206 += 7;
              ++v210;
              v14 = v207++ > 8;
            }

            while (!v14);
LABEL_382:
            LODWORD(v208) = 0;
            goto LABEL_501;
          }

          v363 = 0;
          v364 = 0;
          v208 = 0;
          v17 = v203 >= v204;
          v365 = v203 - v204;
          if (!v17)
          {
            v365 = 0;
          }

          v366 = (v205 + v204);
          v367 = v204 + 1;
          while (2)
          {
            if (v365)
            {
              v368 = *v366;
              *(this + 1) = v367;
              v208 |= (v368 & 0x7F) << v363;
              if (v368 < 0)
              {
                v363 += 7;
                --v365;
                ++v366;
                ++v367;
                v14 = v364++ > 8;
                if (v14)
                {
                  goto LABEL_382;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v208) = 0;
              }
            }

            else
            {
              LODWORD(v208) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_501:
          *(a1 + 108) = v208;
          goto LABEL_514;
        case 0x18u:
          *(a1 + 164) |= 0x100uLL;
          v221 = *(this + 1);
          if (v221 > 0xFFFFFFFFFFFFFFFBLL || v221 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 60) = *(*this + v221);
          goto LABEL_416;
        case 0x19u:
          *(a1 + 164) |= 0x200000uLL;
          v89 = *(this + 1);
          if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(this + 2))
          {
            goto LABEL_199;
          }

          *(a1 + 112) = *(*this + v89);
          goto LABEL_416;
        case 0x1Au:
          *(a1 + 164) |= 0x200uLL;
          v88 = *(this + 1);
          if (v88 > 0xFFFFFFFFFFFFFFFBLL || v88 + 4 > *(this + 2))
          {
LABEL_199:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 64) = *(*this + v88);
LABEL_416:
            v23 = *(this + 1) + 4;
LABEL_417:
            *(this + 1) = v23;
          }

          goto LABEL_514;
        case 0x1Bu:
          *(a1 + 164) |= 0x20000uLL;
          v241 = *(this + 1);
          v240 = *(this + 2);
          v242 = *this;
          if (v241 <= 0xFFFFFFFFFFFFFFF5 && v241 + 10 <= v240)
          {
            v243 = 0;
            v244 = 0;
            v245 = 0;
            v246 = (v242 + v241);
            v247 = v241 + 1;
            do
            {
              *(this + 1) = v247;
              v248 = *v246++;
              v245 |= (v248 & 0x7F) << v243;
              if ((v248 & 0x80) == 0)
              {
                goto LABEL_513;
              }

              v243 += 7;
              ++v247;
              v14 = v244++ > 8;
            }

            while (!v14);
LABEL_414:
            LODWORD(v245) = 0;
            goto LABEL_513;
          }

          v387 = 0;
          v388 = 0;
          v245 = 0;
          v17 = v240 >= v241;
          v389 = v240 - v241;
          if (!v17)
          {
            v389 = 0;
          }

          v390 = (v242 + v241);
          v391 = v241 + 1;
          while (2)
          {
            if (v389)
            {
              v392 = *v390;
              *(this + 1) = v391;
              v245 |= (v392 & 0x7F) << v387;
              if (v392 < 0)
              {
                v387 += 7;
                --v389;
                ++v390;
                ++v391;
                v14 = v388++ > 8;
                if (v14)
                {
                  goto LABEL_414;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v245) = 0;
              }
            }

            else
            {
              LODWORD(v245) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_513:
          *(a1 + 96) = v245;
          goto LABEL_514;
        case 0x1Cu:
          *(a1 + 164) |= 0x40000uLL;
          v25 = *(this + 1);
          v24 = *(this + 2);
          v26 = *this;
          if (v25 <= 0xFFFFFFFFFFFFFFF5 && v25 + 10 <= v24)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = (v26 + v25);
            v31 = v25 + 1;
            do
            {
              *(this + 1) = v31;
              v32 = *v30++;
              v29 |= (v32 & 0x7F) << v27;
              if ((v32 & 0x80) == 0)
              {
                goto LABEL_444;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
            }

            while (!v14);
LABEL_230:
            LODWORD(v29) = 0;
            goto LABEL_444;
          }

          v249 = 0;
          v250 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v251 = v24 - v25;
          if (!v17)
          {
            v251 = 0;
          }

          v252 = (v26 + v25);
          v253 = v25 + 1;
          while (2)
          {
            if (v251)
            {
              v254 = *v252;
              *(this + 1) = v253;
              v29 |= (v254 & 0x7F) << v249;
              if (v254 < 0)
              {
                v249 += 7;
                --v251;
                ++v252;
                ++v253;
                v14 = v250++ > 8;
                if (v14)
                {
                  goto LABEL_230;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }
            }

            else
            {
              LODWORD(v29) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_444:
          *(a1 + 100) = v29;
          goto LABEL_514;
        case 0x1Du:
          *(a1 + 164) |= 0x10000uLL;
          v223 = *(this + 1);
          v222 = *(this + 2);
          v224 = *this;
          if (v223 <= 0xFFFFFFFFFFFFFFF5 && v223 + 10 <= v222)
          {
            v225 = 0;
            v226 = 0;
            v227 = 0;
            v228 = (v224 + v223);
            v229 = v223 + 1;
            do
            {
              *(this + 1) = v229;
              v230 = *v228++;
              v227 |= (v230 & 0x7F) << v225;
              if ((v230 & 0x80) == 0)
              {
                goto LABEL_507;
              }

              v225 += 7;
              ++v229;
              v14 = v226++ > 8;
            }

            while (!v14);
LABEL_398:
            LODWORD(v227) = 0;
            goto LABEL_507;
          }

          v375 = 0;
          v376 = 0;
          v227 = 0;
          v17 = v222 >= v223;
          v377 = v222 - v223;
          if (!v17)
          {
            v377 = 0;
          }

          v378 = (v224 + v223);
          v379 = v223 + 1;
          while (2)
          {
            if (v377)
            {
              v380 = *v378;
              *(this + 1) = v379;
              v227 |= (v380 & 0x7F) << v375;
              if (v380 < 0)
              {
                v375 += 7;
                --v377;
                ++v378;
                ++v379;
                v14 = v376++ > 8;
                if (v14)
                {
                  goto LABEL_398;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v227) = 0;
              }
            }

            else
            {
              LODWORD(v227) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_507:
          *(a1 + 92) = v227;
          goto LABEL_514;
        case 0x1Eu:
          *(a1 + 164) |= 8uLL;
          v232 = *(this + 1);
          v231 = *(this + 2);
          v233 = *this;
          if (v232 <= 0xFFFFFFFFFFFFFFF5 && v232 + 10 <= v231)
          {
            v234 = 0;
            v235 = 0;
            v236 = 0;
            v237 = (v233 + v232);
            v238 = v232 + 1;
            do
            {
              *(this + 1) = v238;
              v239 = *v237++;
              v236 |= (v239 & 0x7F) << v234;
              if ((v239 & 0x80) == 0)
              {
                goto LABEL_510;
              }

              v234 += 7;
              ++v238;
              v14 = v235++ > 8;
            }

            while (!v14);
LABEL_406:
            v236 = 0;
            goto LABEL_510;
          }

          v381 = 0;
          v382 = 0;
          v236 = 0;
          v17 = v231 >= v232;
          v383 = v231 - v232;
          if (!v17)
          {
            v383 = 0;
          }

          v384 = (v233 + v232);
          v385 = v232 + 1;
          while (2)
          {
            if (v383)
            {
              v386 = *v384;
              *(this + 1) = v385;
              v236 |= (v386 & 0x7F) << v381;
              if (v386 < 0)
              {
                v381 += 7;
                --v383;
                ++v384;
                ++v385;
                v14 = v382++ > 8;
                if (v14)
                {
                  goto LABEL_406;
                }

                continue;
              }

              if (*(this + 24))
              {
                v236 = 0;
              }
            }

            else
            {
              v236 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_510:
          *(a1 + 32) = v236;
          goto LABEL_514;
        case 0x1Fu:
          *(a1 + 164) |= 4uLL;
          v186 = *(this + 1);
          v185 = *(this + 2);
          v187 = *this;
          if (v186 <= 0xFFFFFFFFFFFFFFF5 && v186 + 10 <= v185)
          {
            v188 = 0;
            v189 = 0;
            v190 = 0;
            v191 = (v187 + v186);
            v192 = v186 + 1;
            do
            {
              *(this + 1) = v192;
              v193 = *v191++;
              v190 |= (v193 & 0x7F) << v188;
              if ((v193 & 0x80) == 0)
              {
                goto LABEL_495;
              }

              v188 += 7;
              ++v192;
              v14 = v189++ > 8;
            }

            while (!v14);
LABEL_366:
            v190 = 0;
            goto LABEL_495;
          }

          v351 = 0;
          v352 = 0;
          v190 = 0;
          v17 = v185 >= v186;
          v353 = v185 - v186;
          if (!v17)
          {
            v353 = 0;
          }

          v354 = (v187 + v186);
          v355 = v186 + 1;
          while (2)
          {
            if (v353)
            {
              v356 = *v354;
              *(this + 1) = v355;
              v190 |= (v356 & 0x7F) << v351;
              if (v356 < 0)
              {
                v351 += 7;
                --v353;
                ++v354;
                ++v355;
                v14 = v352++ > 8;
                if (v14)
                {
                  goto LABEL_366;
                }

                continue;
              }

              if (*(this + 24))
              {
                v190 = 0;
              }
            }

            else
            {
              v190 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_495:
          *(a1 + 24) = v190;
          goto LABEL_514;
        case 0x20u:
          *(a1 + 164) |= 1uLL;
          v112 = *(this + 1);
          v111 = *(this + 2);
          v113 = *this;
          if (v112 <= 0xFFFFFFFFFFFFFFF5 && v112 + 10 <= v111)
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            v117 = (v113 + v112);
            v118 = v112 + 1;
            do
            {
              *(this + 1) = v118;
              v119 = *v117++;
              v116 |= (v119 & 0x7F) << v114;
              if ((v119 & 0x80) == 0)
              {
                goto LABEL_471;
              }

              v114 += 7;
              ++v118;
              v14 = v115++ > 8;
            }

            while (!v14);
LABEL_302:
            v116 = 0;
            goto LABEL_471;
          }

          v303 = 0;
          v304 = 0;
          v116 = 0;
          v17 = v111 >= v112;
          v305 = v111 - v112;
          if (!v17)
          {
            v305 = 0;
          }

          v306 = (v113 + v112);
          v307 = v112 + 1;
          while (2)
          {
            if (v305)
            {
              v308 = *v306;
              *(this + 1) = v307;
              v116 |= (v308 & 0x7F) << v303;
              if (v308 < 0)
              {
                v303 += 7;
                --v305;
                ++v306;
                ++v307;
                v14 = v304++ > 8;
                if (v14)
                {
                  goto LABEL_302;
                }

                continue;
              }

              if (*(this + 24))
              {
                v116 = 0;
              }
            }

            else
            {
              v116 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_471:
          *(a1 + 8) = v116;
          goto LABEL_514;
        case 0x21u:
          *(a1 + 164) |= 2uLL;
          v195 = *(this + 1);
          v194 = *(this + 2);
          v196 = *this;
          if (v195 <= 0xFFFFFFFFFFFFFFF5 && v195 + 10 <= v194)
          {
            v197 = 0;
            v198 = 0;
            v199 = 0;
            v200 = (v196 + v195);
            v201 = v195 + 1;
            do
            {
              *(this + 1) = v201;
              v202 = *v200++;
              v199 |= (v202 & 0x7F) << v197;
              if ((v202 & 0x80) == 0)
              {
                goto LABEL_498;
              }

              v197 += 7;
              ++v201;
              v14 = v198++ > 8;
            }

            while (!v14);
LABEL_374:
            v199 = 0;
            goto LABEL_498;
          }

          v357 = 0;
          v358 = 0;
          v199 = 0;
          v17 = v194 >= v195;
          v359 = v194 - v195;
          if (!v17)
          {
            v359 = 0;
          }

          v360 = (v196 + v195);
          v361 = v195 + 1;
          while (2)
          {
            if (v359)
            {
              v362 = *v360;
              *(this + 1) = v361;
              v199 |= (v362 & 0x7F) << v357;
              if (v362 < 0)
              {
                v357 += 7;
                --v359;
                ++v360;
                ++v361;
                v14 = v358++ > 8;
                if (v14)
                {
                  goto LABEL_374;
                }

                continue;
              }

              if (*(this + 24))
              {
                v199 = 0;
              }
            }

            else
            {
              v199 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_498:
          *(a1 + 16) = v199;
          goto LABEL_514;
        case 0x22u:
          *(a1 + 164) |= 0x800uLL;
          v52 = *(this + 1);
          v51 = *(this + 2);
          v53 = *this;
          if (v52 <= 0xFFFFFFFFFFFFFFF5 && v52 + 10 <= v51)
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v57 = (v53 + v52);
            v58 = v52 + 1;
            do
            {
              *(this + 1) = v58;
              v59 = *v57++;
              v56 |= (v59 & 0x7F) << v54;
              if ((v59 & 0x80) == 0)
              {
                goto LABEL_453;
              }

              v54 += 7;
              ++v58;
              v14 = v55++ > 8;
            }

            while (!v14);
LABEL_254:
            LODWORD(v56) = 0;
            goto LABEL_453;
          }

          v267 = 0;
          v268 = 0;
          v56 = 0;
          v17 = v51 >= v52;
          v269 = v51 - v52;
          if (!v17)
          {
            v269 = 0;
          }

          v270 = (v53 + v52);
          v271 = v52 + 1;
          break;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_514;
          }

          v394 = 0;
          return v394 & 1;
      }

      while (1)
      {
        if (!v269)
        {
          LODWORD(v56) = 0;
          *(this + 24) = 1;
          goto LABEL_453;
        }

        v272 = *v270;
        *(this + 1) = v271;
        v56 |= (v272 & 0x7F) << v267;
        if ((v272 & 0x80) == 0)
        {
          break;
        }

        v267 += 7;
        --v269;
        ++v270;
        ++v271;
        v14 = v268++ > 8;
        if (v14)
        {
          goto LABEL_254;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v56) = 0;
      }

LABEL_453:
      *(a1 + 72) = v56;
LABEL_514:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(this + 24) & 1) == 0);
  }

LABEL_518:
  v394 = v4 ^ 1;
  return v394 & 1;
}

uint64_t sub_19B504150(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 164);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 164);
    if ((v4 & 0x80000) == 0)
    {
LABEL_3:
      if ((v4 & 0x20000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 164);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 164);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 164);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 164);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 164);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 156));
  v4 = *(v3 + 164);
  if ((v4 & 0x2000) == 0)
  {
LABEL_9:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  v5 = *(v3 + 80);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x1000) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x80) == 0)
  {
LABEL_11:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  v7 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(v3 + 160);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(v3 + 140);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x4000) == 0)
  {
LABEL_15:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  v11 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x800000) == 0)
  {
LABEL_16:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  v12 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  v13 = *(v3 + 128);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  v14 = *(v3 + 136);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  v15 = *(v3 + 132);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x400000) == 0)
  {
LABEL_20:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  v16 = *(v3 + 116);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  v17 = *(v3 + 124);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  v18 = *(v3 + 152);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x8000) == 0)
  {
LABEL_23:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_57:
  v19 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x100000) == 0)
  {
LABEL_24:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

LABEL_58:
  v20 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x100) == 0)
  {
LABEL_25:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 164);
  if ((v4 & 0x200000) == 0)
  {
LABEL_26:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 164);
  if ((v4 & 0x200) == 0)
  {
LABEL_27:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 164);
  if ((v4 & 0x20000) == 0)
  {
LABEL_28:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  v21 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x40000) == 0)
  {
LABEL_29:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_64;
  }

LABEL_63:
  v22 = *(v3 + 100);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x10000) == 0)
  {
LABEL_30:
    if ((v4 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  v23 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 8) == 0)
  {
LABEL_31:
    if ((v4 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_66;
  }

LABEL_65:
  v24 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 4) == 0)
  {
LABEL_32:
    if ((v4 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_66:
  v25 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 1) == 0)
  {
LABEL_33:
    if ((v4 & 2) == 0)
    {
      goto LABEL_34;
    }

LABEL_68:
    v27 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 164) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_69;
  }

LABEL_67:
  v26 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 2) != 0)
  {
    goto LABEL_68;
  }

LABEL_34:
  if ((v4 & 0x800) == 0)
  {
    return result;
  }

LABEL_69:
  v28 = *(v3 + 72);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B504540(uint64_t result)
{
  *result = &unk_1F0E2FFC0;
  *(result + 20) = 0;
  return result;
}

void sub_19B504568(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5045A0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "proximityState");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B50461C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_54;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v22 = *(this + 1);
        v2 = *(this + 2);
        v23 = *this;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(this + 1);
          }

          v32 = v2 - v22;
          v33 = (v23 + v22);
          v34 = v22 + 1;
          while (1)
          {
            if (!v32)
            {
              LODWORD(v26) = 0;
              *(this + 24) = 1;
              goto LABEL_49;
            }

            v35 = v34;
            v36 = *v33;
            *(this + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            --v32;
            ++v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_48:
          v2 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_49:
        *(a1 + 16) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_54:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_19B5048E8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B504954(uint64_t result)
{
  *result = &unk_1F0E2B2B8;
  *(result + 28) = -1;
  *(result + 48) = 0;
  return result;
}

void sub_19B504984(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5049BC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "currentMeanAngleY", *(a1 + 16));
    v5 = *(a1 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "deltaMeanAngleY", *(a1 + 20));
  v5 = *(a1 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(a1 + 24);
  PB::TextFormatter::format(this, "doubleTapCounter");
  v5 = *(a1 + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a1 + 28);
  PB::TextFormatter::format(this, "doubleTapStatus");
  v5 = *(a1 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "entropyConcha", *(a1 + 32));
  v5 = *(a1 + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "entropyTragus", *(a1 + 36));
  v5 = *(a1 + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 40);
  PB::TextFormatter::format(this, "location");
  v5 = *(a1 + 48);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "tapInterval", *(a1 + 44));
  if (*(a1 + 48))
  {
LABEL_10:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_11:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B504B20(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_121;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 48) |= 0x10u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v54 = 0;
              v55 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v56 = v2 - v39;
              v57 = (v40 + v39);
              v58 = v39 + 1;
              while (1)
              {
                if (!v56)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_112;
                }

                v59 = v58;
                v60 = *v57;
                *(this + 1) = v59;
                v43 |= (v60 & 0x7F) << v54;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                --v56;
                ++v57;
                v58 = v59 + 1;
                v14 = v55++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_111;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_111:
              v2 = v59;
            }

            else
            {
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = (v40 + v39);
              v45 = v39 + 1;
              while (1)
              {
                v2 = v45;
                *(this + 1) = v45;
                v46 = *v44++;
                v43 |= (v46 & 0x7F) << v41;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                ++v45;
                v14 = v42++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  break;
                }
              }
            }

LABEL_112:
            *(a1 + 28) = v43;
            goto LABEL_117;
          }

          if (v22 == 4)
          {
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_72:
              *(this + 24) = 1;
              goto LABEL_117;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_100:
            v2 = *(this + 1) + 4;
LABEL_101:
            *(this + 1) = v2;
            goto LABEL_117;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 48) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_101;
          }

          if (v22 == 2)
          {
            *(a1 + 48) |= 0x80u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v47 = 0;
              v48 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v49 = v2 - v31;
              v50 = (v32 + v31);
              v51 = v31 + 1;
              while (1)
              {
                if (!v49)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_108;
                }

                v52 = v51;
                v53 = *v50;
                *(this + 1) = v52;
                v35 |= (v53 & 0x7F) << v47;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                --v49;
                ++v50;
                v51 = v52 + 1;
                v14 = v48++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_107;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_107:
              v2 = v52;
            }

            else
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v36 = (v32 + v31);
              v37 = v31 + 1;
              while (1)
              {
                v2 = v37;
                *(this + 1) = v37;
                v38 = *v36++;
                v35 |= (v38 & 0x7F) << v33;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                ++v37;
                v14 = v34++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  break;
                }
              }
            }

LABEL_108:
            *(a1 + 40) = v35;
            goto LABEL_117;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 48) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_72;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_100;
        }

        if (v22 == 6)
        {
          *(a1 + 48) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_72;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_100;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 48) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 36) = *(*this + v2);
            goto LABEL_100;
          case 8:
            *(a1 + 48) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 44) = *(*this + v2);
            goto LABEL_100;
          case 9:
            *(a1 + 48) |= 8u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v61 = 0;
              v62 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v63 = v2 - v23;
              v64 = (v24 + v23);
              v65 = v23 + 1;
              while (1)
              {
                if (!v63)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_116;
                }

                v66 = v65;
                v67 = *v64;
                *(this + 1) = v66;
                v27 |= (v67 & 0x7F) << v61;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                --v63;
                ++v64;
                v65 = v66 + 1;
                v14 = v62++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_115;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_115:
              v2 = v66;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(this + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_116:
            *(a1 + 24) = v27;
            goto LABEL_117;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(this + 1);
LABEL_117:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_121:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sub_19B505164(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 48);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 48);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 48);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = PB::Writer::write(this, *(v3 + 44));
    if ((*(v3 + 48) & 8) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 48);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_19:
  v7 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B505298(uint64_t result)
{
  *result = &unk_1F0E39068;
  *(result + 28) = 0;
  return result;
}

void sub_19B5052C0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5052F8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if (v5)
  {
    PB::TextFormatter::format(this, "endTime", *(a1 + 8));
    v5 = *(a1 + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "startTime", *(a1 + 16));
  if ((*(a1 + 28) & 4) != 0)
  {
LABEL_4:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "taskType");
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B50539C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_59;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_59;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 28) |= 4u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(this + 1);
          }

          v33 = v2 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_54;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_53;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_53:
          v2 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_54:
        *(a1 + 24) = v27;
        goto LABEL_55;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 28) |= 2u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_30;
        }

        *(a1 + 16) = *(*this + v2);
LABEL_49:
        v2 = *(this + 1) + 8;
        *(this + 1) = v2;
        goto LABEL_55;
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_55:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_59;
      }
    }

    *(a1 + 28) |= 1u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_30:
      *(this + 24) = 1;
      goto LABEL_55;
    }

    *(a1 + 8) = *(*this + v2);
    goto LABEL_49;
  }

LABEL_59:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B5056A8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 2) == 0)
  {
    if ((*(result + 28) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 16));
  v4 = *(v3 + 28);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B505734(uint64_t result)
{
  *result = &unk_1F0E2F7E0;
  *(result + 60) = 0;
  return result;
}

void sub_19B50575C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B505794(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 60);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "averageFilteredPressure", *(a1 + 24));
    v5 = *(a1 + 60);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 28);
  PB::TextFormatter::format(this, "deltaStepCount");
  v5 = *(a1 + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(a1 + 32);
  PB::TextFormatter::format(this, "elevationAscended");
  v5 = *(a1 + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a1 + 36);
  PB::TextFormatter::format(this, "elevationDescended");
  v5 = *(a1 + 60);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a1 + 56);
  PB::TextFormatter::format(this, "isWorkoutElevationFusion");
  v5 = *(a1 + 60);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "pressureAmplitude", *(a1 + 40));
  v5 = *(a1 + 60);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a1 + 44);
  PB::TextFormatter::format(this, "pressureFailureState");
  v5 = *(a1 + 60);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a1 + 48);
  PB::TextFormatter::format(this, "pressureQuality");
  v5 = *(a1 + 60);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a1 + 52);
  PB::TextFormatter::format(this, "source");
  v5 = *(a1 + 60);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(this, "startTime", *(a1 + 8));
  if ((*(a1 + 60) & 2) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B505938(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_182;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 60) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_71:
              *(this + 24) = 1;
              goto LABEL_178;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_58;
          }

          if (v22 == 2)
          {
            *(a1 + 60) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_71;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_58:
            v2 = *(this + 1) + 8;
            goto LABEL_147;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 60) |= 0x10u;
              v49 = *(this + 1);
              v2 = *(this + 2);
              v50 = *this;
              if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
              {
                v87 = 0;
                v88 = 0;
                v53 = 0;
                if (v2 <= v49)
                {
                  v2 = *(this + 1);
                }

                v89 = v2 - v49;
                v90 = (v50 + v49);
                v91 = v49 + 1;
                while (1)
                {
                  if (!v89)
                  {
                    LODWORD(v53) = 0;
                    *(this + 24) = 1;
                    goto LABEL_165;
                  }

                  v92 = v91;
                  v93 = *v90;
                  *(this + 1) = v92;
                  v53 |= (v93 & 0x7F) << v87;
                  if ((v93 & 0x80) == 0)
                  {
                    break;
                  }

                  v87 += 7;
                  --v89;
                  ++v90;
                  v91 = v92 + 1;
                  v14 = v88++ > 8;
                  if (v14)
                  {
                    LODWORD(v53) = 0;
                    goto LABEL_164;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v53) = 0;
                }

LABEL_164:
                v2 = v92;
              }

              else
              {
                v51 = 0;
                v52 = 0;
                v53 = 0;
                v54 = (v50 + v49);
                v55 = v49 + 1;
                while (1)
                {
                  v2 = v55;
                  *(this + 1) = v55;
                  v56 = *v54++;
                  v53 |= (v56 & 0x7F) << v51;
                  if ((v56 & 0x80) == 0)
                  {
                    break;
                  }

                  v51 += 7;
                  ++v55;
                  v14 = v52++ > 8;
                  if (v14)
                  {
                    LODWORD(v53) = 0;
                    break;
                  }
                }
              }

LABEL_165:
              *(a1 + 32) = v53;
              goto LABEL_178;
            case 4:
              *(a1 + 60) |= 0x20u;
              v41 = *(this + 1);
              v2 = *(this + 2);
              v42 = *this;
              if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
              {
                v73 = 0;
                v74 = 0;
                v45 = 0;
                if (v2 <= v41)
                {
                  v2 = *(this + 1);
                }

                v75 = v2 - v41;
                v76 = (v42 + v41);
                v77 = v41 + 1;
                while (1)
                {
                  if (!v75)
                  {
                    LODWORD(v45) = 0;
                    *(this + 24) = 1;
                    goto LABEL_157;
                  }

                  v78 = v77;
                  v79 = *v76;
                  *(this + 1) = v78;
                  v45 |= (v79 & 0x7F) << v73;
                  if ((v79 & 0x80) == 0)
                  {
                    break;
                  }

                  v73 += 7;
                  --v75;
                  ++v76;
                  v77 = v78 + 1;
                  v14 = v74++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    goto LABEL_156;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v45) = 0;
                }

LABEL_156:
                v2 = v78;
              }

              else
              {
                v43 = 0;
                v44 = 0;
                v45 = 0;
                v46 = (v42 + v41);
                v47 = v41 + 1;
                while (1)
                {
                  v2 = v47;
                  *(this + 1) = v47;
                  v48 = *v46++;
                  v45 |= (v48 & 0x7F) << v43;
                  if ((v48 & 0x80) == 0)
                  {
                    break;
                  }

                  v43 += 7;
                  ++v47;
                  v14 = v44++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    break;
                  }
                }
              }

LABEL_157:
              *(a1 + 36) = v45;
              goto LABEL_178;
            case 5:
              *(a1 + 60) |= 0x200u;
              v31 = *(this + 1);
              v2 = *(this + 2);
              v32 = *this;
              if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
              {
                v80 = 0;
                v81 = 0;
                v35 = 0;
                if (v2 <= v31)
                {
                  v2 = *(this + 1);
                }

                v82 = v2 - v31;
                v83 = (v32 + v31);
                v84 = v31 + 1;
                while (1)
                {
                  if (!v82)
                  {
                    LODWORD(v35) = 0;
                    *(this + 24) = 1;
                    goto LABEL_161;
                  }

                  v85 = v84;
                  v86 = *v83;
                  *(this + 1) = v85;
                  v35 |= (v86 & 0x7F) << v80;
                  if ((v86 & 0x80) == 0)
                  {
                    break;
                  }

                  v80 += 7;
                  --v82;
                  ++v83;
                  v84 = v85 + 1;
                  v14 = v81++ > 8;
                  if (v14)
                  {
                    LODWORD(v35) = 0;
                    goto LABEL_160;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v35) = 0;
                }

LABEL_160:
                v2 = v85;
              }

              else
              {
                v33 = 0;
                v34 = 0;
                v35 = 0;
                v36 = (v32 + v31);
                v37 = v31 + 1;
                while (1)
                {
                  v2 = v37;
                  *(this + 1) = v37;
                  v38 = *v36++;
                  v35 |= (v38 & 0x7F) << v33;
                  if ((v38 & 0x80) == 0)
                  {
                    break;
                  }

                  v33 += 7;
                  ++v37;
                  v14 = v34++ > 8;
                  if (v14)
                  {
                    LODWORD(v35) = 0;
                    break;
                  }
                }
              }

LABEL_161:
              *(a1 + 52) = v35;
              goto LABEL_178;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 60) |= 0x80u;
            v65 = *(this + 1);
            v2 = *(this + 2);
            v66 = *this;
            if (v65 > 0xFFFFFFFFFFFFFFF5 || v65 + 10 > v2)
            {
              v108 = 0;
              v109 = 0;
              v69 = 0;
              if (v2 <= v65)
              {
                v2 = *(this + 1);
              }

              v110 = v2 - v65;
              v111 = (v66 + v65);
              v112 = v65 + 1;
              while (1)
              {
                if (!v110)
                {
                  LODWORD(v69) = 0;
                  *(this + 24) = 1;
                  goto LABEL_177;
                }

                v113 = v112;
                v114 = *v111;
                *(this + 1) = v113;
                v69 |= (v114 & 0x7F) << v108;
                if ((v114 & 0x80) == 0)
                {
                  break;
                }

                v108 += 7;
                --v110;
                ++v111;
                v112 = v113 + 1;
                v14 = v109++ > 8;
                if (v14)
                {
                  LODWORD(v69) = 0;
                  goto LABEL_176;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v69) = 0;
              }

LABEL_176:
              v2 = v113;
            }

            else
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = (v66 + v65);
              v71 = v65 + 1;
              while (1)
              {
                v2 = v71;
                *(this + 1) = v71;
                v72 = *v70++;
                v69 |= (v72 & 0x7F) << v67;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                ++v71;
                v14 = v68++ > 8;
                if (v14)
                {
                  LODWORD(v69) = 0;
                  break;
                }
              }
            }

LABEL_177:
            *(a1 + 44) = v69;
            goto LABEL_178;
          case 0xA:
            *(a1 + 60) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_71;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_146:
            v2 = *(this + 1) + 4;
LABEL_147:
            *(this + 1) = v2;
            goto LABEL_178;
          case 0xB:
            *(a1 + 60) |= 0x400u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v40 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v39 = *(*this + v2++);
              *(this + 1) = v2;
              v40 = v39 != 0;
            }

            *(a1 + 56) = v40;
            goto LABEL_178;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 60) |= 8u;
            v57 = *(this + 1);
            v2 = *(this + 2);
            v58 = *this;
            if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
            {
              v101 = 0;
              v102 = 0;
              v61 = 0;
              if (v2 <= v57)
              {
                v2 = *(this + 1);
              }

              v103 = v2 - v57;
              v104 = (v58 + v57);
              v105 = v57 + 1;
              while (1)
              {
                if (!v103)
                {
                  LODWORD(v61) = 0;
                  *(this + 24) = 1;
                  goto LABEL_173;
                }

                v106 = v105;
                v107 = *v104;
                *(this + 1) = v106;
                v61 |= (v107 & 0x7F) << v101;
                if ((v107 & 0x80) == 0)
                {
                  break;
                }

                v101 += 7;
                --v103;
                ++v104;
                v105 = v106 + 1;
                v14 = v102++ > 8;
                if (v14)
                {
                  LODWORD(v61) = 0;
                  goto LABEL_172;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v61) = 0;
              }

LABEL_172:
              v2 = v106;
            }

            else
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = (v58 + v57);
              v63 = v57 + 1;
              while (1)
              {
                v2 = v63;
                *(this + 1) = v63;
                v64 = *v62++;
                v61 |= (v64 & 0x7F) << v59;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                ++v63;
                v14 = v60++ > 8;
                if (v14)
                {
                  LODWORD(v61) = 0;
                  break;
                }
              }
            }

LABEL_173:
            *(a1 + 28) = v61;
            goto LABEL_178;
          case 7:
            *(a1 + 60) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_71;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_146;
          case 8:
            *(a1 + 60) |= 0x100u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v94 = 0;
              v95 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v96 = v2 - v23;
              v97 = (v24 + v23);
              v98 = v23 + 1;
              while (1)
              {
                if (!v96)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_169;
                }

                v99 = v98;
                v100 = *v97;
                *(this + 1) = v99;
                v27 |= (v100 & 0x7F) << v94;
                if ((v100 & 0x80) == 0)
                {
                  break;
                }

                v94 += 7;
                --v96;
                ++v97;
                v98 = v99 + 1;
                v14 = v95++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_168;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_168:
              v2 = v99;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(this + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_169:
            *(a1 + 48) = v27;
            goto LABEL_178;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v115 = 0;
        return v115 & 1;
      }

      v2 = *(this + 1);
LABEL_178:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_182:
  v115 = v4 ^ 1;
  return v115 & 1;
}

uint64_t sub_19B50626C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 60);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 60);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 60) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  v10 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x400) == 0)
  {
    return result;
  }

LABEL_23:
  v11 = *(v3 + 56);

  return PB::Writer::write(this);
}

uint64_t sub_19B5063D8(uint64_t result)
{
  *result = &unk_1F0E2D1D0;
  *(result + 92) = 0;
  return result;
}

void sub_19B506400(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B506438(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 92);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "altitudeDelta", *(a1 + 48));
    v5 = *(a1 + 92);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "altitudeDeltaStreaming", *(a1 + 52));
  v5 = *(a1 + 92);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "deltaTime", *(a1 + 56));
  v5 = *(a1 + 92);
  if ((v5 & 0x8000) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = *(a1 + 88);
  PB::TextFormatter::format(this, "didEstimate");
  v5 = *(a1 + 92);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "downhillStartTime", *(a1 + 8));
  v5 = *(a1 + 92);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "elevationAscended");
  v5 = *(a1 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = *(a1 + 24);
  PB::TextFormatter::format(this, "elevationDescended");
  v5 = *(a1 + 92);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = *(a1 + 60);
  PB::TextFormatter::format(this, "gradeType");
  v5 = *(a1 + 92);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "heightRef", *(a1 + 64));
  v5 = *(a1 + 92);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a1 + 89);
  PB::TextFormatter::format(this, "isWorkoutElevationFusion");
  v5 = *(a1 + 92);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "predictionError", *(a1 + 68));
  v5 = *(a1 + 92);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "predictionIntercept", *(a1 + 72));
  v5 = *(a1 + 92);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v11 = *(a1 + 76);
  PB::TextFormatter::format(this, "source");
  v5 = *(a1 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  v5 = *(a1 + 92);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "timeDeltaStreaming", *(a1 + 80));
  v5 = *(a1 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  PB::TextFormatter::format(this, "timeRef", *(a1 + 40));
  if ((*(a1 + 92) & 0x4000) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(this, "verticalSpeed", *(a1 + 84));
  }

LABEL_19:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B50669C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_154;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 92) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_128;
        case 2u:
          *(a1 + 92) |= 2u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v72 = 0;
            v73 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(this + 1);
            }

            v74 = v2 - v40;
            v75 = (v41 + v40);
            v76 = v40 + 1;
            while (1)
            {
              if (!v74)
              {
                v44 = 0;
                *(this + 24) = 1;
                goto LABEL_145;
              }

              v77 = v76;
              v78 = *v75;
              *(this + 1) = v77;
              v44 |= (v78 & 0x7F) << v72;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              --v74;
              ++v75;
              v76 = v77 + 1;
              v14 = v73++ > 8;
              if (v14)
              {
                v44 = 0;
LABEL_144:
                v2 = v77;
                goto LABEL_145;
              }
            }

            if (*(this + 24))
            {
              v44 = 0;
            }

            goto LABEL_144;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          do
          {
            v2 = v46;
            *(this + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              goto LABEL_145;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          v44 = 0;
LABEL_145:
          *(a1 + 16) = v44;
          goto LABEL_150;
        case 3u:
          *(a1 + 92) |= 4u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v58 = 0;
            v59 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v60 = v2 - v24;
            v61 = (v25 + v24);
            v62 = v24 + 1;
            while (1)
            {
              if (!v60)
              {
                v28 = 0;
                *(this + 24) = 1;
                goto LABEL_137;
              }

              v63 = v62;
              v64 = *v61;
              *(this + 1) = v63;
              v28 |= (v64 & 0x7F) << v58;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              --v60;
              ++v61;
              v62 = v63 + 1;
              v14 = v59++ > 8;
              if (v14)
              {
                v28 = 0;
LABEL_136:
                v2 = v63;
                goto LABEL_137;
              }
            }

            if (*(this + 24))
            {
              v28 = 0;
            }

            goto LABEL_136;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_137;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          v28 = 0;
LABEL_137:
          *(a1 + 24) = v28;
          goto LABEL_150;
        case 4u:
          *(a1 + 92) |= 0x1000u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v65 = 0;
            v66 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(this + 1);
            }

            v67 = v2 - v32;
            v68 = (v33 + v32);
            v69 = v32 + 1;
            while (1)
            {
              if (!v67)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_141;
              }

              v70 = v69;
              v71 = *v68;
              *(this + 1) = v70;
              v36 |= (v71 & 0x7F) << v65;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              --v67;
              ++v68;
              v69 = v70 + 1;
              v14 = v66++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
LABEL_140:
                v2 = v70;
                goto LABEL_141;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_140;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(this + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_141;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_141:
          *(a1 + 76) = v36;
          goto LABEL_150;
        case 5u:
          *(a1 + 92) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_75;
        case 6u:
          *(a1 + 92) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_75;
        case 7u:
          *(a1 + 92) |= 0x100u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(this + 1);
            }

            v81 = v2 - v48;
            v82 = (v49 + v48);
            v83 = v48 + 1;
            while (1)
            {
              if (!v81)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_149;
              }

              v84 = v83;
              v85 = *v82;
              *(this + 1) = v84;
              v52 |= (v85 & 0x7F) << v79;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              --v81;
              ++v82;
              v83 = v84 + 1;
              v14 = v80++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_148:
                v2 = v84;
                goto LABEL_149;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_148;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(this + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_149;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_149:
          *(a1 + 60) = v52;
          goto LABEL_150;
        case 8u:
          *(a1 + 92) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_75;
        case 9u:
          *(a1 + 92) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v57 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v56 = *(*this + v2++);
            *(this + 1) = v2;
            v57 = v56 != 0;
          }

          *(a1 + 88) = v57;
          goto LABEL_150;
        case 0xAu:
          *(a1 + 92) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_75;
        case 0xBu:
          *(a1 + 92) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_128;
        case 0xCu:
          *(a1 + 92) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_75;
        case 0xDu:
          *(a1 + 92) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_75;
        case 0xEu:
          *(a1 + 92) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_128:
          v2 = *(this + 1) + 8;
          goto LABEL_129;
        case 0xFu:
          *(a1 + 92) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_75;
        case 0x10u:
          *(a1 + 92) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_88:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 72) = *(*this + v2);
LABEL_75:
            v2 = *(this + 1) + 4;
LABEL_129:
            *(this + 1) = v2;
          }

          goto LABEL_150;
        case 0x11u:
          *(a1 + 92) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v23 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v22 = *(*this + v2++);
            *(this + 1) = v2;
            v23 = v22 != 0;
          }

          *(a1 + 89) = v23;
          goto LABEL_150;
        default:
          if (!PB::Reader::skip(this))
          {
            v86 = 0;
            return v86 & 1;
          }

          v2 = *(this + 1);
LABEL_150:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_154;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(this + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(this + 24) = 1;
  }

LABEL_154:
  v86 = v4 ^ 1;
  return v86 & 1;
}

uint64_t sub_19B506F50(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 92);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 92);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 92);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 92);
  if ((v4 & 0x8000) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = *(v3 + 88);
  result = PB::Writer::write(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_14:
    if ((v4 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 92);
  if ((v4 & 1) == 0)
  {
LABEL_15:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    result = PB::Writer::write(this, *(v3 + 72));
    if ((*(v3 + 92) & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 92);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v4 & 0x10000) == 0)
  {
    return result;
  }

LABEL_35:
  v10 = *(v3 + 89);

  return PB::Writer::write(this);
}