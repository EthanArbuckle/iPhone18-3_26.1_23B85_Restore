void sub_1000021D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100002DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_100002E90(double **a1)
{
  __src = 0;
  v32 = 0;
  v33 = 0;
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    v21 = *a1;
    v6 = 0.0;
    v5 = 0.0;
  }

  else
  {
    v4 = 0;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v7 = v1[1] * 0.0174532925;
      v8 = __sincos_stret(*v1 * 0.0174532925);
      v9 = __sincos_stret(v7);
      v10 = v9.__cosval * (v8.__cosval * 6378137.0);
      v11 = v9.__sinval * (v8.__cosval * 6378137.0);
      v12 = v8.__sinval * 6378137.0;
      if (v4 >= v33)
      {
        v13 = __src;
        v14 = v4 - __src;
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - __src) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_100003850();
        }

        if (0x5555555555555556 * ((v33 - __src) >> 3) > v16)
        {
          v16 = 0x5555555555555556 * ((v33 - __src) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v33 - __src) >> 3) >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          sub_100004AD8(&__src, v17);
        }

        v18 = (8 * ((v4 - __src) >> 3));
        *v18 = v10;
        v18[1] = v11;
        v18[2] = v12;
        v4 = (24 * v15 + 24);
        v19 = (24 * v15 - v14);
        memcpy(v18 - v14, v13, v14);
        v20 = __src;
        __src = v19;
        v32 = v4;
        v33 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v4 = v10;
        v4[1] = v11;
        v4[2] = v12;
        v4 += 3;
      }

      v32 = v4;
      v5 = v5 + v10;
      v6 = v6 + v11;
      v1 += 2;
    }

    while (v1 != v2);
    v22 = a1;
    v21 = *a1;
    v1 = v22[1];
  }

  v23 = (v1 - v21) >> 4;
  v24 = atan2(v6 / v23, v5 / v23) * 180.0 / 3.14159265;
  v25 = 0.0;
  if (v1 != v21)
  {
    if (v23 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = (v1 - v21) >> 4;
    }

    v27 = v21 + 1;
    v28 = 0.0;
    do
    {
      v29 = *v27 - v24;
      if (v29 <= 180.0)
      {
        if (v29 < -180.0)
        {
          v29 = v29 + 360.0;
        }
      }

      else
      {
        v29 = v29 + -360.0;
      }

      v25 = v25 + *(v27 - 1);
      v28 = v28 + v29;
      v27 += 2;
      --v26;
    }

    while (v26);
  }

  if (__src)
  {
    v32 = __src;
    operator delete(__src);
  }

  return v25 / v23;
}

void sub_100003140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100003798(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100003814(result, a4);
  }

  return result;
}

void sub_1000037F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003814(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100003868(a1, a2);
  }

  sub_100003850();
}

void sub_100003868(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100003940();
}

void sub_1000038B0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10000390C(exception, a1);
}

std::logic_error *sub_10000390C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100003940()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

