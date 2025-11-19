uint64_t CMYKf16_sample_CMYKf_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(result + 24);
  v8 = *(result + 28);
  v9 = *(result + 112);
  v10 = *(result + 48);
  v11 = *(result + 56);
  if (v10)
  {
    v165 = *(result + 112);
    if (v9 > v10)
    {
      v165 = v9 % v10;
    }
  }

  else
  {
    v165 = 0;
  }

  v12 = *(result + 176);
  v14 = *(result + 32);
  v13 = *(result + 40);
  v15 = *(result + 120);
  if (v11)
  {
    v16 = v15 % v11;
    if (v15 <= v11)
    {
      v16 = *(result + 120);
    }

    v164 = v16;
  }

  else
  {
    v164 = 0;
  }

  v160 = *(result + 80);
  v162 = *(result + 88);
  v159 = *(result + 188);
  v17 = *(result + 152) - 10;
  v18 = *(result + 144) - 1;
  v19 = *(result + 260) - 1;
  v20 = *(result + 256);
  v21 = v13 + (v19 * v8) + 2 * (v20 - 1);
  v157 = *(result + 240);
  v22 = v14 + (v19 * v7) + 2 * (4 * v20) - 8;
  v161 = *(result + 64);
  v163 = *(result + 72);
  v23 = a4;
  while (1)
  {
    if (a3 >= v163)
    {
      if (a3 <= v162)
      {
        v32 = 0;
        v33 = (a3 >> 22) & 0x3C0;
        v34 = 0x3FFFFFFF;
        v35 = a3;
      }

      else
      {
        v28 = *(result + 216);
        v29 = *(result + 224) + v162;
        v30 = v29 - a3 + (v28 >> 1);
        if (v30 < 1)
        {
          goto LABEL_57;
        }

        if (v30 >= v28)
        {
          LODWORD(v31) = 0x3FFFFFFF;
        }

        else
        {
          v31 = (*(result + 232) * v30) >> 32;
        }

        v34 = v159 | v31;
        v35 = v29 - 0x1000000;
        v32 = a3 - (v29 - 0x1000000);
        v33 = 448;
      }
    }

    else
    {
      v24 = *(result + 216);
      v25 = v163 - *(result + 224);
      v26 = a3 - v25 + (v24 >> 1);
      if (v26 < 1)
      {
        goto LABEL_57;
      }

      if (v26 >= v24)
      {
        LODWORD(v27) = 0x3FFFFFFF;
      }

      else
      {
        v27 = (*(result + 232) * v26) >> 32;
      }

      v34 = v159 | v27;
      v35 = v25 + 0x1000000;
      v32 = a3 - (v25 + 0x1000000);
      v33 = 512;
    }

    if (a2 >= v161)
    {
      break;
    }

    v36 = *(result + 192);
    v37 = v161 - *(result + 200);
    v38 = a2 - v37 + (v36 >> 1);
    if (v38 >= 1)
    {
      if (v38 < v36)
      {
        v34 = ((v34 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v159;
      }

      v39 = v37 + 0x1000000;
      v40 = a2 - (v37 + 0x1000000);
      v41 = 32;
      goto LABEL_35;
    }

LABEL_57:
    --v23;
    a2 += v9;
    a3 += v15;
    v17 += 10;
    *++v18 = 0;
LABEL_58:
    if (!v23)
    {
      return result;
    }
  }

  if (a2 <= v160)
  {
    v40 = 0;
    v41 = (a2 >> 26) & 0x3C;
    v39 = a2;
    goto LABEL_35;
  }

  v42 = *(result + 192);
  v43 = *(result + 200) + v160;
  v44 = v43 - a2 + (v42 >> 1);
  if (v44 < 1)
  {
    goto LABEL_57;
  }

  if (v44 < v42)
  {
    v34 = ((v34 >> 15) * (((*(result + 208) * v44) >> 32) >> 15)) | v159;
  }

  v39 = v43 - 0x1000000;
  v40 = a2 - (v43 - 0x1000000);
  v41 = 28;
LABEL_35:
  if (v34 < 0x400000)
  {
    goto LABEL_57;
  }

  if (v10)
  {
    v45 = (v11 & ((v35 % v11) >> 63)) + v35 % v11;
    v46 = (v10 & ((v39 % v10) >> 63)) + v39 % v10;
    if (v45 >= v11)
    {
      v47 = v11;
    }

    else
    {
      v47 = 0;
    }

    v35 = v45 - v47;
    if (v46 >= v10)
    {
      v48 = v10;
    }

    else
    {
      v48 = 0;
    }

    v39 = v46 - v48;
    v32 += v35;
    v40 += v46 - v48;
  }

  v49 = v35 >> 32;
  v50 = v39 >> 32;
  v51 = v14 + SHIDWORD(v35) * v7 + 8 * (v39 >> 32);
  v52 = *(result + 32);
  if (v22 >= v51)
  {
    v53 = v51;
  }

  else
  {
    v53 = v22;
  }

  if (v53 >= v52)
  {
    v54 = v53;
  }

  else
  {
    v54 = *(result + 32);
  }

  if (v13)
  {
    v55 = v13 + v49 * v8 + 2 * v50;
    v56 = *(result + 40);
    if (v21 >= v55)
    {
      v57 = v55;
    }

    else
    {
      v57 = v21;
    }

    if (v57 >= v56)
    {
      v56 = v57;
    }

    _H4 = *v56;
  }

  else
  {
    v55 = 0;
    LOWORD(_H4) = COERCE_UNSIGNED_INT(1.0);
  }

  v59 = *v54;
  if (v12)
  {
    v60 = *(v12 + (v41 | v33));
LABEL_63:
    v61 = v60 & 0xF;
    v62 = v60 >> 8;
    v63 = HIBYTE(v60) & 3;
    if (v61 == 1)
    {
      LODWORD(v126) = SBYTE1(v60);
      if (v10)
      {
        v127 = v62 << 56;
        v128 = v32 + (v62 << 32);
        v129 = v11 & (v128 >> 63);
        if (v129 + v128 >= v11)
        {
          v130 = v11;
        }

        else
        {
          v130 = 0;
        }

        v126 = (v129 + (v127 >> 24) - v130) >> 32;
      }

      v131 = (v51 + v126 * v7);
      if (v22 < v131)
      {
        v131 = v22;
      }

      if (v131 < v52)
      {
        v131 = v52;
      }

      v121 = *v131;
      _S7 = 1.0;
      if (v13)
      {
        v132 = (v55 + v126 * v8);
        if (v21 < v132)
        {
          v132 = v21;
        }

        if (v132 < *(result + 40))
        {
          v132 = *(result + 40);
        }

        _H7 = *v132;
        __asm { FCVT            S7, H7 }
      }

      v125 = &interpolate_cmykaf[5 * v63];
    }

    else
    {
      if (v61 != 2)
      {
        if (v61 == 3)
        {
          LODWORD(v64) = SBYTE1(v60);
          v65 = SBYTE2(v60);
          if (v10)
          {
            v66 = v62 << 56;
            v67 = HIWORD(v60) << 56;
            v68 = v32 + (v66 >> 24);
            v69 = v40 + (v67 >> 24);
            v70 = v34;
            v71 = v11 & (v68 >> 63);
            v156 = v8;
            v72 = v10 & (v69 >> 63);
            v73 = v72 + v69;
            if (v71 + v68 >= v11)
            {
              v74 = v11;
            }

            else
            {
              v74 = 0;
            }

            if (v73 >= v10)
            {
              v75 = v10;
            }

            else
            {
              v75 = 0;
            }

            v76 = v71 + (v66 >> 24);
            v34 = v70;
            v63 = HIBYTE(v60) & 3;
            v64 = (v76 - v74) >> 32;
            v77 = v72 + (v67 >> 24);
            v8 = v156;
            v65 = (v77 - v75) >> 32;
          }

          v78 = (v51 + 8 * v65);
          if (v22 < v78)
          {
            v78 = v22;
          }

          if (v78 < v52)
          {
            v78 = v52;
          }

          v79 = v51 + v64 * v7;
          if (v22 >= v79)
          {
            v80 = (v51 + v64 * v7);
          }

          else
          {
            v80 = v22;
          }

          if (v80 < v52)
          {
            v80 = v52;
          }

          v81 = (v79 + 8 * v65);
          if (v22 < v81)
          {
            v81 = v22;
          }

          if (v81 < v52)
          {
            v81 = v52;
          }

          v82 = *v78;
          v83 = *v80;
          v84 = *v81;
          _S17 = 1.0;
          _S18 = 1.0;
          _S19 = 1.0;
          if (v13)
          {
            v88 = (v55 + 2 * v65);
            v89 = *(result + 40);
            if (v21 < v88)
            {
              v88 = v21;
            }

            if (v88 < v89)
            {
              v88 = *(result + 40);
            }

            _H17 = *v88;
            v91 = v55 + v64 * v8;
            if (v21 >= v91)
            {
              v92 = (v55 + v64 * v8);
            }

            else
            {
              v92 = v21;
            }

            if (v92 < v89)
            {
              v92 = *(result + 40);
            }

            _H18 = *v92;
            v94 = (v91 + 2 * v65);
            if (v21 < v94)
            {
              v94 = v21;
            }

            if (v94 < v89)
            {
              v94 = *(result + 40);
            }

            _H20 = *v94;
            __asm
            {
              FCVT            S19, H17
              FCVT            S18, H18
              FCVT            S17, H20
            }
          }

          _H20 = interpolate_cmykaf[5 * v63 + 4];
          __asm { FCVT            S20, H20 }

          _H21 = interpolate_cmykaf[5 * ((v60 >> 28) & 3) + 4];
          __asm { FCVT            S21, H21 }

          v101 = vcvtq_f32_f16(v59);
          v102 = vcvtq_f32_f16(v82);
          v103 = vcvtq_f32_f16(v83);
          _Q16 = vcvtq_f32_f16(v84);
          __asm { FCVT            S4, H4 }

          v105 = (_S4 - (_S4 * _D21.f32[0])) + (_S19 * _D21.f32[0]);
          v106 = v105 > 1.0 || v105 < 0.0;
          if (v105 < 0.0 && v105 <= 1.0)
          {
            v107 = 0.0;
          }

          else
          {
            v107 = 1.0;
          }

          if (v106)
          {
            v105 = v107;
          }

          v108 = (_S18 - (_S18 * _D21.f32[0])) + (_S17 * _D21.f32[0]);
          v109 = v108 > 1.0 || v108 < 0.0;
          if (v108 < 0.0 && v108 <= 1.0)
          {
            v110 = 0.0;
          }

          else
          {
            v110 = 1.0;
          }

          if (v109)
          {
            v108 = v110;
          }

          v111 = vmlaq_n_f32(vmlsq_lane_f32(v101, v101, _D21, 0), v102, _D21.f32[0]);
          v59 = vcvt_f16_f32(vmlaq_n_f32(vmlsq_lane_f32(v111, v111, _D20, 0), vmlaq_n_f32(vmlsq_lane_f32(v103, v103, _D21, 0), _Q16, _D21.f32[0]), _D20.f32[0]));
          _S4 = (v105 - (v105 * _D20.f32[0])) + (v108 * _D20.f32[0]);
          v113 = _S4 > 1.0 || _S4 < 0.0;
          if (_S4 < 0.0 && _S4 <= 1.0)
          {
            v114 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v114) = COERCE_UNSIGNED_INT(1.0);
          }

          __asm { FCVT            H4, S4 }

          if (v113)
          {
            _H4 = v114;
          }
        }

        goto LABEL_160;
      }

      v115 = SBYTE2(v60);
      if (v10)
      {
        v116 = HIWORD(v60) << 56;
        v117 = v40 + (v116 >> 24);
        v118 = v10 & (v117 >> 63);
        if (v118 + v117 >= v10)
        {
          v119 = v10;
        }

        else
        {
          v119 = 0;
        }

        v115 = (v118 + (v116 >> 24) - v119) >> 32;
      }

      v120 = (v51 + 8 * v115);
      if (v22 < v120)
      {
        v120 = v22;
      }

      if (v120 < v52)
      {
        v120 = v52;
      }

      v121 = *v120;
      _S7 = 1.0;
      if (v13)
      {
        v123 = (v55 + 2 * v115);
        if (v21 < v123)
        {
          v123 = v21;
        }

        if (v123 < *(result + 40))
        {
          v123 = *(result + 40);
        }

        _H7 = *v123;
        __asm { FCVT            S7, H7 }
      }

      v125 = &interpolate_cmykaf[5 * ((v60 >> 28) & 3)];
    }

    _Q16.i16[0] = *(v125 + 4);
    __asm { FCVT            S16, H16 }

    v134 = vcvtq_f32_f16(v59);
    v59 = vcvt_f16_f32(vmlaq_n_f32(vmlsq_lane_f32(v134, v134, *_Q16.f32, 0), vcvtq_f32_f16(v121), _Q16.f32[0]));
    __asm { FCVT            S4, H4 }

    _S4 = (_S4 - (_S4 * _Q16.f32[0])) + (_S7 * _Q16.f32[0]);
    __asm { FCVT            H4, S4 }
  }

LABEL_160:
  *(v17 + 10) = v59;
  *(v17 + 18) = _H4;
  *++v18 = v34 >> 22;
  if (--v23)
  {
    v137 = (v17 + 28);
    a2 += v9;
    v138 = v160 - a2;
    a3 += v15;
    v139 = v162 - a3;
    while (1)
    {
      v17 = (v137 - 9);
      if ((v139 | v138 | (a3 - v163) | (a2 - v161)) < 0)
      {
        goto LABEL_58;
      }

      if (v10)
      {
        v140 = (v11 & ((v32 + v164) >> 63)) + v32 + v164;
        v141 = (v10 & ((v40 + v165) >> 63)) + v40 + v165;
        if (v140 >= v11)
        {
          v142 = v11;
        }

        else
        {
          v142 = 0;
        }

        v32 = v140 - v142;
        if (v141 >= v10)
        {
          v143 = v10;
        }

        else
        {
          v143 = 0;
        }

        v40 = v141 - v143;
        v144 = v32;
        v145 = v40;
      }

      else
      {
        v144 = a3;
        v145 = a2;
      }

      v146 = v145 >> 32;
      v147 = v144 >> 32;
      v148 = v14 + v147 * v7;
      v51 = v148 + 8 * v146;
      v52 = *(result + 32);
      if (v22 >= v51)
      {
        v149 = (v148 + 8 * v146);
      }

      else
      {
        v149 = v22;
      }

      if (v149 < v52)
      {
        v149 = *(result + 32);
      }

      if (v13)
      {
        v55 = v13 + v147 * v8 + 2 * v146;
        v150 = *(result + 40);
        if (v21 >= v55)
        {
          v151 = v55;
        }

        else
        {
          v151 = v21;
        }

        if (v151 >= v150)
        {
          v150 = v151;
        }

        _H4 = *v150;
      }

      else
      {
        LOWORD(_H4) = COERCE_UNSIGNED_INT(1.0);
      }

      v59 = *v149;
      if (v12)
      {
        v60 = *(v12 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        v152 = v60 & 0xF;
        if ((v60 & 0xF) != 0)
        {
          v153 = *(result + 264);
          v154 = *v153;
          if (v23 + 1 != a4 && v23 != 1 && v157 != 1 && v154 == 3 && v152 < 3)
          {
            v60 |= 3u;
          }

          v34 = -1;
          if (v154 < v152)
          {
            *v153 = v152;
          }

          goto LABEL_63;
        }
      }

      *(v137 - 1) = v59;
      *v137 = _H4;
      v137 += 5;
      a2 += v9;
      v138 -= v9;
      a3 += v15;
      *++v18 = -1;
      v139 -= v15;
      if (!--v23)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t CMYKf16_shade(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v6 = v3;
  v20[482] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v8 = !*(v3 + 12) && !*(v4 + 72) && *(v4 + 4) >= 1.0;
  v9 = *(*(*v2 + 56) + 16 * *v3 + 8 * v8 + 4 * (*(v3 + 6) == 0));
  if (v9 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1) < 1 || *(v3 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v3, v4, &v13, v18) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v5 & 0xF000000) != 0x4000000)
  {
    if (v13)
    {
      goto LABEL_22;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v5 + 16))
  {
    v12 = CMYKf16_shade_radial_CMYK;
  }

  else if (*(v5 + 24))
  {
    v12 = CMYKf16_shade_conic_CMYK;
  }

  else if (v16 < 2)
  {
    v12 = CMYKf16_shade_axial_CMYK;
  }

  else
  {
    v12 = CMYKf16_shade_custom_CMYK;
  }

  v13 = v12;
LABEL_22:
  v14 = *v7;
  v15 = v14;
  CMYKf16_image_mark(v6, &v13, v9, v11);
  if (v17 && (v17 < &v19 || v20 < v17))
  {
    free(v17);
  }

  return 1;
}

void CMYKf16_shade_axial_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 272);
  v7 = *(a1 + 296) + ((*(a1 + 288) * (v6[1] * a3)) + (v5 * (v6[1] * a2)));
  v8 = *(a1 + 336);
  v9 = *(a1 + 344);
  v10 = *(a1 + 304);
  v11 = *(a1 + 308);
  LODWORD(v12) = *(a1 + 320);
  v13 = *(a1 + 324);
  v16 = a1 + 144;
  v14 = *(a1 + 144);
  v15 = *(v16 + 8);
  v17 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v18 = *(a1 + 392);
  }

  else
  {
    v18 = v6;
  }

  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  if (v19)
  {
    v6 = v19;
  }

  if (v5 != 0.0)
  {
    for (i = (v15 + 8); ; i = (i + 10))
    {
      LODWORD(v23) = v12;
      if (v7 >= v10)
      {
        LODWORD(v23) = v13;
        if (v7 <= v11)
        {
          LODWORD(v23) = (v9 * (v7 - v8));
        }
      }

      if ((v23 & 0x80000000) != 0)
      {
        if (!v17)
        {
          v32 = 0;
          goto LABEL_29;
        }

        _S6 = *v18;
        v26 = *v17;
      }

      else
      {
        v24 = 4 * (4 * v23);
        v23 = v23;
        if (!v19)
        {
          v23 = 0;
        }

        _S6 = v6[v23];
        v26 = *(v20 + v24);
        if (!v19)
        {
          goto LABEL_28;
        }
      }

      v26 = vmulq_n_f32(v26, _S6);
LABEL_28:
      i[-1] = vcvt_f16_f32(v26);
      __asm { FCVT            H6, S6 }

      i->i16[0] = _H6;
      v32 = -1;
LABEL_29:
      v7 = v5 + v7;
      *v14 = v32;
      v14 = (v14 + 1);
      if (!--a4)
      {
        return;
      }
    }
  }

  if (v7 >= v10)
  {
    LODWORD(v12) = v13;
    if (v7 <= v11)
    {
      LODWORD(v12) = (v9 * (v7 - v8));
    }
  }

  if ((v12 & 0x80000000) == 0 || v17)
  {
    if ((v12 & 0x80000000) != 0)
    {
      _S1 = *v18;
      v35 = *v17;
    }

    else
    {
      v33 = 4 * (4 * v12);
      v12 = v12;
      if (!v19)
      {
        v12 = 0;
      }

      _S1 = v6[v12];
      v35 = *(v20 + v33);
      if (!v19)
      {
        goto LABEL_39;
      }
    }

    v35 = vmulq_n_f32(v35, _S1);
LABEL_39:
    v36 = vcvt_f16_f32(v35);
    __asm { FCVT            H1, S1 }

    v38 = a4 + 4;
    do
    {
      *v15 = v36;
      *(v15 + 8) = _H1;
      *(v15 + 10) = v36;
      *(v15 + 18) = _H1;
      *(v15 + 20) = v36;
      *(v15 + 28) = _H1;
      *(v15 + 30) = v36;
      *(v15 + 38) = _H1;
      v15 += 40;
      v38 -= 4;
      *v14++ = -1;
    }

    while (v38 > 4);
    return;
  }

  if (a4 >= 4)
  {
    v21 = 4;
  }

  else
  {
    v21 = a4;
  }

  bzero(v14, ((a4 - v21 + 3) & 0xFFFFFFFC) + 4);
}

uint64_t CMYKf16_shade_custom_CMYK(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(result + 272);
  v7 = *(result + 280);
  *a6.i8 = vadd_f32(*(result + 296), vmla_n_f32(vmul_n_f32(*(result + 288), *(v6 + 4) * a3), v7, *(v6 + 4) * a2));
  v8 = *(result + 304);
  v9 = *(result + 336);
  v10 = *(result + 348);
  v11 = *(result + 344);
  v12 = *(result + 356);
  v13 = *(result + 144);
  v14 = *(result + 384);
  v15 = *(result + 392);
  if (!v15)
  {
    v15 = *(result + 272);
  }

  v16 = *(result + 32);
  v17 = *(result + 40);
  if (v17)
  {
    v18 = *(result + 48);
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v6 = *(result + 40);
  }

  v19 = 4 * *(result + 48);
  v20 = (*(result + 152) + 8);
  do
  {
    v21 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v8, v21))), vmovn_s32(vcgtq_f32(v21, v8)))) & 1) == 0)
    {
      v24 = (v12 * (*&a6.i32[1] - v10));
      v25 = v11 * (*a6.i32 - v9);
      v26 = v16 + 4 * v19 * v24;
      v27 = 16 * v25;
      v28 = v6 + 4 * v18 * v24;
      result = v25;
      if (!v17)
      {
        result = 0;
      }

      _S7 = *(v28 + 4 * result);
      v23 = *(v26 + v27);
      if (!v17)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v14)
    {
      _S7 = *v15;
      v23 = *v14;
LABEL_15:
      v23 = vmulq_n_f32(v23, _S7);
LABEL_16:
      v20[-1] = vcvt_f16_f32(v23);
      __asm { FCVT            H7, S7 }

      v20->i16[0] = _H7;
      v34 = -1;
      goto LABEL_18;
    }

    v34 = 0;
LABEL_18:
    *a6.i8 = vadd_f32(v7, *a6.i8);
    *v13++ = v34;
    v20 = (v20 + 10);
    --a4;
  }

  while (a4);
  return result;
}

void CMYKf16_shade_conic_CMYK(float32x2_t *a1, uint64_t a2, uint64_t a3, int a4, int64x2_t a5, __n128 a6, int64x2_t a7)
{
  a5.i64[0] = 0;
  v8 = a1[35];
  a6.n128_u64[0] = vadd_f32(a1[37], vmla_n_f32(vmul_n_f32(a1[36], *(*&a1[34] + 4) * a3), v8, *(*&a1[34] + 4) * a2));
  v9 = a1[42].f32[0];
  v10 = a1[43].f32[0];
  v11 = a1[38].f32[0];
  v13 = a1[18];
  v12 = a1[19];
  v14 = a1[4];
  v15 = a1[5];
  if (v15)
  {
    v16 = a1[5];
  }

  else
  {
    v16 = a1[34];
  }

  v17 = a1[38].f32[1] - v11;
  *a7.i8 = a1[5];
  v36 = vdupq_lane_s64(vceqq_s64(a7, a5).i64[0], 0);
  do
  {
    v37 = a6;
    v18 = v10 * ((v11 + (((atan2f(a6.n128_f32[1], a6.n128_f32[0]) * 0.15915) + 0.5) * v17)) - v9);
    LODWORD(v19) = vcvtms_s32_f32(v18);
    v20 = ceilf(v18);
    v21 = vcvtms_s32_f32(v10 + v18);
    v22 = ceilf(v18 - v10);
    if (v18 < 0.0)
    {
      LODWORD(v19) = v21;
    }

    if (v18 <= v10)
    {
      v22 = v20;
    }

    v23 = 16 * v19;
    v19 = v19;
    if (!*&v15)
    {
      v19 = 0;
    }

    v24 = *(*&v16 + 4 * v19);
    v25 = vbslq_s8(v36, *(*&v14 + v23), vmulq_n_f32(*(*&v14 + v23), v24));
    v26 = v22;
    v27 = 16 * v22;
    if (!*&v15)
    {
      v26 = 0;
    }

    v28 = *(*&v16 + 4 * v26);
    v29 = v18 - floorf(v18);
    _S5 = v24 + (v29 * (v28 - v24));
    a6.n128_u64[1] = v37.n128_u64[1];
    __asm { FCVT            H2, S5 }

    *v12 = vcvt_f16_f32(vmlaq_n_f32(v25, vsubq_f32(vbslq_s8(v36, *(*&v14 + v27), vmulq_n_f32(*(*&v14 + v27), v28)), v25), v29));
    v12[1].i16[0] = _H2;
    a6.n128_u64[0] = vadd_f32(v8, v37.n128_u64[0]);
    v12 = (v12 + 10);
    *v13++ = -1;
    --a4;
  }

  while (a4);
}

