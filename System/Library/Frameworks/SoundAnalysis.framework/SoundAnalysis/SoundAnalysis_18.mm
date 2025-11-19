uint64_t sub_1C9912294()
{

  return swift_getWitnessTable();
}

void sub_1C99122C0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0xCu);
}

unint64_t sub_1C99122E0(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1C9849140(v3, v2, va);
}

uint64_t sub_1C9912300()
{
  swift_beginAccess();
  result = *(v0 + 112);
  *(v0 + 112) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1C9912340@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v5 + 16);

  v8 = 0;
  for (i = 32; ; i += 160)
  {
    if (v6 == v8)
    {

      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_1C97E82EC(v5 + i, __src, &unk_1EC3CBA00);
    memcpy(v12, __src, 0x78uLL);
    v10 = sub_1C9912508(v12, a1);
    result = sub_1C97DA1E0(__src, &unk_1EC3CBA00);
    if (v10)
    {
      break;
    }

    ++v8;
  }

  v11 = *(v2 + 112);
  if (v8 < *(v11 + 16))
  {
    sub_1C97E82EC(v11 + i, __src, &unk_1EC3CBA00);
    swift_beginAccess();
    sub_1C99461C0(v8, v12);
    swift_endAccess();
    memcpy(__dst, v12, sizeof(__dst));
    sub_1C9919410(__dst);
    sub_1C97A592C(&v12[15]);
    memcpy(v12, __src, sizeof(v12));
    memcpy(v14, __src, sizeof(v14));
    sub_1C9919410(v14);
    return sub_1C979B054(&v12[15], a2);
  }

LABEL_11:
  __break(1u);
  return result;
}

BOOL sub_1C9912508(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v188, a2, 0x78uLL);
  memcpy(v189, __src, sizeof(v189));
  v4 = memcpy(v190, a2, sizeof(v190));
  v12 = *__dst;
  v13 = *&__dst[8];
  v14 = *&__dst[32];
  switch(*&__dst[104] >> 61)
  {
    case 1:
      sub_1C991A808();
      if (v80 != 1)
      {
        goto LABEL_35;
      }

      v81 = v188[0].i64[0];
      sub_1C97DA1E0(v189, &qword_1EC3CC8B0);
      return v12 == v81;
    case 2:
      sub_1C991A808();
      if (v43 != 2)
      {
        goto LABEL_35;
      }

      v44 = v188[3].i64[0];
      v137 = v188[0];
      v150 = v188[2];
      v111 = v41;
      v124 = v188[1];
      v98 = v42;
      sub_1C97DA1E0(v189, &qword_1EC3CC8B0);
      *v186 = v12;
      *&v186[8] = v13;
      *&v186[16] = v98;
      *&v186[32] = v14;
      *&v186[40] = v111;
      v177 = v137;
      v178 = v124;
      v179 = v150;
      v180.i64[0] = v44;
      return sub_1C99924C4(v186, &v177);
    case 3:
      sub_1C991A808();
      if (v55 == 3)
      {
        v178.i8[0] = v47;
        v179.i8[8] = v53;
        LOBYTE(v163) = v188[1].i8[0];
        LOBYTE(v166) = v188[2].i8[8];
        v56 = sub_1C991A7CC(v45, v46, v47, v48, v49, v50, v51, v52, v96, v103, v109, v116, v122, v129, v135, v142, v148, v155, v188[0].i64[0], v188[0].i64[1], v163, v188[1].i64[1], v188[2].i64[0], v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v12, v13, v178.i64[0], v54, v14, v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0]);
        v64 = sub_1C991A838(v56, v57, v58, v59, v60, v61, v62, v63, v99, v105, v112, v118, v125, v131, v138, v144, v151, v157, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0], *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v186[40], *&v186[48], *&v186[56], *&v186[64], *&v186[72], *&v186[80], *&v186[88], *&v186[96]);
        v72 = sub_1C991A838(v64, v65, v66, v67, v68, v69, v70, v71, v100, v106, v113, v119, v126, v132, v139, v145, v152, v158, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0], *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v186[40], *&v186[48], *&v186[56], *&v186[64], *&v186[72], *&v186[80], *&v186[88], *&v186[96]);
        sub_1C991A7CC(v72, v73, v74, v75, v76, v77, v78, v79, v101, v107, v114, v120, v127, v133, v140, v146, v153, v159, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0]);
        v15 = sub_1C97F2FF8(&v177, &v161);
        goto LABEL_14;
      }

      sub_1C97F5D50(v12, v13, v47);
      goto LABEL_25;
    case 4:
      sub_1C991A808();
      if (v22 != 4)
      {
LABEL_25:

        goto LABEL_35;
      }

      if (v12 != v188[0].i64[0] || v13 != v188[0].i64[1])
      {
        v24 = sub_1C9A93B18();
        v25 = v24;
        v33 = sub_1C991A838(v24, v26, v27, v28, v29, v30, v31, v32, v96, v103, v109, v116, v122, v129, v135, v142, v148, v155, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0], *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v186[40], *&v186[48], *&v186[56], *&v186[64], *&v186[72], *&v186[80], *&v186[88], *&v186[96]);
        sub_1C991A7CC(v33, v34, v35, v36, v37, v38, v39, v40, v97, v104, v110, v117, v123, v130, v136, v143, v149, v156, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0]);
        sub_1C97DA1E0(v189, &qword_1EC3CC8B0);
        return v25;
      }

      v88 = sub_1C991A838(v16, v17, v188[0].i64[0], v188[0].i64[1], v18, v19, v20, v21, v96, v103, v109, v116, v122, v129, v135, v142, v148, v155, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0], *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v186[40], *&v186[48], *&v186[56], *&v186[64], *&v186[72], *&v186[80], *&v186[88], *&v186[96]);
      sub_1C991A7CC(v88, v89, v90, v91, v92, v93, v94, v95, v102, v108, v115, v121, v128, v134, v141, v147, v154, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0]);
      goto LABEL_38;
    case 5:
      if (*&__dst[104] != 0xA000000000000000 || (v82 = vorrq_s8(vorrq_s8(*&__dst[88], *&__dst[56]), vorrq_s8(*&__dst[72], *&__dst[40])), *&__dst[32] | *&vorr_s8(*v82.i8, *&vextq_s8(v82, v82, 8uLL)) | *&__dst[112] | *__dst | *&__dst[8] | *&__dst[24] | *&__dst[16]))
      {
        if (v188[6].i64[1] >> 61 != 5 || v188[7].i64[0])
        {
          goto LABEL_35;
        }

        v86 = v188[6].i64[1] == 0xA000000000000000 && v188[0].i64[0] == 1;
        if (!v86 || *&sub_1C991A748(vorrq_s8(vorrq_s8(*(&v188[2] + 8), *(&v188[4] + 8)), vorrq_s8(*(&v188[3] + 8), *(&v188[5] + 8))), vorrq_s8(*(v188 + 8), *(&v188[1] + 8))))
        {
          goto LABEL_35;
        }

LABEL_38:
        sub_1C97DA1E0(v189, &qword_1EC3CC8B0);
        return 1;
      }

      if (v188[6].i64[1] >> 61 == 5 && v188[6].i64[1] == 0xA000000000000000)
      {
        v83 = sub_1C991A748(vorrq_s8(vorrq_s8(v188[2], v188[4]), vorrq_s8(v188[3], v188[5])), vorrq_s8(v188[0], v188[1]));
        if (!(*&v83 | v84 | v85))
        {
          goto LABEL_38;
        }
      }

LABEL_35:
      sub_1C991A7CC(v4, v5, v6, v7, v8, v9, v10, v11, v96, v103, v109, v116, v122, v129, v135, v142, v148, v155, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0]);
      sub_1C97DA1E0(v189, &qword_1EC3CC8B0);
      return 0;
    default:
      if (v188[6].i64[1] >> 61)
      {
        memcpy(v186, __src, sizeof(v186));
        *&v186[104] &= 0x1FFFFFFFFFFFFFFFuLL;
        v4 = sub_1C97A639C(v186, &v177);
        goto LABEL_35;
      }

      *v186 = *__dst;
      *&v186[8] = *&__dst[8];
      *&v186[16] = *&__dst[16];
      *&v186[40] = *&__dst[40];
      *&v186[56] = *&__dst[56];
      *&v186[72] = *&__dst[72];
      *&v186[88] = *&__dst[88];
      *&v186[32] = *&__dst[32];
      *&v186[104] = *&__dst[104] & 0x1FFFFFFFFFFFFFFFLL;
      *&v186[112] = *&__dst[112];
      v177 = v188[0];
      v178 = v188[1];
      v179 = v188[2];
      v180 = v188[3];
      v181 = v188[4];
      v182 = v188[5];
      v183 = v188[6];
      v184 = v188[7].i64[0];
      sub_1C9919638(v188, &v161);
      sub_1C9919638(__dst, &v161);
      sub_1C9919638(__dst, &v161);
      sub_1C9919638(v188, &v161);
      v15 = sub_1C992C65C(v186, &v177);
LABEL_14:
      v25 = v15;
      sub_1C97DA1E0(v189, &qword_1EC3CC8B0);
      sub_1C9919410(v188);
      sub_1C9919410(__dst);
      return v25;
  }
}

uint64_t sub_1C99129AC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C99129E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001C9AD7160 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7455686365657073 && a2 == 0xEF65636E61726574;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D45686365657073 && a2 == 0xED00006E6F69746FLL;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x76654C6F69647561 && a2 == 0xEA00000000006C65;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69536D617A616873 && a2 == 0xEF65727574616E67;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746544646E756F73 && a2 == 0xEE006E6F69746365;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000012 && 0x80000001C9AD7180 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9A93B18();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C9912C4C(char a1)
{
  result = 0x7455686365657073;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6D45686365657073;
      break;
    case 3:
      result = 0x76654C6F69647561;
      break;
    case 4:
      result = 0x69536D617A616873;
      break;
    case 5:
      result = 0x746544646E756F73;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

void sub_1C9912D58()
{
  sub_1C97AEB94();
  v2 = v1;
  v3 = sub_1C97A2CEC(&qword_1EC3CC868);
  sub_1C97ABF78(v3, &v71);
  v56[16] = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  sub_1C97ABFB4(v6);
  v7 = sub_1C97A2CEC(&qword_1EC3CC870);
  sub_1C97ABF78(v7, v70);
  v56[13] = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  sub_1C97ABFB4(v10);
  v11 = sub_1C97A2CEC(&qword_1EC3CC878);
  sub_1C97ABF78(v11, v69 + 8);
  v56[10] = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AC02C();
  sub_1C97ABFB4(v14);
  v15 = sub_1C97A2CEC(&qword_1EC3CC880);
  sub_1C97ABF78(v15, &v67[8]);
  v56[4] = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  sub_1C97ABFB4(v18);
  v19 = sub_1C97A2CEC(&qword_1EC3CC888);
  sub_1C97ABF78(v19, &v66);
  v56[1] = v20;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AC02C();
  sub_1C97ABFB4(v22);
  v23 = sub_1C97A2CEC(&qword_1EC3CC890);
  sub_1C97ABF78(v23, &v68);
  v56[7] = v24;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v56 - v26;
  v28 = sub_1C97A2CEC(&qword_1EC3CC898);
  sub_1C97AE9C8();
  v56[6] = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v56 - v31;
  sub_1C97A2CEC(&unk_1EC3CC8A0);
  sub_1C97AE9C8();
  v64 = v33;
  v65 = v34;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AC02C();
  v36 = *v0;
  v61 = v0[1];
  v63 = v36;
  v37 = v0[2];
  v60 = v0[3];
  v62 = v37;
  v38 = v0[4];
  v58 = v0[5];
  v57 = v38;
  v39 = v0[6].u64[1];
  v59 = v0[6].i64[0];
  v40 = v0[7].i64[0];
  v42 = v2[3];
  v41 = v2[4];
  v43 = v2;
  v45 = v44;
  sub_1C97A5A8C(v43, v42);
  sub_1C9919728();
  sub_1C9A93DD8();
  switch(v39 >> 61)
  {
    case 1uLL:
      v66.i8[0] = 1;
      sub_1C9919920();
      v40 = v64;
      sub_1C9A93988();
      v66.i64[0] = v63.i64[0];
      sub_1C97A69F8();
      sub_1C991A790();
      sub_1C9A93A18();
      sub_1C97DAA58();
      v54 = v27;
      goto LABEL_12;
    case 2uLL:
      v66.i8[0] = 4;
      sub_1C9919824();
      sub_1C991A658();
      v66 = v63;
      *v67 = v61;
      *&v67[16] = v62;
      v68.i64[0] = v60.i64[0];
      sub_1C97A60C0();
      sub_1C991A790();
      sub_1C991A7B4();
      goto LABEL_11;
    case 3uLL:
      v66.i8[0] = 5;
      sub_1C99197D0();
      v49 = v56[12];
      v50 = v64;
      sub_1C9A93988();
      v67[0] = v61.i8[0];
      v66 = v63;
      *&v67[8] = vextq_s8(v61, v62, 8uLL);
      v67[24] = v62.i8[8];
      sub_1C97A6B48();
      v51 = v56[14];
      sub_1C991A7B4();
      sub_1C97DAA58();
      v52(v49, v51);
      (*(v65 + 8))(v45, v50);
      break;
    case 4uLL:
      v66.i8[0] = 6;
      sub_1C991977C();
      sub_1C991A658();
      v66 = v63;
      sub_1C97A65F8();
      sub_1C991A790();
      sub_1C991A7B4();
      goto LABEL_11;
    case 5uLL:
      if (v39 != 0xA000000000000000 || (v55 = sub_1C991A748(vorrq_s8(vorrq_s8(v57, v62), vorrq_s8(v58, v60)), vorrq_s8(v63, v61)), *&v55 | v40 | v59))
      {
        v66.i8[0] = 3;
        sub_1C9919878();
        sub_1C991A658();
        sub_1C97A5C74();
        sub_1C991A790();
        sub_1C991A7B4();
      }

      else
      {
        v66.i8[0] = 2;
        sub_1C99198CC();
        sub_1C991A658();
        sub_1C97A5B24();
        sub_1C991A790();
        sub_1C991A7B4();
      }

LABEL_11:
      sub_1C97DAA58();
      v54 = v41;
LABEL_12:
      v53(v54, v32);
      (*(v65 + 8))(v45, v40);
      break;
    default:
      v66.i8[0] = 0;
      sub_1C9919974();
      v46 = v45;
      v47 = v64;
      sub_1C9A93988();
      v66 = v63;
      *v67 = v61;
      *&v67[16] = v62;
      v68 = v60;
      v69[0] = v57;
      v69[1] = v58;
      v70[0] = v59;
      v70[1] = v39 & 0x1FFFFFFFFFFFFFFFLL;
      v70[2] = v40;
      sub_1C97A6314();
      sub_1C9A93A18();
      sub_1C97DAA58();
      v48(v32, v28);
      (*(v65 + 8))(v46, v47);
      break;
  }

  sub_1C97AEB5C();
}

void sub_1C99135D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  switch(*(v0 + 104) >> 61)
  {
    case 1:
      v15 = *v0;
      MEMORY[0x1CCA91980](1, v2, v3, v1);
      v7 = v15;
      goto LABEL_18;
    case 2:
      v11 = *(v0 + 48);
      v12 = *(v0 + 40);
      v13 = *(v0 + 16);
      v14 = *v0;
      MEMORY[0x1CCA91980](4);
      MEMORY[0x1CCA919B0](v14);
      sub_1C9A93CF8();
      sub_1C9A93CF8();
      MEMORY[0x1CCA919B0](v13);
      MEMORY[0x1CCA919B0](*(&v13 + 1));
      sub_1C9A93CF8();
      sub_1C9A93CF8();
      MEMORY[0x1CCA919B0](v12);
      if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = v11;
      }

      else
      {
        v6 = 0;
      }

      MEMORY[0x1CCA919B0](v6);
      break;
    case 3:
      MEMORY[0x1CCA91980](5);
      sub_1C97F1884();
      sub_1C991A7FC();
      sub_1C9A92528();
      sub_1C9A92528();

      break;
    case 4:
      MEMORY[0x1CCA91980](6, v2, v3, v1);
      sub_1C991A7FC();

      sub_1C9A92528();
      break;
    case 5:
      v4 = *(v0 + 96);
      v5 = *(v0 + 112);
      v8 = *&sub_1C991A748(vorrq_s8(vorrq_s8(*(v0 + 64), v2), vorrq_s8(*(v0 + 80), v3)), vorrq_s8(*v0, v1)) | v5 | v4;
      if (v9 == 0xA000000000000000 && v8 == 0)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

LABEL_18:
      MEMORY[0x1CCA91980](v7);
      break;
    default:
      MEMORY[0x1CCA91980](0);
      sub_1C992DEB4();
      break;
  }
}

uint64_t sub_1C991389C()
{
  sub_1C9A93CC8();
  sub_1C99135D0();
  return sub_1C9A93D18();
}

