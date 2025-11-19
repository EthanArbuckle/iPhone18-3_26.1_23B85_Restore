float btConvexHullInternal::shrink(float32x4_t *this, float a2, float a3)
{
  v3 = this[11].i64[1];
  if (!v3)
  {
    return 0.0;
  }

  v7 = this[10].i32[0] - 1;
  this[10].i32[0] = v7;
  v120 = 1;
  v118 = 0;
  *(v3 + 120) = v7;
  v8 = btAlignedAllocInternal(8, 16);
  v9 = 1;
  v10 = 0;
  v84 = this;
  v85 = 0;
  v11 = 0;
  v12 = 0;
  v97 = 0;
  v98 = 0;
  v13 = 0;
  v14 = 0;
  v100 = 0;
  v15 = 0;
  v16 = 0;
  v119 = v8;
  v17 = this[11].i64[1];
  *v8 = v17;
  v19 = v17[26];
  v18 = v17[27];
  v20 = v17[28];
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  v95 = 1;
  v109 = 0;
  v110 = 0;
  do
  {
    v21 = v119[--v9];
    v22 = v21[2];
    if (v22)
    {
      v23 = v10;
      while (1)
      {
        v24 = v22[3];
        if (*(v24 + 120) == v7)
        {
          goto LABEL_23;
        }

        *(v24 + 120) = v7;
        LODWORD(v24) = v95;
        if (v9 == v95)
        {
          v25 = v95 ? 2 * v95 : 1;
          LODWORD(v24) = v95;
          if (v95 < v25)
          {
            break;
          }
        }

        v25 = v24;
LABEL_22:
        v119[v9++] = v22[3];
        v95 = v25;
LABEL_23:
        if (*(v22 + 10) != v7)
        {
          v89 = v23;
          v92 = v15;
          v87 = v9;
          v94 = v11;
          v32 = btConvexHullInternal::Pool<btConvexHullInternal::Face>::newObject(&v84[6]);
          btConvexHullInternal::Face::init(v32, v22[3], *(*(v22[2] + 8) + 24), v21);
          v33 = v94;
          if (v94 == v85)
          {
            v34 = 2 * v94;
            if (!v94)
            {
              v34 = 1;
            }

            v15 = v92;
            v35 = v89;
            if (v94 >= v34)
            {
              v85 = v94;
              v10 = v89;
            }

            else
            {
              v85 = v34;
              if (v34)
              {
                v36 = btAlignedAllocInternal(8 * v34, 16);
                v33 = v94;
                v10 = v36;
                v35 = v89;
              }

              else
              {
                v10 = 0;
              }

              if (v33 < 1)
              {
                if (v35)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                v37 = v33;
                v38 = v10;
                v39 = v35;
                do
                {
                  v40 = *v39++;
                  *v38++ = v40;
                  --v37;
                }

                while (v37);
LABEL_39:
                v90 = v10;
                btAlignedFreeInternal(v35);
                v10 = v90;
                v33 = v94;
              }

LABEL_40:
              v15 = v92;
            }

            v41 = 0;
            v42 = 0;
            v10[v33] = v32;
            v43 = v22;
            do
            {
              v44 = v42;
              v42 = v41;
              if (v44 && v41)
              {
                v45 = v44[26];
                v46 = v44[27];
                v47 = v44[28];
                v48 = v42[26];
                v49 = v42[27];
                v50 = v42[28];
                v51 = *(v21 + 26);
                v52 = *(v21 + 27);
                v53 = *(v21 + 28);
                v54 = ((v50 - v20) * (v46 - v18) - (v49 - v18) * (v47 - v20)) * (v51 - v19) + ((v49 - v18) * (v45 - v19) - (v48 - v19) * (v46 - v18)) * (v53 - v20) + ((v48 - v19) * (v47 - v20) - (v50 - v20) * (v45 - v19)) * (v52 - v18);
                v55 = v54 * (v51 + v19 + v45 + v48);
                v56 = __CFADD__(v55, v12);
                v12 += v55;
                v97 += v56 + (v55 >> 63);
                v13 = (__PAIR128__(v13, v98) + v54 * (v52 + v18 + v46 + v49)) >> 64;
                v98 += v54 * (v52 + v18 + v46 + v49);
                v57 = v54 * (v53 + v20 + v47 + v50);
                v56 = __CFADD__(v14, v57);
                v14 += v57;
                v100 += v56 + (v57 >> 63);
                v16 = (__PAIR128__(v16, v15) + v54) >> 64;
                v15 += v54;
              }

              *(v43 + 10) = v7;
              v43[4] = v32;
              v41 = v43[3];
              v43 = *(v43[2] + 8);
            }

            while (v43 != v22);
            v11 = v33 + 1;
            v23 = v10;
            v9 = v87;
            goto LABEL_47;
          }

          v10 = v89;
          goto LABEL_40;
        }

        v10 = v23;
LABEL_47:
        v22 = *v22;
        if (v22 == v21[2])
        {
          goto LABEL_48;
        }
      }

      v88 = v23;
      v91 = v15;
      v86 = v9;
      v93 = v11;
      if (v25)
      {
        v26 = btAlignedAllocInternal(8 * v25, 16);
        LODWORD(v24) = v95;
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v28 = v119;
      if (v24 < 1)
      {
        if (!v119)
        {
LABEL_21:
          v119 = v27;
          v11 = v93;
          v9 = v86;
          v15 = v91;
          v23 = v88;
          goto LABEL_22;
        }
      }

      else
      {
        v24 = v24;
        v29 = v27;
        v30 = v119;
        do
        {
          v31 = *v30++;
          *v29++ = v31;
          --v24;
        }

        while (v24);
      }

      v96 = v27;
      btAlignedFreeInternal(v28);
      v27 = v96;
      goto LABEL_21;
    }

LABEL_48:
    ;
  }

  while (v9 > 0);
  v118 = __PAIR64__(v95, v9);
  v120 = 1;
  v115 = v12;
  v116 = v97;
  v113 = v98;
  v114 = v13;
  v111 = v14;
  v112 = v100;
  v58 = 0.0;
  v109 = v15;
  v110 = v16;
  if ((v16 & 0x8000000000000000) == 0 && v16 | v15)
  {
    v59 = v10;
    v60 = v11;
    v108.f32[v84[10].i32[2]] = btConvexHullInternal::Int128::toScalar(&v115);
    v108.f32[v84[10].i32[3]] = btConvexHullInternal::Int128::toScalar(&v113);
    v108.f32[v84[10].i32[1]] = btConvexHullInternal::Int128::toScalar(&v111);
    v61 = btConvexHullInternal::Int128::toScalar(&v109);
    v62 = *v84;
    v63 = vmulq_f32(vmulq_n_f32(v108, 0.25 / v61), *v84);
    v108 = v63;
    if (a3 <= 0.0)
    {
      v64 = v60;
      v10 = v59;
    }

    else
    {
      v64 = v60;
      if (v60 < 1)
      {
        v69 = 3.4028e38;
        v10 = v59;
      }

      else
      {
        v66 = v84[10].i32[2];
        v65 = v84[10].i32[3];
        v67 = v84[10].i32[1];
        v68 = v60;
        v69 = 3.4028e38;
        v99 = vnegq_f32(v63);
        v101 = v62;
        v70 = v59;
        do
        {
          btConvexHullInternal::getBtNormal(v84, *v70, &v107);
          v71 = *v70++;
          v72 = v71[7];
          v121.f32[v66] = v71[6];
          v121.f32[v65] = v72;
          v121.f32[v67] = v71[8];
          v73 = vmlaq_f32(v99, v101, v121);
          v73.i32[3] = 0;
          v74 = vmulq_f32(v107, v73);
          v69 = fminf(vadd_f32(*&vextq_s8(v74, v74, 8uLL), vpadd_f32(*v74.i8, *v74.i8)).f32[0], v69);
          --v68;
        }

        while (v68);
        v58 = 0.0;
        v64 = v60;
        v10 = v59;
        if (v69 <= 0.0)
        {
          goto LABEL_74;
        }
      }

      a2 = fminf(v69 * a3, a2);
    }

    if (v64 < 1)
    {
      v58 = a2;
    }

    else
    {
      v75 = v64;
      v76 = 243703;
      v77 = v64;
      v78 = v10;
      do
      {
        v79 = *v78;
        *v78++ = v10[v76 % v64];
        v10[v76 % v64] = v79;
        v76 = 1664525 * v76 + 1013904223;
        --v77;
      }

      while (v77);
      v80 = v10;
      while (1)
      {
        v81 = *v80;
        btAlignedObjectArray<btRigidBody *>::btAlignedObjectArray(v102, v117);
        v82 = btConvexHullInternal::shiftFace(v84, v81, v102, a2);
        if (v105 && v106 == 1)
        {
          btAlignedFreeInternal(v105);
        }

        v106 = 1;
        v105 = 0;
        v103 = 0;
        v104 = 0;
        if ((v82 & 1) == 0)
        {
          break;
        }

        ++v80;
        if (!--v75)
        {
          v58 = a2;
          goto LABEL_73;
        }
      }

      v58 = -a2;
LABEL_73:
      v10 = v59;
    }
  }

LABEL_74:
  if (v10)
  {
    btAlignedFreeInternal(v10);
  }

  if (v119 && v120 == 1)
  {
    btAlignedFreeInternal(v119);
  }

  return v58;
}

void *btConvexHullInternal::Pool<btConvexHullInternal::Face>::newObject(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 8) = *(v3 + 16);
      result = *v3;
    }

    else
    {
      v3 = btAlignedAllocInternal(24, 16);
      v4 = *(a1 + 24);
      *(v3 + 8) = v4;
      *(v3 + 16) = 0;
      result = btAlignedAllocInternal(72 * v4, 16);
      *v3 = result;
      *(v3 + 16) = *a1;
      *a1 = v3;
    }

    v5 = *(v3 + 8);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = 0x100000000;
      v9 = result + 9;
      do
      {
        v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_21C27F640)));
        v11 = vadd_s32(v8, 0x100000001);
        if (v10.i8[0])
        {
          if (v11.i32[0] >= v5)
          {
            v12 = 0;
          }

          else
          {
            v12 = v9;
          }

          *(v9 - 9) = v12;
        }

        if (v10.i8[4])
        {
          v13 = v9 + 9;
          if (v11.i32[1] >= v5)
          {
            v13 = 0;
          }

          *v9 = v13;
        }

        v6 += 2;
        v8 = vadd_s32(v8, 0x200000002);
        v9 += 18;
      }

      while (((v5 + 1) & 0xFFFFFFFE) != v6);
    }
  }

  *(a1 + 16) = *result;
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  return result;
}

uint64_t btConvexHullInternal::Face::init(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  *(result + 8) = a2;
  *(result + 24) = *(a2 + 104);
  v4 = (a3[28] - *(a2 + 112)) | 0xFFFFFFFF00000000;
  *(result + 40) = (a3[26] - *(a2 + 104)) | ((a3[27] - *(a2 + 108)) << 32);
  *(result + 48) = v4;
  v5 = (a4[28] - *(a2 + 112)) | 0xFFFFFFFF00000000;
  *(result + 56) = (a4[26] - *(a2 + 104)) | ((a4[27] - *(a2 + 108)) << 32);
  *(result + 64) = v5;
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = (v6 + 16);
  }

  else
  {
    v7 = (a2 + 24);
  }

  *v7 = result;
  *(a2 + 32) = result;
  return result;
}

float btConvexHullInternal::Int128::toScalar(btConvexHullInternal::Int128 *this)
{
  v3 = *(this + 1);
  if ((v3 & 0x8000000000000000) == 0)
  {
    return *this + (v3 * 1.8447e19);
  }

  v7[2] = v1;
  v7[3] = v2;
  if (*this)
  {
    v5 = ~v3;
  }

  else
  {
    v5 = -v3;
  }

  v7[0] = -*this;
  v7[1] = v5;
  btConvexHullInternal::Int128::toScalar(v7);
  return -v6;
}

uint64_t btConvexHullInternal::shiftFace(float32x4_t *a1, int *a2, uint64_t a3, float a4)
{
  v7 = a2;
  btConvexHullInternal::getBtNormal(a1, a2, &v269);
  v8 = vmulq_n_f32(v269, -a4);
  v8.i32[3] = 0;
  v274 = v8;
  if (a1->f32[0] != 0.0)
  {
    v274.f32[0] = v8.f32[0] / a1->f32[0];
  }

  v9 = a1->f32[1];
  if (v9 != 0.0)
  {
    v274.f32[1] = v8.f32[1] / v9;
  }

  v10 = a1->f32[2];
  if (v10 != 0.0)
  {
    v274.f32[2] = v8.f32[2] / v10;
  }

  v11 = v274.f32[a1[10].i32[2]];
  v12 = v274.f32[a1[10].i32[3]];
  v13 = v274.f32[a1[10].i32[1]];
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12 == 0;
  }

  if (v14 && v13 == 0)
  {
    return 1;
  }

  v17 = v7[15];
  v16 = v7[16];
  v19 = v7[10];
  v18 = v7[11];
  v20 = v7[12];
  v21 = v7[14];
  v271 = v16 * v18 - v17 * v20;
  v272 = v21 * v20 - v19 * v16;
  v273 = v19 * v17 - v21 * v18;
  v22 = v7[6];
  v23 = v7[7];
  v24 = v7[8];
  v252 = v22 + v11;
  v253 = v24 + v13;
  v254 = v23 + v12;
  v25 = v252 * v271 + v254 * v272 + v253 * v273;
  if (v25 >= v22 * v271 + v23 * v272 + v24 * v273)
  {
    return 0;
  }

  v26 = *(v7 + 1);
  v27 = *(v26 + 16);
  btConvexHullInternal::Vertex::dot(v26, &v271, &v269);
  v28 = btConvexHullInternal::Rational128::compare(&v269, v25);
  if ((v28 & 0x80000000) == 0)
  {
    v29 = v28;
    v30 = v27;
    while (1)
    {
      btConvexHullInternal::Vertex::dot(*(v27 + 24), &v271, &v267);
      if ((btConvexHullInternal::Rational128::compare(&v267, &v269) & 0x80000000) != 0)
      {
        v31 = btConvexHullInternal::Rational128::compare(&v267, v25);
        *&v270[13] = *&v268[13];
        v269 = v267;
        *v270 = *v268;
        v27 = *(v27 + 16);
        if (v31 < 0)
        {
          if (v27)
          {
            if (!v29)
            {
              goto LABEL_186;
            }

            goto LABEL_32;
          }

          return 0;
        }

        v29 = v31;
        v30 = v27;
      }

      v27 = *(v27 + 8);
      if (v27 == v30)
      {
        return 0;
      }
    }
  }

  v33 = v27;
  while (1)
  {
    btConvexHullInternal::Vertex::dot(*(v27 + 24), &v271, &v267);
    if (btConvexHullInternal::Rational128::compare(&v267, &v269) >= 1)
    {
      break;
    }

LABEL_26:
    v27 = *(v27 + 8);
    if (v27 == v33)
    {
      return 1;
    }
  }

  v34 = btConvexHullInternal::Rational128::compare(&v267, v25);
  if (v34 < 0)
  {
    *&v270[13] = *&v268[13];
    v269 = v267;
    *v270 = *v268;
    v27 = *(v27 + 16);
    v33 = v27;
    goto LABEL_26;
  }

  v29 = v34;
  if (!v34)
  {
LABEL_186:
    v175 = **(v27 + 16);
    while (1)
    {
      btConvexHullInternal::Vertex::dot(v175[3], &v271, &v267);
      if (btConvexHullInternal::Rational128::compare(&v267, v25) > 0)
      {
        break;
      }

      v175 = *v175;
      if (v175 == *(v27 + 16))
      {
        return 1;
      }
    }
  }