void CMYKf16_shade_radial_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1 + 400);
  v9 = *(a1 + 280);
  v10 = *(a1 + 284);
  v11 = *(a1 + 272);
  v12 = v11[1];
  v13 = v12 * a2;
  v14 = v12 * a3;
  v15 = *(a1 + 296) + ((*(a1 + 288) * v14) + (v9 * v13));
  v16 = *(a1 + 300) + ((v14 * *(a1 + 292)) + (v10 * v13));
  v17 = *(a1 + 336);
  v18 = *(a1 + 344);
  v19 = *(a1 + 304);
  v20 = *(a1 + 308);
  v21 = *(a1 + 324);
  v22 = v8[2];
  v23 = v8[4];
  v24 = v8[5];
  v25 = v8[7];
  v28 = a1 + 144;
  v26 = *(a1 + 144);
  v27 = *(v28 + 8);
  v29 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v30 = *(a1 + 392);
  }

  else
  {
    v30 = v11;
  }

  v31 = *(a1 + 32);
  v32 = *(a1 + 40);
  if (v32)
  {
    v33 = *(a1 + 40);
  }

  else
  {
    v33 = v11;
  }

  if (v22 != 0.0 || v25 != 0.0 || v10 != 0.0)
  {
    v37 = *(a1 + 320);
    v38 = v8[3];
    v39 = v8[8];
    v40 = -v8[6];
    v41 = v20 - v19;
    for (i = (v27 + 8); ; i = (i + 10))
    {
      v43 = v40 + ((v15 + v15) * v22);
      v44 = ((v16 * v16) + (v15 * v15)) - v25;
      if (v24 == 0.0)
      {
        v51 = v44 / v43;
      }

      else
      {
        v45 = ((v24 * -4.0) * v44) + (v43 * v43);
        if (v45 < 0.0)
        {
          goto LABEL_48;
        }

        v46 = sqrtf(v45);
        v47 = v39 * (v43 - v46);
        v48 = v43 + v46;
        v49 = v39 * v48;
        v50 = (v39 * v48) <= v47;
        if ((v39 * v48) <= v47)
        {
          v51 = v39 * v48;
        }

        else
        {
          v51 = v47;
        }

        if (v50)
        {
          v49 = v47;
        }

        if (v49 < 0.0)
        {
          _NF = v49 < v38;
LABEL_31:
          LODWORD(v53) = v37;
          if (_NF)
          {
            goto LABEL_48;
          }

LABEL_32:
          if ((v53 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_48;
        }

        if (v49 <= 1.0)
        {
          v54 = v19 + (v49 * v41);
          goto LABEL_43;
        }

        if ((v21 & 0x80000000) == 0)
        {
          LODWORD(v53) = v21;
          if (v49 <= v23)
          {
LABEL_44:
            v55 = 4 * (4 * v53);
            v53 = v53;
            if (!v32)
            {
              v53 = 0;
            }

            _S25 = v33[v53];
            v57 = *(v31 + v55);
            if (!v32)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }
        }
      }

      if (v51 < 0.0)
      {
        _NF = v51 < v38;
        goto LABEL_31;
      }

      if (v51 > 1.0)
      {
        LODWORD(v53) = v21;
        if (v51 > v23)
        {
          goto LABEL_48;
        }

        goto LABEL_32;
      }

      v54 = v19 + (v51 * v41);
LABEL_43:
      LODWORD(v53) = (v18 * (v54 - v17));
      if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

LABEL_48:
      if (!v29)
      {
        v62 = 0;
        goto LABEL_53;
      }

      _S25 = *v30;
      v57 = *v29;
LABEL_50:
      v57 = vmulq_n_f32(v57, _S25);
LABEL_51:
      i[-1] = vcvt_f16_f32(v57);
      __asm { FCVT            H25, S25 }

      i->i16[0] = _H25;
      v62 = -1;
LABEL_53:
      v15 = v9 + v15;
      v16 = v10 + v16;
      *v26++ = v62;
      if (!--a4)
      {
        return;
      }
    }
  }

  v34 = v16 * v16;
  v35 = -v24;
  if (v34 <= -v24)
  {
    v4.i64[0] = 0;
    v63 = fabsf(v8[8]);
    v64 = v24 * -4.0;
    v65 = v20 - v19;
    if (v32)
    {
      v66 = v21;
    }

    else
    {
      v66 = 0;
    }

    v67 = (v27 + 10);
    v68 = a4 + 2;
    v5.i64[0] = *(a1 + 40);
    v69 = vdupq_lane_s64(vceqq_s64(v5, v4).i64[0], 0);
    while (1)
    {
      v70 = v34 + (v15 * v15);
      v71 = v9 + v15;
      v72 = v34 + (v71 * v71);
      if (v70 > v35 && v72 > v35)
      {
        if ((v21 & 0x80000000) != 0)
        {
          if (!v29)
          {
            v95 = 0;
            v91 = 0;
            goto LABEL_104;
          }

          _Q22.f32[0] = *v30;
          v87 = vcvt_f16_f32(vmulq_n_f32(*v29, *v30));
          *(v67 - 10) = v87;
          __asm { FCVT            H22, S22 }

          v67[-1].i16[3] = _Q22.i16[0];
          *v67 = v87;
        }

        else
        {
          _Q22.i64[0] = 0;
          _S23 = v33[v66];
          _Q22 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v5, _Q22).i64[0], 0), *(v31 + 4 * (4 * v21)), vmulq_n_f32(*(v31 + 4 * (4 * v21)), _S23));
          v82 = vcvt_f16_f32(_Q22);
          *(v67 - 10) = v82;
          __asm { FCVT            H22, S23 }

          v67[-1].i16[3] = _Q22.i16[0];
          *v67 = v82;
        }

        goto LABEL_102;
      }

      v74 = sqrtf(v64 * v72);
      v75 = v63 * sqrtf(v64 * v70);
      v76 = v63 * v74;
      v77 = (v18 * ((v19 + (v75 * v65)) - v17));
      v78 = (v18 * ((v19 + ((v63 * v74) * v65)) - v17));
      if (v75 <= 1.0 && v76 <= 1.0)
      {
        v83 = 16 * v77;
        v77 = v77;
        if (!v32)
        {
          v77 = 0;
        }

        _Q22.f32[0] = v33[v77];
        v84 = *(v31 + v83);
        if (v32)
        {
          v84 = vmulq_n_f32(v84, _Q22.f32[0]);
          _S24 = *(v32 + 4 * v78);
          v86 = vmulq_n_f32(*(v31 + 16 * v78), _S24);
        }

        else
        {
          _S24 = *v11;
          v86 = *(v31 + 16 * v78);
        }

        *(v67 - 10) = vcvt_f16_f32(v84);
        __asm { FCVT            H22, S22 }

        v67[-1].i16[3] = _H22;
        *v67 = vcvt_f16_f32(v86);
        __asm { FCVT            H22, S24 }

LABEL_102:
        v91 = -1;
        goto LABEL_103;
      }

      if (v75 <= 1.0)
      {
        if ((v77 & 0x80000000) == 0)
        {
          v80 = (4 * v77);
          if (!v32)
          {
            v77 = 0;
          }

LABEL_83:
          _S23 = v33[v77];
          v89 = *(v31 + 4 * v80);
          if (v32)
          {
LABEL_87:
            v89 = vmulq_n_f32(v89, _S23);
          }

          *(v67 - 10) = vcvt_f16_f32(v89);
          __asm { FCVT            H23, S23 }

          v67[-1].i16[3] = _H23;
          v91 = -1;
          goto LABEL_89;
        }
      }

      else if (v75 <= v23)
      {
        v77 = v66;
        v80 = (4 * v21);
        if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_83;
        }
      }

      if (v29)
      {
        _S23 = *v30;
        v89 = *v29;
        goto LABEL_87;
      }

      v91 = 0;
LABEL_89:
      if (v76 <= 1.0)
      {
        if ((v78 & 0x80000000) != 0)
        {
          goto LABEL_97;
        }

        v92 = (4 * v78);
        if (!v32)
        {
          v78 = 0;
        }
      }

      else if (v76 > v23 || (v78 = v66, v92 = (4 * v21), (v21 & 0x80000000) != 0))
      {
LABEL_97:
        if (!v29)
        {
          v95 = 0;
          goto LABEL_104;
        }

        _Q22.f32[0] = *v30;
        v93 = vmulq_n_f32(*v29, *v30);
        goto LABEL_99;
      }

      _Q22.f32[0] = v33[v78];
      v93 = vbslq_s8(v69, *(v31 + 4 * v92), vmulq_n_f32(*(v31 + 4 * v92), _Q22.f32[0]));
LABEL_99:
      *v67 = vcvt_f16_f32(v93);
      __asm { FCVT            H22, S22 }

LABEL_103:
      v67[1].i16[0] = _Q22.i16[0];
      v95 = -1;
LABEL_104:
      v15 = v9 + v71;
      *v26 = v91;
      v26[1] = v95;
      v26 += 2;
      v67 = (v67 + 20);
      v68 -= 2;
      if (v68 <= 2)
      {
        return;
      }
    }
  }

  if (v29 || (v21 & 0x80000000) == 0)
  {
    if ((v21 & 0x80000000) != 0)
    {
      _S1 = *v30;
      v98 = *v29;
    }

    else
    {
      v96 = 4 * (4 * v21);
      if (!v32)
      {
        v21 = 0;
      }

      _S1 = v33[v21];
      v98 = *(v31 + v96);
      if (!v32)
      {
        goto LABEL_116;
      }
    }

    v98 = vmulq_n_f32(v98, _S1);
LABEL_116:
    v99 = vcvt_f16_f32(v98);
    __asm { FCVT            H1, S1 }

    v101 = a4 + 4;
    do
    {
      *v27 = v99;
      *(v27 + 8) = _H1;
      *(v27 + 10) = v99;
      *(v27 + 18) = _H1;
      *(v27 + 20) = v99;
      *(v27 + 28) = _H1;
      *(v27 + 30) = v99;
      *(v27 + 38) = _H1;
      v27 += 40;
      v101 -= 4;
      *v26 = -1;
      v26 += 4;
    }

    while (v101 > 4);
    return;
  }

  if (a4 >= 4)
  {
    v36 = 4;
  }

  else
  {
    v36 = a4;
  }

  bzero(v26, ((a4 - v36 + 3) & 0xFFFFFFFC) + 4);
}

uint64_t CMYKf16_sample_Wf16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(result + 32);
  v6 = *(result + 40);
  v7 = *(result + 24);
  v8 = *(result + 28);
  v9 = *(result + 176);
  v10 = *(result + 72);
  v134 = *(result + 80);
  v132 = *(result + 88);
  v12 = *(result + 112);
  v11 = *(result + 120);
  v131 = *(result + 188);
  v13 = *(result + 152) - 10;
  v14 = *(result + 144) - 1;
  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v17 = v6 + (v15 * v8) + 2 * (v16 - 1);
  v129 = *(result + 240);
  v130 = a4;
  v18 = v5 + (v15 * v7) + 2 * v16 - 2;
  v133 = *(result + 64);
  LOWORD(v19) = COERCE_UNSIGNED_INT(1.0);
  while (1)
  {
    if (a3 >= v10)
    {
      if (a3 <= v132)
      {
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
        v23 = v133;
        v32 = v134;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v132;
        v27 = v26 - a3 + (v25 >> 1);
        v23 = v133;
        if (v27 < 1)
        {
          goto LABEL_39;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v32 = v134;
        v30 = v28 | v131;
        v31 = v26 - 0x1000000;
        v29 = 448;
      }
    }

    else
    {
      v20 = *(result + 216);
      v21 = v10 - *(result + 224);
      v22 = a3 - v21 + (v20 >> 1);
      v23 = v133;
      if (v22 < 1)
      {
        goto LABEL_39;
      }

      if (v22 >= v20)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v22) >> 32;
      }

      v32 = v134;
      v30 = v24 | v131;
      v31 = v21 + 0x1000000;
      v29 = 512;
    }

    if (a2 >= v23)
    {
      break;
    }

    v33 = *(result + 192);
    v34 = v23 - *(result + 200);
    v35 = a2 - v34 + (v33 >> 1);
    if (v35 >= 1)
    {
      if (v35 < v33)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v131;
      }

      v36 = v34 + 0x1000000;
      v37 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v12;
    a3 += v11;
    v13 += 10;
    *++v14 = 0;