void sub_1C99138DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v121 = v25;
  v26 = sub_1C97A2CEC(&qword_1EC3CC7A8);
  sub_1C97ABF78(v26, &a12);
  v120[16] = v27;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  v124 = v29;
  v30 = sub_1C97A2CEC(&qword_1EC3CC7B0);
  sub_1C97ABF78(v30, &a15);
  v120[15] = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AC02C();
  v123 = v33;
  v34 = sub_1C97A2CEC(&qword_1EC3CC7B8);
  sub_1C97ABF78(v34, &a14);
  v120[12] = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  v120[18] = v37;
  v38 = sub_1C97A2CEC(&qword_1EC3CC7C0);
  sub_1C97ABF78(v38, &v137);
  v120[10] = v39;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97AC02C();
  sub_1C97ABFB4(v41);
  v42 = sub_1C97A2CEC(&qword_1EC3CC7C8);
  sub_1C97ABF78(v42, &a10);
  v120[8] = v43;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C97AC02C();
  v122 = v45;
  v46 = sub_1C97A2CEC(&qword_1EC3CC7D0);
  sub_1C97ABF78(v46, &v136);
  v120[5] = v47;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = v120 - v49;
  v51 = sub_1C97A2CEC(&qword_1EC3CC7D8);
  sub_1C97AE9C8();
  v120[4] = v52;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  v55 = v120 - v54;
  v56 = sub_1C97A2CEC(&qword_1EC3CC7E0);
  sub_1C97AE9C8();
  v58 = v57;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v59);
  v61 = v120 - v60;
  v62 = v24[3];
  v125 = v24;
  sub_1C97A5A8C(v24, v62);
  sub_1C9919728();
  v63 = a10;
  sub_1C9A93DB8();
  if (v63)
  {
    goto LABEL_10;
  }

  v120[2] = v55;
  v120[1] = v51;
  v120[3] = v50;
  v64 = v122;
  a10 = v58;
  v65 = sub_1C9A93958();
  sub_1C98EE524(v65, 0);
  if (v67 == v68 >> 1)
  {
    v69 = a10;
LABEL_9:
    v77 = sub_1C9A93648();
    swift_allocError();
    v79 = v78;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v79 = &type metadata for SNSystemAudioAnalyzerRemote.Request;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v77 - 8) + 104))(v79, *MEMORY[0x1E69E6AF8], v77);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v61, v56);
LABEL_10:
    v80 = v125;