LABEL_32:
  v35 = 0;
  v36 = 0;
  v251 = 0;
  v229 = v7;
  v230 = v25;
  while (2)
  {
    v37 = v36;
    v265 = v36;
    v264 = v29;
    if (v29 || (v38 = **(v27 + 16), btConvexHullInternal::Vertex::dot(*(v38 + 24), &v271, &v267), (btConvexHullInternal::Rational128::compare(&v267, v25) & 0x80000000) == 0))
    {
LABEL_39:
      v42 = v27;
      v43 = v29;
      if (v251)
      {
        if (v27 == v251)
        {
          if (v29 < 1)
          {
            v178 = *(a3 + 4);
            if (v35 != v37[2])
            {
              v179 = *(a3 + 8);
              if (v178 == v179)
              {
                if (v178)
                {
                  v179 = 2 * v178;
                }

                else
                {
                  v179 = 1;
                }

                if (v178 >= v179)
                {
                  v179 = *(a3 + 4);
                }

                else
                {
                  if (v179)
                  {
                    v180 = btAlignedAllocInternal(8 * v179, 16);
                    v178 = *(a3 + 4);
                  }

                  else
                  {
                    v180 = 0;
                  }

                  if (v178 >= 1)
                  {
                    v181 = 0;
                    do
                    {
                      *(v180 + v181) = *(*(a3 + 16) + v181);
                      v181 += 8;
                    }

                    while (8 * v178 != v181);
                  }

                  v182 = *(a3 + 16);
                  if (v182 && *(a3 + 24) == 1)
                  {
                    btAlignedFreeInternal(v182);
                    v178 = *(a3 + 4);
                  }

                  *(a3 + 24) = 1;
                  *(a3 + 16) = v180;
                  *(a3 + 8) = v179;
                  v37 = v36;
                }
              }

              *(*(a3 + 16) + 8 * v178) = v37[3];
              v183 = v178 + 1;
              *(a3 + 4) = v178 + 1;
              v184 = *v35;
              if (*v35 != v37[2])
              {
                v185 = v35;
                do
                {
                  v186 = v184[3];
                  btConvexHullInternal::removeEdgePair(a1, v184);
                  v187 = *(a3 + 4);
                  v188 = *(a3 + 8);
                  if (v187 == v188)
                  {
                    if (v187)
                    {
                      v188 = 2 * v187;
                    }

                    else
                    {
                      v188 = 1;
                    }

                    if (v187 >= v188)
                    {
                      v188 = *(a3 + 4);
                    }

                    else
                    {
                      if (v188)
                      {
                        v189 = btAlignedAllocInternal(8 * v188, 16);
                        v187 = *(a3 + 4);
                      }

                      else
                      {
                        v189 = 0;
                      }

                      if (v187 >= 1)
                      {
                        v190 = 0;
                        do
                        {
                          *(v189 + v190) = *(*(a3 + 16) + v190);
                          v190 += 8;
                        }

                        while (8 * v187 != v190);
                      }

                      v191 = *(a3 + 16);
                      if (v191 && *(a3 + 24) == 1)
                      {
                        btAlignedFreeInternal(v191);
                        v187 = *(a3 + 4);
                      }

                      *(a3 + 24) = 1;
                      *(a3 + 16) = v189;
                      *(a3 + 8) = v188;
                      v37 = v36;
                    }
                  }

                  *(*(a3 + 16) + 8 * v187) = v186;
                  v183 = v187 + 1;
                  *(a3 + 4) = v183;
                  v184 = *v185;
                }

                while (*v185 != v37[2]);
                v179 = v188;
              }

              if (v183 == v179)
              {
                if (v179)
                {
                  v192 = 2 * v179;
                }

                else
                {
                  v192 = 1;
                }

                if (v179 < v192)
                {
                  if (v192)
                  {
                    v193 = btAlignedAllocInternal(8 * v192, 16);
                    v179 = *(a3 + 4);
                  }

                  else
                  {
                    v193 = 0;
                  }

                  if (v179 >= 1)
                  {
                    v194 = 0;
                    do
                    {
                      *(v193 + v194) = *(*(a3 + 16) + v194);
                      v194 += 8;
                    }

                    while (8 * v179 != v194);
                  }

                  v195 = *(a3 + 16);
                  if (v195 && *(a3 + 24) == 1)
                  {
                    btAlignedFreeInternal(v195);
                    v179 = *(a3 + 4);
                  }

                  *(a3 + 24) = 1;
                  *(a3 + 16) = v193;
                  *(a3 + 8) = v192;
                }

                v183 = v179;
              }

              *(*(a3 + 16) + 8 * v183) = 0;
              v178 = v183 + 1;
              *(a3 + 4) = v183 + 1;
            }
          }

          else
          {
            *(v35[2] + 24) = v37[3];
            v176 = *(v251 + 16);
            *v176 = v35;
            v35[1] = v176;
            v177 = v37[2];
            *v35 = v177;
            *(v177 + 8) = v35;
            v178 = *(a3 + 4);
          }

          a1[11].i64[1] = **(a3 + 16);
          if (v178 >= 1)
          {
            LODWORD(v196) = 0;
            do
            {
              v266 = v178;
              do
              {
                v197 = (*(a3 + 16) + 8 * v196);
                LODWORD(v196) = v196 + 2;
                v198 = v197[1];
                if (v198)
                {
                  v199 = 0;
                  v200 = *v197;
                  v201 = *v197 + 24;
                  v196 = v196;
LABEL_251:
                  v202 = v196;
                  do
                  {
                    v203 = v198 + 3;
                    v204 = v198[3];
                    v205 = *(v200 + 32);
                    if (v205)
                    {
                      v206 = (v205 + 16);
                    }

                    else
                    {
                      v206 = v201;
                    }

                    *v206 = v204;
                    v207 = v198[4];
                    if (v207)
                    {
                      *(v200 + 32) = v207;
                      v204 = *v203;
                    }

                    for (; v204; v204 = *(v204 + 16))
                    {
                      *(v204 + 8) = v200;
                    }

                    *v203 = 0;
                    v198[4] = 0;
                    v208 = v198[2];
                    if (v208)
                    {
                      if ((v199 & 1) == 0)
                      {
                        v210 = *(a3 + 4);
                        if (v210 == *(a3 + 8))
                        {
                          v211 = v210 ? 2 * v210 : 1;
                          if (v210 < v211)
                          {
                            if (v211)
                            {
                              v212 = btAlignedAllocInternal(8 * v211, 16);
                              v210 = *(a3 + 4);
                            }

                            else
                            {
                              v212 = 0;
                            }

                            if (v210 >= 1)
                            {
                              v213 = 0;
                              do
                              {
                                *(v212 + v213) = *(*(a3 + 16) + v213);
                                v213 += 8;
                              }

                              while (8 * v210 != v213);
                            }

                            v214 = *(a3 + 16);
                            if (v214 && *(a3 + 24) == 1)
                            {
                              btAlignedFreeInternal(v214);
                              v210 = *(a3 + 4);
                            }

                            *(a3 + 24) = 1;
                            *(a3 + 16) = v212;
                            *(a3 + 8) = v211;
                          }
                        }

                        *(*(a3 + 16) + 8 * v210) = v200;
                        *(a3 + 4) = v210 + 1;
                        v208 = v198[2];
                      }

                      do
                      {
                        v215 = *(a3 + 4);
                        if (v215 == *(a3 + 8))
                        {
                          v216 = v215 ? 2 * v215 : 1;
                          if (v215 < v216)
                          {
                            if (v216)
                            {
                              v217 = btAlignedAllocInternal(8 * v216, 16);
                              v215 = *(a3 + 4);
                            }

                            else
                            {
                              v217 = 0;
                            }

                            if (v215 >= 1)
                            {
                              v218 = 0;
                              do
                              {
                                *(v217 + v218) = *(*(a3 + 16) + v218);
                                v218 += 8;
                              }

                              while (8 * v215 != v218);
                            }

                            v219 = *(a3 + 16);
                            if (v219 && *(a3 + 24) == 1)
                            {
                              btAlignedFreeInternal(v219);
                              v215 = *(a3 + 4);
                            }

                            *(a3 + 24) = 1;
                            *(a3 + 16) = v217;
                            *(a3 + 8) = v216;
                          }
                        }

                        *(*(a3 + 16) + 8 * v215) = *(v208 + 24);
                        *(a3 + 4) = v215 + 1;
                        btConvexHullInternal::removeEdgePair(a1, v198[2]);
                        v208 = v198[2];
                      }

                      while (v208);
                      v196 = v202 + 1;
                      v209 = *(a3 + 16);
                      v198 = *(v209 + 8 * v202);
                      v199 = 1;
                      if (!v198)
                      {
                        v178 = v266;
                        goto LABEL_298;
                      }

                      goto LABEL_251;
                    }

                    LODWORD(v196) = v202 + 1;
                    v209 = *(a3 + 16);
                    v198 = *(v209 + 8 * v202++);
                  }

                  while (v198);
                  v178 = v266;
                  if ((v199 & 1) == 0)
                  {
                    continue;
                  }

LABEL_298:
                  v220 = *(a3 + 4);
                  if (v220 == *(a3 + 8))
                  {
                    v221 = v220 ? 2 * v220 : 1;
                    if (v220 < v221)
                    {
                      if (v221)
                      {
                        v209 = btAlignedAllocInternal(8 * v221, 16);
                        v220 = *(a3 + 4);
                      }

                      else
                      {
                        v209 = 0;
                      }

                      if (v220 >= 1)
                      {
                        v222 = 0;
                        do
                        {
                          *(v209 + v222) = *(*(a3 + 16) + v222);
                          v222 += 8;
                        }

                        while (8 * v220 != v222);
                      }

                      v223 = *(a3 + 16);
                      if (v223 && *(a3 + 24) == 1)
                      {
                        btAlignedFreeInternal(v223);
                        v220 = *(a3 + 4);
                      }

                      *(a3 + 24) = 1;
                      *(a3 + 16) = v209;
                      *(a3 + 8) = v221;
                    }
                  }

                  *(v209 + 8 * v220) = 0;
                  *(a3 + 4) = v220 + 1;
                }
              }

              while (v196 < v178);
              v178 = *(a3 + 4);
            }

            while (v196 < v178);
            v225 = v253 | 0xFFFFFFFF00000000;
            v224 = v229;
            v226 = v254 << 32;
            if (v178 <= 0)
            {
LABEL_320:
              if (v178 < 0)
              {
                if ((*(a3 + 8) & 0x80000000) != 0)
                {
                  v227 = *(a3 + 16);
                  if (v227 && *(a3 + 24) == 1)
                  {
                    btAlignedFreeInternal(v227);
                  }

                  *(a3 + 24) = 1;
                  *(a3 + 16) = 0;
                  *(a3 + 8) = 0;
                }

                v228 = v178;
                do
                {
                  *(*(a3 + 16) + 8 * v228++) = 0;
                }

                while (v228);
              }
            }

            *(a3 + 4) = 0;
            *(v224 + 3) = v226 | v252;
            *(v224 + 4) = v225;
            return 1;
          }

          v225 = v253 | 0xFFFFFFFF00000000;
          v224 = v229;
          v226 = v254 << 32;
          goto LABEL_320;
        }

        v42 = v251;
      }

      v251 = v42;
      v263 = v27;
      v27 = *(v27 + 16);
      do
      {
        v27 = *(*(v27 + 16) + 8);
        btConvexHullInternal::Vertex::dot(*(v27 + 24), &v271, &v267);
        v44 = btConvexHullInternal::Rational128::compare(&v267, v25);
      }

      while (v44 < 0);
      v29 = v44;
      if (!v44)
      {
LABEL_115:
        v150 = *(v27 + 24);
        if (!(v29 | v43))
        {
          v36 = **(v263 + 16);
          if (v36[3] == v150)
          {
LABEL_126:
            if (v37)
            {
              v157 = v37[2];
              if (v43 < 1)
              {
                if (v36 != v157)
                {
                  v158 = *(a3 + 4);
                  v159 = *(a3 + 8);
                  if (v158 == v159)
                  {
                    if (v158)
                    {
                      v159 = 2 * v158;
                    }

                    else
                    {
                      v159 = 1;
                    }

                    if (v158 >= v159)
                    {
                      v159 = *(a3 + 4);
                    }

                    else
                    {
                      if (v159)
                      {
                        v160 = btAlignedAllocInternal(8 * v159, 16);
                        v158 = *(a3 + 4);
                      }

                      else
                      {
                        v160 = 0;
                      }

                      if (v158 >= 1)
                      {
                        v161 = 0;
                        do
                        {
                          *(v160 + v161) = *(*(a3 + 16) + v161);
                          v161 += 8;
                        }

                        while (8 * v158 != v161);
                      }

                      v162 = *(a3 + 16);
                      if (v162 && *(a3 + 24) == 1)
                      {
                        btAlignedFreeInternal(v162);
                        v158 = *(a3 + 4);
                      }

                      *(a3 + 24) = 1;
                      *(a3 + 16) = v160;
                      *(a3 + 8) = v159;
                      v37 = v265;
                    }
                  }

                  *(*(a3 + 16) + 8 * v158) = v37[3];
                  v163 = v158 + 1;
                  *(a3 + 4) = v163;
                  v164 = *v36;
                  if (*v36 != v37[2])
                  {
                    do
                    {
                      v165 = v164[3];
                      btConvexHullInternal::removeEdgePair(a1, v164);
                      v166 = *(a3 + 4);
                      v167 = *(a3 + 8);
                      if (v166 == v167)
                      {
                        if (v166)
                        {
                          v167 = 2 * v166;
                        }

                        else
                        {
                          v167 = 1;
                        }

                        if (v166 >= v167)
                        {
                          v167 = *(a3 + 4);
                        }

                        else
                        {
                          if (v167)
                          {
                            v168 = btAlignedAllocInternal(8 * v167, 16);
                            v166 = *(a3 + 4);
                          }

                          else
                          {
                            v168 = 0;
                          }

                          if (v166 >= 1)
                          {
                            v169 = 0;
                            do
                            {
                              *(v168 + v169) = *(*(a3 + 16) + v169);
                              v169 += 8;
                            }

                            while (8 * v166 != v169);
                          }

                          v170 = *(a3 + 16);
                          if (v170 && *(a3 + 24) == 1)
                          {
                            btAlignedFreeInternal(v170);
                            v166 = *(a3 + 4);
                          }

                          *(a3 + 24) = 1;
                          *(a3 + 16) = v168;
                          *(a3 + 8) = v167;
                          v37 = v265;
                        }
                      }

                      *(*(a3 + 16) + 8 * v166) = v165;
                      v163 = v166 + 1;
                      *(a3 + 4) = v163;
                      v164 = *v36;
                    }

                    while (*v36 != v37[2]);
                    v159 = v167;
                    v25 = v230;
                  }

                  if (v163 == v159)
                  {
                    if (v159)
                    {
                      v171 = 2 * v159;
                    }

                    else
                    {
                      v171 = 1;
                    }

                    if (v159 >= v171)
                    {
                      v163 = v159;
                    }

                    else
                    {
                      if (v171)
                      {
                        v172 = btAlignedAllocInternal(8 * v171, 16);
                        v159 = *(a3 + 4);
                      }

                      else
                      {
                        v172 = 0;
                      }

                      if (v159 >= 1)
                      {
                        v173 = 0;
                        do
                        {
                          *(v172 + v173) = *(*(a3 + 16) + v173);
                          v173 += 8;
                        }

                        while (8 * v159 != v173);
                      }

                      v174 = *(a3 + 16);
                      if (v174 && *(a3 + 24) == 1)
                      {
                        btAlignedFreeInternal(v174);
                        v159 = *(a3 + 4);
                      }

                      *(a3 + 24) = 1;
                      *(a3 + 16) = v172;
                      v163 = v159;
                      *(a3 + 8) = v171;
                    }

                    v25 = v230;
                  }

                  *(*(a3 + 16) + 8 * v163) = 0;
                  *(a3 + 4) = v163 + 1;
                }
              }

              else
              {
                *v36 = v157;
                v157[1] = v36;
              }
            }

            v36[4] = v7;
            *(v36[2] + 32) = *(v27 + 32);
            if (!v35)
            {
              v35 = v36;
            }

            continue;
          }
        }

        v151 = btConvexHullInternal::newEdgePair(a1, *(v263 + 24), v150);
        if (v43)
        {
          v36 = v151;
          if (!v37)
          {
LABEL_122:
            if (v29)
            {
              v154 = v36[2];
              v155 = *(v27 + 16);
            }

            else
            {
              v155 = *(v27 + 16);
              v156 = *(v155 + 8);
              v154 = v36[2];
              *v156 = v154;
              v154[1] = v156;
            }

            *v154 = v155;
            *(v155 + 8) = v154;
            goto LABEL_126;
          }

          v152 = *(v263 + 16);
        }

        else
        {
          v152 = *(v263 + 16);
          v153 = *v152;
          *v151 = *v152;
          *(v153 + 8) = v151;
          v36 = v151;
        }

        *v152 = v36;
        v36[1] = v152;
        goto LABEL_122;
      }

      v45 = *(v27 + 16);
      v46 = *(v27 + 24);
      v47 = v45[1];
      v248 = v35;
      if (v47 == v45)
      {
        v47 = 0;
      }

      else
      {
        v48 = *v45;
        *v47 = *v45;
        *(v48 + 8) = v47;
        *v45 = v45;
        v45[1] = v45;
      }

      v247 = v46;
      *(v46 + 16) = v47;
      v49 = *(v27 + 32);
      v51 = v49[15];
      v50 = v49[16];
      v53 = v49[10];
      v52 = v49[11];
      v54 = v49[12];
      v55 = v49[14];
      v56 = v50 * v52 - v51 * v54;
      v57 = v55 * v54 - v53 * v50;
      v58 = v53 * v51 - v55 * v52;
      v59 = v45[4];
      v60 = v59[15];
      v61 = v59[16];
      v246 = v45;
      v62 = v59[10];
      v63 = v59[11];
      v64 = v59[12];
      v65 = v59[14];
      v66 = v61 * v63 - v60 * v64;
      v67 = v65 * v64 - v62 * v61;
      v68 = v62 * v60 - v65 * v63;
      v69 = v7[10];
      v70 = v7[11];
      v71 = v7[12];
      v72 = v7[14];
      v73 = v7[15];
      v74 = v7[16];
      v75 = v72 * v56 + v73 * v57 + v74 * v58;
      v259 = v75;
      v261 = v69 * v56 + v70 * v57 + v71 * v58;
      v76 = v69 * v66 + v70 * v67 + v71 * v68;
      v258 = v76;
      v255 = (v49[6] - v252) * v56 + (v49[7] - v254) * v57 + (v49[8] - v253) * v58;
      v256 = (v59[6] - v252) * v66 + (v59[7] - v254) * v67 + (v59[8] - v253) * v68;
      v77 = v72 * v66 + v73 * v67 + v74 * v68;
      v249 = v77;
      v78 = btConvexHullInternal::Int128::mul(v261, v77);
      v80 = v79;
      v81 = btConvexHullInternal::Int128::mul(v75, v76);
      v83 = v80 + ~v82;
      if (!v81)
      {
        v83 = v80 - v82;
      }

      if (v78 - v81 < v78)
      {
        ++v83;
      }

      v244 = v83;
      v245 = v78 - v81;
      v267.i64[0] = v78 - v81;
      v267.i64[1] = v83;
      btConvexHullInternal::Pool<btConvexHullInternal::Vertex>::newObject(&a1[2]);
      v235 = v84;
      *(v84 + 116) = -1;
      v85 = v7[10];
      v86 = btConvexHullInternal::Int128::mul(v255 * v85, v77);
      v243 = v87;
      v88 = btConvexHullInternal::Int128::mul(v256 * v85, v259);
      v239 = v89;
      v241 = v86 - v88;
      v90 = v7[14];
      v236 = btConvexHullInternal::Int128::mul(v256 * v90, v261);
      v233 = v91;
      v92 = btConvexHullInternal::Int128::mul(v255 * v90, v258);
      v94 = v93;
      v95 = v7;
      v96 = btConvexHullInternal::Int128::operator*(&v267, v252);
      v98 = v243 - v239;
      if (!v88)
      {
        ++v98;
      }

      v99 = v98 + v233 - v94;
      if (v241 < v86)
      {
        ++v99;
      }

      v100 = v96 + v236 + v241 - v92;
      v242 = (__PAIR128__((__PAIR128__(v99 + v97 - 2, v236) + __PAIR128__(v92 == 0, v241)) >> 64, v96) + __PAIR128__(v236 + v241 >= v92, v236 + v241 - v92)) >> 64;
      v101 = v7[11];
      v237 = btConvexHullInternal::Int128::mul(v255 * v101, v249);
      v240 = v102;
      v103 = btConvexHullInternal::Int128::mul(v256 * v101, v259);
      v234 = v104;
      v105 = v237 - v103;
      v106 = v7[15];
      v107 = btConvexHullInternal::Int128::mul(v256 * v106, v261);
      v231 = v108;
      v232 = v107;
      v109 = btConvexHullInternal::Int128::mul(v255 * v106, v258);
      v111 = v110;
      v112 = btConvexHullInternal::Int128::operator*(&v267, v254);
      v114 = v240 - v234;
      if (!v103)
      {
        ++v114;
      }

      v115 = v114 + v231 - v111;
      if (v105 < v237)
      {
        ++v115;
      }

      v238 = __PAIR128__((__PAIR128__(v115 + v113 - 2, v232) + __PAIR128__(v109 == 0, v105)) >> 64, v112) + __PAIR128__(v232 + v105 >= v109, v232 + v105 - v109);
      v116 = v95[12];
      v117 = btConvexHullInternal::Int128::mul(v255 * v116, v249);
      v250 = v118;
      v119 = btConvexHullInternal::Int128::mul(v256 * v116, v259);
      v260 = v120;
      v121 = v117 - v119;
      v122 = v95[16];
      v262 = btConvexHullInternal::Int128::mul(v256 * v122, v261);
      v257 = v123;
      v124 = btConvexHullInternal::Int128::mul(v255 * v122, v258);
      v126 = v125;
      v127 = btConvexHullInternal::Int128::operator*(&v267, v253);
      v129 = v250 - v260;
      if (!v119)
      {
        ++v129;
      }

      v130 = v129 + v257 - v126;
      if (v121 < v117)
      {
        ++v130;
      }

      *(v235 + 40) = v100;
      *(v235 + 48) = v242;
      *(v235 + 56) = v238;
      *(v235 + 72) = v127 + v262 + v121 - v124;
      *(v235 + 64) = *(&v238 + 1);
      *(v235 + 80) = (__PAIR128__((__PAIR128__(v130 + v128 - 2, v262) + __PAIR128__(v124 == 0, v121)) >> 64, v127) + __PAIR128__(v262 + v121 >= v124, v262 + v121 - v124)) >> 64;
      *(v235 + 88) = v245;
      *(v235 + 96) = v244;
      v131 = btConvexHullInternal::Int128::toScalar((v235 + 40));
      *(v235 + 104) = (v131 / btConvexHullInternal::Int128::toScalar((v235 + 88)));
      v132 = btConvexHullInternal::Int128::toScalar((v235 + 56));
      *(v235 + 108) = (v132 / btConvexHullInternal::Int128::toScalar((v235 + 88)));
      v133 = btConvexHullInternal::Int128::toScalar((v235 + 72));
      *(v235 + 112) = (v133 / btConvexHullInternal::Int128::toScalar((v235 + 88)));
      *(v27 + 24) = v235;
      *(v235 + 16) = v246;
      v134 = *(a3 + 4);
      v135 = *(a3 + 8);
      if (v134 == v135)
      {
        if (v134)
        {
          v135 = 2 * v134;
        }

        else
        {
          v135 = 1;
        }

        if (v134 < v135)
        {
          v7 = v229;
          v136 = v247;
          v35 = v248;
          if (v135)
          {
            v137 = btAlignedAllocInternal(8 * v135, 16);
            v134 = *(a3 + 4);
          }

          else
          {
            v137 = 0;
          }

          if (v134 >= 1)
          {
            v138 = 0;
            do
            {
              *(v137 + v138) = *(*(a3 + 16) + v138);
              v138 += 8;
            }

            while (8 * v134 != v138);
          }

          v139 = *(a3 + 16);
          if (v139 && *(a3 + 24) == 1)
          {
            btAlignedFreeInternal(v139);
            v134 = *(a3 + 4);
          }

          *(a3 + 24) = 1;
          *(a3 + 16) = v137;
          *(a3 + 8) = v135;
          goto LABEL_81;
        }

        v135 = *(a3 + 4);
      }

      v7 = v229;
      v136 = v247;
      v35 = v248;
LABEL_81:
      v37 = v265;
      *(*(a3 + 16) + 8 * v134) = v235;
      v140 = v134 + 1;
      *(a3 + 4) = v140;
      if (v140 == v135)
      {
        if (v135)
        {
          v141 = 2 * v135;
        }

        else
        {
          v141 = 1;
        }

        if (v135 >= v141)
        {
          v141 = v135;
          v140 = v135;
        }

        else
        {
          if (v141)
          {
            v142 = btAlignedAllocInternal(8 * v141, 16);
            v135 = *(a3 + 4);
          }

          else
          {
            v142 = 0;
          }

          if (v135 >= 1)
          {
            v143 = 0;
            do
            {
              *(v142 + v143) = *(*(a3 + 16) + v143);
              v143 += 8;
            }

            while (8 * v135 != v143);
          }

          v144 = *(a3 + 16);
          if (v144 && *(a3 + 24) == 1)
          {
            btAlignedFreeInternal(v144);
            v135 = *(a3 + 4);
          }

          *(a3 + 24) = 1;
          *(a3 + 16) = v142;
          v140 = v135;
          *(a3 + 8) = v141;
          v37 = v265;
        }
      }

      else
      {
        v141 = v135;
      }

      *(*(a3 + 16) + 8 * v140) = v136;
      v145 = v140 + 1;
      *(a3 + 4) = v145;
      if (v145 == v141)
      {
        if (v141)
        {
          v146 = 2 * v141;
        }

        else
        {
          v146 = 1;
        }

        if (v141 >= v146)
        {
          v145 = v141;
        }

        else
        {
          if (v146)
          {
            v147 = btAlignedAllocInternal(8 * v146, 16);
            v141 = *(a3 + 4);
          }

          else
          {
            v147 = 0;
          }

          if (v141 >= 1)
          {
            v148 = 0;
            do
            {
              *(v147 + v148) = *(*(a3 + 16) + v148);
              v148 += 8;
            }

            while (8 * v141 != v148);
          }

          v149 = *(a3 + 16);
          if (v149 && *(a3 + 24) == 1)
          {
            btAlignedFreeInternal(v149);
            v141 = *(a3 + 4);
          }

          *(a3 + 24) = 1;
          *(a3 + 16) = v147;
          v145 = v141;
          *(a3 + 8) = v146;
          v37 = v265;
        }
      }

      *(*(a3 + 16) + 8 * v145) = 0;
      *(a3 + 4) = v145 + 1;
      v25 = v230;
      v43 = v264;
      goto LABEL_115;
    }

    break;
  }

  v39 = v38;
  while (1)
  {
    v40 = *v39;
    if (*v39 == v38)
    {
      return 1;
    }

    v27 = v39[2];
    btConvexHullInternal::Vertex::dot(*(v40 + 24), &v271, &v267);
    v41 = btConvexHullInternal::Rational128::compare(&v267, v25);
    v39 = v40;
    if ((v41 & 0x80000000) == 0)
    {
      v37 = v36;
      goto LABEL_39;
    }
  }
}

double btConvexHullInternal::Vertex::dot@<D0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if ((a1[29] & 0x80000000) == 0)
  {
    v6 = *a2 * a1[26] + a2[1] * a1[27] + a2[2] * a1[28];
    if (v6 < 1)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        *(a3 + 32) = 0;
        *a3 = 0;
        *(a3 + 8) = 0;
        goto LABEL_11;
      }

      *(a3 + 32) = -1;
      v6 = -v6;
    }

    else
    {
      *(a3 + 32) = 1;
    }

    *a3 = v6;
    *(a3 + 8) = 0;
LABEL_11:
    *&result = 1;
    *(a3 + 16) = xmmword_21C2816A0;
    *(a3 + 36) = 1;
    return result;
  }

  v7 = btConvexHullInternal::Int128::operator*((a1 + 10), *a2);
  v9 = v8;
  v10 = btConvexHullInternal::Int128::operator*((a1 + 14), a2[1]);
  v12 = __CFADD__(v10, v7);
  v13 = v10 + v7;
  v14 = v12;
  v15 = v11 + v9;
  v16 = btConvexHullInternal::Int128::operator*((a1 + 18), a2[2]);
  v19 = __PAIR128__(v15 + v17, v16) + __PAIR128__(v14, v13);
  btConvexHullInternal::Rational128::Rational128(a3, &v19, (a1 + 22));
  return result;
}

float btConvexHullComputer::compute(btConvexHullComputer *this, char *a2, char a3, int a4, int a5, float a6, double a7, double a8, int32x4_t a9, int32x4_t a10)
{
  if (a5 <= 0)
  {
    v81 = *(this + 2);
    if (v81 && *(this + 24) == 1)
    {
      btAlignedFreeInternal(v81);
    }

    *(this + 24) = 1;
    *(this + 2) = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    v82 = *(this + 6);
    if (v82 && *(this + 56) == 1)
    {
      btAlignedFreeInternal(v82);
    }

    *(this + 56) = 1;
    *(this + 6) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0;
    v83 = *(this + 10);
    if (v83 && *(this + 88) == 1)
    {
      btAlignedFreeInternal(v83);
    }

    *(this + 88) = 1;
    *(this + 10) = 0;
    *(this + 17) = 0;
    *(this + 18) = 0;
    return 0.0;
  }

  v11 = *&a7;
  v93 = 0;
  v92 = 0u;
  v102 = 1;
  v94 = 256;
  memset(v95, 0, sizeof(v95));
  v96 = 256;
  memset(v97, 0, sizeof(v97));
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v98 = 256;
  btConvexHullInternal::compute(v91, a2, a3, a4, a5, 0.0, a7, a8, a9, a10);
  v13 = 0.0;
  if (a6 > 0.0)
  {
    v13 = btConvexHullInternal::shrink(v91, a6, v11);
    if (v13 < 0.0)
    {
      v14 = *(this + 2);
      if (v14 && *(this + 24) == 1)
      {
        btAlignedFreeInternal(v14);
      }

      *(this + 24) = 1;
      *(this + 2) = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;
      v15 = *(this + 6);
      if (v15 && *(this + 56) == 1)
      {
        btAlignedFreeInternal(v15);
      }

      *(this + 56) = 1;
      *(this + 6) = 0;
      *(this + 9) = 0;
      *(this + 10) = 0;
      v16 = *(this + 10);
      if (v16 && *(this + 88) == 1)
      {
        btAlignedFreeInternal(v16);
      }

      *(this + 88) = 1;
      *(this + 10) = 0;
      *(this + 17) = 0;
      *(this + 18) = 0;
      goto LABEL_130;
    }
  }

  if ((*(this + 1) & 0x80000000) != 0 && (*(this + 2) & 0x80000000) != 0)
  {
    v17 = *(this + 2);
    if (v17 && *(this + 24) == 1)
    {
      btAlignedFreeInternal(v17);
    }

    *(this + 24) = 1;
    *(this + 2) = 0;
    *(this + 2) = 0;
  }

  *(this + 1) = 0;
  v18 = *(this + 9);
  if ((v18 & 0x80000000) != 0)
  {
    if ((*(this + 10) & 0x80000000) != 0)
    {
      v19 = *(this + 6);
      if (v19 && *(this + 56) == 1)
      {
        btAlignedFreeInternal(v19);
      }

      *(this + 56) = 1;
      *(this + 6) = 0;
      *(this + 10) = 0;
    }

    v20 = 12 * v18;
    v21 = v18 + 1;
    do
    {
      v22 = *(this + 6) + v20;
      *(v22 + 8) = 0;
      *v22 = 0;
      v20 += 12;
      LODWORD(v22) = v21++;
    }

    while (v22);
  }

  *(this + 9) = 0;
  v23 = *(this + 17);
  if ((v23 & 0x80000000) != 0)
  {
    if ((*(this + 18) & 0x80000000) != 0)
    {
      v24 = *(this + 10);
      if (v24 && *(this + 88) == 1)
      {
        btAlignedFreeInternal(v24);
      }

      *(this + 88) = 1;
      *(this + 10) = 0;
      *(this + 18) = 0;
    }

    bzero((*(this + 10) + 4 * v23), 4 * ~v23 + 4);
  }

  *(this + 17) = 0;
  v90 = 1;
  v89 = 0;
  v87 = 0;
  v88 = 0;
  getVertexCopy(v103, v86);
  v25 = v87;
  if (v87 <= 0)
  {
    v68 = v89;
    if (v89)
    {
      goto LABEL_128;
    }

    goto LABEL_130;
  }

  v26 = 0;
  do
  {
    v27 = *(v89 + v26);
    btConvexHullInternal::getCoordinates(v91, v27, &v85);
    v28 = *(this + 1);
    if (v28 == *(this + 2))
    {
      v29 = v28 ? 2 * v28 : 1;
      if (v28 < v29)
      {
        if (v29)
        {
          v30 = btAlignedAllocInternal(16 * v29, 16);
          v28 = *(this + 1);
        }

        else
        {
          v30 = 0;
        }

        if (v28 >= 1)
        {
          v31 = 0;
          v32 = 16 * v28;
          do
          {
            *(v30 + v31) = *(*(this + 2) + v31);
            v31 += 16;
          }

          while (v32 != v31);
        }

        v33 = *(this + 2);
        if (v33 && *(this + 24) == 1)
        {
          btAlignedFreeInternal(v33);
        }

        *(this + 24) = 1;
        *(this + 2) = v30;
        *(this + 2) = v29;
        v28 = *(this + 1);
      }
    }

    *(*(this + 2) + 16 * v28) = v85;
    ++*(this + 1);
    v34 = *(v27 + 16);
    if (v34)
    {
      v35 = -1;
      v36 = *(v27 + 16);
      v37 = 0xFFFFFFFFLL;
      do
      {
        if ((v36[5] & 0x80000000) != 0)
        {
          v38 = *(this + 9);
          v39 = v38;
          if (v38 == *(this + 10))
          {
            v40 = v38 ? 2 * v38 : 1;
            v39 = *(this + 9);
            if (v38 < v40)
            {
              if (v40)
              {
                v41 = btAlignedAllocInternal(12 * v40, 16);
              }

              else
              {
                v41 = 0;
              }

              v42 = *(this + 9);
              if (v42 >= 1)
              {
                v43 = 0;
                v44 = 12 * v42;
                do
                {
                  v45 = v41 + v43;
                  v46 = (*(this + 6) + v43);
                  v47 = *v46;
                  *(v45 + 8) = *(v46 + 2);
                  *v45 = v47;
                  v43 += 12;
                }

                while (v44 != v43);
              }

              v48 = *(this + 6);
              if (v48 && *(this + 56) == 1)
              {
                btAlignedFreeInternal(v48);
              }

              *(this + 56) = 1;
              *(this + 6) = v41;
              *(this + 10) = v40;
              v39 = *(this + 9);
            }
          }

          v49 = *(this + 6) + 12 * v39;
          *(v49 + 8) = 0;
          *v49 = 0;
          v50 = *(this + 10);
          v51 = *(this + 9) + 1;
          *(this + 9) = v51;
          if (v51 == v50)
          {
            v52 = v51 ? 2 * v51 : 1;
            if (v51 < v52)
            {
              if (v52)
              {
                v53 = btAlignedAllocInternal(12 * v52, 16);
                v51 = *(this + 9);
              }

              else
              {
                v53 = 0;
              }

              if (v51 >= 1)
              {
                v54 = 0;
                v55 = 12 * v51;
                do
                {
                  v56 = v53 + v54;
                  v57 = (*(this + 6) + v54);
                  v58 = *v57;
                  *(v56 + 8) = *(v57 + 2);
                  *v56 = v58;
                  v54 += 12;
                }

                while (v55 != v54);
              }

              v59 = *(this + 6);
              if (v59 && *(this + 56) == 1)
              {
                btAlignedFreeInternal(v59);
              }

              *(this + 56) = 1;
              *(this + 6) = v53;
              *(this + 10) = v52;
              v51 = *(this + 9);
            }
          }

          v60 = *(this + 6) + 12 * v51;
          *(v60 + 8) = 0;
          *v60 = 0;
          ++*(this + 9);
          *(v36 + 10) = v38;
          v61 = v36[3];
          *(v36[2] + 40) = v38 + 1;
          v62 = *(this + 6);
          v63 = v62 + 12 * v38;
          v64 = v62 + 12 * (v38 + 1);
          *(v63 + 4) = 1;
          *(v64 + 4) = -1;
          *(v63 + 8) = getVertexCopy(v61, v86);
          *(v64 + 8) = v26;
        }

        v65 = *(v36 + 10);
        v66 = v65;
        if ((v35 & 0x80000000) == 0)
        {
          *(*(this + 6) + 12 * v65) = v35 - v65;
          v66 = v37;
        }

        v36 = *v36;
        v35 = v65;
        v37 = v66;
      }

      while (v36 != v34);
      *(*(this + 6) + 12 * v66) = v65 - v66;
      v25 = v87;
    }

    ++v26;
  }

  while (v26 < v25);
  v67 = 0;
  v68 = v89;
  do
  {
    v69 = v68[v67];
    v70 = v69[2];
    if (v70)
    {
      v71 = v69[2];
      while (1)
      {
        v72 = *(v71 + 10);
        if ((v72 & 0x80000000) == 0)
        {
          break;
        }

LABEL_113:
        v71 = *v71;
        if (v71 == v70)
        {
          goto LABEL_114;
        }
      }

      LODWORD(v73) = *(this + 17);
      if (v73 != *(this + 18) || (!v73 ? (v74 = 1) : (v74 = 2 * v73), v73 >= v74))
      {
LABEL_111:
        *(*(this + 10) + 4 * v73) = v72;
        ++*(this + 17);
        v80 = v71;
        do
        {
          *(v80 + 10) = -1;
          v80 = *(v80[2] + 8);
        }

        while (v80 != v71);
        goto LABEL_113;
      }

      if (v74)
      {
        v75 = btAlignedAllocInternal(4 * v74, 16);
        LODWORD(v73) = *(this + 17);
      }

      else
      {
        v75 = 0;
      }

      v76 = *(this + 10);
      if (v73 < 1)
      {
        if (!v76)
        {
LABEL_110:
          *(this + 88) = 1;
          *(this + 10) = v75;
          *(this + 18) = v74;
          LODWORD(v73) = *(this + 17);
          v72 = *(v71 + 10);
          goto LABEL_111;
        }
      }

      else
      {
        v73 = v73;
        v77 = v75;
        v78 = *(this + 10);
        do
        {
          v79 = *v78++;
          *v77++ = v79;
          --v73;
        }

        while (v73);
      }

      if (*(this + 88) == 1)
      {
        btAlignedFreeInternal(v76);
      }

      goto LABEL_110;
    }

LABEL_114:
    ++v67;
  }

  while (v67 != v26);
  if (!v68)
  {
    goto LABEL_130;
  }

LABEL_128:
  if (v90 == 1)
  {
    btAlignedFreeInternal(v68);
  }

LABEL_130:
  if (v101 && v102 == 1)
  {
    btAlignedFreeInternal(v101);
  }

  v102 = 1;
  v101 = 0;
  v99 = 0;
  v100 = 0;
  btConvexHullInternal::Pool<btConvexHullInternal::Face>::~Pool(v97);
  btConvexHullInternal::Pool<btConvexHullInternal::Face>::~Pool(v95);
  btConvexHullInternal::Pool<btConvexHullInternal::Face>::~Pool(&v92);
  return v13;
}