LABEL_40:
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v32)
  {
    v37 = (a2 >> 26) & 0x3C;
    v36 = a2;
    goto LABEL_26;
  }

  v38 = v32;
  v39 = *(result + 192);
  v40 = *(result + 200) + v38;
  v41 = v40 - a2 + (v39 >> 1);
  if (v41 < 1)
  {
    goto LABEL_39;
  }

  if (v41 < v39)
  {
    v30 = ((v30 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v131;
  }

  v36 = v40 - 0x1000000;
  v37 = 28;
LABEL_26:
  if (v30 < 0x400000)
  {
    goto LABEL_39;
  }

  v42 = v31 >> 32;
  v43 = v5 + v42 * v7;
  v44 = v36 >> 31;
  v45 = v44 & 0xFFFFFFFFFFFFFFFELL;
  v46 = v43 + (v44 & 0xFFFFFFFFFFFFFFFELL);
  v47 = *(result + 32);
  if (v18 >= v46)
  {
    v48 = (v43 + (v44 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    v48 = v18;
  }

  if (v48 < v47)
  {
    v48 = *(result + 32);
  }

  if (v6)
  {
    v49 = v6 + v42 * v8 + v45;
    v50 = *(result + 40);
    if (v17 >= v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = v17;
    }

    if (v51 >= v50)
    {
      v50 = v51;
    }

    _H4 = *v50;
  }

  else
  {
    v49 = 0;
    LOWORD(_H4) = COERCE_UNSIGNED_INT(1.0);
  }

  _H5 = *v48;
  if (v9)
  {
    v54 = *(v9 + (v37 | v29));
LABEL_45:
    v55 = v54 & 0xF;
    v56 = HIBYTE(v54) & 3;
    if (v55 == 1)
    {
      v106 = (v46 + SBYTE1(v54) * v7);
      if (v18 < v106)
      {
        v106 = v18;
      }

      if (v106 < v47)
      {
        v106 = v47;
      }

      _H6 = *v106;
      _S7 = 1.0;
      if (v6)
      {
        v107 = (v49 + SBYTE1(v54) * v8);
        if (v17 < v107)
        {
          v107 = v17;
        }

        if (v107 < *(result + 40))
        {
          v107 = *(result + 40);
        }

        _H7 = *v107;
        __asm { FCVT            S7, H7 }
      }

      v105 = &interpolate_waf[2 * v56];
    }

    else
    {
      if (v55 != 2)
      {
        if (v55 == 3)
        {
          v57 = (v46 + 2 * SBYTE2(v54));
          if (v18 < v57)
          {
            v57 = v18;
          }

          if (v57 < v47)
          {
            v57 = v47;
          }

          _H6 = *v57;
          v59 = v46 + SBYTE1(v54) * v7;
          if (v18 >= v59)
          {
            v60 = (v46 + SBYTE1(v54) * v7);
          }

          else
          {
            v60 = v18;
          }

          if (v60 < v47)
          {
            v60 = v47;
          }

          _H7 = *v60;
          v62 = (v59 + 2 * SBYTE2(v54));
          if (v18 < v62)
          {
            v62 = v18;
          }

          if (v62 < v47)
          {
            v62 = v47;
          }

          _H16 = *v62;
          _S17 = 1.0;
          _S18 = 1.0;
          _S19 = 1.0;
          if (v6)
          {
            v67 = 2 * SBYTE2(v54);
            v68 = (v49 + v67);
            v69 = *(result + 40);
            if (v17 < v49 + v67)
            {
              v68 = v17;
            }

            if (v68 < v69)
            {
              v68 = *(result + 40);
            }

            _H17 = *v68;
            v71 = v49 + SBYTE1(v54) * v8;
            if (v17 >= v71)
            {
              v72 = (v49 + SBYTE1(v54) * v8);
            }

            else
            {
              v72 = v17;
            }

            if (v72 < v69)
            {
              v72 = *(result + 40);
            }

            _H18 = *v72;
            v74 = (v71 + v67);
            if (v17 < v74)
            {
              v74 = v17;
            }

            if (v74 < v69)
            {
              v74 = *(result + 40);
            }

            _H20 = *v74;
            __asm
            {
              FCVT            S19, H17
              FCVT            S18, H18
              FCVT            S17, H20
            }
          }

          _H20 = interpolate_waf[2 * v56 + 1];
          __asm { FCVT            S20, H20 }

          _H21 = interpolate_waf[2 * ((v54 >> 28) & 3) + 1];
          __asm
          {
            FCVT            S21, H21
            FCVT            S5, H5
            FCVT            S6, H6
          }

          v85 = (_S5 - (_S5 * _S21)) + (_S6 * _S21);
          __asm
          {
            FCVT            S6, H7
            FCVT            S7, H16
          }

          v88 = (_S6 - (_S6 * _S21)) + (_S7 * _S21);
          __asm { FCVT            S4, H4 }

          v90 = (_S4 - (_S4 * _S21)) + (_S19 * _S21);
          v91 = v90 > 1.0 || v90 < 0.0;
          if (v90 < 0.0 && v90 <= 1.0)
          {
            v92 = 0.0;
          }

          else
          {
            v92 = 1.0;
          }

          if (v91)
          {
            v90 = v92;
          }

          v93 = (_S18 - (_S18 * _S21)) + (_S17 * _S21);
          v94 = v93 > 1.0 || v93 < 0.0;
          if (v93 < 0.0 && v93 <= 1.0)
          {
            v95 = 0.0;
          }

          else
          {
            v95 = 1.0;
          }

          if (v94)
          {
            v93 = v95;
          }

          _S5 = (v85 - (v85 * _S20)) + (v88 * _S20);
          __asm { FCVT            H5, S5 }

          _S4 = (v90 - (v90 * _S20)) + (v93 * _S20);
          v98 = _S4 > 1.0 || _S4 < 0.0;
          if (_S4 < 0.0 && _S4 <= 1.0)
          {
            v99 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v99) = COERCE_UNSIGNED_INT(1.0);
          }

          __asm { FCVT            H4, S4 }

          if (v98)
          {
            _H4 = v99;
          }
        }

        goto LABEL_124;
      }

      v100 = (v46 + 2 * SBYTE2(v54));
      if (v18 < v100)
      {
        v100 = v18;
      }

      if (v100 < v47)
      {
        v100 = v47;
      }

      _H6 = *v100;
      _S7 = 1.0;
      if (v6)
      {
        v103 = (v49 + 2 * SBYTE2(v54));
        if (v17 < v103)
        {
          v103 = v17;
        }

        if (v103 < *(result + 40))
        {
          v103 = *(result + 40);
        }

        _H7 = *v103;
        __asm { FCVT            S7, H7 }
      }

      v105 = &interpolate_waf[2 * ((v54 >> 28) & 3)];
    }

    _H16 = *(v105 + 1);
    __asm
    {
      FCVT            S16, H16
      FCVT            S5, H5
      FCVT            S6, H6
    }

    _S5 = (_S5 - (_S5 * _S16)) + (_S6 * _S16);
    __asm
    {
      FCVT            H5, S5
      FCVT            S4, H4
    }

    _S4 = (_S4 - (_S4 * _S16)) + (_S7 * _S16);
    __asm { FCVT            H4, S4 }
  }

LABEL_124:
  *(v13 + 14) = 0;
  *(v13 + 10) = 0;
  *(v13 + 16) = v19 - _H5;
  *(v13 + 18) = _H4;
  *++v14 = v30 >> 22;
  if (--a4)
  {
    v116 = (v13 + 28);
    a3 += v11;
    v117 = v132 - a3;
    a2 += v12;
    v118 = v134 - a2;
    while (1)
    {
      v13 = (v116 - 9);
      if (((a2 - v133) | v118 | (a3 - v10) | v117) < 0)
      {
        goto LABEL_40;
      }

      v119 = v5 + SHIDWORD(a3) * v7;
      v120 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v46 = v119 + v120;
      v47 = *(result + 32);
      if (v18 >= v119 + v120)
      {
        v121 = (v119 + v120);
      }

      else
      {
        v121 = v18;
      }

      if (v121 >= v47)
      {
        v122 = v121;
      }

      else
      {
        v122 = *(result + 32);
      }

      if (v6)
      {
        v49 = v6 + SHIDWORD(a3) * v8 + v120;
        v123 = *(result + 40);
        if (v17 >= v49)
        {
          v124 = (v6 + SHIDWORD(a3) * v8 + v120);
        }

        else
        {
          v124 = v17;
        }

        if (v124 >= v123)
        {
          v123 = v124;
        }

        _H4 = *v123;
      }

      else
      {
        LOWORD(_H4) = COERCE_UNSIGNED_INT(1.0);
      }

      _H5 = *v122;
      if (v9)
      {
        v54 = *(v9 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        v125 = v54 & 0xF;
        if ((v54 & 0xF) != 0)
        {
          v126 = *(result + 264);
          v127 = *v126;
          if (a4 != 1 && a4 + 1 != v130 && v129 != 1 && v127 == 3 && v125 < 3)
          {
            v54 |= 3u;
          }

          v30 = -1;
          if (v127 < v125)
          {
            *v126 = v125;
          }

          goto LABEL_45;
        }
      }

      *(v116 - 2) = 0;
      *(v116 - 2) = 0;
      *(v116 - 1) = v19 - _H5;
      *v116 = _H4;
      *++v14 = -1;
      v116 += 5;
      v117 -= v11;
      a2 += v12;
      v118 -= v12;
      a3 += v11;
      if (!--a4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t CMYKf16_sample_RGBf_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v198 = result;
  v195 = a4;
  v194 = *(result + 32);
  v193 = *(result + 24);
  v192 = *(result + 176);
  v191 = *(result + 64);
  v190 = *(result + 72);
  v189 = *(result + 112);
  v188 = *(result + 80);
  v187 = *(result + 88);
  v186 = *(result + 120);
  v185 = *(result + 188);
  v184 = 0;
  v183 = (*(result + 152) - 10);
  v182 = *(result + 144) - 1;
  v181 = (*(v198 + 32) + (*(v198 + 24) * (*(result + 260) - 1)) + 2 * (3 * *(result + 256)));
  v180 = a4 - 1;
  v179 = *(result + 240);
  do
  {
    v178 = 0;
    v177 = 0;
    v176 = 0;
    if (a3 >= v190)
    {
      if (a3 <= v187)
      {
        v176 = ((a3 >> 28) & 0xF) << 6;
        v184 = 0x3FFFFFFF;
        v177 = a3;
      }

      else
      {
        v166 = *(v198 + 224);
        v165 = *(v198 + 216);
        v164 = v187 + v166 - (a3 - (v165 >> 1));
        if (v164 > 0)
        {
          if (v164 < v165)
          {
            result = IMAGECOVERAGE_YEDGE(v164, *(v198 + 232));
            v184 = v185 | result;
          }

          else
          {
            v184 = v185 | 0x3FFFFFFF;
          }

          v176 = 448;
          v177 = v187 + v166 - 0x1000000;
          v168 = 0;
        }

        else
        {
          v168 = 4;
        }

        if (v168)
        {
          goto LABEL_102;
        }
      }
    }

    else
    {
      v175 = *(v198 + 224);
      v174 = *(v198 + 216);
      v173 = a3 + (v174 >> 1) - (v190 - v175);
      if (v173 > 0)
      {
        if (v173 < v174)
        {
          result = IMAGECOVERAGE_YEDGE(v173, *(v198 + 232));
          v184 = v185 | result;
        }

        else
        {
          v184 = v185 | 0x3FFFFFFF;
        }

        v176 = 512;
        v177 = v190 - v175 + 0x1000000;
        v167 = 0;
      }

      else
      {
        v167 = 4;
      }

      if (v167)
      {
        goto LABEL_102;
      }
    }

    if (a2 >= v191)
    {
      if (a2 <= v188)
      {
        v176 |= 4 * ((a2 >> 28) & 0xF);
        v178 = a2;
      }

      else
      {
        v160 = *(v198 + 200);
        v159 = *(v198 + 192);
        v158 = v188 + v160 - (a2 - (v159 >> 1));
        if (v158 > 0)
        {
          if (v158 < v159)
          {
            result = IMAGECOVERAGE_XEDGE(v158, *(v198 + 208), v184);
            v184 = v185 | result;
          }

          v176 |= 0x1Cu;
          v178 = v188 + v160 - 0x1000000;
          v170 = 0;
        }

        else
        {
          v170 = 4;
        }

        if (v170)
        {
LABEL_102:
          --v195;
          a2 += v189;
          a3 += v186;
          v183 += 5;
          *++v182 = 0;
          v171 = 0;
          continue;
        }
      }
    }

    else
    {
      v163 = *(v198 + 200);
      v162 = *(v198 + 192);
      v161 = a2 + (v162 >> 1) - (v191 - v163);
      if (v161 > 0)
      {
        if (v161 < v162)
        {
          result = IMAGECOVERAGE_XEDGE(v161, *(v198 + 208), v184);
          v184 = v185 | result;
        }

        v176 |= 0x20u;
        v178 = v191 - v163 + 0x1000000;
        v169 = 0;
      }

      else
      {
        v169 = 4;
      }

      if (v169)
      {
        goto LABEL_102;
      }
    }

    if (v184 <= 0x3FFFFF)
    {
      goto LABEL_102;
    }

    v156 = (v194 + v193 * (v177 >> 32) + 6 * (v178 >> 32));
    result = CLAMP_PTR(v156, *(v198 + 32), v181, 6);
    v152 = *result;
    v153 = *(result + 2);
    v154 = *(result + 4);
    _S0 = 1.0;
    __asm { FCVT            H0, S0 }

    v155 = LOWORD(_S0);
    if (!v192)
    {
      goto LABEL_79;
    }

    v157 = *(v192 + v176);
LABEL_41:
    switch(v157 & 0xF)
    {
      case 3u:
        v142 = v193 * SBYTE1(v157);
        v141 = CLAMP_PTR(&v156[6 * SBYTE2(v157)], *(v198 + 32), v181, 6);
        v148 = *v141;
        v149 = *(v141 + 1);
        v150 = *(v141 + 2);
        _S0 = 1.0;
        __asm { FCVT            H0, S0 }

        v151 = LOWORD(_S0);
        v140 = CLAMP_PTR(&v156[v142], *(v198 + 32), v181, 6);
        v144 = *v140;
        v145 = *(v140 + 1);
        v146 = *(v140 + 2);
        _S0 = 1.0;
        __asm { FCVT            H0, S0 }

        v147 = LOWORD(_S0);
        result = CLAMP_PTR(&v156[6 * SBYTE2(v157) + v142], *(v198 + 32), v181, 6);
        _S0 = 1.0;
        __asm { FCVT            H0, S0 }

        v143 = LOWORD(_S0);
        LOWORD(_S0) = interpolate_rgbaf16[4 * (HIBYTE(v157) & 3) + 3];
        __asm { FCVT            S0, H0 }

        v139 = _S0;
        LOWORD(_S0) = interpolate_rgbaf16[4 * ((v157 >> 28) & 3) + 3];
        __asm { FCVT            S0, H0 }

        v138 = _S0;
        LOWORD(_S0) = v152;
        __asm { FCVT            S0, H0 }

        _H2 = v148;
        __asm { FCVT            S2, H2 }

        v137 = (_S0 - (_S0 * v138)) + (_S2 * v138);
        LOWORD(_S0) = v144;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *result;
        __asm { FCVT            S2, H2 }

        v136 = (_S0 - (_S0 * v138)) + (_S2 * v138);
        LOWORD(_S0) = v153;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = v149;
        __asm { FCVT            S2, H2 }

        v133 = (_S0 - (_S0 * v138)) + (_S2 * v138);
        LOWORD(_S0) = v145;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(result + 2);
        __asm { FCVT            S2, H2 }

        v132 = (_S0 - (_S0 * v138)) + (_S2 * v138);
        LOWORD(_S0) = v154;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = v150;
        __asm { FCVT            S2, H2 }

        v135 = (_S0 - (_S0 * v138)) + (_S2 * v138);
        LOWORD(_S0) = v146;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(result + 4);
        __asm { FCVT            S2, H2 }

        v134 = (_S0 - (_S0 * v138)) + (_S2 * v138);
        LOWORD(_S0) = v155;
        __asm { FCVT            S0, H0 }

        _H1 = v151;
        __asm { FCVT            S1, H1 }

        if (((_S0 - (_S0 * v138)) + (_S1 * v138)) <= 1.0)
        {
          _H0 = v155;
          __asm { FCVT            S0, H0 }

          _H1 = v151;
          __asm { FCVT            S1, H1 }

          v30 = ((_S0 - (_S0 * v138)) + (_S1 * v138));
        }

        else
        {
          v30 = 1.0;
        }

        if (v30 >= 0.0)
        {
          _H0 = v155;
          __asm { FCVT            S0, H0 }

          _H1 = v151;
          __asm { FCVT            S1, H1 }

          if (((_S0 - (_S0 * v138)) + (_S1 * v138)) <= 1.0)
          {
            _H0 = v155;
            __asm { FCVT            S0, H0 }

            _H1 = v151;
            __asm { FCVT            S1, H1 }

            v35 = ((_S0 - (_S0 * v138)) + (_S1 * v138));
          }

          else
          {
            v35 = 1.0;
          }
        }

        else
        {
          v35 = 0.0;
        }

        _S0 = v35;
        v131 = _S0;
        LOWORD(_S0) = v147;
        __asm { FCVT            S0, H0 }

        _H1 = v143;
        __asm { FCVT            S1, H1 }

        if (((_S0 - (_S0 * v138)) + (_S1 * v138)) <= 1.0)
        {
          _H0 = v147;
          __asm { FCVT            S0, H0 }

          _H1 = v143;
          __asm { FCVT            S1, H1 }

          v48 = ((_S0 - (_S0 * v138)) + (_S1 * v138));
        }

        else
        {
          v48 = 1.0;
        }

        if (v48 >= 0.0)
        {
          _H0 = v147;
          __asm { FCVT            S0, H0 }

          _H1 = v143;
          __asm { FCVT            S1, H1 }

          if (((_S0 - (_S0 * v138)) + (_S1 * v138)) <= 1.0)
          {
            _H0 = v147;
            __asm { FCVT            S0, H0 }

            _H1 = v143;
            __asm { FCVT            S1, H1 }

            v53 = ((_S0 - (_S0 * v138)) + (_S1 * v138));
          }

          else
          {
            v53 = 1.0;
          }
        }

        else
        {
          v53 = 0.0;
        }

        v62 = v53;
        v130 = v62;
        _S0 = (v137 - (v137 * v139)) + (v136 * v139);
        __asm { FCVT            H0, S0 }

        v152 = LOWORD(_S0);
        _S0 = (v133 - (v133 * v139)) + (v132 * v139);
        __asm { FCVT            H0, S0 }

        v153 = LOWORD(_S0);
        _S0 = (v135 - (v135 * v139)) + (v134 * v139);
        __asm { FCVT            H0, S0 }

        v154 = LOWORD(_S0);
        if (((v131 + (-v131 * v139)) + (v130 * v139)) <= 1.0)
        {
          v66 = ((v131 + (-v131 * v139)) + (v130 * v139));
        }

        else
        {
          v66 = 1.0;
        }

        if (v66 >= 0.0)
        {
          if (((v131 + (-v131 * v139)) + (v130 * v139)) <= 1.0)
          {
            _D0 = ((v131 + (-v131 * v139)) + (v130 * v139));
          }

          else
          {
            _D0 = 1.0;
          }
        }

        else
        {
          _D0 = 0.0;
        }

        __asm { FCVT            H0, D0 }

        v155 = _H0;
        break;
      case 2u:
        result = CLAMP_PTR(&v156[6 * SBYTE2(v157)], *(v198 + 32), v181, 6);
        _S0 = 1.0;
        __asm { FCVT            H0, S0 }

        v129 = LOWORD(_S0);
        LOWORD(_S0) = interpolate_rgbaf16[4 * ((v157 >> 28) & 3) + 3];
        __asm { FCVT            S0, H0 }

        v128 = _S0;
        LOWORD(_S0) = v152;
        __asm { FCVT            S0, H0 }

        _H2 = *result;
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v128)) + (_S2 * v128);
        __asm { FCVT            H0, S0 }

        v152 = LOWORD(_S0);
        LOWORD(_S0) = v153;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(result + 2);
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v128)) + (_S2 * v128);
        __asm { FCVT            H0, S0 }

        v153 = LOWORD(_S0);
        LOWORD(_S0) = v154;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(result + 4);
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v128)) + (_S2 * v128);
        __asm { FCVT            H0, S0 }

        v154 = LOWORD(_S0);
        LOWORD(_S0) = v155;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = v129;
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v128)) + (_S2 * v128);
        __asm { FCVT            H0, S0 }

        v155 = LOWORD(_S0);
        __asm { FCVT            D0, H0 }

        if (_D0 <= 1.0)
        {
          _H0 = v155;
          __asm { FCVT            D0, H0 }
        }

        else
        {
          _D0 = 1.0;
        }

        if (_D0 >= 0.0)
        {
          _H0 = v155;
          __asm { FCVT            D0, H0 }
        }

        break;
      case 1u:
        result = CLAMP_PTR(&v156[v193 * SBYTE1(v157)], *(v198 + 32), v181, 6);
        _S0 = 1.0;
        __asm { FCVT            H0, S0 }

        v127 = LOWORD(_S0);
        LOWORD(_S0) = interpolate_rgbaf16[4 * (HIBYTE(v157) & 3) + 3];
        __asm { FCVT            S0, H0 }

        v126 = _S0;
        LOWORD(_S0) = v152;
        __asm { FCVT            S0, H0 }

        _H2 = *result;
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v126)) + (_S2 * v126);
        __asm { FCVT            H0, S0 }

        v152 = LOWORD(_S0);
        LOWORD(_S0) = v153;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(result + 2);
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v126)) + (_S2 * v126);
        __asm { FCVT            H0, S0 }

        v153 = LOWORD(_S0);
        LOWORD(_S0) = v154;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(result + 4);
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v126)) + (_S2 * v126);
        __asm { FCVT            H0, S0 }

        v154 = LOWORD(_S0);
        LOWORD(_S0) = v155;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = v127;
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v126)) + (_S2 * v126);
        __asm { FCVT            H0, S0 }

        v155 = LOWORD(_S0);
        __asm { FCVT            D0, H0 }

        if (_D0 <= 1.0)
        {
          _H0 = v155;
          __asm { FCVT            D0, H0 }
        }

        else
        {
          _D0 = 1.0;
        }

        if (_D0 >= 0.0)
        {
          _H0 = v155;
          __asm { FCVT            D0, H0 }
        }

        break;
    }

    while (1)
    {
LABEL_79:
      --v195;
      a3 += v186;
      a2 += v189;
      v183 += 5;
      _H0 = v155;
      __asm { FCVT            S0, H0 }

      v125 = _S0;
      LOWORD(_S0) = v152;
      __asm { FCVT            S0, H0 }

      v123 = _S0;
      LOWORD(_S0) = v153;
      __asm { FCVT            S0, H0 }

      v122 = _S0;
      LOWORD(_S0) = v154;
      __asm { FCVT            S0, H0 }

      v121 = _S0;
      if (v123 <= v122)
      {
        v124 = v122;
      }

      else
      {
        v124 = v123;
      }

      if (_S0 > v124)
      {
        v124 = _S0;
      }

      _S0 = v124 - v123;
      __asm { FCVT            H0, S0 }

      *v183 = LOWORD(_S0);
      _S0 = v124 - v122;
      __asm { FCVT            H0, S0 }

      v183[1] = LOWORD(_S0);
      _S0 = v124 - v121;
      __asm { FCVT            H0, S0 }

      v183[2] = LOWORD(_S0);
      _S0 = v125 - v124;
      __asm { FCVT            H0, S0 }

      v183[3] = LOWORD(_S0);
      _S0 = v125;
      __asm { FCVT            H0, S0 }

      v183[4] = LOWORD(_S0);
      *++v182 = v184 >> 22;
      if (!v195)
      {
        v171 = 2;
        goto LABEL_103;
      }

      if (((v187 - a3) | (a3 - v190) | (v188 - a2) | (a2 - v191)) < 0)
      {
        break;
      }

      v184 = -1;
      v156 = (v194 + v193 * (a3 >> 32) + 6 * (a2 >> 32));
      result = CLAMP_PTR(v156, *(v198 + 32), v181, 6);
      v152 = *result;
      v153 = *(result + 2);
      v154 = *(result + 4);
      _S0 = 1.0;
      __asm { FCVT            H0, S0 }

      v155 = LOWORD(_S0);
      if (v192)
      {
        v157 = *(v192 + ((((a3 >> 28) & 0xF) << 6) | (4 * ((a2 >> 28) & 0xF))));
        v120 = v157 & 0xF;
        if ((v157 & 0xF) != 0)
        {
          if (v195 != v180 && v195 != 1 && v179 != 1 && **(v198 + 264) == 3 && v120 < 3)
          {
            v157 |= 3u;
          }

          if (**(v198 + 264) < v120)
          {
            **(v198 + 264) = v120;
          }

          v172 = 7;
        }

        else
        {
          v172 = 0;
        }

        if (v172)
        {
          goto LABEL_41;
        }
      }
    }

    v171 = 3;
LABEL_103:
    ;
  }

  while (v171 != 2 && v195);
  return result;
}

const unsigned __int8 *CLAMP_PTR(const unsigned __int8 *a1, const unsigned __int8 *a2, const unsigned __int8 *a3, uint64_t a4)
{
  v4 = &a3[-a4];
  if (&a3[-a4] >= a1)
  {
    v4 = a1;
  }

  if (v4 >= a2)
  {
    return v4;
  }

  else
  {
    return a2;
  }
}