LABEL_11:
    sub_1C97A592C(v80);
    sub_1C97AEB5C();
    return;
  }

  v120[0] = 0;
  if (v67 < (v68 >> 1))
  {
    v70 = v61;
    v71 = *(v66 + v67);
    sub_1C98EE520(v67 + 1);
    v73 = v72;
    v75 = v74;
    swift_unknownObjectRelease();
    if (v73 == v75 >> 1)
    {
      v76 = v121;
      switch(v71)
      {
        case 1:
          LOBYTE(v126) = 1;
          sub_1C9919920();
          sub_1C991A634();
          sub_1C97A6A4C();
          sub_1C991A610();
          sub_1C991A784();
          swift_unknownObjectRelease();
          v108 = sub_1C991A5DC();
          v109(v108);
          v110 = sub_1C991A558();
          v111(v110);
          v98 = v126;
          v106 = 0x2000000000000000;
          break;
        case 2:
          LOBYTE(v126) = 2;
          sub_1C99198CC();
          sub_1C991A6A0();
          sub_1C97A5B78();
          v81 = v120[9];
          sub_1C9A938F8();
          sub_1C991A784();
          swift_unknownObjectRelease();
          sub_1C97DAA58();
          v86(v64, v81);
          v87 = sub_1C991A558();
          v88(v87);
          *&v102 = sub_1C991A764();
          v104 = 0uLL;
          v106 = 0xA000000000000000;
          goto LABEL_18;
        case 3:
          LOBYTE(v126) = 3;
          sub_1C9919878();
          sub_1C991A634();
          sub_1C97A5CC8();
          sub_1C9A938F8();
          sub_1C991A784();
          swift_unknownObjectRelease();
          v89 = sub_1C991A5DC();
          v90(v89);
          v91 = sub_1C991A558();
          v92(v91);
          *&v102 = sub_1C991A764();
          v106 = 0xA000000000000000;
          v104 = 0uLL;
          v98 = 1;
LABEL_18:
          v107 = 0uLL;
          break;
        case 4:
          LOBYTE(v126) = 4;
          sub_1C9919824();
          sub_1C991A634();
          sub_1C97A6114();
          sub_1C991A610();
          sub_1C991A784();
          swift_unknownObjectRelease();
          v82 = sub_1C991A5DC();
          v83(v82);
          v84 = sub_1C991A558();
          v85(v84);
          v98 = v126;
          v97 = v127;
          v99 = v128;
          v100 = v129;
          v101 = v130;
          v106 = 0x4000000000000000;
          v102 = v131;
          break;
        case 5:
          LOBYTE(v126) = 5;
          sub_1C99197D0();
          sub_1C991A634();
          sub_1C97A6C28();
          sub_1C991A610();
          sub_1C991A784();
          swift_unknownObjectRelease();
          v112 = sub_1C991A5DC();
          v113(v112);
          v114 = sub_1C991A558();
          v115(v114);
          v98 = v126;
          v97 = v127;
          v99 = v128;
          v100 = v129;
          v101 = v130;
          v105 = v131;
          *&v102 = v131;
          v106 = 0x6000000000000000;
          break;
        case 6:
          LOBYTE(v126) = 6;
          sub_1C991977C();
          sub_1C991A6A0();
          sub_1C97A664C();
          sub_1C991A610();
          sub_1C991A784();
          swift_unknownObjectRelease();
          v116 = sub_1C991A5DC();
          v117(v116);
          v118 = sub_1C991A558();
          v119(v118);
          v98 = v126;
          v97 = v127;
          v106 = 0x8000000000000000;
          break;
        default:
          LOBYTE(v126) = 0;
          sub_1C9919974();
          sub_1C991A634();
          sub_1C97A63F8();
          sub_1C991A610();
          sub_1C991A784();
          swift_unknownObjectRelease();
          v93 = sub_1C991A5DC();
          v94(v93);
          v95 = sub_1C991A558();
          v96(v95);
          v98 = v126;
          v97 = v127;
          v99 = v128;
          v100 = v129;
          v101 = v130;
          v102 = v131;
          v103 = v132;
          v104 = v133;
          v105 = v136;
          v106 = v135 & 1;
          v107 = v134;
          break;
      }

      v80 = v125;
      *v76 = v98;
      *(v76 + 8) = v97;
      *(v76 + 16) = v99;
      *(v76 + 24) = v100;
      *(v76 + 32) = v101;
      *(v76 + 40) = v102;
      *(v76 + 56) = v103;
      *(v76 + 72) = v104;
      *(v76 + 88) = v107;
      *(v76 + 104) = v106;
      *(v76 + 112) = v105;
      goto LABEL_11;
    }

    v69 = a10;
    v61 = v70;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C99143B0(uint64_t a1)
{
  v2 = sub_1C9919878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99143EC(uint64_t a1)
{
  v2 = sub_1C9919878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9914430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99129E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9914458(uint64_t a1)
{
  v2 = sub_1C9919728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9914494(uint64_t a1)
{
  v2 = sub_1C9919728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99144D0(uint64_t a1)
{
  v2 = sub_1C991977C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C991450C(uint64_t a1)
{
  v2 = sub_1C991977C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9914548(uint64_t a1)
{
  v2 = sub_1C9919824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9914584(uint64_t a1)
{
  v2 = sub_1C9919824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99145C0(uint64_t a1)
{
  v2 = sub_1C9919974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99145FC(uint64_t a1)
{
  v2 = sub_1C9919974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9914638(uint64_t a1)
{
  v2 = sub_1C99197D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9914674(uint64_t a1)
{
  v2 = sub_1C99197D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99146B0(uint64_t a1)
{
  v2 = sub_1C99198CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99146EC(uint64_t a1)
{
  v2 = sub_1C99198CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9914728(uint64_t a1)
{
  v2 = sub_1C9919920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9914764(uint64_t a1)
{
  v2 = sub_1C9919920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99147A8()
{
  sub_1C9A93CC8();
  sub_1C99135D0();
  return sub_1C9A93D18();
}

uint64_t sub_1C9914818(uint64_t a1, uint64_t a2)
{
  v3[95] = v2;
  v3[94] = a2;
  v3[93] = a1;
  v3[96] = *v2;
  return sub_1C991A5D4(sub_1C9914864, 0);
}

uint64_t sub_1C9914864()
{
  sub_1C97DA934();
  sub_1C9914EBC();
  v1 = v0[95];
  memcpy(v0 + 2, v0 + 17, 0x78uLL);
  memcpy(v0 + 32, v0 + 17, 0x78uLL);
  v2 = OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_audioConfiguration;
  memcpy(v0 + 47, (v1 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_audioConfiguration), 0x41uLL);
  memcpy(v0 + 56, (v1 + v2), 0x41uLL);
  sub_1C97A6264((v0 + 47), (v0 + 65));
  v3 = swift_task_alloc();
  v0[97] = v3;
  *v3 = v0;
  v3[1] = sub_1C9914A04;

  return sub_1C99153B0();
}

uint64_t sub_1C9914A04()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  v5[98] = v0;

  if (v0)
  {
    memcpy(v5 + 74, v5 + 56, 0x41uLL);
    sub_1C97E8084((v5 + 74));
    v9 = sub_1C9914E04;
  }

  else
  {
    v5[99] = v3;
    memcpy(v5 + 83, v5 + 56, 0x41uLL);
    sub_1C97E8084((v5 + 83));
    v9 = sub_1C9914B40;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C9914B40()
{
  v1 = v0[95];
  v2 = v0[93];
  v0[92] = v0[99];
  sub_1C97F07FC();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C97F07FC();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_1C97DAA28();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  sub_1C97F07FC();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v2;
  swift_unknownObjectRetain_n();

  sub_1C97A2CEC(&unk_1EC3D0A80);
  sub_1C97DA9B0();
  sub_1C97AE67C(v8, v9);
  v0[100] = sub_1C9A91FB8();

  v10 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_state);
  v0[101] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C9914D28, v10, 0);
}

uint64_t sub_1C9914D28()
{
  sub_1C97AA884();
  sub_1C9919554((v0 + 16), *(v0 + 800));

  v1 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C9914D98()
{
  sub_1C97AA884();

  sub_1C9919410(v0 + 16);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9914E04()
{
  sub_1C97DA934();
  sub_1C9919410(v0 + 16);
  v1 = *(v0 + 784);
  if ([*(v0 + 752) respondsToSelector_])
  {
    v2 = sub_1C9A913B8();
    v3 = sub_1C991A7FC();
    [v3 v4];
  }

  sub_1C97DA91C();

  return v5();
}

void sub_1C9914EBC()
{
  sub_1C97AEB94();
  v1 = v0;
  type metadata accessor for _SNClassifySoundRequest();
  sub_1C991A758();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    memcpy(__dst, (v2 + OBJC_IVAR____SNClassifySoundRequest_impl), 0x78uLL);
    v3 = *&__dst[6];
    v4 = *&__dst[7];
    v5 = BYTE8(__dst[6]) & 1;
    v33 = __dst[2];
    v35 = __dst[0];
    v29 = __dst[3];
    v30 = __dst[1];
    v31 = __dst[4];
    v28 = __dst[5];
    sub_1C97A639C(__dst, __src);
    v43[0] = v35;
    v43[1] = v30;
    v43[2] = v33;
    v43[3] = v29;
    v43[4] = v31;
    v43[5] = v28;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    memset(v43, 0, 96);
    v5 = 0x1FFFFFFFELL;
  }

  *&v43[6] = v3;
  *(&v43[6] + 1) = v5;
  *&v43[7] = v4;
  objc_opt_self();
  sub_1C991A758();
  if (swift_dynamicCastObjCClass())
  {
    sub_1C991A7E4();
    v3 = sub_1C992C874();
    sub_1C97DA1E0(v43, &unk_1EC3CC6E0);
    swift_unknownObjectRelease();
    memcpy(__src, &v3[OBJC_IVAR____SNClassifySoundRequest_impl], 0x78uLL);
    sub_1C97A639C(__src, v40);

    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    __dst[4] = __src[4];
    __dst[5] = __src[5];
    *&__dst[6] = *&__src[6];
    *(&__dst[6] + 1) = BYTE8(__src[6]) & 1;
    *&__dst[7] = *&__src[7];
  }

  else
  {
    memcpy(__dst, v43, 0x78uLL);
  }

  type metadata accessor for SNDetectSpeechUtteranceRequest();
  sub_1C991A758();
  if (swift_dynamicCastClass())
  {
    sub_1C991A7E4();
    sub_1C97DA1E0(__dst, &unk_1EC3CC6E0);
    v6 = *&v3[OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl];
    swift_unknownObjectRelease();
    *&__src[0] = v6;
    *(&__src[6] + 1) = 0x2000000000000000;
  }

  else
  {
    memcpy(__src, __dst, 0x78uLL);
  }

  type metadata accessor for SNEstimateSpeechEmotionRequest();
  sub_1C991A758();
  v7 = "SharedAOPDebugStreamProvider";
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_1C97DA1E0(__src, &unk_1EC3CC6E0);
    swift_unknownObjectRelease();
    memset(v40, 0, 104);
    *&v40[13] = xmmword_1C9AB37F0;
  }

  else
  {
    memcpy(v40, __src, 0x78uLL);
  }

  type metadata accessor for SNMeasureLKFSRequest();
  sub_1C991A758();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_1C97DA1E0(v40, &unk_1EC3CC6E0);
    swift_unknownObjectRelease();
    v39[0] = 1;
    memset(&v39[1], 0, 96);
    *&v39[13] = xmmword_1C9AB37F0;
  }

  else
  {
    memcpy(v39, v40, sizeof(v39));
  }

  type metadata accessor for SNGenerateShazamSignatureRequest();
  sub_1C991A758();
  if (swift_dynamicCastClass())
  {
    sub_1C991A7E4();
    sub_1C97DA1E0(v39, &unk_1EC3CC6E0);
    v7 = *&aImplsharedaopd[OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + 16];
    v34 = *&aSharedaopdebug_2[OBJC_IVAR___SNGenerateShazamSignatureRequest_impl];
    v36 = *&aImplsharedaopd[OBJC_IVAR___SNGenerateShazamSignatureRequest_impl];
    v32 = *&aSharedaopdebug_2[OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + 16];
    swift_unknownObjectRelease();
    *v38 = v34;
    *&v38[16] = v32;
    *&v38[32] = v36;
    *&v38[48] = v7;
    *&v38[104] = 0x4000000000000000;
  }

  else
  {
    memcpy(v38, v39, sizeof(v38));
  }

  type metadata accessor for SNDetectSoundRequest();
  sub_1C991A758();
  if (swift_dynamicCastClass())
  {
    sub_1C991A7E4();
    sub_1C97DA1E0(v38, &unk_1EC3CC6E0);
    v8 = &v7[OBJC_IVAR___SNDetectSoundRequest_impl];
    v7 = *&v7[OBJC_IVAR___SNDetectSoundRequest_impl];
    v9 = *(v8 + 1);
    v11 = *(v8 + 3);
    v10 = *(v8 + 4);
    v12 = *(v8 + 40);
    v13 = *(v8 + 16);
    v14 = sub_1C98138D4();
    sub_1C97F5D50(v14, v15, v16);

    swift_unknownObjectRelease();
    v37[0] = v7;
    v37[1] = v9;
    v37[2] = v13;
    v37[3] = v11;
    v37[4] = v10;
    v37[5] = v12;
    v37[13] = 0x6000000000000000;
  }

  else
  {
    memcpy(v37, v38, sizeof(v37));
  }

  type metadata accessor for SNEstimateDirectionOfArrivalRequest();
  sub_1C991A758();
  if (swift_dynamicCastClass())
  {
    sub_1C991A7E4();
    sub_1C97DA1E0(v37, &unk_1EC3CC6E0);
    v18 = *&v7[OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl];
    v17 = *&v7[OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl + 8];

    swift_unknownObjectRelease();
    *&v25 = v17;
    v26 = 0x8000000000000000;
LABEL_27:
    *v1 = v18;
    *(v1 + 8) = v25;
    *(v1 + 24) = v24;
    *(v1 + 40) = v23;
    *(v1 + 56) = v22;
    *(v1 + 72) = v21;
    *(v1 + 88) = v20;
    *(v1 + 104) = v26;
    *(v1 + 112) = v19;
    goto LABEL_28;
  }

  v26 = v37[13];
  if (v37[13] >> 1 != 0xFFFFFFFFLL)
  {
    v19 = v37[14];
    v21 = *&v37[9];
    v20 = *&v37[11];
    v23 = *&v37[5];
    v22 = *&v37[7];
    v25 = *&v37[1];
    v24 = *&v37[3];
    v18 = v37[0];
    goto LABEL_27;
  }

  sub_1C9919440();
  swift_allocError();
  *v27 = 1;
  swift_willThrow();
LABEL_28:
  sub_1C97AEB5C();
}

uint64_t sub_1C99153B0()
{
  sub_1C97AA95C();
  v2 = v1;
  v4 = v3;
  v0[339] = v5;
  v0[338] = v1;
  v6 = sub_1C97A2CEC(&unk_1EC3CAE50);
  v0[340] = v6;
  sub_1C97BE2AC(v6);
  v0[341] = v7;
  v0[342] = sub_1C97DAD48();
  v8 = sub_1C97A2CEC(&qword_1EC3C7D88);
  v0[343] = v8;
  sub_1C97BE2AC(v8);
  v0[344] = v9;
  v0[345] = sub_1C97DAD48();
  v10 = sub_1C97A2CEC(&qword_1EC3CC6F0);
  v0[346] = v10;
  sub_1C97BE2AC(v10);
  v0[347] = v11;
  v0[348] = sub_1C97DAD48();
  v12 = sub_1C97A2CEC(&qword_1EC3CC6F8);
  v0[349] = v12;
  sub_1C97BE2AC(v12);
  v0[350] = v13;
  v0[351] = sub_1C97DAD48();
  v14 = sub_1C97A2CEC(&qword_1EC3CC700);
  v0[352] = v14;
  sub_1C97BE2AC(v14);
  v0[353] = v15;
  v0[354] = sub_1C97DAD48();
  v16 = sub_1C97A2CEC(&qword_1EC3CC708);
  v0[355] = v16;
  sub_1C97BE2AC(v16);
  v0[356] = v17;
  v0[357] = sub_1C97DAD48();
  v18 = sub_1C97A2CEC(&unk_1EC3CC710);
  v0[358] = v18;
  sub_1C97BE2AC(v18);
  v0[359] = v19;
  v0[360] = sub_1C97DAD48();
  v20 = type metadata accessor for RemoteRequest();
  v0[361] = v20;
  sub_1C97DACE4(v20);
  v0[362] = swift_task_alloc();
  v0[363] = swift_task_alloc();
  v0[364] = swift_task_alloc();
  v0[365] = swift_task_alloc();
  v0[366] = swift_task_alloc();
  v0[367] = swift_task_alloc();
  v0[368] = swift_task_alloc();
  memcpy(v0 + 82, v4, 0x78uLL);
  memcpy(v0 + 223, v2, 0x41uLL);
  v21 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1C9915718()
{
  v1 = v0[41].i64[0];
  v2 = v0[41].i64[1];
  v3 = v0[42].i64[0];
  v4 = v0[42].i64[1];
  v5 = v0[43].i64[0];
  v6 = v0[43].i64[1];
  v7 = v0[47].i64[0];
  v8 = v0[47].u64[1];
  v9 = v0[48].i64[0];
  switch(v8 >> 61)
  {
    case 1uLL:
      v22 = v0[183].i64[1];
      sub_1C991A814();
      memcpy(&v0[102].u64[1], v23, 0x41uLL);
      v0[102].i64[0] = v1;
      sub_1C97A6264(&v0[111].i64[1], &v0[147].i64[1]);
      sub_1C991A820();
      memcpy(v22, &v0[102], 0x49uLL);
      swift_storeEnumTagMultiPayload();
      sub_1C9801940(v0[102].i64, v0[97].i64);
      v24 = sub_1C991A6C0();
      v0[187].i64[0] = v24;
      *v24 = v0;
      v24[1] = sub_1C99161C8;
      v11 = v0[183].i64[1];
      break;
    case 2uLL:
      v15 = v0[182].i64[0];
      sub_1C991A814();
      v38.i64[0] = v16;
      memcpy(&v0[36].u64[1], v17, 0x41uLL);
      v0[33].i64[0] = v1;
      v0[33].i64[1] = v2;
      v0[34].i64[0] = v3;
      v0[34].i64[1] = v4;
      v0[35].i64[0] = v5;
      v0[35].i64[1] = v6;
      v0[36].i64[0] = v38.i64[0];
      sub_1C97A6264(&v0[111].i64[1], v0[143].i64);
      sub_1C991A820();
      memcpy(v15, &v0[33], 0x79uLL);
      swift_storeEnumTagMultiPayload();
      sub_1C9919670(v0[33].i64, v0[25].i64);
      v18 = sub_1C991A6C0();
      v0[190].i64[1] = v18;
      *v18 = v0;
      v18[1] = sub_1C9916B2C;
      v11 = v0[182].i64[0];
      break;
    case 3uLL:
      v19 = v0[181].i64[1];
      sub_1C991A814();
      memcpy(&v0[107].u32[1] + 3, v20, 0x41uLL);
      v0[71].i64[0] = v1;
      v0[71].i64[1] = v2;
      v0[72].i8[0] = v3;
      v0[72].i64[1] = v4;
      v0[73].i64[0] = v5;
      v0[73].i8[8] = v6;
      memcpy(&v0[73].u64[1] + 1, &v0[107], 0x48uLL);
      sub_1C9919638(v0[41].i64, &v0[63].i64[1]);
      sub_1C97A6264(&v0[111].i64[1], v0[152].i64);
      sub_1C991A820();
      memcpy(v19, &v0[71], 0x71uLL);
      swift_storeEnumTagMultiPayload();
      sub_1C97F9898(v0[71].i64, &v0[78].i64[1]);
      v21 = sub_1C991A6C0();
      v0[192].i64[0] = v21;
      *v21 = v0;
      v21[1] = sub_1C9916EA4;
      v11 = v0[181].i64[1];
      break;
    case 4uLL:
      v12 = v0[181].i64[0];
      sub_1C991A814();
      memcpy(&v0[87], v13, 0x41uLL);
      v0[86].i64[0] = v1;
      v0[86].i64[1] = v2;
      sub_1C9919638(v0[41].i64, &v0[48].i64[1]);
      sub_1C97A6264(&v0[111].i64[1], v0[161].i64);
      sub_1C991A820();
      memcpy(v12, &v0[86], 0x51uLL);
      swift_storeEnumTagMultiPayload();
      sub_1C98AD578(v0[86].i64, &v0[91].i64[1]);
      v14 = sub_1C991A6C0();
      v0[193].i64[1] = v14;
      *v14 = v0;
      v14[1] = sub_1C991721C;
      v11 = v0[181].i64[0];
      break;
    case 5uLL:
      v38.i64[0] = v0[180].i64[1];
      v25 = v0[169].i64[1];
      v26 = v0[169].i64[0];
      if (v8 != 0xA000000000000000 || (v27 = vorrq_s8(v0[46], v0[45]), v3 | *&vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)) | v4 | v5 | v6 | v7 | v9 | v1 | v2 | v0[44].i64[1] | v0[44].i64[0]))
      {
        v30 = v0[182].i64[1];
        memcpy(&v0[116], v26, 0x41uLL);
        sub_1C97A6264(&v0[111].i64[1], &v0[120].i64[1]);
        sub_1C97A5A8C(v25, v25[3]);
        memcpy(v30, &v0[116], 0x41uLL);
        swift_storeEnumTagMultiPayload();
        sub_1C986EA44(v0[116].i64, v0[125].i64);
        v31 = sub_1C991A6C0();
        v0[184].i64[1] = v31;
        *v31 = v0;
        v31[1] = sub_1C9915D4C;
        v11 = v0[182].i64[1];
      }

      else
      {
        v28 = v0[183].i64[0];
        memcpy(&v0[129].u64[1], v26, 0x41uLL);
        sub_1C97A6264(&v0[111].i64[1], v0[134].i64);
        sub_1C97A5A8C(v25, v25[3]);
        memcpy(v28, &v0[129].u64[1], 0x41uLL);
        swift_storeEnumTagMultiPayload();
        sub_1C986F240(&v0[129].i64[1], &v0[138].i64[1]);
        v29 = sub_1C991A6C0();
        v0[188].i64[1] = v29;
        *v29 = v0;
        v29[1] = sub_1C9916540;
        v11 = v0[183].i64[0];
      }

      break;
    default:
      __dst = v0[184].i64[0];
      v35 = v8 & 0x1FFFFFFFFFFFFFFFLL;
      v36 = v0[169].i64[1];
      v38 = v0[44];
      v33 = v0[45];
      v34 = v0[46];
      memcpy(&v0[20].u64[1], v0[169].i64[0], 0x41uLL);
      v0[13].i64[0] = v1;
      v0[13].i64[1] = v2;
      v0[14].i64[0] = v3;
      v0[14].i64[1] = v4;
      v0[15].i64[0] = v5;
      v0[15].i64[1] = v6;
      v0[16] = v38;
      v0[17] = v33;
      v0[18] = v34;
      v0[19].i64[0] = v7;
      v0[19].i64[1] = v35;
      v0[20].i64[0] = v9;
      sub_1C9919638(v0[41].i64, v0[56].i64);
      sub_1C97A6264(&v0[111].i64[1], &v0[156].i64[1]);
      sub_1C97A5A8C(v36, v36[3]);
      memcpy(__dst, &v0[13], 0xB9uLL);
      swift_storeEnumTagMultiPayload();
      sub_1C99196CC(v0[13].i64, v0[1].i64);
      v10 = sub_1C991A6C0();
      v0[185].i64[1] = v10;
      *v10 = v0;
      v10[1] = sub_1C9915E50;
      v11 = v0[184].i64[0];
      break;
  }

  return (v38.i64[0])(v11);
}

uint64_t sub_1C9915D4C()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 2960) = v0;

  if (!v0)
  {
    *(v4 + 3040) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C9915E50()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 2976) = v0;

  if (!v0)
  {
    *(v4 + 2984) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C99160EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2944));
  sub_1C986EB9C(v16 + 208);
  sub_1C991A52C();
  sub_1C991A56C();

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C99161C8()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 3000) = v0;

  if (!v0)
  {
    *(v4 + 3008) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C9916464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2936));
  sub_1C986EB48(v16 + 1632);
  sub_1C991A52C();
  sub_1C991A56C();

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C9916540()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 3024) = v0;

  if (!v0)
  {
    *(v4 + 3032) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C99167DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2928));
  sub_1C986EAF4(v16 + 2072);
  sub_1C991A52C();
  sub_1C991A56C();

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C9916A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2920));
  sub_1C986EAA0(v16 + 1856);
  sub_1C991A52C();
  sub_1C991A56C();

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C9916B2C()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 3056) = v0;

  if (!v0)
  {
    *(v4 + 3064) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C9916DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2912));
  sub_1C986E9F0(v16 + 528);
  sub_1C991A52C();
  sub_1C991A56C();

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C9916EA4()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 3080) = v0;

  if (!v0)
  {
    *(v4 + 3088) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C9917140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2904));
  sub_1C97F9A64(v16 + 1136);
  sub_1C991A52C();
  sub_1C991A56C();

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C991721C()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 3104) = v0;

  if (!v0)
  {
    *(v4 + 3112) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C99174B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2896));
  sub_1C986E99C(v16 + 1376);
  sub_1C991A52C();
  sub_1C991A56C();

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_1C9917594(void **a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C9917AA8(a3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v4)
    {
      if (qword_1EC3C5520 != -1)
      {
        swift_once();
      }

      v7 = sub_1C9A91B58();
      sub_1C97BFF6C(v7, qword_1EC3D3108);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v8 = v4;
      v9 = sub_1C9A91B38();
      v10 = sub_1C9A92FC8();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = v44;
        *v11 = 136315650;
        v12 = [v6 description];
        v13 = sub_1C9A924A8();
        v15 = v14;

        v16 = sub_1C9849140(v13, v15, &v45);

        *(v11 + 4) = v16;
        *(v11 + 12) = 2080;
        v17 = [a3 description];
        v18 = sub_1C9A924A8();
        v20 = v19;

        v21 = sub_1C9849140(v18, v20, &v45);

        *(v11 + 14) = v21;
        *(v11 + 22) = 2080;
        v22 = sub_1C9A913B8();
        v23 = [v22 description];

        v24 = sub_1C9A924A8();
        v26 = v25;

        v27 = sub_1C9849140(v24, v26, &v45);

        *(v11 + 24) = v27;
        _os_log_impl(&dword_1C9788000, v9, v10, "Observer %s for request %s failed with error %s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1CCA93280](v44, -1, -1);
        MEMORY[0x1CCA93280](v11, -1, -1);
      }

      if ([v6 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        v28 = sub_1C9A913B8();
        [v6 request:a3 didFailWithError:v28];
        swift_unknownObjectRelease_n();

        return;
      }
    }

    else
    {
      if (qword_1EC3C5520 != -1)
      {
        swift_once();
      }

      v29 = sub_1C9A91B58();
      sub_1C97BFF6C(v29, qword_1EC3D3108);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v30 = sub_1C9A91B38();
      v31 = sub_1C9A92FC8();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v45 = v33;
        *v32 = 136315394;
        v34 = [v6 description];
        v35 = sub_1C9A924A8();
        v37 = v36;

        v38 = sub_1C9849140(v35, v37, &v45);

        *(v32 + 4) = v38;
        *(v32 + 12) = 2080;
        v39 = [a3 description];
        v40 = sub_1C9A924A8();
        v42 = v41;

        v43 = sub_1C9849140(v40, v42, &v45);

        *(v32 + 14) = v43;
        _os_log_impl(&dword_1C9788000, v30, v31, "Observer %s for request %s completed", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA93280](v33, -1, -1);
        MEMORY[0x1CCA93280](v32, -1, -1);
      }

      if ([v6 respondsToSelector_])
      {
        [v6 requestDidComplete_];
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C9917AA8(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97DACE4(v2);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - v4;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v6 = sub_1C9A91B58();
  sub_1C97BFF6C(v6, qword_1EC3D3108);

  swift_unknownObjectRetain();
  v7 = sub_1C9A91B38();
  v8 = sub_1C9A92FC8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136315394;
    sub_1C9A91748();
    sub_1C97AE3DC();
    v10 = sub_1C9A93A98();
    v12 = sub_1C9849140(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = [a1 description];
    v14 = sub_1C9A924A8();
    v16 = v15;

    v17 = sub_1C9849140(v14, v16, &v23);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1C9788000, v7, v8, "(SNSystemAudioAnalyzerRemote:%s removeRequest:%s", v9, 0x16u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v18 = sub_1C9A92988();
  sub_1C97ACC50(v5, 1, 1, v18);
  sub_1C97F07FC();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v19;
  v20[5] = a1;
  swift_unknownObjectRetain();
  sub_1C98B1058();
  sub_1C99A9128();
}

void *sub_1C9917D5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result request:a3 didProduceResult:v4];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C9917DD4(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v2[44] = *v1;
  return sub_1C991A5D4(sub_1C9917E18, 0);
}

uint64_t sub_1C9917E18()
{
  sub_1C97AA95C();
  sub_1C9914EBC();
  v1 = v0[43];
  memcpy(v0 + 17, v0 + 2, 0x78uLL);
  v2 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_state);
  v0[45] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C9917EE8, v2, 0);
}

uint64_t sub_1C9917EE8()
{
  sub_1C97AA884();
  sub_1C9912340((v0 + 16), v0 + 256);
  v1 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C9917F4C()
{
  sub_1C97AA95C();
  sub_1C97E82EC(v0 + 256, v0 + 296, &qword_1EC3CC6D0);
  if (*(v0 + 320))
  {
    sub_1C97A5A8C((v0 + 296), *(v0 + 320));
    sub_1C9A91D38();
    sub_1C9919410(v0 + 136);
    sub_1C97DA1E0(v0 + 256, &qword_1EC3CC6D0);
    sub_1C97A592C(v0 + 296);
  }

  else
  {
    sub_1C97DA1E0(v0 + 256, &qword_1EC3CC6D0);
    sub_1C9919410(v0 + 136);
    sub_1C97DA1E0(v0 + 296, &qword_1EC3CC6D0);
  }

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9918068()
{
  v1 = *(*(v0 + 176) + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_state);
  *(v0 + 184) = v1;
  return sub_1C991A5D4(sub_1C9918090, v1);
}

uint64_t sub_1C9918090()
{
  sub_1C97AA884();
  *(v0 + 192) = sub_1C9912300();
  v1 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C99180F0()
{
  sub_1C991A6FC();
  v1 = v0[24];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v4 = sub_1C991A7FC();
      sub_1C97E82EC(v4, v5, v6);
      sub_1C99192A4(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15]);
      sub_1C97A5A8C(v0 + 17, v0[20]);
      sub_1C9A91D38();
      sub_1C97A592C((v0 + 17));
      v3 += 160;
      --v2;
    }

    while (v2);
  }

  sub_1C97DA91C();

  return v7();
}

void sub_1C99181F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97DACE4(v27);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v52 - v29;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v31 = sub_1C9A91B58();
  sub_1C97BFF6C(v31, qword_1EC3D3108);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v32 = sub_1C9A91B38();
  v33 = sub_1C9A92FC8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v54 = v30;
    v35 = v34;
    v53 = swift_slowAlloc();
    a10 = v53;
    *v35 = 136315650;
    sub_1C9A91748();
    v55 = v20;
    sub_1C97AE3DC();
    v36 = sub_1C9A93A98();
    v38 = sub_1C9849140(v36, v37, &a10);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2080;
    v39 = [v26 description];
    v40 = sub_1C9A924A8();
    v42 = v41;

    v43 = sub_1C9849140(v40, v42, &a10);

    *(v35 + 14) = v43;
    *(v35 + 22) = 2080;
    v44 = [v24 description];
    sub_1C9A924A8();

    v45 = sub_1C98138D4();
    v48 = sub_1C9849140(v45, v46, v47);

    *(v35 + 24) = v48;
    _os_log_impl(&dword_1C9788000, v32, v33, "(SNSystemAudioAnalyzerRemote:%s addRequest:%s withObserver:%s", v35, 0x20u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v30 = v54;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v49 = sub_1C9A92988();
  sub_1C97ACC50(v30, 1, 1, v49);
  sub_1C97F07FC();
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v50;
  v51[5] = v26;
  v51[6] = v24;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1C98B1058();
  sub_1C99A9128();

  sub_1C97AEB5C();
}

uint64_t sub_1C9918520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C9918544, 0, 0);
}