uint64_t getVertexCopy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(a2 + 4);
    v5 = *(a2 + 8);
    *(a1 + 120) = v2;
    v6 = v2;
    if (v2 == v5)
    {
      v7 = v2 ? 2 * v2 : 1;
      v6 = v2;
      if (v2 < v7)
      {
        if (v7)
        {
          v8 = btAlignedAllocInternal(8 * v7, 16);
          v6 = *(a2 + 4);
        }

        else
        {
          v8 = 0;
          v6 = v2;
        }

        if (v6 >= 1)
        {
          v9 = 0;
          do
          {
            *(v8 + v9) = *(*(a2 + 16) + v9);
            v9 += 8;
          }

          while (8 * v6 != v9);
        }

        v10 = *(a2 + 16);
        if (v10 && *(a2 + 24) == 1)
        {
          btAlignedFreeInternal(v10);
          v6 = *(a2 + 4);
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v8;
        *(a2 + 8) = v7;
      }
    }

    *(*(a2 + 16) + 8 * v6) = a1;
    *(a2 + 4) = v6 + 1;
  }

  return v2;
}

uint64_t btConvexHullInternal::Rational128::Rational128(uint64_t this, const btConvexHullInternal::Int128 *a2, const btConvexHullInternal::Int128 *a3)
{
  v3 = *(this + 8);
  if (v3 < 0)
  {
    v4 = -1;
    *(this + 32) = -1;
    v5 = *(a2 + 1);
    if (*a2)
    {
      v6 = ~v5;
    }

    else
    {
      v6 = -v5;
    }

    *this = -*a2;
    *(this + 8) = v6;
  }

  else
  {
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = *this != 0;
    }

    *(this + 32) = v4;
    *this = *a2;
  }

  v7 = *(this + 24);
  if (v7 < 0)
  {
    *(this + 32) = -v4;
    v8 = *(this + 16);
    v9 = -v8;
    if (v8)
    {
      v10 = ~v7;
    }

    else
    {
      v10 = -v7;
    }

    *(this + 16) = v9;
    *(this + 24) = v10;
  }

  else
  {
    *(this + 16) = *a3;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t *btConvexHullInternal::Pool<btConvexHullInternal::Face>::~Pool(uint64_t *a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    *a1 = *(i + 16);
    btAlignedFreeInternal(*i);
    btAlignedFreeInternal(i);
  }

  return a1;
}

uint64_t btAlignedObjectArray<btConvexHullInternal::Point32>::quickSortInternal<pointCmp>(uint64_t result, uint64_t a2, int a3, int a4)
{
  LODWORD(i) = a3;
  v7 = result;
  do
  {
    v8 = i;
    v9 = (*(v7 + 16) + 16 * ((i + a4) / 2));
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    LODWORD(j) = a4;
    do
    {
      v14 = *(v7 + 16);
      v15 = (v14 + 16 * i);
      for (i = i; ; ++i)
      {
        v16 = v15[1];
        if (v16 >= v11 && (v16 != v11 || *v15 >= v10 && (*v15 != v10 || v15[2] >= v12)))
        {
          break;
        }

        v15 += 4;
      }

      v17 = 16 * j;
      for (j = j; ; --j)
      {
        v18 = *(v14 + v17 + 4);
        if (v11 >= v18)
        {
          if (v11 != v18)
          {
            break;
          }

          v19 = *(v14 + v17);
          if (v10 >= v19 && (v10 != v19 || v12 >= *(v14 + v17 + 8)))
          {
            break;
          }
        }

        v17 -= 16;
      }

      if (i <= j)
      {
        v20 = *v15;
        *v15 = *(v14 + v17);
        *(*(v7 + 16) + v17) = v20;
        LODWORD(i) = i + 1;
        LODWORD(j) = j - 1;
      }
    }

    while (i <= j);
    if (j > v8)
    {
      result = btAlignedObjectArray<btConvexHullInternal::Point32>::quickSortInternal<pointCmp>(v7, a2);
    }
  }

  while (i < a4);
  return result;
}

void btGeometryUtil::getPlaneEquationsFromVertices(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2 >= 1)
  {
    v5 = 0;
    v43 = 2;
    v42 = 1;
    do
    {
      v41 = v5 + 1;
      if (v5 + 1 < v2)
      {
        v6 = *(a1 + 16);
        v7 = v42;
        v45 = v43;
        do
        {
          v44 = v7 + 1;
          if (v2 > v7 + 1)
          {
            v46 = *(a1 + 16);
            v8 = v45;
            do
            {
              v9 = *(v6 + 16 * v5);
              v10 = vsubq_f32(*(v46 + 16 * v7), v9);
              v10.i32[3] = 0;
              v11 = vsubq_f32(*(*(a1 + 16) + 16 * v8), v9);
              v11.i32[3] = 0;
              v12 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL), v11)), v10, vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL));
              v13 = vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL);
              v13.i32[3] = 0;
              v14 = 1.0;
              v15 = 1;
              v47 = v13;
              do
              {
                v16 = vmulq_n_f32(v13, v14);
                v16.i32[3] = 0;
                v17 = v15;
                v18 = vmulq_f32(v16, v16);
                v19 = vadd_f32(vpadd_f32(*v18.i8, *v18.i8), *&vextq_s8(v18, v18, 8uLL)).f32[0];
                if (v19 > 0.0001)
                {
                  v20 = vmulq_n_f32(v16, 1.0 / sqrtf(v19));
                  v21 = *(a2 + 4);
                  if (v21 < 1)
                  {
                    goto LABEL_15;
                  }

                  v22 = *(a2 + 16);
                  v23 = vmulq_f32(*v22, v20);
                  if (vadd_f32(*&vextq_s8(v23, v23, 8uLL), vpadd_f32(*v23.i8, *v23.i8)).f32[0] <= 0.999)
                  {
                    v24 = 1;
                    do
                    {
                      v25 = v24;
                      if (v21 == v24)
                      {
                        break;
                      }

                      v26 = vmulq_f32(v22[v24++], v20);
                    }

                    while (vadd_f32(*&vextq_s8(v26, v26, 8uLL), vpadd_f32(*v26.i8, *v26.i8)).f32[0] <= 0.999);
                    if (v25 >= v21)
                    {
LABEL_15:
                      v27 = vmulq_f32(*(v6 + 16 * v5), v20);
                      v28 = vadd_f32(*&vextq_s8(v27, v27, 8uLL), vpadd_f32(*v27.i8, *v27.i8));
                      v20.f32[3] = -v28.f32[0];
                      v29 = *(a1 + 4);
                      if (v29 < 1)
                      {
                        goto LABEL_25;
                      }

                      v30 = *(a1 + 16);
                      v31 = vmulq_f32(*v30, v20);
                      if (vsub_f32(vadd_f32(*&vextq_s8(v31, v31, 8uLL), vpadd_f32(*v31.i8, *v31.i8)), v28).f32[0] <= 0.01)
                      {
                        v32 = 1;
                        do
                        {
                          v33 = v32;
                          if (v29 == v32)
                          {
                            break;
                          }

                          v34 = vmulq_f32(v30[v32++], v20);
                        }

                        while (vsub_f32(vadd_f32(*&vextq_s8(v34, v34, 8uLL), vpadd_f32(*v34.i8, *v34.i8)), v28).f32[0] <= 0.01);
                        if (v33 >= v29)
                        {
LABEL_25:
                          if (v21 == *(a2 + 8))
                          {
                            v35 = v21 ? 2 * v21 : 1;
                            if (v21 < v35)
                            {
                              v48 = v20;
                              if (v35)
                              {
                                v36 = btAlignedAllocInternal(16 * v35, 16);
                                v13 = v47;
                                v20 = v48;
                                v37 = v36;
                                LODWORD(v21) = *(a2 + 4);
                              }

                              else
                              {
                                v37 = 0;
                              }

                              if (v21 >= 1)
                              {
                                v38 = 0;
                                v39 = 16 * v21;
                                do
                                {
                                  *(v37 + v38) = *(*(a2 + 16) + v38);
                                  v38 += 16;
                                }

                                while (v39 != v38);
                              }

                              v40 = *(a2 + 16);
                              if (v40)
                              {
                                if (*(a2 + 24) == 1)
                                {
                                  btAlignedFreeInternal(v40);
                                  v13 = v47;
                                  v20 = v48;
                                }
                              }

                              *(a2 + 24) = 1;
                              *(a2 + 16) = v37;
                              *(a2 + 8) = v35;
                              LODWORD(v21) = *(a2 + 4);
                            }
                          }

                          *(*(a2 + 16) + 16 * v21) = v20;
                          ++*(a2 + 4);
                        }
                      }
                    }
                  }
                }

                v15 = 0;
                v14 = -1.0;
              }

              while ((v17 & 1) != 0);
              ++v8;
            }

            while (v2 > v8);
          }

          ++v45;
          ++v7;
        }

        while (v44 != v2);
      }

      ++v42;
      ++v43;
      ++v5;
    }

    while (v41 != v2);
  }
}

void btGeometryUtil::getVerticesFromPlaneEquations(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2 >= 1)
  {
    v5 = 0;
    v48 = 2;
    v47 = 1;
    do
    {
      v46 = v5 + 1;
      if (v5 + 1 < v2)
      {
        v6 = *(a1 + 16);
        v8 = v47;
        v7 = v48;
        do
        {
          v9 = v8 + 1;
          if (v2 > v8 + 1)
          {
            v10 = *(a1 + 16);
            v11 = v7;
            do
            {
              v12 = *(a1 + 16);
              v13 = *(v10 + 16 * v8);
              v14 = v12[v11];
              v15 = vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL);
              v16 = vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL);
              v17 = vmlaq_f32(vnegq_f32(vmulq_f32(v15, v14)), v13, v16);
              v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
              v18.i32[3] = 0;
              v19 = vmulq_f32(v18, v18);
              if (vadd_f32(*&vextq_s8(v19, v19, 8uLL), vpadd_f32(*v19.i8, *v19.i8)).f32[0] > 0.0001)
              {
                v20 = *(v6 + 16 * v5);
                v21 = vextq_s8(vextq_s8(v20, v20, 0xCuLL), v20, 8uLL);
                v22 = vmlaq_f32(vnegq_f32(vmulq_f32(v16, v20)), v14, v21);
                v23 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
                v23.i32[3] = 0;
                v24 = vmulq_f32(v23, v23);
                if (vadd_f32(vpadd_f32(*v24.i8, *v24.i8), *&vextq_s8(v24, v24, 8uLL)).f32[0] > 0.0001)
                {
                  v25 = vmlaq_f32(vnegq_f32(vmulq_f32(v21, v13)), v20, v15);
                  v26 = vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL);
                  v26.i32[3] = 0;
                  v27 = vmulq_f32(v26, v26);
                  if (vadd_f32(vpadd_f32(*v27.i8, *v27.i8), *&vextq_s8(v27, v27, 8uLL)).f32[0] > 0.0001)
                  {
                    v28 = vmulq_f32(v20, v18);
                    LODWORD(v29) = vadd_f32(vpadd_f32(*v28.i8, *v28.i8), *&vextq_s8(v28, v28, 8uLL)).u32[0];
                    if (fabsf(v29) > 0.000001)
                    {
                      v30 = vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v18, v20, 3), v23, v13, 3), v26, v14, 3), -1.0 / v29);
                      v31 = *(a1 + 4);
                      if (v31 < 1)
                      {
                        goto LABEL_17;
                      }

                      v32 = vmulq_f32(*v12, v30);
                      if ((vadd_f32(*&vextq_s8(v32, v32, 8uLL), vpadd_f32(*v32.i8, *v32.i8)).f32[0] + COERCE_FLOAT(HIDWORD(*v12))) <= 0.01)
                      {
                        v33 = 1;
                        do
                        {
                          v34 = v33;
                          if (v31 == v33)
                          {
                            break;
                          }

                          v35 = vmulq_f32(v12[v33], v30);
                          v36 = vadd_f32(*&vextq_s8(v35, v35, 8uLL), vpadd_f32(*v35.i8, *v35.i8)).f32[0] + COERCE_FLOAT(HIDWORD(*&v12[v33++]));
                        }

                        while (v36 <= 0.01);
                        if (v34 >= v31)
                        {
LABEL_17:
                          v37 = *(a2 + 4);
                          if (v37 == *(a2 + 8))
                          {
                            v38 = 2 * v37;
                            if (!v37)
                            {
                              v38 = 1;
                            }

                            if (v37 < v38)
                            {
                              v49 = v30;
                              v50 = v38;
                              if (v38)
                              {
                                v39 = v9;
                                v40 = btAlignedAllocInternal(16 * v38, 16);
                                v30 = v49;
                                v9 = v39;
                                v41 = v40;
                                v37 = *(a2 + 4);
                              }

                              else
                              {
                                v41 = 0;
                              }

                              if (v37 >= 1)
                              {
                                v42 = 0;
                                v43 = 16 * v37;
                                do
                                {
                                  *(v41 + v42) = *(*(a2 + 16) + v42);
                                  v42 += 16;
                                }

                                while (v43 != v42);
                              }

                              v44 = *(a2 + 16);
                              if (v44)
                              {
                                if (*(a2 + 24) == 1)
                                {
                                  v45 = v9;
                                  btAlignedFreeInternal(v44);
                                  v30 = v49;
                                  v9 = v45;
                                }
                              }

                              *(a2 + 24) = 1;
                              *(a2 + 16) = v41;
                              *(a2 + 8) = v50;
                              v37 = *(a2 + 4);
                            }
                          }

                          *(*(a2 + 16) + 16 * v37) = v30;
                          ++*(a2 + 4);
                        }
                      }
                    }
                  }
                }
              }

              ++v11;
            }

            while (v2 > v11);
          }

          ++v7;
          v8 = v9;
        }

        while (v9 != v2);
      }

      ++v47;
      ++v48;
      ++v5;
    }

    while (v46 != v2);
  }
}

uint64_t _maxdot_large_sel(const float *a1, const float *a2, unint64_t a3, float *a4)
{
  if ((btGetCpuCapabilities(void)::testedCapabilities & 1) == 0)
  {
    v11 = 0;
    v10 = 4;
    if (!sysctlbyname("hw.optional.neon_hpfp", &v11, &v10, 0, 0) && v11)
    {
      btGetCpuCapabilities(void)::capabilities |= 0x2000u;
    }

    btGetCpuCapabilities(void)::testedCapabilities = 1;
  }

  v8 = _maxdot_large_v1;
  if (btGetCpuCapabilities(void)::capabilities < 0x2000)
  {
    v8 = _maxdot_large_v0;
  }

  _maxdot_large = v8;
  return v8(a1, a2, a3, a4);
}

uint64_t _maxdot_large_v1(const float *a1, float32x4_t *a2, unint64_t a3, float *a4)
{
  v4 = *a2;
  v5 = vdupq_lane_s64(a2->i64[0], 0);
  v6 = vdupq_laneq_s32(*a2, 2);
  v7 = xmmword_21C280330;
  if (a3 >= 8)
  {
    v9.i64[0] = 0x7F0000007FLL;
    v9.i64[1] = 0x7F0000007FLL;
    v8.i64[0] = -1;
    v8.i64[1] = -1;
    v10 = 4;
    v11.i64[0] = 0x400000004;
    v11.i64[1] = 0x400000004;
    v12.i64[0] = 0x800000008;
    v12.i64[1] = 0x800000008;
    do
    {
      v13 = *(a1 + 4);
      v14 = *(a1 + 12);
      v15.i64[0] = *a1;
      v15.i64[1] = *(a1 + 2);
      v16.i64[0] = *(a1 + 4);
      v16.i64[1] = *(a1 + 6);
      v13.i32[0] = *(a1 + 1);
      v14.i32[0] = *(a1 + 5);
      v17 = vmlaq_f32(vpaddq_f32(vmulq_f32(v15, v5), vmulq_f32(v16, v5)), v6, vuzp1q_s32(v13, v14));
      v18 = vcgeq_f32(v9, v17);
      v19 = vmaxnmq_f32(v17, v9);
      v20 = vbslq_s8(v18, v8, v7);
      v21 = *(a1 + 4);
      v22 = *(a1 + 20);
      v23 = *(a1 + 6);
      v24 = *(a1 + 28);
      a1 += 32;
      v16.i64[0] = v21;
      v16.i64[1] = v22.i64[0];
      v25.i64[0] = v23;
      v25.i64[1] = v24.i64[0];
      v22.i32[0] = DWORD2(v21);
      v24.i32[0] = DWORD2(v23);
      v26 = vmlaq_f32(vpaddq_f32(vmulq_f32(v16, v5), vmulq_f32(v25, v5)), v6, vuzp1q_s32(v22, v24));
      v27 = vcgeq_f32(v19, v26);
      v9 = vmaxnmq_f32(v26, v19);
      v8 = vbslq_s8(v27, v20, vaddq_s32(v7, v11));
      v7 = vaddq_s32(v7, v12);
      v28 = v10 + 12;
      v10 += 8;
    }

    while (v28 <= a3);
  }

  else
  {
    v8.i64[0] = -1;
    v8.i64[1] = -1;
    v9.i64[0] = 0x7F0000007FLL;
    v9.i64[1] = 0x7F0000007FLL;
    v10 = 4;
  }

  if (v10 <= a3)
  {
    v29.i64[0] = 0x400000004;
    v29.i64[1] = 0x400000004;
    do
    {
      v30 = *(a1 + 4);
      v31 = *(a1 + 12);
      v32.i64[0] = *a1;
      v32.i64[1] = *(a1 + 2);
      v33.i64[0] = *(a1 + 4);
      v33.i64[1] = *(a1 + 6);
      v30.i32[0] = *(a1 + 1);
      v31.i32[0] = *(a1 + 5);
      a1 += 16;
      v34 = vmlaq_f32(vpaddq_f32(vmulq_f32(v32, v5), vmulq_f32(v33, v5)), v6, vuzp1q_s32(v30, v31));
      v35 = vcgeq_f32(v9, v34);
      v9 = vmaxnmq_f32(v34, v9);
      v8 = vbslq_s8(v35, v8, v7);
      v7 = vaddq_s32(v7, v29);
      v10 += 4;
    }

    while (v10 <= a3);
  }

  if ((a3 & 3) > 1)
  {
    if ((a3 & 3) != 2)
    {
      v42 = *(a1 + 4);
      v43.i64[0] = *a1;
      v43.i64[1] = *(a1 + 2);
      v42.i32[0] = *(a1 + 1);
      v44 = vmlaq_f32(vpaddq_f32(vmulq_f32(v43, v5), vdupq_lane_s64(vmulq_f32(*(a1 + 8), v4).i64[0], 0)), v6, vuzp1q_s32(v42, vdupq_laneq_s32(*(a1 + 8), 2)));
      v45 = vcgeq_f32(v9, v44);
      v9 = vmaxnmq_f32(v44, v9);
      v8 = vbslq_s8(v45, v8, v7);
      goto LABEL_15;
    }

    v38 = *a1;
    v39 = vuzp1q_s32(*a1, *(a1 + 4));
    v38.i64[1] = *(a1 + 2);
    v40 = vmulq_f32(v38, v5);
    v37 = vaddq_f32(vmlaq_f32(vuzp2q_s32(v40, v40), v6, vuzp2q_s32(v39, v39)), vuzp1q_s32(v40, v40));
    goto LABEL_13;
  }

  if ((a3 & 3) != 0)
  {
    v36 = vmulq_f32(*a1, v4);
    v37 = vaddq_f32(vaddq_f32(vdupq_lane_s32(*v36.i8, 0), vdupq_lane_s32(*v36.i8, 1)), vdupq_laneq_s32(v36, 2));
LABEL_13:
    v41 = vcgeq_f32(v9, v37);
    v9 = vmaxnmq_f32(v37, v9);
    v8 = vbslq_s8(v41, v8, v7);
  }

LABEL_15:
  v46 = vextq_s8(v9, v9, 8uLL).u64[0];
  v47 = vcge_f32(*v9.f32, v46);
  v48 = vmaxnm_f32(v46, *v9.f32);
  v49 = vbsl_s8(v47, *v8.i8, *&vextq_s8(v8, v8, 8uLL));
  v50 = vdup_lane_s32(v48, 1);
  *a4 = vmaxnm_f32(v50, v48).u32[0];
  return vbsl_s8(vcge_f32(v48, v50), v49, vdup_lane_s32(v49, 1)).u32[0];
}