uint64_t CMYKf16_sample_RGBAf_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v259 = result;
  v256 = a4;
  v255 = *(result + 32);
  v254 = *(result + 24);
  v253 = *(result + 176);
  v252 = *(result + 64);
  v251 = *(result + 72);
  v250 = *(result + 112);
  v249 = *(result + 80);
  v248 = *(result + 88);
  v247 = *(result + 120);
  v246 = *(result + 188);
  v245 = 0;
  v244 = (*(result + 152) - 10);
  v243 = *(result + 144) - 1;
  v4 = 1.0;
  if (*(result + 40))
  {
    v4 = 0.0;
  }

  v242 = v4;
  v241 = (*(result + 32) + (*(result + 24) * (*(result + 260) - 1)) + 2 * (4 * *(result + 256)));
  v240 = a4 - 1;
  v239 = *(result + 240);
  do
  {
    v238 = 0;
    v237 = 0;
    v236 = 0;
    if (a3 >= v251)
    {
      if (a3 <= v248)
      {
        v236 = ((a3 >> 28) & 0xF) << 6;
        v245 = 0x3FFFFFFF;
        v237 = a3;
      }

      else
      {
        v226 = *(v259 + 224);
        v225 = *(v259 + 216);
        v224 = v248 + v226 - (a3 - (v225 >> 1));
        if (v224 > 0)
        {
          if (v224 < v225)
          {
            result = IMAGECOVERAGE_YEDGE(v224, *(v259 + 232));
            v245 = v246 | result;
          }

          else
          {
            v245 = v246 | 0x3FFFFFFF;
          }

          v236 = 448;
          v237 = v248 + v226 - 0x1000000;
          v228 = 0;
        }

        else
        {
          v228 = 4;
        }

        if (v228)
        {
          goto LABEL_174;
        }
      }
    }

    else
    {
      v235 = *(v259 + 224);
      v234 = *(v259 + 216);
      v233 = a3 + (v234 >> 1) - (v251 - v235);
      if (v233 > 0)
      {
        if (v233 < v234)
        {
          result = IMAGECOVERAGE_YEDGE(v233, *(v259 + 232));
          v245 = v246 | result;
        }

        else
        {
          v245 = v246 | 0x3FFFFFFF;
        }

        v236 = 512;
        v237 = v251 - v235 + 0x1000000;
        v227 = 0;
      }

      else
      {
        v227 = 4;
      }

      if (v227)
      {
        goto LABEL_174;
      }
    }

    if (a2 >= v252)
    {
      if (a2 <= v249)
      {
        v236 |= 4 * ((a2 >> 28) & 0xF);
        v238 = a2;
      }

      else
      {
        v220 = *(v259 + 200);
        v219 = *(v259 + 192);
        v218 = v249 + v220 - (a2 - (v219 >> 1));
        if (v218 > 0)
        {
          if (v218 < v219)
          {
            result = IMAGECOVERAGE_XEDGE(v218, *(v259 + 208), v245);
            v245 = v246 | result;
          }

          v236 |= 0x1Cu;
          v238 = v249 + v220 - 0x1000000;
          v230 = 0;
        }

        else
        {
          v230 = 4;
        }

        if (v230)
        {
LABEL_174:
          --v256;
          a2 += v250;
          a3 += v247;
          v244 += 5;
          *++v243 = 0;
          v231 = 0;
          continue;
        }
      }
    }

    else
    {
      v223 = *(v259 + 200);
      v222 = *(v259 + 192);
      v221 = a2 + (v222 >> 1) - (v252 - v223);
      if (v221 > 0)
      {
        if (v221 < v222)
        {
          result = IMAGECOVERAGE_XEDGE(v221, *(v259 + 208), v245);
          v245 = v246 | result;
        }

        v236 |= 0x20u;
        v238 = v252 - v223 + 0x1000000;
        v229 = 0;
      }

      else
      {
        v229 = 4;
      }

      if (v229)
      {
        goto LABEL_174;
      }
    }

    if (v245 <= 0x3FFFFF)
    {
      goto LABEL_174;
    }

    v216 = (v255 + v254 * (v237 >> 32) + 8 * (v238 >> 32));
    result = CLAMP_PTR(v216, *(v259 + 32), v241, 8);
    v212 = *result;
    v213 = *(result + 2);
    v214 = *(result + 4);
    if (v242 == 0.0)
    {
      _H0 = *(result + 6);
      __asm { FCVT            D0, H0 }

      if (_D0 <= 1.0)
      {
        _H0 = *(result + 6);
        __asm { FCVT            D0, H0 }
      }

      else
      {
        _D0 = 1.0;
      }

      if (_D0 >= 0.0)
      {
        _H0 = *(result + 6);
        __asm { FCVT            D0, H0 }

        if (_D0 <= 1.0)
        {
          _H0 = *(result + 6);
          __asm { FCVT            D0, H0 }
        }

        else
        {
          _D0 = 1.0;
        }
      }

      else
      {
        _D0 = 0.0;
      }
    }

    else
    {
      _D0 = v242;
    }

    __asm { FCVT            H0, D0 }

    v215 = _H0;
    if (!v253)
    {
      goto LABEL_141;
    }

    v217 = *(v253 + v236);
LABEL_53:
    switch(v217 & 0xF)
    {
      case 3u:
        v202 = v254 * SBYTE1(v217);
        v201 = CLAMP_PTR(&v216[8 * SBYTE2(v217)], *(v259 + 32), v241, 8);
        v208 = *v201;
        v209 = *(v201 + 1);
        v210 = *(v201 + 2);
        if (v242 == 0.0)
        {
          _H0 = *(v201 + 3);
          __asm { FCVT            D0, H0 }

          if (_D0 <= 1.0)
          {
            _H0 = *(v201 + 3);
            __asm { FCVT            D0, H0 }
          }

          else
          {
            _D0 = 1.0;
          }

          if (_D0 >= 0.0)
          {
            _H0 = *(v201 + 3);
            __asm { FCVT            D0, H0 }

            if (_D0 <= 1.0)
            {
              _H0 = *(v201 + 3);
              __asm { FCVT            D0, H0 }
            }

            else
            {
              _D0 = 1.0;
            }
          }

          else
          {
            _D0 = 0.0;
          }
        }

        else
        {
          _D0 = v242;
        }

        __asm { FCVT            H0, D0 }

        v211 = _H0;
        v200 = CLAMP_PTR(&v216[v202], *(v259 + 32), v241, 8);
        v204 = *v200;
        v205 = *(v200 + 1);
        v206 = *(v200 + 2);
        if (v242 == 0.0)
        {
          _H0 = *(v200 + 3);
          __asm { FCVT            D0, H0 }

          if (_D0 <= 1.0)
          {
            _H0 = *(v200 + 3);
            __asm { FCVT            D0, H0 }
          }

          else
          {
            _D0 = 1.0;
          }

          if (_D0 >= 0.0)
          {
            _H0 = *(v200 + 3);
            __asm { FCVT            D0, H0 }

            if (_D0 <= 1.0)
            {
              _H0 = *(v200 + 3);
              __asm { FCVT            D0, H0 }
            }

            else
            {
              _D0 = 1.0;
            }
          }

          else
          {
            _D0 = 0.0;
          }
        }

        else
        {
          _D0 = v242;
        }

        __asm { FCVT            H0, D0 }

        v207 = _H0;
        result = CLAMP_PTR(&v216[8 * SBYTE2(v217) + v202], *(v259 + 32), v241, 8);
        if (v242 == 0.0)
        {
          _H0 = *(result + 6);
          __asm { FCVT            D0, H0 }

          if (_D0 <= 1.0)
          {
            _H0 = *(result + 6);
            __asm { FCVT            D0, H0 }
          }

          else
          {
            _D0 = 1.0;
          }

          if (_D0 >= 0.0)
          {
            _H0 = *(result + 6);
            __asm { FCVT            D0, H0 }

            if (_D0 <= 1.0)
            {
              _H0 = *(result + 6);
              __asm { FCVT            D0, H0 }
            }

            else
            {
              _D0 = 1.0;
            }
          }

          else
          {
            _D0 = 0.0;
          }
        }

        else
        {
          _D0 = v242;
        }

        __asm { FCVT            H0, D0 }

        v203 = _H0;
        _H0 = interpolate_rgbaf16[4 * (HIBYTE(v217) & 3) + 3];
        __asm { FCVT            S0, H0 }

        v199 = _S0;
        LOWORD(_S0) = interpolate_rgbaf16[4 * ((v217 >> 28) & 3) + 3];
        __asm { FCVT            S0, H0 }

        v198 = _S0;
        LOWORD(_S0) = v212;
        __asm { FCVT            S0, H0 }

        _H2 = v208;
        __asm { FCVT            S2, H2 }

        v197 = (_S0 - (_S0 * v198)) + (_S2 * v198);
        LOWORD(_S0) = v204;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *result;
        __asm { FCVT            S2, H2 }

        v196 = (_S0 - (_S0 * v198)) + (_S2 * v198);
        LOWORD(_S0) = v213;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = v209;
        __asm { FCVT            S2, H2 }

        v193 = (_S0 - (_S0 * v198)) + (_S2 * v198);
        LOWORD(_S0) = v205;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(result + 2);
        __asm { FCVT            S2, H2 }

        v192 = (_S0 - (_S0 * v198)) + (_S2 * v198);
        LOWORD(_S0) = v214;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = v210;
        __asm { FCVT            S2, H2 }

        v195 = (_S0 - (_S0 * v198)) + (_S2 * v198);
        LOWORD(_S0) = v206;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(result + 4);
        __asm { FCVT            S2, H2 }

        v194 = (_S0 - (_S0 * v198)) + (_S2 * v198);
        LOWORD(_S0) = v215;
        __asm { FCVT            S0, H0 }

        _H1 = v211;
        __asm { FCVT            S1, H1 }

        if (((_S0 - (_S0 * v198)) + (_S1 * v198)) <= 1.0)
        {
          _H0 = v215;
          __asm { FCVT            S0, H0 }

          _H1 = v211;
          __asm { FCVT            S1, H1 }

          v64 = ((_S0 - (_S0 * v198)) + (_S1 * v198));
        }

        else
        {
          v64 = 1.0;
        }

        if (v64 >= 0.0)
        {
          _H0 = v215;
          __asm { FCVT            S0, H0 }

          _H1 = v211;
          __asm { FCVT            S1, H1 }

          if (((_S0 - (_S0 * v198)) + (_S1 * v198)) <= 1.0)
          {
            _H0 = v215;
            __asm { FCVT            S0, H0 }

            _H1 = v211;
            __asm { FCVT            S1, H1 }

            v69 = ((_S0 - (_S0 * v198)) + (_S1 * v198));
          }

          else
          {
            v69 = 1.0;
          }
        }

        else
        {
          v69 = 0.0;
        }

        _S0 = v69;
        v191 = _S0;
        LOWORD(_S0) = v207;
        __asm { FCVT            S0, H0 }

        _H1 = v203;
        __asm { FCVT            S1, H1 }

        if (((_S0 - (_S0 * v198)) + (_S1 * v198)) <= 1.0)
        {
          _H0 = v207;
          __asm { FCVT            S0, H0 }

          _H1 = v203;
          __asm { FCVT            S1, H1 }

          v82 = ((_S0 - (_S0 * v198)) + (_S1 * v198));
        }

        else
        {
          v82 = 1.0;
        }

        if (v82 >= 0.0)
        {
          _H0 = v207;
          __asm { FCVT            S0, H0 }

          _H1 = v203;
          __asm { FCVT            S1, H1 }

          if (((_S0 - (_S0 * v198)) + (_S1 * v198)) <= 1.0)
          {
            _H0 = v207;
            __asm { FCVT            S0, H0 }

            _H1 = v203;
            __asm { FCVT            S1, H1 }

            v87 = ((_S0 - (_S0 * v198)) + (_S1 * v198));
          }

          else
          {
            v87 = 1.0;
          }
        }

        else
        {
          v87 = 0.0;
        }

        v96 = v87;
        v190 = v96;
        _S0 = (v197 - (v197 * v199)) + (v196 * v199);
        __asm { FCVT            H0, S0 }

        v212 = LOWORD(_S0);
        _S0 = (v193 - (v193 * v199)) + (v192 * v199);
        __asm { FCVT            H0, S0 }

        v213 = LOWORD(_S0);
        _S0 = (v195 - (v195 * v199)) + (v194 * v199);
        __asm { FCVT            H0, S0 }

        v214 = LOWORD(_S0);
        if (((v191 + (-v191 * v199)) + (v190 * v199)) <= 1.0)
        {
          v100 = ((v191 + (-v191 * v199)) + (v190 * v199));
        }

        else
        {
          v100 = 1.0;
        }

        if (v100 >= 0.0)
        {
          if (((v191 + (-v191 * v199)) + (v190 * v199)) <= 1.0)
          {
            _D0 = ((v191 + (-v191 * v199)) + (v190 * v199));
          }

          else
          {
            _D0 = 1.0;
          }
        }

        else
        {
          _D0 = 0.0;
        }

        __asm { FCVT            H0, D0 }

        v215 = _H0;
        break;
      case 2u:
        result = CLAMP_PTR(&v216[8 * SBYTE2(v217)], *(v259 + 32), v241, 8);
        if (v242 == 0.0)
        {
          _H0 = *(result + 6);
          __asm { FCVT            D0, H0 }

          if (_D0 <= 1.0)
          {
            _H0 = *(result + 6);
            __asm { FCVT            D0, H0 }
          }

          else
          {
            _D0 = 1.0;
          }

          if (_D0 >= 0.0)
          {
            _H0 = *(result + 6);
            __asm { FCVT            D0, H0 }

            if (_D0 <= 1.0)
            {
              _H0 = *(result + 6);
              __asm { FCVT            D0, H0 }
            }

            else
            {
              _D0 = 1.0;
            }
          }

          else
          {
            _D0 = 0.0;
          }
        }

        else
        {
          _D0 = v242;
        }

        __asm { FCVT            H0, D0 }

        v189 = _H0;
        _H0 = interpolate_rgbaf16[4 * ((v217 >> 28) & 3) + 3];
        __asm { FCVT            S0, H0 }

        v188 = _S0;
        LOWORD(_S0) = v212;
        __asm { FCVT            S0, H0 }

        _H2 = *result;
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v188)) + (_S2 * v188);
        __asm { FCVT            H0, S0 }

        v212 = LOWORD(_S0);
        LOWORD(_S0) = v213;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(result + 2);
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v188)) + (_S2 * v188);
        __asm { FCVT            H0, S0 }

        v213 = LOWORD(_S0);
        LOWORD(_S0) = v214;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(result + 4);
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v188)) + (_S2 * v188);
        __asm { FCVT            H0, S0 }

        v214 = LOWORD(_S0);
        LOWORD(_S0) = v215;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = v189;
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v188)) + (_S2 * v188);
        __asm { FCVT            H0, S0 }

        v215 = LOWORD(_S0);
        __asm { FCVT            D0, H0 }

        if (_D0 <= 1.0)
        {
          _H0 = v215;
          __asm { FCVT            D0, H0 }
        }

        else
        {
          _D0 = 1.0;
        }

        if (_D0 >= 0.0)
        {
          _H0 = v215;
          __asm { FCVT            D0, H0 }
        }

        break;
      case 1u:
        result = CLAMP_PTR(&v216[v254 * SBYTE1(v217)], *(v259 + 32), v241, 8);
        if (v242 == 0.0)
        {
          _H0 = *(result + 6);
          __asm { FCVT            D0, H0 }

          if (_D0 <= 1.0)
          {
            _H0 = *(result + 6);
            __asm { FCVT            D0, H0 }
          }

          else
          {
            _D0 = 1.0;
          }

          if (_D0 >= 0.0)
          {
            _H0 = *(result + 6);
            __asm { FCVT            D0, H0 }

            if (_D0 <= 1.0)
            {
              _H0 = *(result + 6);
              __asm { FCVT            D0, H0 }
            }

            else
            {
              _D0 = 1.0;
            }
          }

          else
          {
            _D0 = 0.0;
          }
        }

        else
        {
          _D0 = v242;
        }

        __asm { FCVT            H0, D0 }

        v187 = _H0;
        _H0 = interpolate_rgbaf16[4 * (HIBYTE(v217) & 3) + 3];
        __asm { FCVT            S0, H0 }

        v186 = _S0;
        LOWORD(_S0) = v212;
        __asm { FCVT            S0, H0 }

        _H2 = *result;
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v186)) + (_S2 * v186);
        __asm { FCVT            H0, S0 }

        v212 = LOWORD(_S0);
        LOWORD(_S0) = v213;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(result + 2);
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v186)) + (_S2 * v186);
        __asm { FCVT            H0, S0 }

        v213 = LOWORD(_S0);
        LOWORD(_S0) = v214;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(result + 4);
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v186)) + (_S2 * v186);
        __asm { FCVT            H0, S0 }

        v214 = LOWORD(_S0);
        LOWORD(_S0) = v215;
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = v187;
        __asm { FCVT            S2, H2 }

        _S0 = (_S0 - (_S0 * v186)) + (_S2 * v186);
        __asm { FCVT            H0, S0 }

        v215 = LOWORD(_S0);
        __asm { FCVT            D0, H0 }

        if (_D0 <= 1.0)
        {
          _H0 = v215;
          __asm { FCVT            D0, H0 }
        }

        else
        {
          _D0 = 1.0;
        }

        if (_D0 >= 0.0)
        {
          _H0 = v215;
          __asm { FCVT            D0, H0 }
        }

        break;
    }

    while (1)
    {
LABEL_141:
      --v256;
      a3 += v247;
      a2 += v250;
      v244 += 5;
      _H0 = v215;
      __asm { FCVT            S0, H0 }

      v185 = _S0;
      LOWORD(_S0) = v212;
      __asm { FCVT            S0, H0 }

      v183 = _S0;
      LOWORD(_S0) = v213;
      __asm { FCVT            S0, H0 }

      v182 = _S0;
      LOWORD(_S0) = v214;
      __asm { FCVT            S0, H0 }

      v181 = _S0;
      if (v183 <= v182)
      {
        v184 = v182;
      }

      else
      {
        v184 = v183;
      }

      if (_S0 > v184)
      {
        v184 = _S0;
      }

      _S0 = v184 - v183;
      __asm { FCVT            H0, S0 }

      *v244 = LOWORD(_S0);
      _S0 = v184 - v182;
      __asm { FCVT            H0, S0 }

      v244[1] = LOWORD(_S0);
      _S0 = v184 - v181;
      __asm { FCVT            H0, S0 }

      v244[2] = LOWORD(_S0);
      _S0 = v185 - v184;
      __asm { FCVT            H0, S0 }

      v244[3] = LOWORD(_S0);
      _S0 = v185;
      __asm { FCVT            H0, S0 }

      v244[4] = LOWORD(_S0);
      *++v243 = v245 >> 22;
      if (!v256)
      {
        v231 = 2;
        goto LABEL_175;
      }

      if (((v248 - a3) | (a3 - v251) | (v249 - a2) | (a2 - v252)) < 0)
      {
        break;
      }

      v245 = -1;
      v216 = (v255 + v254 * (a3 >> 32) + 8 * (a2 >> 32));
      result = CLAMP_PTR(v216, *(v259 + 32), v241, 8);
      v212 = *result;
      v213 = *(result + 2);
      v214 = *(result + 4);
      if (v242 == 0.0)
      {
        _H0 = *(result + 6);
        __asm { FCVT            D0, H0 }

        if (_D0 <= 1.0)
        {
          _H0 = *(result + 6);
          __asm { FCVT            D0, H0 }
        }

        else
        {
          _D0 = 1.0;
        }

        if (_D0 >= 0.0)
        {
          _H0 = *(result + 6);
          __asm { FCVT            D0, H0 }

          if (_D0 <= 1.0)
          {
            _H0 = *(result + 6);
            __asm { FCVT            D0, H0 }
          }

          else
          {
            _D0 = 1.0;
          }
        }

        else
        {
          _D0 = 0.0;
        }
      }

      else
      {
        _D0 = v242;
      }

      __asm { FCVT            H0, D0 }

      v215 = _H0;
      if (v253)
      {
        v217 = *(v253 + ((((a3 >> 28) & 0xF) << 6) | (4 * ((a2 >> 28) & 0xF))));
        v180 = v217 & 0xF;
        if ((v217 & 0xF) != 0)
        {
          if (v256 != v240 && v256 != 1 && v239 != 1 && **(v259 + 264) == 3 && v180 < 3)
          {
            v217 |= 3u;
          }

          if (**(v259 + 264) < v180)
          {
            **(v259 + 264) = v180;
          }

          v232 = 7;
        }

        else
        {
          v232 = 0;
        }

        if (v232)
        {
          goto LABEL_53;
        }
      }
    }

    v231 = 3;
LABEL_175:
    ;
  }

  while (v231 != 2 && v256);
  return result;
}

void *CGPDFTextExtractorCreateWithPage(uint64_t a1, char a2)
{
  v4 = CGPDFTextExtractorCreate(0);
  if (v4)
  {
    v5 = CGPDFContentStreamCreate(a1);
    v4[5] = v5;
    if (v5)
    {
      if (CGPDFTextStringGetTypeID_onceToken != -1)
      {
        dispatch_once(&CGPDFTextStringGetTypeID_onceToken, &__block_literal_global_11481);
      }

      cftype = pdf_create_cftype();
      if (cftype)
      {
        *(cftype + 16) = a2;
        *(cftype + 24) = 0u;
        *(cftype + 40) = 0u;
        v4[6] = cftype;
        return v4;
      }

      v4[6] = 0;
    }

    CGPDFTextExtractorRelease(v4);
    return 0;
  }

  return v4;
}

void *CGPDFTextExtractorCreate(__int128 ***a1)
{
  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040173FF836uLL);
  __CFSetLastAllocationEventName();
  if (a1)
  {
    Copy = CGPDFRStateCreateCopy(*a1);
  }

  else
  {
    Copy = CGPDFRStateCreate();
  }

  *v2 = Copy;
  if (!Copy)
  {
    goto LABEL_11;
  }

  v2[1] = *Copy;
  v4 = CGPDFOperatorTableCreate();
  if (!v4)
  {
    v2[3] = 0;
LABEL_11:
    CGPDFTextExtractorRelease(v2);
    return 0;
  }

  v5 = v4;
  v6 = &off_1EF23D1B8;
  v7 = 22;
  do
  {
    CGPDFOperatorTableSetCallback(v5, *(v6 - 1), *v6);
    v6 += 2;
    --v7;
  }

  while (v7);
  v2[3] = v5;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  v2[4] = Mutable;
  if (!Mutable)
  {
    goto LABEL_11;
  }

  return v2;
}

void CGPDFTextExtractorRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
    }

    CGPDFRStateRelease(*a1);
    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

void op_gs_8504(uint64_t *a1, uint64_t a2)
{
  value = 0;
  v12 = 0.0;
  v9 = 0;
  array = 0;
  if (CGPDFScannerPopName(a1, &value))
  {
    ExtGState = CGPDFContentStreamGetExtGState(a1[7], value);
    if (ExtGState)
    {
      if (CGPDFDictionaryGetArray(ExtGState, "Font", &array) && CGPDFArrayGetDictionary(array, 0, &v9) && CGPDFArrayGetNumber(array, 1uLL, &v12))
      {
        v5 = CGPDFFontCreate(v9);
        if (v5)
        {
          CGPDFGStateSetFont(*(a2 + 8), v5);
          v6 = *(a2 + 8);
          if (v6)
          {
            v7 = v12;
            *(v6 + 144) = v12;
            v8 = *(v6 + 288);
            if (v8)
            {
              *(v8 + 56) = v7;
            }
          }
        }
      }
    }
  }
}

void op_Do_8506(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopName(a1, &value))
  {
    v4 = *(a1 + 7);
    if (v4)
    {
      v5 = value;
      while (1)
      {
        v6 = CGPDFResourcesCopyXObject(*(v4 + 32), v5);
        if (v6)
        {
          break;
        }

        v4 = *(v4 + 40);
        if (!v4)
        {
          return;
        }
      }

      v7 = v6[4];
      if (v7)
      {
        if (v7 == 2)
        {
          v12 = CGPDFXObjectGetValue(v6);
          v9 = v12;
          if (v12)
          {
            v13 = *v12;
            v14 = *(v12 + 88);
          }

          else
          {
            v13 = 0;
            v14 = 0;
          }

          Child = CGPDFTextExtractorCreateChild(a2, v13, v14);
          v16 = Child;
          v17 = (v9 + 40);
        }

        else
        {
          if (v7 != 1)
          {
            pdf_error("unrecognized or unsupported XObject subtype.");
            return;
          }

          v8 = CGPDFXObjectGetValue(v6);
          v9 = v8;
          if (v8)
          {
            v10 = *(v8 + 16);
            v11 = *(v8 + 104);
          }

          else
          {
            v10 = 0;
            v11 = 0;
          }

          Child = CGPDFTextExtractorCreateChild(a2, v10, v11);
          v16 = Child;
          v17 = (v9 + 56);
        }

        if (!v9)
        {
          v17 = &CGAffineTransformIdentity;
        }

        v18 = *&v17->c;
        v19[0] = *&v17->a;
        v19[1] = v18;
        v19[2] = *&v17->tx;
        draw_child_xobject(Child, v19);
        CGPDFTextExtractorRelease(v16);
      }
    }
  }
}

void *CGPDFTextExtractorCreateChild(uint64_t a1, CGPDFStream *a2, CGPDFDictionary *a3)
{
  v6 = CGPDFTextExtractorCreate(a1);
  if (v6)
  {
    v7 = CGPDFContentStreamCreateWithStream(a2, a3, *(a1 + 40));
    v6[5] = v7;
    if (v7)
    {
      v8 = *(a1 + 48);
      if (v8)
      {
        CFRetain(v8);
        v6[6] = v8;
        return v6;
      }

      v6[6] = 0;
    }

    CGPDFTextExtractorRelease(v6);
    return 0;
  }

  return v6;
}

void draw_child_xobject(uint64_t *a1, _OWORD *a2)
{
  if (a1)
  {
    CGPDFRStateGSave(*a1);
    if (*a1)
    {
      v4 = **a1;
    }

    else
    {
      v4 = 0;
    }

    v5 = a2[1];
    v8[0] = *a2;
    v8[1] = v5;
    v8[2] = a2[2];
    CGPDFGStateConcatCTM(v4, v8);
    v6 = CGPDFTextExtractorCopyTextString(a1);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *a1;

    CGPDFRStateGRestore(v7);
  }
}

CGPDFContentStreamRef *CGPDFTextExtractorCopyTextString(CGPDFContentStreamRef *info)
{
  v1 = info;
  if (info)
  {
    if ((info[7] & 1) == 0)
    {
      v2 = CGPDFScannerCreate(info[5], info[3], info);
      CGPDFScannerScan(v2);
      if (v2)
      {
        CFRelease(v2);
      }

      *(v1 + 56) = 1;
    }

    v1 = v1[6];
    if (v1)
    {
      CFRetain(v1);
    }
  }

  return v1;
}

void op_TJ_8510(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopArray(a1, &value))
  {
    if (*(a2 + 16))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 8));
      v4.n128_f64[0] = CGPDFTextObjectAppendStrings(TextObject, value);
      CGPDFTextStringAppendTextLayout(*(a2 + 48), *a2, *(TextObject + 21), v4);
    }

    else
    {
    }
  }
}

void op_doublequote_8512(CGPDFScanner *a1, uint64_t a2)
{
  v14 = 0.0;
  value = 0;
  v13 = 0.0;
  if (CGPDFScannerPopString(a1, &value) && CGPDFScannerPopNumber(a1, &v14) && CGPDFScannerPopNumber(a1, &v13))
  {
    if (*(a2 + 16))
    {
      v4 = *(a2 + 8);
      if (v4)
      {
        v5 = v14;
        *(v4 + 88) = v14;
        v6 = *(v4 + 288);
        if (v6)
        {
          *v6 = v5;
          v7 = v13;
          *(v4 + 96) = v13;
          v6[1] = v7;
        }

        else
        {
          *(v4 + 96) = v13;
        }
      }

      TextObject = CGPDFGStateGetTextObject(v4);
      v9 = TextObject;
      v10 = *(a2 + 8);
      if (v10)
      {
        v11 = *(v10 + 112);
      }

      else
      {
        v11 = 0.0;
      }

      CGPDFTextObjectMoveToNextLine(TextObject, 0.0, -v11);
      v12.n128_f64[0] = CGPDFTextObjectAppendString(v9, value);
      CGPDFTextStringAppendTextLayout(*(a2 + 48), *a2, *(v9 + 168), v12);
    }

    else
    {
    }
  }
}

void op_singlequote_8514(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopString(a1, &value))
  {
    if (*(a2 + 16))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 8));
      v4 = TextObject;
      v5 = *(a2 + 8);
      if (v5)
      {
        v6 = *(v5 + 112);
      }

      else
      {
        v6 = 0.0;
      }

      CGPDFTextObjectMoveToNextLine(TextObject, 0.0, -v6);
      v7.n128_f64[0] = CGPDFTextObjectAppendString(v4, value);
      CGPDFTextStringAppendTextLayout(*(a2 + 48), *a2, *(v4 + 168), v7);
    }

    else
    {
    }
  }
}

void op_Tj_8516(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopString(a1, &value))
  {
    if (*(a2 + 16))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 8));
      v4.n128_f64[0] = CGPDFTextObjectAppendString(TextObject, value);
      CGPDFTextStringAppendTextLayout(*(a2 + 48), *a2, *(TextObject + 21), v4);
    }

    else
    {
    }
  }
}

double op_Tstar_8518(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    TextObject = CGPDFGStateGetTextObject(*(a2 + 8));
    v5 = *(a2 + 8);
    if (v5)
    {
      v6 = *(v5 + 112);
    }

    else
    {
      v6 = 0.0;
    }

    *&result = CGPDFTextObjectMoveToNextLine(TextObject, 0.0, -v6).n128_u64[0];
  }

  else
  {
  }

  return result;
}

void op_Tm_8520(CGPDFScanner *a1, uint64_t a2)
{
  v15 = 0.0;
  v16 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v11 = 0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v11) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v13) && CGPDFScannerPopNumber(a1, &v14) && CGPDFScannerPopNumber(a1, &v15) && CGPDFScannerPopNumber(a1, &v16))
  {
    if (*(a2 + 16))
    {
      v4 = v11;
      v5 = value;
      v6 = v13;
      v7 = v14;
      v8 = v15;
      v9 = v16;
      TextObject = CGPDFGStateGetTextObject(*(a2 + 8));
      *(TextObject + 9) = v9;
      *(TextObject + 10) = v8;
      *(TextObject + 11) = v7;
      *(TextObject + 12) = v6;
      *(TextObject + 13) = v5;
      *(TextObject + 14) = v4;
      *(TextObject + 15) = v9;
      *(TextObject + 16) = v8;
      *(TextObject + 17) = v7;
      *(TextObject + 18) = v6;
      *(TextObject + 19) = v5;
      *(TextObject + 20) = v4;
    }

    else
    {
    }
  }
}

void op_TD_8522(CGPDFScanner *a1, uint64_t a2)
{
  v8 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v8) && CGPDFScannerPopNumber(a1, &value))
  {
    if (*(a2 + 16))
    {
      v4 = *(a2 + 8);
      if (v4)
      {
        v5 = -v8;
        *(v4 + 112) = -v8;
        v6 = *(v4 + 288);
        if (v6)
        {
          *(v6 + 24) = v5;
        }
      }

      TextObject = CGPDFGStateGetTextObject(v4);
      CGPDFTextObjectMoveToNextLine(TextObject, value, v8);
    }

    else
    {
    }
  }
}

void op_Td_8524(CGPDFScanner *a1, uint64_t a2)
{
  v5 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v5) && CGPDFScannerPopNumber(a1, &value))
  {
    if (*(a2 + 16))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 8));
      CGPDFTextObjectMoveToNextLine(TextObject, value, v5);
    }

    else
    {
    }
  }
}

void op_ET_8526(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }

  else
  {
  }
}

CGFloat op_BT_8528(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {

    pdf_error("warning: already in a text object.");
  }

  else
  {
    *(a2 + 16) = 1;
    TextObject = CGPDFGStateGetTextObject(*(a2 + 8));
    result = CGAffineTransformIdentity.a;
    *(TextObject + 72) = CGAffineTransformIdentity;
    *(TextObject + 120) = CGAffineTransformIdentity;
  }

  return result;
}

BOOL op_Ts_8530(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = value;
      *(v4 + 120) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *(v6 + 32) = v5;
      }
    }
  }

  return result;
}

void op_Tr_8531(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopInteger(a1, &value))
  {
    v3 = value;
    if (value >= 8)
    {
      pdf_error("invalid text drawing mode: %ld.", value);
    }

    else
    {
      v4 = *(a2 + 8);
      if (v4)
      {
        *(v4 + 128) = value;
        v5 = *(v4 + 288);
        if (v5)
        {
          CGPDFTextObjectSetTextDrawingMode(v5, v3);
        }
      }
    }
  }
}