uint64_t sub_1C9918544()
{
  sub_1C97AA884();
  sub_1C991A724();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1C9918618;
    v4 = v0[6];
    v3 = v0[7];

    return sub_1C9914818(v4, v3);
  }

  else
  {
    sub_1C97DA91C();

    return v6();
  }
}

uint64_t sub_1C9918618()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C99186FC()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9918754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C9918774, 0, 0);
}

uint64_t sub_1C9918774()
{
  sub_1C97AA884();
  sub_1C991A724();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1C9918848;
    v3 = v0[6];

    return sub_1C9917DD4(v3);
  }

  else
  {
    sub_1C97DA91C();

    return v5();
  }
}

uint64_t sub_1C9918848()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C991892C()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9918984()
{
  v0 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97DACE4(v0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - v2;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v4 = sub_1C9A91B58();
  sub_1C97BFF6C(v4, qword_1EC3D3108);

  v5 = sub_1C9A91B38();
  v6 = sub_1C9A92FC8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    sub_1C9A91748();
    sub_1C97AE3DC();
    v9 = sub_1C9A93A98();
    v11 = sub_1C9849140(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C9788000, v5, v6, "(SNSystemAudioAnalyzerRemote:%s removeAllRequests", v7, 0xCu);
    sub_1C97A592C(v8);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v12 = sub_1C9A92988();
  sub_1C97ACC50(v3, 1, 1, v12);
  sub_1C97F07FC();
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1C97DAA28();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  sub_1C98B1058();
  sub_1C99A9128();
}

uint64_t sub_1C9918BC8()
{
  sub_1C97AA884();
  sub_1C991A724();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1C9918C94;

    return sub_1C991804C();
  }

  else
  {
    sub_1C97DA91C();

    return v4();
  }
}

uint64_t sub_1C9918C94()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9918D78()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9918DD0()
{
  v1 = OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_id;
  sub_1C9A91748();
  sub_1C97DA940();
  (*(v2 + 8))(v0 + v1);

  sub_1C97A592C(v0 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_environment);

  return v0;
}

uint64_t sub_1C9918E7C()
{
  sub_1C9918DD0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SNSystemAudioAnalyzerRemote()
{
  result = qword_1EC3CC6A8;
  if (!qword_1EC3CC6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9918F28()
{
  result = sub_1C9A91748();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C9918FFC(uint64_t a1)
{
  v1 = *(a1 + 104) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1C9919020(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C9919068(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 120) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = 2 * -a2;
      *(a1 + 112) = 0;
      return result;
    }

    *(a1 + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C99190EC(uint64_t result, uint64_t a2)
{
  if (a2 < 5)
  {
    *(result + 104) = *(result + 104) & 1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = xmmword_1C9AB37F0;
  }

  return result;
}

unint64_t sub_1C991914C()
{
  result = qword_1EC3CC6C0;
  if (!qword_1EC3CC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC6C0);
  }

  return result;
}

uint64_t sub_1C991920C()
{
  sub_1C97AA95C();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v5 = sub_1C98B1040(v3);

  return sub_1C9918BA8(v5, v6, v7, v1);
}

uint64_t sub_1C99192A4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v14 = a14 >> 61;
  if (a14 >> 61 != 4)
  {
    if (v14 == 3)
    {
      sub_1C97A6B9C(result, a2, a3);
    }

    else
    {
      if (v14)
      {
        return result;
      }

      sub_1C97A6368(result, a2, a3);
      sub_1C97A6390(a8, a9, a10, a11, a12, a13, a14 & 1);
    }
  }
}

uint64_t sub_1C991936C()
{
  sub_1C97DA934();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_1C97AA858(v3);
  *v4 = v5;
  v6 = sub_1C98B1040(v4);

  return sub_1C9918754(v6, v7, v8, v2, v1);
}

unint64_t sub_1C9919440()
{
  result = qword_1EC3CC6D8;
  if (!qword_1EC3CC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC6D8);
  }

  return result;
}

uint64_t sub_1C9919494()
{
  sub_1C97DA934();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_1C97AA858(v4);
  *v5 = v6;
  v7 = sub_1C98B1040(v5);

  return sub_1C9918520(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1C9919554(const void *a1, uint64_t a2)
{
  v7[3] = sub_1C9A91DE8();
  v7[4] = MEMORY[0x1E695BF08];
  v7[0] = a2;
  sub_1C97A2CEC(&unk_1EC3C7590);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  memcpy((inited + 32), a1, 0x78uLL);
  sub_1C97D9AF8(v7, inited + 152);
  swift_beginAccess();

  sub_1C9919638(a1, v6);
  sub_1C98D062C(inited);
  swift_endAccess();
  return sub_1C97A592C(v7);
}

unint64_t sub_1C9919728()
{
  result = qword_1EC3CC7E8;
  if (!qword_1EC3CC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC7E8);
  }

  return result;
}

unint64_t sub_1C991977C()
{
  result = qword_1EC3CC7F8;
  if (!qword_1EC3CC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC7F8);
  }

  return result;
}

unint64_t sub_1C99197D0()
{
  result = qword_1EC3CC808;
  if (!qword_1EC3CC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC808);
  }

  return result;
}

unint64_t sub_1C9919824()
{
  result = qword_1EC3CC818;
  if (!qword_1EC3CC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC818);
  }

  return result;
}

unint64_t sub_1C9919878()
{
  result = qword_1EC3CC828;
  if (!qword_1EC3CC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC828);
  }

  return result;
}

unint64_t sub_1C99198CC()
{
  result = qword_1EC3CC838;
  if (!qword_1EC3CC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC838);
  }

  return result;
}

unint64_t sub_1C9919920()
{
  result = qword_1EC3CC848;
  if (!qword_1EC3CC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC848);
  }

  return result;
}

unint64_t sub_1C9919974()
{
  result = qword_1EC3CC858;
  if (!qword_1EC3CC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC858);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNSystemAudioAnalyzerRemote.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9919B04(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNSystemAudioAnalyzerRemote.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9919C90()
{
  result = qword_1EC3CC8B8;
  if (!qword_1EC3CC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8B8);
  }

  return result;
}

unint64_t sub_1C9919CE8()
{
  result = qword_1EC3CC8C0;
  if (!qword_1EC3CC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8C0);
  }

  return result;
}

unint64_t sub_1C9919D40()
{
  result = qword_1EC3CC8C8;
  if (!qword_1EC3CC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8C8);
  }

  return result;
}

unint64_t sub_1C9919D98()
{
  result = qword_1EC3CC8D0;
  if (!qword_1EC3CC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8D0);
  }

  return result;
}

unint64_t sub_1C9919DF0()
{
  result = qword_1EC3CC8D8;
  if (!qword_1EC3CC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8D8);
  }

  return result;
}

unint64_t sub_1C9919E48()
{
  result = qword_1EC3CC8E0;
  if (!qword_1EC3CC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8E0);
  }

  return result;
}

unint64_t sub_1C9919EA0()
{
  result = qword_1EC3CC8E8;
  if (!qword_1EC3CC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8E8);
  }

  return result;
}

unint64_t sub_1C9919EF8()
{
  result = qword_1EC3CC8F0;
  if (!qword_1EC3CC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8F0);
  }

  return result;
}

unint64_t sub_1C9919F50()
{
  result = qword_1EC3CC8F8;
  if (!qword_1EC3CC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8F8);
  }

  return result;
}

unint64_t sub_1C9919FA8()
{
  result = qword_1EC3CC900;
  if (!qword_1EC3CC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC900);
  }

  return result;
}

unint64_t sub_1C991A000()
{
  result = qword_1EC3CC908;
  if (!qword_1EC3CC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC908);
  }

  return result;
}

unint64_t sub_1C991A058()
{
  result = qword_1EC3CC910;
  if (!qword_1EC3CC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC910);
  }

  return result;
}

unint64_t sub_1C991A0B0()
{
  result = qword_1EC3CC918;
  if (!qword_1EC3CC918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC918);
  }

  return result;
}

unint64_t sub_1C991A108()
{
  result = qword_1EC3CC920;
  if (!qword_1EC3CC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC920);
  }

  return result;
}

unint64_t sub_1C991A160()
{
  result = qword_1EC3CC928;
  if (!qword_1EC3CC928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC928);
  }

  return result;
}

unint64_t sub_1C991A1B8()
{
  result = qword_1EC3CC930;
  if (!qword_1EC3CC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC930);
  }

  return result;
}

unint64_t sub_1C991A210()
{
  result = qword_1EC3CC938;
  if (!qword_1EC3CC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC938);
  }

  return result;
}

unint64_t sub_1C991A268()
{
  result = qword_1EC3CC940;
  if (!qword_1EC3CC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC940);
  }

  return result;
}

unint64_t sub_1C991A2C0()
{
  result = qword_1EC3CC948;
  if (!qword_1EC3CC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC948);
  }

  return result;
}

unint64_t sub_1C991A318()
{
  result = qword_1EC3CC950;
  if (!qword_1EC3CC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC950);
  }

  return result;
}

unint64_t sub_1C991A370()
{
  result = qword_1EC3CC958;
  if (!qword_1EC3CC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC958);
  }

  return result;
}

unint64_t sub_1C991A3C8()
{
  result = qword_1EC3CC960;
  if (!qword_1EC3CC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC960);
  }

  return result;
}

unint64_t sub_1C991A420()
{
  result = qword_1EC3CC968;
  if (!qword_1EC3CC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC968);
  }

  return result;
}

unint64_t sub_1C991A478()
{
  result = qword_1EC3CC970;
  if (!qword_1EC3CC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC970);
  }

  return result;
}

unint64_t sub_1C991A4D0()
{
  result = qword_1EC3CC978[0];
  if (!qword_1EC3CC978[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CC978);
  }

  return result;
}

uint64_t sub_1C991A56C()
{
}

uint64_t sub_1C991A598()
{
}

uint64_t sub_1C991A610()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C991A634()
{

  return sub_1C9A93858();
}

uint64_t sub_1C991A658()
{

  return sub_1C9A93988();
}

uint64_t sub_1C991A680()
{

  return sub_1C9A91F68();
}

uint64_t sub_1C991A6A0()
{

  return sub_1C9A93858();
}

uint64_t sub_1C991A6C0()
{

  return swift_task_alloc();
}

uint64_t sub_1C991A708()
{

  return sub_1C9A91F28();
}

uint64_t sub_1C991A724()
{

  return swift_beginAccess();
}

uint64_t sub_1C991A79C()
{
}

uint64_t sub_1C991A7B4()
{

  return sub_1C9A93A18();
}

uint64_t sub_1C991A7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return sub_1C9919638(&STACK[0x240], &a51);
}

uint64_t sub_1C991A7E4()
{

  return swift_unknownObjectRetain();
}

void *sub_1C991A820()
{
  v2 = v0[3];

  return sub_1C97A5A8C(v0, v2);
}

uint64_t sub_1C991A838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_1C9919638(&a66, &a51);
}

uint64_t sub_1C991A874()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C991A918(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1C979B054(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t sub_1C991A9B8()
{
  os_unfair_recursive_lock_lock_with_options();
  sub_1C991AA30(v0);

  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1C991AA7C()
{
  sub_1C97A592C(v0 + 16);

  return v0;
}

uint64_t sub_1C991AAA4()
{
  sub_1C991AA7C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C991AB20(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v9 = *(*v2 + 80);
  v10 = *(v4 + 88);
  v11 = v5;
  v6 = type metadata accessor for UpstreamEventSerializer.InnerSubscriber.InnerSubscription();
  sub_1C97D9AF8(a1, &v9);
  v7 = sub_1C991A918(&v9, *(v2 + *(*v2 + 120)));
  v11 = v6;
  WitnessTable = swift_getWitnessTable();
  v9 = v7;

  sub_1C9A91D18();

  return sub_1C97A592C(&v9);
}

uint64_t sub_1C991AD38(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1C991AD88(a1, a2);
  return v4;
}

uint64_t sub_1C991AD88(uint64_t a1, uint64_t a2)
{
  sub_1C991B418();
  (*(*(*(v5 + 88) - 8) + 32))(v2 + *(v4 + 112));
  *(v2 + *(*v2 + 120)) = a2;
  return v2;
}

uint64_t sub_1C991AE18()
{
  sub_1C991B418();
  (*(*(*(v2 + 88) - 8) + 8))(v0 + *(v1 + 112));

  return v0;
}

uint64_t sub_1C991AF20(uint64_t a1, uint64_t a2)
{
  os_unfair_recursive_lock_lock_with_options();
  sub_1C991AFB8(v2, a1, a2);

  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1C991AFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 88);
  v14[0] = *(v9 + 80);
  v14[1] = v11;
  v14[2] = v10;
  v14[3] = v12;
  type metadata accessor for UpstreamEventSerializer.InnerSubscriber();
  (*(v6 + 16))(v8, a2, a3);
  v14[0] = sub_1C991AD38(v8, *(a1 + 16));

  swift_getWitnessTable();
  sub_1C9A91F08();
}

uint64_t *sub_1C991B154()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t sub_1C991B1EC(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1C991B260()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1C991B428@<X0>(void *a1@<X8>)
{
  if (qword_1EC3C5DE8 != -1)
  {
    swift_once();
  }

  if (byte_1EC3D32B8)
  {
    v3 = qword_1EC3D3290;
    sub_1C97A2CEC(&unk_1EC3CA040);
    return swift_willThrowTypedImpl();
  }

  else
  {
    v6 = qword_1EC3D3290;
    v7 = qword_1EC3D3298;
    v8 = qword_1EC3D32A0;
    v9 = qword_1EC3D32A8;
    v10 = qword_1EC3D32B0;

    sub_1C992B5C4(&v6, __src);

    if (!v1)
    {
      return memcpy(a1, __src, 0x50uLL);
    }
  }

  return result;
}

id sub_1C991B554()
{
  sub_1C9A91778();
  sub_1C982F984();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C991B938();
  v4 = sub_1C97A2CEC(qword_1EC3CCB00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C991B8A4(0xD000000000000014, 0x80000001C9AD9570, v7);
  sub_1C991B978();
  v8 = sub_1C9A917A8();
  sub_1C991B998(v8);
  if (!v9)
  {
    sub_1C9A91798();
    sub_1C991B950();
    (*(v10 + 8))(v6, v1);
  }

  [v7 setTimeZone_];

  sub_1C991B908();
  sub_1C9A91768();
  v11 = sub_1C991B964();
  v12(v11);
  [v7 setLocale_];

  return v7;
}

id sub_1C991B6FC()
{
  sub_1C9A91778();
  sub_1C982F984();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C991B938();
  v4 = sub_1C97A2CEC(qword_1EC3CCB00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C991B8A4(0xD000000000000018, 0x80000001C9AD9550, v7);
  sub_1C991B978();
  v8 = sub_1C9A917A8();
  sub_1C991B998(v8);
  if (!v9)
  {
    sub_1C9A91798();
    sub_1C991B950();
    (*(v10 + 8))(v6, v1);
  }

  [v7 setTimeZone_];

  sub_1C991B908();
  sub_1C9A91768();
  v11 = sub_1C991B964();
  v12(v11);
  [v7 setLocale_];

  return v7;
}

void sub_1C991B8A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9A92478();

  [a3 setDateFormat_];
}

uint64_t sub_1C991B908()
{

  return sub_1C9A91758();
}

uint64_t sub_1C991B978()
{

  return sub_1C9A91788();
}

char *sub_1C991BA0C()
{
  v1 = *v0;
  v2 = sub_1C9A91748();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 2);
  v9 = *(v1 + 96);
  (*(v4 + 16))(v7, &v0[v9], v2);

  sub_1C991BB9C(v8, v7);

  (*(v4 + 8))(v7, v2);
  v10 = type metadata accessor for ContextDictionary.Record();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);

  return v0;
}

uint64_t sub_1C991BB9C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  type metadata accessor for ContextDictionary.Record();
  type metadata accessor for ReservableSlot();
  v6 = sub_1C9A93258();
  sub_1C97AE9C8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13[-v10];
  v16 = a1;
  v14 = v5;
  v15 = a2;
  sub_1C99D6BC0(&v13[-v10]);
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C991BCC4()
{
  sub_1C991BA0C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C991BD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a2;
  v19 = a3;
  v4 = type metadata accessor for ContextDictionary.Record();
  v5 = type metadata accessor for ReservableSlot();
  v6 = sub_1C9A93258();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  v17[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  v13 = *(v7 + 16);
  v18 = a1;
  v13(v10, a1, v6);
  if (sub_1C97ABF20(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
  }

  else if (sub_1C97ABF20(v10, 1, v4) == 1)
  {
    (*(*(v5 - 8) + 8))(v10, v5);
  }

  else
  {
    v14 = v17[0];
    (*(v17[0] + 32))(v12, v10, v4);
    v15 = sub_1C9A91708();
    (*(v14 + 8))(v12, v4);
    if (v15)
    {
      return sub_1C97ACC50(v19, 1, 1, v5);
    }
  }

  return (v13)(v19, v18, v6);
}

uint64_t sub_1C991BF94()
{
  sub_1C9890968();

  return swift_deallocClassInstance();
}

uint64_t sub_1C991BFE0()
{
  result = type metadata accessor for ContextDictionary.Record();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C991C0C0()
{
  result = sub_1C9A91748();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C991C148(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C9A91748();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v23 = a1;
      v8 = v14;
    }

    else
    {
      v23 = (a1 + v15) & ~v12;
      v7 = v10;
    }

    return sub_1C97ABF20(v23, v7, v8);
  }

  v16 = (v15 & ~v12) + v13;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_24;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_1C991C360(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1C9A91748();
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(v10 + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v11 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v9 = v8;
          }

          else
          {
            v24 = &a1[v15] & ~v14;
            v25 = a2;
            v11 = v12;
          }

          sub_1C97ACC50(v24, v25, v11, v9);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CoerceUtils.DomainError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C991C6CC()
{
  result = qword_1EC3CCC88[0];
  if (!qword_1EC3CCC88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CCC88);
  }

  return result;
}

uint64_t sub_1C991C720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1C9A93258();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  MEMORY[0x1EEE9AC00](v10);
  (*(v14 + 16))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  if (swift_dynamicCast())
  {
    sub_1C97ACC50(v12, 0, 1, a3);
    return (*(*(a3 - 8) + 32))(a4, v12, a3);
  }

  else
  {
    sub_1C97ACC50(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
    sub_1C98066EC();
    swift_allocError();
    return swift_willThrow();
  }
}

void SNClassifySoundRequest.windowDurationConstraint.getter(uint64_t a1@<X8>)
{
  v3 = [v1 windowDurationConstraint];
  v4 = [v3 type];
  if (v4 == 2)
  {
    [v3 durationRange];

    *a1 = v18;
    *(a1 + 16) = v19;
    *(a1 + 32) = v20;
    *(a1 + 48) = 1;
    return;
  }

  if (v4 == 1)
  {
    v5 = [v3 enumeratedDurations];
    sub_1C97C8930();
    v6 = sub_1C9A92798();

    v7 = sub_1C97BDEE0(v6);
    if (!v7)
    {

      v10 = MEMORY[0x1E69E7CC0];
LABEL_15:
      *a1 = v10;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 33) = 0u;
      return;
    }

    v8 = v7;
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C97B7A1C(0, v7 & ~(v7 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v16 = v3;
      v9 = 0;
      v10 = v17;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1CCA912B0](v9, v6);
        }

        else
        {
          v11 = *(v6 + 8 * v9 + 32);
        }

        v12 = v11;
        [v11 CMTimeValue];

        v14 = *(v17 + 16);
        v13 = *(v17 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1C97B7A1C(v13 > 1, v14 + 1, 1);
        }

        *(v17 + 16) = v14 + 1;
        v15 = v17 + 24 * v14;
        *(v15 + 32) = v18;
        ++v9;
        *(v15 + 48) = v19;
      }

      while (v8 != v9);

      goto LABEL_15;
    }

    __break(1u);
  }

  sub_1C9A93778();
  __break(1u);
}

uint64_t sub_1C991CBCC(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1C991CC0C(a1);
  return v2;
}

char *sub_1C991CC0C(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for SafeRecursiveLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  *(v1 + 2) = v4;
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(*v1 + 104)], a1);
  return v1;
}

uint64_t sub_1C991CCC4()
{
  os_unfair_recursive_lock_lock_with_options();
  sub_1C991CD5C();

  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1C991CDD8()
{
  sub_1C991B154();

  return swift_deallocClassInstance();
}

uint64_t sub_1C991CE6C(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SubscriptionSerializer();
  (*(v3 + 16))(v5, v1, a1);
  return sub_1C991CBCC(v5);
}

uint64_t sub_1C991CF48()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C9A93258();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C991D028()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 88);
  v4 = sub_1C9A93258();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  (*&v1[*(v2 + 136)])(v6);
  sub_1C97ACC50(v8, 0, 1, v3);
  v9 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 40))(&v1[v9], v8, v4);
  swift_endAccess();
  return sub_1C9A91D18();
}

