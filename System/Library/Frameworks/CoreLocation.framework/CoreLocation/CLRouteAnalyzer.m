@interface CLRouteAnalyzer
+ (double)calculateRouteLinearity:(id)a3;
+ (id)extractRouteCorners:(id)a3;
@end

@implementation CLRouteAnalyzer

+ (double)calculateRouteLinearity:(id)a3
{
  v230 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if ([a3 count] > 9)
    {
      memset(v214, 0, sizeof(v214));
      v216 = 0;
      v217 = 0;
      v215 = xmmword_19BA89490;
      v218 = 0x3FF0000000000000;
      v219 = a3;
      sub_19B9CA9C0(v214, [a3 count]);
      *buf = 0;
      sub_19B8F518C(v214, buf);
      if ([v219 count] >= 2)
      {
        v10 = 1;
        do
        {
          v11 = [v219 objectAtIndexedSubscript:v10 - 1];
          v12 = [v219 objectAtIndexedSubscript:v10];
          [v11 coordinate];
          v14 = v13;
          [v11 coordinate];
          v16 = v15;
          [v12 coordinate];
          v18 = v17;
          [v12 coordinate];
          v20 = sub_19BA0C01C(&v215, v14, v16, v18, v19, 0.0);
          if (v20 < 0.0)
          {
            v20 = 0.0;
          }

          *buf = v20 + *(v214[1] - 1);
          sub_19B8F518C(v214, buf);
          ++v10;
        }

        while (v10 < [v219 count]);
      }

      v200 = 0;
      v201 = 0;
      v202 = 0;
      if ([v219 count] >= 0x28)
      {
        v21 = [v219 count];
        v22 = v21;
        if (v21 >= 0x15)
        {
          sub_19B9CAA60(&v200, v21 - 40);
          v183 = v22 - 20;
          if (v22 - 20 >= 0x15)
          {
            v23 = 20;
            v24 = 160;
            v25 = 168;
            do
            {
              v189 = 0;
              v26 = 0;
              *buf = v23;
              *&buf[16] = 0;
              v221 = 0.0;
              v184 = 0.0;
              v188 = 0.0;
              *&buf[8] = 0;
              do
              {
                v27 = 0;
                v28 = *&qword_19BA8CE80[v26];
                if (v28 >= 8.0)
                {
                  v29 = *&qword_19BA8CE80[v26];
                }

                else
                {
                  v29 = 8.0;
                }

                v30 = (v214[0] + v24);
                v31 = 0.0;
                v32 = v23;
                do
                {
                  if (v31 >= v29 && v27 > 9)
                  {
                    break;
                  }

                  v34 = *v30;
                  v35 = *--v30;
                  v31 = v31 + v34 - v35;
                  ++v27;
                  --v32;
                }

                while (v32);
                if ([v219 count] - 1 > v23)
                {
                  v36 = 0;
                  v37 = 0.0;
                  while (v37 < v29 || v36 <= 9)
                  {
                    v39 = *(v214[0] + 8 * v36 + v25);
                    v40 = *(v214[0] + 8 * v36++ + v24);
                    v37 = v37 + v39 - v40;
                    v41 = v23 + v36;
                    if (v23 + v36 >= [v219 count] - 1)
                    {
                      goto LABEL_56;
                    }
                  }

                  v41 = v23 + v36;
LABEL_56:
                  if (v32 < v23 && v41 > v23)
                  {
                    v42 = [v219 objectAtIndexedSubscript:v32];
                    v43 = [v219 objectAtIndexedSubscript:v23];
                    v44 = [v219 objectAtIndexedSubscript:v41];
                    v45 = *(v214[0] + v23);
                    v46 = v45 - *(v214[0] + v32);
                    v47 = *(v214[0] + v41) - v45;
                    if (v46 >= 10.0 && v47 >= 10.0)
                    {
                      v49 = v44;
                      [v42 coordinate];
                      v51 = v50;
                      [v42 coordinate];
                      v53 = v52;
                      [v43 coordinate];
                      v55 = v54;
                      [v43 coordinate];
                      v57 = sub_19BA0C44C(&v215, v51, v53, v55, v56);
                      [v43 coordinate];
                      v59 = v58;
                      [v43 coordinate];
                      v61 = v60;
                      [v49 coordinate];
                      v63 = v62;
                      [v49 coordinate];
                      v65 = sub_19BA0C44C(&v215, v59, v61, v63, v64);
                      v66 = v65 - v57 + floor((v65 - v57) / 360.0) * -360.0;
                      if (v66 > 180.0)
                      {
                        v66 = v66 + -360.0;
                      }

                      v67 = fabs(v66);
                      v68 = dbl_19BA8CE70[v28 < 25.0];
                      if (v28 < 20.0)
                      {
                        v68 = v68 + 10.0;
                      }

                      if (v67 > v68)
                      {
                        ++v189;
                        if (v67 > v188)
                        {
                          v184 = v66;
                          v188 = v67;
                        }
                      }
                    }
                  }
                }

                ++v26;
              }

              while (v26 != 3);
              *&buf[8] = v189;
              *&buf[16] = v188;
              v221 = v184;
              if (v189 > 1)
              {
                sub_19B9CAB04(&v200, buf);
              }

              ++v23;
              v24 += 8;
              v25 += 8;
            }

            while (v23 != v183);
          }
        }
      }

      v69 = v200;
      v70 = v201;
      memset(buf, 0, sizeof(buf));
      if (v200 == v201)
      {
        v73 = 0;
        v72 = 0;
      }

      else
      {
        do
        {
          v71 = v69[2];
          *v203 = *v69;
          *&v203[8] = v71;
          sub_19B9CAC20(buf, v203);
          v69 += 4;
        }

        while (v69 != v70);
        v72 = *buf;
        v73 = *&buf[8];
      }

      v74 = (v73 - v72) >> 4;
      v75 = 126 - 2 * __clz(v74);
      if (v73 == v72)
      {
        v76 = 0;
      }

      else
      {
        v76 = v75;
      }

      sub_19B9CAD3C(v72, v73, v76, 1);
      v197 = 0;
      v198 = 0;
      v199 = 0;
      if (v73 != v72)
      {
        if (!(v74 >> 60))
        {
          sub_19B9CACF4((v73 - v72) >> 4);
        }

        sub_19B8B8A40();
      }

      if (v72)
      {
        operator delete(v72);
      }

      v194 = 0;
      v195 = 0;
      v196 = 0;
      std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
      __p = 0;
      v192 = 0;
      v193 = 0;
      *buf = 0;
      sub_19B8D8B54(&__p, buf);
      v77 = v194;
      v78 = v195;
      while (v77 != v78)
      {
        *buf = *v77;
        sub_19B8D8B54(&__p, buf);
        ++v77;
      }

      *buf = [a3 count] - 1;
      sub_19B8D8B54(&__p, buf);
      v79 = __p;
      if (v192 - __p == 8)
      {
        goto LABEL_106;
      }

      v80 = 0;
      do
      {
        v81 = &v79[v80];
        v82 = *v81;
        v83 = v81[1];
        if (v82 < [a3 count] && v83 < objc_msgSend(a3, "count"))
        {
          v84 = [a3 objectAtIndexedSubscript:v82];
          v85 = [a3 objectAtIndexedSubscript:v83];
          if (qword_1EAFE4798 != -1)
          {
            dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
          }

          v86 = qword_1EAFE47A0;
          if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
          {
            [v84 coordinate];
            v88 = v87;
            [v84 coordinate];
            v90 = v89;
            [v85 coordinate];
            v92 = v91;
            [v85 coordinate];
            *buf = 134350593;
            *&buf[4] = v80;
            *&buf[12] = 2050;
            *&buf[14] = v82;
            *&buf[22] = 2050;
            v221 = *&v83;
            v222 = 2053;
            v223 = v88;
            v224 = 2053;
            v225 = v90;
            v226 = 2053;
            v227 = v92;
            v228 = 2053;
            v229 = v93;
            _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_DEFAULT, "CLOR,routeLinearity,segmentBounds,%{public}zu,startIdx,%{public}zu,endIdx,%{public}zu,startLat,%{sensitive}.8f,startLon,%{sensitive}.8f,endLat,%{sensitive}.8f,endLon,%{sensitive}.8f", buf, 0x48u);
          }

          v94 = sub_19B87DD40();
          if (*(v94 + 160) > 1 || *(v94 + 164) > 1 || *(v94 + 168) > 1 || *(v94 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4798 != -1)
            {
              dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
            }

            [v84 coordinate];
            v96 = v95;
            [v84 coordinate];
            v98 = v97;
            [v85 coordinate];
            v100 = v99;
            [v85 coordinate];
            *v203 = 134350593;
            *&v203[4] = v80;
            *&v203[12] = 2050;
            *&v203[14] = v82;
            v204 = 2050;
            v205 = *&v83;
            v206 = 2053;
            v207 = v96;
            v208 = 2053;
            v209 = v98;
            v210 = 2053;
            v211 = v100;
            v212 = 2053;
            v213 = v101;
            v102 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer calculateRouteLinearity:]", "CoreLocation: %s\n", v102);
            if (v102 != buf)
            {
              free(v102);
            }
          }
        }

        ++v80;
        v79 = __p;
      }

      while (v80 < ((v192 - __p) >> 3) - 1);
      if (v192 - __p == 8)
      {
LABEL_106:
        v103 = 0.0;
        v104 = 0.0;
        v105 = 0.0;
      }

      else
      {
        v103 = 0.0;
        v111 = 0;
        v112 = 20.0;
        v105 = 0.0;
        v104 = 0.0;
        v113 = a3;
        do
        {
          v114 = v79[v111];
          v115 = v111 + 1;
          v116 = v79[v111 + 1];
          v187 = v116 - v114;
          if (v116 - v114 >= 0xA)
          {
            v117 = [v113 objectAtIndexedSubscript:v114];
            v118 = [v113 objectAtIndexedSubscript:v116];
            [v117 coordinate];
            v120 = v119;
            [v117 coordinate];
            v122 = v121;
            [v118 coordinate];
            v124 = v123;
            [v118 coordinate];
            v126 = sub_19BA0C01C(&v215, v120, v122, v124, v125, 0.0);
            if (v126 >= v112)
            {
              v127 = v126;
              [v117 coordinate];
              v129 = v128;
              [v117 coordinate];
              v131 = v130;
              [v118 coordinate];
              v133 = v132;
              v186 = v105;
              v134 = v104;
              [v118 coordinate];
              v136 = sub_19BA0C44C(&v215, v129, v131, v133, v135);
              v137 = 0.0;
              v138 = 0.0;
              if (v116 > v114 && v116 >= 6 && v114 < v116 - 5)
              {
                v139 = v136;
                v185 = v103;
                v140 = 0;
                v141 = v114;
                do
                {
                  v142 = v141 + 5;
                  if (v141 + 5 < [a3 count])
                  {
                    v143 = [a3 objectAtIndexedSubscript:v141];
                    v144 = [a3 objectAtIndexedSubscript:v141 + 5];
                    [v143 coordinate];
                    v146 = v145;
                    [v143 coordinate];
                    v148 = v147;
                    [v144 coordinate];
                    v150 = v149;
                    [v144 coordinate];
                    v152 = vabdd_f64(sub_19BA0C44C(&v215, v146, v148, v150, v151), v139);
                    if (v152 > 180.0)
                    {
                      v152 = 360.0 - v152;
                    }

                    v138 = v138 + v152;
                    ++v140;
                  }

                  v141 = v142;
                }

                while (v142 < v116 - 5);
                if (v140)
                {
                  v138 = v138 / v140;
                }

                else
                {
                  v138 = 0.0;
                }

                v103 = v185;
              }

              if (v116 > v114 && v116 >= 0xB)
              {
                v153 = v116 - 10;
                if (v114 < v116 - 10)
                {
                  v154 = 0;
                  v155 = 0.0;
                  do
                  {
                    v156 = v114;
                    v114 += 5;
                    if (v156 + 5 < [a3 count] && v156 + 10 < objc_msgSend(a3, "count"))
                    {
                      v157 = [a3 objectAtIndexedSubscript:v156];
                      v158 = [a3 objectAtIndexedSubscript:v156 + 5];
                      v159 = [a3 objectAtIndexedSubscript:v156 + 10];
                      [v157 coordinate];
                      v161 = v160;
                      [v157 coordinate];
                      v163 = v162;
                      [v158 coordinate];
                      v165 = v164;
                      [v158 coordinate];
                      v167 = sub_19BA0C44C(&v215, v161, v163, v165, v166);
                      [v158 coordinate];
                      v169 = v168;
                      [v158 coordinate];
                      v171 = v170;
                      [v159 coordinate];
                      v173 = v172;
                      [v159 coordinate];
                      v175 = vabdd_f64(sub_19BA0C44C(&v215, v169, v171, v173, v174), v167);
                      if (v175 > 180.0)
                      {
                        v175 = 360.0 - v175;
                      }

                      v155 = v155 + v175;
                      ++v154;
                    }
                  }

                  while (v114 < v153);
                  if (v154)
                  {
                    v137 = v155 / v154;
                  }

                  else
                  {
                    v137 = 0.0;
                  }
                }
              }

              v176 = 0.25;
              if (v137 > 50.0)
              {
                v176 = fmin((v137 + -50.0) / 33.0 * 0.3, 0.3) + 0.25;
              }

              v177 = fmax(v137 / -60.0 + 1.0, 0.0) * v176 + (1.0 - v176) * fmax(v138 / -120.0 + 1.0, 0.0);
              v178 = pow(v177, 2.2);
              v113 = a3;
              if (qword_1EAFE4798 != -1)
              {
                dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
              }

              v179 = v134;
              v180 = qword_1EAFE47A0;
              if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134350592;
                *&buf[4] = v111;
                *&buf[12] = 2050;
                *&buf[14] = v187;
                *&buf[22] = 2050;
                v221 = v127;
                v222 = 2050;
                v223 = v138;
                v224 = 2050;
                v225 = v177;
                v226 = 2050;
                v227 = v178;
                v228 = 2050;
                v229 = v127 * v178;
                _os_log_impl(&dword_19B873000, v180, OS_LOG_TYPE_DEFAULT, "CLOR,routeLinearity,segment,%{public}zu,points,%{public}zu,distance,%{public}.1f,avgDeviation,%{public}.2f,rawLinearity,%{public}.3f,linearity,%{public}.3f,weightedContrib,%{public}.3f", buf, 0x48u);
              }

              v181 = sub_19B87DD40();
              v105 = v186 + v178 * v127;
              v104 = v179 + v127;
              ++*&v103;
              if (*(v181 + 160) > 1 || *(v181 + 164) > 1 || *(v181 + 168) > 1 || *(v181 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE4798 != -1)
                {
                  dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
                }

                *v203 = 134350592;
                *&v203[4] = v111;
                *&v203[12] = 2050;
                *&v203[14] = v187;
                v204 = 2050;
                v205 = v127;
                v206 = 2050;
                v207 = v138;
                v208 = 2050;
                v209 = v177;
                v210 = 2050;
                v211 = v178;
                v212 = 2050;
                v213 = v127 * v178;
                v182 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer calculateRouteLinearity:]", "CoreLocation: %s\n", v182);
                v112 = 20.0;
                if (v182 != buf)
                {
                  free(v182);
                }
              }

              else
              {
                v112 = 20.0;
              }
            }
          }

          v79 = __p;
          ++v111;
        }

        while (v115 < ((v192 - __p) >> 3) - 1);
      }

      if (v104 <= 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v105 / v104;
      }

      if (qword_1EAFE4798 != -1)
      {
        dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
      }

      v106 = qword_1EAFE47A0;
      if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134350080;
        *&buf[4] = ((v192 - __p) >> 3) - 1;
        *&buf[12] = 2050;
        *&buf[14] = (v195 - v194) >> 3;
        *&buf[22] = 2050;
        v221 = v103;
        v222 = 2050;
        v223 = v104;
        v224 = 2050;
        v225 = v6;
        _os_log_impl(&dword_19B873000, v106, OS_LOG_TYPE_DEFAULT, "CLOR,routeLinearity,summary,segments,%{public}zu,turns,%{public}zu,processedSegments,%{public}zu,totalDistance,%{public}.1f,finalScore,%{public}.3f", buf, 0x34u);
      }

      v107 = sub_19B87DD40();
      if (*(v107 + 160) > 1 || *(v107 + 164) > 1 || *(v107 + 168) > 1 || *(v107 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4798 != -1)
        {
          dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
        }

        *v203 = 134350080;
        *&v203[4] = ((v192 - __p) >> 3) - 1;
        *&v203[12] = 2050;
        *&v203[14] = (v195 - v194) >> 3;
        v204 = 2050;
        v205 = v103;
        v206 = 2050;
        v207 = v104;
        v208 = 2050;
        v209 = v6;
        v108 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer calculateRouteLinearity:]", "CoreLocation: %s\n", v108);
        if (v108 != buf)
        {
          free(v108);
        }
      }

      if (__p)
      {
        v192 = __p;
        operator delete(__p);
      }

      if (v194)
      {
        v195 = v194;
        operator delete(v194);
      }

      if (v197)
      {
        operator delete(v197);
      }

      if (v200)
      {
        operator delete(v200);
      }

      if (v214[0])
      {
        v214[1] = v214[0];
        operator delete(v214[0]);
      }
    }

    else
    {
      if (qword_1EAFE4798 != -1)
      {
        dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
      }

      v4 = qword_1EAFE47A0;
      if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        *&buf[4] = [a3 count];
        _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLOR,routeLinearity,warning,insufficient samples,%{public}zu", buf, 0xCu);
      }

      v5 = sub_19B87DD40();
      if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || (v6 = 0.0, *(v5 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4798 != -1)
        {
          dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
        }

        LODWORD(v214[0]) = 134349056;
        *(v214 + 4) = [a3 count];
        v7 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer calculateRouteLinearity:]", "CoreLocation: %s\n", v7);
        if (v7 == buf)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }
  }

  else
  {
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    v8 = qword_1EAFE47A0;
    if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "CLOR,routeLinearity,error,null locationSamples", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || (v6 = 0.0, *(v9 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4798 != -1)
      {
        dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
      }

      LOWORD(v214[0]) = 0;
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer calculateRouteLinearity:]", "CoreLocation: %s\n", v7);
      if (v7 == buf)
      {
        goto LABEL_27;
      }

LABEL_26:
      free(v7);
LABEL_27:
      v6 = 0.0;
    }
  }

  v109 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)extractRouteCorners:(id)a3
{
  v179 = *MEMORY[0x1E69E9840];
  __src = 0;
  v159 = 0;
  v160 = 0;
  if (!a3)
  {
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    v7 = qword_1EAFE47A0;
    if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "CLOR,extractRouteCorners,error,null tripLocations", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    LOWORD(v168[0]) = 0;
    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer extractRouteCorners:]", "CoreLocation: %s\n", v6);
    if (v6 == buf)
    {
      goto LABEL_27;
    }

LABEL_26:
    free(v6);
LABEL_27:
    v9 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    goto LABEL_167;
  }

  v3 = a3;
  if ([a3 count] < 0xA)
  {
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    v4 = qword_1EAFE47A0;
    if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *&buf[4] = [v3 count];
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLOR,extractRouteCorners,warning,insufficient samples,%{public}zu", buf, 0xCu);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) <= 1 && *(v5 + 164) <= 1 && *(v5 + 168) <= 1 && !*(v5 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    LODWORD(v168[0]) = 134349056;
    *(v168 + 4) = [v3 count];
    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer extractRouteCorners:]", "CoreLocation: %s\n", v6);
    if (v6 == buf)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  for (i = 0; i < [v3 count]; ++i)
  {
    v11 = v3;
    v12 = [v3 objectAtIndexedSubscript:i];
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    v13 = qword_1EAFE47A0;
    if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
    {
      [v12 latitude];
      v15 = v14;
      [v12 longitude];
      v17 = v16;
      [objc_msgSend(v12 "timestamp")];
      *buf = 134349825;
      *&buf[4] = i;
      *&buf[12] = 2053;
      *&buf[14] = v15;
      *&buf[22] = 2053;
      v174 = v17;
      v175 = 2050;
      v176 = v18;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "CLOR,tripLocation,index,%{public}zu,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f,timestamp,%{public}.1f", buf, 0x2Au);
    }

    v19 = sub_19B87DD40();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4798 != -1)
      {
        dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
      }

      [v12 latitude];
      v21 = v20;
      [v12 longitude];
      v23 = v22;
      [objc_msgSend(v12 "timestamp")];
      LODWORD(v168[0]) = 134349825;
      *(v168 + 4) = i;
      WORD2(v168[1]) = 2053;
      *(&v168[1] + 6) = v21;
      HIWORD(v168[2]) = 2053;
      *v169 = v23;
      *&v169[8] = 2050;
      *&v169[10] = v24;
      v25 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer extractRouteCorners:]", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    v3 = v11;
  }

  memset(v168, 0, sizeof(v168));
  *&v169[16] = 0;
  v170 = 0;
  *v169 = xmmword_19BA89490;
  v171 = 0x3FF0000000000000;
  v172 = v3;
  sub_19B9CA9C0(v168, [v3 count]);
  *buf = 0;
  sub_19B8F518C(v168, buf);
  if ([v172 count] >= 2)
  {
    v26 = 1;
    do
    {
      v27 = [v172 objectAtIndexedSubscript:v26 - 1];
      v28 = [v172 objectAtIndexedSubscript:v26];
      [v27 latitude];
      v30 = v29;
      [v27 longitude];
      v32 = v31;
      [v28 latitude];
      v34 = v33;
      [v28 longitude];
      v36 = sub_19BA0C01C(v169, v30, v32, v34, v35, 0.0);
      if (v36 < 0.0)
      {
        v36 = 0.0;
      }

      *buf = v36 + *(v168[1] - 1);
      sub_19B8F518C(v168, buf);
      ++v26;
    }

    while (v26 < [v172 count]);
  }

  v154 = v3;
  __p = 0;
  v156 = 0;
  v157 = 0;
  if ([v172 count] >= 0x28)
  {
    v37 = [v172 count];
    v38 = v37;
    if (v37 >= 0x15)
    {
      sub_19B9CAA60(&__p, v37 - 40);
      v150 = v38 - 20;
      if (v38 - 20 >= 0x15)
      {
        v39 = 20;
        v40 = 160;
        v41 = 168;
        do
        {
          v153 = 0;
          v42 = 0;
          *buf = v39;
          *&buf[16] = 0;
          v174 = 0.0;
          v151 = 0.0;
          v152 = 0.0;
          *&buf[8] = 0;
          do
          {
            v43 = 0;
            v44 = *&qword_19BA8CE80[v42];
            if (v44 >= 8.0)
            {
              v45 = *&qword_19BA8CE80[v42];
            }

            else
            {
              v45 = 8.0;
            }

            v46 = (v168[0] + v40);
            v47 = 0.0;
            v48 = v39;
            do
            {
              if (v47 >= v45 && v43 > 9)
              {
                break;
              }

              v50 = *v46;
              v51 = *--v46;
              v47 = v47 + v50 - v51;
              ++v43;
              --v48;
            }

            while (v48);
            if ([v172 count] - 1 > v39)
            {
              v52 = 0;
              v53 = 0.0;
              while (v53 < v45 || v52 <= 9)
              {
                v55 = *(v168[0] + 8 * v52 + v41);
                v56 = *(v168[0] + 8 * v52++ + v40);
                v53 = v53 + v55 - v56;
                v57 = v39 + v52;
                if (v39 + v52 >= [v172 count] - 1)
                {
                  goto LABEL_71;
                }
              }

              v57 = v39 + v52;
LABEL_71:
              if (v48 < v39 && v57 > v39)
              {
                v58 = [v172 objectAtIndexedSubscript:v48];
                v59 = [v172 objectAtIndexedSubscript:v39];
                v60 = [v172 objectAtIndexedSubscript:v57];
                v61 = *(v168[0] + v39);
                v62 = v61 - *(v168[0] + v48);
                v63 = *(v168[0] + v57) - v61;
                if (v62 >= 10.0 && v63 >= 10.0)
                {
                  v65 = v60;
                  [v58 latitude];
                  v67 = v66;
                  [v58 longitude];
                  v69 = v68;
                  [v59 latitude];
                  v71 = v70;
                  [v59 longitude];
                  v73 = sub_19BA0C44C(v169, v67, v69, v71, v72);
                  [v59 latitude];
                  v75 = v74;
                  [v59 longitude];
                  v77 = v76;
                  [v65 latitude];
                  v79 = v78;
                  [v65 longitude];
                  v81 = sub_19BA0C44C(v169, v75, v77, v79, v80);
                  v82 = v81 - v73 + floor((v81 - v73) / 360.0) * -360.0;
                  if (v82 > 180.0)
                  {
                    v82 = v82 + -360.0;
                  }

                  v83 = fabs(v82);
                  v84 = dbl_19BA8CE70[v44 < 25.0];
                  if (v44 < 20.0)
                  {
                    v84 = v84 + 10.0;
                  }

                  if (v83 > v84)
                  {
                    ++v153;
                    if (v83 > v152)
                    {
                      v151 = v82;
                      v152 = v83;
                    }
                  }
                }
              }
            }

            ++v42;
          }

          while (v42 != 3);
          *&buf[8] = v153;
          *&buf[16] = v152;
          v174 = v151;
          if (v153 > 1)
          {
            sub_19B9CAB04(&__p, buf);
          }

          ++v39;
          v40 += 8;
          v41 += 8;
        }

        while (v39 != v150);
      }
    }
  }

  v85 = __p;
  v86 = v156;
  memset(buf, 0, sizeof(buf));
  if (__p == v156)
  {
    v89 = 0;
    v88 = 0;
  }

  else
  {
    do
    {
      v87 = v85[3];
      *v161 = *v85;
      *&v161[8] = v87;
      sub_19B9CAC20(buf, v161);
      v85 += 4;
    }

    while (v85 != v86);
    v88 = *buf;
    v89 = *&buf[8];
  }

  v90 = (v89 - v88) >> 4;
  v91 = 126 - 2 * __clz(v90);
  if (v89 == v88)
  {
    v92 = 0;
  }

  else
  {
    v92 = v91;
  }

  sub_19B9CAD3C(v88, v89, v92, 1);
  if (v89 != v88)
  {
    if (!(v90 >> 60))
    {
      sub_19B9CACF4((v89 - v88) >> 4);
    }

    sub_19B8B8A40();
  }

  v93 = 0;
  v94 = 0;
  v95 = 0;
  do
  {
    if ((v95 >> 4) < 2)
    {
      break;
    }

    v96 = 0;
    v97 = 0;
    v98 = (v95 >> 4) - 1;
    v99 = v168[0];
    v100 = 24;
    while (v96 != v98)
    {
      v101 = 16 * v96++;
      v102 = vabdd_f64(v99[*(16 * v96)], v99[*v101]);
      if (v102 < 50.0)
      {
        v93 = (v101 + 16);
        if (fabs(*(v101 + 8)) >= fabs(*(16 * v96 + 8)))
        {
          if (v101 + 32 == v95)
          {
            v97 = 1;
            v95 = v101 + 16;
            break;
          }

          v103 = v100;
          v104 = v100;
          do
          {
            *(v103 - 1) = v103[1];
            v105 = v104[2];
            v104 += 2;
            *v103 = v105;
            v106 = v103 + 3;
            v103 = v104;
          }

          while (v106 != v95);
          v93 = v104 - 1;
        }

        else
        {
          if (v93 == v95)
          {
            v97 = 1;
            v93 = v101;
            v95 = v101;
            break;
          }

          do
          {
            *(v93 - 2) = *v93;
            *(v93 - 1) = v93[1];
            v93 += 2;
          }

          while (v93 != v95);
          v93 -= 2;
        }

        v97 = 1;
        v95 = v93;
      }

      v100 += 16;
      if (v102 < 50.0)
      {
        break;
      }
    }

    if ((v97 & 1) == 0)
    {
      break;
    }
  }

  while (v94++ < 0x1387);
  if (v88)
  {
    operator delete(v88);
  }

  if (v93)
  {
    for (j = 0; j != v93; j += 2)
    {
      v109 = *j;
      v110 = j[1];
      if (v109 < [v154 count])
      {
        v111 = [v154 objectAtIndexedSubscript:v109];
        [objc_msgSend(v111 "timestamp")];
        v113 = v112;
        [v111 latitude];
        v115 = v114;
        [v111 longitude];
        v117 = CLLocationCoordinate2DMake(v115, v116);
        if (qword_1EAFE4798 != -1)
        {
          dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
        }

        v118 = qword_1EAFE47A0;
        if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
        {
          [v111 latitude];
          v120 = v119;
          [v111 longitude];
          *buf = 134350081;
          *&buf[4] = v109;
          *&buf[12] = 2053;
          *&buf[14] = v120;
          *&buf[22] = 2053;
          v174 = v121;
          v175 = 2050;
          v176 = v110;
          v177 = 2050;
          v178 = v113;
          _os_log_impl(&dword_19B873000, v118, OS_LOG_TYPE_DEFAULT, "CLOR,corner,index,%{public}zu,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f,signedAngle,%{public}.2f,timestamp,%{public}.1f", buf, 0x34u);
        }

        v122 = sub_19B87DD40();
        if (*(v122 + 160) > 1 || *(v122 + 164) > 1 || *(v122 + 168) > 1 || *(v122 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4798 != -1)
          {
            dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
          }

          [v111 latitude];
          v124 = v123;
          [v111 longitude];
          *v161 = 134350081;
          *&v161[4] = v109;
          *&v161[12] = 2053;
          *&v161[14] = v124;
          v162 = 2053;
          v163 = v125;
          v164 = 2050;
          v165 = v110;
          v166 = 2050;
          v167 = v113;
          v126 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer extractRouteCorners:]", "CoreLocation: %s\n", v126);
          if (v126 != buf)
          {
            free(v126);
          }
        }

        v127 = v159;
        if (v159 >= v160)
        {
          v129 = __src;
          v130 = v159 - __src;
          v131 = 0xCCCCCCCCCCCCCCCDLL * ((v159 - __src) >> 3);
          v132 = v131 + 1;
          if (v131 + 1 > 0x666666666666666)
          {
            sub_19B8B8A40();
          }

          if (0x999999999999999ALL * ((v160 - __src) >> 3) > v132)
          {
            v132 = 0x999999999999999ALL * ((v160 - __src) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v160 - __src) >> 3) >= 0x333333333333333)
          {
            v132 = 0x666666666666666;
          }

          if (v132)
          {
            sub_19B8B9C30(&__src, v132);
          }

          v133 = 8 * ((v159 - __src) >> 3);
          *v133 = v113;
          *(v133 + 8) = v110;
          *(v133 + 16) = v117;
          *(v133 + 32) = v109;
          v128 = 40 * v131 + 40;
          v134 = (v133 - v130);
          memcpy((v133 - v130), v129, v130);
          v135 = __src;
          __src = v134;
          v159 = v128;
          v160 = 0;
          if (v135)
          {
            operator delete(v135);
          }
        }

        else
        {
          *v159 = v113;
          *(v127 + 1) = v110;
          *(v127 + 1) = v117;
          v128 = (v127 + 40);
          *(v127 + 4) = v109;
        }

        v159 = v128;
      }
    }
  }

  if (qword_1EAFE4798 != -1)
  {
    dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
  }

  v136 = qword_1EAFE47A0;
  if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
  {
    v137 = [v154 count];
    *buf = 134349312;
    *&buf[4] = v137;
    *&buf[12] = 2050;
    *&buf[14] = 0xCCCCCCCCCCCCCCCDLL * ((v159 - __src) >> 3);
    _os_log_impl(&dword_19B873000, v136, OS_LOG_TYPE_DEFAULT, "CLOR,cornerSummary,totalPoints,%{public}zu,cornersDetected,%{public}zu", buf, 0x16u);
  }

  v138 = sub_19B87DD40();
  if (*(v138 + 160) > 1 || *(v138 + 164) > 1 || *(v138 + 168) > 1 || *(v138 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    v139 = [v154 count];
    *v161 = 134349312;
    *&v161[4] = v139;
    *&v161[12] = 2050;
    *&v161[14] = 0xCCCCCCCCCCCCCCCDLL * ((v159 - __src) >> 3);
    v140 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer extractRouteCorners:]", "CoreLocation: %s\n", v140);
    if (v140 != buf)
    {
      free(v140);
    }
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v141 = __src;
  v142 = v159;
  if (__src != v159)
  {
    do
    {
      v143 = objc_alloc(MEMORY[0x1E695DF20]);
      v144 = [MEMORY[0x1E696AD98] numberWithDouble:*v141];
      v145 = [MEMORY[0x1E696AD98] numberWithDouble:v141[1]];
      v146 = [MEMORY[0x1E696AD98] numberWithDouble:v141[2]];
      v147 = [MEMORY[0x1E696AD98] numberWithDouble:v141[3]];
      [v9 addObject:{objc_msgSend(v143, "initWithObjectsAndKeys:", v144, @"timestamp", v145, @"signedAngleDeg", v146, @"latitude", v147, @"longitude", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", *(v141 + 4)), @"locationIndex", 0)}];
      v141 += 5;
    }

    while (v141 != v142);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v168[0])
  {
    v168[1] = v168[0];
    operator delete(v168[0]);
  }

LABEL_167:
  if (__src)
  {
    v159 = __src;
    operator delete(__src);
  }

  v148 = *MEMORY[0x1E69E9840];
  return v9;
}

@end