float _maxdot_large_v0(const float *a1, float32x4_t *a2, unint64_t a3, float *a4)
{
  v4 = *a2;
  v5 = vdup_laneq_s32(*a2, 2);
  if (a3 >= 8)
  {
    v11 = -1;
    v7 = 0x300000002;
    v6 = 0x100000000;
    v12 = 0x7F0000007FLL;
    v10 = 4;
    v9 = 0x7F0000007FLL;
    v8 = -1;
    do
    {
      v13 = *(a1 + 4);
      v14 = *(a1 + 8);
      v15 = *(a1 + 12);
      v16 = vmul_f32(*v13.i8, *v4.f32);
      v17 = vmul_f32(*v14.i8, *v4.f32);
      v18 = vzip1_s32(*&vextq_s8(*a1, *a1, 8uLL), *&vextq_s8(v13, v13, 8uLL));
      *v13.i8 = vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL));
      *v14.i8 = vmla_f32(vpadd_f32(vmul_f32(*a1, *v4.f32), v16), v5, v18);
      *v15.i8 = vmla_f32(vpadd_f32(v17, vmul_f32(*v15.i8, *v4.f32)), v5, *v13.i8);
      v19 = vcge_f32(v12, *v14.i8);
      *v13.i8 = vcge_f32(v9, *v15.i8);
      v20 = vmaxnm_f32(*v14.i8, v12);
      v21 = vmaxnm_f32(*v15.i8, v9);
      v22 = *(a1 + 16);
      v23 = *(a1 + 20);
      v24 = *(a1 + 24);
      v25 = *(a1 + 28);
      a1 += 32;
      v26 = vmul_f32(*v22.i8, *v4.f32);
      v27 = vmul_f32(*v23.i8, *v4.f32);
      v28 = vmul_f32(*v24.i8, *v4.f32);
      *v22.i8 = vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL));
      *v23.i8 = vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL));
      *v24.i8 = vmla_f32(vpadd_f32(v26, v27), v5, *v22.i8);
      *v25.i8 = vmla_f32(vpadd_f32(v28, vmul_f32(*v25.i8, *v4.f32)), v5, *v23.i8);
      *v22.i8 = vcge_f32(v20, *v24.i8);
      *v23.i8 = vcge_f32(v21, *v25.i8);
      v12 = vmaxnm_f32(*v24.i8, v20);
      v9 = vmaxnm_f32(*v25.i8, v21);
      v11 = vbsl_s8(*v22.i8, vbsl_s8(v19, v11, v6), vadd_s32(v6, 0x400000004));
      v8 = vbsl_s8(*v23.i8, vbsl_s8(*v13.i8, v8, v7), vadd_s32(v7, 0x400000004));
      v6 = vadd_s32(v6, 0x800000008);
      v7 = vadd_s32(v7, 0x800000008);
      v29 = v10 + 12;
      v10 += 8;
    }

    while (v29 <= a3);
  }

  else
  {
    v6 = 0x100000000;
    v7 = 0x300000002;
    v8 = -1;
    v9 = 0x7F0000007FLL;
    v10 = 4;
    v11 = -1;
    v12 = 0x7F0000007FLL;
  }

  for (; v10 <= a3; v10 += 4)
  {
    v30 = *a1;
    v31 = *(a1 + 4);
    v32 = *(a1 + 8);
    v33 = *(a1 + 12);
    a1 += 16;
    v34 = vmul_f32(*v30.i8, *v4.f32);
    v35 = vmul_f32(*v31.i8, *v4.f32);
    v36 = vmul_f32(*v32.i8, *v4.f32);
    *v30.i8 = vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v31, v31, 8uLL));
    *v31.i8 = vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v33, v33, 8uLL));
    *v32.i8 = vmla_f32(vpadd_f32(v34, v35), v5, *v30.i8);
    *v33.i8 = vmla_f32(vpadd_f32(v36, vmul_f32(*v33.i8, *v4.f32)), v5, *v31.i8);
    *v30.i8 = vcge_f32(v12, *v32.i8);
    *v31.i8 = vcge_f32(v9, *v33.i8);
    v12 = vmaxnm_f32(*v32.i8, v12);
    v9 = vmaxnm_f32(*v33.i8, v9);
    v11 = vbsl_s8(*v30.i8, v11, v6);
    v8 = vbsl_s8(*v31.i8, v8, v7);
    v6 = vadd_s32(v6, 0x400000004);
    v7 = vadd_s32(v7, 0x400000004);
  }

  if ((a3 & 3) > 1)
  {
    if ((a3 & 3) == 2)
    {
      v39 = vmla_f32(vpadd_f32(vmul_f32(*a1, *v4.f32), vmul_f32(*(a1 + 4), *v4.f32)), v5, vzip1_s32(*&vextq_s8(*a1, *a1, 8uLL), *&vextq_s8(*(a1 + 4), *(a1 + 4), 8uLL)));
      v40 = vcge_f32(v12, v39);
      v12 = vmaxnm_f32(v39, v12);
      v11 = vbsl_s8(v40, v11, v6);
    }

    else
    {
      v41 = *(a1 + 4);
      v42 = vmul_f32(*a1, *v4.f32);
      v43 = vmul_f32(*v41.i8, *v4.f32);
      v44 = vmulq_f32(*(a1 + 8), v4);
      v45 = vmla_f32(vpadd_f32(v42, v43), v5, vzip1_s32(*&vextq_s8(*a1, *a1, 8uLL), *&vextq_s8(v41, v41, 8uLL)));
      v46 = vadd_f32(vpadd_f32(*v44.i8, *v44.i8), vdup_laneq_s32(v44, 2));
      *v44.i8 = vcge_f32(v12, v45);
      v47 = vcge_f32(v9, v46);
      v12 = vmaxnm_f32(v45, v12);
      v9 = vmaxnm_f32(v46, v9);
      v11 = vbsl_s8(*v44.i8, v11, v6);
      v8 = vbsl_s8(v47, v8, v7);
    }
  }

  else if ((a3 & 3) != 0)
  {
    v37 = vmulq_f32(*a1, v4);
    *v37.i8 = vadd_f32(vdup_laneq_s32(v37, 2), vpadd_f32(*v37.i8, *v37.i8));
    v38 = vcge_f32(v12, *v37.i8);
    v12 = vmaxnm_f32(*v37.i8, v12);
    v11 = vbsl_s8(v38, v11, v6);
  }

  v48 = vmaxnm_f32(v9, v12);
  v49 = vbsl_s8(vcge_f32(v12, v9), v11, v8);
  v50 = vdup_lane_s32(v48, 1);
  LODWORD(result) = vbsl_s8(vcge_f32(v48, v50), v49, vdup_lane_s32(v49, 1)).u32[0];
  *a4 = vmaxnm_f32(v50, v48).u32[0];
  return result;
}

double OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::FVarLevel(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = *(a1 + 8) & 0xFE00 | 0x14;
  *(a1 + 12) = 0;
  *(a1 + 14) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  return result;
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::~FVarLevel(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::resizeComponents(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this)
{
  std::vector<float>::resize(this + 1, ((*(*this + 56) - *(*this + 48)) >> 2));
  v2 = *(this + 6);
  v8 = 0;
  v3 = *this;
  v4 = *(*this + 4);
  v5 = *(this + 7) - v2;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(this + 7) = v2 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ETag>::__append(this + 6, v4 - v5, &v8);
    v3 = *this;
  }

  std::vector<unsigned short>::resize(this + 9, *(v3 + 8));
  std::vector<float>::resize(this + 4, *(*this + 8));
  v6 = ((*(*this + 296) - *(*this + 288)) >> 2);
  v7 = 0;
  std::vector<unsigned short>::resize(this + 15, v6, &v7);
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2, __int16 *a3)
{
  v3 = (a1[1] - *a1) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v3, a3);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::resizeVertexValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this, int a2)
{
  v3 = a2;
  std::vector<float>::resize(this + 6, a2);
  v6 = 0;
  v4 = *(this + 21);
  v5 = *(this + 22) - v4;
  if (v3 <= v5)
  {
    if (v3 < v5)
    {
      *(this + 22) = v4 + v3;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append(this + 21, v3 - v5, &v6);
  }

  if ((*(this + 13) & 1) == 0)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::resize(this + 24, v3);
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::__append(a1, a2 - v2);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::completeTopologyFromFaceValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this, int a2)
{
  v148 = *MEMORY[0x277D85DE8];
  v3 = *(this + 4);
  v4 = v3 >> 2;
  v5 = (v3 >> 2) & 7;
  if (v5)
  {
    v6 = (v3 & 3) != 2;
  }

  else
  {
    v6 = 0;
  }

  v120 = v6;
  *(this + 12) = v5 == 5;
  v119 = (v4 & 6) == 4;
  *(this + 13) = v119;
  v123 = v5;
  v121 = v5 - 3;
  v118 = v5 == 3;
  *(this + 14) = (v4 & 6) == 2;
  v7 = *this;
  v8 = *(*this + 8);
  v126 = 0;
  v127 = 0;
  v125 = 0;
  if (v8)
  {
    std::vector<unsigned short>::__vallocate[abi:nn200100](&v125, v8);
  }

  v9 = ((*(v7 + 296) - *(v7 + 288)) >> 2);
  LOWORD(v128) = 0;
  std::vector<unsigned short>::resize(this + 15, v9, &v128);
  v10 = *this;
  v11 = *(*this + 20);
  v143 = &v146;
  v144 = v11;
  v145 = 16;
  v147 = 0;
  if (v11 <= 0x10)
  {
    v12 = v141;
    v137 = 0;
    v138 = v141;
    v139 = v11;
    v140 = 16;
    v142 = 0;
    v13 = v136;
    __p = 0;
    v133 = v136;
    v134 = v11;
    v135 = 16;
    v128 = v131;
    v129 = v11;
    v130 = 16;
  }

  else
  {
    v147 = operator new(4 * v11);
    v143 = v147;
    v145 = v11;
    v138 = v141;
    v139 = v11;
    v140 = 16;
    v142 = 0;
    v142 = operator new(4 * v11);
    v137 = 0;
    v138 = v142;
    v140 = v11;
    v133 = v136;
    v134 = v11;
    v135 = 16;
    v137 = operator new(2 * v11);
    __p = 0;
    v133 = v137;
    v135 = v11;
    v128 = v131;
    v129 = v11;
    v130 = 16;
    __p = operator new(10 * v11);
    v128 = __p;
    v130 = v11;
    v12 = v138;
    v13 = v133;
    v10 = *this;
  }

  if (*(v10 + 8) < 1)
  {
    v15 = 0;
    goto LABEL_84;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = (2 * (v14 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    v17 = *(v10 + 264);
    v18 = *(v17 + 8 * v14);
    v19 = v143;
    if (v18 >= 1)
    {
      v20 = *(v17 + 4 * v16);
      v21 = (*(v10 + 288) + 4 * v20);
      v22 = (*(v10 + 312) + 2 * v20);
      v23 = *(v10 + 24);
      v24 = *(this + 3);
      v25 = v18;
      v26 = v143;
      do
      {
        v27 = *v21++;
        v28 = *(v23 + 8 * v27 + 4);
        LODWORD(v27) = *v22++;
        *v26 = *(v24 + 4 * (v28 + v27));
        v26 = (v26 + 4);
        --v25;
      }

      while (v25);
    }

    v29 = *(v10 + 336);
    v30 = *(v29 + 4 * v16);
    v31 = *(v29 + 8 * v14);
    v32 = (*(v10 + 360) + 4 * v30);
    v33 = *(*(v10 + 432) + 2 * v14);
    if (v33)
    {
      if (v18 >= 1 && v31 >= 1)
      {
        v41 = 0;
        v42 = *(v10 + 384) + 2 * v30;
        do
        {
          v43 = v32[v41];
          v44 = *this;
          v45 = *(*this + 144);
          v46 = *(v45 + 8 * v43);
          if (v46 >= 2)
          {
            v47 = 0;
            v48 = 0;
            v49 = *(v45 + 8 * v43 + 4);
            v50 = v44[21] + 4 * v49;
            v51 = v44[24] + 2 * v49;
            v52 = (v44[15] + 8 * v43);
            while (v46 != v47)
            {
              v53 = *(v50 + 4 * v47);
              v54 = 2 * v53;
              v55 = v44[3];
              v56 = *(v55 + 8 * v53 + 4);
              v57 = v44[6] + 4 * v56;
              v58 = *(v55 + 4 * v54);
              v59 = *(v51 + 2 * v47);
              v60 = *(this + 3) + 4 * v56;
              v61 = *v52;
              if (*(v42 + 2 * v41) != (v61 != *(v57 + 4 * v59)))
              {
                LODWORD(v59) = v59 + 1;
              }

              if (v59 == v58)
              {
                LODWORD(v59) = 0;
              }

              v62 = *(v60 + 4 * v59);
              if (v47)
              {
                ++v47;
                if (v62 != v48)
                {
                  v63 = v125;
                  *(v125 + v61) = 1;
                  v63[v52[1]] = 1;
                  v64 = *(this + 6);
                  v65 = *(v64 + v43) & 0xFD | (2 * (v14 == v61));
                  *(v64 + v43) = v65;
                  v66 = v65 & 0xFB | (4 * (v14 == v52[1])) | 1;
                  *(v64 + v43) = v66;
                  *(v64 + v43) = v66 & 0xF7 | (8 * *(this + 13));
                  break;
                }
              }

              else
              {
                v47 = 1;
                v48 = v62;
              }
            }
          }

          ++v41;
        }

        while (v41 != v31);
      }
    }

    else if (v18 > (v33 & 4) >> 2)
    {
      v34 = (v33 >> 2) & 1;
      do
      {
        if (v34)
        {
          v35 = v34;
        }

        else
        {
          v35 = v18;
        }

        if (*(v19 + v34) != *(v19 + v35 - 1))
        {
          v36 = v32[v34];
          v37 = *(*this + 120) + 8 * v36;
          v38 = *v37;
          v39 = v125;
          *(v125 + v38) = 1;
          v39[*(v37 + 4)] = 1;
          v40 = *(this + 6);
          LOBYTE(v38) = *(v40 + v36) & 0xFD | (2 * (v14 == v38));
          *(v40 + v36) = v38;
          LOBYTE(v37) = v38 & 0xFB | (4 * (v14 == *(v37 + 4))) | 1;
          *(v40 + v36) = v37;
          *(v40 + v36) = v37 & 0xF7 | (8 * *(this + 13));
        }

        ++v34;
      }

      while (v18 != v34);
    }

    if ((v33 & 4) != 0 && !*(v125 + v14))
    {
      if (*(this + 13) == 1)
      {
        if (v18 < 1)
        {
          goto LABEL_68;
        }

        *(v125 + v14) = 1;
        if (v33)
        {
          if (v31 >= 1)
          {
            do
            {
              v77 = *v32++;
              v76 = v77;
              if ((*(*(*this + 240) + v77) & 2) != 0)
              {
                *(*(this + 6) + v76) |= 8u;
              }

              --v31;
            }

            while (v31);
          }
        }

        else
        {
          *(*(this + 6) + *v32) |= 8u;
          v72 = v32[v31 - 1];
          *(*(this + 6) + v72) |= 8u;
        }
      }

      else if (v18 == 1 && v120)
      {
        *(v125 + v14) = 1;
LABEL_68:
        *v12 = *v19;
        *v13 = 0;
LABEL_69:
        v68 = 1;
        if (v33)
        {
          goto LABEL_70;
        }

        goto LABEL_72;
      }
    }

    *v12 = *v19;
    *v13 = 0;
    if (v18 <= 1)
    {
      goto LABEL_69;
    }

    v67 = 1;
    v68 = 1;
    do
    {
      v69 = *(v19 + v67);
      if (v69 == *(v19 + v67 - 1))
      {
        v13[v67] = v13[v67 - 1];
        goto LABEL_59;
      }

      v13[v67] = v68;
      if (v68 == 2)
      {
        if (*v12 != v69)
        {
          v12[2] = v69;
          v68 = 3;
          goto LABEL_59;
        }

        v70 = v12 + 2;
      }

      else
      {
        if (v68 == 1)
        {
          v12[1] = v69;
          v68 = 2;
          goto LABEL_59;
        }

        v70 = &v12[v68];
        v71 = v12;
        if (!v68)
        {
          goto LABEL_55;
        }
      }

      v71 = v12;
      while (*v71 != v69)
      {
        if (++v71 == v70)
        {
          goto LABEL_57;
        }
      }

LABEL_55:
      if (v71 == v70)
      {
LABEL_57:
        ++v68;
        *v70 = v69;
      }

      else
      {
        v13[v67] = (v71 - v12) >> 2;
      }

LABEL_59:
      ++v67;
    }

    while (v67 != v18);
    if ((v33 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_70:
    if (!*(v125 + v14))
    {
      *(v125 + v14) = v68 > 1;
    }

LABEL_72:
    *(*(this + 9) + 2 * v14) = v68;
    *(*(this + 12) + 4 * v14) = v15;
    v10 = *this;
    if (v68 >= 2 && v18 >= 1)
    {
      v73 = (*(this + 15) + 2 * *(*(v10 + 264) + 4 * v16));
      v74 = v13;
      do
      {
        v75 = *v74++;
        *v73++ = v75;
        --v18;
      }

      while (v18);
    }

    v15 += v68;
    ++v14;
  }

  while (v14 < *(v10 + 8));
LABEL_84:
  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::resizeVertexValues(this, v15);
  v78 = *this;
  if (*(*this + 8) >= 1)
  {
    v79 = 0;
    while (2)
    {
      v80 = (2 * v79) | 1;
      v81 = v78[33];
      v82 = *(v81 + 4 * v80);
      v83 = v78[36];
      v84 = *(v81 + 8 * v79);
      v85 = v78[39];
      if (v84 < 1)
      {
        v86 = 0;
      }

      else
      {
        v86 = *(*(this + 3) + 4 * (*(v78[3] + 8 * *(v83 + 4 * v82) + 4) + *(v85 + 2 * v82)));
      }

      v87 = *(*(this + 9) + 2 * v79);
      v88 = *(this + 12);
      v89 = (*(this + 18) + 4 * *(v88 + 4 * v79));
      *v89 = v86;
      if (!*(v125 + v79))
      {
        goto LABEL_158;
      }

      if (v87 >= 2 && v84 >= 2)
      {
        v90 = *(v81 + 4 * v80);
        v91 = (v85 + 2 * v82 + 2);
        v92 = (v83 + 4 * v82 + 4);
        v93 = (*(this + 15) + 2 * v90 + 2);
        v94 = v84 - 1;
        v95 = 1;
        do
        {
          v96 = *v93++;
          if (v95 == v96)
          {
            v89[v95++] = *(*(this + 3) + 4 * (*(v78[3] + 8 * *v92 + 4) + *v91));
          }

          ++v91;
          ++v92;
          --v94;
        }

        while (v94);
      }

      v124 = *(v88 + 4 * v79);
      v97 = *(this + 21);
      v98 = *(v78[54] + 2 * v79);
      v99 = 1;
      if ((*(this + 13) & 1) == 0 && (v98 & 0x11) == 0)
      {
        if (*(this + 14) == 1)
        {
          v99 = v87 > 2;
          if (v87 <= 2 && (v118 || v119))
          {
            if (v87 != 1)
            {
              v99 = 0;
              goto LABEL_105;
            }

LABEL_104:
            v99 = (v98 & 4) == 0;
          }
        }

        else
        {
          v99 = 0;
          if (v121 <= 2 && v87 == 1)
          {
            goto LABEL_104;
          }
        }
      }

LABEL_105:
      v100 = v128;
      bzero(v128, 10 * v87);
      OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::gatherValueSpans(this, v79, v100);
      if ((v99 & 1) == 0 && *(this + 14) == 1 && v87 == 2)
      {
        v101 = a2;
        v99 = v100[4] || v100[9] || v100[2] || v100[7] != 0;
        if (v123 == 3)
        {
          v103 = *v100;
          if (v103 != 1)
          {
            LOBYTE(v103) = v100[5] == 1;
          }

          v99 |= v103;
        }

        if ((v100[3] != 0) != (v100[8] != 0))
        {
          v102 = 48;
        }

        else
        {
          v102 = 8;
        }

LABEL_121:
        v104 = (v97 + v124);
        v105 = v100 + 4;
        v106 = 2;
        while (2)
        {
          *v104 = 1;
          if (*(v105 - 2))
          {
            *v104 = 5;
            goto LABEL_124;
          }

          v107 = *(v105 - 4);
          if (!*(v105 - 4))
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::completeTopologyFromFaceValues();
          }

          if ((v99 & 1) != 0 || *v105)
          {
            v108 = v107 == 1;
            if (v107 == v101)
            {
              v109 = 1;
            }

            else
            {
              v109 = 3;
            }

            v110 = 1;
            goto LABEL_133;
          }

          v110 = v123 != 0;
          v108 = v107 == 1;
          if (v107 != 1)
          {
            v110 = 0;
          }

          v111 = 3;
          if (v107 == v101)
          {
            v109 = 1;
          }

          else
          {
            v109 = 3;
          }

          if (v110)
          {
LABEL_133:
            v111 = 1;
          }

          if (v108)
          {
            v109 = v111;
          }

          *v104 = v109;
          v112 = v109 | ((*v105 != 0) << 6);
          *v104 = v112;
          if (*v105)
          {
            LOBYTE(v112) = v112 | ((*(v105 - 4) - *v105 > 1) << 7);
            *v104 = v112;
            if (!v110)
            {
              goto LABEL_149;
            }
          }

          else if (v110)
          {
            *v104 = v112 | ((*(v105 - 4) > 1u) << 7);
          }

          else
          {
            v112 = v112 & 0xFFFFFF7F | (((v109 >> 1) & 1) << 7);
            *v104 = v112;
LABEL_149:
            if (*(v105 - 1) | v98 & 0x20)
            {
              v113 = 16;
            }

            else
            {
              v113 = v102;
            }

            *v104 = v112 | v113;
            if ((*(this + 13) & 1) == 0)
            {
              v114 = *(this + 24) + 4 * *(*(this + 12) + 4 * v79);
              v115 = *(v105 - 3);
              *(v114 + v106 - 2) = v115;
              v116 = *(v105 - 4);
              if (v106 == 2 && v115)
              {
                v117 = v115 + ~v84 + v116;
              }

              else
              {
                v117 = v115 + v116 - 1;
              }

              *(v114 + v106) = v117;
            }
          }

LABEL_124:
          v106 += 4;
          ++v104;
          v105 += 5;
          if (!--v87)
          {
            goto LABEL_158;
          }

          continue;
        }
      }

      v101 = a2;
      if (v87)
      {
        v102 = 8;
        goto LABEL_121;
      }

LABEL_158:
      ++v79;
      v78 = *this;
      if (v79 >= *(*this + 8))
      {
        break;
      }

      continue;
    }
  }

  operator delete(__p);
  operator delete(v137);
  operator delete(v142);
  operator delete(v147);
  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::gatherValueSpans(void *result, int a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(result[9] + 2 * a2);
  if (*(*(*result + 432) + 2 * a2))
  {
    if (*(result[9] + 2 * a2))
    {
      v19 = (a3 + 4);
      do
      {
        *(v19 - 2) = 0;
        *v19 = 1;
        v19 += 5;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v5 = v3[42];
    v6 = (8 * ((2 * a2) >> 1)) | 4;
    v7 = (v3[45] + 4 * *(v5 + v6));
    v8 = 8 * a2;
    v9 = *(v5 + v8);
    v10 = v3[33];
    v11 = *(v10 + v8);
    v12 = *(v10 + v8);
    if (v4 != 1 || v9 > v12)
    {
      v14 = result[15] + 2 * *(v10 + v6);
      *a3 = 1;
      v15 = v14 + 2 * v11;
      if (v9 > v11 || *(v15 - 2))
      {
        goto LABEL_33;
      }

      v16 = *v7;
      if (*(result[6] + v16))
      {
        v18 = 4;
      }

      else
      {
        v17 = *(v3[30] + v16);
        if ((v17 & 4) != 0)
        {
          v18 = 8;
        }

        else
        {
          if ((v17 & 8) == 0)
          {
LABEL_33:
            if (v11 >= 2)
            {
              v25 = 0;
              v26 = v7 + 1;
              v27 = v11 - 1;
              do
              {
                v28 = (v14 + 2 * v25);
                v29 = v28[1];
                if (v29 == *v28)
                {
                  v30 = v26[v25];
                  if (*(result[6] + v30))
                  {
                    ++*(a3 + 10 * v28[1] + 4);
                  }

                  else
                  {
                    v31 = *(v3[30] + v30);
                    if ((v31 & 4) != 0)
                    {
                      ++*(a3 + 10 * v28[1] + 8);
                    }

                    else if ((v31 & 8) != 0)
                    {
                      ++*(a3 + 10 * v28[1] + 6);
                    }
                  }
                }

                else
                {
                  if (*(a3 + 10 * v28[1]))
                  {
                    ++*(a3 + 10 * v28[1] + 4);
                    v29 = v28[1];
                  }

                  *(a3 + 10 * v29 + 2) = v25 + 1;
                }

                ++*(a3 + 10 * v28[1]);
                ++v25;
              }

              while (v27 != v25);
            }

            if (!*(v15 - 2) && v9 <= v12)
            {
              --*(a3 + 4);
            }

            return result;
          }

          v18 = 6;
        }
      }

      ++*(a3 + v18);
      goto LABEL_33;
    }

    *a3 = 0;
    if (v9 > 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = result[6];
      do
      {
        v23 = v7[v21];
        if (*(v22 + v23))
        {
          if (v20)
          {
            *(a3 + 4) = 1;
            break;
          }

          *a3 = v12;
          *(a3 + 2) = v21;
          v20 = v12;
        }

        else
        {
          v24 = *(v3[30] + v23);
          if ((v24 & 4) != 0)
          {
            ++*(a3 + 8);
          }

          else if ((v24 & 8) != 0)
          {
            ++*(a3 + 6);
          }
        }

        ++v21;
      }

      while (v9 != v21);
    }

    *a3 = v12;
  }

  return result;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(void *this, int a2, unsigned int a3, int *a4)
{
  v4 = *(*(*this + 264) + 8 * a2 + 4);
  v5 = *(*this + 288) + 4 * v4;
  v6 = *(*this + 312) + 2 * v4;
  v7 = (this[24] + 4 * *(this[12] + 4 * a2) + 4 * a3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v5 + 4 * v8);
  v11 = *(*this + 24);
  v12 = *(v11 + 8 * v10);
  v13 = this[3];
  v14 = v13 + 4 * *(v11 + 4 * ((2 * v10) | 1));
  v15 = *(v5 + 4 * v9);
  v16 = *(v11 + 8 * v15);
  v17 = *(v11 + 4 * ((2 * v15) | 1));
  v18 = *(v6 + 2 * v8);
  v19 = *(v6 + 2 * v9);
  v20 = v13 + 4 * v17;
  if (!v19)
  {
    v19 = v16;
  }

  if (v12 - 1 == v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18 + 1;
  }

  *a4 = *(v14 + 4 * v21);
  a4[1] = *(v20 + 4 * v19 - 4);
  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::initializeFaceValuesFromVertexFaceSiblings(void *this)
{
  v1 = *this;
  v2 = *(*this + 48);
  v3 = *(*this + 56) - v2;
  if ((v3 >> 2) >= 1)
  {
    v4 = this[12];
    v5 = this[3];
    v6 = (v3 >> 2) & 0x7FFFFFFF;
    do
    {
      v7 = *v2++;
      *v5++ = *(v4 + 4 * v7);
      --v6;
    }

    while (v6);
  }

  v8 = *(v1 + 8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = this[9];
    do
    {
      if (*(v10 + 2 * v9) >= 2u)
      {
        v11 = (*(v1 + 264) + 8 * v9);
        v12 = *v11;
        if (v12 >= 1)
        {
          v13 = v11[1];
          v14 = (*(v1 + 288) + 4 * v13);
          v15 = (*(v1 + 312) + 2 * v13);
          v16 = (this[15] + 2 * v13);
          do
          {
            v18 = *v16++;
            v17 = v18;
            if (v18)
            {
              v19 = *(*(v1 + 24) + 8 * *v14 + 4) + *v15;
              *(this[3] + 4 * v19) += v17;
            }

            ++v15;
            ++v14;
            --v12;
          }

          while (v12);
          v8 = *(v1 + 8);
        }
      }

      ++v9;
    }

    while (v9 < v8);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(void *this, int a2, int a3, int *a4)
{
  v4 = *this;
  v5 = (*(*this + 120) + 8 * a2);
  v6 = *v5;
  if (*(this[9] + 2 * v5[1]) + *(this[9] + 2 * v6) < 3)
  {
    if (*(v4 + 12) < 1)
    {
      v18 = this[12];
      v19 = this[18];
      *a4 = *(v19 + 4 * *(v18 + 4 * v6));
      v17 = *(v19 + 4 * *(v18 + 4 * v5[1]));
    }

    else
    {
      v16 = this[12];
      *a4 = *(v16 + 4 * v6);
      v17 = *(v16 + 4 * v5[1]);
    }

    a4[1] = v17;
  }

  else
  {
    v7 = *(*(v4 + 144) + 8 * a2 + 4);
    v8 = *(*(v4 + 168) + 4 * v7 + 4 * a3);
    v9 = *(*(v4 + 192) + 2 * v7 + 2 * a3);
    v10 = *(v4 + 24);
    LODWORD(v7) = *(v10 + 8 * v8);
    v11 = (2 * v8) | 1;
    v12 = this[3] + 4 * *(v10 + 4 * v11);
    v13 = *(v12 + 4 * v9);
    *a4 = v13;
    if (v9 + 1 < v7)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v12 + 4 * v14);
    a4[1] = v15;
    if (*v5 != *(*(v4 + 48) + 4 * *(v10 + 4 * v11) + 4 * v9))
    {
      *a4 = v15;
      a4[1] = v13;
    }
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(void *this, int a2, int *a3)
{
  v3 = *this;
  v4 = *(*this + 336);
  v5 = *(v4 + 8 * a2);
  if (v5 >= 1)
  {
    v6 = (8 * ((2 * a2) >> 1)) | 4;
    v7 = *(v4 + v6);
    v8 = (*(v3 + 360) + 4 * v7);
    v9 = (*(v3 + 384) + 2 * v7);
    v10 = *(*(v3 + 264) + v6);
    v11 = *(v3 + 288) + 4 * v10;
    v12 = *(v3 + 312) + 2 * v10;
    v13 = *(*(v3 + 432) + 2 * a2);
    v14 = *(v3 + 12);
    v15 = (v5 - 1);
    v16 = v15 - 1;
    v17 = this[6];
    v18 = v11;
    v19 = v12;
    v20 = v15;
    v21 = a3;
    do
    {
      v23 = *v8++;
      v22 = v23;
      if (*(v17 + v23))
      {
        OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues();
      }

      v24 = 2 * v22;
      v25 = *(*(v3 + 120) + 8 * v22 + 4 * (*v9 == 0));
      if (*(this[9] + 2 * v25) == 1)
      {
        v26 = (this[12] + 4 * v25);
        if (!v14)
        {
          v26 = (this[18] + 4 * *v26);
        }

        v27 = *v26;
      }

      else if (v13)
      {
        v33 = *(*(v3 + 144) + 4 * (v24 | 1));
        v34 = *(*(v3 + 168) + 4 * v33);
        v35 = *(*(v3 + 192) + 2 * v33);
        v36 = *(v3 + 24);
        v37 = *(v36 + 8 * v34 + 4);
        v38 = *(v3 + 48) + 4 * v37;
        v39 = this[3] + 4 * v37;
        if (v25 == *(v38 + 4 * v35))
        {
          v27 = *(v39 + 4 * v35);
        }

        else
        {
          if (*(v36 + 8 * v34) - 1 == v35)
          {
            v46 = 0;
          }

          else
          {
            v46 = v35 + 1;
          }

          v27 = *(v39 + 4 * v46);
        }
      }

      else
      {
        if ((v13 & 4) != 0 && !v20)
        {
          v28 = *(v11 + 4 * v16);
          v29 = *(v3 + 24);
          v30 = *(v29 + 8 * v28);
          v31 = this[3] + 4 * *(v29 + 4 * ((2 * v28) | 1));
          v32 = *(v12 + 2 * v16);
          if (!*(v12 + 2 * v16))
          {
            v32 = v30;
          }

          a3[v15] = *(v31 + 4 * v32 - 4);
          goto LABEL_9;
        }

        v40 = *v18;
        v41 = *(v3 + 24);
        v42 = *(v41 + 8 * v40);
        v43 = this[3] + 4 * *(v41 + 4 * ((2 * v40) | 1));
        v44 = *v19;
        if (v42 - 1 == v44)
        {
          v45 = 0;
        }

        else
        {
          v45 = v44 + 1;
        }

        v27 = *(v43 + 4 * v45);
      }

      *v21 = v27;
LABEL_9:
      ++v21;
      --v20;
      ++v19;
      ++v18;
      ++v9;
      --v5;
    }

    while (v5);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags(void *result, int a2, uint64_t a3)
{
  v3 = *(*result + 24);
  v4 = *(v3 + 8 * a2);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(v3 + 8 * a2 + 4);
    v7 = result[3] + 4 * v6;
    v8 = *(*result + 48) + 4 * v6;
    do
    {
      v9 = *(v7 + 4 * v5);
      v10 = result[18];
      v11 = v9;
      if (*(*result + 12) <= 0)
      {
        v12 = *(result[12] + 4 * *(v8 + 4 * v5));
        v11 = v12 - 1;
        v13 = (v10 + 4 * v12);
        do
        {
          v14 = *v13++;
          ++v11;
        }

        while (v14 != v9);
      }

      if (*(v10 + 4 * v11) != v9)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags();
      }

      *(a3 + v5++) = *(result[21] + v11);
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this, int a2)
{
  v2 = *this;
  v3 = *(*this + 24);
  v4 = *(v3 + 8 * a2);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  v7 = *(v3 + 8 * a2 + 4);
  v8 = *(this + 3) + 4 * v7;
  v9 = *(v2 + 48) + 4 * v7;
  v10 = *(v2 + 12);
  v11 = *(this + 18);
  do
  {
    v12 = *(v8 + 4 * v5);
    v13 = v12;
    if (v10 <= 0)
    {
      v14 = *(*(this + 12) + 4 * *(v9 + 4 * v5));
      v13 = v14 - 1;
      v15 = (v11 + 4 * v14);
      do
      {
        v16 = *v15++;
        ++v13;
      }

      while (v16 != v12);
    }

    if (*(v11 + 4 * v13) != v12)
    {
      OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag();
    }

    v6 = *(*(this + 21) + v13) | v6;
    ++v5;
  }

  while (v5 != v4);
  return v6;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ETag>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 2 * a2;
      v17 = *a3;
      v18 = v14 + 8;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21C27F640)));
        if (vuzp1_s8(vuzp1_s16(v21, *v15.i8), *v15.i8).u8[0])
        {
          *(v19 - 4) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v15), *&v15).i8[1])
        {
          *(v19 - 3) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21C27F630)))), *&v15).i8[2])
        {
          *(v19 - 2) = v17;
          *(v19 - 1) = v17;
        }

        v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21C2A1A10)));
        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i32[1])
        {
          *v19 = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i8[5])
        {
          v19[1] = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21C2A1A00))))).i8[6])
        {
          v19[2] = v17;
          v19[3] = v17;
        }

        v12 += 8;
        v19 += 8;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v7 >> 1;
    v9 = v5 - *a1;
    if (v9 <= a2 + (v7 >> 1))
    {
      v10 = a2 + (v7 >> 1);
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v11);
    }

    v23 = 0;
    v24 = 2 * v8;
    v25 = 2 * v8 + 2 * a2;
    v26 = *a3;
    v27 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v27 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v29 = vdupq_n_s64(v27);
    v30 = (v24 + 8);
    do
    {
      v31 = vdupq_n_s64(v23);
      v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_21C27F640)));
      if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
      {
        *(v30 - 4) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
      {
        *(v30 - 3) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_21C27F630)))), *&v29).i8[2])
      {
        *(v30 - 2) = v26;
        *(v30 - 1) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_21C2A1A10)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i32[1])
      {
        *v30 = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i8[5])
      {
        v30[1] = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_21C2A1A00))))).i8[6])
      {
        v30[2] = v26;
        v30[3] = v26;
      }

      v23 += 8;
      v30 += 8;
    }

    while (v28 != v23);
    v34 = *(a1 + 8) - *a1;
    v35 = v24 - v34;
    memcpy((v24 - v34), *a1, v34);
    v36 = *a1;
    *a1 = v35;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 2);
    if (v7 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v9);
    }

    v10 = (4 * (v6 >> 2));
    bzero(v10, 4 * a2);
    v11 = &v10[4 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<unsigned short>::__vallocate[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(OpenSubdiv::v3_1_1::Sdc *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Sdc::staticTraitsTable();
  }
}

uint64_t OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetTopologicalSplitType(OpenSubdiv::v3_1_1::Sdc *a1)
{
  v1 = a1;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  return LODWORD(_MergedGlobals_7[3 * v1 + 2]);
}

uint64_t OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetRegularFaceSize(OpenSubdiv::v3_1_1::Sdc *a1)
{
  v1 = a1;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  return HIDWORD(_MergedGlobals_7[3 * v1 + 2]);
}

uint64_t OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetRegularVertexValence(OpenSubdiv::v3_1_1::Sdc *a1)
{
  v1 = a1;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  return LODWORD(_MergedGlobals_7[3 * v1 + 3]);
}

uint64_t OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetLocalNeighborhoodSize(OpenSubdiv::v3_1_1::Sdc *a1)
{
  v1 = a1;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  return HIDWORD(_MergedGlobals_7[3 * v1 + 3]);
}

void OpenSubdiv::v3_1_1::Sdc::staticTraitsTable()
{
  if (__cxa_guard_acquire(&_MergedGlobals_7))
  {
    qword_27CDDB870 = "bilinear";
    xmmword_27CDDB878 = xmmword_21C2A47C0;
    qword_27CDDB888 = "catmark";
    *algn_27CDDB890 = xmmword_21C2A47D0;
    qword_27CDDB8A0 = "loop";
    xmmword_27CDDB8A8 = xmmword_21C2A47E0;

    __cxa_guard_release(&_MergedGlobals_7);
  }
}

uint64_t OpenSubdiv::v3_1_1::Osd::createBuffer(OpenSubdiv::v3_1_1::Osd *this, const void *a2, id *a3, MTLContext *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [a3[1] commandBuffer];
  v9 = [v8 blitCommandEncoder];
  v10 = [*a3 newBufferWithBytes:this length:a2 options:0];
  v11 = [*a3 newBufferWithLength:a2 options:32];
  [v9 copyFromBuffer:v10 sourceOffset:0 toBuffer:v11 destinationOffset:0 size:a2];
  [v9 endEncoding];
  [v8 commit];
  [v8 waitUntilCompleted];

  objc_autoreleasePoolPop(v7);
  return v11;
}

uint64_t OpenSubdiv::v3_1_1::Far::StencilTable::StencilTable(uint64_t a1, int a2, uint64_t *a3, void *a4, void *a5, void *a6, int a7, unint64_t a8)
{
  *a1 = &unk_282DCB388;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

void OpenSubdiv::v3_1_1::Far::anonymous namespace::copyStencilData(int a1, int a2, unint64_t a3, uint64_t *a4, std::vector<int> *this, void *a6, std::vector<int> *a7, void *a8, std::vector<int> *a9, void *a10, std::vector<int> *a11, void *a12, std::vector<int> *a13, void *a14, std::vector<int> *a15, void *a16, std::vector<int> *a17, void *a18, std::vector<int> *a19, void *a20, std::vector<int> *a21)
{
  v33 = a2;
  if (a2)
  {
    v24 = 0;
  }

  else
  {
    v24 = a3;
  }

  std::vector<float>::resize(this, (a4[1] - *a4) >> 2);
  v35 = a6;
  v38 = a7;
  std::vector<float>::resize(a7, (a6[1] - *a6) >> 2);
  std::vector<float>::resize(a9, (a8[1] - *a8) >> 2);
  std::vector<float>::resize(a11, (a10[1] - *a10) >> 2);
  if (a13)
  {
    std::vector<float>::resize(a13, (a12[1] - *a12) >> 2);
  }

  if (a15)
  {
    std::vector<float>::resize(a15, (a14[1] - *a14) >> 2);
  }

  if (a17)
  {
    std::vector<float>::resize(a17, (a16[1] - *a16) >> 2);
  }

  if (a19)
  {
    std::vector<float>::resize(a19, (a18[1] - *a18) >> 2);
  }

  if (a21)
  {
    std::vector<float>::resize(a21, (a20[1] - *a20) >> 2);
  }

  v25 = *a4;
  if (v24 >= (a4[1] - *a4) >> 2)
  {
    v28 = 0;
    v27 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      if (((v24 == a1) & v33) != 0)
      {
        v29 = a3;
      }

      else
      {
        v29 = v24;
      }

      v30 = *(*v35 + 4 * v29);
      v31 = *(v25 + 4 * v29);
      this->__begin_[v27] = v26;
      v38->__begin_[v27] = v30;
      memcpy(&a9->__begin_[v26], (*a8 + 4 * v31), 4 * v30);
      memcpy(&a11->__begin_[v26], (*a10 + 4 * v31), 4 * v30);
      if (a13 && a13->__begin_ != a13->__end_)
      {
        memcpy(&a13->__begin_[v26], (*a12 + 4 * v31), 4 * v30);
      }

      if (a15 && a15->__begin_ != a15->__end_)
      {
        memcpy(&a15->__begin_[v26], (*a14 + 4 * v31), 4 * v30);
      }

      if (a17 && a17->__begin_ != a17->__end_)
      {
        memcpy(&a17->__begin_[v26], (*a16 + 4 * v31), 4 * v30);
      }

      if (a19 && a19->__begin_ != a19->__end_)
      {
        memcpy(&a19->__begin_[v26], (*a18 + 4 * v31), 4 * v30);
      }

      if (a21 && a21->__begin_ != a21->__end_)
      {
        memcpy(&a21->__begin_[v26], (*a20 + 4 * v31), 4 * v30);
      }

      v26 += v30;
      ++v27;
      v28 += v30;
      v24 = v29 + 1;
      v25 = *a4;
    }

    while (v29 + 1 < (a4[1] - *a4) >> 2);
  }

  std::vector<float>::resize(this, v27);
  std::vector<float>::resize(v38, v27);
  std::vector<float>::resize(a9, v28);
  if (a13 && a13->__begin_ != a13->__end_)
  {
    std::vector<float>::resize(a13, v28);
  }

  if (a15 && a15->__begin_ != a15->__end_)
  {
    std::vector<float>::resize(a15, v28);
  }

  if (a17 && a17->__begin_ != a17->__end_)
  {
    std::vector<float>::resize(a17, v28);
  }

  if (a19 && a19->__begin_ != a19->__end_)
  {
    std::vector<float>::resize(a19, v28);
  }

  if (a21 && a21->__begin_ != a21->__end_)
  {

    std::vector<float>::resize(a21, v28);
  }
}

void OpenSubdiv::v3_1_1::Far::StencilTable::~StencilTable(OpenSubdiv::v3_1_1::Far::StencilTable *this)
{
  OpenSubdiv::v3_1_1::Far::StencilTable::~StencilTable(this);

  JUMPOUT(0x21CF07610);
}

{
  *this = &unk_282DCB388;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

void OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::~StencilBuilder(OpenSubdiv::v3_1_1::Far::internal::WeightTable **this)
{
  v1 = *this;
  if (v1)
  {
    OpenSubdiv::v3_1_1::Far::internal::WeightTable::~WeightTable(v1);
    MEMORY[0x21CF07610]();
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::GetNumVertsInStencil(OpenSubdiv::v3_1_1::Far::internal::StencilBuilder *this, unint64_t a2)
{
  v2 = *(*this + 216);
  if (((*(*this + 224) - v2) >> 2) - 1 >= a2)
  {
    return *(v2 + 4 * a2);
  }

  else
  {
    return 0;
  }
}

void OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(uint64_t a1, uint64_t a2, float a3)
{
  if (a3 != 0.0)
  {
    OpenSubdiv::v3_1_1::Far::internal::WeightTable::AddWithWeight<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(**a1, *(a2 + 8), *(a1 + 8), **a1, a3);
  }
}

void OpenSubdiv::v3_1_1::Far::internal::WeightTable::AddWithWeight<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(uint64_t a1, int a2, int a3, uint64_t a4, float a5)
{
  if (*(a1 + 248) <= a2)
  {
    v11 = *(*(a1 + 216) + 4 * a2);
    if (v11 >= 1)
    {
      v12 = *(*(a1 + 192) + 4 * a2);
      v13 = v12 + v11;
      do
      {
        v14 = *(*(a1 + 24) + 4 * v12);
        if (v14 >= *(a1 + 248))
        {
          OpenSubdiv::v3_1_1::Far::internal::WeightTable::AddWithWeight<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>();
        }

        OpenSubdiv::v3_1_1::Far::internal::WeightTable::merge<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(a1, v14, a3, *(a1 + 244), *(a1 + 240), a4, *(*(a4 + 48) + 4 * v12++), a5);
      }

      while (v12 < v13);
    }
  }

  else
  {
    v10 = *(a1 + 240);
    v9 = *(a1 + 244);

    OpenSubdiv::v3_1_1::Far::internal::WeightTable::merge<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(a1, a2, a3, v9, v10, a4, a5, 1.0);
  }
}

void OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(uint64_t a1, unsigned int **a2, float a3)
{
  if (a3 != 0.0)
  {
    v3 = **a2;
    if (v3 >= 1)
    {
      v6 = a2[1];
      v7 = a2[2];
      do
      {
        if (*v7 != 0.0)
        {
          OpenSubdiv::v3_1_1::Far::internal::WeightTable::AddWithWeight<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(**a1, *v6, *(a1 + 8), **a1, *v7 * a3);
        }

        ++v6;
        ++v7;
        --v3;
      }

      while (v3);
    }
  }
}

OpenSubdiv::v3_1_1::Far::internal::WeightTable *OpenSubdiv::v3_1_1::Far::internal::WeightTable::WeightTable(OpenSubdiv::v3_1_1::Far::internal::WeightTable *this, int a2, int a3, char a4)
{
  *(this + 3) = 0u;
  v7 = (this + 48);
  v8 = 2 * a2;
  if (a2 >= 2621440)
  {
    v8 = 5242880;
  }

  *(this + 12) = 0uLL;
  v9 = (this + 192);
  *(this + 30) = 0;
  *(this + 13) = 0uLL;
  *(this + 14) = 0uLL;
  *(this + 10) = 0uLL;
  *(this + 11) = 0uLL;
  *(this + 8) = 0uLL;
  *(this + 9) = 0uLL;
  *(this + 6) = 0uLL;
  *(this + 7) = 0uLL;
  *(this + 4) = 0uLL;
  *(this + 5) = 0uLL;
  *(this + 1) = 0uLL;
  *(this + 2) = 0uLL;
  *this = 0uLL;
  *(this + 62) = a2;
  if (v8 <= a2)
  {
    v8 = a2;
  }

  v10 = v8;
  *(this + 252) = a4;
  std::vector<unsigned int>::reserve(this, v8);
  std::vector<unsigned int>::reserve(this + 1, v10);
  std::vector<unsigned int>::reserve(v7, v10);
  if (a3)
  {
    std::vector<float>::resize(this + 1, a2);
    std::vector<float>::resize(v7, a2);
    std::vector<float>::resize(this, a2);
    std::vector<float>::resize(v9, a2);
    std::vector<float>::resize(this + 9, a2);
    v11 = *(this + 3);
    if (a2 >= 1)
    {
      v12 = 0;
      v13 = *(this + 24);
      v14 = *(this + 27);
      v15 = *this;
      v16 = *(this + 6);
      do
      {
        *(v13 + 4 * v12) = v12;
        *(v14 + 4 * v12) = 1;
        *(v15 + 4 * v12) = v12;
        *(v11 + 4 * v12) = v12;
        *(v16 + 4 * v12++) = 1065353216;
      }

      while (a2 != v12);
    }

    v17 = (*(this + 4) - v11) >> 2;
    *(this + 60) = v17;
    *(this + 61) = v17 - 1;
  }

  return this;
}

void OpenSubdiv::v3_1_1::Far::internal::WeightTable::~WeightTable(OpenSubdiv::v3_1_1::Far::internal::WeightTable *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    *(this + 16) = v6;
    operator delete(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    *(this + 13) = v7;
    operator delete(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    *(this + 10) = v8;
    operator delete(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    *(this + 7) = v9;
    operator delete(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    *(this + 4) = v10;
    operator delete(v10);
  }

  v11 = *this;
  if (*this)
  {
    *(this + 1) = v11;
    operator delete(v11);
  }
}

float OpenSubdiv::v3_1_1::Far::internal::WeightTable::merge<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, float a7, float a8)
{
  if (*(a1 + 252) == 1 && *a1 != *(a1 + 8) && (*(*a1 + 4 * a4) == a3 ? (v8 = a4 < a5) : (v8 = 0), v8))
  {
    v9 = a4;
    while (*(*(a1 + 24) + 4 * v9) != a2)
    {
      if (a5 == ++v9)
      {
        goto LABEL_11;
      }
    }

    v11 = *(a6 + 48);
    result = (a7 * a8) + *(v11 + 4 * v9);
    *(v11 + 4 * v9) = result;
  }

  else
  {
LABEL_11:
    OpenSubdiv::v3_1_1::Far::internal::WeightTable::add<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(a1, a2, a3, a6, a7 * a8);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Far::internal::WeightTable::add<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(uint64_t a1, int a2, int a3, uint64_t a4, float a5)
{
  v16 = a3;
  v17 = a2;
  v9 = *(a1 + 8);
  if (*a1 == v9 || *(v9 - 4) != a3)
  {
    v13 = *(a1 + 192);
    v12 = (a1 + 192);
    if (((*(a1 + 200) - v13) >> 2) <= a3)
    {
      v14 = a3 + 1;
      std::vector<float>::resize(v12, v14);
      std::vector<float>::resize((a1 + 216), v14);
      v13 = *(a1 + 192);
    }

    v15 = (*(a1 + 32) - *(a1 + 24)) >> 2;
    v11 = a3;
    *(v13 + 4 * a3) = v15;
    v10 = *(a1 + 216);
    *(v10 + 4 * a3) = 0;
    *(a1 + 244) = v15;
  }

  else
  {
    v10 = *(a1 + 216);
    v11 = a3;
  }

  ++*(a1 + 240);
  ++*(v10 + 4 * v11);
  std::vector<int>::push_back[abi:nn200100](a1, &v16);
  std::vector<int>::push_back[abi:nn200100]((a1 + 24), &v17);
  v18 = a5;
  std::vector<float>::push_back[abi:nn200100]((a4 + 48), &v18);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::BuilderContext(uint64_t a1, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  OpenSubdiv::v3_1_1::Far::PtexIndices::PtexIndices((a1 + 32), a2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 24) = 1;
  if ((*(a1 + 9) & 0x10) != 0)
  {
    v5 = *(a1 + 12);
    if (v5 == -1)
    {
      std::vector<float>::resize((a1 + 144), ((*(**(*a1 + 40) + 464) - *(**(*a1 + 40) + 456)) >> 3));
      v6 = *(a1 + 144);
      v7 = *(a1 + 152) - v6;
      if ((v7 >> 2) >= 1)
      {
        v8 = 0;
        v9 = vdupq_n_s64(((v7 >> 2) & 0x7FFFFFFF) - 1);
        v10 = xmmword_21C27F630;
        v11 = xmmword_21C27F640;
        v12 = (v6 + 8);
        v13 = vdupq_n_s64(4uLL);
        do
        {
          v14 = vmovn_s64(vcgeq_u64(v9, v11));
          if (vuzp1_s16(v14, *v9.i8).u8[0])
          {
            *(v12 - 2) = v8;
          }

          if (vuzp1_s16(v14, *&v9).i8[2])
          {
            *(v12 - 1) = v8 + 1;
          }

          if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
          {
            *v12 = v8 + 2;
            v12[1] = v8 + 3;
          }

          v8 += 4;
          v10 = vaddq_s64(v10, v13);
          v11 = vaddq_s64(v11, v13);
          v12 += 4;
        }

        while ((((v7 >> 2) + 3) & 0xFFFFFFFC) != v8);
      }
    }

    else
    {
      std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>((a1 + 144), *(a1 + 16), (*(a1 + 16) + 4 * v5), v5);
    }
  }

  return a1;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherLinearPatchPoints(void *a1, _DWORD *a2, int *a3, unsigned int a4)
{
  v6 = a3[1];
  v7 = *(*(*a1 + 40) + 8 * v6);
  if ((a4 & 0x80000000) != 0)
  {
    v8 = *(a1[12] + 4 * v6);
  }

  else
  {
    v8 = *(*(a1[15] + 24 * a4) + 4 * v6);
    v9 = *(a1[18] + 4 * a4);
    if ((v9 & 0x80000000) == 0)
    {
      FaceFVarValues = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceFVarValues(v7, *a3, v9);
      goto LABEL_6;
    }
  }

  v12 = *a3;
  v13 = *(v7 + 3);
  FaceFVarValues = (*(v7 + 6) + 4 * *(v13 + 8 * v12 + 4));
  v11 = *(v13 + 8 * v12);
LABEL_6:
  if (v11 >= 1)
  {
    v14 = v11;
    do
    {
      v15 = *FaceFVarValues++;
      *a2++ = v15 + v8;
      --v14;
    }

    while (v14);
  }

  return v11;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(void *a1, uint64_t a2, int *a3, int a4, unsigned int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3[1];
  v8 = *(*(*a1 + 40) + 8 * v7);
  if ((a5 & 0x80000000) != 0)
  {
    v9 = a1 + 12;
    v10 = -1;
  }

  else
  {
    v9 = (a1[15] + 24 * a5);
    v10 = *(a1[18] + 4 * a5);
  }

  v11 = *(*v9 + 4 * v7);
  if (!a4)
  {
    goto LABEL_8;
  }

  v12 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::PatchFaceTag::assignBoundaryPropertiesFromEdgeMask(int)::edgeMaskToCount[a4];
  v13 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::PatchFaceTag::assignBoundaryPropertiesFromEdgeMask(int)::edgeMaskToIndex[a4];
  switch(v12)
  {
    case 2:
      v14 = &OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::permuteCorner + 64 * v13;
      OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularCornerPatchPoints(v8, *a3, v22, v13, v10);
LABEL_11:
      v15 = 0;
      v16 = v22[0];
      do
      {
        v17 = *&v14[v15];
        v18 = v16;
        if ((v17 & 0x80000000) == 0)
        {
          v18 = v22[v17];
        }

        *(a2 + v15) = v18 + v11;
        v15 += 4;
      }

      while (v15 != 64);
      return 16;
    case 1:
      v14 = &OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::permuteBoundary + 64 * v13;
      OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularBoundaryPatchPoints(v8, *a3, v22, v13, v10);
      goto LABEL_11;
    case 0:
LABEL_8:
      OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularInteriorPatchPoints(v8, *a3, v22, 0, v10);
      v14 = &OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::permuteRegular;
      goto LABEL_11;
  }

  if (v11)
  {
    v20 = 0;
    v21 = vdupq_n_s32(v11);
    do
    {
      *(a2 + v20 * 4) = vaddq_s32(*&v22[v20], v21);
      v20 += 4;
    }

    while (v20 != 16);
  }

  return 16;
}

BOOL OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchEligible(OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *this, int a2, int a3)
{
  v3 = *this;
  v4 = *(*(*this + 40) + 8 * a2);
  if (*(v4[12] + a3) & 1) != 0 || ((*(v3 + 8) >> 2) & 0xF) > a2 && (*(*(*(*(v3 + 64) + 8 * a2) + 408) + a3))
  {
    return 0;
  }

  v5 = v4[3];
  v6 = *(v5 + 8 * a3);
  v8 = (v4[6] + 4 * *(v5 + 8 * a3 + 4));
  v9 = v6;
  if (v6 != 4)
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchEligible();
  }

  return (OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v4, &v8) & 0x800) == 0;
}

BOOL OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchSmoothCorner(OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *this, int a2, int a3, unsigned int a4)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = *(*(*this + 40) + 8 * a2);
  if ((a4 & 0x80000000) != 0 || OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(*(*(*this + 40) + 8 * a2), a3, *(*(this + 18) + 4 * a4)))
  {
    v9 = -1;
  }

  else
  {
    v9 = *(*(this + 18) + 4 * a4);
  }

  if (*(v7[3] + 8 * a3) != 4)
  {
    return 0;
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v7, a3, v20, v9);
  v10 = (*(this + 4) & 8) != 0 ? 6016 : 1924;
  v11 = (*(this + 4) & 8) != 0 ? 4608 : 516;
  v12 = vand_s8(vceq_s16(vand_s8(v20[0], vdup_n_s16(v10)), vdup_n_s16(v11)), 0x8000400020001);
  v12.i32[0] = vaddv_s16(v12) & 0xF;
  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = (v20[0].u16[0] >> 1) & 1;
  v15 = (v20[0].u16[1] >> 1) & 1;
  v16 = (v20[0].u16[2] >> 1) & 1;
  if (v13.i32[0] != 3 || v15 + v14 + v16 + ((v20[0].u16[3] >> 1) & 1) != 1)
  {
    return 0;
  }

  if (a2 > 1)
  {
    return 1;
  }

  if (v14)
  {
    v19 = v20[0].i16[2] & 0x780;
  }

  else if (v15)
  {
    v19 = v20[0].i16[3] & 0x780;
  }

  else if (v16)
  {
    v19 = v20[0].i16[0] & 0x780;
  }

  else
  {
    v19 = v20[0].i16[1] & 0x780;
  }

  return v19 == 128;
}

BOOL OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *this, int a2, int a3, unsigned int a4)
{
  v5 = a2;
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = *(*(*this + 40) + 8 * a2);
  if ((a4 & 0x80000000) != 0 || OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(v7, a3, *(*(this + 18) + 4 * a4)))
  {
    v9 = -1;
  }

  else
  {
    v9 = *(*(this + 18) + 4 * a4);
  }

  FaceCompositeVTag = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v7, a3, v9);
  v11 = FaceCompositeVTag;
  LOBYTE(v12) = ((FaceCompositeVTag & 2) == 0) | FaceCompositeVTag;
  if ((*(this + 4) & 8) != 0 && (FaceCompositeVTag & 0x1010) != 0)
  {
    v12 = (FaceCompositeVTag & 0x4001) != 0x4000;
    if ((FaceCompositeVTag & 0x5001) == 0x5000)
    {
      v18 = v5;
      OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v7, a3, v21, v9);
      v13 = 0;
      v12 = 0;
      v20 = 0;
      v19 = 0;
      do
      {
        v14 = v21[0].i16[v13];
        if ((v14 & 0x4000) != 0)
        {
          v15 = (v14 & 0x2000) != 0 ? 2 : 1;
          if (v15 != v19)
          {
            break;
          }
        }

        v12 = v13++ > 2;
      }

      while (v13 != 4);
      v5 = v18;
    }

    if (v5 <= 1 && (v11 & 2) != 0)
    {
      OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v7, a3, v21, v9);
      v16 = vceq_s16(vand_s8(v21[0], vdup_n_s16(0x782u)), 0x82008200820082);
      v16.i16[0] = vmaxv_u16(v16);
      if ((v12 & ~v16.i32[0] & 1) == 0)
      {
        goto LABEL_19;
      }

      return 1;
    }
  }

  if (v12)
  {
    return 1;
  }

LABEL_19:
  result = 0;
  if (*(this + 24) == 1 && (v11 & 7) == 6)
  {
    return OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchSmoothCorner(this, v5, a3, v9);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::anonymous namespace::identifyManifoldCornerSpan(void *a1, int a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1[57] + 8 * a6);
  }

  v7 = 1;
  v8 = *(a1[3] + 4 * ((2 * a2) | 1));
  v9 = *(a1[6] + 4 * v8 + 4 * a3);
  v10 = 2 * v9;
  v11 = a1[42];
  v12 = a1[45] + 4 * *(v11 + 8 * v9 + 4);
  v13 = *(v11 + 4 * v10);
  if (v13 < 1)
  {
LABEL_8:
    LODWORD(v14) = -1;
  }

  else
  {
    v14 = 0;
    v15 = *(a1[9] + 4 * v8 + 4 * a3);
    while (*(v12 + 4 * v14) != v15)
    {
      if (v13 == ++v14)
      {
        goto LABEL_8;
      }
    }
  }

  v16 = (v14 + 1) % v13;
  *(a5 + 2) = 0;
  *a5 = 1;
  v17 = a1[30];
  v18 = v14;
  while (1)
  {
    result = *(v12 + 4 * v18);
    v20 = *(v17 + result);
    if (v6)
    {
      result = *(*(v6 + 48) + result);
      if (result)
      {
        v20 |= 6u;
      }
    }

    if ((v20 & a4) != 0)
    {
      break;
    }

    *a5 = ++v7;
    v18 = (v13 - 1 + v18) % v13;
    if (v18 == v16)
    {
      v18 = (v14 + 1) % v13;
      goto LABEL_16;
    }
  }

  do
  {
LABEL_16:
    v21 = *(v12 + 4 * v16);
    v22 = *(v17 + v21);
    if (v6)
    {
      result = v22 | 6u;
      if (*(*(v6 + 48) + v21))
      {
        v22 |= 6u;
      }
    }

    if ((v22 & a4) != 0)
    {
      break;
    }

    *a5 = ++v7;
    v16 = (v16 + 1) % v13;
  }

  while (v16 != v14);
  *(a5 + 2) = v18;
  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *this, int a2, int a3, unsigned int a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(*(*this + 40) + 8 * a2);
  if ((a4 & 0x80000000) != 0 || OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(v6, a3, *(*(this + 18) + 4 * a4)))
  {
    v8 = -1;
  }

  else
  {
    v8 = *(*(this + 18) + 4 * a4);
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v6, a3, v15, v8);
  v9 = OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag::BitwiseOr(v15, 4);
  if ((v9 & 0x1000) == 0)
  {
    goto LABEL_6;
  }

  if ((*(this + 4) & 8) != 0)
  {
    v11 = vand_s8(vshl_u16(v15[0], 0xFFF7FFF6FFF5FFF4), 0x8000400020001);
    LOWORD(v10) = v11.i16[0] | v11.i16[2] | ((v11.i32[0] | v11.i32[1]) >> 16);
    goto LABEL_11;
  }

  if ((v9 & 4) != 0)
  {
    v10 = (v15[0].u16[1] >> 1) & 2 | (v15[0].u16[0] >> 2) & 1 | v15[0].i8[4] & 4 | (8 * ((v15[0].u16[3] >> 2) & 1));
  }

  else
  {
LABEL_6:
    LOWORD(v10) = 0;
  }

LABEL_11:
  v10 = v10;
  if (v9 & 1) != 0 && (v12 = vbicq_s8(vbslq_s8(vmovl_s16(vceqz_s16(vand_s8(v15[0], 0x10001000100010))), xmmword_21C27FE30, xmmword_21C2A47F0), vmovl_s16(vceqz_s16(vand_s8(v15[0], 0x1000100010001)))), *v12.i8 = vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)), v10 = v12.i32[0] | v10 | v12.i32[1], v13 = v10 - 1, v10 - 1 < 8) && ((0x8Bu >> v13))
  {
    v10 = dword_21C2A4B14[v13];
  }

  else if (!v10)
  {
    return 0;
  }

  if ((0x8536uLL >> v10))
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask();
  }

  return OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(int,int,int)const::vBoundaryMaskToEMask[v10];
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = *(*(*a1 + 40) + 8 * a2);
  if ((a5 & 0x80000000) != 0 || OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(v8, a3, *(*(a1 + 144) + 4 * a5)))
  {
    v10 = -1;
    result = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v8, a3, v39, 0xFFFFFFFF);
  }

  else
  {
    v10 = *(*(a1 + 144) + 4 * a5);
    result = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v8, a3, v39, v10);
    if ((v10 & 0x80000000) == 0)
    {
      result = OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags(*(*(v8 + 57) + 8 * v10), a3, v38);
    }
  }

  v12 = *(v8 + 3);
  v13 = *(v12 + 8 * a3);
  if (v13 >= 1)
  {
    v14 = 0;
    v37 = (2 * a3) | 1;
    v15 = *(v8 + 6) + 4 * *(v12 + 4 * v37);
    v16 = 7;
    if ((*(a1 + 8) & 8) == 0)
    {
      v16 = 3;
    }

    v35 = v15;
    v36 = v16;
    do
    {
      if ((v10 & 0x80000000) != 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = v38[v14] & 1;
      }

      if ((*(a1 + 8) & 8) != 0)
      {
        v18 = (v39[v14] & 0x1000) != 0 && (v39[v14] & 0x780) != 256;
      }

      else
      {
        v18 = 0;
      }

      if ((v17 | v18))
      {
        v19 = v39[v14];
        v20 = a4 + 6 * v14;
        if (v19)
        {
          v23 = *(*(v8 + 6) + 4 * *(*(v8 + 3) + 4 * v37) + 4 * v14);
          v24 = *(v8 + 36);
          v25 = *(v8 + 33);
          v26 = *(v25 + 8 * v23 + 4);
          v27 = *(v25 + 8 * v23);
          v28 = *(v8 + 39);
          *(v20 + 4) = 0;
          *v20 = 0;
          if (v27 < 1)
          {
LABEL_43:
            OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans();
          }

          v29 = 0;
          v30 = v24 + 4 * v26;
          v31 = v28 + 2 * v26;
          while (*(v30 + 4 * v29) != a3 || v14 != *(v31 + 2 * v29))
          {
            if (v27 == ++v29)
            {
              goto LABEL_43;
            }
          }

          *(v20 + 2) = v29;
          *v20 = 1;
          *(v20 + 4) = 2;
          if ((v19 & 8) != 0)
          {
LABEL_34:
            v32 = a4 + 6 * v14;
            v22 = *(v32 + 4) | 2;
            goto LABEL_35;
          }
        }

        else
        {
          if ((v19 & 8) != 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v21 = a4 + 6 * v14;
        *(v21 + 4) = 0;
        *v21 = 0;
        v19 = v39[v14];
        if ((v19 & 8) != 0)
        {
          goto LABEL_34;
        }
      }

      if ((*(a1 + 8) & 8) == 0)
      {
        v22 = *(a4 + 6 * v14 + 4);
        if ((v22 & 2) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_41;
      }

      v32 = a4 + 6 * v14;
      v22 = *(v32 + 4) & 0xFD | (v19 >> 13) & (2 * ((v19 & 0x780) == 1024));
LABEL_35:
      *(v32 + 4) = v22;
      if ((v22 & 2) == 0)
      {
LABEL_36:
        if (v19 & 7) == 6 && (*(a1 + 24))
        {
          v33 = (a4 + 6 * v14);
          v34 = *v33;
          if (!*v33)
          {
            v34 = *(*(v8 + 33) + 8 * *(v35 + 4 * v14));
          }

          *(v33 + 4) = v22 | (2 * (v34 == 1));
        }
      }

LABEL_41:
      ++v14;
    }

    while (v14 != v13);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateVertexTables(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, const OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, OpenSubdiv::v3_1_1::Far::PatchTable *a3)
{
  if (OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatchArrays(a2) >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v6 += OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatches(a2, v5);
      v7 += OpenSubdiv::v3_1_1::Far::PatchTable::GetNumControlVertices(a2, v5++);
    }

    while (v5 < OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatchArrays(a2));
    if (v7 && v6)
    {
      std::vector<float>::resize((a2 + 32), v7);
      std::vector<ClippedCorner>::resize(a2 + 7, v6);
      if ((*(*this + 8) & 1) == 0)
      {
        v8 = 3;
        OpenSubdiv::v3_1_1::Far::PatchTable::allocateVaryingVertices(a2, &v8, v6);
      }

      if ((*(this + 4) & 4) != 0)
      {
        std::vector<int>::resize((a2 + 224), v6, &OpenSubdiv::v3_1_1::Vtr::INDEX_INVALID);
      }
    }
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateFVarChannels(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, const OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, OpenSubdiv::v3_1_1::Far::PatchTable *a3)
{
  v5 = *this;
  NumPatchesTotal = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatchesTotal(a2);
  OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannels(a2, (*(this + 19) - *(this + 18)) >> 2);
  v7 = *(this + 18);
  if (((*(this + 19) - v7) >> 2) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = (OpenSubdiv::v3_1_1::Vtr::internal::Level::getFVarOptions(**(v5 + 40), *(v7 + 4 * v8)) >> 2) & 7;
      OpenSubdiv::v3_1_1::Far::PatchTable::setFVarPatchChannelLinearInterpolation(a2, v9, v8);
      v10 = *(this + 4);
      if (*(v5 + 8))
      {
        if ((v10 & 2) != 0)
        {
          v14 = 4;
        }

        else
        {
          v14 = 3;
        }

        v16 = v14;
        v13 = &v16;
      }

      else
      {
        v11 = (v10 >> 13) & 1;
        if (v9 == 5)
        {
          v11 = 1;
        }

        if ((v10 & 0x700) == 0x300)
        {
          v12 = 9;
        }

        else
        {
          v12 = 6;
        }

        if (v11)
        {
          v12 = 3;
        }

        v15 = v12;
        v13 = &v15;
      }

      OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues(a2, v13, NumPatchesTotal, v8++);
      v7 = *(this + 18);
    }

    while (v8 < ((*(this + 19) - v7) >> 2));
  }
}

unint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::computePatchParam(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, const OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, uint64_t a3, char a4, unsigned __int8 a5)
{
  v7 = a2;
  v8 = *this;
  v9 = *(*(*(*(*this + 88) + 24 * a2) + 24) + 8 * a3) != 4;
  if (a2 < 1)
  {
    v26 = 0;
    v25 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(v8 + 64);
    v14 = *(v8 + 40);
    v15 = 1;
    v16 = a2;
    do
    {
      v17 = *(v13 + 8 * (v16 - 1));
      v18 = a3;
      a3 = *(v17[33] + 4 * a3);
      if (*(*(*(v14 + 8 * (v16 - 1)) + 24) + 8 * a3) == 4)
      {
        v10 = (*(v17[42] + v18) >> 3) & 3;
        if (v10 == 2)
        {
          v19 = v11 + v15;
        }

        else
        {
          v19 = v11;
        }

        if (v10)
        {
          v11 += v15;
        }

        if (v10 > 1)
        {
          v12 += v15;
          v11 = v19;
        }

        v15 = 2 * (v15 & 0x7FFF);
      }

      else
      {
        v20 = v17[11];
        v21 = *(v20 + 8 * a3);
        if (v21 < 1)
        {
LABEL_16:
          v9 = 1;
        }

        else
        {
          v22 = 0;
          v23 = v17[15] + 4 * *(v20 + 4 * ((2 * a3) | 1));
          while (*(v23 + 4 * v22) != v18)
          {
            if (v21 == ++v22)
            {
              goto LABEL_16;
            }
          }

          v9 = 1;
          v10 = v22;
        }
      }
    }

    while (v16-- > 1);
    v25 = v11 << 22;
    v26 = (v12 & 0x3FF) << 12;
  }

  FaceId = OpenSubdiv::v3_1_1::Far::PtexIndices::GetFaceId((this + 32), a3);
  if (FaceId == -1)
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::computePatchParam();
  }

  if (v9)
  {
    v28 = v10;
  }

  else
  {
    v28 = 0;
  }

  v29 = (FaceId + v28) & 0xFFFFFFF | (a5 << 28);
  if (v9)
  {
    v30 = 16;
  }

  else
  {
    v30 = 0;
  }

  return v29 | ((v7 & 0xF | ((a4 & 0xF) << 8) | v26 | v25 | v30) << 32);
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::Create(const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::createAdaptive(a1, a2, a3);
  }

  OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform(a1, a2, a3);
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform(const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v3 = a2;
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::BuilderContext(v6, a1, a2, a3);
    v5 = *a1;
    if ((v3 & (2 * (v5 < 2))) == 0 && v5 >= 3)
    {
      OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform();
    }

    operator new();
  }

  OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform();
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::createAdaptive(const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::BuilderContext(v4, a1, a2, a3);
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::identifyAdaptivePatches(v4, v3);
    operator new();
  }

  OpenSubdiv::v3_1_1::Far::PatchTableFactory::createAdaptive();
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::identifyAdaptivePatches(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2)
{
  v3 = *this;
  v4 = (this + 72);
  std::vector<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>::reserve(this + 9, *(*this + 28));
  LODWORD(__p) = 0;
  std::vector<int>::push_back[abi:nn200100](this + 12, &__p);
  std::vector<std::vector<int>>::resize(this + 15, (*(this + 19) - *(this + 18)) >> 2);
  if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(this + 15);
      LODWORD(__p) = 0;
      std::vector<int>::push_back[abi:nn200100]((v7 + v5), &__p);
      ++v6;
      v5 += 24;
    }

    while (v6 < ((*(this + 19) - *(this + 18)) >> 2));
  }

  if ((-1431655765 * ((v3[12] - v3[11]) >> 3)) >= 1)
  {
    v8 = 0;
    v9 = this + 64;
    v28 = v3;
    while (1)
    {
      v10 = v9;
      v11 = *(v3[5] + 8 * v8);
      LODWORD(__p) = *(v11 + 2) + *(*(this + 13) - 4);
      std::vector<int>::push_back[abi:nn200100](this + 12, &__p);
      v12 = *(this + 18);
      if (((*(this + 19) - v12) >> 2) >= 1)
      {
        v13 = 0;
        v14 = 8;
        do
        {
          v15 = (*(this + 15) + v14);
          v16 = *(*v15 - 1);
          LODWORD(__p) = OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(v11, *(v12 + 4 * v13)) + v16;
          std::vector<int>::push_back[abi:nn200100](v15 - 1, &__p);
          ++v13;
          v12 = *(this + 18);
          v14 += 24;
        }

        while (v13 < ((*(this + 19) - v12) >> 2));
      }

      v9 = v10;
      if (*v11 >= 1)
      {
        break;
      }

LABEL_32:
      ++v8;
      v3 = v28;
      if (v8 >= (-1431655765 * ((v28[12] - v28[11]) >> 3)))
      {
        return;
      }
    }

    v17 = 0;
    while (1)
    {
      if (OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchEligible(this, v8, v17))
      {
        v19 = *(this + 10);
        v18 = *(this + 11);
        if (v19 >= v18)
        {
          v21 = (v19 - *v4) >> 3;
          v22 = v21 + 1;
          if ((v21 + 1) >> 61)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v23 = v18 - *v4;
          if (v23 >> 2 > v22)
          {
            v22 = v23 >> 2;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF8)
          {
            v24 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          v33 = v4;
          if (v24)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(v4, v24);
          }

          v25 = (8 * v21);
          __p = 0;
          v30 = v25;
          v32 = 0;
          *v25 = v17;
          v25[1] = v8;
          v31 = 8 * v21 + 8;
          std::vector<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>::__swap_out_circular_buffer(v4, &__p);
          v20 = *(this + 10);
          if (v31 != v30)
          {
            v31 += (v30 - v31 + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          if (__p)
          {
            operator delete(__p);
          }
        }

        else
        {
          *v19 = v17;
          v19[1] = v8;
          v20 = v19 + 2;
        }

        *(this + 10) = v20;
        if (OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(this, v8, v17, 0xFFFFFFFF))
        {
          v26 = 1;
          v27 = (this + 56);
LABEL_30:
          *v27 += v26;
          goto LABEL_31;
        }

        ++*(this + 15);
        if ((*(this + 4) & 0x700) == 0x400)
        {
          v26 = (OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v11, v17, 0xFFFFFFFF) >> 2) & 1;
          v27 = v10;
          goto LABEL_30;
        }
      }

LABEL_31:
      if (++v17 >= *v11)
      {
        goto LABEL_32;
      }
    }
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::populateAdaptivePatches(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, OpenSubdiv::v3_1_1::Far::PatchTable *a3)
{
  v5 = 0;
  v153 = *MEMORY[0x277D85DE8];
  v122 = *this;
  do
  {
    v6 = &v149 + v5;
    *v6 = 6;
    *(v6 + 4) = 0;
    *(v6 + 7) = 0;
    *(v6 + 12) = 0uLL;
    *(v6 + 4) = &v152[v5];
    *(v6 + 5) = 0x100000000;
    *(v6 + 7) = 0;
    *(v6 + 8) = &v152[v5 + 32];
    *(v6 + 9) = 0x100000000;
    v5 += 96;
    *(v6 + 11) = 0;
  }

  while (v5 != 288);
  v7 = *(this + 14);
  v149 = 6;
  v150 = v7;
  v8 = v7 > 0;
  v9 = *(this + 9) & 7;
  switch(v9)
  {
    case 4:
      v17 = &v149 + 24 * (v7 > 0);
      v18 = *(this + 15);
      v19 = *(this + 16);
      v15 = __OFSUB__(v18, v19);
      v20 = v18 - v19;
      *v17 = 7;
      v17[1] = v20;
      if ((v20 < 0) ^ v15 | (v20 == 0))
      {
        v21 = v8;
      }

      else
      {
        v21 = v8 + 1;
      }

      v22 = &v149 + 24 * v21;
      *v22 = 8;
      v22[1] = v19;
      v125 = v21;
      v127 = v8;
      if (v19 <= 0)
      {
        v11 = v21;
      }

      else
      {
        v11 = v21 + 1;
      }

      break;
    case 3:
      v12 = &v149 + 24 * (v7 > 0);
      v13 = *(this + 15);
      v14 = v12[1];
      v15 = __OFADD__(v14, v13);
      v16 = v14 + v13;
      *v12 = 9;
      v12[1] = v16;
      if ((v16 < 0) ^ v15 | (v16 == 0))
      {
        v11 = v8;
      }

      else
      {
        v11 = v8 + 1;
      }

      v125 = v8;
      v127 = v8;
      break;
    case 2:
      v125 = 0;
      v127 = 0;
      v10 = *(this + 15);
      v150 = v10 + v7;
      if ((v150 < 0) ^ __OFADD__(v10, v7) | (v150 == 0))
      {
        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

      break;
    default:
      v11 = v7 > 0;
      v125 = 2;
      v127 = 1;
      break;
  }

  OpenSubdiv::v3_1_1::Far::PatchTable::reservePatchArrays(a2, v11);
  v132 = 0;
  v131 = 0;
  if (v11)
  {
    v24 = v11;
    v25 = &v150;
    do
    {
      v26 = *v25;
      LODWORD(v145) = *(v25 - 1);
      OpenSubdiv::v3_1_1::Far::PatchTable::pushPatchArray(a2, &v145, v26, &v132 + 1, &v132, &v131);
      v25 += 24;
      --v24;
    }

    while (v24);
  }

  v123 = *(this + 4);
  OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateVertexTables(this, a2, v23);
  if (*(this + 18) != *(this + 19))
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateFVarChannels(this, a2, v27);
  }

  if (v11)
  {
    v28 = 0;
    v29 = v11;
    do
    {
      v30 = &v149 + 24 * v28;
      *(v30 + 1) = OpenSubdiv::v3_1_1::Far::PatchTable::getPatchArrayVertices(a2, v28);
      *(v30 + 2) = OpenSubdiv::v3_1_1::Far::PatchTable::getPatchParams(a2, v28);
      if ((v123 & 4) != 0)
      {
        *(v30 + 3) = OpenSubdiv::v3_1_1::Far::PatchTable::getSharpnessIndices(a2, v28);
      }

      v31 = *(this + 18);
      v32 = *(this + 19);
      if (v31 != v32)
      {
        v33 = v32 - v31;
        v34 = (v32 - v31) >> 2;
        if (v34)
        {
          if (v30[11] < v34)
          {
            operator delete(*(v30 + 7));
            *(v30 + 4) = v30 + 12;
            v30[11] = 1;
            v35 = operator new((2 * v33) & 0x7FFFFFFF8);
            *(v30 + 7) = v35;
            *(v30 + 4) = v35;
            v30[11] = v34;
          }
        }

        else
        {
          operator delete(*(v30 + 7));
          *(v30 + 4) = v30 + 12;
          v30[11] = 1;
        }

        v30[10] = v34;
        v36 = *(this + 19) - *(this + 18);
        v37 = v36 >> 2;
        if ((v36 >> 2))
        {
          if (v30[19] < v37)
          {
            operator delete(*(v30 + 11));
            *(v30 + 8) = v30 + 20;
            v30[19] = 1;
            v38 = operator new((2 * v36) & 0x7FFFFFFF8);
            *(v30 + 11) = v38;
            *(v30 + 8) = v38;
            v30[19] = v37;
          }
        }

        else
        {
          operator delete(*(v30 + 11));
          *(v30 + 8) = v30 + 20;
          v30[19] = 1;
        }

        v30[18] = v37;
        if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
        {
          v39 = 0;
          do
          {
            OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor(a2, v39, &v145);
            PatchIndex = OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex(a2, v28, 0);
            v41 = PatchIndex * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v145);
            *(*(v30 + 4) + 8 * v39) = OpenSubdiv::v3_1_1::Far::PatchTable::getFVarValues(a2, v39) + 4 * v41;
            *(*(v30 + 8) + 8 * v39) = OpenSubdiv::v3_1_1::Far::PatchTable::getFVarPatchParams(a2, v39) + 8 * PatchIndex;
            ++v39;
          }

          while (v39 < ((*(this + 19) - *(this + 18)) >> 2));
        }
      }

      ++v28;
    }

    while (v28 != v29);
  }

  v42 = &v147;
  v146 = 0x100000000;
  v148 = 0;
  v43 = &v143;
  __p = 0;
  v141 = &v143;
  v142 = 0x100000000;
  v144 = 0;
  v145 = &v147;
  v44 = &v139;
  v137 = &v139;
  v138 = 0x100000000;
  v45 = *(this + 9) & 7;
  switch(v45)
  {
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
  }

  v46 = *(this + 18);
  v47 = *(this + 19);
  if (v46 != v47)
  {
    v48 = v47 - v46;
    v49 = (v47 - v46) >> 2;
    if (v49)
    {
      if (HIDWORD(v146) >= v49)
      {
        goto LABEL_54;
      }

      operator delete(v148);
      v145 = &v147;
      HIDWORD(v146) = 1;
      v42 = operator new((2 * v48) & 0x7FFFFFFF8);
      v148 = v42;
      v50 = v49;
    }

    else
    {
      operator delete(v148);
      v50 = 1;
    }

    v145 = v42;
    HIDWORD(v146) = v50;
LABEL_54:
    LODWORD(v146) = v49;
    v51 = *(this + 19) - *(this + 18);
    if ((v51 >> 2))
    {
      if (HIDWORD(v142) >= (v51 >> 2))
      {
        goto LABEL_59;
      }

      operator delete(v144);
      v141 = &v143;
      HIDWORD(v142) = 1;
      v43 = operator new((2 * v51) & 0x7FFFFFFF8);
      v144 = v43;
      v52 = v51 >> 2;
    }

    else
    {
      operator delete(v144);
      v52 = 1;
    }

    v141 = v43;
    HIDWORD(v142) = v52;
LABEL_59:
    LODWORD(v142) = v51 >> 2;
    v53 = *(this + 19) - *(this + 18);
    if ((v53 >> 2))
    {
      if (HIDWORD(v138) >= (v53 >> 2))
      {
        goto LABEL_64;
      }

      operator delete(__p);
      v137 = &v139;
      HIDWORD(v138) = 1;
      v44 = operator new((2 * v53) & 0x7FFFFFFF8);
      __p = v44;
      v54 = v53 >> 2;
    }

    else
    {
      operator delete(__p);
      v54 = 1;
    }

    v137 = v44;
    HIDWORD(v138) = v54;
LABEL_64:
    LODWORD(v138) = v53 >> 2;
    if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
    {
      v55 = 0;
      do
      {
        v56 = *(this + 9) & 7;
        if (v56 == 2)
        {
          operator new();
        }

        if (v56 == 3)
        {
          operator new();
        }

        ++v55;
      }

      while (v55 < ((*(this + 19) - *(this + 18)) >> 2));
    }
  }

  v57 = *(this + 9);
  if (((*(this + 10) - v57) >> 3) >= 1)
  {
    v58 = 0;
    v121 = &v149 + 24 * v127;
    v120 = &v149 + 24 * v125;
    do
    {
      v59 = (v57 + 8 * v58);
      v60 = *(*(v122 + 5) + 8 * v59[1]);
      FaceCompositeVTag = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v60, *v59, 0xFFFFFFFF);
      memset(v136, 0, sizeof(v136));
      IsPatchRegular = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(this, v59[1], *v59, 0xFFFFFFFF);
      v64 = *v59;
      v63 = v59[1];
      v128 = IsPatchRegular;
      if (IsPatchRegular)
      {
        RegularPatchBoundaryMask = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(this, v63, v64, 0xFFFFFFFF);
        v66 = RegularPatchBoundaryMask;
        v124 = 0;
        v67 = 0.0;
        if ((v123 & 4) == 0 || RegularPatchBoundaryMask)
        {
          v69 = RegularPatchBoundaryMask;
        }

        else
        {
          if ((FaceCompositeVTag & 0x1040) == 0)
          {
            goto LABEL_87;
          }

          LODWORD(v133) = 0;
          v130[0] = 0;
          if (!OpenSubdiv::v3_1_1::Vtr::internal::Level::isSingleCreasePatch(v60, *v59, &v133, v130))
          {
            goto LABEL_87;
          }

          v68 = ((*(this + 4) >> 4) - v59[1]);
          if (*&v133 <= v68)
          {
            v68 = *&v133;
          }

          if (v68 > 0.0)
          {
            v66 = 0;
            v124 = 1;
            v69 = 1 << SLOBYTE(v130[0]);
            v67 = v68;
          }

          else
          {
LABEL_87:
            v66 = 0;
            v69 = 0;
            v124 = 0;
          }
        }

        OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(this, v151, v59, v66, 0xFFFFFFFF);
        v151 += 64;
        v73 = v59[1];
        if (v73 == ((*(*this + 8) >> 2) & 0xF))
        {
          LOBYTE(v74) = 0;
        }

        else
        {
          v74 = (*(*(*(*(*this + 64) + 8 * v73) + 408) + *v59) >> 1) & 0xF;
        }

        v71 = &v149;
      }

      else
      {
        OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans(this, v63, v64, v136, 0xFFFFFFFF);
        v124 = 0;
        v70 = *(this + 9) & 7;
        v67 = 0.0;
        if (v70 > 2)
        {
          if (v70 == 4)
          {
            if ((FaceCompositeVTag & 4) != 0)
            {
              v71 = v120;
            }

            else
            {
              v71 = v121;
            }

            v72 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory>(this, 0, *(v71 + 1), v59, v136, 0xFFFFFFFF);
          }

          else
          {
            if (v70 != 3)
            {
              LOBYTE(v74) = 0;
              v69 = 0;
              v71 = v121;
              goto LABEL_102;
            }

            v71 = v121;
            v72 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory>(this, 0, *(v121 + 1), v59, v136, 0xFFFFFFFF);
          }

          goto LABEL_101;
        }

        if (v70 == 2)
        {
          v71 = v121;
          v72 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory>(this, 0, *(v121 + 1), v59, v136, 0xFFFFFFFF);
LABEL_101:
          v124 = 0;
          v69 = 0;
          LOBYTE(v74) = 0;
          *(v71 + 1) += 4 * v72;
          goto LABEL_102;
        }

        LOBYTE(v74) = 0;
        v69 = 0;
        v71 = v121;
        if (v70 == 1)
        {
          OpenSubdiv::v3_1_1::Far::PatchTableFactory::populateAdaptivePatches();
        }
      }

LABEL_102:
      v126 = v69;
      v75 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::computePatchParam(this, v59[1], *v59, v69, v74);
      v76 = *(v71 + 2);
      *(v71 + 2) = v76 + 1;
      *v76 = v75;
      if ((v123 & 4) != 0)
      {
        v77 = *(a2 + 31);
        v78 = *(a2 + 32);
        v79 = v78 - v77;
        v80 = (v78 - v77) >> 2;
        if (v80 < 1)
        {
LABEL_107:
          v82 = *(a2 + 33);
          if (v78 >= v82)
          {
            v84 = v80 + 1;
            if ((v80 + 1) >> 62)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v85 = v82 - v77;
            if (v85 >> 1 > v84)
            {
              v84 = v85 >> 1;
            }

            v86 = v85 >= 0x7FFFFFFFFFFFFFFCLL;
            v87 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v86)
            {
              v87 = v84;
            }

            if (v87)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a2 + 248, v87);
            }

            *(4 * v80) = v67;
            v83 = 4 * v80 + 4;
            memcpy(0, v77, v79);
            v88 = *(a2 + 31);
            *(a2 + 31) = 0;
            *(a2 + 32) = v83;
            *(a2 + 33) = 0;
            if (v88)
            {
              operator delete(v88);
              v77 = *(a2 + 31);
            }

            else
            {
              v77 = 0;
            }
          }

          else
          {
            *v78 = v67;
            v83 = (v78 + 1);
          }

          *(a2 + 32) = v83;
          LODWORD(v81) = ((v83 - v77) >> 2) - 1;
        }

        else
        {
          v81 = 0;
          while (*&v77[4 * v81] != v67)
          {
            if (((v79 >> 2) & 0x7FFFFFFF) == ++v81)
            {
              goto LABEL_107;
            }
          }
        }

        v89 = *(v71 + 3);
        *v89 = v81;
        *(v71 + 3) = v89 + 1;
      }

      v90 = *(this + 18);
      v91 = *(this + 19);
      if (v90 != v91 && ((v91 - v90) >> 2) >= 1)
      {
        v92 = 0;
        while (1)
        {
          *v130 = *v59;
          OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor(a2, v92, &v129);
          if (v129 != 3)
          {
            break;
          }

          *(*(v71 + 4) + 8 * v92) += 4 * OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherLinearPatchPoints(this, *(*(v71 + 4) + 8 * v92), v130, v92);
          v93 = v75;
LABEL_141:
          v97 = *(v71 + 8);
          v98 = *(v97 + 8 * v92);
          *(v97 + 8 * v92) = v98 + 1;
          *v98 = v93;
          if (++v92 >= ((*(this + 19) - *(this + 18)) >> 2))
          {
            goto LABEL_142;
          }
        }

        if (OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(*(*(*this + 40) + 8 * v59[1]), *v59, *(*(this + 18) + 4 * v92)))
        {
          if (v128)
          {
            v94 = v126;
            if (v124)
            {
              OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(this, *(*(v71 + 4) + 8 * v92), v130, 0, v92);
              v95 = 0x2000000000;
              LOBYTE(v94) = v126;
LABEL_140:
              *(*(v71 + 4) + 8 * v92) += 4 * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v129);
              v93 = v75 & 0xFFFFF01FFFFFFFFFLL | v95 | ((v94 & 0xF) << 40);
              goto LABEL_141;
            }

LABEL_132:
            OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(this, *(*(v71 + 4) + 8 * v92), v130, v94, v92);
            v95 = 0x2000000000;
            goto LABEL_140;
          }

          v133 = 0;
          v134 = 0;
          v96 = v136;
          v135 = 0;
        }

        else
        {
          if (OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(this, v59[1], *v59, v92))
          {
            v94 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(this, v59[1], *v59, v92);
            goto LABEL_132;
          }

          v133 = 0;
          v134 = 0;
          v135 = 0;
          v96 = &v133;
          OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans(this, v59[1], *v59, &v133, v92);
        }

        if (v129 == 9)
        {
          OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory>(this, v141[v92], *(*(v71 + 4) + 8 * v92), v130, v96, v92);
        }

        else
        {
          if (v129 != 6)
          {
            OpenSubdiv::v3_1_1::Far::PatchTableFactory::populateAdaptivePatches();
          }

          OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory>(this, v145[v92], *(*(v71 + 4) + 8 * v92), v130, v96, v92);
        }

        v95 = 0;
        LOBYTE(v94) = 0;
        goto LABEL_140;
      }

LABEL_142:
      ++v58;
      v57 = *(this + 9);
    }

    while (v58 < ((*(this + 10) - v57) >> 3));
  }

  OpenSubdiv::v3_1_1::Far::PatchTable::populateVaryingVertices(a2);
  v99 = *(this + 9) & 7;
  switch(v99)
  {
    case 2:
      *(a2 + 16) = 0;
      *(a2 + 17) = 0;
      break;
    case 4:
      OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::Finalize(0, *a2, (a2 + 80), (a2 + 104), 0xFFFFFFFFLL);
      break;
    case 3:
      *(a2 + 16) = 0;
      *(a2 + 17) = 0;
      break;
  }

  v100 = *(this + 18);
  v101 = *(this + 19);
  if (v100 != v101)
  {
    std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::resize(a2 + 25, (v101 - v100) >> 2);
    if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
    {
      v102 = 0;
      while (1)
      {
        v103 = v137[v102];
        if (((*(v103 + 24) - *(v103 + 16)) >> 2) < 1)
        {
          (*(*v103 + 8))(v137[v102]);
          v137[v102] = 0;
        }

        else
        {
          OpenSubdiv::v3_1_1::Far::StencilTable::shrinkToFit(v137[v102]);
          std::vector<float>::resize((v103 + 40), ((*(v103 + 24) - *(v103 + 16)) >> 2));
          v104 = *(v103 + 16);
          v105 = *(v103 + 24) - v104;
          if ((v105 >> 2) >= 1)
          {
            v106 = 0;
            v107 = *(v103 + 40);
            v108 = (v105 >> 2) & 0x7FFFFFFF;
            do
            {
              *v107++ = v106;
              v109 = *v104++;
              v106 += v109;
              --v108;
            }

            while (v108);
          }
        }

        v110 = *(this + 9) & 7;
        if (v110 != 2)
        {
          break;
        }

        v116 = v145[v102];
        if (v116)
        {
          v117 = v116[4];
          if (v117)
          {
            v116[5] = v117;
            operator delete(v117);
          }

          v114 = v116;
          v115 = 0x1070C404978CE7FLL;
LABEL_170:
          MEMORY[0x21CF07610](v114, v115);
        }

LABEL_171:
        *(*(a2 + 25) + 8 * v102) = v137[v102];
        if (++v102 >= ((*(this + 19) - *(this + 18)) >> 2))
        {
          goto LABEL_172;
        }
      }

      if (v110 != 3)
      {
        goto LABEL_171;
      }

      v111 = v141[v102];
      if (!v111)
      {
        goto LABEL_171;
      }

      v112 = v111[8];
      if (v112)
      {
        v111[9] = v112;
        operator delete(v112);
      }

      v113 = v111[5];
      if (v113)
      {
        v111[6] = v113;
        operator delete(v113);
      }

      v114 = v111;
      v115 = 0x1070C40200C42D6;
      goto LABEL_170;
    }
  }