uint64_t sub_1C991D240()
{
  sub_1C9828C08();
  sub_1C9828C08();
  return sub_1C9A91D28();
}

uint64_t sub_1C991D29C()
{
  sub_1C9828C08();
  sub_1C9828C08();
  sub_1C9828C08();
  return sub_1C9A91D08();
}

uint64_t sub_1C991D304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1C991D35C(a1, a2, a3);
  return v6;
}

uint64_t *sub_1C991D35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C97ACC50(v3 + *(*v3 + 128), 1, 1, *(*v3 + 88));
  sub_1C9831528();
  (*(*(*(v7 + 96) - 8) + 32))(v3 + *(v8 + 120), a1);
  sub_1C9831528();
  v10 = (v3 + *(v9 + 136));
  *v10 = a2;
  v10[1] = a3;
  return v3;
}

uint64_t sub_1C991D440()
{
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 120));
  sub_1C9831528();
  v2 = *(v1 + 128);
  v3 = sub_1C9A93258();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1C9831528();

  return v0;
}

uint64_t sub_1C991D538()
{
  sub_1C991D440();

  return swift_deallocClassInstance();
}

unint64_t sub_1C991D634()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C983DB24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C991D6BC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C991D7F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C991D9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 32);
  v16 = *(v11 + 16);
  v17 = v16;
  v18 = v13;
  v19 = v12;
  v20 = v14;
  type metadata accessor for KeepAliveDuringSubscriptionPublisher.Middle();
  (*(v8 + 16))(v10, a1, a3);
  *&v17 = sub_1C991D304(v10, *(v4 + *(a2 + 44)), *(v4 + *(a2 + 44) + 8));

  swift_getWitnessTable();
  sub_1C9A91F08();
}

id sub_1C991DB70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = *MEMORY[0x1E69E9840];
  v6 = sub_1C9A93008();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v7 = sub_1C9A92158();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C97AEAD8();
  v8 = sub_1C9A93018();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  *&v2[OBJC_IVAR___SNFileServer_link] = 0;
  sub_1C9921A0C();
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8098], v8);
  sub_1C9A92148();
  sub_1C9921A50();
  sub_1C97A2CEC(&unk_1EC3CDC60);
  sub_1C9921AA8();
  sub_1C9A93428();
  v15 = sub_1C9A93048();
  *&v3[OBJC_IVAR___SNFileServer_queue] = v15;
  v16 = type metadata accessor for SNFileServer();
  v17 = v15;
  v18 = sub_1C991DFF4(a1, a2, v17);

  *&v3[OBJC_IVAR___SNFileServer_server] = v18;
  v19 = &v3[OBJC_IVAR___SNFileServer_rootDirectory];
  *v19 = a1;
  v19[1] = a2;
  v20 = objc_opt_self();

  v21 = [v20 defaultManager];
  v22 = sub_1C9A92478();
  v35 = 0;
  LODWORD(v14) = [v21 createDirectoryAtPath:v22 withIntermediateDirectories:1 attributes:0 error:&v35];

  if (v14)
  {
    v23 = v35;
  }

  else
  {
    v24 = v35;
    v25 = sub_1C9A913C8();

    swift_willThrow();
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1C9A935B8();

    v35 = 0xD000000000000020;
    v36 = 0x80000001C9AD9790;
    MEMORY[0x1CCA90230](a1, a2);

    v27 = v35;
    v26 = v36;
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v28 = sub_1C9A91B58();
    sub_1C97BFF6C(v28, qword_1EC3D3108);

    v29 = sub_1C9A91B38();
    v30 = sub_1C9A92FB8();

    if (os_log_type_enabled(v29, v30))
    {
      sub_1C9921C98();
      v31 = swift_slowAlloc();
      sub_1C98FBA2C();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1C9849140(v27, v26, &v35);
      _os_log_impl(&dword_1C9788000, v29, v30, "Would-be Fatal Error! %s", v31, 0xCu);
      sub_1C97A592C(v32);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }
  }

  v34.receiver = v3;
  v34.super_class = v16;
  return objc_msgSendSuper2(&v34, sel_init);
}

id sub_1C991DFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9A91558();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  v11 = [objc_allocWithZone(MEMORY[0x1E69994A0]) init];
  v12 = sub_1C9A92478();
  [v11 setServiceType_];

  sub_1C9A91468();
  v13 = sub_1C9A91488();
  (*(v6 + 8))(v10, v4);
  [v11 setRootDirectoryURL_];

  [v11 setDispatchQueue_];
  return v11;
}

uint64_t sub_1C991E180(uint64_t a1, void (*a2)(void))
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v3 = sub_1C9A91B58();
  sub_1C97BFF6C(v3, qword_1EC3D3108);
  v4 = sub_1C9A91B38();
  v5 = sub_1C9A92FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C9788000, v4, v5, "Received version request", v6, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  sub_1C97A2CEC(&qword_1EC3D23E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  v8 = MEMORY[0x1E69E6158];
  sub_1C9A93548();
  *(inited + 96) = v8;
  *(inited + 72) = 3157553;
  *(inited + 80) = 0xE300000000000000;
  sub_1C9A92348();
  sub_1C97AA8AC();
  a2();
}

void sub_1C991E318(uint64_t a1, void (*a2)(void), void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v83 = *MEMORY[0x1E69E9840];
  v70 = sub_1C9A91558();
  sub_1C97AE9C8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v69 = v16 - v15;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v17 = sub_1C9A91B58();
  sub_1C97BFF6C(v17, qword_1EC3D3108);
  v18 = sub_1C9A91B38();
  v19 = sub_1C9A92FC8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1C9788000, v18, v19, "Received file transfer request", v20, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  sub_1C9A92348();
  sub_1C97AA8AC();
  v21 = a3;
  a2();

  v22 = [objc_allocWithZone(MEMORY[0x1E69C6B90]) init];
  [v22 setDispatchQueue_];
  aBlock = 0;
  if (![v22 prepareTemplateAndReturnError_])
  {
    v36 = aBlock;
    sub_1C97C926C();
    v37 = sub_1C9A913C8();

    swift_willThrow();
    return;
  }

  v23 = aBlock;
  v24 = NSTemporaryDirectory();
  sub_1C9A924A8();

  v66 = v22;
  sub_1C9A91468();

  v25 = sub_1C9A91488();
  v63 = *(v13 + 8);
  v26 = v63(v69, v70);
  sub_1C9921D04(v26, sel_setTemporaryDirectoryURL_);

  v81 = sub_1C991ED0C;
  v82 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = sub_1C991EE58;
  v80 = &unk_1F493FE58;
  v27 = _Block_copy(&aBlock);
  sub_1C9921D04(v27, sel_setProgressHandler_);
  _Block_release(v27);
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a6;
  v81 = sub_1C99214A8;
  v82 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = sub_1C991F7BC;
  v80 = &unk_1F493FEA8;
  v29 = _Block_copy(&aBlock);
  v30 = v82;

  v31 = a6;

  sub_1C9921D04(v32, sel_setCompletionHandler_);
  _Block_release(v29);
  sub_1C9921CDC();
  v71 = v33 & 0xFFFFFFFFFFFFLL | 0x7550000000000000;
  sub_1C9921D64();
  sub_1C9921CC0();
  sub_1C97C90D4(&aBlock);
  if (v76)
  {
    v34 = sub_1C9921C68();
    if (v34)
    {
      v30 = v71;
      v35 = sub_1C9A915F8();
      v34 = sub_1C97A5978(v71, 0xEF79654B63696C62);
      goto LABEL_12;
    }
  }

  else
  {
    v34 = sub_1C97F9D3C(v75, &unk_1EC3C5E60);
  }

  v35 = 0;
LABEL_12:
  sub_1C9921D04(v34, sel_setPeerPublicKey_);

  sub_1C9921CDC();
  sub_1C9921D64();
  sub_1C9921CC0();
  sub_1C97C90D4(&aBlock);
  if (v76)
  {
    v38 = sub_1C9921C68();
    if (v38)
    {
      v30 = 0xE800000000000000;
      v39 = sub_1C9A92478();

      goto LABEL_17;
    }
  }

  else
  {
    v38 = sub_1C97F9D3C(v75, &unk_1EC3C5E60);
  }

  v39 = 0;
LABEL_17:
  sub_1C9921D04(v38, sel_setTargetID_);

  sub_1C9921CA4();
  v72 = v40;
  sub_1C9921D64();
  sub_1C9921CC0();
  sub_1C97C90D4(&aBlock);
  if (!v76)
  {
LABEL_34:
    sub_1C97F9D3C(v75, &unk_1EC3C5E60);
    goto LABEL_35;
  }

  sub_1C97A2CEC(&qword_1EC3C7BF0);
  if ((sub_1C9921C68() & 1) == 0)
  {
LABEL_35:
    sub_1C9920DDC();
    swift_allocError();
    *v61 = 1;
    swift_willThrow();

    return;
  }

  v41 = v72;
  sub_1C9921CEC();
  v73 = v42;
  v74 = v43;
  sub_1C9921D64();
  sub_1C9921CC0();
  sub_1C97C90D4(&aBlock);
  if (!v76)
  {

    goto LABEL_34;
  }

  if ((sub_1C9921C68() & 1) == 0)
  {

    goto LABEL_35;
  }

  v44 = v74;
  v62 = v41;
  v45 = *(v41 + 16);
  v46 = a5;
  if (v45)
  {
    v64 = objc_opt_self();
    v47 = (v62 + 40);
    do
    {
      v67 = v45;
      v48 = *(v47 - 1);
      v49 = *v47;
      sub_1C97A2CEC(&qword_1EC3C6CA0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1C9A9EE60;
      *(v50 + 32) = a4;
      *(v50 + 40) = v46;
      *(v50 + 48) = v73;
      *(v50 + 56) = v44;
      *(v50 + 64) = v48;
      *(v50 + 72) = v49;
      swift_bridgeObjectRetain_n();

      sub_1C9A92768();
      sub_1C97C926C();

      v51 = [v64 pathWithComponents_];

      sub_1C9A924A8();
      if (sub_1C991F828())
      {

        v52 = sub_1C9A91B38();
        v53 = sub_1C9A92FC8();

        if (os_log_type_enabled(v52, v53))
        {
          sub_1C9921C98();
          v54 = swift_slowAlloc();
          sub_1C98FBA2C();
          v55 = swift_slowAlloc();
          *v54 = sub_1C9921D1C(v55).n128_u32[0];
          *(v54 + 4) = sub_1C9849140(v48, v49, &aBlock);
          _os_log_impl(&dword_1C9788000, v52, v53, "Requested file path %s", v54, 0xCu);
          sub_1C97A592C(v44);
          v44 = v74;
          sub_1C98135FC();
          MEMORY[0x1CCA93280]();
          v46 = a5;
          sub_1C98135FC();
          MEMORY[0x1CCA93280]();
        }

        v56 = [objc_allocWithZone(MEMORY[0x1E69C6B88]) init];
        sub_1C99214B0(v48, v49, v56);
        sub_1C9A91468();

        v30 = sub_1C9A91488();
        v63(v69, v70);
        [v56 setItemURL_];

        [v66 addItem_];
      }

      else
      {

        v30 = sub_1C9A91B38();
        v57 = sub_1C9A92FC8();

        if (os_log_type_enabled(v30, v57))
        {
          sub_1C9921C98();
          v58 = swift_slowAlloc();
          sub_1C98FBA2C();
          v59 = swift_slowAlloc();
          *v58 = sub_1C9921D1C(v59).n128_u32[0];
          v60 = sub_1C9849140(v48, v49, &aBlock);

          *(v58 + 4) = v60;
          _os_log_impl(&dword_1C9788000, v30, v57, "Skipping transferring of file %s", v58, 0xCu);
          sub_1C97A592C(v44);
          v44 = v74;
          sub_1C98135FC();
          MEMORY[0x1CCA93280]();
          sub_1C98135FC();
          MEMORY[0x1CCA93280]();
        }

        else
        {
        }
      }

      v47 += 2;
      v45 = v67 - 1;
    }

    while (v67 != 1);
  }

  [v66 activate];
  [v66 finish];
}

void sub_1C991ED0C(void *a1)
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v2 = sub_1C9A91B58();
  sub_1C97BFF6C(v2, qword_1EC3D3108);
  v3 = a1;
  oslog = sub_1C9A91B38();
  v4 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_1C9788000, oslog, v4, "Progressing %@", v5, 0xCu);
    sub_1C97F9D3C(v6, &unk_1EC3C86A0);
    MEMORY[0x1CCA93280](v6, -1, -1);
    MEMORY[0x1CCA93280](v5, -1, -1);
  }
}

void sub_1C991EE58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1C991EEC0(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v9 = sub_1C9A91B58();
  sub_1C97BFF6C(v9, qword_1EC3D3108);
  v10 = a1;
  v11 = sub_1C9A91B38();
  v12 = sub_1C9A92FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    if (a1)
    {
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v13 + 4) = v16;
    *v14 = v17;
    _os_log_impl(&dword_1C9788000, v11, v12, "Finished transferring files with error %@", v13, 0xCu);
    sub_1C97F9D3C(v14, &unk_1EC3C86A0);
    MEMORY[0x1CCA93280](v14, -1, -1);
    MEMORY[0x1CCA93280](v13, -1, -1);
  }

  v18 = sub_1C9A92988();
  sub_1C97ACC50(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a2;
  v19[5] = a3;

  v20 = a3;
  sub_1C99A9128();
}

uint64_t sub_1C991F0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C991F114, 0, 0);
}