void op_Tf_8533(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopName(a1, &v8))
  {
    Font = CGPDFContentStreamGetFont(a1[7], v8);
    if (Font)
    {
      CGPDFGStateSetFont(*(a2 + 8), Font);
      v5 = *(a2 + 8);
      if (v5)
      {
        v6 = value;
        *(v5 + 144) = value;
        v7 = *(v5 + 288);
        if (v7)
        {
          *(v7 + 56) = v6;
        }
      }
    }

    else
    {
    }
  }
}

BOOL op_TL_8535(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = value;
      *(v4 + 112) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *(v6 + 24) = v5;
      }
    }
  }

  return result;
}

BOOL op_Tz_8536(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = value;
      *(v4 + 104) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *(v6 + 16) = v5;
      }
    }
  }

  return result;
}

BOOL op_Tw_8537(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = value;
      *(v4 + 96) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *(v6 + 8) = v5;
      }
    }
  }

  return result;
}

BOOL op_Tc_8538(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = value;
      *(v4 + 88) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *v6 = v5;
      }
    }
  }

  return result;
}

double op_cm_8539(CGPDFScanner *a1, uint64_t a2)
{
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  value = 0.0;
  v8 = 0.0;
  if (CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v8) && CGPDFScannerPopNumber(a1, &v9) && CGPDFScannerPopNumber(a1, &v10) && CGPDFScannerPopNumber(a1, &v11) && CGPDFScannerPopNumber(a1, &v12))
  {
    v5 = *(a2 + 8);
    v6[0] = v12;
    v6[1] = v11;
    v6[2] = v10;
    v6[3] = v9;
    v6[4] = v8;
    v6[5] = value;
    *&result = *&CGPDFGStateConcatCTM(v5, v6);
  }

  return result;
}

void op_Q_8540(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
  }

  else
  {
    CGPDFRStateGRestore(*a2);
    v4 = *a2;
    if (*a2)
    {
      v4 = *v4;
    }

    *(a2 + 8) = v4;
  }
}

void op_q_8542(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
  }

  else
  {
    CGPDFRStateGSave(*a2);
    v4 = *a2;
    if (*a2)
    {
      v4 = *v4;
    }

    *(a2 + 8) = v4;
  }
}

void *pdf_aes_create(uint64_t a1, uint64_t a2)
{
  if (a2 == 16 || a2 == 32)
  {
    v3 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040D3BB1902uLL);
    __CFSetLastAllocationEventName();
    *v3 = a2;
    __memcpy_chk();
    pdf_aes_reset(v3);
  }

  else
  {
    pdf_error("invalid AES password length.");
    return 0;
  }

  return v3;
}

uint64_t pdf_aes_reset(void *key)
{
  key[5] = 0;
  key[6] = 0;
  v2 = (key + 5);
  v4 = (key + 7);
  v3 = key[7];
  if (v3)
  {
    CCCryptorRelease(v3);
  }

  v5 = *key;

  return CCCryptorCreate(1u, 0, 0, key + 1, v5, v2, v4);
}

void pdf_aes_free(void *a1)
{
  if (a1)
  {
    v2 = a1[7];
    if (v2)
    {
      CCCryptorRelease(v2);
    }

    free(a1);
  }
}

uint64_t pdf_aes_process_buffer(uint64_t a1, const void *a2, void *dataOut, size_t dataOutAvailable)
{
  v4 = (dataOutAvailable & 0xF) == 0 && dataOutAvailable > 0xF;
  v5 = v4;
  if (v4)
  {
    dataOutMoved = 0;
    CCCryptorUpdate(*(a1 + 56), a2, dataOutAvailable, dataOut, dataOutAvailable, &dataOutMoved);
  }

  else
  {
    pdf_error("invalid AES block size.", a2, dataOut);
  }

  return v5;
}

uint64_t FontSubset::FontSubset(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1EF244530;
  *(a1 + 8) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v7;
  }

  *(a1 + 40) = a4;
  *(a1 + 48) = PDFXRefTableAddObject(*(**(a2 + 8) + 504));
  *(a1 + 56) = 33;
  PDFFont::get_embedded_font_name((a1 + 64), a2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 128) = 0;
  v8 = *(a1 + 40);
  *(a1 + 120) = 0;
  v9 = (a1 + 120);
  *(a1 + 112) = a1 + 120;
  if (v8 == 1)
  {
    v10 = *(*(a1 + 8) + 16);
    if (v10)
    {
      (*(*(v10 + 16) + 288))(*(v10 + 112), CGPDFEncodingVectorMacRoman, v21, 256);
    }

    for (i = 0; i != 256; ++i)
    {
      v12 = v21[i];
      v19 = v21[i];
      v13 = *v9;
      if (!*v9)
      {
        goto LABEL_16;
      }

      v14 = a1 + 120;
      do
      {
        v15 = *(v13 + 26);
        v16 = v15 >= v12;
        v17 = v15 < v12;
        if (v16)
        {
          v14 = v13;
        }

        v13 = *(v13 + 8 * v17);
      }

      while (v13);
      if (v14 == v9 || v12 < *(v14 + 26))
      {
LABEL_16:
        v20 = &v19;
        *(std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1 + 112, v12) + 14) = i;
      }
    }
  }

  return a1;
}

void sub_184183020(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t FontSubset::add_glyph(FontSubset *this, unsigned int a2)
{
  v16 = a2;
  v2 = *(this + 12);
  if (v2)
  {
    v3 = (this + 96);
    do
    {
      v4 = v2[13];
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *&v2[4 * v6];
    }

    while (v2);
    if (v3 != (this + 96) && v3[13] <= a2)
    {
      return 1;
    }
  }

  v7 = this + 88;
  if (*(this + 10) == 1)
  {
    v10 = *(this + 15);
    v8 = this + 120;
    v9 = v10;
    if (v10)
    {
      v11 = v8;
      do
      {
        v12 = *(v9 + 13);
        v5 = v12 >= a2;
        v13 = v12 < a2;
        if (v5)
        {
          v11 = v9;
        }

        v9 = *&v9[8 * v13];
      }

      while (v9);
      if (v11 != v8 && *(v11 + 13) <= a2)
      {
        LOWORD(v14) = *(v11 + 14);
LABEL_21:
        v17 = &v16;
        *(std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v7, a2) + 14) = v14;
        return 1;
      }
    }
  }

  else
  {
    v14 = *(this + 14);
    if (v14 <= 255)
    {
      *(this + 14) = v14 + 1;
      goto LABEL_21;
    }
  }

  return 0;
}

char *FontSubset::create_glyph_index_set(FontSubset *this)
{
  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040C7309667uLL);
  *v2 = 1;
  v3 = *(this + 11);
  v4 = this + 96;
  if (v3 != v4)
  {
    do
    {
      CGFontIndexSetAddIndex(v2, *(v3 + 13));
      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  return v2;
}

void FontSubset::get_encoding_vector(FontSubset *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  operator new();
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

CGPDFStreamRef get_font_stream_8586(uint64_t a1, int *a2)
{
  FontDescriptor = CGPDFFontGetFontDescriptor(a1);
  if (!FontDescriptor)
  {
    return 0;
  }

  value = 0;
  if (CGPDFDictionaryGetStream(*(FontDescriptor + 32), "FontFile3", &value))
  {
    v4 = value;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    value = 0;
    if (CGPDFDictionaryGetName(*(v4 + 6), "Subtype", &value))
    {
      v5 = value;
      if (!strcmp(value, "CIDFontType0C"))
      {
        v7 = 4;
      }

      else
      {
        if (strcmp(v5, "OpenType"))
        {
          return 0;
        }

        v7 = 6;
      }

      *a2 = v7;
      return v4;
    }

    return 0;
  }

  return v4;
}

uint64_t CGPDFFontHasMatchingROS(uint64_t a1, void *a2)
{
  CIDSystemInfo = CGPDFFontGetCIDSystemInfo(a1);
  if (!CIDSystemInfo)
  {
    return 1;
  }

  v5 = *CIDSystemInfo;
  v4 = CIDSystemInfo[1];
  if (!strcmp(*CIDSystemInfo, "Adobe") && !strcmp(v4, "Identity"))
  {
    return 1;
  }

  v13 = 0;
  v11 = 0;
  cf2 = 0;
  if (!CGFontGetRegistryOrderingSupplement(a2, &cf2, &v11, &v13))
  {
    return 0;
  }

  v6 = CFStringCreateWithCString(0, v5, 0x600u);
  v7 = CFEqual(v6, cf2);
  CFRelease(v6);
  if (!v7)
  {
    return 0;
  }

  v8 = CFStringCreateWithCString(0, v4, 0x600u);
  v9 = CFEqual(v8, v11) != 0;
  CFRelease(v8);
  return v9;
}

void *CGPDFFontMatchCID(uint64_t a1)
{
  v1 = a1;
  FontDescriptor = CGPDFFontGetFontDescriptor(a1);
  Style = CGPDFFontDescriptorGetStyle(FontDescriptor);
  if (Style)
  {
    v4 = *Style;
    v5 = *(Style + 18);
  }

  else
  {
    v5 = 0;
    v4 = 0.0;
  }

  CIDSystemInfo = CGPDFFontGetCIDSystemInfo(v1);
  if (CIDSystemInfo)
  {
    v7 = *CIDSystemInfo;
    v8 = CIDSystemInfo[1];
    v9 = *(CIDSystemInfo + 4);
    MatchingFont = CGFontCreateMatchingFont(*CIDSystemInfo, v8, v9, v5 & 1, v4);
    v11 = MatchingFont;
    if (MatchingFont)
    {
      v12 = "CIDFontType2";
      if (v1)
      {
        if (*(v1 + 200) == 6)
        {
          v12 = "CIDFontType0";
        }

        v1 = *(v1 + 32);
      }

      v13 = (*(MatchingFont[2] + 152))(MatchingFont[14]);
    }
  }

  else
  {
    return 0;
  }

  return v11;
}

double zombie_GetLayer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = CGContextDelegateCreate(0, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v10 = unk_1EF23D400;
    *(v8 + 216) = xmmword_1EF23D3F0;
    *(v8 + 232) = v10;
    v11 = unk_1EF23D420;
    *(v8 + 248) = xmmword_1EF23D410;
    *(v8 + 264) = v11;
    v12 = *&off_1EF23D3C0;
    *(v8 + 152) = xmmword_1EF23D3B0;
    *(v8 + 168) = v12;
    v13 = *&off_1EF23D3E0;
    *(v8 + 184) = xmmword_1EF23D3D0;
    *(v8 + 200) = v13;
    v14 = *&off_1EF23D380;
    *(v8 + 88) = xmmword_1EF23D370;
    *(v8 + 104) = v14;
    v15 = *&off_1EF23D3A0;
    *(v8 + 120) = xmmword_1EF23D390;
    *(v8 + 136) = v15;
    v16 = *&off_1EF23D340;
    *(v8 + 24) = gZombieVTable;
    *(v8 + 40) = v16;
    result = *&xmmword_1EF23D350;
    v17 = *&off_1EF23D360;
    *(v8 + 56) = xmmword_1EF23D350;
    *(v8 + 72) = v17;
  }

  return result;
}

uint64_t CGContextDelegateGetTypeID()
{
  if (_block_invoke_once_8622 != -1)
  {
    dispatch_once(&_block_invoke_once_8622, &__block_literal_global_5_8623);
  }

  return CGContextDelegateGetTypeID_context_delegate_id;
}

uint64_t CGContextDelegateCreateWithCallbacks(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  if (_block_invoke_once_8622 != -1)
  {
    dispatch_once(&_block_invoke_once_8622, &__block_literal_global_5_8623);
  }

  result = CGTypeCreateInstance(CGContextDelegateGetTypeID_context_delegate_id, 280, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    *(result + 288) = a1;
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    *(result + 72) = a2[3];
    *(result + 56) = v13;
    *(result + 40) = v12;
    *(result + 24) = v11;
    v14 = a2[4];
    v15 = a2[5];
    v16 = a2[6];
    *(result + 136) = a2[7];
    *(result + 120) = v16;
    *(result + 104) = v15;
    *(result + 88) = v14;
    v17 = a2[8];
    v18 = a2[9];
    v19 = a2[10];
    *(result + 200) = a2[11];
    *(result + 184) = v19;
    *(result + 168) = v18;
    *(result + 152) = v17;
    v20 = a2[12];
    v21 = a2[13];
    v22 = a2[14];
    *(result + 264) = a2[15];
    *(result + 248) = v22;
    *(result + 232) = v21;
    *(result + 216) = v20;
  }

  return result;
}

CFTypeRef CGContextDelegateRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGContextDelegateRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGContextDelegateImplementsCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  result = get_callback_address(a1, a2, "CGContextDelegateImplementsCallback", a4, a5, a6, a7, a8);
  if (result)
  {
    return *result != 0;
  }

  return result;
}

uint64_t CGContextDelegateGetDelegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = a1; i; i = *(i + 16))
  {
    callback_address = get_callback_address(i, a2, "CGContextDelegateGetDelegate", a4, a5, a6, a7, a8);
    if (callback_address && *callback_address == a3)
    {
      break;
    }
  }

  return i;
}

uint64_t CGContextDelegateGetInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 288);
  }

  return result;
}

uint64_t CGContextDelegateGetNext(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void CGContextDelegateSetNext(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4 != cf)
    {
      if (cf)
      {
        CFRetain(cf);
        v4 = *(a1 + 16);
      }

      if (v4)
      {
        CFRelease(v4);
      }

      *(a1 + 16) = cf;
    }
  }
}

uint64_t CGContextDelegateGetColorTransform(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CGContextDelegateGetColorSpace(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 264)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

CGFloat CGContextDelegateGetTransform@<D0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  if (a1 && (v2 = *(a1 + 40)) != 0)
  {
    v2();
  }

  else
  {
    *a2 = CGAffineTransformIdentity;
    return CGAffineTransformIdentity.tx;
  }

  return result;
}

void CGContextDelegateDrawLines(uint64_t a1, uint64_t a2, uint64_t a3, const CGPoint *a4, unint64_t a5)
{
  if (a1)
  {
    v10 = *(a1 + 56);
    if (v10)
    {

      v10();
    }

    else
    {
      Mutable = CGPathCreateMutable();
      if (a5)
      {
        v12 = 0;
        do
        {
          CGPathAddLines(Mutable, (a3 + 24), a4, 2uLL);
          v12 += 2;
          a4 += 2;
        }

        while (v12 < a5);
      }

      CGContextDelegateDrawPath(a1, a2, a3, 2, Mutable);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }
}

uint64_t CGContextDelegateDrawShading(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 96);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

uint64_t CGContextDelegateDrawLinearGradient(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 104);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

uint64_t CGContextDelegateDrawRadialGradient(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 112);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

uint64_t CGContextDelegateDrawConicGradient(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 120);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

uint64_t CGContextDelegateDrawDisplayList(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 128);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

uint64_t CGContextDelegateDrawImages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 136))
  {
    return 1006;
  }

  v9 = a7;
  v34 = a4;
  v35 = a3;
  v13 = 8 * a7;
  MEMORY[0x1EEE9AC00](a1, a8);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (v32 - v14);
  if (v13 >= 0x200)
  {
    v16 = 512;
  }

  else
  {
    v16 = v13;
  }

  bzero(v32 - v14, v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v19 = (v32 - v14);
  bzero(v19, v16);
  v20 = *(a1 + 264);
  v33 = a2;
  if (v20)
  {
    v21 = v35;
    v22 = v20(a1, a2, v35);
    if (v9)
    {
      goto LABEL_8;
    }

    return (*(a1 + 136))(a1, v33, v21, v34, v15, a6, 0);
  }

  v22 = 0;
  v21 = v35;
  if (!v9)
  {
    return (*(a1 + 136))(a1, v33, v21, v34, v15, a6, 0);
  }

LABEL_8:
  v32[0] = a6;
  v32[1] = v32;
  v23 = 0;
  v24 = *(v21 + 120);
  v25 = *(v24 + 48);
  v26 = *(v24 + 56);
  v27 = *(v24 + 64);
  do
  {
    OptionsForDrawingImage = CGToneMappingCreateOptionsForDrawingImage(v22, *(a5 + 8 * v23), v26, v27, v25);
    v19[v23] = OptionsForDrawingImage;
    CopyWithResolvedOptions = *(a5 + 8 * v23);
    if (OptionsForDrawingImage)
    {
      CopyWithResolvedOptions = CGImageCreateCopyWithResolvedOptions(*(a5 + 8 * v23), OptionsForDrawingImage);
    }

    else if (CopyWithResolvedOptions)
    {
      CFRetain(*(a5 + 8 * v23));
    }

    v15[v23++] = CopyWithResolvedOptions;
  }

  while (v9 != v23);
  v30 = (*(a1 + 136))(a1, v33, v35, v34, v15, v32[0], v9);
  do
  {
    if (*v19)
    {
      CFRelease(*v19);
    }

    if (*v15)
    {
      CFRelease(*v15);
    }

    ++v15;
    ++v19;
    --v9;
  }

  while (v9);
  return v30;
}

uint64_t CGContextDelegateDrawImageFromRect(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 144);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

uint64_t CGContextDelegateBeginPage(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 152);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

uint64_t CGContextDelegateEndPage(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 160);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

uint64_t CGContextDelegateDrawWindowContents(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 176);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

uint64_t CGContextDelegateGetLayer(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 208)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CGContextDelegateDrawLayer(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 216);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

uint64_t CGContextDelegateGetBitmapContextInfo(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 248)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CGContextDelegateDrawImageApplyingToneMapping(uint64_t a1)
{
  if (!a1)
  {
    return 1000;
  }

  v1 = *(a1 + 272);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 1006;
  }
}

void *CGCryptorCreateRC4(const void *a1, size_t a2)
{
  if (a2 - 513 < 0xFFFFFFFFFFFFFE00)
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x30uLL, 0x10300403C0AB6F3uLL);
  *v4 = 0;
  v5 = malloc_type_malloc(a2, 0x7F498B28uLL);
  v4[2] = v5;
  memmove(v5, a1, a2);
  v4[1] = a2;
  v4[3] = 0;
  *(v4 + 8) = 4;
  v4[5] = 0;
  if ((CGCryptorReset(v4, v6, v7, v8, v9, v10, v11, v12) & 1) == 0)
  {
    CGCryptorRelease(v4);
    return 0;
  }

  return v4;
}

uint64_t CGCryptorReset(CCCryptorRef *cryptorRef, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = cryptorRef + 3;
  v9 = cryptorRef[3];
  if (v9)
  {
    CCCryptorRelease(v9);
    *v10 = 0;
  }

  v11 = *cryptorRef;
  v12 = *(cryptorRef + 8);
  if (v12)
  {
    if (v12 != 4)
    {
      LOBYTE(v18) = 44;
      goto LABEL_10;
    }

    v14 = cryptorRef[1];
    v13 = cryptorRef[2];
    v15 = v11 ^ 1;
    v16 = 4;
    LODWORD(v11) = 0;
    v17 = 0;
  }

  else
  {
    v14 = cryptorRef[1];
    v13 = cryptorRef[2];
    v17 = cryptorRef[5];
    v15 = v11 ^ 1;
    v16 = 0;
  }

  v18 = CCCryptorCreate(v15, v16, v11, v13, v14, v17, v10);
  if (!v18)
  {
    return 1;
  }

LABEL_10:
  CGPostError("CGCryptorReset: CCCryptorCreate failed: error %d.", a2, v11, a4, a5, a6, a7, a8, v18);
  return 0;
}

void CGCryptorRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      CCCryptorRelease(v2);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      free(v3);
    }

    free(*(a1 + 16));

    free(a1);
  }
}

void *CGCryptorCreateAES(const void *a1, size_t a2, _OWORD *a3, char a4)
{
  if (a2 != 32 && a2 != 16)
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x30uLL, 0x10300403C0AB6F3uLL);
  *v8 = a4;
  v9 = malloc_type_malloc(a2, 0x15E86838uLL);
  v8[2] = v9;
  memmove(v9, a1, a2);
  v8[1] = a2;
  v8[3] = 0;
  *(v8 + 8) = 0;
  v10 = malloc_type_malloc(0x10uLL, 0x87D2890CuLL);
  v8[5] = v10;
  *v10 = *a3;
  if ((CGCryptorReset(v8, v11, v12, v13, v14, v15, v16, v17) & 1) == 0)
  {
    CGCryptorRelease(v8);
    return 0;
  }

  return v8;
}

void CGCryptorProcessBytes(uint64_t a1, const void *a2, size_t a3, void *a4, size_t a5, size_t *a6)
{
  dataOutMoved = 0;
  v7 = CCCryptorUpdate(*(a1 + 24), a2, a3, a4, a5, &dataOutMoved);
  if (v7)
  {
    CGPostError("CGCryptorProcessBytes: CCCryptorUpdate failed: error %d.", v8, v9, v10, v11, v12, v13, v14, v7);
  }

  else if (a6)
  {
    *a6 = dataOutMoved;
  }
}

void CGCryptorDrain(uint64_t a1, void *a2, size_t a3, size_t *a4)
{
  dataOutMoved = 0;
  v5 = CCCryptorFinal(*(a1 + 24), a2, a3, &dataOutMoved);
  if (v5)
  {
    CGPostError("CGCryptorProcessBytes: CCCryptorFinal failed: error %d.", v6, v7, v8, v9, v10, v11, v12, v5);
  }

  else if (a4)
  {
    *a4 = dataOutMoved;
  }
}

uint64_t compareUnsigned(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t compareDoubleIndirect(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *(a1 + 8 * *a2);
  v4 = *(a1 + 8 * *a3);
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 > v4;
  }
}

void *CGClipGlyphsCreate(const void *a1, int a2, const CGAffineTransform *a3, const void *a4, const void *a5, uint64_t a6)
{
  v6 = 0;
  if (a5 && a4 && a1 && a6)
  {
    v13 = malloc_type_malloc(0x60uLL, 0x1030040DCF917E2uLL);
    v6 = v13;
    *v13 = 1;
    v14 = &CGAffineTransformIdentity;
    if (a3)
    {
      v14 = a3;
    }

    v16 = *&v14->c;
    v15 = *&v14->tx;
    *(v13 + 8) = *&v14->a;
    *(v13 + 24) = v16;
    *(v13 + 40) = v15;
    *(v13 + 14) = a2;
    CFRetain(a1);
    v6[8] = a1;
    v6[11] = a6;
    v17 = malloc_type_malloc(16 * a6, 0x1000040451B5BE8uLL);
    v6[10] = v17;
    if (v17 && (memcpy(v17, a5, 16 * a6), v18 = 2 * a6, v19 = malloc_type_malloc(v18, 0x1000040BDFB0063uLL), (v6[9] = v19) != 0))
    {
      memcpy(v19, a4, v18);
    }

    else
    {
      CGClipGlyphsRelease(v6);
      return 0;
    }
  }

  return v6;
}

void CGClipGlyphsRelease(uint64_t a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      CFRelease(v2);
    }

    free(*(a1 + 80));
    free(*(a1 + 72));

    free(a1);
  }
}