LABEL_172:
  operator delete(__p);
  operator delete(v144);
  operator delete(v148);
  v118 = 36;
  do
  {
    v119 = &v149 + v118 * 8;
    operator delete((&v148)[v118]);
    *(v119 - 4) = v119 - 16;
    *(v119 - 5) = 1;
    operator delete((&v144)[v118]);
    *(v119 - 8) = v119 - 48;
    *(v119 - 13) = 1;
    v118 -= 12;
  }

  while (v118 * 8);
}

void *std::vector<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<std::vector<int>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory>(void *a1, uint64_t a2, _DWORD *a3, int *a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    v7 = a1 + 12;
    v8 = -1;
  }

  else
  {
    v7 = (a1[15] + 24 * a6);
    v8 = *(a1[18] + 4 * a6);
  }

  PatchPoints = OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(a2, *(*(*a1 + 40) + 8 * a4[1]), *a4, a5, *(*v7 + 4 * a4[1]), v8);
  result = v9;
  if (v9 >= 1)
  {
    v12 = v9 & 0x7FFFFFFF;
    do
    {
      v13 = *PatchPoints++;
      *a3++ = v13;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory>(void *a1, uint64_t a2, _DWORD *a3, int *a4, __int16 *a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    v7 = a1 + 12;
    v8 = -1;
  }

  else
  {
    v7 = (a1[15] + 24 * a6);
    v8 = *(a1[18] + 4 * a6);
  }

  PatchPoints = OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::GetPatchPoints(a2, *(*(*a1 + 40) + 8 * a4[1]), *a4, a5, *(*v7 + 4 * a4[1]), v8);
  result = v9;
  if (v9 >= 1)
  {
    v12 = v9 & 0x7FFFFFFF;
    do
    {
      v13 = *PatchPoints++;
      *a3++ = v13;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory>(void *a1, uint64_t a2, _DWORD *a3, int *a4, int a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    v7 = a1 + 12;
    v8 = -1;
  }

  else
  {
    v7 = (a1[15] + 24 * a6);
    v8 = *(a1[18] + 4 * a6);
  }

  PatchPoints = OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::GetPatchPoints(a2, *(*(*a1 + 40) + 8 * a4[1]), *a4, a5, *(*v7 + 4 * a4[1]), v8);
  result = v9;
  if (v9 >= 1)
  {
    v12 = v9 & 0x7FFFFFFF;
    do
    {
      v13 = *PatchPoints++;
      *a3++ = v13;
      --v12;
    }

    while (v12);
  }

  return result;
}

void std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::__append(a1, a2 - v2);
  }
}

void OpenSubdiv::v3_1_1::Far::StencilTable::shrinkToFit(OpenSubdiv::v3_1_1::Far::StencilTable *this)
{
  std::vector<unsigned int>::vector[abi:nn200100](&v11, this + 2);
  v2 = *(this + 2);
  *(this + 1) = v11;
  v3 = v12;
  v4 = *(this + 4);
  *&v11 = v2;
  v12 = v4;
  *(this + 4) = v3;
  if (v2)
  {
    *(&v11 + 1) = v2;
    operator delete(v2);
  }

  std::vector<unsigned int>::vector[abi:nn200100](&v11, this + 8);
  v5 = *(this + 8);
  *(this + 4) = v11;
  v6 = v12;
  v7 = *(this + 10);
  *&v11 = v5;
  v12 = v7;
  *(this + 10) = v6;
  if (v5)
  {
    *(&v11 + 1) = v5;
    operator delete(v5);
  }

  std::vector<unsigned int>::vector[abi:nn200100](&v11, this + 11);
  v8 = *(this + 11);
  *(this + 88) = v11;
  v9 = v12;
  v10 = *(this + 13);
  *&v11 = v8;
  v12 = v10;
  *(this + 13) = v9;
  if (v8)
  {
    *(&v11 + 1) = v8;
    operator delete(v8);
  }
}

void *std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t **std::vector<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>::__swap_out_circular_buffer(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::vector<std::vector<int>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<int>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivCPUPrimvarInfo>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform()
{
  __assert_rtn("createUniform", "patchTableFactory.cpp", 952, "ptype!=PatchDescriptor::NON_PATCH");
}

{
  __assert_rtn("createUniform", "patchTableFactory.cpp", 975, "npatches>=0");
}

{
  __assert_rtn("createUniform", "patchTableFactory.cpp", 1038, "(levelVertOffset + fvalues[vert]) < (int)table->getFVarValues(fvc).size()");
}

{
  __assert_rtn("createUniform", "patchTableFactory.cpp", 926, "refiner.IsUniform()");
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::populateAdaptivePatches()
{
  __assert_rtn("populateAdaptivePatches", "patchTableFactory.cpp", 1445, "false");
}

{
  __assert_rtn("populateAdaptivePatches", "patchTableFactory.cpp", 1527, "Unknown Descriptor for FVar patch == 0");
}

OpenSubdiv::v3_1_1::Osd::CpuPatchTable *OpenSubdiv::v3_1_1::Osd::CpuPatchTable::CpuPatchTable(OpenSubdiv::v3_1_1::Osd::CpuPatchTable *this, const OpenSubdiv::v3_1_1::Far::PatchTable *a2)
{
  *(this + 3) = 0u;
  v4 = (this + 48);
  *(this + 6) = 0u;
  v44 = (this + 96);
  *(this + 9) = 0u;
  v5 = (this + 144);
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  NumPatchArrays = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatchArrays(a2);
  if (NumPatchArrays < 1)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    for (i = 0; i != NumPatchArrays; ++i)
    {
      NumPatches = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatches(a2, i);
      OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayDescriptor(a2, i, v51);
      v7 += NumPatches;
      v8 += NumPatches * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(v51);
    }

    v11 = v8;
  }

  v43 = NumPatchArrays;
  v12 = NumPatchArrays;
  std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve(this, NumPatchArrays);
  std::vector<unsigned int>::reserve(this + 1, v11);
  std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve(this + 9, NumPatchArrays);
  OpenSubdiv::v3_1_1::Far::PatchTable::GetVaryingPatchDescriptor(a2, v51);
  NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(v51);
  std::vector<unsigned int>::reserve(v44, v7 * NumControlVertices);
  NumFVarChannels = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2);
  std::vector<std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>>::resize(this + 15, NumFVarChannels);
  v15 = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2);
  std::vector<std::vector<int>>::resize(v5, v15);
  v16 = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2);
  std::vector<std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>>::resize(this + 21, v16);
  if (OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2) >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve((*(this + 15) + v17), v12);
      v19 = *v5;
      OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor(a2, v18, v51);
      v20 = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(v51);
      std::vector<unsigned int>::reserve((v19 + v17), v7 * v20);
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::reserve((*(this + 21) + v17), v7);
      ++v18;
      v17 += 24;
    }

    while (v18 < OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2));
  }

  std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::reserve(v4, v7);
  if (v43 >= 1)
  {
    v21 = 0;
    v42 = v4;
    do
    {
      OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayDescriptor(a2, v21, v49);
      v22 = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatches(a2, v21);
      v23 = (*(this + 4) - *(this + 3)) >> 2;
      v24 = -1431655765 * ((*(this + 7) - *(this + 6)) >> 2);
      v51[0] = v49[0];
      v51[1] = v22;
      v51[2] = v23;
      v51[3] = v24;
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100](this, v51);
      PatchArrayVertices = OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVertices(a2, v21);
      std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>(this + 3, *(this + 4), PatchArrayVertices, &PatchArrayVertices[4 * v26], v26);
      OpenSubdiv::v3_1_1::Far::PatchTable::GetVaryingPatchDescriptor(a2, &v47);
      v49[0] = v47;
      v49[1] = v7;
      v50 = 0;
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100](this + 9, v49);
      PatchArrayVaryingVertices = OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVaryingVertices(a2, v21);
      std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>(v44, *(this + 13), PatchArrayVaryingVertices, &PatchArrayVaryingVertices[4 * v28], v28);
      if (OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2) >= 1)
      {
        v29 = 0;
        do
        {
          OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor(a2, v29, &v45);
          v47 = __PAIR64__(v7, v45);
          v48 = 0;
          std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100]((*(this + 15) + 24 * v29), &v47);
          PatchArrayFVarValues = OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayFVarValues(a2, v21, v29);
          std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>((*v5 + 24 * v29), *(*v5 + 24 * v29 + 8), PatchArrayFVarValues, &PatchArrayFVarValues[4 * v31], v31);
          PatchArrayFVarPatchParams = OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayFVarPatchParams(a2, v21, v29);
          if (v7 >= 1)
          {
            v33 = PatchArrayFVarPatchParams;
            v34 = v7;
            do
            {
              v45 = *v33;
              v45 |= v33[1] << 32;
              v46 = 0;
              std::vector<vmesh::Triangle>::push_back[abi:nn200100](*(this + 21) + 24 * v29, &v45);
              v33 += 2;
              --v34;
            }

            while (v34);
          }

          ++v29;
        }

        while (v29 < OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2));
      }

      v35 = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatches(a2, v21);
      if (v35 >= 1)
      {
        do
        {
          v36 = *(a2 + 28);
          v37 = 0xAAAAAAAB00000000 * ((*(this + 7) - *(this + 6)) >> 2);
          v38 = 0;
          if ((-1431655765 * ((*(this + 7) - *(this + 6)) >> 2)) < ((*(a2 + 29) - v36) >> 2))
          {
            v39 = *(v36 + (v37 >> 30));
            if ((v39 & 0x80000000) == 0)
            {
              v38 = *(*(a2 + 31) + 4 * v39);
            }
          }

          v40 = (*(a2 + 7) + (v37 >> 29));
          v47 = *v40;
          v47 |= v40[1] << 32;
          LODWORD(v48) = v38;
          std::vector<vmesh::Triangle>::push_back[abi:nn200100](v42, &v47);
          --v35;
        }

        while (v35);
      }

      ++v21;
    }

    while (v21 != v43);
  }

  return this;
}