uint64_t sub_1C991F114()
{
  sub_1C97DA934();
  sub_1C9921CDC();
  *(v0 + 88) = v1 & 0xFFFFFFFFFFFFLL | 0x4449000000000000;
  v2 = *(v0 + 120);
  *(v0 + 96) = 0xE800000000000000;
  sub_1C9A93548();
  sub_1C98784BC(v2, (v0 + 56));
  sub_1C97C90D4(v0 + 16);
  if (!*(v0 + 80))
  {
    sub_1C97F9D3C(v0 + 56, &unk_1EC3C5E60);
LABEL_7:
    sub_1C9920DDC();
    v12 = swift_allocError();
    *v13 = 0;
    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v14 = sub_1C9A91B58();
    sub_1C97BFF6C(v14, qword_1EC3D3108);
    v15 = sub_1C97C926C();
    v16 = sub_1C9A91B38();
    v17 = sub_1C9A92FC8();

    if (os_log_type_enabled(v16, v17))
    {
      sub_1C9921C98();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v12;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      sub_1C9840CCC(&dword_1C9788000, v22, v23, "Message transmitted with error: %@");
      sub_1C97F9D3C(v19, &unk_1EC3C86A0);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    else
    {
    }

    sub_1C97DA91C();
    sub_1C97DABB0();

    __asm { BRAA            X1, X16 }
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  *(v0 + 136) = *(v0 + 112);
  type metadata accessor for SNFileSharingUtils();
  *(v0 + 144) = sub_1C9A92348();
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_1C991F414;
  sub_1C97DABB0();

  return sub_1C983F420(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C991F414()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C991F548()
{
  sub_1C97AA95C();
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);
  v1 = sub_1C9A91B38();
  v2 = sub_1C9A92FC8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C9788000, v1, v2, "Message transmitted successfully!", v3, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  sub_1C97DA91C();

  return v4();
}

void sub_1C991F644()
{
  sub_1C97DA934();

  v1 = *(v0 + 160);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v2 = sub_1C9A91B58();
  sub_1C97BFF6C(v2, qword_1EC3D3108);
  v3 = sub_1C97C926C();
  v4 = sub_1C9A91B38();
  v5 = sub_1C9A92FC8();

  if (os_log_type_enabled(v4, v5))
  {
    sub_1C9921C98();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    sub_1C9840CCC(&dword_1C9788000, v10, v11, "Message transmitted with error: %@");
    sub_1C97F9D3C(v7, &unk_1EC3C86A0);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {
  }

  sub_1C97DA91C();
  sub_1C97DABB0();

  __asm { BRAA            X1, X16 }
}

void sub_1C991F7BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

BOOL sub_1C991F828()
{
  v0 = sub_1C9A91558();
  sub_1C97AE9C8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v6 = v5 - v4;
  sub_1C9A91468();
  if (sub_1C9A91418() == 7758199 && v7 == 0xE300000000000000)
  {

    goto LABEL_8;
  }

  v9 = sub_1C9A93B18();

  if (v9)
  {
LABEL_8:
    type metadata accessor for SNAudioFileUtils();
    v10 = sub_1C99C7598(v6) > 0;
    goto LABEL_9;
  }

  v10 = 1;
LABEL_9:
  (*(v2 + 8))(v6, v0);
  return v10;
}

void sub_1C991F968(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  sub_1C9921CEC();
  v46 = v9;
  v48 = v10;
  sub_1C9A93548();
  sub_1C98784BC(a1, &v51);
  sub_1C97C90D4(v50);
  if (!v52)
  {
    goto LABEL_12;
  }

  if ((sub_1C9921D44() & 1) == 0)
  {
LABEL_13:
    sub_1C9920DDC();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
    return;
  }

  v11 = v46;
  v12 = v48;
  sub_1C9921CA4();
  v47 = v13;
  v49 = v14;
  sub_1C9A93548();
  sub_1C98784BC(a1, &v51);
  sub_1C97C90D4(v50);
  if (!v52)
  {

LABEL_12:
    sub_1C97F9D3C(&v51, &unk_1EC3C5E60);
    goto LABEL_13;
  }

  if ((sub_1C9921D44() & 1) == 0)
  {

    goto LABEL_13;
  }

  v45 = a2;
  v15 = objc_opt_self();
  sub_1C97A2CEC(&qword_1EC3C6CA0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C9A9EE60;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = v11;
  *(v16 + 56) = v12;
  *(v16 + 64) = v47;
  *(v16 + 72) = v49;

  v17 = sub_1C9A92768();

  v18 = [v15 pathWithComponents_];

  v19 = v18;
  if (!v18)
  {
    sub_1C9A924A8();
    v19 = sub_1C9A92478();
  }

  v20 = sub_1C9A924A8();
  v22 = v21;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v23 = sub_1C9A91B58();
  sub_1C97BFF6C(v23, qword_1EC3D3108);

  v24 = sub_1C9A91B38();
  v25 = sub_1C9A92FC8();

  if (os_log_type_enabled(v24, v25))
  {
    sub_1C9921C98();
    v26 = swift_slowAlloc();
    sub_1C98FBA2C();
    v27 = v19;
    v28 = swift_slowAlloc();
    v50[0] = v28;
    *v26 = 136315138;
    v29 = sub_1C9849140(v20, v22, v50);

    *(v26 + 4) = v29;
    _os_log_impl(&dword_1C9788000, v24, v25, "Received file deletion request on server for file path: %s", v26, 0xCu);
    sub_1C97A592C(v28);
    v19 = v27;
    a2 = v45;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {
  }

  v31 = [objc_opt_self() defaultManager];
  v50[0] = 0;
  v32 = [v31 removeItemAtPath:v19 error:v50];

  if (v32)
  {
    v33 = v50[0];
    sub_1C9A92348();
    sub_1C97AA8AC();
    a2();
  }

  else
  {
    v34 = v50[0];
    v35 = sub_1C9A913C8();

    swift_willThrow();
    v36 = v35;
    v37 = sub_1C9A91B38();
    v38 = sub_1C9A92FA8();

    if (os_log_type_enabled(v37, v38))
    {
      sub_1C9921C98();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      v41 = v35;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v42;
      *v40 = v42;
      _os_log_impl(&dword_1C9788000, v37, v38, "File deletion request failed on the server: %@", v39, 0xCu);
      sub_1C97F9D3C(v40, &unk_1EC3C86A0);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    v43 = sub_1C9A92348();
    v44 = v35;
    (a2)(v43, 0, v35);
  }
}

uint64_t sub_1C991FEE4()
{
  *(v1 + 208) = v0;
  sub_1C97AA8AC();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C991FF10()
{
  v1 = v0;
  v29 = v0 + 2;
  v2 = v0 + 18;
  v3 = v1[26];
  v4 = [objc_allocWithZone(MEMORY[0x1E69C6B70]) init];
  v1[27] = v4;
  v5 = *&v3[OBJC_IVAR___SNFileServer_link];
  *&v3[OBJC_IVAR___SNFileServer_link] = v4;
  v6 = v4;

  [v6 setDispatchQueue_];
  v7 = sub_1C9A92478();
  [v6 deregisterRequestID_];

  v8 = sub_1C9A92478();
  v1[22] = sub_1C9920738;
  v1[23] = 0;
  v9 = MEMORY[0x1E69E9820];
  v1[18] = MEMORY[0x1E69E9820];
  v1[19] = 1107296256;
  v1[20] = sub_1C9A1E454;
  v1[21] = &unk_1F493FD40;
  v10 = _Block_copy(v2);
  [v6 registerRequestID:v8 options:0 handler:v10];
  _Block_release(v10);

  v11 = sub_1C9A92478();
  [v6 &selRef_isInternalBuild + 4];

  v12 = sub_1C9A92478();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v6;
  v1[22] = sub_1C9920DB4;
  v1[23] = v13;
  v1[18] = v9;
  v1[19] = 1107296256;
  v1[20] = sub_1C9A1E454;
  v1[21] = &unk_1F493FD90;
  v14 = _Block_copy(v2);
  v15 = v6;
  v16 = v3;

  v17 = sub_1C9921D30();
  [v17 v18];
  _Block_release(v14);

  v19 = sub_1C9A92478();
  [v15 deregisterRequestID_];

  v20 = sub_1C9A92478();
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  v1[22] = sub_1C9920DBC;
  v1[23] = v21;
  v1[18] = v9;
  v1[19] = 1107296256;
  v1[20] = sub_1C9A1E454;
  v1[21] = &unk_1F493FDE0;
  v22 = _Block_copy(v2);
  v23 = v16;

  v24 = sub_1C9921D30();
  [v24 v25];
  _Block_release(v22);

  v1[2] = v1;
  v1[3] = sub_1C99202F8;
  v26 = swift_continuation_init();
  v27 = sub_1C97A2CEC(&qword_1EC3CA050);
  v1[28] = v27;
  v1[25] = v27;
  v1[18] = v9;
  v1[19] = 1107296256;
  v1[20] = sub_1C9A1E374;
  v1[21] = &unk_1F493FE08;
  v1[22] = v26;
  [v15 activateWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v29);
}

uint64_t sub_1C99202F8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  *(v0 + 232) = *(v0 + 48);
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C99203FC()
{
  sub_1C97AA95C();
  v1 = v0[28];
  v2 = *(v0[26] + OBJC_IVAR___SNFileServer_server);
  v0[10] = v0;
  v0[11] = sub_1C9920500;
  v3 = swift_continuation_init();
  v0[25] = v1;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1C9A1E374;
  v0[21] = &unk_1F493FE30;
  v0[22] = v3;
  [v2 activateWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1C9920500()
{
  sub_1C97AA884();
  sub_1C97AA890();
  *(v0 + 240) = *(v0 + 112);
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C9920604()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9920660()
{
  sub_1C97AA95C();
  swift_willThrow();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C99206CC()
{
  sub_1C97AA95C();
  swift_willThrow();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C992091C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C99209C4;

  return sub_1C991FEE4();
}

void sub_1C99209C4()
{
  sub_1C97DA934();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  v6 = *(v3 + 16);
  *v5 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1C9A913B8();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  sub_1C97DABB0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C9920B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1C9A92988();
  sub_1C97ACC50(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1C9AB4D38;
  v9[5] = v8;
  sub_1C9921000(0, 0, v6, &unk_1C9AB4D48, v9);
}

id SNFileServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNFileServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNFileServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C9920D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C9920DDC()
{
  result = qword_1EC3CCDB0;
  if (!qword_1EC3CCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDB0);
  }

  return result;
}

uint64_t sub_1C9920E30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C97DA5D0;

  return v6();
}

uint64_t sub_1C9920F18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C97D9C3C;

  return v7();
}

uint64_t sub_1C9921000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1C9921854(a3, v22 - v10);
  v12 = sub_1C9A92988();
  if (sub_1C97ABF20(v11, 1, v12) == 1)
  {
    sub_1C97F9D3C(v11, &qword_1EC3CA8D0);
  }

  else
  {
    sub_1C9A92978();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1C9A92928();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1C9A92508() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1C97F9D3C(a3, &qword_1EC3CA8D0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C97F9D3C(a3, &qword_1EC3CA8D0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1C99212CC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C99213C4;

  return v6(a1);
}

uint64_t sub_1C99213C4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

void sub_1C99214B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9A92478();

  [a3 setFilename_];
}

uint64_t sub_1C9921514()
{
  sub_1C97DA934();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;
  sub_1C9921C88();
  sub_1C97DABB0();

  return sub_1C991F0F4(v3, v4, v5, v6, v7);
}

uint64_t sub_1C99215BC(void (*a1)(void))
{
  a1(*(v1 + 16));

  sub_1C985DB04();

  return swift_deallocObject();
}

uint64_t sub_1C99215FC()
{
  sub_1C97AA95C();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C97DA5D0;

  return sub_1C992091C(v2, v3);
}

void sub_1C99216A4()
{
  sub_1C97DA934();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;
  sub_1C97DABB0();

  __asm { BR              X4 }
}

uint64_t sub_1C992175C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C992179C()
{
  sub_1C97DA934();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C9921C88();

  return v4(v3);
}

uint64_t sub_1C9921854(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C99218C4()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C9921C88();

  return v4(v3);
}

uint64_t sub_1C9921968()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;
  v3 = sub_1C9921C88();

  return v4(v3);
}

unint64_t sub_1C9921A0C()
{
  result = qword_1EC3C56B0;
  if (!qword_1EC3C56B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C56B0);
  }

  return result;
}

unint64_t sub_1C9921A50()
{
  result = qword_1EC3C56C0;
  if (!qword_1EC3C56C0)
  {
    sub_1C9A93008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C56C0);
  }

  return result;
}

unint64_t sub_1C9921AA8()
{
  result = qword_1EC3C56E0;
  if (!qword_1EC3C56E0)
  {
    sub_1C97AA4F0(&unk_1EC3CDC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C56E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNFileServer.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9921BEC()
{
  result = qword_1EC3CCDB8;
  if (!qword_1EC3CCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDB8);
  }

  return result;
}

uint64_t sub_1C9921C68()
{

  return swift_dynamicCast();
}

double sub_1C9921CC0()
{

  return sub_1C98784BC(v0, (v1 - 176));
}

id sub_1C9921D04(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_1C9921D44()
{

  return swift_dynamicCast();
}

uint64_t sub_1C9921D64()
{

  return sub_1C9A93548();
}

uint64_t sub_1C9921D90()
{
  v0 = sub_1C9A91AD8();
  sub_1C9922D38(v0, qword_1EC3D3120);
  sub_1C97BFF6C(v0, qword_1EC3D3120);
  return sub_1C9A91AC8();
}

uint64_t sub_1C9921DFC()
{
  v0 = sub_1C9A93008();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C97AEAD8();
  v1 = sub_1C9A92158();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C97AEAD8();
  v2 = sub_1C9A93018();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  sub_1C9921A0C();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8098], v2);
  sub_1C9A92148();
  sub_1C9921A50();
  sub_1C97A2CEC(&unk_1EC3CDC60);
  sub_1C9921AA8();
  sub_1C9A93428();
  result = sub_1C9A93048();
  qword_1EC3D3240 = result;
  return result;
}

uint64_t LogUtils.AudioBufferProcessedSignpostPayload.audioStreamID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static LogUtils.AudioBufferProcessedSignpostPayload.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C9A93B18();
  }
}

uint64_t sub_1C9922038(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7274536F69647561 && a2 == 0xED000044496D6165)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C99220E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9922038(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C992210C(uint64_t a1)
{
  v2 = sub_1C99222B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9922148(uint64_t a1)
{
  v2 = sub_1C99222B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LogUtils.AudioBufferProcessedSignpostPayload.encode(to:)(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CCDC0);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99222B0();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  v3 = sub_1C97E89F0();
  return v4(v3);
}

unint64_t sub_1C99222B0()
{
  result = qword_1EC3CCDC8;
  if (!qword_1EC3CCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDC8);
  }

  return result;
}

uint64_t LogUtils.AudioBufferProcessedSignpostPayload.hashValue.getter()
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t LogUtils.AudioBufferProcessedSignpostPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3CCDD0);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99222B0();
  sub_1C9A93DB8();
  if (!v2)
  {
    v6 = sub_1C9A938A8();
    v8 = v7;
    v9 = sub_1C97E89F0();
    v10(v9);
    *a2 = v6;
    a2[1] = v8;
  }

  return sub_1C97A592C(a1);
}

unint64_t sub_1C99224F4()
{
  result = qword_1EC3CCDD8;
  if (!qword_1EC3CCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDD8);
  }

  return result;
}

_BYTE *sub_1C992256C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C992261C()
{
  result = qword_1EC3CCDE0;
  if (!qword_1EC3CCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDE0);
  }

  return result;
}

unint64_t sub_1C9922674()
{
  result = qword_1EC3CCDE8;
  if (!qword_1EC3CCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDE8);
  }

  return result;
}

unint64_t sub_1C99226CC()
{
  result = qword_1EC3CCDF0;
  if (!qword_1EC3CCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDF0);
  }

  return result;
}

uint64_t sub_1C9922720(uint64_t a1, uint64_t a2)
{
  sub_1C9A91AE8();
  sub_1C97AE9C8();
  v24 = v4;
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v7 = v6 - v5;
  v8 = sub_1C9A91AA8();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  v15 = *a2;
  v16 = *(a2 + 16);
  v17 = sub_1C9A91AB8();
  sub_1C9A91AF8();
  v18 = sub_1C9A93068();
  result = sub_1C9A93238();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v14, v8);
  }

  v23 = v8;
  if ((v16 & 1) == 0)
  {
    if (v15)
    {
LABEL_9:

      sub_1C9A91B28();

      if ((*(v24 + 88))(v7, v25) == *MEMORY[0x1E69E93E8])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v24 + 8))(v7, v25);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_1C9A91A88();
      _os_signpost_emit_with_name_impl(&dword_1C9788000, v17, v18, v22, v15, v20, v21, 2u);
      MEMORY[0x1CCA93280](v21, -1, -1);
      v8 = v23;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v15 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v15 & 0xFFFFF800) != 0xD800)
  {
    if (v15 >> 16 <= 0x10)
    {
      v15 = &v26;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C992299C(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t *a5)
{
  v27 = sub_1C9A91AA8();
  sub_1C97AE9C8();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = a5[1];
  v26 = *a5;

  sub_1C9A91A98();
  v15 = sub_1C9A91AB8();
  v16 = sub_1C9A93078();
  result = sub_1C9A93238();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  HIDWORD(v25) = v16;
  if ((a4 & 1) == 0)
  {

    if (!a2)
    {
      __break(1u);
LABEL_5:

LABEL_11:

      v21 = sub_1C97E89F0();
      v22 = v27;
      v23(v21);
      sub_1C9A91B18();
      swift_allocObject();
      v24 = sub_1C9A91B08();
      (*(v9 + 8))(v13, v22);
      return v24;
    }

LABEL_10:
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1C9849140(v26, v14, &v28);
    v20 = sub_1C9A91A88();
    _os_signpost_emit_with_name_impl(&dword_1C9788000, v15, BYTE4(v25), v20, a2, "{\n  audioStreamID: %s\n}", v18, 0xCu);
    sub_1C97A592C(v19);
    MEMORY[0x1CCA93280](v19, -1, -1);
    MEMORY[0x1CCA93280](v18, -1, -1);
    goto LABEL_11;
  }

  if (a2 >> 32)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {

      a2 = &v28;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C9922C24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C9A92348();
  result = sub_1C97A2CEC(&qword_1EC3C7BF8);
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1C9922C8C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v3 = a1();
  result = sub_1C97A2CEC(&qword_1EC3C7BF8);
  *a2 = v3;
  a2[3] = result;
  return result;
}

uint64_t *sub_1C9922D38(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1C9922DA0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  sub_1C9A91E08();
}

void sub_1C9922DF8()
{
  type metadata accessor for SNError();
  v0 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD000000000000016, 0x80000001C9AD9810);
  sub_1C9A91DF8();
}

unint64_t sub_1C9922EFC()
{
  result = qword_1EC3CCDF8;
  if (!qword_1EC3CCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDF8);
  }

  return result;
}

unint64_t sub_1C9922F84()
{
  result = qword_1EC3CCE08;
  if (!qword_1EC3CCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCE08);
  }

  return result;
}