atomic_uint *CGClipGlyphsCreateCopy(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *CGClipGlyphsRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void *CGClipGlyphsCreateCopyByApplyingTransform(void *a1, float64x2_t *a2)
{
  v2 = a1;
  if (a1)
  {
    if (a2)
    {
      v4 = malloc_type_malloc(16 * a1[11], 0xD14C2890uLL);
      v5 = v4;
      v6 = v2[11];
      if (v6)
      {
        v7 = (v2[10] + 8);
        v8 = v4;
        v9 = v2[11];
        do
        {
          *v8++ = vmlaq_n_f64(vmulq_n_f64(a2[1], *v7), *a2, *(v7 - 1));
          v7 += 2;
          --v9;
        }

        while (v9);
      }

      v10 = *(v2 + 5);
      v11 = *(v2 + 6);
      v12 = *a2;
      v13 = a2[1];
      v14 = a2[2];
      v15 = vmlaq_n_f64(vmulq_n_f64(v13, *(v2 + 4)), *a2, *(v2 + 3));
      *&v17.a = vmlaq_n_f64(vmulq_n_f64(v13, *(v2 + 2)), *a2, *(v2 + 1));
      *&v17.c = v15;
      *&v17.tx = vaddq_f64(v14, vmlaq_n_f64(vmulq_n_f64(v13, v11), v12, v10));
      v2 = CGClipGlyphsCreate(v2[8], *(v2 + 14), &v17, v2[9], v4, v6);
      free(v5);
    }

    else
    {
      atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
    }
  }

  return v2;
}

uint64_t CGClipGlyphsGetLength(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t CGClipGlyphsGetGlyphAtIndex(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (*(result + 88) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(result + 72) + 2 * a2);
    }
  }

  return result;
}

CGFloat CGClipGlyphsGetAdvanceAtIndex(uint64_t a1, unint64_t a2)
{
  if (a1 && *(a1 + 88) > a2)
  {
    v2 = (*(a1 + 80) + 16 * a2);
  }

  else
  {
    v2 = &CGSizeZero;
  }

  return v2->width;
}

uint64_t CGClipGlyphsGetFontAtIndex(uint64_t result, unint64_t a2, void *a3)
{
  if (result)
  {
    v3 = *(result + 88);
    if (v3 <= a2)
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = 0;
        a3[1] = v3;
      }

      return *(result + 64);
    }
  }

  return result;
}

uint64_t CGClipGlyphsGetFontRenderingStyleAtIndex(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    if (a3)
    {
      v3 = *(result + 88);
      *a3 = 0;
      a3[1] = v3;
    }

    return *(result + 56);
  }

  return result;
}

__n128 CGClipGlyphsGetMatrixAtIndex@<Q0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 88);
      *a2 = 0;
      a2[1] = v3;
    }

    v4 = (a1 + 8);
  }

  else
  {
    v4 = &CGAffineTransformIdentity;
  }

  v5 = *&v4->c;
  *a3 = *&v4->a;
  *(a3 + 16) = v5;
  result = *&v4->tx;
  *(a3 + 32) = result;
  return result;
}

uint64_t CGClipGlyphsGetFont(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t CGClipGlyphsGetFontRenderingStyle(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

__n128 CGClipGlyphsGetMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = (a1 + 8);
  if (!a1)
  {
    v2 = &CGAffineTransformIdentity;
  }

  v3 = *&v2->c;
  *a2 = *&v2->a;
  *(a2 + 16) = v3;
  result = *&v2->tx;
  *(a2 + 32) = result;
  return result;
}

uint64_t CGClipGlyphsGetCount(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t CGClipGlyphsGetGlyphs(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t CGClipGlyphsGetAdvances(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

double CGClipGlyphsGetBounds(uint64_t a1)
{
  result = -8.98846567e307;
  if (!a1)
  {
    return INFINITY;
  }

  return result;
}

void PDFMetaSetRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

const void *PDFMetaSetAddDictionary(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (!Value)
  {
    Value = PDFXRefTableAddObject(*(*(a1 + 8) + 504));
    CFDictionarySetValue(*(a1 + 24), a2, Value);
    CFArrayAppendValue(*(a1 + 16), a2);
  }

  return Value;
}

void write_object(uint64_t *a1, const __CFString *cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = CFGetTypeID(cf);
  if (v11 == CFNullGetTypeID())
  {
    v18 = a1[1];

    PDFDocumentPrintf(v18, "null", v12, v13, v14, v15, v16, v17, a9);
  }

  else if (v11 == CFBooleanGetTypeID())
  {
    v19 = a1[1];
    Value = CFBooleanGetValue(cf);
    PDFDocumentPrintf(v19, "%b", v20, v21, v22, v23, v24, v25, Value);
  }

  else if (v11 == CFNumberGetTypeID())
  {
    valuePtr = 0.0;
    LODWORD(v71[0]) = 0;
    if (CFNumberIsFloatType(cf))
    {
      CFNumberGetValue(cf, kCFNumberFloatType, &valuePtr);
      PDFDocumentPrintf(a1[1], "%f", v26, v27, v28, v29, v30, v31, COERCE__INT64(valuePtr));
    }

    else
    {
      CFNumberGetValue(cf, kCFNumberIntType, v71);
      PDFDocumentPrintf(a1[1], "%d", v44, v45, v46, v47, v48, v49, LODWORD(v71[0]));
    }
  }

  else if (v11 == CFDateGetTypeID())
  {
    PDFDocumentPrintf(a1[1], "%D", v32, v33, v34, v35, v36, v37, cf);
  }

  else if (v11 == CFURLGetTypeID())
  {
    PDFDocumentPrintf(a1[1], "%U", v38, v39, v40, v41, v42, v43, cf);
  }

  else if (v11 == CFStringGetTypeID())
  {

    write_string(a1, cf);
  }

  else if (v11 == CFDataGetTypeID())
  {

    write_data(a1, cf);
  }

  else
  {
    if (_block_invoke_once_7067 != -1)
    {
      dispatch_once(&_block_invoke_once_7067, &__block_literal_global_5_7068);
    }

    if (v11 == CGContainerGetTypeID_container_type_id)
    {
      if (cf)
      {
        v56 = *&cf[1].isa;
        v71[0] = *&cf->data;
        v71[1] = v56;
        PDFDocumentPrintf(a1[1], "%r", v50, v51, v52, v53, v54, v55, v71);
      }
    }

    else if (v11 == CFArrayGetTypeID())
    {

      write_array(a1, cf, v57, v58, v59, v60, v61, v62, a9);
    }

    else if (v11 == CFDictionaryGetTypeID())
    {

      write_dictionary(a1, cf, v63, v64, v65, v66, v67, v68, a9);
    }
  }
}

void write_string(uint64_t a1, CFStringRef theString)
{
  if (!CFStringHasPrefix(theString, @"/"))
  {
    PDFDocumentPrintf(*(a1 + 8), "%T", v4, v5, v6, v7, v8, v9, theString);
    return;
  }

  if (!CFStringHasPrefix(theString, @"//"))
  {
    if (CFStringHasPrefix(theString, @"/>"))
    {
      v35.length = CFStringGetLength(theString) - 2;
      v35.location = 2;
      v10 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], theString, v35);
      DestinationSet = PDFDocumentGetDestinationSet(*(a1 + 8));
      Destination = PDFDestinationSetGetDestination(DestinationSet, v10);
      v24 = *(a1 + 8);
      if (Destination)
      {
        ObjectNumberForPageNumber = Destination[1];
LABEL_13:
        PDFDocumentPrintReference(v24, "%R", ObjectNumberForPageNumber, v18, v19, v20, v21, v22);
        goto LABEL_14;
      }
    }

    else
    {
      if (!CFStringHasPrefix(theString, @"/#"))
      {
        PDFDocumentPrintf(*(a1 + 8), "%/", v26, v27, v28, v29, v30, v31, theString);
        return;
      }

      v36.length = CFStringGetLength(theString) - 2;
      v36.location = 2;
      v10 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], theString, v36);
      IntValue = CFStringGetIntValue(v10);
      v24 = *(a1 + 8);
      if (v24 && *(v24 + 496))
      {
        ObjectNumberForPageNumber = PDFPageTree::getObjectNumberForPageNumber(*(v24 + 496), IntValue);
        v24 = *(a1 + 8);
        goto LABEL_13;
      }
    }

    ObjectNumberForPageNumber = 0;
    goto LABEL_13;
  }

  v34.length = CFStringGetLength(theString) - 1;
  v34.location = 1;
  v10 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], theString, v34);
  PDFDocumentPrintf(*(a1 + 8), "%T", v11, v12, v13, v14, v15, v16, v10);
LABEL_14:

  CFRelease(v10);
}

void write_data(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (!Value)
  {
    _CGHandleAssert("write_data", 228, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/Annotations/PDFMetaSet.c", "objectNumber != PDFObjectNumberInvalid", "invalid PDF object %lu", v5, v6, v7, 0);
  }

  v8 = PDFStreamCreateWithObjectNumber(*(a1 + 8), Value);
  PDFDocumentBeginObject(*v8, v8[1], v9, v10, v11, v12, v13, v14);
  PDFDocumentPrintf(*v8, "<<", v15, v16, v17, v18, v19, v20, v29);
  PDFDocumentPrintf(*(a1 + 8), "/Type /Data", v21, v22, v23, v24, v25, v26, v30);
  PDFStreamBeginData(v8);
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  CGDataConsumerPutBytes(v8[3], BytePtr, Length);
  PDFStreamEndData(v8);
  PDFStreamEnd(v8);

  PDFStreamRelease(v8);
}

void write_array(uint64_t a1, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PDFDocumentPrintf(*(a1 + 8), "[", a3, a4, a5, a6, a7, a8, v22);
  Count = CFArrayGetCount(a2);
  if (Count)
  {
    v18 = Count;
    for (i = 0; i != v18; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      write_object_or_reference(a1, ValueAtIndex);
    }
  }

  v21 = *(a1 + 8);

  PDFDocumentPrintf(v21, "]", v12, v13, v14, v15, v16, v17, a9);
}

void write_dictionary(uint64_t *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PDFDocumentPrintf(a1[1], "<<", a3, a4, a5, a6, a7, a8, v18);
  CFDictionaryApplyFunction(a2, write_dictionary_entry, a1);
  v17 = a1[1];

  PDFDocumentPrintf(v17, ">>", v11, v12, v13, v14, v15, v16, a9);
}

void write_object_or_reference(uint64_t a1, void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {
    v10 = Value;
    v11 = *(a1 + 8);

    PDFDocumentPrintReference(v11, "%R", v10, v5, v6, v7, v8, v9);
    return;
  }

  v12 = CFGetTypeID(a2);
  if (v12 == CFDictionaryGetTypeID() || v12 == CFURLGetTypeID() || v12 == CFDataGetTypeID())
  {
    goto LABEL_18;
  }

  if (_ZZZ22CGDisplayListGetTypeIDEUb_E4once != -1)
  {
    dispatch_once(&_ZZZ22CGDisplayListGetTypeIDEUb_E4once, &__block_literal_global_171_15843);
  }

  if (v12 == CGDisplayListGetTypeID::display_list2_type_id)
  {
    v13 = *(PDFDocumentAddFormWithDisplayList(*(a1 + 8), a2) + 2);
    if (v13)
    {
      v14 = *(v13 + 8);
    }

    else
    {
      v14 = 0;
    }

    CFDictionarySetValue(*(a1 + 24), a2, v14);
LABEL_18:

    write_object_reference(a1, a2);
    return;
  }

  write_object(a1, a2);
}

void write_object_reference(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (!Value)
  {
    Value = PDFXRefTableAddObject(*(*(a1 + 8) + 504));
    CFDictionarySetValue(*(a1 + 24), a2, Value);
    CFArrayAppendValue(*(a1 + 16), a2);
  }

  v10 = *(a1 + 8);

  PDFDocumentPrintReference(v10, "%R", Value, v4, v5, v6, v7, v8);
}

void write_dictionary_entry(const __CFString *a1, void *a2, uint64_t a3)
{
  if (!CFEqual(a1, @"/P") && !CFEqual(a1, @"/%Stream"))
  {
    write_string(a3, a1);

    write_object_or_reference(a3, a2);
  }
}

void resample_filter_float_normalize(_DWORD *a1, unsigned int a2, int a3, int a4)
{
  v5 = a3;
  v6 = a1;
  v7 = 4 * a2 + 8;
  v8 = a3;
  v9 = a1;
  do
  {
    v10 = *v9;
    if ((*v9 & 0x80000000) == 0)
    {
      break;
    }

    --v8;
    v11 = v10;
    v12 = v9[1] + v10;
    *v9 = 0;
    v9[1] = v12;
    v13 = v9 + 2;
    v14 = ~v10;
    v15 = 0.0;
    v16 = (v9 + 2);
    do
    {
      v17 = *v16++;
      v15 = v15 + v17;
      v18 = __CFADD__(v10++, 1);
    }

    while (!v18);
    *&v9[v14 + 3] = v15 + *&v9[v14 + 3];
    if (v12)
    {
      v19 = -1 * v11;
      do
      {
        v20 = v13 + 1;
        *v13 = v13[v19];
        ++v13;
        --v12;
      }

      while (v12);
    }

    else
    {
      v20 = v9 + 2;
    }

    bzero(v20, 4 * v14 + 4);
    v9 = (v9 + v7);
  }

  while (v8);
  v21 = (v6 + v7 * (v5 - 1));
  v22 = v5;
  do
  {
    v23 = v21[1];
    v24 = *v21 - a4 + v23;
    if (v24 < 1)
    {
      break;
    }

    --v22;
    v21[1] = a4 - *v21;
    v25 = &v21[v23 + 1];
    v26 = 0.0;
    do
    {
      v26 = v26 + *v25;
      *v25-- = 0.0;
      --v24;
    }

    while (v24);
    *v25 = v26 + *v25;
    v21 = (v21 - v7);
  }

  while (v22);
  do
  {
    v27 = v6[1];
    if (v27)
    {
      v28 = v6 + 2;
      v29 = 4 * v27 + 4;
      v30 = -v27;
      while (*(v6 + v29) == 0.0)
      {
        v29 -= 4;
        ++v30;
        if (!--v27)
        {
          goto LABEL_34;
        }
      }

      v31 = 0;
      v32 = 2;
      while (*&v6[v32] == 0.0)
      {
        ++v31;
        ++v32;
        if (v27 == v31)
        {
          v31 = v27;
          break;
        }
      }

      if (v31)
      {
        v27 -= v31;
        if (v27)
        {
          v33 = v31 + v30;
          do
          {
            v34 = v28 + 1;
            *v28 = v28[v31];
            ++v28;
            v18 = __CFADD__(v33++, 1);
          }

          while (!v18);
        }

        else
        {
          v34 = v6 + 2;
        }

        *v6 += v31;
        bzero(v34, 4 * (v31 - 1) + 4);
      }
    }

LABEL_34:
    v6[1] = v27;
    v6 = (v6 + v7);
    --v5;
  }

  while (v5);
}

void resample_filter_linear_float(uint64_t a1, unsigned int a2, int a3, double *a4, unsigned int a5, double a6, double a7)
{
  v7 = a3;
  if (a7 != 0.0 && (*&a7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v12 = 1.0 / a7;
    v13 = 1.0 / a7 * 0.5;
    if (a7 <= 1.0)
    {
      if (a3)
      {
        v25 = v13 + a6;
        v26 = 4 * a2 + 8;
        do
        {
          v27 = (floor(v25 - v13) - (v25 - v13) + 1.0) * a7;
          v28 = vcvtmd_s64_f64(v25 - v13);
          if (v27 <= 1.0)
          {
            v30 = 0;
            v29 = 1.0;
            v31 = a4;
            do
            {
              *v31++ = v27;
              v29 = v29 - v27;
              ++v30;
              v27 = a7;
            }

            while (v29 >= a7);
          }

          else
          {
            v29 = 1.0;
            v30 = 0;
            v31 = a4;
          }

          *v31 = v29;
          v32 = v30 + 1;
          v33 = 0;
          *a1 = v28;
          *(a1 + 4) = v32;
          v34 = 0.0;
          v35 = (a1 + 8);
          do
          {
            v36 = a4[v33];
            *v35++ = v36;
            v34 = v34 + v36;
            ++v33;
          }

          while (v32 != v33);
          v37 = v34 + -1.0;
          if (v37 != 0.0)
          {
            v38 = v37;
            resample_kernel_float_normalize((a1 + 8), v32, -v38);
          }

          if ((a2 - v32) >= 1)
          {
            bzero(v35, 4 * (~v32 + a2) + 4);
          }

          v25 = v12 + v25;
          a1 += v26;
          --v7;
        }

        while (v7);
      }
    }

    else if (a3)
    {
      v14 = v13 + a6;
      v15 = a2 - 2;
      v16 = 4 * a2 + 8;
      v17 = 4 * (a2 - 2);
      do
      {
        v18 = vcvtmd_s64_f64(v14);
        v19 = v14 - floor(v14);
        v20 = v19 < 0.5;
        if (v19 >= 0.5)
        {
          v21 = -0.5;
        }

        else
        {
          v21 = 0.5;
        }

        v22 = v19 + v21;
        v23 = v22;
        *&v22 = 1.0 - v22;
        *(a1 + 8) = LODWORD(v22);
        *(a1 + 12) = v23;
        *a1 = v18 - v20;
        *(a1 + 4) = 2;
        if (v15 >= 1)
        {
          bzero((a1 + 16), v17);
        }

        v14 = v12 + v14;
        a1 += v16;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    if (a5 >= a2)
    {
      v39 = a2;
    }

    else
    {
      v39 = a5;
    }

    if (a7 == 0.0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 1;
    }

    __pattern4 = 1.0 / v40;
    if (a3)
    {
      v41 = 4 * a2 + 8;
      do
      {
        *a1 = 0;
        *(a1 + 4) = v40;
        memset_pattern4((a1 + 8), &__pattern4, 4 * v40);
        if (a2 > v40)
        {
          bzero((a1 + 8 + 4 * v40), 4 * (a2 - v40));
        }

        a1 += v41;
        --v7;
      }

      while (v7);
    }
  }
}

float resample_kernel_float_normalize(float *a1, int a2, float result)
{
  if (a2)
  {
    v3 = 0;
    v4 = 0.0;
    v5 = a1;
LABEL_3:
    --a2;
    v6 = v5;
    do
    {
      if (v4 < *v6)
      {
        v5 = v6 + 1;
        v3 = 1;
        v4 = *v6;
        a1 = v6;
        if (a2)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }

      if (v4 == *v6)
      {
        ++v3;
      }

      ++v6;
      --a2;
    }

    while (a2 != -1);
    v6 = a1;
    if (!v3)
    {
      return result;
    }

LABEL_12:
    v7 = result / v3;
    if (v7 != 0.0)
    {
      v8 = v3;
      v9 = v6;
      do
      {
        *v9 = v7 + *v9;
        ++v9;
        --v8;
      }

      while (v8);
      result = result - (v7 * v3);
    }

    v10 = v3 >> 1;
    result = result + v6[v10];
    v6[v10] = result;
  }

  return result;
}

void resample_filter_float(uint64_t a1, unsigned int a2, int a3, double *a4, unsigned int a5, double a6, double a7)
{
  v7 = a3;
  if (a7 != 0.0 && (*&a7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v14 = fmin(a7, 1.0);
    v15 = __sincos_stret(v14 * 1.57079633);
    if (v7)
    {
      v43 = 1.0 / a7;
      do
      {
        v16 = vcvtmd_s64_f64(a6);
        v17 = v14 * (v16 - a6);
        v18 = ((v17 + 2.0) / v14);
        v19 = v17 - v18 * v14;
        if (v19 > -2.0)
        {
          v20 = v19;
        }

        else
        {
          v20 = v14 + v19;
        }

        v21 = ((2.0 - v20) / v14);
        v22 = v19 <= -2.0;
        if (v20 + v21 * v14 < 2.0)
        {
          ++v21;
        }

        if (v21 >= a2)
        {
          v23 = a2;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          v26 = __sincos_stret(v20 * 1.57079633);
          cosval = v26.__cosval;
          sinval = v26.__sinval;
          v27 = 0.0;
          v28 = v23;
          v29 = a4;
          do
          {
            v30 = 1.0;
            if (fabs(v20) >= v14 * 0.5)
            {
              v30 = sinval * sinval * cosval / (v20 * v20 * 1.57079633 * 1.57079633);
            }

            *v29++ = v30;
            v27 = v27 + v30;
            v20 = v14 + v20;
            v31 = v15.__sinval * cosval;
            cosval = cosval * v15.__cosval - sinval * v15.__sinval;
            sinval = v31 + sinval * v15.__cosval;
            --v28;
          }

          while (v28);
          *a1 = v16 - v18 + v22;
          *(a1 + 4) = v23;
          v32 = 0.0;
          v33 = a4;
          v34 = v23;
          v35 = (a1 + 8);
          v36 = 1.0 / v27;
          do
          {
            v37 = *v33++;
            v38 = v36 * v37;
            *v35++ = v38;
            v32 = v32 + v38;
            --v34;
          }

          while (v34);
          v39 = v32 + -1.0;
          if (v39 != 0.0)
          {
            resample_kernel_float_normalize((a1 + 8), v23, -v39);
          }
        }

        else
        {
          *a1 = (v16 - v18 + v22);
          v35 = (a1 + 8);
        }

        if ((a2 - v23) >= 1)
        {
          bzero(v35, 4 * (~v23 + a2) + 4);
        }

        a6 = v43 + a6;
        a1 += 4 * a2 + 8;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    if (a5 >= a2)
    {
      v40 = a2;
    }

    else
    {
      v40 = a5;
    }

    if (a7 == 0.0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 1;
    }

    __pattern4 = 1.0 / v41;
    if (a3)
    {
      v42 = 4 * a2 + 8;
      do
      {
        *a1 = 0;
        *(a1 + 4) = v41;
        memset_pattern4((a1 + 8), &__pattern4, 4 * v41);
        if (a2 > v41)
        {
          bzero((a1 + 8 + 4 * v41), 4 * (a2 - v41));
        }

        a1 += v42;
        --v7;
      }

      while (v7);
    }
  }
}

double gstate_init(uint64_t a1)
{
  *(a1 + 104) = *&CGAffineTransformIdentity.a;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 80) = 2;
  *(a1 + 64) = 0x4024000000000000;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = *&CGAffineTransformIdentity.c;
  *(a1 + 136) = *&CGAffineTransformIdentity.tx;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v3 = CGColorSpaceCopyDefaultColor(DeviceGray);
  CGColorSpaceRelease(DeviceGray);
  if (v3)
  {
    CFRetain(v3);
    *(a1 + 152) = v3;
    CFRetain(v3);
    *(a1 + 160) = v3;
    CFRelease(v3);
  }

  else
  {
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
  }

  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 168) = _Q0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 2;
  return result;
}

void gstate_clear(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 192);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 240);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 208);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 216);
  if (v8)
  {
    CFRelease(v8);
  }

  PDFClipMaskRelease(*(a1 + 232));
  v9 = *(a1 + 256);

  CGClipStackRelease(v9);
}

void PDFGStateReset(uint64_t a1)
{
  if (a1)
  {
    gstate_clear(a1);
    gstate_init(a1);
    CFArrayRemoveAllValues(*(a1 + 40));

    addEmitFunction(a1, write_gstate_reset);
  }
}

void addEmitFunction(uint64_t a1, const void *a2)
{
  v7.length = CFArrayGetCount(*(a1 + 40));
  v7.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a1 + 40), v7, a2);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 40), FirstIndexOfValue);
  }

  v5 = *(a1 + 40);

  CFArrayAppendValue(v5, a2);
}

void write_gstate_reset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PDFWriterAnnotate(*(a1 + 16), "  BEGIN: resetting gstate.", a3, a4, a5, a6, a7, a8, v23);
  PDFWriterPrintf(*(a1 + 16), "Q q", v10, v11, v12, v13, v14, v15, v24);
  v22 = *(a1 + 16);

  PDFWriterAnnotate(v22, "  END: resetting gstate.", v16, v17, v18, v19, v20, v21, a9);
}

void PDFGStateEmit(CFArrayRef *a1)
{
  v4.length = CFArrayGetCount(a1[5]);
  v4.location = 0;
  CFArrayApplyFunction(a1[5], v4, emit, a1);
  v2 = a1[5];

  CFArrayRemoveAllValues(v2);
}

void PDFGStateSetLineDash(uint64_t a1, atomic_uint *a2)
{
  v4 = *(a1 + 72);
  if (!CGDashEqualToDash(v4, a2))
  {
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v4);
    }

    if (a2)
    {
      atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
    }

    *(a1 + 72) = a2;

    addEmitFunction(a1, emitLineDashChange);
  }
}

void emitLineDashChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = v10[2];
    v12 = *(a1 + 16);
    if (v11)
    {
      v13 = v10[1];
      v14 = v10 + 3;
      PDFWriterPrintf(v12, "[", a3, a4, a5, a6, a7, a8, v22);
      do
      {
        v21 = *v14++;
        PDFWriterPrintf(*(a1 + 16), "%f", v15, v16, v17, v18, v19, v20, v21);
        --v11;
      }

      while (v11);
      PDFWriterPrintf(*(a1 + 16), "] %f d", v15, v16, v17, v18, v19, v20, v13);
      return;
    }
  }

  else
  {
    v12 = *(a1 + 16);
  }

  PDFWriterPrintf(v12, "[] 0 d", a3, a4, a5, a6, a7, a8, a9);
}

void emitRenderingIntentChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a1 + 80) - 1;
  if (v9 <= 3)
  {
    PDFWriterPrintf(*(a1 + 16), off_1E6E1AA18[v9], a3, a4, a5, a6, a7, a8, a9);
  }
}

void emitEStateWithBool(uint64_t a1, const char *a2, char a3)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if (!*(v4 + 8))
    {
      *(v4 + 8) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_15272);
    }

    value = 0;
    v9 = PDFEStateCreate(*v4, a2);
    v10 = v9;
    if (v9)
    {
      *(v9 + 11) = 0;
      v9[48] = a3;
    }

    if (!CFSetGetValueIfPresent(*(v4 + 8), v9, &value))
    {
      v11 = *(v4 + 24) + 1;
      *(v4 + 24) = v11;
      snprintf_l(v10 + 24, 0x10uLL, 0, "Gs%u", v11);
      CFSetAddValue(*(v4 + 8), v10);
      value = v10;
    }

    PDFEStateRelease(v10);
    v12 = *(v4 + 16);
    if (!v12)
    {
      v12 = CGOrderedSetCreate();
      *(v4 + 16) = v12;
    }

    CGOrderedSetAddValue(v12, value);
    v6 = value;
  }

  PDFResourceSetAddEState(*(a1 + 32), v6);
  PDFWriterPrintf(*(a1 + 16), "/%N gs", v13, v14, v15, v16, v17, v18, v6 + 24);
}

void PDFGStateSetFillColor(uint64_t a1, unint64_t a2)
{
  if (!CGColorEqualToColor(*(a1 + 152), a2))
  {
    v11 = *(a1 + 8);
    if (a2)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        ColorSpace = CGTaggedColorGetColorSpace(a2, v4, v5, v6, v7, v8, v9, v10);
      }

      else
      {
        ColorSpace = *(a2 + 24);
      }
    }

    else
    {
      ColorSpace = 0;
    }

    v20 = PDFDocumentResolveColorSpace(v11, ColorSpace);
    v21 = *(a1 + 152);
    if (v21)
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        v21 = CGTaggedColorGetColorSpace(v21, v13, v14, v15, v16, v17, v18, v19);
      }

      else
      {
        v21 = *(v21 + 24);
      }
    }

    if (v21 != v20)
    {
      addEmitFunction(a1, emitFillColorSpaceChange);
    }

    v22 = *(a1 + 152);
    if (v22)
    {
      CFRelease(v22);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(a1 + 152) = a2;

    addEmitFunction(a1, emitFillColorChange);
  }
}

void emitFillColorChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ColorSpace = *(a1 + 152);
  if (ColorSpace)
  {
    if ((ColorSpace & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(ColorSpace, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      ColorSpace = *(ColorSpace + 24);
    }
  }

  if (CGColorSpaceGetType(ColorSpace) == 9)
  {

    emitPattern(a1, 1);
  }

  else
  {

    emitColor(a1, 1, v11, v12, v13, v14, v15, v16, a9);
  }
}

void emitColor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  v11 = 160;
  if (a2)
  {
    v11 = 152;
  }

  v12 = *(a1 + v11);
  if (v12)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      NumberOfComponents = CGTaggedColorGetNumberOfComponents(*(a1 + v11), a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      NumberOfComponents = *(v12 + 56);
    }

    Components = CGColorGetComponents(v12);
    v21 = NumberOfComponents - 1;
    if (NumberOfComponents == 1)
    {
      goto LABEL_12;
    }

    v20 = Components;
  }

  else
  {
    v20 = CGColorGetComponents(0);
    v21 = -1;
  }

  do
  {
    v24 = *v20++;
    PDFWriterPrintf(*(a1 + 16), "%f", v14, v15, v16, v17, v18, v19, v24);
    --v21;
  }

  while (v21);
  if (!v12)
  {
    ColorSpace = 0;
    goto LABEL_16;
  }

LABEL_12:
  if ((v12 & 0x8000000000000000) != 0)
  {
    ColorSpace = CGTaggedColorGetColorSpace(v12, v23, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    ColorSpace = *(v12 + 24);
  }

LABEL_16:
  v26 = PDFDocumentResolveColorSpace(*(a1 + 8), ColorSpace);
  Type = CGColorSpaceGetType(v26);
  v34 = "K";
  if (v9)
  {
    v34 = "k";
  }

  v35 = "RG";
  if (v9)
  {
    v35 = "rg";
  }

  v36 = "sc";
  if (!v9)
  {
    v36 = "SC";
  }

  v37 = "g";
  if (!v9)
  {
    v37 = "G";
  }

  if (!Type)
  {
    v36 = v37;
  }

  if (Type != 1)
  {
    v35 = v36;
  }

  if (Type == 2)
  {
    v38 = v34;
  }

  else
  {
    v38 = v35;
  }

  v39 = *(a1 + 16);

  PDFWriterPrintf(v39, v38, v28, v29, v30, v31, v32, v33, a9);
}

void emitPattern(uint64_t a1, int a2)
{
  v4 = 160;
  if (a2)
  {
    v4 = 152;
  }

  v5 = *(a1 + v4);
  if (v5 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = *(a1 + 8);
  v36 = *(a1 + 104);
  v37 = *(a1 + 120);
  v38 = *(a1 + 136);
  v8 = *(v7 + 416);
  if (!v8)
  {
    v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004055CCDE27uLL);
    __CFSetLastAllocationEventName();
    if (v8)
    {
      *v8 = v7;
    }

    *(v7 + 416) = v8;
  }

  if (v8)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    Value = 0;
  }

  else
  {
    Mutable = *(v8 + 1);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &patternKeyCallbacks, &patternCallbacks);
      *(v8 + 1) = Mutable;
    }

    key = 0;
    LODWORD(key) = v6[4];
    v41 = v37;
    v42 = v38;
    v40 = v36;
    Value = CFDictionaryGetValue(Mutable, &key);
    if (!Value)
    {
      v12 = *v8;
      v13 = (*(v8 + 6) + 1);
      *(v8 + 6) = v13;
      Value = malloc_type_calloc(1uLL, 0x68uLL, 0x10200401914940AuLL);
      __CFSetLastAllocationEventName();
      if (Value)
      {
        *Value = 1;
        Value[1] = v12;
        Value[2] = PDFContentStreamCreate(v12, 0);
        CFRetain(v6);
        Value[3] = v6;
        *(Value + 2) = v36;
        *(Value + 3) = v37;
        *(Value + 4) = v38;
        snprintf_l(Value + 80, 0x10uLL, 0, "P%lu", v13);
      }

      CFDictionarySetValue(*(v8 + 1), &key, Value);
      PDFPatternRelease(Value);
    }

    v14 = *(v8 + 2);
    if (!v14)
    {
      v14 = CGOrderedSetCreate();
      *(v8 + 2) = v14;
    }

    CGOrderedSetAddValue(v14, Value);
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 72);
  if (!v16)
  {
    v16 = CGOrderedSetCreate();
    *(v15 + 72) = v16;
  }

  CGOrderedSetAddValue(v16, Value);
  if (v5)
  {
    v24 = v5 < 0 ? CGTaggedColorGetNumberOfComponents(v5, v17, v18, v19, v20, v21, v22, v23) : *(v5 + 56);
    if (v24 >= 2)
    {
      Components = CGColorGetComponents(v5);
      v26 = v24 - 1;
      do
      {
        v27 = *Components++;
        PDFWriterPrintf(*(a1 + 16), "%f", v18, v19, v20, v21, v22, v23, v27);
        --v26;
      }

      while (v26);
    }
  }

  PDFWriterPrintf(*(a1 + 16), "/%N", v18, v19, v20, v21, v22, v23, (Value + 10));
  if (a2)
  {
    v34 = "scn";
  }

  else
  {
    v34 = "SCN";
  }

  PDFWriterPrintf(*(a1 + 16), v34, v28, v29, v30, v31, v32, v33, v35);
}

void emitColorSpace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  v11 = 160;
  if (a2)
  {
    v11 = 152;
  }

  v12 = *(a1 + v11);
  if (v12)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(v12, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      ColorSpace = *(v12 + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  v14 = PDFDocumentResolveColorSpace(*(a1 + 8), ColorSpace);
  if (!v14)
  {
    _CGHandleAssert("emitColorSpace", 471, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ContentStreams/PDFGState.c", "space != NULL", "PDF document colorspace missing", v15, v16, v17, v45);
  }

  v18 = v14;
  Type = CGColorSpaceGetType(v14);
  if (Type >= 3)
  {
    if (Type == 9 && !*(*(v18 + 3) + 48))
    {
      v44 = "CS";
      if (v9)
      {
        v44 = "cs";
      }

      PDFWriterPrintf(*(a1 + 16), "/Pattern %s", v20, v21, v22, v23, v24, v25, v44);
    }

    else
    {
      v26 = PDFDocumentAddColorSpace(*(a1 + 8), v18);
      v27 = *(a1 + 32);
      v28 = *(v27 + 32);
      if (!v28)
      {
        v28 = CGOrderedSetCreate();
        *(v27 + 32) = v28;
      }

      CGOrderedSetAddValue(v28, v26);
      v35 = v26 + 40;
      if (!v26)
      {
        v35 = 0;
      }

      PDFWriterPrintf(*(a1 + 16), "/%N", v29, v30, v31, v32, v33, v34, v35);
      v42 = *(a1 + 16);
      if (v9)
      {
        v43 = "cs";
      }

      else
      {
        v43 = "CS";
      }

      PDFWriterPrintf(v42, v43, v36, v37, v38, v39, v40, v41, a9);
    }
  }
}

void PDFGStateSetStrokeColor(uint64_t a1, unint64_t a2)
{
  if (!CGColorEqualToColor(*(a1 + 160), a2))
  {
    v11 = *(a1 + 8);
    if (a2)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        ColorSpace = CGTaggedColorGetColorSpace(a2, v4, v5, v6, v7, v8, v9, v10);
      }

      else
      {
        ColorSpace = *(a2 + 24);
      }
    }

    else
    {
      ColorSpace = 0;
    }

    v20 = PDFDocumentResolveColorSpace(v11, ColorSpace);
    v21 = *(a1 + 160);
    if (v21)
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        v21 = CGTaggedColorGetColorSpace(v21, v13, v14, v15, v16, v17, v18, v19);
      }

      else
      {
        v21 = *(v21 + 24);
      }
    }

    if (v21 != v20)
    {
      addEmitFunction(a1, emitStrokeColorSpaceChange);
    }

    v22 = *(a1 + 160);
    if (v22)
    {
      CFRelease(v22);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(a1 + 160) = a2;

    addEmitFunction(a1, emitStrokeColorChange);
  }
}

void emitStrokeColorChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ColorSpace = *(a1 + 160);
  if (ColorSpace)
  {
    if ((ColorSpace & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(ColorSpace, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      ColorSpace = *(ColorSpace + 24);
    }
  }

  if (CGColorSpaceGetType(ColorSpace) == 9)
  {

    emitPattern(a1, 0);
  }

  else
  {

    emitColor(a1, 0, v11, v12, v13, v14, v15, v16, a9);
  }
}

void PDFGStateSetPatternMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v11 = *a2;
  v12 = *(a2 + 16);
  v13 = vmlaq_n_f64(vmlaq_n_f64(*(a2 + 32), *a2, a9), v12, a10);
  *(a2 + 32) = v13;
  if (*(a1 + 104) != *v11.i64 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 112), vextq_s8(v11, v12, 8uLL)), vceqq_f64(*(a1 + 128), vextq_s8(v12, v13, 8uLL))))) & 1) == 0 || *(a1 + 144) != *&v13.i64[1])
  {
    v14 = *a2;
    v15 = *(a2 + 32);
    *(a1 + 120) = *(a2 + 16);
    *(a1 + 136) = v15;
    *(a1 + 104) = v14;
    ColorSpace = *(a1 + 152);
    if (ColorSpace)
    {
      if ((ColorSpace & 0x8000000000000000) != 0)
      {
        ColorSpace = CGTaggedColorGetColorSpace(ColorSpace, a2, a3, a4, a5, a6, a7, a8);
      }

      else
      {
        ColorSpace = *(ColorSpace + 24);
      }
    }

    if (CGColorSpaceGetType(ColorSpace) == 9)
    {
      addEmitFunction(a1, emitFillColorChange);
    }

    v24 = *(a1 + 160);
    if (v24)
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        v24 = CGTaggedColorGetColorSpace(v24, v17, v18, v19, v20, v21, v22, v23);
      }

      else
      {
        v24 = *(v24 + 24);
      }
    }

    if (CGColorSpaceGetType(v24) == 9)
    {

      addEmitFunction(a1, emitStrokeColorChange);
    }
  }
}

void emitNonStrokeAlphaChange(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 4);
  if (v2 <= 0)
  {
    *(v1 + 4) = 1;
    v3 = (v1 + 8);
LABEL_6:
    *v3 = 4;
    goto LABEL_7;
  }

  if (v2 == 1)
  {
    v4 = *(v1 + 8);
    v3 = (v1 + 8);
    if (v4 <= 3)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  emitEStateWithReal(a1, "ca", *(a1 + 168));
}

void emitEStateWithReal(uint64_t a1, const char *a2, double a3)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if (!*(v4 + 8))
    {
      *(v4 + 8) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_15272);
    }

    value = 0;
    v9 = PDFEStateCreate(*v4, a2);
    v10 = v9;
    if (v9)
    {
      *(v9 + 11) = 2;
      *(v9 + 6) = floor(a3 * 10000.0 + 0.5) / 10000.0;
    }

    if (!CFSetGetValueIfPresent(*(v4 + 8), v9, &value))
    {
      v11 = *(v4 + 24) + 1;
      *(v4 + 24) = v11;
      snprintf_l(v10 + 24, 0x10uLL, 0, "Gs%u", v11);
      CFSetAddValue(*(v4 + 8), v10);
      value = v10;
    }

    PDFEStateRelease(v10);
    v12 = *(v4 + 16);
    if (!v12)
    {
      v12 = CGOrderedSetCreate();
      *(v4 + 16) = v12;
    }

    CGOrderedSetAddValue(v12, value);
    v6 = value;
  }

  PDFResourceSetAddEState(*(a1 + 32), v6);
  PDFWriterPrintf(*(a1 + 16), "/%N gs", v13, v14, v15, v16, v17, v18, v6 + 24);
}

void emitStrokeAlphaChange(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 4);
  if (v2 <= 0)
  {
    *(v1 + 4) = 1;
    v3 = (v1 + 8);
LABEL_6:
    *v3 = 4;
    goto LABEL_7;
  }

  if (v2 == 1)
  {
    v4 = *(v1 + 8);
    v3 = (v1 + 8);
    if (v4 <= 3)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  emitEStateWithReal(a1, "CA", *(a1 + 176));
}

void PDFGStateSetStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 192);
  if ((CGStyleEqualToStyle(v4, a2) & 1) == 0)
  {
    if (v4)
    {
      CFRelease(v4);
    }

    if (v2)
    {
      if (*(v2 + 20) == 1 && *(v2 + 40) == 45.0 && *(v2 + 80) == 1.0)
      {
        CFRetain(v2);
      }

      else
      {
        v2 = 0;
      }
    }

    *(a1 + 192) = v2;

    addEmitFunction(a1, emitStyleChange);
  }
}

void emitStyleChange(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 192);
    if (!*(v2 + 8))
    {
      *(v2 + 8) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_15272);
    }

    value = 0;
    v4 = PDFEStateCreate(*v2, "AAPL:ST");
    v5 = v4;
    if (v4)
    {
      *(v4 + 11) = 5;
      if (v3)
      {
        CFRetain(v3);
      }

      *(v5 + 6) = v3;
    }

    if (!CFSetGetValueIfPresent(*(v2 + 8), v5, &value))
    {
      v6 = *(v2 + 24) + 1;
      *(v2 + 24) = v6;
      snprintf_l(v5 + 24, 0x10uLL, 0, "Gs%u", v6);
      CFSetAddValue(*(v2 + 8), v5);
      value = v5;
    }

    PDFEStateRelease(v5);
    v7 = *(v2 + 16);
    if (!v7)
    {
      v7 = CGOrderedSetCreate();
      *(v2 + 16) = v7;
    }

    CGOrderedSetAddValue(v7, value);
    v8 = value;
  }

  else
  {
    v8 = 0;
  }

  PDFResourceSetAddEState(*(a1 + 32), v8);
  PDFWriterPrintf(*(a1 + 16), "/%N gs", v9, v10, v11, v12, v13, v14, v8 + 24);
}

void PDFGStateSetStrokeOverprint(uint64_t a1, int a2)
{
  if (*(a1 + 201) != a2)
  {
    *(a1 + 201) = a2;
    addEmitFunction(a1, emitStrokeOverprintChange);
    if (*(a1 + 200) != *(a1 + 201))
    {

      addEmitFunction(a1, emitNonStrokeOverprintChange);
    }
  }
}

void PDFGStateSetOverprintMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2)
  {
    if (*(*(a1 + 8) + 91))
    {
      v10 = *(a1 + 152);
      if (v10)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          ColorSpace = CGTaggedColorGetColorSpace(v10, a2, a3, a4, a5, a6, a7, a8);
          if (!ColorSpace)
          {
            goto LABEL_12;
          }
        }

        else
        {
          ColorSpace = *(v10 + 24);
          if (!ColorSpace)
          {
            goto LABEL_12;
          }
        }

        v12 = PDFDocumentResolveColorSpace(*(a1 + 8), ColorSpace);
        if (v12)
        {
          v13 = v12;
          if (CGColorSpaceGetModel(v12) == kCGColorSpaceModelCMYK && CGColorSpaceGetType(v13) == 6)
          {
            v8 = 0;
          }
        }
      }
    }
  }

LABEL_12:
  if (*(a1 + 204) != v8)
  {
    *(a1 + 204) = v8;

    addEmitFunction(a1, emitOverprintModeChange);
  }
}

void emitOverprintModeChange(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 204);
    if (!*(v2 + 8))
    {
      *(v2 + 8) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_15272);
    }

    value = 0;
    v4 = PDFEStateCreate(*v2, "OPM");
    v5 = v4;
    if (v4)
    {
      *(v4 + 11) = 1;
      *(v4 + 12) = v3;
    }

    if (!CFSetGetValueIfPresent(*(v2 + 8), v4, &value))
    {
      v6 = *(v2 + 24) + 1;
      *(v2 + 24) = v6;
      snprintf_l(v5 + 24, 0x10uLL, 0, "Gs%u", v6);
      CFSetAddValue(*(v2 + 8), v5);
      value = v5;
    }

    PDFEStateRelease(v5);
    v7 = *(v2 + 16);
    if (!v7)
    {
      v7 = CGOrderedSetCreate();
      *(v2 + 16) = v7;
    }

    CGOrderedSetAddValue(v7, value);
    v8 = value;
  }

  else
  {
    v8 = 0;
  }

  PDFResourceSetAddEState(*(a1 + 32), v8);
  PDFWriterPrintf(*(a1 + 16), "/%N gs", v9, v10, v11, v12, v13, v14, v8 + 24);
}

void PDFGStateSetBlackGeneration(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 208);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 208) = cf;

    addEmitFunction(a1, emitBlackGenerationChange);
  }
}

void emitBlackGenerationChange(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    emitEStateWithFunction(a1, "BG", v1);
  }
}

void emitEStateWithFunction(uint64_t a1, const char *a2, const void *a3)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if (!*(v4 + 8))
    {
      *(v4 + 8) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_15272);
    }

    value = 0;
    v9 = PDFEStateCreate(*v4, a2);
    v10 = v9;
    if (v9)
    {
      *(v9 + 11) = 4;
      if (a3)
      {
        CFRetain(a3);
      }

      *(v10 + 6) = a3;
    }

    if (!CFSetGetValueIfPresent(*(v4 + 8), v10, &value))
    {
      v11 = *(v4 + 24) + 1;
      *(v4 + 24) = v11;
      snprintf_l(v10 + 24, 0x10uLL, 0, "Gs%u", v11);
      CFSetAddValue(*(v4 + 8), v10);
      value = v10;
    }

    PDFEStateRelease(v10);
    v12 = *(v4 + 16);
    if (!v12)
    {
      v12 = CGOrderedSetCreate();
      *(v4 + 16) = v12;
    }

    CGOrderedSetAddValue(v12, value);
    v6 = value;
  }

  PDFResourceSetAddEState(*(a1 + 32), v6);
  PDFWriterPrintf(*(a1 + 16), "/%N gs", v13, v14, v15, v16, v17, v18, v6 + 24);
}

void PDFGStateSetUndercolorRemoval(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 216);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 216) = cf;

    addEmitFunction(a1, emitUndercolorRemovalChange);
  }
}

void emitUndercolorRemovalChange(uint64_t a1)
{
  v1 = *(a1 + 216);
  if (v1)
  {
    emitEStateWithFunction(a1, "UCR", v1);
  }
}

void emitBlendModeChange(uint64_t a1)
{
  v2 = *(a1 + 248) - 13;
  if (v2 > 0xE)
  {
    v3 = "Normal";
  }

  else
  {
    v3 = off_1E6E1AA38[v2];
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    if (!*(v4 + 8))
    {
      *(v4 + 8) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_15272);
    }

    value = 0;
    v5 = PDFEStateCreate(*v4, "BM");
    v6 = v5;
    if (v5)
    {
      *(v5 + 11) = 3;
      v7 = strlen(v3);
      v8 = malloc_type_malloc(v7 + 1, 0x84A5EA8BuLL);
      __CFSetLastAllocationEventName();
      *(v6 + 6) = v8;
      strcpy(v8, v3);
    }

    if (!CFSetGetValueIfPresent(*(v4 + 8), v6, &value))
    {
      v9 = *(v4 + 24) + 1;
      *(v4 + 24) = v9;
      snprintf_l(v6 + 24, 0x10uLL, 0, "Gs%u", v9);
      CFSetAddValue(*(v4 + 8), v6);
      value = v6;
    }

    PDFEStateRelease(v6);
    v10 = *(v4 + 16);
    if (!v10)
    {
      v10 = CGOrderedSetCreate();
      *(v4 + 16) = v10;
    }

    CGOrderedSetAddValue(v10, value);
    v11 = value;
  }

  else
  {
    v11 = 0;
  }

  PDFResourceSetAddEState(*(a1 + 32), v11);
  PDFWriterPrintf(*(a1 + 16), "/%N gs", v12, v13, v14, v15, v16, v17, v11 + 24);
}

void PDFGStateSetSoftMask(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 240);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 240) = cf;

    addEmitFunction(a1, emitSoftMaskChange);
  }
}