void *std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void *std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18 = a1;
    if (v11)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v11);
    }

    v12 = 16 * v8;
    __p = 0;
    v15 = v12;
    v17 = 0;
    *v12 = *a2;
    v13 = *(a2 + 4);
    *(v12 + 12) = *(a2 + 12);
    *(v12 + 4) = v13;
    v16 = 16 * v8 + 16;
    std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::__swap_out_circular_buffer(a1, &__p);
    if (v16 != v15)
    {
      v16 += (v15 - v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    v7 = a1[1];
    if (__p)
    {
      operator delete(__p);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 4);
    *(v4 + 12) = *(a2 + 12);
    *(v4 + 4) = v6;
    v7 = v4 + 16;
  }

  a1[1] = v7;
}

uint64_t *std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      v6 = *(v2 + 4);
      *(v5 + 12) = *(v2 + 12);
      *(v5 + 4) = v6;
      v2 += 16;
      v5 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void std::vector<std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<CFRange>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

char *std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

double OpenSubdiv::v3_1_1::Far::PatchTable::PatchTable(OpenSubdiv::v3_1_1::Far::PatchTable *this, int a2)
{
  *this = a2;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  *(this + 36) = 3;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  return result;
}

void OpenSubdiv::v3_1_1::Far::PatchTable::~PatchTable(OpenSubdiv::v3_1_1::Far::PatchTable *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v5 = *(this + 25);
  v4 = *(this + 26);
  if (((v4 - v5) >> 3) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v5 = *(this + 25);
        v4 = *(this + 26);
      }

      ++v6;
    }

    while (v6 < ((v4 - v5) >> 3));
  }

  v8 = *(this + 31);
  if (v8)
  {
    *(this + 32) = v8;
    operator delete(v8);
  }

  v9 = *(this + 28);
  if (v9)
  {
    *(this + 29) = v9;
    operator delete(v9);
  }

  v10 = *(this + 25);
  if (v10)
  {
    *(this + 26) = v10;
    operator delete(v10);
  }

  v17 = (this + 176);
  std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::__destroy_vector::operator()[abi:nn200100](&v17);
  v11 = *(this + 19);
  if (v11)
  {
    *(this + 20) = v11;
    operator delete(v11);
  }

  v12 = *(this + 13);
  if (v12)
  {
    *(this + 14) = v12;
    operator delete(v12);
  }

  v13 = *(this + 10);
  if (v13)
  {
    *(this + 11) = v13;
    operator delete(v13);
  }

  v14 = *(this + 7);
  if (v14)
  {
    *(this + 8) = v14;
    operator delete(v14);
  }

  v15 = *(this + 4);
  if (v15)
  {
    *(this + 5) = v15;
    operator delete(v15);
  }

  v16 = *(this + 1);
  if (v16)
  {
    *(this + 2) = v16;
    operator delete(v16);
  }
}