unint64_t sub_1C9923020()
{
  result = qword_1EC3CCE20;
  if (!qword_1EC3CCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCE20);
  }

  return result;
}

uint64_t sub_1C992307C(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*a3 < a2)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99230A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99230BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99230D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99230F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9A6941C(*v1);
  *a1 = result;
  return result;
}

void *sub_1C992311C(void *result, unint64_t *a2)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < **v2)
  {
    v4 = *v2 + 16 * v3;
    v5 = *(v4 + 16);
    *result = *(v4 + 8);
    result[1] = v5;
    return nullsub_1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9923174@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C992307C(*a1, a1[1], *v2);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_1C99231AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99230E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C99231E8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > *a3)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C9923208(unint64_t result, uint64_t a2, unint64_t a3, unsigned int *a4)
{
  v4 = *a4;
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = a3 - result;
  if (a2 < 1)
  {
    if (v6 <= 0)
    {
      v9 = __OFSUB__(v6, a2);
      v7 = v6 == a2;
      v8 = v6 - a2 < 0;
    }

    else
    {
      v9 = 0;
      v7 = 1;
      v8 = 0;
    }

    if (!(v8 ^ v9 | v7))
    {
      return 0;
    }
  }

  else if ((v6 & 0x8000000000000000) == 0 && v6 < a2)
  {
    return 0;
  }

  v9 = __OFADD__(result, a2);
  result += a2;
  if (v9)
  {
    goto LABEL_18;
  }

  if (result > v4)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C992326C(unint64_t result, unint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 >= result && v3 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C99232C8@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1C99232F8(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_1C99232F8(unint64_t result, unsigned int *a2)
{
  if (*a2 <= result)
  {
    __break(1u);
  }

  else
  {
    ++result;
  }

  return result;
}

void *sub_1C9923310(void *result)
{
  if (*result >= **v1)
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_1C9923348(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1C9A32C20();
  if (sub_1C9A3329C(&v5, (v3 + 32), v1, a1) != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1C99233C4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1C99233F4(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_1C99233F4(uint64_t a1, unsigned int *a2)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >= *a2)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t *sub_1C9923414(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < **v1)
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C9923440@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1C9923208(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_1C9923540(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CCE18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C99235B8()
{
  result = qword_1EC3CCE48;
  if (!qword_1EC3CCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCE48);
  }

  return result;
}

unint64_t sub_1C9923610()
{
  result = qword_1EC3CCE50;
  if (!qword_1EC3CCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCE50);
  }

  return result;
}

uint64_t sub_1C99236A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CAB28);
    sub_1C9922F84();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C992377C()
{
  v1 = MEMORY[0x1E69E7CC0] + 32;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v1;
  *(v0 + 32) = xmmword_1C9A9FB80;
  type metadata accessor for SafeLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 16) = v3;
  *(v0 + 48) = v2;
  return v0;
}

void sub_1C99237E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void), void (*a5)(uint64_t *, uint64_t, void, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  v13 = *(v6[6] + 16);
  os_unfair_lock_lock(v13);
  swift_beginAccess();
  v25 = a3;
  v26 = a4;
  v27 = a5;
  sub_1C9924668(a3, a4, a5);
  v15 = v6[4];
  v14 = v6[5];
  v16 = (v14 >> 1) - v15;
  if (__OFSUB__(v14 >> 1, v15))
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = (v14 >> 1) - v15;
  if ((v14 & 1) == 0)
  {
LABEL_9:
    if (v17 >= v16 + 1)
    {
LABEL_10:
      a6(a1, a2);
      sub_1C99246E0(v16, a1, a2);
      swift_endAccess();
      os_unfair_lock_unlock(v13);
      return;
    }

LABEL_12:
    sub_1C99247CC(v16, v25, v26, v27);
    goto LABEL_10;
  }

  v18 = a6;
  v19 = v6[3];
  sub_1C9A93B88();
  swift_unknownObjectRetain();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v20 + 16);
  if (v19 + 16 * v15 + 16 * v16 != v20 + 16 * v21 + 32)
  {

    v17 = v16;
LABEL_8:
    a6 = v18;
    goto LABEL_9;
  }

  v22 = *(v20 + 24);

  v23 = (v22 >> 1) - v21;
  v24 = __OFADD__(v16, v23);
  v17 = v16 + v23;
  if (!v24)
  {
    goto LABEL_8;
  }

  __break(1u);
}

void *sub_1C9923A9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v5[2] = a1;
  v5[4] = a2;
  swift_retain_n();

  sub_1C97A2CEC(a3);
  sub_1C97AE9EC();
  sub_1C97AE67C(a5, a3);
  v8 = sub_1C9A920F8();

  v5[3] = v8;
  return v5;
}

void *sub_1C9923B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v44 = a3;
  sub_1C97A2CEC(&qword_1EC3CCEB8);
  sub_1C97AE9C8();
  v38 = v7;
  v39 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v42 = sub_1C97A2CEC(&qword_1EC3CCEC0);
  sub_1C97AE9C8();
  v40 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v43 = sub_1C97A2CEC(&qword_1EC3CCEC8);
  sub_1C97AE9C8();
  v41 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  sub_1C97A2CEC(&unk_1EC3CE300);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = type metadata accessor for SoundRecognition.Session();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C97A2CEC(&qword_1EC3CC140);
  swift_allocObject();
  v47 = sub_1C992377C();
  v26 = nullsub_1(a1);
  v27 = type metadata accessor for SNUltronUtils.UltronReportingPlan(0);
  sub_1C97ACC50(v21, 1, 1, v27);
  v28 = v46;
  sub_1C993C0E0();
  sub_1C99250F0(v21);
  if (v28)
  {
  }

  else
  {
    v48 = *&v25[*(v22 + 20)];

    sub_1C97A2CEC(&unk_1EC3C9AC0);
    sub_1C97AE9EC();
    sub_1C97AE67C(v29, &unk_1EC3C9AC0);
    sub_1C9A92048();

    sub_1C97A2CEC(&qword_1EC3C7B90);
    v30 = v39;
    sub_1C9A91CA8();
    (*(v38 + 8))(v10, v30);
    sub_1C97A2CEC(&qword_1EC3CCE88);
    sub_1C98352F0(&qword_1EC3CCED0, &qword_1EC3CCEC0);
    sub_1C97E8530();
    sub_1C97AE67C(v31, v32);
    v33 = v42;
    sub_1C9A91FC8();
    (*(v40 + 8))(v14, v33);
    sub_1C99251D4(&qword_1EC3CCED8, &qword_1EC3CCEC8);
    v34 = v43;
    v35 = sub_1C9A92008();
    (*(v41 + 8))(v18, v34);
    v48 = v35;
    sub_1C97A2CEC(&qword_1EC3CCEE0);
    sub_1C97AE67C(&qword_1EC3CCEE8, &qword_1EC3CCEE0);
    v36 = sub_1C9A91F28();

    sub_1C97A2CEC(&qword_1EC3C7B88);
    swift_allocObject();
    v26 = sub_1C9923A9C(v47, v36, &qword_1EC3CC148, &unk_1C9AB1FA0, &qword_1EC3CC150);
    sub_1C9925158(v25, type metadata accessor for SoundRecognition.Session);
  }

  return v26;
}

void *sub_1C99240FC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  sub_1C97A2CEC(&qword_1EC3CCE68);
  sub_1C97AE9C8();
  v33 = v6;
  v34 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v38 = sub_1C97A2CEC(&qword_1EC3CCE70);
  sub_1C97AE9C8();
  v36 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v39 = sub_1C97A2CEC(&qword_1EC3CCE78);
  sub_1C97AE9C8();
  v37 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v32 - v16;
  v17 = type metadata accessor for AccessibilitySoundRecognition.Session(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C97A2CEC(&qword_1EC3CC140);
  swift_allocObject();
  v42 = sub_1C992377C();
  memcpy(v43, a1, sizeof(v43));
  v21 = v43;
  sub_1C9958AC4(&v45[2]);
  v45[0] = 0x6E776F6E6B6E753CLL;
  v45[1] = 0xE90000000000003ELL;
  memcpy(v44, v45, sizeof(v44));
  v22 = v41;
  sub_1C99561D4();
  if (v22)
  {

    sub_1C986F044(v45);
  }

  else
  {
    sub_1C986F044(v45);
    v45[28] = *&v20[*(v17 + 20)];

    sub_1C97A2CEC(&unk_1EC3CE050);
    sub_1C97AE9EC();
    sub_1C97AE67C(v23, &unk_1EC3CE050);
    sub_1C9A92048();

    sub_1C97A2CEC(&qword_1EC3C7B90);
    v24 = v34;
    sub_1C9A91CA8();
    (*(v33 + 8))(v9, v24);
    sub_1C97A2CEC(&qword_1EC3CCE88);
    sub_1C98352F0(&qword_1EC3CCE90, &qword_1EC3CCE70);
    sub_1C97E8530();
    sub_1C97AE67C(v25, v26);
    v27 = v35;
    v28 = v38;
    sub_1C9A91FC8();
    (*(v36 + 8))(v13, v28);
    sub_1C99251D4(&qword_1EC3CCEA0, &qword_1EC3CCE78);
    v29 = v39;
    v30 = sub_1C9A91F28();
    (*(v37 + 8))(v27, v29);
    sub_1C97A2CEC(&qword_1EC3C7B88);
    swift_allocObject();
    v21 = sub_1C9923A9C(v42, v30, &qword_1EC3CC148, &unk_1C9AB1FA0, &qword_1EC3CC150);
    sub_1C9925158(v20, type metadata accessor for AccessibilitySoundRecognition.Session);
  }

  return v21;
}

uint64_t sub_1C9924608(id *a1)
{
  v1 = *a1;
  sub_1C97A2CEC(&qword_1EC3C7B90);
  return sub_1C9A91EA8();
}