void emitSoftMaskChange(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 240);
    if (!*(v2 + 8))
    {
      *(v2 + 8) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_15272);
    }

    value = 0;
    v4 = PDFEStateCreate(*v2, "SMask");
    v5 = v4;
    if (v4)
    {
      *(v4 + 11) = 6;
      if (v3)
      {
        CFRetain(v3);
      }

      *(v5 + 6) = v3;
    }

    if (!CFSetGetValueIfPresent(*(v2 + 8), v5, &value))
    {
      v6 = *(v2 + 24) + 1;
      *(v2 + 24) = v6;
      snprintf_l(v5 + 24, 0x10uLL, 0, "Gs%u", v6);
      CFSetAddValue(*(v2 + 8), v5);
      value = v5;
    }

    PDFEStateRelease(v5);
    v7 = *(v2 + 16);
    if (!v7)
    {
      v7 = CGOrderedSetCreate();
      *(v2 + 16) = v7;
    }

    CGOrderedSetAddValue(v7, value);
    v8 = value;
  }

  else
  {
    v8 = 0;
  }

  PDFResourceSetAddEState(*(a1 + 32), v8);
  PDFWriterPrintf(*(a1 + 16), "/%N gs", v9, v10, v11, v12, v13, v14, v8 + 24);
}

void PDFGStateSetClipStack(uint64_t a1, __CFArray *a2)
{
  v2 = *(a1 + 256);
  if (v2 != a2)
  {
    Mutable = a2;
    v5 = !v2 || a2 == 0;
    if (v5 || *(v2 + 1) != *(a2 + 1))
    {
      PDFGStateReset(a1);
      CGClipStackRelease(*(a1 + 256));
      *(a1 + 256) = CGClipStackCreateMutableCopy(Mutable);
      addEmitFunction(a1, emitClipStackChange);
      if (Mutable)
      {
        v6 = *(Mutable + 15);
        if (v6)
        {
          v7 = 0;
          v8 = Mutable + 128;
          while (1)
          {
            v9 = v8;
            if (*(Mutable + 14) != 3)
            {
              v9 = *(Mutable + 16) + 8 * v7;
            }

            v10 = *v9;
            if (*(*v9 + 8) == 3)
            {
              break;
            }

            ++v7;
            v8 += 8;
            if (!--v6)
            {
              goto LABEL_14;
            }
          }

          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
          CFArrayAppendValue(Mutable, v10);
        }

        else
        {
LABEL_14:
          Mutable = 0;
        }
      }

      v11 = *(a1 + 8);
      v12 = *(v11 + 432);
      if (!v12)
      {
        v12 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
        __CFSetLastAllocationEventName();
        if (v12)
        {
          *v12 = v11;
        }

        *(v11 + 432) = v12;
      }

      if (v12)
      {
        v13 = Mutable == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        if (!v12[1])
        {
          v12[1] = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_1052);
        }

        value = 0;
        v15 = *v12;
        if (*v12 && (Count = CFArrayGetCount(Mutable)) != 0)
        {
          v17 = Count;
          v18 = malloc_type_calloc(1uLL, 8 * Count + 40, 0x1020040D35986FDuLL);
          __CFSetLastAllocationEventName();
          if (v18)
          {
            v19 = 0;
            *v18 = 1;
            v18[1] = v15;
            v18[2] = 0;
            *(v18 + 24) = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v19);
              if (*(ValueAtIndex + 8) == 3)
              {
                v21 = *(ValueAtIndex + 3);
                if (v21)
                {
                  atomic_fetch_add_explicit(v21, 1u, memory_order_relaxed);
                }
              }

              else
              {
                v21 = 0;
              }

              v18[v19++ + 5] = v21;
            }

            while (v17 != v19);
            v18[4] = v17;
          }
        }

        else
        {
          v18 = 0;
        }

        if (!CFSetGetValueIfPresent(v12[1], v18, &value))
        {
          CFSetAddValue(v12[1], v18);
          value = v18;
        }

        PDFClipMaskRelease(v18);
        v22 = v12[2];
        if (!v22)
        {
          v22 = CGOrderedSetCreate();
          v12[2] = v22;
        }

        CGOrderedSetAddValue(v22, value);
        v14 = value;
      }

      v23 = *(a1 + 232);
      if (!PDFClipMaskEqualToClipMask(v23, v14))
      {
        PDFClipMaskRelease(v23);
        if (v14)
        {
          ++*v14;
        }

        *(a1 + 232) = v14;
        addEmitFunction(a1, emitClipMaskChange);
      }

      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }
}

void emitClipMaskChange(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 232);
    if (!*(v2 + 8))
    {
      *(v2 + 8) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_15272);
    }

    value = 0;
    v4 = PDFEStateCreate(*v2, "SMask");
    v5 = v4;
    if (v4)
    {
      *(v4 + 11) = 7;
      if (v3)
      {
        ++*v3;
      }

      *(v4 + 6) = v3;
    }

    if (!CFSetGetValueIfPresent(*(v2 + 8), v4, &value))
    {
      v6 = *(v2 + 24) + 1;
      *(v2 + 24) = v6;
      snprintf_l(v5 + 24, 0x10uLL, 0, "Gs%u", v6);
      CFSetAddValue(*(v2 + 8), v5);
      value = v5;
    }

    PDFEStateRelease(v5);
    v7 = *(v2 + 16);
    if (!v7)
    {
      v7 = CGOrderedSetCreate();
      *(v2 + 16) = v7;
    }

    CGOrderedSetAddValue(v7, value);
    v8 = value;
  }

  else
  {
    v8 = 0;
  }

  PDFResourceSetAddEState(*(a1 + 32), v8);
  PDFWriterPrintf(*(a1 + 16), "/%N gs", v9, v10, v11, v12, v13, v14, v8 + 24);
}

void emitClipStackChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  PDFWriterAnnotate(*(a1 + 16), "  BEGIN: synchronizing clip.", a3, a4, a5, a6, a7, a8, v76);
  v15 = *(a1 + 256);
  v16 = &CGRectInfinite;
  if (!v15)
  {
    p_height = &CGRectInfinite.size.height;
    p_y = &CGRectInfinite.origin.y;
    p_size = &CGRectInfinite.size;
    goto LABEL_36;
  }

  v17 = *(v15 + 120);
  if (!v17)
  {
    goto LABEL_29;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *MEMORY[0x1E695E480];
  v22 = 128;
  do
  {
    v23 = *(a1 + 256);
    if (*(v23 + 112) == 3)
    {
      v24 = v23 + v22;
    }

    else
    {
      v24 = *(v23 + 128) + 8 * v18;
    }

    v25 = *v24;
    v26 = *(*v24 + 8);
    if (v26 <= 2)
    {
      if (v26 != 2)
      {
LABEL_54:
        abort();
      }

      if (v19)
      {
        Mutable = v19;
      }

      else
      {
        Mutable = CFArrayCreateMutable(v21, 0, 0);
        v19 = Mutable;
      }
    }

    else
    {
      if (v26 == 3)
      {
        goto LABEL_18;
      }

      if (v26 != 4)
      {
        goto LABEL_54;
      }

      if (v20)
      {
        Mutable = v20;
      }

      else
      {
        Mutable = CFArrayCreateMutable(v21, 0, 0);
        v20 = Mutable;
      }
    }

    CFArrayAppendValue(Mutable, v25);
LABEL_18:
    ++v18;
    v22 += 8;
  }

  while (v17 != v18);
  if (v19)
  {
    Count = CFArrayGetCount(v19);
    if (Count)
    {
      v29 = Count;
      for (i = 0; i != v29; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v19, i);
        PDFWriteClipPath(*(a1 + 16), ValueAtIndex, v32, v33, v34, v35, v36, v37);
      }
    }

    CFRelease(v19);
  }

  if (v20)
  {
    v38 = CFArrayGetCount(v20);
    if (v38)
    {
      v39 = v38;
      for (j = 0; j != v39; ++j)
      {
        v41 = CFArrayGetValueAtIndex(v20, j);
        PDFWriterAnnotate(*(a1 + 16), "Beginning glyph clip.", v42, v43, v44, v45, v46, v47, v77);
        PDFWriteClipPath(*(a1 + 16), v41, v48, v49, v50, v51, v52, v53);
        PDFWriterAnnotate(*(a1 + 16), "Ending glyph clip.", v54, v55, v56, v57, v58, v59, v78);
      }
    }

    CFRelease(v20);
  }

LABEL_29:
  p_height = &CGRectInfinite.size.height;
  p_y = &CGRectInfinite.origin.y;
  v62 = *(a1 + 256);
  v63 = &v62[1];
  v64 = &v62[1].height;
  v65 = &v62[2].height;
  v66 = v62 == 0;
  if (v62)
  {
    p_size = v62 + 2;
  }

  else
  {
    p_size = &CGRectInfinite.size;
  }

  if (!v66)
  {
    p_y = v64;
    v16 = v63;
    p_height = v65;
  }

LABEL_36:
  v68 = *p_height;
  x = v16->origin.x;
  v70 = *p_y;
  width = p_size->width;
  *&v79 = x;
  *(&v79 + 1) = v70;
  *&v80 = width;
  *(&v80 + 1) = v68;
  if (x != -8.98846567e307 || v70 != -8.98846567e307 || width != 1.79769313e308 || v68 != 1.79769313e308)
  {
    if (x == INFINITY || v70 == INFINITY)
    {
      v79 = 0u;
      v80 = 0u;
    }

    PDFWriterPrintf(*(a1 + 16), "%*r re W n", v9, v10, v11, v12, v13, v14, &v79);
  }

  PDFWriterAnnotate(*(a1 + 16), "  END: synchronizing clip.", v9, v10, v11, v12, v13, v14, v77);
}

uint64_t w16_sample_Wf(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v85 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v83 = *(result + 188);
  v87 = *(result + 88);
  v88 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v14 = v5 + (v12 * v7) + 4 * (v13 - 1);
  v15 = v4 + (v12 * v6) + 4 * v13 - 4;
  v86 = *(result + 72);
  v84 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v86)
    {
      if (a3 <= v87)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v84;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v87;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_39;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v84;
        v25 = v83 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v86 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_39;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v84;
      v25 = v83 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v83;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v10;
    a3 += v9;
    v88 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v85)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_26;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v85;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_39;
  }

  if (v35 < v33)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v83;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_26:
  if (v25 < 0x400000)
  {
    goto LABEL_39;
  }

  v36 = v26 >> 32;
  v37 = v4 + SHIDWORD(v26) * v6;
  v38 = (v31 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = v37 + v38;
  v40 = *(result + 32);
  if (v15 >= v37 + v38)
  {
    v41 = (v37 + v38);
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  if (v5)
  {
    v42 = v5 + v36 * v7 + v38;
    v43 = *(result + 40);
    if (v14 >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v14;
    }

    if (v44 >= v43)
    {
      v43 = v44;
    }

    v45 = *v43;
  }

  else
  {
    v42 = 0;
    v45 = 1.0;
  }

  v46 = *v41;
  if (v8)
  {
    v47 = *(v8 + (v32 | v24));
LABEL_78:
    v61 = v47 & 0xF;
    v62 = HIBYTE(v47) & 3;
    if (v61 == 1)
    {
      v80 = (v39 + SBYTE1(v47) * v6);
      if (v15 < v80)
      {
        v80 = v15;
      }

      if (v80 < v40)
      {
        v80 = v40;
      }

      v77 = *v80;
      v78 = 1.0;
      if (v5)
      {
        v81 = (v42 + SBYTE1(v47) * v7);
        if (v14 < v81)
        {
          v81 = v14;
        }

        if (v81 < *(result + 40))
        {
          v81 = *(result + 40);
        }

        v78 = *v81;
      }
    }

    else
    {
      if (v61 != 2)
      {
        if (v61 == 3)
        {
          v63 = v39 + 4 * SBYTE2(v47);
          if (v15 >= v63)
          {
            v64 = (v39 + 4 * SBYTE2(v47));
          }

          else
          {
            v64 = v15;
          }

          if (v64 < v40)
          {
            v64 = v40;
          }

          v65 = *v64;
          v66 = (v63 + SBYTE1(v47) * v6);
          if (v15 < v66)
          {
            v66 = v15;
          }

          if (v66 < v40)
          {
            v66 = v40;
          }

          v67 = *v66;
          v68 = 1.0;
          v69 = 1.0;
          if (v5)
          {
            v70 = v42 + 4 * SBYTE2(v47);
            v71 = *(result + 40);
            if (v14 >= v70)
            {
              v72 = (v42 + 4 * SBYTE2(v47));
            }

            else
            {
              v72 = v14;
            }

            if (v72 < v71)
            {
              v72 = *(result + 40);
            }

            v69 = *v72;
            v73 = (v70 + SBYTE1(v47) * v7);
            if (v14 < v73)
            {
              v73 = v14;
            }

            if (v73 < v71)
            {
              v73 = *(result + 40);
            }

            v68 = *v73;
          }

          v74 = interpolate_waf[2 * v62 + 1];
          v75 = interpolate_waf[2 * ((v47 >> 28) & 3) + 1];
          v46 = (((v46 - (v46 * v74)) + (v65 * v74)) - (((v46 - (v46 * v74)) + (v65 * v74)) * v75)) + (((v65 - (v65 * v74)) + (v67 * v74)) * v75);
          v45 = (((v45 - (v45 * v74)) + (v69 * v74)) - (((v45 - (v45 * v74)) + (v69 * v74)) * v75)) + (((v69 - (v69 * v74)) + (v68 * v74)) * v75);
        }

        goto LABEL_44;
      }

      v76 = (v39 + 4 * SBYTE2(v47));
      if (v15 < v76)
      {
        v76 = v15;
      }

      if (v76 < v40)
      {
        v76 = v40;
      }

      v77 = *v76;
      v78 = 1.0;
      if (v5)
      {
        v79 = (v42 + 4 * SBYTE2(v47));
        if (v14 < v79)
        {
          v79 = v14;
        }

        if (v79 < *(result + 40))
        {
          v79 = *(result + 40);
        }

        v78 = *v79;
      }

      v62 = (v47 >> 28) & 3;
    }

    v82 = interpolate_waf[2 * v62 + 1];
    v46 = (v46 - (v46 * v82)) + (v77 * v82);
    v45 = (v45 - (v45 * v82)) + (v78 * v82);
  }

LABEL_44:
  v48 = 0;
  v49 = 0;
  v50 = v25 >> 22;
  a3 += v9;
  v51 = v87 - a3;
  a2 += v10;
  v52 = v85 - a2;
  while (1)
  {
    if (v45 <= 0.0)
    {
      v55 = 0;
    }

    else
    {
      if (v45 <= 1.0)
      {
        v53 = ((v45 * 65535.0) + 0.5);
      }

      else
      {
        v53 = 0xFFFF;
      }

      if (v45 > 1.0)
      {
        v45 = 1.0;
      }

      v54 = v53;
      if (v46 <= v45)
      {
        if (v46 >= 0.0)
        {
          v54 = ((v46 * 65535.0) + 0.5);
        }

        else
        {
          v54 = 0;
        }
      }

      v55 = v54 | (v53 << 16);
    }

    *(v88 + 4 + 4 * v49) = v55;
    *(v11 + 1 + v49) = v50;
    if (a4 - 1 == v49)
    {
      return result;
    }

    if ((v51 | v52 | (a3 - v86) | (a2 - v84)) < 0)
    {
      v11 += v49 + 1;
      v88 = v88 - v48 + 4;
      a4 += ~v49;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v56 = v4 + SHIDWORD(a3) * v6;
    v57 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = v56 + v57;
    v40 = *(result + 32);
    if (v15 >= v56 + v57)
    {
      v58 = (v56 + v57);
    }

    else
    {
      v58 = v15;
    }

    if (v58 < v40)
    {
      v58 = *(result + 32);
    }

    if (v5)
    {
      v42 = v5 + SHIDWORD(a3) * v7 + v57;
      v59 = *(result + 40);
      if (v14 >= v42)
      {
        v60 = (v5 + SHIDWORD(a3) * v7 + v57);
      }

      else
      {
        v60 = v14;
      }

      if (v60 >= v59)
      {
        v59 = v60;
      }

      v45 = *v59;
    }

    else
    {
      v45 = 1.0;
    }

    v46 = *v58;
    if (v8)
    {
      v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v47 & 0xF) != 0)
      {
        v11 += v49 + 1;
        v88 = v88 - v48 + 4;
        a4 += ~v49;
        v25 = -1;
        goto LABEL_78;
      }
    }

    ++v49;
    v48 -= 4;
    a3 += v9;
    v51 -= v9;
    a2 += v10;
    v52 -= v10;
    LOBYTE(v50) = -1;
  }
}

uint64_t w16_sample_WF(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v91 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v89 = *(result + 188);
  v93 = *(result + 88);
  v94 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v14 = v5 + (v12 * v7) + 4 * (v13 - 1);
  v15 = v4 + (v12 * v6) + 4 * v13 - 4;
  v92 = *(result + 72);
  v90 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v92)
    {
      if (a3 <= v93)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v90;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v93;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_39;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v90;
        v25 = v89 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v92 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_39;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v90;
      v25 = v89 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v89;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v10;
    a3 += v9;
    v94 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v91)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_26;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v91;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_39;
  }

  if (v35 < v33)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v89;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_26:
  if (v25 < 0x400000)
  {
    goto LABEL_39;
  }

  v36 = v26 >> 32;
  v37 = v4 + SHIDWORD(v26) * v6;
  v38 = (v31 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = v37 + v38;
  v40 = *(result + 32);
  if (v15 >= v37 + v38)
  {
    v41 = (v37 + v38);
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  if (v5)
  {
    v42 = v5 + v36 * v7 + v38;
    v43 = *(result + 40);
    if (v14 >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v14;
    }

    if (v44 >= v43)
    {
      v43 = v44;
    }

    v45 = COERCE_FLOAT(bswap32(*v43));
  }

  else
  {
    v42 = 0;
    v45 = 1.0;
  }

  v46 = COERCE_FLOAT(bswap32(*v41));
  if (!v8)
  {
    goto LABEL_44;
  }

  v47 = *(v8 + (v32 | v24));
LABEL_79:
  v62 = v47 & 0xF;
  v63 = v47 >> 8;
  v64 = HIBYTE(v47) & 3;
  if (v62 == 1)
  {
    v83 = SBYTE1(v47);
    v84 = (v39 + v63 * v6);
    if (v15 < v84)
    {
      v84 = v15;
    }

    if (v84 < v40)
    {
      v84 = v40;
    }

    v85 = COERCE_FLOAT(bswap32(*v84));
    v86 = 1.0;
    if (v5)
    {
      v87 = (v42 + v83 * v7);
      if (v14 < v87)
      {
        v87 = v14;
      }

      if (v87 < *(result + 40))
      {
        v87 = *(result + 40);
      }

      v86 = COERCE_FLOAT(bswap32(*v87));
    }

    v88 = interpolate_waf[2 * v64 + 1];
    v46 = (v46 - (v46 * v88)) + (v85 * v88);
    v45 = (v45 - (v45 * v88)) + (v86 * v88);
LABEL_44:
    v48 = v91;
    goto LABEL_45;
  }

  if (v62 != 2)
  {
    if (v62 == 3)
    {
      v65 = v39 + 4 * SBYTE2(v47);
      if (v15 >= v65)
      {
        v66 = (v39 + 4 * SBYTE2(v47));
      }

      else
      {
        v66 = v15;
      }

      if (v66 < v40)
      {
        v66 = v40;
      }

      v67 = COERCE_FLOAT(bswap32(*v66));
      v68 = (v65 + SBYTE1(v47) * v6);
      if (v15 < v68)
      {
        v68 = v15;
      }

      if (v68 < v40)
      {
        v68 = v40;
      }

      v69 = COERCE_FLOAT(bswap32(*v68));
      v70 = 1.0;
      v71 = 1.0;
      if (v5)
      {
        v72 = v42 + 4 * SBYTE2(v47);
        v73 = *(result + 40);
        if (v14 >= v72)
        {
          v74 = (v42 + 4 * SBYTE2(v47));
        }

        else
        {
          v74 = v14;
        }

        if (v74 < v73)
        {
          v74 = *(result + 40);
        }

        v70 = COERCE_FLOAT(bswap32(*v74));
        v75 = (v72 + SBYTE1(v47) * v7);
        if (v14 < v75)
        {
          v75 = v14;
        }

        if (v75 < v73)
        {
          v75 = *(result + 40);
        }

        v71 = COERCE_FLOAT(bswap32(*v75));
      }

      v76 = interpolate_waf[2 * v64 + 1];
      v77 = interpolate_waf[2 * ((v47 >> 28) & 3) + 1];
      v46 = (((v46 - (v46 * v76)) + (v67 * v76)) - (((v46 - (v46 * v76)) + (v67 * v76)) * v77)) + (((v67 - (v67 * v76)) + (v69 * v76)) * v77);
      v45 = (((v45 - (v45 * v76)) + (v70 * v76)) - (((v45 - (v45 * v76)) + (v70 * v76)) * v77)) + (((v70 - (v70 * v76)) + (v71 * v76)) * v77);
    }

    goto LABEL_44;
  }

  v78 = (v39 + 4 * SBYTE2(v47));
  if (v15 < v78)
  {
    v78 = v15;
  }

  if (v78 < v40)
  {
    v78 = v40;
  }

  v79 = COERCE_FLOAT(bswap32(*v78));
  v80 = 1.0;
  v48 = v91;
  if (v5)
  {
    v81 = (v42 + 4 * SBYTE2(v47));
    if (v14 < v81)
    {
      v81 = v14;
    }

    if (v81 < *(result + 40))
    {
      v81 = *(result + 40);
    }

    v80 = COERCE_FLOAT(bswap32(*v81));
  }

  v82 = interpolate_waf[2 * ((v47 >> 28) & 3) + 1];
  v46 = (v46 - (v46 * v82)) + (v79 * v82);
  v45 = (v45 - (v45 * v82)) + (v80 * v82);
LABEL_45:
  v49 = 0;
  v50 = 0;
  v51 = v25 >> 22;
  a3 += v9;
  v52 = v93 - a3;
  a2 += v10;
  v53 = v48 - a2;
  while (1)
  {
    if (v45 <= 0.0)
    {
      v56 = 0;
    }

    else
    {
      if (v45 <= 1.0)
      {
        v54 = ((v45 * 65535.0) + 0.5);
      }

      else
      {
        v54 = 0xFFFF;
      }

      if (v45 > 1.0)
      {
        v45 = 1.0;
      }

      v55 = v54;
      if (v46 <= v45)
      {
        if (v46 >= 0.0)
        {
          v55 = ((v46 * 65535.0) + 0.5);
        }

        else
        {
          v55 = 0;
        }
      }

      v56 = v55 | (v54 << 16);
    }

    *(v94 + 4 + 4 * v50) = v56;
    *(v11 + 1 + v50) = v51;
    if (a4 - 1 == v50)
    {
      return result;
    }

    if ((v52 | v53 | (a3 - v92) | (a2 - v90)) < 0)
    {
      v11 += v50 + 1;
      v94 = v94 - v49 + 4;
      a4 += ~v50;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v57 = v4 + SHIDWORD(a3) * v6;
    v58 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = v57 + v58;
    v40 = *(result + 32);
    if (v15 >= v57 + v58)
    {
      v59 = (v57 + v58);
    }

    else
    {
      v59 = v15;
    }

    if (v59 < v40)
    {
      v59 = *(result + 32);
    }

    if (v5)
    {
      v42 = v5 + SHIDWORD(a3) * v7 + v58;
      v60 = *(result + 40);
      if (v14 >= v42)
      {
        v61 = (v5 + SHIDWORD(a3) * v7 + v58);
      }

      else
      {
        v61 = v14;
      }

      if (v61 >= v60)
      {
        v60 = v61;
      }

      v45 = COERCE_FLOAT(bswap32(*v60));
    }

    else
    {
      v45 = 1.0;
    }

    v46 = COERCE_FLOAT(bswap32(*v59));
    if (v8)
    {
      v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v47 & 0xF) != 0)
      {
        v11 += v50 + 1;
        v94 = v94 - v49 + 4;
        a4 += ~v50;
        v25 = -1;
        goto LABEL_79;
      }
    }

    ++v50;
    v49 -= 4;
    a3 += v9;
    v52 -= v9;
    a2 += v10;
    v53 -= v10;
    LOBYTE(v51) = -1;
  }
}