void *std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void OpenSubdiv::v3_1_1::Far::PatchTable::allocateVaryingVertices(uint64_t a1, OpenSubdiv::v3_1_1::Far::PatchDescriptor *a2, int a3)
{
  *(a1 + 144) = *a2;
  v4 = (OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(a2) * a3);

  std::vector<float>::resize((a1 + 152), v4);
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 56 * a2;
    while (v3 != v7)
    {
      v3 -= 7;
      std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](a1, v3);
    }

    a1[1] = v7;
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues(uint64_t a1, OpenSubdiv::v3_1_1::Far::PatchDescriptor *a2, int a3, signed int a4)
{
  if (a4 < 0 || (v4 = *(a1 + 176), (-1227133513 * ((*(a1 + 184) - v4) >> 3)) <= a4))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues();
  }

  v6 = v4 + 56 * a4;
  *(v6 + 4) = *a2;
  NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(a2);
  std::vector<float>::resize((v6 + 8), NumControlVertices * a3);

  std::vector<ClippedCorner>::resize((v6 + 32), a3);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::setFVarPatchChannelLinearInterpolation(uint64_t result, int a2, signed int a3)
{
  if (a3 < 0 || (v3 = *(result + 176), (-1227133513 * ((*(result + 184) - v3) >> 3)) <= a3))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues();
  }

  *(v3 + 56 * a3) = a2;
  return result;
}

uint64_t *OpenSubdiv::v3_1_1::Far::PatchTable::pushPatchArray(uint64_t *result, int *a2, int a3, int *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v11 = result;
    if (a6)
    {
      v12 = *a6;
    }

    else
    {
      v12 = 0;
    }

    v13 = *a2;
    v14 = *a4;
    v15 = *a5;
    v16 = result[2];
    v17 = result[3];
    if (v16 >= v17)
    {
      v19 = result[1];
      v20 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v19) >> 2);
      v21 = v20 + 1;
      if (v20 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v22 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v19) >> 2);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x666666666666666)
      {
        v23 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v23 = v21;
      }

      v30 = result + 1;
      if (v23)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>>((result + 1), v23);
      }

      v24 = 20 * v20;
      __p = 0;
      v27 = v24;
      v29 = 0;
      *v24 = v13;
      *(v24 + 4) = a3;
      *(v24 + 8) = v14;
      *(v24 + 12) = v15;
      *(v24 + 16) = v12;
      v28 = 20 * v20 + 20;
      std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::__swap_out_circular_buffer(result + 1, &__p);
      if (v28 != v27)
      {
        v28 = (v28 - v27 - 20) % 0x14uLL + v27;
      }

      v18 = v11[2];
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v16 = v13;
      v16[1] = a3;
      v16[2] = v14;
      v16[3] = v15;
      v18 = v16 + 5;
      v16[4] = v12;
    }

    v11[2] = v18;
    LODWORD(__p) = *a2;
    result = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&__p);
    v25 = result * a3;
    *a4 += result * a3;
    *a5 += a3;
    if (a6)
    {
      if (*a2 != 7)
      {
        v25 = 0;
      }

      *a6 += v25;
    }
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2, int a3)
{
  v3 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v3) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  v4 = v3 + 20 * a2;
  if (*(v4 + 4) <= a3)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  return (*(v4 + 12) + a3);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::getSharpnessIndices(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2)
{
  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getSharpnessIndices();
  }

  return *(this + 28) + 4 * *(v2 + 20 * a2 + 12);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayDescriptor@<X0>(uint64_t this@<X0>, signed int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = *(this + 8);
  if ((-858993459 * ((*(this + 16) - v3) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  *a3 = *(v3 + 20 * a2);
  return this;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatches(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2)
{
  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  return *(v2 + 20 * a2 + 4);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetNumControlVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2)
{
  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  v3 = *(v2 + 20 * a2 + 4);
  v5 = *(v2 + 20 * a2);
  return v3 * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v5);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::getPatchArrayVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2)
{
  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getSharpnessIndices();
  }

  v4 = (v2 + 20 * a2);
  v8 = *v4;
  OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v8);
  v5 = v4[2];
  v6 = *(this + 4);
  if (v5 >= ((*(this + 5) - v6) >> 2))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchArrayVertices();
  }

  return v6 + 4 * v5;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2)
{
  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  v4 = (v2 + 20 * a2);
  v8 = *v4;
  OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v8);
  v5 = v4[2];
  v6 = *(this + 4);
  if (v5 >= ((*(this + 5) - v6) >> 2))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVertices();
  }

  return v6 + 4 * v5;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2, int a3)
{
  v3 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v3) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  v5 = (v3 + 20 * a2);
  v9 = *v5;
  v6 = v5[2] + OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v9) * a3;
  v7 = *(this + 4);
  if (v6 >= ((*(this + 5) - v7) >> 2))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchVertices();
  }

  return v7 + 4 * v6;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::getPatchParams(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2)
{
  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getSharpnessIndices();
  }

  return *(this + 7) + 8 * *(v2 + 20 * a2 + 12);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVaryingVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2)
{
  if (*(this + 19) == *(this + 20))
  {
    return 0;
  }

  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  return *(this + 19) + 4 * (*(v2 + 20 * a2 + 12) * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices((this + 144)));
}

_DWORD *OpenSubdiv::v3_1_1::Far::PatchTable::populateVaryingVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this)
{
  result = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices((this + 144));
  v4 = *(this + 1);
  v3 = *(this + 2);
  if ((-858993459 * ((v3 - v4) >> 2)) >= 1)
  {
    v5 = result;
    v6 = 0;
    while (1)
    {
      if (v6 >= (-858993459 * ((v3 - v4) >> 2)))
      {
        OpenSubdiv::v3_1_1::Far::PatchTable::getSharpnessIndices();
      }

      v7 = (v4 + 20 * v6);
      if (v7[1] >= 1)
      {
        break;
      }

LABEL_18:
      if (++v6 >= (-858993459 * ((v3 - v4) >> 2)))
      {
        return result;
      }
    }

    v8 = 0;
    v9 = *v7;
    while (1)
    {
      result = OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchVertices(this, v6, v8);
      v10 = (v8 + v7[3]) * v5;
      if (v9 <= 5)
      {
        if (v9 != 3)
        {
          if (v9 == 4)
          {
            v11 = (*(this + 19) + 4 * v10);
            *v11 = *result;
            v11[1] = result[1];
            v11[2] = result[2];
          }

          goto LABEL_16;
        }

        v12 = (*(this + 19) + 4 * v10);
        *v12 = *result;
        v12[1] = result[1];
        v12[2] = result[2];
        v13 = result[3];
        goto LABEL_15;
      }

      if (v9 == 9)
      {
        break;
      }

      if (v9 == 6)
      {
        v12 = (*(this + 19) + 4 * v10);
        *v12 = result[5];
        v12[1] = result[6];
        v12[2] = result[10];
        v13 = result[9];
LABEL_15:
        v12[3] = v13;
      }

LABEL_16:
      if (++v8 >= v7[1])
      {
        v4 = *(this + 1);
        v3 = *(this + 2);
        goto LABEL_18;
      }
    }

    v12 = (*(this + 19) + 4 * v10);
    *v12 = *result;
    v12[1] = result[5];
    v12[2] = result[10];
    v13 = result[15];
    goto LABEL_15;
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor@<X0>(uint64_t this@<X0>, signed int a2@<W1>, _DWORD *a3@<X8>)
{
  if (a2 < 0 || (v3 = *(this + 176), (-1227133513 * ((*(this + 184) - v3) >> 3)) <= a2))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor();
  }

  *a3 = *(v3 + 56 * a2 + 4);
  return this;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::getFVarValues(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2)
{
  if (a2 < 0 || (v2 = *(this + 22), (-1227133513 * ((*(this + 23) - v2) >> 3)) <= a2))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues();
  }

  return *(v2 + 56 * a2 + 8);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayFVarValues(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2, unsigned int a3)
{
  v3 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v3) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  if ((a3 & 0x80000000) != 0 || (v4 = *(this + 22), (-1227133513 * ((*(this + 23) - v4) >> 3)) <= a3))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor();
  }

  return *(v4 + 56 * a3 + 8) + 4 * (*(v3 + 20 * a2 + 12) * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices((v4 + 56 * a3 + 4)));
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayFVarPatchParams(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2, signed int a3)
{
  v3 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v3) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  if (a3 < 0 || (v4 = *(this + 22), (-1227133513 * ((*(this + 23) - v4) >> 3)) <= a3))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor();
  }

  return *(v4 + 56 * a3 + 32) + 8 * *(v3 + 20 * a2 + 12);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::getFVarPatchParams(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2)
{
  if (a2 < 0 || (v2 = *(this + 22), (-1227133513 * ((*(this + 23) - v2) >> 3)) <= a2))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues();
  }

  return *(v2 + 56 * a2 + 32);
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 7;
        std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    a2[5] = v3;
    operator delete(v3);
  }

  v4 = a2[1];
  if (v4)
  {
    a2[2] = v4;

    operator delete(v4);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 4) = *(v2 + 4);
      v2 += 20;
      v5 += 20;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::__append(void *a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 56 * ((56 * a2 - 56) / 0x38) + 56;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x492492492492492)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>>(a1, v9);
    }

    v11 = 56 * v6;
    v12 = 56 * ((56 * a2 - 56) / 0x38) + 56;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1];
    v15 = (v11 + *a1 - v14);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>,OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel*>(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::~__split_buffer(v18);
  }
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>,OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      a4[2] = 0;
      a4[3] = 0;
      a4[1] = 0;
      *(a4 + 1) = *(v7 + 1);
      a4[3] = v7[3];
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      a4[6] = 0;
      *(a4 + 2) = *(v7 + 2);
      a4[6] = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      v7 += 7;
      a4 += 7;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](a1, v5);
      v5 += 7;
    }
  }
}

void **std::__split_buffer<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::~__split_buffer(void **a1)
{
  std::__split_buffer<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](v4, (i - 56));
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex()
{
  __assert_rtn("getPatchArray", "patchTable.cpp", 121, "arrayIndex<(Index)GetNumPatchArrays()");
}

{
  __assert_rtn("getPatchIndex", "patchTable.cpp", 228, "patchIndex<pa.numPatches");
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing(OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  v9 = *v8;
  end = (*v8)->__end_;
  if (!end)
  {
    v12 = "Failure in TopologyRefinerFactory<>::Create() -- mesh contains no vertices.";
LABEL_12:
    OpenSubdiv::v3_1_1::Far::Error(4, v12, a3, a4, a5, a6, a7, a8, v30);
    return 0;
  }

  begin = v9->__begin_;
  if (!LODWORD(v9->__begin_))
  {
    v12 = "Failure in TopologyRefinerFactory<>::Create() -- meshes without faces not yet supported.";
    goto LABEL_12;
  }

  if (SHIDWORD(v9->__end_cap_.__value_) >= 0x10000)
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- face with %d vertices > %d max.", a3, a4, a5, a6, a7, a8, HIDWORD(v9->__end_cap_.__value_));
    return 0;
  }

  v13 = &v9[1].__begin_[2 * begin - 2];
  v15 = *v13;
  v14 = v13[1];
  v16 = v14 + v15;
  if (!(v14 + v15))
  {
    v12 = "Failure in TopologyRefinerFactory<>::Create() -- mesh contains no face-vertices.";
    goto LABEL_12;
  }

  if (*this == 2 && v16 != 3 * begin)
  {
    v12 = "Failure in TopologyRefinerFactory<>::Create() -- non-triangular faces not supported by Loop scheme.";
    goto LABEL_12;
  }

  std::vector<float>::resize(v9 + 2, v16);
  begin_high = HIDWORD(v9->__begin_);
  if (begin_high >= 1)
  {
    std::vector<float>::resize(v9 + 3, (v9[2].__end_ - v9[2].__begin_));
    std::vector<float>::resize(v9 + 5, 2 * SHIDWORD(v9->__begin_));
    v19 = &v9[6].__begin_[2 * begin_high - 2];
    v20 = *v19;
    v21 = v19[1];
    std::vector<float>::resize(v9 + 7, v21 + v20);
    std::vector<unsigned short>::resize(&v9[8].__begin_, v21 + v20);
    v22 = 2 * end - 2;
    v23 = v9[11].__begin_;
    v24 = v23[v22];
    v25 = (8 * (v22 >> 1)) | 4;
    v26 = *(v23 + v25);
    std::vector<float>::resize(v9 + 12, v26 + v24);
    std::vector<unsigned short>::resize(&v9[13].__begin_, v26 + v24);
    v27 = v9[14].__begin_;
    v28 = v27[v22];
    v29 = *(v27 + v25);
    std::vector<float>::resize(v9 + 15, v29 + v28);
    std::vector<unsigned short>::resize(&v9[16].__begin_, v29 + v28);
    if (((v9[3].__end_ - v9[3].__begin_) >> 2) <= 0)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing();
    }

    if (((v9[5].__end_ - v9[5].__begin_) >> 2) <= 0)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing();
    }

    if (((v9[7].__end_ - v9[7].__begin_) >> 2) <= 0)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing();
    }

    if (((v9[12].__end_ - v9[12].__begin_) >> 2) <= 0)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing();
    }

    if (((v9[15].__end_ - v9[15].__begin_) >> 2) <= 0)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing();
    }
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologyAssignment(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this, int a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(this + 5);
  v13 = *v12;
  v14 = *(*v12 + 1);
  if (v14)
  {
    if (!*(v13 + 5))
    {
      v15 = "Failure in TopologyRefinerFactory<>::Create() -- maximum valence not assigned.";
LABEL_12:
      OpenSubdiv::v3_1_1::Far::Error(4, v15, a3, a4, a5, a6, a7, a8, v23);
      return 0;
    }

LABEL_5:
    if (!a2 || (OpenSubdiv::v3_1_1::Vtr::internal::Level::validateTopology(v13, a3, a4) & 1) != 0)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefiner::initializeInventory(this);
      return 1;
    }

    if (v14)
    {
      v15 = "Failure in TopologyRefinerFactory<>::Create() -- invalid topology detected as fully specified.";
    }

    else
    {
      v15 = "Failure in TopologyRefinerFactory<>::Create() -- invalid topology detected from partial specification.";
    }

    goto LABEL_12;
  }

  if (OpenSubdiv::v3_1_1::Vtr::internal::Level::completeTopologyFromFaceVertices(*v12))
  {
    goto LABEL_5;
  }

  OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- vertex with valence %d > %d max.", v16, v17, v18, v19, v20, v21, *(v13 + 5));
  return 0;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTagsAndSharpness(OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2)
{
  v3 = **(this + 5);
  v4 = *(this + 1);
  v65 = v4;
  v59 = v4 & 3;
  v62 = (v4 & 3) == 0 && OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetLocalNeighborhoodSize(*this) > 0;
  if (*(v3 + 4) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v3 + 240);
      v8 = *(v3 + 216);
      v9 = *(*(v3 + 144) + v5) < 2;
      v10 = *(v7 + v6);
      v11 = v10 & 0xFD | (2 * v9);
      *(v7 + v6) = v11;
      if (v9 || (v10 & 1) != 0)
      {
        *(v8 + 4 * v6) = 1092616192;
        v11 = *(v7 + v6);
        v12 = 10.0;
      }

      else
      {
        v12 = *(v8 + 4 * v6);
      }

      v13 = v12 >= 10.0;
      v14 = v11 & 0xFB | (4 * (v12 >= 10.0));
      *(v7 + v6) = v14;
      v15 = *(v8 + 4 * v6);
      v16 = (8 * v13) ^ 8;
      if (v15 <= 0.0)
      {
        v16 = 0;
      }

      *(v7 + v6++) = v16 | v14 & 0xF7;
      v5 += 8;
    }

    while (v6 < *(v3 + 4));
  }

  RegularVertexValence = OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetRegularVertexValence(*this);
  if (*(v3 + 8) >= 1)
  {
    for (i = 0; i < *(v3 + 8); ++i)
    {
      v18 = *(v3 + 336);
      v19 = (8 * i) | 4;
      v20 = *(v3 + 360) + 4 * *(v18 + v19);
      v21 = *(v18 + 8 * i);
      if (v21 < 1)
      {
        v31 = 0;
        v24 = 0;
        v30 = 1;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = v21;
        v26 = v20;
        do
        {
          v27 = *v26++;
          v28 = *(*(v3 + 240) + v27);
          v22 += (v28 >> 1) & 1;
          v24 = vadd_s32(v24, (*&vshl_u32(vdup_n_s32(v28), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
          v23 += v28 & 1;
          --v25;
        }

        while (v25);
        v29 = v23 == 2;
        v30 = v22 == 0;
        if (v22)
        {
          v31 = 0;
        }

        else
        {
          v31 = v29;
        }
      }

      v32 = *(v3 + 432);
      v33 = *(v3 + 408);
      v34 = *(v3 + 264);
      v35 = *(v34 + 8 * i);
      v61 = v20;
      v63 = *(v34 + v19);
      v64 = *(v3 + 288);
      if (v35 == 1)
      {
        v36 = v21 == 2;
        if (v59 == 2 && v21 == 2)
        {
          v36 = 1;
LABEL_32:
          *(v33 + 4 * i) = 1092616192;
          goto LABEL_33;
        }
      }

      else
      {
        v36 = 0;
      }

      v37 = v35 > v21 && v31;
      if ((*(v32 + 2 * i) & 1) != 0 && !v37)
      {
        goto LABEL_32;
      }

LABEL_33:
      v38 = v24.i32[1];
      v39 = v24.i32[0];
      v40 = *(v32 + 2 * i) & 0xFFEF | (16 * (*(v33 + 4 * i) >= 10.0));
      *(v32 + 2 * i) = v40;
      v41 = *(v33 + 4 * i);
      if (v41 < 10.0 && v41 > 0.0)
      {
        v43 = 32;
      }

      else
      {
        v43 = 0;
      }

      *(v32 + 2 * i) = v40 & 0xFF9F | ((v39 != 0) << 6) | v43;
      v44 = OpenSubdiv::v3_1_1::Sdc::Crease::DetermineVertexVertexRule(&v65, *(v33 + 4 * i), v24.i32[1] + v39);
      v45 = *(v32 + 2 * i);
      if (v30)
      {
        v46 = 0;
      }

      else
      {
        v46 = 4;
      }

      if (v36 && (v45 & 0x10) != 0)
      {
        v47 = 8;
      }

      else
      {
        v47 = 2 * (v35 != RegularVertexValence);
        if (!v30)
        {
          v47 = 2 * (v35 != RegularVertexValence / 2);
        }
      }

      *(v32 + 2 * i) = ((v44 & 0xF) << 7) | v47 | v45 & 0x8071 | v46 | ((v38 != 0) << 12) | (((v38 | v45 & 0x10) != 0) << 14);
      if (!v38)
      {
        goto LABEL_67;
      }

      v48 = *(v33 + 4 * i);
      if ((v45 & 0x10) == 0)
      {
        v48 = 0.0;
      }

      v49 = OpenSubdiv::v3_1_1::Sdc::Crease::DetermineVertexVertexRule(&v65, v48, v38);
      if (v49 == 8)
      {
        if (v38 != v21)
        {
          goto LABEL_67;
        }

        v54 = *(v32 + 2 * i);
        if (v21 <= 2 && (v54 & 0x10) == 0)
        {
          goto LABEL_67;
        }

        LOWORD(v55) = v54 & 0xBFFF;
      }

      else
      {
        if (v49 != 4)
        {
          goto LABEL_67;
        }

        v50 = *(v32 + 2 * i);
        v51 = v50 | 0x2000;
        *(v32 + 2 * i) = v50 | 0x2000;
        if ((v50 & 3) != 0)
        {
          goto LABEL_67;
        }

        if ((v50 & 4) != 0)
        {
          LOWORD(v55) = v50 & 0x9FFC | 0x2000;
        }

        else if (RegularVertexValence == 4)
        {
          v55 = v50 & 0x9FF8 | 0x2000 | ((((*(*(v3 + 240) + v61[2]) ^ *(*(v3 + 240) + *v61)) >> 2) & 1) << 14);
        }

        else
        {
          if (RegularVertexValence != 6)
          {
            OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTagsAndSharpness();
          }

          v52 = *(v3 + 240);
          if (((*(v52 + v61[3]) ^ *(v52 + *v61)) & 4) != 0)
          {
            v53 = 0x4000;
          }

          else
          {
            v53 = ((*(v52 + v61[4]) ^ *(v52 + v61[1])) & 4) << 12;
          }

          LOWORD(v55) = v53 | v51 & 0xBFF8;
        }
      }

      *(v32 + 2 * i) = v55;
LABEL_67:
      if (v62 && (*(v32 + 2 * i) & 4) != 0 && v35 >= 1)
      {
        v56 = (v64 + 4 * v63);
        do
        {
          v57 = *v56++;
          *(*(v3 + 96) + v57) |= 1u;
          *(this + 8) |= 2u;
          --v35;
        }

        while (v35);
      }
    }
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareFaceVaryingChannels(OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2)
{
  v3 = **(this + 5);
  RegularVertexValence = OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetRegularVertexValence(*this);
  if (((*(**(this + 5) + 464) - *(**(this + 5) + 456)) >> 3) < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = RegularVertexValence / 2;
  while (OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(v3, v5))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::completeFVarChannelTopology(v3, v5++, v6);
    if (v5 >= ((*(**(this + 5) + 464) - *(**(this + 5) + 456)) >> 3))
    {
      return 1;
    }
  }

  OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- face-varying channel %d has no values.", v7, v8, v9, v10, v11, v12, v5);
  return 0;
}