__n128 sub_100003974(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  n128_u64 = a2[-2].n128_u64;
  n128_f64 = a2[-4].n128_f64;
  v11 = a2[-6].n128_f64;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v87 = a2[-2].n128_f64[0];
        v86 = a2 - 2;
        result.n128_f64[0] = v87;
        if (v87 >= *v12)
        {
          return result;
        }

LABEL_106:
        v177 = *v12;
        v210 = *(v12 + 16);
        v91 = v86[1];
        *v12 = *v86;
        *(v12 + 16) = v91;
        result = v177;
        v92 = v210;
LABEL_107:
        *v86 = result;
        v86[1] = v92;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v88 = (v12 + 32);
      v93 = *(v12 + 32);
      v94 = (v12 + 64);
      v95 = *(v12 + 64);
      if (v93 >= *v12)
      {
        if (v95 < v93)
        {
          v136 = *v88;
          result = *(v12 + 48);
          v137 = *(v12 + 80);
          *v88 = *v94;
          *(v12 + 48) = v137;
          *v94 = v136;
          *(v12 + 80) = result;
          if (*(v12 + 32) < *v12)
          {
            v182 = *v12;
            v216 = *(v12 + 16);
            v138 = *(v12 + 48);
            *v12 = *v88;
            *(v12 + 16) = v138;
            result.n128_u64[1] = v182.n128_u64[1];
            *v88 = v182;
            *(v12 + 48) = v216;
          }
        }
      }

      else if (v95 >= v93)
      {
        v185 = *v12;
        v219 = *(v12 + 16);
        v145 = *(v12 + 48);
        *v12 = *v88;
        *(v12 + 16) = v145;
        *v88 = v185;
        *(v12 + 48) = v219;
        if (v95 < *(v12 + 32))
        {
          v146 = *v88;
          result = *(v12 + 48);
          v147 = *(v12 + 80);
          *v88 = *v94;
          *(v12 + 48) = v147;
          *v94 = v146;
          *(v12 + 80) = result;
        }
      }

      else
      {
        v178 = *v12;
        v211 = *(v12 + 16);
        v96 = *(v12 + 80);
        *v12 = *v94;
        *(v12 + 16) = v96;
        result.n128_u64[1] = v178.n128_u64[1];
        *v94 = v178;
        *(v12 + 80) = v211;
      }

      result.n128_u64[0] = *n128_u64;
      if (*n128_u64 >= v94->n128_f64[0])
      {
        return result;
      }

      result = *v94;
      v220 = *(v12 + 80);
      v148 = a2[-1];
      *v94 = *n128_u64;
      *(v12 + 80) = v148;
      *n128_u64 = result;
      a2[-1] = v220;
      result.n128_u64[0] = v94->n128_u64[0];
      if (v94->n128_f64[0] >= v88->n128_f64[0])
      {
        return result;
      }

      v149 = *v88;
      result = *(v12 + 48);
      v150 = *(v12 + 80);
      *v88 = *v94;
      *(v12 + 48) = v150;
      *v94 = v149;
      *(v12 + 80) = result;
LABEL_179:
      result.n128_u64[0] = *(v12 + 32);
      if (result.n128_f64[0] < *v12)
      {
        v186 = *v12;
        v221 = *(v12 + 16);
        v151 = v88[1];
        *v12 = *v88;
        *(v12 + 16) = v151;
        result = v186;
        *v88 = v186;
        v88[1] = v221;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = sub_100004584(v12, (v12 + 32), (v12 + 64), (v12 + 96), a2 - 2, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v97 = (v12 + 32);
      v99 = v12 == a2 || v97 == a2;
      if (a4)
      {
        if (!v99)
        {
          v100 = 0;
          v101 = v12;
          do
          {
            v102 = v97;
            result.n128_u64[0] = *(v101 + 32);
            if (result.n128_f64[0] < *v101)
            {
              v179 = *(v101 + 40);
              v212 = *(v101 + 56);
              v103 = v100;
              while (1)
              {
                v104 = v12 + v103;
                v105 = *(v12 + v103 + 16);
                *(v104 + 32) = *(v12 + v103);
                *(v104 + 48) = v105;
                if (!v103)
                {
                  break;
                }

                v103 -= 32;
                if (result.n128_f64[0] >= *(v104 - 32))
                {
                  v106 = v12 + v103 + 32;
                  goto LABEL_126;
                }
              }

              v106 = v12;
LABEL_126:
              *v106 = result.n128_u64[0];
              result = v179;
              *(v106 + 24) = v212;
              *(v106 + 8) = v179;
            }

            v97 = v102 + 2;
            v100 += 32;
            v101 = v102;
          }

          while (&v102[2] != a2);
        }
      }

      else if (!v99)
      {
        do
        {
          v139 = v97;
          result.n128_u64[0] = *(a1 + 32);
          if (result.n128_f64[0] < *a1)
          {
            v183 = *(a1 + 40);
            v217 = *(a1 + 56);
            v140 = v97;
            do
            {
              v141 = v140[-1];
              *v140 = v140[-2];
              v140[1] = v141;
              v142 = v140[-4].n128_f64[0];
              v140 -= 2;
            }

            while (result.n128_f64[0] < v142);
            v140->n128_u64[0] = result.n128_u64[0];
            result = v183;
            v140[1].n128_u64[1] = v217;
            *(v140 + 8) = v183;
          }

          v97 += 2;
          a1 = v139;
        }

        while ((v139 + 32) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v107 = (v13 - 2) >> 1;
        v108 = v107;
        do
        {
          v109 = v108;
          if (v107 >= v108)
          {
            v110 = (2 * v108) | 1;
            v111 = v12 + 32 * v110;
            if (2 * v109 + 2 < v13 && *v111 < *(v111 + 32))
            {
              v111 += 32;
              v110 = 2 * v109 + 2;
            }

            v112 = v12 + 32 * v109;
            v113 = *v112;
            if (*v111 >= *v112)
            {
              v213 = *(v112 + 24);
              v180 = *(v112 + 8);
              do
              {
                v114 = v112;
                v112 = v111;
                v115 = *(v111 + 16);
                *v114 = *v111;
                v114[1] = v115;
                if (v107 < v110)
                {
                  break;
                }

                v116 = 2 * v110;
                v110 = (2 * v110) | 1;
                v111 = v12 + 32 * v110;
                v117 = v116 + 2;
                if (v117 < v13 && *v111 < *(v111 + 32))
                {
                  v111 += 32;
                  v110 = v117;
                }
              }

              while (*v111 >= v113);
              *v112 = v113;
              *(v112 + 24) = v213;
              *(v112 + 8) = v180;
            }
          }

          v108 = v109 - 1;
        }

        while (v109);
        do
        {
          v118 = 0;
          v181 = *v12;
          v214 = *(v12 + 16);
          v119 = v12;
          do
          {
            v120 = v119;
            v121 = &v119[2 * v118];
            v119 = v121 + 2;
            v122 = 2 * v118;
            v118 = (2 * v118) | 1;
            v123 = v122 + 2;
            if (v123 < v13)
            {
              v125 = v121[4].n128_f64[0];
              v124 = v121 + 4;
              if (v124[-2].n128_f64[0] < v125)
              {
                v119 = v124;
                v118 = v123;
              }
            }

            v126 = v119[1];
            *v120 = *v119;
            v120[1] = v126;
          }

          while (v118 <= ((v13 - 2) >> 1));
          a2 -= 2;
          if (v119 == a2)
          {
            result = v181;
            *v119 = v181;
            v119[1] = v214;
          }

          else
          {
            v127 = a2[1];
            *v119 = *a2;
            v119[1] = v127;
            result = v181;
            *a2 = v181;
            a2[1] = v214;
            v128 = (&v119[2] - v12) >> 5;
            v129 = v128 < 2;
            v130 = v128 - 2;
            if (!v129)
            {
              v131 = v130 >> 1;
              v132 = (v12 + 32 * v131);
              result.n128_u64[0] = v119->n128_u64[0];
              if (v132->n128_f64[0] < v119->n128_f64[0])
              {
                v157 = v119[1].n128_i64[1];
                v154 = *(v119 + 8);
                do
                {
                  v133 = v119;
                  v119 = v132;
                  v134 = v132[1];
                  *v133 = *v132;
                  v133[1] = v134;
                  if (!v131)
                  {
                    break;
                  }

                  v131 = (v131 - 1) >> 1;
                  v132 = (v12 + 32 * v131);
                }

                while (v132->n128_f64[0] < result.n128_f64[0]);
                v119->n128_u64[0] = result.n128_u64[0];
                result = v154;
                v119[1].n128_u64[1] = v157;
                *(v119 + 8) = v154;
              }
            }
          }

          v129 = v13-- <= 2;
        }

        while (!v129);
      }

      return result;
    }

    v14 = v12 + 32 * (v13 >> 1);
    v15 = v14;
    v16 = *n128_u64;
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v160 = *v14;
          v189 = *(v14 + 16);
          v21 = a2[-1];
          *v14 = *n128_u64;
          *(v14 + 16) = v21;
          *n128_u64 = v160;
          a2[-1] = v189;
          if (*v14 < *v12)
          {
            v161 = *v12;
            v190 = *(v12 + 16);
            v22 = *(v14 + 16);
            *v12 = *v14;
            *(v12 + 16) = v22;
            *v14 = v161;
            *(v14 + 16) = v190;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v158 = *v12;
          v187 = *(v12 + 16);
          v18 = a2[-1];
          *v12 = *n128_u64;
          *(v12 + 16) = v18;
          goto LABEL_26;
        }

        v164 = *v12;
        v193 = *(v12 + 16);
        v25 = *(v14 + 16);
        *v12 = *v14;
        *(v12 + 16) = v25;
        *v14 = v164;
        *(v14 + 16) = v193;
        if (*n128_u64 < *v14)
        {
          v158 = *v14;
          v187 = *(v14 + 16);
          v26 = a2[-1];
          *v14 = *n128_u64;
          *(v14 + 16) = v26;
LABEL_26:
          *n128_u64 = v158;
          a2[-1] = v187;
        }
      }

      v27 = (v12 + 32);
      v28 = (v14 - 32);
      v29 = *(v14 - 32);
      v30 = *n128_f64;
      if (v29 >= *(v12 + 32))
      {
        if (v30 < v29)
        {
          v165 = *v28;
          v194 = *(v14 - 16);
          v34 = a2[-3];
          *v28 = *n128_f64;
          *(v14 - 16) = v34;
          *n128_f64 = v165;
          a2[-3] = v194;
          if (v28->n128_f64[0] < *v27)
          {
            v35 = *v27;
            v195 = *(v12 + 48);
            v36 = *(v14 - 16);
            *v27 = *v28;
            *(v12 + 48) = v36;
            *v28 = v35;
            *(v14 - 16) = v195;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v27;
          v32 = *(v12 + 48);
          v33 = a2[-3];
          *v27 = *n128_f64;
          *(v12 + 48) = v33;
          goto LABEL_38;
        }

        v39 = *v27;
        v197 = *(v12 + 48);
        v40 = *(v14 - 16);
        *v27 = *v28;
        *(v12 + 48) = v40;
        *v28 = v39;
        *(v14 - 16) = v197;
        if (*n128_f64 < v28->n128_f64[0])
        {
          v167 = *v28;
          v198 = *(v14 - 16);
          v41 = a2[-3];
          *v28 = *n128_f64;
          *(v14 - 16) = v41;
          v31 = v167;
          v32 = v198;
LABEL_38:
          *n128_f64 = v31;
          a2[-3] = v32;
        }
      }

      v42 = (v12 + 64);
      v44 = *(v14 + 32);
      v43 = (v14 + 32);
      v45 = v44;
      v46 = *v11;
      if (v44 >= *(v12 + 64))
      {
        if (v46 < v45)
        {
          v168 = *v43;
          v199 = v43[1];
          v50 = a2[-5];
          *v43 = *v11;
          v43[1] = v50;
          *v11 = v168;
          a2[-5] = v199;
          if (v43->n128_f64[0] < *v42)
          {
            v51 = *v42;
            v200 = *(v12 + 80);
            v52 = v43[1];
            *v42 = *v43;
            *(v12 + 80) = v52;
            *v43 = v51;
            v43[1] = v200;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          v47 = *v42;
          v48 = *(v12 + 80);
          v49 = a2[-5];
          *v42 = *v11;
          *(v12 + 80) = v49;
          goto LABEL_47;
        }

        v53 = *v42;
        v201 = *(v12 + 80);
        v54 = v43[1];
        *v42 = *v43;
        *(v12 + 80) = v54;
        *v43 = v53;
        v43[1] = v201;
        if (*v11 < v43->n128_f64[0])
        {
          v169 = *v43;
          v202 = v43[1];
          v55 = a2[-5];
          *v43 = *v11;
          v43[1] = v55;
          v47 = v169;
          v48 = v202;
LABEL_47:
          *v11 = v47;
          a2[-5] = v48;
        }
      }

      v56 = *v15;
      v57 = v43->n128_f64[0];
      if (*v15 >= v28->n128_f64[0])
      {
        if (v57 < v56)
        {
          v171 = *v15;
          v204 = *(v15 + 16);
          v59 = v43[1];
          *v15 = *v43;
          *(v15 + 16) = v59;
          *v43 = v171;
          v43[1] = v204;
          if (*v15 < v28->n128_f64[0])
          {
            v172 = *v28;
            v205 = v28[1];
            v60 = *(v15 + 16);
            *v28 = *v15;
            v28[1] = v60;
            *v15 = v172;
            *(v15 + 16) = v205;
          }
        }
      }

      else
      {
        if (v57 < v56)
        {
          v170 = *v28;
          v203 = v28[1];
          v58 = v43[1];
          *v28 = *v43;
          v28[1] = v58;
          goto LABEL_56;
        }

        v173 = *v28;
        v206 = v28[1];
        v61 = *(v15 + 16);
        *v28 = *v15;
        v28[1] = v61;
        *v15 = v173;
        *(v15 + 16) = v206;
        if (v43->n128_f64[0] < *v15)
        {
          v170 = *v15;
          v203 = *(v15 + 16);
          v62 = v43[1];
          *v15 = *v43;
          *(v15 + 16) = v62;
LABEL_56:
          *v43 = v170;
          v43[1] = v203;
        }
      }

      v174 = *v12;
      v207 = *(v12 + 16);
      v63 = *(v15 + 16);
      *v12 = *v15;
      *(v12 + 16) = v63;
      *v15 = v174;
      *(v15 + 16) = v207;
      goto LABEL_58;
    }

    v19 = *v12;
    if (*v12 >= *v14)
    {
      if (v16 < v19)
      {
        v162 = *v12;
        v191 = *(v12 + 16);
        v23 = a2[-1];
        *v12 = *n128_u64;
        *(v12 + 16) = v23;
        *n128_u64 = v162;
        a2[-1] = v191;
        if (*v12 < *v14)
        {
          v163 = *v14;
          v192 = *(v14 + 16);
          v24 = *(v12 + 16);
          *v14 = *v12;
          *(v14 + 16) = v24;
          *v12 = v163;
          *(v12 + 16) = v192;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v19)
    {
      v166 = *v14;
      v196 = *(v14 + 16);
      v37 = *(v12 + 16);
      *v14 = *v12;
      *(v14 + 16) = v37;
      *v12 = v166;
      *(v12 + 16) = v196;
      if (*n128_u64 >= *v12)
      {
        goto LABEL_58;
      }

      v159 = *v12;
      v188 = *(v12 + 16);
      v38 = a2[-1];
      *v12 = *n128_u64;
      *(v12 + 16) = v38;
    }

    else
    {
      v159 = *v14;
      v188 = *(v14 + 16);
      v20 = a2[-1];
      *v14 = *n128_u64;
      *(v14 + 16) = v20;
    }

    *n128_u64 = v159;
    a2[-1] = v188;
LABEL_58:
    --a3;
    v64 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 32) < v64)
    {
      v65 = 0;
      v155 = *(v12 + 24);
      v152 = *(v12 + 8);
      do
      {
        v66 = *(v12 + v65 + 32);
        v65 += 32;
      }

      while (v66 < v64);
      v67 = v12 + v65;
      v68 = a2;
      if (v65 == 32)
      {
        v68 = a2;
        do
        {
          if (v67 >= v68)
          {
            break;
          }

          v70 = v68[-2].n128_f64[0];
          v68 -= 2;
        }

        while (v70 >= v64);
      }

      else
      {
        do
        {
          v69 = v68[-2].n128_f64[0];
          v68 -= 2;
        }

        while (v69 >= v64);
      }

      v12 += v65;
      if (v67 < v68)
      {
        v71 = v68;
        do
        {
          v175 = *v12;
          v208 = *(v12 + 16);
          v72 = v71[1];
          *v12 = *v71;
          *(v12 + 16) = v72;
          *v71 = v175;
          v71[1] = v208;
          do
          {
            v73 = *(v12 + 32);
            v12 += 32;
          }

          while (v73 < v64);
          do
          {
            v74 = v71[-2].n128_f64[0];
            v71 -= 2;
          }

          while (v74 >= v64);
        }

        while (v12 < v71);
      }

      if (v12 - 32 != a1)
      {
        v75 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v75;
      }

      *(v12 - 32) = v64;
      *(v12 - 8) = v155;
      *(v12 - 24) = v152;
      if (v67 < v68)
      {
        goto LABEL_79;
      }

      v76 = sub_100004710(a1, v12 - 32, v152);
      if (sub_100004710(v12, a2, v77))
      {
        a2 = (v12 - 32);
        if (!v76)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v76)
      {
LABEL_79:
        sub_100003974(a1, v12 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v156 = *(v12 + 24);
      v153 = *(v12 + 8);
      if (v64 >= *n128_u64)
      {
        v79 = v12 + 32;
        do
        {
          v12 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v79 += 32;
        }

        while (v64 >= *v12);
      }

      else
      {
        do
        {
          v78 = *(v12 + 32);
          v12 += 32;
        }

        while (v64 >= v78);
      }

      v80 = a2;
      if (v12 < a2)
      {
        v80 = a2;
        do
        {
          v81 = v80[-2].n128_f64[0];
          v80 -= 2;
        }

        while (v64 < v81);
      }

      while (v12 < v80)
      {
        v176 = *v12;
        v209 = *(v12 + 16);
        v82 = v80[1];
        *v12 = *v80;
        *(v12 + 16) = v82;
        *v80 = v176;
        v80[1] = v209;
        do
        {
          v83 = *(v12 + 32);
          v12 += 32;
        }

        while (v64 >= v83);
        do
        {
          v84 = v80[-2].n128_f64[0];
          v80 -= 2;
        }

        while (v64 < v84);
      }

      if (v12 - 32 != a1)
      {
        v85 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v85;
      }

      a4 = 0;
      *(v12 - 32) = v64;
      result = v153;
      *(v12 - 8) = v156;
      *(v12 - 24) = v153;
    }
  }

  v88 = (v12 + 32);
  result.n128_u64[0] = *(v12 + 32);
  v89 = a2[-2].n128_f64[0];
  v86 = a2 - 2;
  v90 = v89;
  if (result.n128_f64[0] >= *v12)
  {
    if (v90 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v88;
    v215 = *(v12 + 48);
    v135 = v86[1];
    *v88 = *v86;
    *(v12 + 48) = v135;
    *v86 = result;
    v86[1] = v215;
    goto LABEL_179;
  }

  if (v90 < result.n128_f64[0])
  {
    goto LABEL_106;
  }

  v184 = *v12;
  v218 = *(v12 + 16);
  v143 = *(v12 + 48);
  *v12 = *v88;
  *(v12 + 16) = v143;
  result.n128_u64[1] = v184.n128_u64[1];
  *v88 = v184;
  *(v12 + 48) = v218;
  result.n128_u64[0] = v86->n128_u64[0];
  if (v86->n128_f64[0] < *(v12 + 32))
  {
    result = *v88;
    v92 = *(v12 + 48);
    v144 = v86[1];
    *v88 = *v86;
    *(v12 + 48) = v144;
    goto LABEL_107;
  }

  return result;
}

__n128 sub_100004584(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f64[0];
  v7 = a3->n128_f64[0];
  if (a2->n128_f64[0] >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      v10 = *a2;
      result = a2[1];
      v11 = a3[1];
      *a2 = *a3;
      a2[1] = v11;
      *a3 = v10;
      a3[1] = result;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v12 = *a1;
        result = a1[1];
        v13 = a2[1];
        *a1 = *a2;
        a1[1] = v13;
        *a2 = v12;
        a2[1] = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      result = a1[1];
      v9 = a3[1];
      *a1 = *a3;
      a1[1] = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = result;
      goto LABEL_10;
    }

    v14 = *a1;
    result = a1[1];
    v15 = a2[1];
    *a1 = *a2;
    a1[1] = v15;
    *a2 = v14;
    a2[1] = result;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v8 = *a2;
      result = a2[1];
      v16 = a3[1];
      *a2 = *a3;
      a2[1] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[0] < a3->n128_f64[0])
  {
    v17 = *a3;
    result = a3[1];
    v18 = a4[1];
    *a3 = *a4;
    a3[1] = v18;
    *a4 = v17;
    a4[1] = result;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v19 = *a2;
      result = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
      *a3 = v19;
      a3[1] = result;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v21 = *a1;
        result = a1[1];
        v22 = a2[1];
        *a1 = *a2;
        a1[1] = v22;
        *a2 = v21;
        a2[1] = result;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[0];
  if (a5->n128_f64[0] < a4->n128_f64[0])
  {
    v23 = *a4;
    result = a4[1];
    v24 = a5[1];
    *a4 = *a5;
    a4[1] = v24;
    *a5 = v23;
    a5[1] = result;
    result.n128_u64[0] = a4->n128_u64[0];
    if (a4->n128_f64[0] < a3->n128_f64[0])
    {
      v25 = *a3;
      result = a3[1];
      v26 = a4[1];
      *a3 = *a4;
      a3[1] = v26;
      *a4 = v25;
      a4[1] = result;
      result.n128_u64[0] = a3->n128_u64[0];
      if (a3->n128_f64[0] < a2->n128_f64[0])
      {
        v27 = *a2;
        result = a2[1];
        v28 = a3[1];
        *a2 = *a3;
        a2[1] = v28;
        *a3 = v27;
        a3[1] = result;
        result.n128_u64[0] = a2->n128_u64[0];
        if (a2->n128_f64[0] < a1->n128_f64[0])
        {
          v29 = *a1;
          result = a1[1];
          v30 = a2[1];
          *a1 = *a2;
          a1[1] = v30;
          *a2 = v29;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_100004710(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 32);
      v7 = *(a1 + 32);
      v8 = *(a2 - 32);
      v4 = a2 - 32;
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v45 = *a1;
          v44 = *(a1 + 16);
          v46 = *(a1 + 48);
          *a1 = *v6;
          *(a1 + 16) = v46;
          *v6 = v45;
          *(a1 + 48) = v44;
          if (*v4 >= *(a1 + 32))
          {
            return 1;
          }

          v11 = *v6;
          v10 = *(a1 + 48);
          v47 = *(v4 + 16);
          *v6 = *v4;
          *(a1 + 48) = v47;
          goto LABEL_13;
        }

LABEL_12:
        v11 = *a1;
        v10 = *(a1 + 16);
        v12 = *(v4 + 16);
        *a1 = *v4;
        *(a1 + 16) = v12;
LABEL_13:
        *v4 = v11;
        *(v4 + 16) = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v30 = *v6;
      v29 = *(a1 + 48);
      v31 = *(v4 + 16);
      *v6 = *v4;
      *(a1 + 48) = v31;
      *v4 = v30;
      *(v4 + 16) = v29;
LABEL_50:
      if (*(a1 + 32) < *a1)
      {
        v71 = *a1;
        v70 = *(a1 + 16);
        v72 = v6[1];
        *a1 = *v6;
        *(a1 + 16) = v72;
        *v6 = v71;
        v6[1] = v70;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      sub_100004584(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
      return 1;
    }

    v6 = (a1 + 32);
    v21 = *(a1 + 32);
    v22 = (a1 + 64);
    v23 = *(a1 + 64);
    v24 = (a2 - 32);
    v25 = *a1;
    if (v21 >= *a1)
    {
      if (v23 < v21)
      {
        v39 = *v6;
        v38 = *(a1 + 48);
        v40 = *(a1 + 80);
        *v6 = *v22;
        *(a1 + 48) = v40;
        *v22 = v39;
        *(a1 + 80) = v38;
        if (v6->n128_f64[0] < v25)
        {
          v42 = *a1;
          v41 = *(a1 + 16);
          v43 = *(a1 + 48);
          *a1 = *v6;
          *(a1 + 16) = v43;
          *v6 = v42;
          *(a1 + 48) = v41;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v21)
    {
      v61 = *a1;
      v60 = *(a1 + 16);
      v62 = *(a1 + 48);
      *a1 = *v6;
      *(a1 + 16) = v62;
      *v6 = v61;
      *(a1 + 48) = v60;
      if (v23 >= *(a1 + 32))
      {
        goto LABEL_47;
      }

      v27 = *v6;
      v26 = *(a1 + 48);
      v63 = *(a1 + 80);
      *v6 = *v22;
      *(a1 + 48) = v63;
    }

    else
    {
      v27 = *a1;
      v26 = *(a1 + 16);
      v28 = *(a1 + 80);
      *a1 = *v22;
      *(a1 + 16) = v28;
    }

    *v22 = v27;
    *(a1 + 80) = v26;
LABEL_47:
    if (*v24 >= v22->n128_f64[0])
    {
      return 1;
    }

    v65 = *v22;
    v64 = *(a1 + 80);
    v66 = *(a2 - 16);
    *v22 = *v24;
    *(a1 + 80) = v66;
    *v24 = v65;
    *(a2 - 16) = v64;
    if (v22->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v68 = *v6;
    v67 = *(a1 + 48);
    v69 = *(a1 + 80);
    *v6 = *v22;
    *(a1 + 48) = v69;
    *v22 = v68;
    *(a1 + 80) = v67;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 32);
    v4 = a2 - 32;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = (a1 + 64);
  v14 = *(a1 + 64);
  v15 = (a1 + 32);
  v16 = *(a1 + 32);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v33 = *v15;
      v32 = *(a1 + 48);
      v34 = *(a1 + 80);
      *v15 = *v13;
      *(a1 + 48) = v34;
      *v13 = v33;
      *(a1 + 80) = v32;
      if (v15->n128_f64[0] < v17)
      {
        v36 = *a1;
        v35 = *(a1 + 16);
        v37 = *(a1 + 48);
        *a1 = *v15;
        *(a1 + 16) = v37;
        *v15 = v36;
        *(a1 + 48) = v35;
      }
    }
  }

  else
  {
    if (v14 >= v16)
    {
      v49 = *a1;
      v48 = *(a1 + 16);
      v50 = *(a1 + 48);
      *a1 = *v15;
      *(a1 + 16) = v50;
      *v15 = v49;
      *(a1 + 48) = v48;
      if (v14 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v19 = *v15;
      v18 = *(a1 + 48);
      v51 = *(a1 + 80);
      *v15 = *v13;
      *(a1 + 48) = v51;
    }

    else
    {
      v19 = *a1;
      v18 = *(a1 + 16);
      v20 = *(a1 + 80);
      *a1 = *v13;
      *(a1 + 16) = v20;
    }

    *v13 = v19;
    *(a1 + 80) = v18;
  }

LABEL_33:
  v52 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v53 = 0;
  v54 = 0;
  while (1)
  {
    v55 = *v52;
    if (*v52 < v13->n128_f64[0])
    {
      v74 = *(v52 + 8);
      v75 = *(v52 + 24);
      v56 = v53;
      while (1)
      {
        v57 = a1 + v56;
        v58 = *(a1 + v56 + 80);
        *(v57 + 96) = *(a1 + v56 + 64);
        *(v57 + 112) = v58;
        if (v56 == -64)
        {
          break;
        }

        v56 -= 32;
        if (v55 >= *(v57 + 32))
        {
          v59 = a1 + v56 + 96;
          goto LABEL_41;
        }
      }

      v59 = a1;
LABEL_41:
      *v59 = v55;
      *(v59 + 8) = v74;
      *(v59 + 24) = v75;
      if (++v54 == 8)
      {
        return v52 + 32 == a2;
      }
    }

    v13 = v52;
    v53 += 32;
    v52 += 32;
    if (v52 == a2)
    {
      return 1;
    }
  }
}

void sub_100004A90(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100003940();
}

void sub_100004AD8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100003940();
}

uint64_t sub_100004B30(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100004BAC(result, a4);
  }

  return result;
}

void sub_100004B90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100004BAC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_100004A90(a1, a2);
  }

  sub_100003850();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}