uint64_t sub_1C9924668(uint64_t (*a1)(void, void), uint64_t (*a2)(void), void (*a3)(uint64_t *, uint64_t, void, uint64_t, uint64_t))
{
  v7 = v3[3];
  if ((v7 & 1) == 0 || (v8 = *v3, result = swift_isUniquelyReferenced_nonNull(), *v3 = v8, (result & 1) == 0))
  {
    v10 = v3[2];
    result = (v7 >> 1) - v10;
    if (__OFSUB__(v7 >> 1, v10))
    {
      __break(1u);
    }

    else
    {
      return sub_1C99247CC(result, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C99246E0(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v5 >> 1;
  v7 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  v9 = result + 1 - v7;
  if (__OFSUB__(result + 1, v7))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v9)
  {
LABEL_10:
    v16 = v3[1] + 16 * v4 + 16 * v8;
    *v16 = a2;
    *(v16 + 8) = a3;
    return result;
  }

  sub_1C9A93B88();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v12 = *(result + 16);
  v13 = __OFADD__(v12, v9);
  v14 = v12 + v9;
  if (v13)
  {
    goto LABEL_13;
  }

  *(result + 16) = v14;

  v15 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v3[3] = v5 & 1 | (2 * v15);
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C99247CC(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), void (*a4)(uint64_t *, uint64_t, void, uint64_t, uint64_t))
{
  v11 = sub_1C992486C(a1, a1 + 1, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), a2);
  v8 = a3();
  a4(&v11, a1, 0, v8, v9);
}

uint64_t sub_1C992486C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void, void))
{
  v9 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_30:
    if (v9 >= v8)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v8 = a2;
  v7 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_30;
  }

  v28 = a7;
  sub_1C9A93B88();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  if (a4 + 16 * a5 + 16 * v9 == v13 + 16 * v14 + 32)
  {
    v16 = *(v13 + 24);

    v17 = (v16 >> 1) - v14;
    v15 = v9 + v17;
    if (__OFADD__(v9, v17))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {

    v15 = v9;
  }

  swift_unknownObjectRetain();
  v18 = swift_dynamicCastClass();
  if (v15 >= v8)
  {
    if (!v18)
    {
      swift_unknownObjectRelease();
    }

    sub_1C99251F8();
    if (v20)
    {
      v25 = *(v21 + 24);

      v26 = (v25 >> 1) - a3;
      v24 = __OFADD__(v9, v26);
      v9 += v26;
      if (v24)
      {
LABEL_35:
        __break(1u);
        return result;
      }
    }

    else
    {
    }

    a7 = v28;
    goto LABEL_23;
  }

  if (!v18)
  {
    swift_unknownObjectRelease();
  }

  sub_1C99251F8();
  if (v20)
  {
    v22 = *(v19 + 24);

    v23 = (v22 >> 1) - a3;
    v24 = __OFADD__(v9, v23);
    v9 += v23;
    if (v24)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
  }

  a7 = v28;
LABEL_19:
  if (v9 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v9 *= 2;
LABEL_23:
  if (v9 <= v8)
  {
    v27 = v8;
  }

  else
  {
    v27 = v9;
  }

  return a7(v7, v27);
}

uint64_t sub_1C9924A48(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  v30 = v13;
  v31 = (v18 + 16 * a3);
  result = sub_1C9924F6C(v7, sub_1C97EFDF4);
  if (result)
  {
    v19 = result;
    v29 = v4[2];
    v28 = a4;
    v20 = (v4[1] + 16 * v29);
    sub_1C97A2CEC(&qword_1EC3C7B90);
    swift_arrayDestroy();
    sub_1C97E8434(v20, a2, v17);
    swift_arrayDestroy();
    v28(v18, a3);
    sub_1C97E8434(&v20[16 * a2 + 16 * v32], v30, v31);
    swift_arrayDestroy();
    *(v19 + 16) = 0;
    v21 = v29;

LABEL_15:

    swift_unknownObjectRelease();
    result = sub_1C98EE528(v9, v21);
    *v4 = result;
    v4[1] = v25;
    v4[2] = v26;
    v4[3] = v27;
    return result;
  }

  v21 = v4[2];
  v22 = v21 + a2;
  if (__OFADD__(v21, a2))
  {
    goto LABEL_21;
  }

  if (v22 < v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v22, v21))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1C97A2CEC(&qword_1EC3C7B90);
  swift_arrayInitWithCopy();
  result = (a4)(&v17[16 * a2], a3);
  v23 = v22 + v32;
  if (__OFADD__(v22, v32))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v4[3] >> 1;
  if (v24 < v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v24, v23))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C9924CD0(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  v30 = v13;
  v31 = (v18 + 16 * a3);
  result = sub_1C9924F6C(v7, sub_1C97EFE1C);
  if (result)
  {
    v19 = result;
    v29 = v4[2];
    v28 = a4;
    v20 = (v4[1] + 16 * v29);
    sub_1C97A2CEC(&unk_1EC3CC260);
    swift_arrayDestroy();
    sub_1C97E8434(v20, a2, v17);
    swift_arrayDestroy();
    v28(v18, a3);
    sub_1C97E8434(&v20[16 * a2 + 16 * v32], v30, v31);
    swift_arrayDestroy();
    *(v19 + 16) = 0;
    v21 = v29;

LABEL_15:

    swift_unknownObjectRelease();
    result = sub_1C98EE528(v9, v21);
    *v4 = result;
    v4[1] = v25;
    v4[2] = v26;
    v4[3] = v27;
    return result;
  }

  v21 = v4[2];
  v22 = v21 + a2;
  if (__OFADD__(v21, a2))
  {
    goto LABEL_21;
  }

  if (v22 < v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v22, v21))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1C97A2CEC(&unk_1EC3CC260);
  swift_arrayInitWithCopy();
  result = (a4)(&v17[16 * a2], a3);
  v23 = v22 + v32;
  if (__OFADD__(v22, v32))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v4[3] >> 1;
  if (v24 < v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v24, v23))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C9924F6C(uint64_t a1, void (*a2)(uint64_t))
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  if (!isUniquelyReferenced_nonNull)
  {
    return 0;
  }

  v7 = v2[2];
  v6 = v2[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = v2[1] + 16 * v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1C9A93B88();
  swift_unknownObjectRetain();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);
  if (v9 + 16 * v8 != v10 + 16 * v11 + 32)
  {

LABEL_8:
    v12 = v8;
    goto LABEL_10;
  }

  v13 = *(v10 + 24);

  v15 = (v13 >> 1) - v11;
  v16 = __OFADD__(v8, v15);
  v12 = v8 + v15;
  if (!v16)
  {
LABEL_10:
    if (v12 < a1)
    {
      return 0;
    }

    sub_1C9A93B88();
    swift_unknownObjectRetain();
    a1 = swift_dynamicCastClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = MEMORY[0x1E69E7CC0];
    }

    v17 = (v9 - a1 - 32) / 16;
    isUniquelyReferenced_nonNull = v8 + v17;
    if (!__OFADD__(v8, v17))
    {
      if (isUniquelyReferenced_nonNull >= *(a1 + 16))
      {
        return a1;
      }

LABEL_19:
      a2(isUniquelyReferenced_nonNull);
      return a1;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99250F0(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&unk_1EC3CE300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9925158(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C99251D4(unint64_t *a1, uint64_t *a2)
{

  return sub_1C97AE67C(a1, a2);
}

uint64_t sub_1C992522C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152656C706D6173 && a2 == 0xEA00000000006574;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436C656E6E616863 && a2 == 0xEC000000746E756FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9925300(char a1)
{
  if (a1)
  {
    return 0x436C656E6E616863;
  }

  else
  {
    return 0x6152656C706D6173;
  }
}

uint64_t sub_1C9925344(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CCF08);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99258D4();
  sub_1C9A93DD8();
  v12 = 0;
  sub_1C9A939E8();
  if (!v1)
  {
    v11 = 1;
    sub_1C9A93A58();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C99254A4(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1CCA919B0](*&a1);
  return sub_1C9A93CF8();
}

uint64_t sub_1C99254E4(double a1)
{
  sub_1C9A93CC8();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  MEMORY[0x1CCA919B0](*&v2);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C9925550(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CCEF8);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C99258D4();
  sub_1C9A93DB8();
  if (!v1)
  {
    v13 = 0;
    sub_1C9A938C8();
    v12 = 1;
    v9 = sub_1C9A93938();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

uint64_t sub_1C99256F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C992522C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9925720(uint64_t a1)
{
  v2 = sub_1C99258D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992575C(uint64_t a1)
{
  v2 = sub_1C99258D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99257B0()
{
  v1 = *v0;
  sub_1C9A93CC8();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1CCA919B0](*&v2);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C9925818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C9925550(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = result;
  }

  return result;
}

unint64_t sub_1C9925880()
{
  result = qword_1EC3CCEF0;
  if (!qword_1EC3CCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCEF0);
  }

  return result;
}

unint64_t sub_1C99258D4()
{
  result = qword_1EC3CCF00;
  if (!qword_1EC3CCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCF00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNSystemConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9925A08()
{
  result = qword_1EC3CCF10;
  if (!qword_1EC3CCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCF10);
  }

  return result;
}

unint64_t sub_1C9925A60()
{
  result = qword_1EC3CCF18;
  if (!qword_1EC3CCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCF18);
  }

  return result;
}

unint64_t sub_1C9925AB8()
{
  result = qword_1EC3CCF20;
  if (!qword_1EC3CCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCF20);
  }

  return result;
}

void *sub_1C9925B0C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C97A2CEC(&qword_1EC3CCF28);
  sub_1C97AE9C8();
  v27 = v6;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v32 = sub_1C97A2CEC(&qword_1EC3CCF30);
  sub_1C97AE9C8();
  v30 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v33 = sub_1C97A2CEC(&qword_1EC3CCF38);
  sub_1C97AE9C8();
  v31 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v29 = &v26 - v15;
  v16 = type metadata accessor for AccessibilitySoundActions.Session();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C97A2CEC(&qword_1EC3CCF40);
  swift_allocObject();
  v19 = sub_1C99251C8();
  sub_1C98F54A8();
  if (v3)
  {
  }

  else
  {
    v34 = *&v18[*(v16 + 20)];

    v26 = v19;
    sub_1C97A2CEC(&qword_1EC3C9B18);
    sub_1C97AE67C(&unk_1EC3C9B20, &qword_1EC3C9B18);
    sub_1C9A92048();

    sub_1C97A2CEC(&unk_1EC3CC260);
    v20 = v28;
    sub_1C9A91CA8();
    (*(v27 + 8))(v8, v20);
    sub_1C97A2CEC(&qword_1EC3CCF48);
    sub_1C97AE67C(&qword_1EC3CCF50, &qword_1EC3CCF30);
    sub_1C97AE67C(&qword_1EC3CCF58, &qword_1EC3CCF48);
    v21 = v29;
    v22 = v32;
    sub_1C9A91FC8();
    (*(v30 + 8))(v12, v22);
    sub_1C97AE67C(qword_1EC3CCF60, &qword_1EC3CCF38);
    v23 = v33;
    v24 = sub_1C9A91F28();
    (*(v31 + 8))(v21, v23);
    sub_1C97A2CEC(&unk_1EC3C7BA0);
    swift_allocObject();
    a3 = sub_1C9923A6C(v26, v24);
    sub_1C9926104(v18);
  }

  return a3;
}

unint64_t sub_1C9925FD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_1EC3C5E50 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC3D34E0;
  if (*(qword_1EC3D34E0 + 16) && (result = sub_1C9A32230(v4, v3), (v7 & 1) != 0))
  {
    *a2 = *(*(v5 + 56) + result);
  }

  else
  {
    sub_1C986F098();
    swift_allocError();
    *v8 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C99260A4(id *a1)
{
  v1 = *a1;
  sub_1C97A2CEC(&unk_1EC3CC260);
  return sub_1C9A91EA8();
}

uint64_t sub_1C9926104(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilitySoundActions.Session();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

atomic_ullong *sub_1C9926160(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = (*(*a1 + 136))();
  if ((*v8 & 1) == 0)
  {
    v8 = a2();
  }

  result = (*(*a4 + 136))(v8);
  atomic_fetch_add_explicit(result, a5, memory_order_relaxed);
  return result;
}

uint64_t sub_1C9926204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    v6 = 47;
  }

  else
  {
    v6 = 124;
  }

  v8 = v6;
  MEMORY[0x1CCA90230]();

  MEMORY[0x1CCA90230](v8, 0xE100000000000000);

  return a3;
}

uint64_t sub_1C9926294(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1C9A93B18();
  }
}

uint64_t sub_1C99262CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6761726F74537772 && a2 == 0xED00006874615065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6150656C646E7562 && a2 == 0xEA00000000006874)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C99263A4(char a1)
{
  if (a1)
  {
    return 0x6150656C646E7562;
  }

  else
  {
    return 0x6761726F74537772;
  }
}

uint64_t sub_1C99263EC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  sub_1C97A2CEC(&qword_1EC3CD0A0);
  sub_1C97AE9C8();
  v25 = v6;
  v26 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = sub_1C97A2CEC(&qword_1EC3CD0A8);
  sub_1C97AE9C8();
  v24 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = sub_1C97A2CEC(&qword_1EC3CD0B0);
  sub_1C97AE9C8();
  v17 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9927BFC();
  sub_1C9A93DD8();
  v21 = (v17 + 8);
  if (v29)
  {
    v31 = 1;
    sub_1C9927C50();
    sub_1C9A93988();
    v22 = v26;
    sub_1C9A939C8();
    (*(v25 + 8))(v9, v22);
  }

  else
  {
    v30 = 0;
    sub_1C9927CA4();
    sub_1C9A93988();
    sub_1C9A939C8();
    (*(v24 + 8))(v14, v10);
  }

  return (*v21)(v20, v15);
}

uint64_t sub_1C99266AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x1CCA91980](a4 & 1);

  return sub_1C9A92528();
}

uint64_t sub_1C9926700(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](a3 & 1);
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t sub_1C9926768(void *a1)
{
  v39 = sub_1C97A2CEC(&qword_1EC3CD070);
  sub_1C97AE9C8();
  v37[4] = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C97A2CEC(&qword_1EC3CD078);
  sub_1C97AE9C8();
  v37[3] = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v37 - v7;
  v9 = sub_1C97A2CEC(&qword_1EC3CD080);
  sub_1C97AE9C8();
  v38 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v14 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C9927BFC();
  v15 = v40;
  sub_1C9A93DB8();
  if (v15)
  {
    goto LABEL_8;
  }

  v37[1] = v4;
  v37[2] = v8;
  v40 = a1;
  v16 = sub_1C9A93958();
  result = sub_1C98EE524(v16, 0);
  if (v19 == v20 >> 1)
  {
LABEL_7:
    v26 = sub_1C9A93648();
    swift_allocError();
    v28 = v27;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v28 = &_s11FileAddressON;
    v14 = v13;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    v29 = sub_1C99281D8();
    v30(v29, v9);
    a1 = v40;
LABEL_8:
    sub_1C97A592C(a1);
    return v14;
  }

  v37[0] = 0;
  if (v19 < (v20 >> 1))
  {
    v21 = *(v18 + v19);
    sub_1C98EE520(v19 + 1);
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      v41 = v21;
      if (v21)
      {
        v43 = 1;
        sub_1C9927C50();
        sub_1C9928208();
        v31 = sub_1C9A938A8();
        v32 = v38;
        v14 = v31;
        swift_unknownObjectRelease();
        v33 = sub_1C9928240();
        v34(v33);
      }

      else
      {
        v42 = 0;
        sub_1C9927CA4();
        sub_1C9928208();
        v14 = sub_1C9A938A8();
        swift_unknownObjectRelease();
        v35 = sub_1C992822C();
        v36(v35);
        v32 = v38;
      }

      (*(v32 + 8))(v13, v25);
      sub_1C97A592C(v40);
      return v14;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9926C8C(uint64_t a1)
{
  v2 = sub_1C9927C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9926CC8(uint64_t a1)
{
  v2 = sub_1C9927C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9926D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99262CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9926D34(uint64_t a1)
{
  v2 = sub_1C9927BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9926D70(uint64_t a1)
{
  v2 = sub_1C9927BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9926DAC(uint64_t a1)
{
  v2 = sub_1C9927CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9926DE8(uint64_t a1)
{
  v2 = sub_1C9927CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9926E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C9926204(a1, a2, *v3, *(v3 + 8), *(v3 + 16));
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  return result;
}

uint64_t sub_1C9926E5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C9926768(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1C9926EC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C9A93CC8();
  sub_1C99266AC(v5, v1, v2, v3);
  return sub_1C9A93D18();
}

void sub_1C9926F3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = objc_autoreleasePoolPush();
    sub_1C99281E8();
    sub_1C9926FE4(v5, v6, v7, v8);
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    _s13FileInterfaceV11DomainErrorOMa();
    sub_1C99281AC();
    sub_1C98BBB74();
    *v9 = 3;
    swift_willThrow();
  }
}

uint64_t sub_1C9926FE4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v32 = a3;
  v31[2] = a2;
  v31[0] = a4;
  v31[1] = a1;
  v4 = sub_1C9A91558();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v31 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v31 - v15;
  type metadata accessor for SoundAnalysisBundleMarker();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = sub_1C9A92478();
  v20 = [v18 URLForResource:v19 withExtension:0];

  if (v20)
  {
    sub_1C9A914F8();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  sub_1C97ACC50(v14, v21, 1, v4);
  sub_1C9835A8C(v14, v16);
  sub_1C9835DE0(v16, v11);
  if (sub_1C97ABF20(v11, 1, v4) == 1)
  {
    sub_1C9927650(v11);
    _s13FileInterfaceV11DomainErrorOMa();
    swift_getWitnessTable();
    v22 = swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    v24 = v31[3];
    v25 = sub_1C9A915A8();
    v22 = v24;
    if (!v24)
    {
      v28 = v25;
      v29 = v26;

      (*(v5 + 8))(v7, v4);
      result = sub_1C9927650(v16);
      v30 = v31[0];
      *v31[0] = v28;
      *(v30 + 8) = v29;
      return result;
    }

    (*(v5 + 8))(v7, v4);
  }

  result = sub_1C9927650(v16);
  *v32 = v22;
  return result;
}

uint64_t sub_1C9927340(char a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C99BF4B4(a1);
  v5 = v4;
  objc_autoreleasePoolPop(v2);
  if (v5)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99273A4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1C9927340(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void sub_1C99273D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = sub_1C99281E8();
    sub_1C992747C(v5, v6, v7, v8);
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    _s13FileInterfaceV11DomainErrorOMa();
    sub_1C99281AC();
    sub_1C98BBB74();
    *v9 = 1;
    swift_willThrow();
  }
}

uint64_t sub_1C992747C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  type metadata accessor for SoundAnalysisBundleMarker();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = [v9 resourcePath];

  if (v10)
  {
    v11 = sub_1C9A924A8();
    v13 = v12;

    MEMORY[0x1CCA90230](47, 0xE100000000000000);

    MEMORY[0x1CCA90230](a1, a2);

    *a4 = v11;
    a4[1] = v13;
  }

  else
  {
    _s13FileInterfaceV11DomainErrorOMa();
    swift_getWitnessTable();
    v15 = swift_allocError();
    *v16 = 2;
    result = swift_willThrow();
    *a3 = v15;
  }

  return result;
}

uint64_t sub_1C9927650(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1C99276B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C9927790(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C99277D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C9927830(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C97ABF20(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C97ABF20(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C992796C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C9927B8C()
{
  result = qword_1EC3CD068;
  if (!qword_1EC3CD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD068);
  }

  return result;
}

unint64_t sub_1C9927BFC()
{
  result = qword_1EC3CD088;
  if (!qword_1EC3CD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD088);
  }

  return result;
}

unint64_t sub_1C9927C50()
{
  result = qword_1EC3CD090;
  if (!qword_1EC3CD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD090);
  }

  return result;
}

unint64_t sub_1C9927CA4()
{
  result = qword_1EC3CD098;
  if (!qword_1EC3CD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD098);
  }

  return result;
}

_BYTE *_s11FileAddressO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9927DE4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9927E94()
{
  result = qword_1EC3CD0B8;
  if (!qword_1EC3CD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0B8);
  }

  return result;
}

unint64_t sub_1C9927EEC()
{
  result = qword_1EC3CD0C0;
  if (!qword_1EC3CD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0C0);
  }

  return result;
}

unint64_t sub_1C9927F44()
{
  result = qword_1EC3CD0C8;
  if (!qword_1EC3CD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0C8);
  }

  return result;
}

unint64_t sub_1C9927F9C()
{
  result = qword_1EC3CD0D0;
  if (!qword_1EC3CD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0D0);
  }

  return result;
}

unint64_t sub_1C9927FF4()
{
  result = qword_1EC3CD0D8;
  if (!qword_1EC3CD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0D8);
  }

  return result;
}

unint64_t sub_1C992804C()
{
  result = qword_1EC3CD0E0;
  if (!qword_1EC3CD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0E0);
  }

  return result;
}

unint64_t sub_1C99280A4()
{
  result = qword_1EC3CD0E8;
  if (!qword_1EC3CD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0E8);
  }

  return result;
}

unint64_t sub_1C99280FC()
{
  result = qword_1EC3CD0F0;
  if (!qword_1EC3CD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0F0);
  }

  return result;
}

unint64_t sub_1C9928154()
{
  result = qword_1EC3CD0F8;
  if (!qword_1EC3CD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0F8);
  }

  return result;
}

uint64_t sub_1C99281AC()
{

  return swift_getWitnessTable();
}

uint64_t sub_1C9928208()
{

  return sub_1C9A93858();
}

uint64_t sub_1C9928254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CD108);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v12[0] = &unk_1C9AB5B90;
  v12[1] = v10;

  sub_1C97A2CEC(&qword_1EC3CD110);
  sub_1C9A929B8();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C9928384()
{
  sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  v34 = &v31 - v1;
  v32 = sub_1C97A2CEC(&qword_1EC3CD118);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v33 = sub_1C97A2CEC(&qword_1EC3CD120);
  sub_1C97AE9C8();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CD128);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  v22 = sub_1C97A2CEC(&qword_1EC3CD110);
  sub_1C97ACC50(v21, 1, 1, v22);
  v35 = v21;
  sub_1C97A2CEC(&qword_1EC3CD100);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8650], v32);
  sub_1C9A92A18();
  v23 = sub_1C9A92988();
  sub_1C97ACC50(v34, 1, 1, v23);
  v24 = *(v8 + 16);
  v32 = v15;
  v25 = v15;
  v26 = v33;
  v24(v13, v25, v33);
  v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  (*(v8 + 32))(v28 + v27, v13, v26);
  sub_1C99A9128();

  sub_1C992937C(v21, v19);
  result = sub_1C97ABF20(v19, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 8))(v32, v26);
    v30 = v31;
    (*(*(v22 - 8) + 32))(v31 + OBJC_IVAR____TtC13SoundAnalysis18AsyncDispatchQueue_queueContinuation, v19, v22);
    sub_1C99293EC(v21);
    return v30;
  }

  return result;
}