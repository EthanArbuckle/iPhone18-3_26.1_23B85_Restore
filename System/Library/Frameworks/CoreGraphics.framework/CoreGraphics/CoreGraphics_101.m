uint64_t RGBAf16_sample_Wf16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(result + 32);
  v6 = *(result + 40);
  v7 = *(result + 24);
  v8 = *(result + 28);
  v9 = *(result + 176);
  v10 = *(result + 72);
  v130 = *(result + 80);
  v128 = *(result + 88);
  v12 = *(result + 112);
  v11 = *(result + 120);
  v127 = *(result + 188);
  v13 = (*(result + 152) - 8);
  v14 = *(result + 144) - 1;
  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v17 = v6 + (v15 * v8) + 2 * (v16 - 1);
  v18 = v5 + (v15 * v7) + 2 * v16 - 2;
  v125 = *(result + 240);
  v126 = a4;
  v129 = *(result + 64);
  while (1)
  {
    if (a3 >= v10)
    {
      if (a3 <= v128)
      {
        v28 = (a3 >> 22) & 0x3C0;
        v29 = 0x3FFFFFFF;
        v30 = a3;
        v22 = v129;
        v31 = v130;
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v128;
        v26 = v25 - a3 + (v24 >> 1);
        v22 = v129;
        if (v26 < 1)
        {
          goto LABEL_39;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v31 = v130;
        v29 = v27 | v127;
        v30 = v25 - 0x1000000;
        v28 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v10 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = v129;
      if (v21 < 1)
      {
        goto LABEL_39;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v31 = v130;
      v29 = v23 | v127;
      v30 = v20 + 0x1000000;
      v28 = 512;
    }

    if (a2 >= v22)
    {
      break;
    }

    v32 = *(result + 192);
    v33 = v22 - *(result + 200);
    v34 = a2 - v33 + (v32 >> 1);
    if (v34 >= 1)
    {
      if (v34 < v32)
      {
        v29 = ((v29 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v127;
      }

      v35 = v33 + 0x1000000;
      v36 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v12;
    a3 += v11;
    v13 += 4;
    *++v14 = 0;
LABEL_40:
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v31)
  {
    v36 = (a2 >> 26) & 0x3C;
    v35 = a2;
    goto LABEL_26;
  }

  v37 = v31;
  v38 = *(result + 192);
  v39 = *(result + 200) + v37;
  v40 = v39 - a2 + (v38 >> 1);
  if (v40 < 1)
  {
    goto LABEL_39;
  }

  if (v40 < v38)
  {
    v29 = ((v29 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v127;
  }

  v35 = v39 - 0x1000000;
  v36 = 28;
LABEL_26:
  if (v29 < 0x400000)
  {
    goto LABEL_39;
  }

  v41 = v30 >> 32;
  v42 = v5 + v41 * v7;
  v43 = v35 >> 31;
  v44 = v43 & 0xFFFFFFFFFFFFFFFELL;
  v45 = v42 + (v43 & 0xFFFFFFFFFFFFFFFELL);
  v46 = *(result + 32);
  if (v18 >= v45)
  {
    v47 = (v42 + (v43 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    v47 = v18;
  }

  if (v47 < v46)
  {
    v47 = *(result + 32);
  }

  if (v6)
  {
    v48 = v6 + v41 * v8 + v44;
    v49 = *(result + 40);
    if (v17 >= v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = v17;
    }

    if (v50 >= v49)
    {
      v49 = v50;
    }

    _H2 = *v49;
    __asm { FCVT            S2, H2 }
  }

  else
  {
    v48 = 0;
    _S2 = 1.0;
  }

  _H3 = *v47;
  __asm { FCVT            S3, H3 }

  if (v9)
  {
    v58 = *(v9 + (v36 | v28));
LABEL_45:
    v59 = v58 & 0xF;
    v60 = HIBYTE(v58) & 3;
    if (v59 == 1)
    {
      v102 = (v45 + SBYTE1(v58) * v7);
      if (v18 < v102)
      {
        v102 = v18;
      }

      if (v102 < v46)
      {
        v102 = v46;
      }

      _H4 = *v102;
      __asm { FCVT            S4, H4 }

      _S5 = 1.0;
      if (v6)
      {
        v104 = (v48 + SBYTE1(v58) * v8);
        if (v17 < v104)
        {
          v104 = v17;
        }

        if (v104 < *(result + 40))
        {
          v104 = *(result + 40);
        }

        _H5 = *v104;
        __asm { FCVT            S5, H5 }
      }

      v101 = &interpolate_waf[2 * v60];
    }

    else
    {
      if (v59 != 2)
      {
        if (v59 == 3)
        {
          v61 = (v45 + 2 * SBYTE2(v58));
          if (v18 < v61)
          {
            v61 = v18;
          }

          if (v61 < v46)
          {
            v61 = v46;
          }

          _H4 = *v61;
          __asm { FCVT            S4, H4 }

          v64 = v45 + SBYTE1(v58) * v7;
          if (v18 >= v64)
          {
            v65 = (v45 + SBYTE1(v58) * v7);
          }

          else
          {
            v65 = v18;
          }

          if (v65 < v46)
          {
            v65 = v46;
          }

          _H5 = *v65;
          __asm { FCVT            S5, H5 }

          v68 = (v64 + 2 * SBYTE2(v58));
          if (v18 < v68)
          {
            v68 = v18;
          }

          if (v68 < v46)
          {
            v68 = v46;
          }

          _H6 = *v68;
          __asm { FCVT            S6, H6 }

          _S17 = 1.0;
          _S7 = 1.0;
          _S16 = 1.0;
          if (v6)
          {
            v74 = 2 * SBYTE2(v58);
            v75 = (v48 + v74);
            v76 = *(result + 40);
            if (v17 < v48 + v74)
            {
              v75 = v17;
            }

            if (v75 < v76)
            {
              v75 = *(result + 40);
            }

            _H7 = *v75;
            __asm { FCVT            S16, H7 }

            v78 = v48 + SBYTE1(v58) * v8;
            if (v17 >= v78)
            {
              v79 = (v48 + SBYTE1(v58) * v8);
            }

            else
            {
              v79 = v17;
            }

            if (v79 < v76)
            {
              v79 = *(result + 40);
            }

            _H7 = *v79;
            __asm { FCVT            S7, H7 }

            v81 = (v78 + v74);
            if (v17 < v81)
            {
              v81 = v17;
            }

            if (v81 < v76)
            {
              v81 = *(result + 40);
            }

            _H17 = *v81;
            __asm { FCVT            S17, H17 }
          }

          v83 = interpolate_waf[2 * v60 + 1];
          v84 = interpolate_waf[2 * ((v58 >> 28) & 3) + 1];
          v85 = (_S3 - (_S3 * v84)) + (_S4 * v84);
          v86 = (_S5 - (_S5 * v84)) + (_S6 * v84);
          v87 = (_S2 - (_S2 * v84)) + (_S16 * v84);
          v88 = v87 > 1.0 || v87 < 0.0;
          if (v87 < 0.0 && v87 <= 1.0)
          {
            v89 = 0.0;
          }

          else
          {
            v89 = 1.0;
          }

          if (v88)
          {
            v87 = v89;
          }

          v90 = (_S7 - (_S7 * v84)) + (_S17 * v84);
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

          _S3 = (v85 - (v85 * v83)) + (v86 * v83);
          _S2 = (v87 - (v87 * v83)) + (v90 * v83);
          v93 = _S2 > 1.0 || _S2 < 0.0;
          if (_S2 < 0.0 && _S2 <= 1.0)
          {
            v94 = 0.0;
          }

          else
          {
            v94 = 1.0;
          }

          if (v93)
          {
            _S2 = v94;
          }
        }

        goto LABEL_124;
      }

      v95 = (v45 + 2 * SBYTE2(v58));
      if (v18 < v95)
      {
        v95 = v18;
      }

      if (v95 < v46)
      {
        v95 = v46;
      }

      _H4 = *v95;
      __asm { FCVT            S4, H4 }

      _S5 = 1.0;
      if (v6)
      {
        v99 = (v48 + 2 * SBYTE2(v58));
        if (v17 < v99)
        {
          v99 = v17;
        }

        if (v99 < *(result + 40))
        {
          v99 = *(result + 40);
        }

        _H5 = *v99;
        __asm { FCVT            S5, H5 }
      }

      v101 = &interpolate_waf[2 * ((v58 >> 28) & 3)];
    }

    v106 = v101[1];
    _S3 = (_S3 - (_S3 * v106)) + (_S4 * v106);
    _S2 = (_S2 - (_S2 * v106)) + (_S5 * v106);
  }

LABEL_124:
  __asm { FCVT            H3, S3 }

  v13[6] = _H3;
  v13[5] = _H3;
  v13[4] = _H3;
  __asm { FCVT            H2, S2 }

  v13[7] = _H2;
  *++v14 = v29 >> 22;
  if (--a4)
  {
    v109 = v13 + 11;
    a2 += v12;
    v110 = v130 - a2;
    a3 += v11;
    v111 = v128 - a3;
    while (1)
    {
      v13 = v109 - 7;
      if (((a2 - v129) | v110 | (a3 - v10) | v111) < 0)
      {
        goto LABEL_40;
      }

      v112 = v5 + SHIDWORD(a3) * v7;
      v113 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v45 = v112 + v113;
      v46 = *(result + 32);
      if (v18 >= v112 + v113)
      {
        v114 = (v112 + v113);
      }

      else
      {
        v114 = v18;
      }

      if (v114 >= v46)
      {
        v115 = v114;
      }

      else
      {
        v115 = *(result + 32);
      }

      if (v6)
      {
        v48 = v6 + SHIDWORD(a3) * v8 + v113;
        v116 = *(result + 40);
        if (v17 >= v48)
        {
          v117 = (v6 + SHIDWORD(a3) * v8 + v113);
        }

        else
        {
          v117 = v17;
        }

        if (v117 >= v116)
        {
          v116 = v117;
        }

        _H2 = *v116;
        __asm { FCVT            S2, H2 }
      }

      else
      {
        _S2 = 1.0;
      }

      _H3 = *v115;
      if (v9)
      {
        v58 = *(v9 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        v120 = v58 & 0xF;
        if ((v58 & 0xF) != 0)
        {
          __asm { FCVT            S3, H3 }

          v122 = *(result + 264);
          v123 = *v122;
          if (a4 != 1 && a4 + 1 != v126 && v125 != 1 && v123 == 3 && v120 < 3)
          {
            v58 |= 3u;
          }

          v29 = -1;
          if (v123 < v120)
          {
            *v122 = v120;
          }

          goto LABEL_45;
        }
      }

      *(v109 - 1) = _H3;
      *(v109 - 2) = _H3;
      *(v109 - 3) = _H3;
      __asm { FCVT            H2, S2 }

      *v109 = _H2;
      *++v14 = -1;
      v109 += 4;
      a2 += v12;
      v110 -= v12;
      a3 += v11;
      v111 -= v11;
      if (!--a4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t RGBAf16_sample_RGBf16(uint64_t result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, float16x4_t a10, double _D6, double _D7)
{
  v17 = *(result + 32);
  v18 = *(result + 24);
  v19 = *(result + 176);
  v20 = *(result + 64);
  v21 = *(result + 72);
  v22 = *(result + 80);
  v23 = *(result + 88);
  v24 = *(result + 112);
  v25 = *(result + 120);
  v26 = *(result + 188);
  v27 = *(result + 152) - 8;
  v28 = *(result + 144) - 1;
  v98 = *(result + 240);
  v99 = a4;
  v29 = v17 + ((*(result + 260) - 1) * v18) + 2 * (3 * *(result + 256)) - 6;
  while (1)
  {
    if (a3 >= v21)
    {
      if (a3 <= v23)
      {
        v38 = (a3 >> 22) & 0x3C0;
        v39 = 0x3FFFFFFF;
        HIDWORD(v40) = HIDWORD(a3);
      }

      else
      {
        v34 = *(result + 216);
        v35 = *(result + 224) + v23;
        v36 = v35 - a3 + (v34 >> 1);
        if (v36 < 1)
        {
          goto LABEL_67;
        }

        if (v36 >= v34)
        {
          LODWORD(v37) = 0x3FFFFFFF;
        }

        else
        {
          v37 = (*(result + 232) * v36) >> 32;
        }

        v39 = v37 | v26;
        v40 = v35 - 0x1000000;
        v38 = 448;
      }
    }

    else
    {
      v30 = *(result + 216);
      v31 = v21 - *(result + 224);
      v32 = a3 - v31 + (v30 >> 1);
      if (v32 < 1)
      {
        goto LABEL_67;
      }

      if (v32 >= v30)
      {
        LODWORD(v33) = 0x3FFFFFFF;
      }

      else
      {
        v33 = (*(result + 232) * v32) >> 32;
      }

      v39 = v33 | v26;
      v40 = v31 + 0x1000000;
      v38 = 512;
    }

    if (a2 >= v20)
    {
      break;
    }

    v41 = *(result + 192);
    v42 = v20 - *(result + 200);
    v43 = a2 - v42 + (v41 >> 1);
    if (v43 >= 1)
    {
      if (v43 < v41)
      {
        v39 = ((v39 >> 15) * (((*(result + 208) * v43) >> 32) >> 15)) | v26;
      }

      v44 = v42 + 0x1000000;
      v45 = 32;
      goto LABEL_26;
    }

LABEL_67:
    --a4;
    a2 += v24;
    a3 += v25;
    v27 += 8;
    *++v28 = 0;
LABEL_68:
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v22)
  {
    v45 = (a2 >> 26) & 0x3C;
    v44 = a2;
    goto LABEL_26;
  }

  v46 = *(result + 192);
  v47 = *(result + 200) + v22;
  v48 = v47 - a2 + (v46 >> 1);
  if (v48 < 1)
  {
    goto LABEL_67;
  }

  if (v48 < v46)
  {
    v39 = ((v39 >> 15) * (((*(result + 208) * v48) >> 32) >> 15)) | v26;
  }

  v44 = v47 - 0x1000000;
  v45 = 28;
LABEL_26:
  if (v39 < 0x400000)
  {
    goto LABEL_67;
  }

  v49 = v44 >> 32;
  v50 = v17 + SHIDWORD(v40) * v18;
  v51 = v50 + 6 * v49;
  v52 = *(result + 32);
  if (v29 >= v51)
  {
    v53 = v50 + 6 * v49;
  }

  else
  {
    v53 = v29;
  }

  if (v53 < v52)
  {
    v53 = *(result + 32);
  }

  _H4 = *v53;
  a10.i32[0] = *(v53 + 2);
  if (!v19)
  {
    goto LABEL_70;
  }

  v55 = *(v19 + (v45 | v38));
LABEL_34:
  v56 = v55 & 0xF;
  v57 = HIBYTE(v55) & 3;
  if (v56 == 1)
  {
    v83 = v51 + SBYTE1(v55) * v18;
    if (v29 < v83)
    {
      v83 = v29;
    }

    if (v83 < v52)
    {
      v83 = v52;
    }

    LOWORD(_D6) = *v83;
    v84 = &interpolate_rgbaf16[4 * v57];
    goto LABEL_81;
  }

  if (v56 == 2)
  {
    v83 = v51 + 6 * SBYTE2(v55);
    if (v29 < v83)
    {
      v83 = v29;
    }

    if (v83 < v52)
    {
      v83 = v52;
    }

    LOWORD(_D6) = *v83;
    v84 = &interpolate_rgbaf16[4 * ((v55 >> 28) & 3)];
LABEL_81:
    LOWORD(_D7) = v84[3];
    __asm
    {
      FCVT            S7, H7
      FCVT            S4, H4
      FCVT            S6, H6
    }

    _S4 = (_S4 - (_S4 * *&_D7)) + (*&_D6 * *&_D7);
    __asm { FCVT            H4, S4 }

    v87 = vcvtq_f32_f16(a10);
    LODWORD(_D6) = *(v83 + 2);
    *&_D6 = vcvtq_f32_f16(*&_D6).u64[0];
    *v87.f32 = vmla_n_f32(vmls_lane_f32(*v87.f32, *v87.f32, *&_D7, 0), *&_D6, *&_D7);
    a10 = vcvt_f16_f32(v87);
    *&_D6 = (1.0 - *&_D7) + *&_D7;
    __asm { FCVT            H6, S6 }

    goto LABEL_82;
  }

  if (v56 != 3)
  {
LABEL_70:
    LOWORD(_D6) = COERCE_UNSIGNED_INT(1.0);
    goto LABEL_82;
  }

  v58 = v51 + 6 * SBYTE2(v55);
  if (v29 < v58)
  {
    v58 = v29;
  }

  if (v58 < v52)
  {
    v58 = v52;
  }

  _H6 = *v58;
  v60 = v51 + SBYTE1(v55) * v18;
  if (v29 >= v60)
  {
    v61 = v51 + SBYTE1(v55) * v18;
  }

  else
  {
    v61 = v29;
  }

  if (v61 < v52)
  {
    v61 = v52;
  }

  _H7 = *v61;
  v63 = v60 + 6 * SBYTE2(v55);
  if (v29 < v63)
  {
    v63 = v29;
  }

  if (v63 < v52)
  {
    v63 = v52;
  }

  _H16 = *v63;
  _H17 = interpolate_rgbaf16[4 * v57 + 3];
  __asm { FCVT            S17, H17 }

  _H18 = interpolate_rgbaf16[4 * ((v55 >> 28) & 3) + 3];
  __asm
  {
    FCVT            S18, H18
    FCVT            S4, H4
    FCVT            S6, H6
  }

  v72 = (_S4 - (_S4 * _D18.f32[0])) + (_S6 * _D18.f32[0]);
  __asm
  {
    FCVT            S6, H7
    FCVT            S7, H16
  }

  *&_D6 = (_S6 - (_S6 * _D18.f32[0])) + (_S7 * _D18.f32[0]);
  v75 = vcvtq_f32_f16(a10);
  v76 = (1.0 - _D18.f32[0]) + _D18.f32[0];
  v77 = v76 > 1.0 || v76 < 0.0;
  if (v76 < 0.0 && v76 <= 1.0)
  {
    v78 = 0.0;
  }

  else
  {
    v78 = 1.0;
  }

  if (v77)
  {
    v76 = v78;
  }

  _S4 = (v72 - (v72 * _D17.f32[0])) + (*&_D6 * _D17.f32[0]);
  __asm { FCVT            H4, S4 }

  LODWORD(_D6) = *(v58 + 2);
  v12.i32[0] = *(v61 + 2);
  v15.i32[0] = *(v63 + 2);
  *v75.f32 = vmla_n_f32(vmls_lane_f32(*v75.f32, *v75.f32, _D18, 0), *&vcvtq_f32_f16(*&_D6), _D18.f32[0]);
  v80 = vcvtq_f32_f16(v12).u64[0];
  v12 = vcvtq_f32_f16(v15).u64[0];
  _D6 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(v80, v80, _D18, 0), v12, _D18.f32[0]));
  *v75.f32 = vmla_n_f32(vmls_lane_f32(*v75.f32, *v75.f32, _D17, 0), *&_D6, _D17.f32[0]);
  a10 = vcvt_f16_f32(v75);
  *&_D6 = (v76 - (v76 * _D17.f32[0])) + (v76 * _D17.f32[0]);
  v81 = *&_D6 > 1.0 || *&_D6 < 0.0;
  if (*&_D6 < 0.0 && *&_D6 <= 1.0)
  {
    v82 = COERCE_SHORT_FLOAT(0);
  }

  else
  {
    LOWORD(v82) = COERCE_UNSIGNED_INT(1.0);
  }

  __asm { FCVT            H6, S6 }

  if (v81)
  {
    *&_D6 = v82;
  }

LABEL_82:
  *(v27 + 8) = _H4;
  *(v27 + 10) = a10.i32[0];
  *(v27 + 14) = LOWORD(_D6);
  *++v28 = v39 >> 22;
  if (--a4)
  {
    v88 = (v27 + 22);
    a2 += v24;
    v89 = v22 - a2;
    a3 += v25;
    v90 = v23 - a3;
    while (1)
    {
      v27 = (v88 - 7);
      if ((((a2 - v20) | v89 | (a3 - v21) | v90) & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      v91 = v17 + SHIDWORD(a3) * v18;
      v51 = v91 + 6 * SHIDWORD(a2);
      v52 = *(result + 32);
      if (v29 >= v51)
      {
        v92 = v91 + 6 * SHIDWORD(a2);
      }

      else
      {
        v92 = v29;
      }

      if (v92 < v52)
      {
        v92 = *(result + 32);
      }

      _H4 = *v92;
      v93 = *(v92 + 2);
      a10.i32[0] = v93;
      if (v19)
      {
        v55 = *(v19 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        v94 = v55 & 0xF;
        if ((v55 & 0xF) != 0)
        {
          v95 = *(result + 264);
          v96 = *v95;
          if (a4 != 1 && a4 + 1 != v99 && v98 != 1 && v96 == 3 && v94 < 3)
          {
            v55 |= 3u;
          }

          v39 = -1;
          if (v96 < v94)
          {
            *v95 = v94;
          }

          goto LABEL_34;
        }
      }

      *(v88 - 3) = _H4;
      *(v88 - 1) = v93;
      *v88 = COERCE_UNSIGNED_INT(1.0);
      v88 += 4;
      a2 += v24;
      v89 -= v24;
      a3 += v25;
      v90 -= v25;
      *++v28 = -1;
      if (!--a4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t RGBAf16_sample_CMYKf16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(result + 32);
  v8 = *(result + 40);
  v9 = *(result + 24);
  v10 = *(result + 28);
  v11 = *(result + 176);
  v12 = *(result + 72);
  v13 = *(result + 88);
  v133 = *(result + 80);
  v15 = *(result + 112);
  v14 = *(result + 120);
  v131 = *(result + 188);
  v16 = *(result + 152) - 8;
  v17 = (*(result + 144) - 1);
  v18 = *(result + 260) - 1;
  v19 = *(result + 256);
  v20 = v8 + (v18 * v10) + 2 * (v19 - 1);
  v129 = *(result + 240);
  v130 = a4;
  v21 = v7 + (v18 * v9) + 2 * (4 * v19) - 8;
  v132 = *(result + 64);
  while (1)
  {
    if (a3 >= v12)
    {
      if (a3 <= v13)
      {
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        v32 = a3;
      }

      else
      {
        v26 = *(result + 216);
        v27 = *(result + 224) + v13;
        v28 = v27 - a3 + (v26 >> 1);
        if (v28 < 1)
        {
          goto LABEL_39;
        }

        if (v28 >= v26)
        {
          LODWORD(v29) = 0x3FFFFFFF;
        }

        else
        {
          v29 = (*(result + 232) * v28) >> 32;
        }

        v31 = v29 | v131;
        v32 = v27 - 0x1000000;
        v30 = 448;
      }
    }

    else
    {
      v22 = *(result + 216);
      v23 = v12 - *(result + 224);
      v24 = a3 - v23 + (v22 >> 1);
      if (v24 < 1)
      {
        goto LABEL_39;
      }

      if (v24 >= v22)
      {
        LODWORD(v25) = 0x3FFFFFFF;
      }

      else
      {
        v25 = (*(result + 232) * v24) >> 32;
      }

      v31 = v25 | v131;
      v32 = v23 + 0x1000000;
      v30 = 512;
    }

    if (a2 >= v132)
    {
      if (a2 <= v133)
      {
        v37 = (a2 >> 26) & 0x3C;
        v36 = a2;
      }

      else
      {
        v38 = *(result + 192);
        v39 = *(result + 200) + v133;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_39;
        }

        if (v40 < v38)
        {
          v31 = ((v31 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v131;
        }

        v36 = v39 - 0x1000000;
        v37 = 28;
      }
    }

    else
    {
      v33 = *(result + 192);
      v34 = v132 - *(result + 200);
      v35 = a2 - v34 + (v33 >> 1);
      if (v35 < 1)
      {
        goto LABEL_39;
      }

      if (v35 < v33)
      {
        v31 = ((v31 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v131;
      }

      v36 = v34 + 0x1000000;
      v37 = 32;
    }

    if (v31 >= 0x400000)
    {
      break;
    }

LABEL_39:
    --a4;
    a2 += v15;
    a3 += v14;
    v16 += 8;
    *++v17 = 0;
LABEL_40:
    if (!a4)
    {
      return result;
    }
  }

  v41 = v32 >> 32;
  v42 = v36 >> 32;
  v43 = v7 + v41 * v9;
  v44 = v43 + 8 * v42;
  v45 = *(result + 32);
  if (v21 >= v44)
  {
    v46 = (v43 + 8 * v42);
  }

  else
  {
    v46 = v21;
  }

  if (v46 < v45)
  {
    v46 = *(result + 32);
  }

  if (v8)
  {
    v47 = v8 + v41 * v10 + 2 * v42;
    v48 = *(result + 40);
    if (v20 >= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = v20;
    }

    if (v49 >= v48)
    {
      v48 = v49;
    }

    _H4 = *v48;
  }

  else
  {
    v47 = 0;
    LOWORD(_H4) = COERCE_UNSIGNED_INT(1.0);
  }

  _D5 = *v46;
  if (!v11)
  {
LABEL_100:
    v55 = v133;
    goto LABEL_124;
  }

  v52 = *(v11 + (v37 | v30));
LABEL_45:
  v53 = v52 & 0xF;
  v54 = HIBYTE(v52) & 3;
  v55 = v133;
  switch(v53)
  {
    case 1:
      v100 = (v44 + SBYTE1(v52) * v9);
      if (v21 < v100)
      {
        v100 = v21;
      }

      if (v100 < v45)
      {
        v100 = v45;
      }

      v95 = *v100;
      _S7 = 1.0;
      if (v8)
      {
        v101 = (v47 + SBYTE1(v52) * v10);
        if (v20 < v101)
        {
          v101 = v20;
        }

        if (v101 < *(result + 40))
        {
          v101 = *(result + 40);
        }

        _H7 = *v101;
        __asm { FCVT            S7, H7 }
      }

      v99 = &interpolate_cmykaf[5 * v54];
      goto LABEL_123;
    case 2:
      v93 = HIWORD(v52) << 56;
      v94 = (v44 + (v93 >> 53));
      if (v21 < v94)
      {
        v94 = v21;
      }

      if (v94 < v45)
      {
        v94 = v45;
      }

      v95 = *v94;
      _S7 = 1.0;
      if (v8)
      {
        v97 = (v47 + (v93 >> 55));
        if (v20 < v97)
        {
          v97 = v20;
        }

        if (v97 < *(result + 40))
        {
          v97 = *(result + 40);
        }

        _H7 = *v97;
        __asm { FCVT            S7, H7 }
      }

      v99 = &interpolate_cmykaf[5 * ((v52 >> 28) & 3)];
LABEL_123:
      _Q16.i16[0] = v99[4];
      __asm { FCVT            S16, H16 }

      v103 = vcvtq_f32_f16(_D5);
      _D5 = vcvt_f16_f32(vmlaq_n_f32(vmlsq_lane_f32(v103, v103, *_Q16.f32, 0), vcvtq_f32_f16(v95), _Q16.f32[0]));
      __asm { FCVT            S4, H4 }

      _S4 = (_S4 - (_S4 * _Q16.f32[0])) + (_S7 * _Q16.f32[0]);
      __asm { FCVT            H4, S4 }

      break;
    case 3:
      v56 = HIWORD(v52) << 56;
      v57 = (v44 + (v56 >> 53));
      if (v21 < v57)
      {
        v57 = v21;
      }

      if (v57 < v45)
      {
        v57 = v45;
      }

      v58 = (v44 + SBYTE1(v52) * v9);
      if (v21 >= v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v21;
      }

      if (v59 < v45)
      {
        v59 = v45;
      }

      v60 = (v58 + (v56 >> 53));
      if (v21 < v60)
      {
        v60 = v21;
      }

      if (v60 < v45)
      {
        v60 = v45;
      }

      v61 = *v57;
      v62 = *v59;
      _S19 = 1.0;
      _S17 = 1.0;
      _S18 = 1.0;
      if (v8)
      {
        v66 = (v47 + (v56 >> 55));
        v67 = *(result + 40);
        if (v20 < v66)
        {
          v66 = v20;
        }

        if (v66 < v67)
        {
          v66 = *(result + 40);
        }

        _H17 = *v66;
        __asm { FCVT            S18, H17 }

        v72 = v47 + SBYTE1(v52) * v10;
        if (v20 >= v72)
        {
          v73 = (v47 + SBYTE1(v52) * v10);
        }

        else
        {
          v73 = v20;
        }

        if (v73 < v67)
        {
          v73 = *(result + 40);
        }

        _H17 = *v73;
        __asm { FCVT            S17, H17 }

        v75 = (v72 + (v56 >> 55));
        if (v20 < v75)
        {
          v75 = v20;
        }

        if (v75 < v67)
        {
          v75 = *(result + 40);
        }

        _H19 = *v75;
        __asm { FCVT            S19, H19 }
      }

      _H20 = interpolate_cmykaf[5 * v54 + 4];
      __asm { FCVT            S20, H20 }

      _H21 = interpolate_cmykaf[5 * ((v52 >> 28) & 3) + 4];
      __asm { FCVT            S21, H21 }

      v79 = vcvtq_f32_f16(_D5);
      v80 = vcvtq_f32_f16(v61);
      v81 = vcvtq_f32_f16(v62);
      _Q16 = vcvtq_f32_f16(*v60);
      __asm { FCVT            S4, H4 }

      v83 = (_S4 - (_S4 * _D21.f32[0])) + (_S18 * _D21.f32[0]);
      v84 = v83 > 1.0 || v83 < 0.0;
      if (v83 < 0.0 && v83 <= 1.0)
      {
        v85 = 0.0;
      }

      else
      {
        v85 = 1.0;
      }

      if (v84)
      {
        v83 = v85;
      }

      v86 = (_S17 - (_S17 * _D21.f32[0])) + (_S19 * _D21.f32[0]);
      v87 = v86 > 1.0 || v86 < 0.0;
      if (v86 < 0.0 && v86 <= 1.0)
      {
        v88 = 0.0;
      }

      else
      {
        v88 = 1.0;
      }

      if (v87)
      {
        v86 = v88;
      }

      v89 = vmlaq_n_f32(vmlsq_lane_f32(v79, v79, _D21, 0), v80, _D21.f32[0]);
      _D5 = vcvt_f16_f32(vmlaq_n_f32(vmlsq_lane_f32(v89, v89, _D20, 0), vmlaq_n_f32(vmlsq_lane_f32(v81, v81, _D21, 0), _Q16, _D21.f32[0]), _D20.f32[0]));
      _S4 = (v83 - (v83 * _D20.f32[0])) + (v86 * _D20.f32[0]);
      v91 = _S4 > 1.0 || _S4 < 0.0;
      if (_S4 < 0.0 && _S4 <= 1.0)
      {
        v92 = COERCE_SHORT_FLOAT(0);
      }

      else
      {
        LOWORD(v92) = COERCE_UNSIGNED_INT(1.0);
      }

      __asm { FCVT            H4, S4 }

      if (v91)
      {
        _H4 = v92;
      }

      goto LABEL_100;
  }

LABEL_124:
  v106 = v31 >> 22;
  ++v17;
  a2 += v15;
  v107 = v55 - a2;
  v16 += 8;
  a3 += v14;
  v108 = v13 - a3;
  while (1)
  {
    v109 = a4;
    __asm { FCVT            S6, H4 }

    _H7 = _D5.i16[3];
    __asm
    {
      FCVT            S7, H7
      FCVT            S16, H5
    }

    _H17 = _D5.i16[1];
    __asm { FCVT            S17, H17 }

    _H5 = _D5.i16[2];
    __asm { FCVT            S5, H5 }

    _S16 = (_S6 - _S16) - _S7;
    __asm { FCVT            H16, S16 }

    *v16 = LOWORD(_S16);
    _S16 = (_S6 - _S17) - _S7;
    __asm { FCVT            H16, S16 }

    *(v16 + 2) = LOWORD(_S16);
    _S5 = (_S6 - _S5) - _S7;
    __asm { FCVT            H5, S5 }

    *(v16 + 4) = LOWORD(_S5);
    *(v16 + 6) = _H4;
    *v17 = v106;
    if (!--a4)
    {
      return result;
    }

    if ((v108 | v107 | (a3 - v12) | (a2 - v132)) < 0)
    {
      goto LABEL_40;
    }

    v44 = v7 + SHIDWORD(a3) * v9 + 8 * (a2 >> 32);
    v45 = *(result + 32);
    if (v21 >= v44)
    {
      v121 = v7 + SHIDWORD(a3) * v9 + 8 * (a2 >> 32);
    }

    else
    {
      v121 = v21;
    }

    if (v121 >= v45)
    {
      v122 = v121;
    }

    else
    {
      v122 = *(result + 32);
    }

    if (v8)
    {
      v47 = v8 + SHIDWORD(a3) * v10 + 2 * (a2 >> 32);
      v123 = *(result + 40);
      if (v20 >= v47)
      {
        v124 = v8 + SHIDWORD(a3) * v10 + 2 * (a2 >> 32);
      }

      else
      {
        v124 = v20;
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

    _D5 = *v122;
    if (v11)
    {
      v52 = *(v11 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      v125 = v52 & 0xF;
      if ((v52 & 0xF) != 0)
      {
        v126 = *(result + 264);
        v127 = *v126;
        if (v109 != v130 && a4 != 1 && v129 != 1 && v127 == 3 && v125 < 3)
        {
          v52 |= 3u;
        }

        v31 = -1;
        if (v127 < v125)
        {
          *v126 = v125;
        }

        goto LABEL_45;
      }
    }

    ++v17;
    v107 -= v15;
    a2 += v15;
    v16 += 8;
    a3 += v14;
    v108 -= v14;
    LOBYTE(v106) = -1;
  }
}

BOOL CPFontEnumeratorIsKnownRenderedChar(uint64_t a1, unsigned __int16 *a2)
{
  if (a1 == 2)
  {
    v3 = *a2;
    if (((v3 + 9408) >> 6) >= 0x3F3u)
    {
      v4 = a2[1];
      if ((v4 - 57344) >= 0xFFFFFC00)
      {
        return (~v3 & 0x3F | ~v4 & 0x3FE) != 0;
      }
    }

    return 0;
  }

  if (a1 != 1)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (v2 > 0x7F)
  {
    if (!__maskrune(*a2, 0x200uLL))
    {
      goto LABEL_11;
    }

    return 0;
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x200) != 0)
  {
    return 0;
  }

LABEL_11:
  if (v2 > 0xFFFD)
  {
    return 0;
  }

  return (v2 + 560) >= 0x20u && v2 >> 11 != 27;
}

uint64_t CPFontEnumeratorProcessMultiUnicodes(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = a2 - 1;
  v8 = MEMORY[0x1E69E9830];
  while (1)
  {
    v9 = v6;
    v10 = a3[v7];
    if (v10 > 0x7F)
    {
      v11 = __maskrune(a3[v7], 0x4000uLL);
    }

    else
    {
      v11 = *(v8 + 4 * v10 + 60) & 0x4000;
    }

    v6 = 1;
    if (v11 || v10 == 160)
    {
      goto LABEL_16;
    }

    v6 = 2;
    if (v10 <= 8207)
    {
      if (v10 != 45 && v10 != 173)
      {
LABEL_38:
        if (v10 == 61442 || v10 == 64258)
        {
          v6 = 4;
        }

        else
        {
          v6 = 0;
        }

        if (!v9)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v10 == 8208)
    {
      goto LABEL_16;
    }

    if (v10 != 61441 && v10 != 64257)
    {
      goto LABEL_38;
    }

    v6 = 3;
    if (!v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    if (v6 != v9)
    {
      goto LABEL_46;
    }

LABEL_18:
    if (v6 <= 2)
    {
      break;
    }

    if (v6 == 3)
    {
      v12 = v10 == 61441;
    }

    else
    {
      v12 = v10 == 61442;
    }

LABEL_31:
    if (!v12 || v9 == 0)
    {
      v5 = v10;
    }

LABEL_36:
    if (--v7 == -1)
    {
      return v5;
    }
  }

  if (v6 == 1)
  {
    if (v10 == 160 || v10 == 32)
    {
      v5 = 9;
    }

    else
    {
      v5 = v10;
    }

    goto LABEL_36;
  }

  if (v6 == 2)
  {
    v12 = v10 == 173;
    goto LABEL_31;
  }

LABEL_46:
  CPMultiUnicodesAppend(*(*(a1 + 112) + 2296), 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 112) + 2072) - *(*(a1 + 112) + 2064)) >> 6), a2, a3);
  return 0;
}

uint64_t CPFontEnumeratorGetUnicharForCID(uint64_t a1, unsigned int a2, unsigned __int16 *a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 96);
  if (!v12 || (v13 = *(*(v12 + 16) + 48)) == 0)
  {
    *a4 = CPFontEnumeratorIsKnownRenderedChar(0, a3);
LABEL_8:
    v16 = CGPDFGetUnicharGuessForCID(a2, a3);
    if (!v16)
    {
      return 0;
    }

    unichars = v16;
    if (v16 != 1)
    {
      goto LABEL_5;
    }

    return *a3;
  }

  unichars = cmap_bf_set_get_unichars(*(v13 + 16), a2, a3, a4, a5, a6, a7, a8);
  *a4 = CPFontEnumeratorIsKnownRenderedChar(unichars, a3);
  if (!unichars)
  {
    goto LABEL_8;
  }

  if (unichars == 1)
  {
    return *a3;
  }

LABEL_5:
  v15 = CPFontEnumeratorProcessMultiUnicodes(a1, unichars, a3);
  v18 = v15;
  if (v15)
  {
    *a4 = CPFontEnumeratorIsKnownRenderedChar(1, &v18);
  }

  return v15;
}

uint64_t Wf16_sample_Wf_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 28);
  v6 = *(result + 112);
  v7 = *(result + 48);
  v8 = *(result + 56);
  if (v7)
  {
    v172 = *(result + 112);
    if (v6 > v7)
    {
      v172 = v6 % v7;
    }
  }

  else
  {
    v172 = 0;
  }

  v9 = *(result + 176);
  v11 = *(result + 32);
  v10 = *(result + 40);
  v12 = *(result + 120);
  if (v8)
  {
    v13 = v12 % v8;
    if (v12 <= v8)
    {
      v13 = *(result + 120);
    }

    v171 = v13;
  }

  else
  {
    v171 = 0;
  }

  v167 = *(result + 80);
  v168 = *(result + 64);
  v169 = *(result + 88);
  v166 = *(result + 188);
  v14 = *(result + 152) - 4;
  v15 = *(result + 144) - 1;
  v16 = *(result + 260) - 1;
  v17 = *(result + 256);
  v18 = v10 + (v16 * v5) + 2 * (v17 - 1);
  v164 = *(result + 240);
  v19 = v11 + (v16 * v4) + 2 * v17 - 2;
  v170 = *(result + 72);
  v20 = a4;
  while (1)
  {
    if (a3 >= v170)
    {
      if (a3 <= v169)
      {
        v29 = 0;
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        v32 = a3;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v169;
        v27 = v26 - a3 + (v25 >> 1);
        if (v27 < 1)
        {
          goto LABEL_57;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v31 = v166 | v28;
        v32 = v26 - 0x1000000;
        v29 = a3 - (v26 - 0x1000000);
        v30 = 448;
      }
    }

    else
    {
      v21 = *(result + 216);
      v22 = v170 - *(result + 224);
      v23 = a3 - v22 + (v21 >> 1);
      if (v23 < 1)
      {
        goto LABEL_57;
      }

      if (v23 >= v21)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v23) >> 32;
      }

      v31 = v166 | v24;
      v32 = v22 + 0x1000000;
      v29 = a3 - (v22 + 0x1000000);
      v30 = 512;
    }

    if (a2 >= v168)
    {
      break;
    }

    v33 = *(result + 192);
    v34 = v168 - *(result + 200);
    v35 = a2 - v34 + (v33 >> 1);
    if (v35 >= 1)
    {
      if (v35 < v33)
      {
        v31 = ((v31 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v166;
      }

      v36 = v34 + 0x1000000;
      v37 = a2 - (v34 + 0x1000000);
      v38 = 32;
      goto LABEL_35;
    }

LABEL_57:
    --v20;
    a2 += v6;
    a3 += v12;
    v14 += 4;
    *++v15 = 0;
LABEL_58:
    if (!v20)
    {
      return result;
    }
  }

  if (a2 <= v167)
  {
    v37 = 0;
    v38 = (a2 >> 26) & 0x3C;
    v36 = a2;
    goto LABEL_35;
  }

  v39 = *(result + 192);
  v40 = *(result + 200) + v167;
  v41 = v40 - a2 + (v39 >> 1);
  if (v41 < 1)
  {
    goto LABEL_57;
  }

  if (v41 < v39)
  {
    v31 = ((v31 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v166;
  }

  v36 = v40 - 0x1000000;
  v37 = a2 - (v40 - 0x1000000);
  v38 = 28;
LABEL_35:
  if (v31 < 0x400000)
  {
    goto LABEL_57;
  }

  if (v7)
  {
    v42 = (v8 & ((v32 % v8) >> 63)) + v32 % v8;
    v43 = (v7 & ((v36 % v7) >> 63)) + v36 % v7;
    if (v42 >= v8)
    {
      v44 = v8;
    }

    else
    {
      v44 = 0;
    }

    v32 = v42 - v44;
    if (v43 >= v7)
    {
      v45 = v7;
    }

    else
    {
      v45 = 0;
    }

    v36 = v43 - v45;
    v29 += v32;
    v37 += v43 - v45;
  }

  v46 = v32 >> 32;
  v47 = v11 + SHIDWORD(v32) * v4;
  v48 = (v36 >> 31) & 0xFFFFFFFFFFFFFFFELL;
  v49 = v47 + v48;
  v50 = *(result + 32);
  if (v19 >= v47 + v48)
  {
    v51 = (v47 + v48);
  }

  else
  {
    v51 = v19;
  }

  if (v51 >= v50)
  {
    v52 = v51;
  }

  else
  {
    v52 = *(result + 32);
  }

  if (v10)
  {
    v53 = v10 + v46 * v5 + v48;
    v54 = *(result + 40);
    if (v18 >= v53)
    {
      v55 = v53;
    }

    else
    {
      v55 = v18;
    }

    if (v55 >= v54)
    {
      v54 = v55;
    }

    _H4 = *v54;
  }

  else
  {
    v53 = 0;
    LOWORD(_H4) = COERCE_UNSIGNED_INT(1.0);
  }

  _H5 = *v52;
  if (v9)
  {
    v58 = *(v9 + (v38 | v30));
LABEL_63:
    v59 = v58 & 0xF;
    v60 = v58 >> 8;
    v61 = HIBYTE(v58) & 3;
    if (v59 == 1)
    {
      LODWORD(v130) = SBYTE1(v58);
      if (v7)
      {
        v131 = v29 + (SBYTE1(v58) << 32);
        v132 = v8 & (v131 >> 63);
        if (v132 + v131 >= v8)
        {
          v133 = v8;
        }

        else
        {
          v133 = 0;
        }

        v130 = (v132 + (v60 << 32) - v133) >> 32;
      }

      v134 = (v49 + v130 * v4);
      if (v19 < v134)
      {
        v134 = v19;
      }

      if (v134 < v50)
      {
        v134 = v50;
      }

      _H6 = *v134;
      _S7 = 1.0;
      if (v10)
      {
        v135 = (v53 + v130 * v5);
        if (v18 < v135)
        {
          v135 = v18;
        }

        if (v135 < *(result + 40))
        {
          v135 = *(result + 40);
        }

        _H7 = *v135;
        __asm { FCVT            S7, H7 }
      }

      v129 = &interpolate_waf[2 * v61];
    }

    else
    {
      if (v59 != 2)
      {
        if (v59 == 3)
        {
          LODWORD(v62) = SBYTE1(v58);
          v63 = SBYTE2(v58);
          if (v7)
          {
            v64 = v60 << 56;
            v65 = HIWORD(v58) << 56;
            v66 = v29 + (SBYTE1(v58) << 32);
            v67 = v37 + (v65 >> 24);
            v68 = v31;
            v69 = v8 & (v66 >> 63);
            v163 = v5;
            v70 = v7 & (v67 >> 63);
            v71 = v70 + v67;
            if (v69 + v66 >= v8)
            {
              v72 = v8;
            }

            else
            {
              v72 = 0;
            }

            if (v71 >= v7)
            {
              v73 = v7;
            }

            else
            {
              v73 = 0;
            }

            v74 = v69 + (v64 >> 24);
            v31 = v68;
            v61 = HIBYTE(v58) & 3;
            v62 = (v74 - v72) >> 32;
            v75 = v70 + (v65 >> 24);
            v5 = v163;
            v63 = (v75 - v73) >> 32;
          }

          v76 = (v49 + 2 * v63);
          if (v19 < v76)
          {
            v76 = v19;
          }

          if (v76 < v50)
          {
            v76 = v50;
          }

          _H6 = *v76;
          v78 = v49 + v62 * v4;
          if (v19 >= v78)
          {
            v79 = (v49 + v62 * v4);
          }

          else
          {
            v79 = v19;
          }

          if (v79 < v50)
          {
            v79 = v50;
          }

          _H7 = *v79;
          v81 = (v78 + 2 * v63);
          if (v19 < v81)
          {
            v81 = v19;
          }

          if (v81 < v50)
          {
            v81 = v50;
          }

          _H16 = *v81;
          _S17 = 1.0;
          _S18 = 1.0;
          _S19 = 1.0;
          if (v10)
          {
            v86 = 2 * v63;
            v87 = (v53 + 2 * v63);
            v88 = *(result + 40);
            if (v18 < v87)
            {
              v87 = v18;
            }

            if (v87 < v88)
            {
              v87 = *(result + 40);
            }

            _H17 = *v87;
            v90 = v53 + v62 * v5;
            if (v18 >= v90)
            {
              v91 = (v53 + v62 * v5);
            }

            else
            {
              v91 = v18;
            }

            if (v91 < v88)
            {
              v91 = *(result + 40);
            }

            _H18 = *v91;
            v93 = (v90 + v86);
            if (v18 < v93)
            {
              v93 = v18;
            }

            if (v93 < v88)
            {
              v93 = *(result + 40);
            }

            _H20 = *v93;
            __asm
            {
              FCVT            S19, H17
              FCVT            S17, H18
              FCVT            S18, H20
            }
          }

          _H20 = interpolate_waf[2 * v61 + 1];
          __asm { FCVT            S20, H20 }

          _H21 = interpolate_waf[2 * ((v58 >> 28) & 3) + 1];
          __asm
          {
            FCVT            S21, H21
            FCVT            S5, H5
            FCVT            S6, H6
          }

          v104 = (_S5 - (_S5 * _S21)) + (_S6 * _S21);
          __asm
          {
            FCVT            S6, H7
            FCVT            S7, H16
          }

          v107 = (_S6 - (_S6 * _S21)) + (_S7 * _S21);
          __asm { FCVT            S4, H4 }

          v109 = (_S4 - (_S4 * _S21)) + (_S19 * _S21);
          v110 = v109 > 1.0 || v109 < 0.0;
          if (v109 < 0.0 && v109 <= 1.0)
          {
            v111 = 0.0;
          }

          else
          {
            v111 = 1.0;
          }

          if (v110)
          {
            v109 = v111;
          }

          v112 = (_S17 - (_S17 * _S21)) + (_S18 * _S21);
          v113 = v112 > 1.0 || v112 < 0.0;
          if (v112 < 0.0 && v112 <= 1.0)
          {
            v114 = 0.0;
          }

          else
          {
            v114 = 1.0;
          }

          if (v113)
          {
            v112 = v114;
          }

          _S5 = (v104 - (v104 * _S20)) + (v107 * _S20);
          __asm { FCVT            H5, S5 }

          _S4 = (v109 - (v109 * _S20)) + (v112 * _S20);
          v117 = _S4 > 1.0 || _S4 < 0.0;
          if (_S4 < 0.0 && _S4 <= 1.0)
          {
            v118 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v118) = COERCE_UNSIGNED_INT(1.0);
          }

          __asm { FCVT            H4, S4 }

          if (v117)
          {
            _H4 = v118;
          }
        }

        goto LABEL_160;
      }

      v119 = SBYTE2(v58);
      if (v7)
      {
        v120 = HIWORD(v58) << 56;
        v121 = v37 + (v120 >> 24);
        v122 = v7 & (v121 >> 63);
        if (v122 + v121 >= v7)
        {
          v123 = v7;
        }

        else
        {
          v123 = 0;
        }

        v119 = (v122 + (v120 >> 24) - v123) >> 32;
      }

      v124 = (v49 + 2 * v119);
      if (v19 < v124)
      {
        v124 = v19;
      }

      if (v124 < v50)
      {
        v124 = v50;
      }

      _H6 = *v124;
      _S7 = 1.0;
      if (v10)
      {
        v127 = (v53 + 2 * v119);
        if (v18 < v127)
        {
          v127 = v18;
        }

        if (v127 < *(result + 40))
        {
          v127 = *(result + 40);
        }

        _H7 = *v127;
        __asm { FCVT            S7, H7 }
      }

      v129 = &interpolate_waf[2 * ((v58 >> 28) & 3)];
    }

    _H16 = v129[1];
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

LABEL_160:
  *(v14 + 4) = _H5;
  *(v14 + 6) = _H4;
  *++v15 = v31 >> 22;
  if (--v20)
  {
    v144 = (v14 + 10);
    a2 += v6;
    v145 = v167 - a2;
    a3 += v12;
    v146 = v169 - a3;
    while (1)
    {
      v14 = (v144 - 3);
      if ((v146 | v145 | (a3 - v170) | (a2 - v168)) < 0)
      {
        goto LABEL_58;
      }

      if (v7)
      {
        v147 = (v8 & ((v29 + v171) >> 63)) + v29 + v171;
        v148 = (v7 & ((v37 + v172) >> 63)) + v37 + v172;
        if (v147 >= v8)
        {
          v149 = v8;
        }

        else
        {
          v149 = 0;
        }

        v29 = v147 - v149;
        if (v148 >= v7)
        {
          v150 = v7;
        }

        else
        {
          v150 = 0;
        }

        v37 = v148 - v150;
        v151 = v29;
        v152 = v37;
      }

      else
      {
        v151 = a3;
        v152 = a2;
      }

      v153 = v151 >> 32;
      v154 = v11 + SHIDWORD(v151) * v4;
      v155 = (v152 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v49 = v154 + v155;
      v50 = *(result + 32);
      if (v19 >= v154 + v155)
      {
        v156 = (v154 + v155);
      }

      else
      {
        v156 = v19;
      }

      if (v156 < v50)
      {
        v156 = *(result + 32);
      }

      if (v10)
      {
        v53 = v10 + v153 * v5 + v155;
        v157 = *(result + 40);
        if (v18 >= v53)
        {
          v158 = v53;
        }

        else
        {
          v158 = v18;
        }

        if (v158 >= v157)
        {
          v157 = v158;
        }

        _H4 = *v157;
      }

      else
      {
        LOWORD(_H4) = COERCE_UNSIGNED_INT(1.0);
      }

      _H5 = *v156;
      if (v9)
      {
        v58 = *(v9 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        v159 = v58 & 0xF;
        if ((v58 & 0xF) != 0)
        {
          v160 = *(result + 264);
          v161 = *v160;
          if (v20 + 1 != a4 && v20 != 1 && v164 != 1 && v161 == 3 && v159 < 3)
          {
            v58 |= 3u;
          }

          v31 = -1;
          if (v161 < v159)
          {
            *v160 = v159;
          }

          goto LABEL_63;
        }
      }

      *(v144 - 1) = _H5;
      *v144 = _H4;
      v144 += 2;
      a2 += v6;
      v145 -= v6;
      a3 += v12;
      *++v15 = -1;
      v146 -= v12;
      if (!--v20)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t Wf16_sample_RGBf_inner(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v12 = *(result + 32);
  v13 = *(result + 24);
  v14 = *(result + 176);
  v15 = *(result + 64);
  v16 = *(result + 72);
  v17 = *(result + 80);
  v18 = *(result + 88);
  v19 = *(result + 112);
  v20 = *(result + 120);
  v21 = *(result + 188);
  v22 = *(result + 152) - 4;
  v23 = *(result + 144) - 1;
  v103 = *(result + 240);
  v24 = v12 + ((*(result + 260) - 1) * v13) + 4 * (3 * *(result + 256)) - 6;
  v104 = a4;
  while (1)
  {
    if (a3 >= v16)
    {
      if (a3 <= v18)
      {
        v33 = (a3 >> 22) & 0x3C0;
        v34 = 0x3FFFFFFF;
        HIDWORD(v35) = HIDWORD(a3);
      }

      else
      {
        v29 = *(result + 216);
        v30 = *(result + 224) + v18;
        v31 = v30 - a3 + (v29 >> 1);
        if (v31 < 1)
        {
          goto LABEL_67;
        }

        if (v31 >= v29)
        {
          LODWORD(v32) = 0x3FFFFFFF;
        }

        else
        {
          v32 = (*(result + 232) * v31) >> 32;
        }

        v34 = v21 | v32;
        v35 = v30 - 0x1000000;
        v33 = 448;
      }
    }

    else
    {
      v25 = *(result + 216);
      v26 = v16 - *(result + 224);
      v27 = a3 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_67;
      }

      if (v27 >= v25)
      {
        LODWORD(v28) = 0x3FFFFFFF;
      }

      else
      {
        v28 = (*(result + 232) * v27) >> 32;
      }

      v34 = v21 | v28;
      v35 = v26 + 0x1000000;
      v33 = 512;
    }

    if (a2 >= v15)
    {
      break;
    }

    v36 = *(result + 192);
    v37 = v15 - *(result + 200);
    v38 = a2 - v37 + (v36 >> 1);
    if (v38 >= 1)
    {
      if (v38 < v36)
      {
        v34 = ((v34 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v21;
      }

      v39 = v37 + 0x1000000;
      v40 = 32;
      goto LABEL_26;
    }

LABEL_67:
    --a4;
    a2 += v19;
    a3 += v20;
    v22 += 4;
    *++v23 = 0;
LABEL_68:
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v17)
  {
    v40 = (a2 >> 26) & 0x3C;
    v39 = a2;
    goto LABEL_26;
  }

  v41 = *(result + 192);
  v42 = *(result + 200) + v17;
  v43 = v42 - a2 + (v41 >> 1);
  if (v43 < 1)
  {
    goto LABEL_67;
  }

  if (v43 < v41)
  {
    v34 = ((v34 >> 15) * (((*(result + 208) * v43) >> 32) >> 15)) | v21;
  }

  v39 = v42 - 0x1000000;
  v40 = 28;
LABEL_26:
  if (v34 < 0x400000)
  {
    goto LABEL_67;
  }

  v44 = v39 >> 32;
  v45 = v12 + SHIDWORD(v35) * v13;
  v46 = v45 + 6 * v44;
  v47 = *(result + 32);
  if (v24 >= v46)
  {
    v48 = v45 + 6 * v44;
  }

  else
  {
    v48 = v24;
  }

  if (v48 < v47)
  {
    v48 = *(result + 32);
  }

  _H7 = *v48;
  _D16.i32[0] = *(v48 + 2);
  if (!v14)
  {
    goto LABEL_70;
  }

  v50 = *(v14 + (v40 | v33));
LABEL_34:
  v51 = v50 & 0xF;
  v52 = HIBYTE(v50) & 3;
  if (v51 == 1)
  {
    v78 = v46 + SBYTE1(v50) * v13;
    if (v24 < v78)
    {
      v78 = v24;
    }

    if (v78 < v47)
    {
      v78 = v47;
    }

    _D17.i16[0] = *v78;
    v79 = &interpolate_rgbaf16[4 * v52];
    goto LABEL_81;
  }

  if (v51 == 2)
  {
    v78 = v46 + 6 * SBYTE2(v50);
    if (v24 < v78)
    {
      v78 = v24;
    }

    if (v78 < v47)
    {
      v78 = v47;
    }

    _D17.i16[0] = *v78;
    v79 = &interpolate_rgbaf16[4 * ((v50 >> 28) & 3)];
LABEL_81:
    _D18.i16[0] = v79[3];
    __asm
    {
      FCVT            S18, H18
      FCVT            S7, H7
      FCVT            S17, H17
    }

    _S7 = (_S7 - (_S7 * _D18.f32[0])) + (*_D17.i32 * _D18.f32[0]);
    __asm { FCVT            H7, S7 }

    v82 = vcvtq_f32_f16(_D16);
    _D17.i32[0] = *(v78 + 2);
    _D17 = vcvtq_f32_f16(_D17).u64[0];
    *v82.f32 = vmla_n_f32(vmls_lane_f32(*v82.f32, *v82.f32, _D18, 0), _D17, _D18.f32[0]);
    _D16 = vcvt_f16_f32(v82);
    *_D17.i32 = (1.0 - _D18.f32[0]) + _D18.f32[0];
    __asm { FCVT            H17, S17 }

    goto LABEL_82;
  }

  if (v51 != 3)
  {
LABEL_70:
    _D17.i16[0] = COERCE_UNSIGNED_INT(1.0);
    goto LABEL_82;
  }

  v53 = v46 + 6 * SBYTE2(v50);
  if (v24 < v53)
  {
    v53 = v24;
  }

  if (v53 < v47)
  {
    v53 = v47;
  }

  _H17 = *v53;
  v55 = v46 + SBYTE1(v50) * v13;
  if (v24 >= v55)
  {
    v56 = v46 + SBYTE1(v50) * v13;
  }

  else
  {
    v56 = v24;
  }

  if (v56 < v47)
  {
    v56 = v47;
  }

  _H18 = *v56;
  v58 = v55 + 6 * SBYTE2(v50);
  if (v24 < v58)
  {
    v58 = v24;
  }

  if (v58 < v47)
  {
    v58 = v47;
  }

  _H19 = *v58;
  _H20 = interpolate_rgbaf16[4 * v52 + 3];
  __asm { FCVT            S20, H20 }

  _H21 = interpolate_rgbaf16[4 * ((v50 >> 28) & 3) + 3];
  __asm
  {
    FCVT            S21, H21
    FCVT            S7, H7
    FCVT            S17, H17
  }

  v67 = (_S7 - (_S7 * _D21.f32[0])) + (_S17 * _D21.f32[0]);
  __asm
  {
    FCVT            S17, H18
    FCVT            S18, H19
  }

  *_D17.i32 = (_S17 - (_S17 * _D21.f32[0])) + (_S18 * _D21.f32[0]);
  v70 = vcvtq_f32_f16(_D16);
  v71 = (1.0 - _D21.f32[0]) + _D21.f32[0];
  v72 = v71 > 1.0 || v71 < 0.0;
  if (v71 < 0.0 && v71 <= 1.0)
  {
    v73 = 0.0;
  }

  else
  {
    v73 = 1.0;
  }

  if (v72)
  {
    v71 = v73;
  }

  _S7 = (v67 - (v67 * _D20.f32[0])) + (*_D17.i32 * _D20.f32[0]);
  __asm { FCVT            H7, S7 }

  _D17.i32[0] = *(v53 + 2);
  v7.i32[0] = *(v56 + 2);
  v10.i32[0] = *(v58 + 2);
  *v70.f32 = vmla_n_f32(vmls_lane_f32(*v70.f32, *v70.f32, _D21, 0), *&vcvtq_f32_f16(_D17), _D21.f32[0]);
  v75 = vcvtq_f32_f16(v7).u64[0];
  v7 = vcvtq_f32_f16(v10).u64[0];
  _D17 = vmla_n_f32(vmls_lane_f32(v75, v75, _D21, 0), v7, _D21.f32[0]);
  *v70.f32 = vmla_n_f32(vmls_lane_f32(*v70.f32, *v70.f32, _D20, 0), _D17, _D20.f32[0]);
  _D16 = vcvt_f16_f32(v70);
  *_D17.i32 = (v71 - (v71 * _D20.f32[0])) + (v71 * _D20.f32[0]);
  v76 = *_D17.i32 > 1.0 || *_D17.i32 < 0.0;
  if (*_D17.i32 < 0.0 && *_D17.i32 <= 1.0)
  {
    v77 = COERCE_SHORT_FLOAT(0);
  }

  else
  {
    LOWORD(v77) = COERCE_UNSIGNED_INT(1.0);
  }

  __asm { FCVT            H17, S17 }

  if (v76)
  {
    *_D17.i16 = v77;
  }

LABEL_82:
  __asm
  {
    FCVT            S7, H7
    FCVT            S18, H16
  }

  _H16 = _D16.i16[1];
  __asm { FCVT            S16, H16 }

  _S7 = ((_S18 * 0.59) + (_S7 * 0.3)) + (_S16 * 0.11);
  __asm { FCVT            H7, S7 }

  *(v22 + 4) = LOWORD(_S7);
  *(v22 + 6) = _D17.i16[0];
  *++v23 = v34 >> 22;
  if (--a4)
  {
    v88 = (v22 + 10);
    a2 += v19;
    v89 = v17 - a2;
    a3 += v20;
    v90 = v18 - a3;
    while (1)
    {
      v22 = (v88 - 3);
      if (((v90 | v89 | (a3 - v16) | (a2 - v15)) & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      v91 = v12 + SHIDWORD(a3) * v13;
      v46 = v91 + 6 * SHIDWORD(a2);
      v47 = *(result + 32);
      if (v24 >= v46)
      {
        v92 = v91 + 6 * SHIDWORD(a2);
      }

      else
      {
        v92 = v24;
      }

      if (v92 < v47)
      {
        v92 = *(result + 32);
      }

      _H7 = *v92;
      v93 = *(v92 + 2);
      _D16.i32[0] = v93;
      if (v14)
      {
        v50 = *(v14 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        v94 = v50 & 0xF;
        if ((v50 & 0xF) != 0)
        {
          v100 = *(result + 264);
          v101 = *v100;
          if (a4 + 1 != v104 && a4 != 1 && v103 != 1 && v101 == 3 && v94 < 3)
          {
            v50 |= 3u;
          }

          v34 = -1;
          if (v101 < v94)
          {
            *v100 = v94;
          }

          goto LABEL_34;
        }
      }

      __asm
      {
        FCVT            S7, H7
        FCVT            S17, H16
      }

      _H16 = HIWORD(v93);
      __asm { FCVT            S16, H16 }

      _S7 = ((_S17 * 0.59) + (_S7 * 0.3)) + (_S16 * 0.11);
      __asm { FCVT            H7, S7 }

      *(v88 - 1) = LOWORD(_S7);
      *v88 = COERCE_UNSIGNED_INT(1.0);
      *++v23 = -1;
      v88 += 2;
      a2 += v19;
      v89 -= v19;
      a3 += v20;
      v90 -= v20;
      if (!--a4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t Wf16_sample_RGBAf_inner(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v11 = *(result + 24);
  v12 = *(result + 176);
  v13 = *(result + 64);
  v14 = *(result + 72);
  v15 = *(result + 88);
  v160 = *(result + 80);
  v16 = *(result + 112);
  v17 = *(result + 120);
  v159 = *(result + 188);
  v18 = *(result + 152) - 4;
  v19 = *(result + 144) - 1;
  v20 = *(result + 32);
  v21 = *(result + 40);
  v157 = *(result + 240);
  v22 = v20 + ((*(result + 260) - 1) * v11) + 2 * (4 * *(result + 256)) - 8;
  LOWORD(v23) = COERCE_UNSIGNED_INT(1.0);
  v24 = a4;
  while (1)
  {
    if (a3 >= v14)
    {
      if (a3 <= v15)
      {
        v33 = (a3 >> 22) & 0x3C0;
        v34 = 0x3FFFFFFF;
        HIDWORD(v35) = HIDWORD(a3);
        v36 = v160;
      }

      else
      {
        v29 = *(result + 216);
        v30 = *(result + 224) + v15;
        v31 = v30 - a3 + (v29 >> 1);
        if (v31 < 1)
        {
          goto LABEL_46;
        }

        if (v31 >= v29)
        {
          LODWORD(v32) = 0x3FFFFFFF;
        }

        else
        {
          v32 = (*(result + 232) * v31) >> 32;
        }

        v36 = v160;
        v34 = v159 | v32;
        v35 = v30 - 0x1000000;
        v33 = 448;
      }
    }

    else
    {
      v25 = *(result + 216);
      v26 = v14 - *(result + 224);
      v27 = a3 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_46;
      }

      if (v27 >= v25)
      {
        LODWORD(v28) = 0x3FFFFFFF;
      }

      else
      {
        v28 = (*(result + 232) * v27) >> 32;
      }

      v36 = v160;
      v34 = v159 | v28;
      v35 = v26 + 0x1000000;
      v33 = 512;
    }

    if (a2 >= v13)
    {
      break;
    }

    v37 = *(result + 192);
    v38 = v13 - *(result + 200);
    v39 = a2 - v38 + (v37 >> 1);
    if (v39 >= 1)
    {
      if (v39 < v37)
      {
        v34 = ((v34 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v159;
      }

      v40 = v38 + 0x1000000;
      v41 = 32;
      goto LABEL_26;
    }

LABEL_46:
    --v24;
    a2 += v16;
    a3 += v17;
    v18 += 4;
    *++v19 = 0;
LABEL_47:
    if (!v24)
    {
      return result;
    }
  }

  if (a2 <= v36)
  {
    v41 = (a2 >> 26) & 0x3C;
    v40 = a2;
    goto LABEL_26;
  }

  v42 = *(result + 192);
  v43 = *(result + 200) + v36;
  v44 = v43 - a2 + (v42 >> 1);
  if (v44 < 1)
  {
    goto LABEL_46;
  }

  if (v44 < v42)
  {
    v34 = ((v34 >> 15) * (((*(result + 208) * v44) >> 32) >> 15)) | v159;
  }

  v40 = v43 - 0x1000000;
  v41 = 28;
LABEL_26:
  if (v34 < 0x400000)
  {
    goto LABEL_46;
  }

  v45 = v20 + SHIDWORD(v35) * v11;
  v46 = v45 + 8 * (v40 >> 32);
  v47 = *(result + 32);
  if (v22 >= v46)
  {
    v48 = v45 + 8 * (v40 >> 32);
  }

  else
  {
    v48 = v22;
  }

  if (v48 >= v47)
  {
    v49 = v48;
  }

  else
  {
    v49 = *(result + 32);
  }

  if (v21)
  {
    __asm { FCMP            H7, #0 }

    if (_NF)
    {
      v54 = 1;
    }

    else
    {
      v54 = 0;
    }

    if (_H7 > v23)
    {
      v55 = 1;
    }

    else
    {
      v55 = v54;
    }

    if ((v54 & (_H7 <= v23)) != 0)
    {
      v56 = COERCE_SHORT_FLOAT(0);
    }

    else
    {
      LOWORD(v56) = COERCE_UNSIGNED_INT(1.0);
    }

    if (v55)
    {
      _H7 = v56;
    }
  }

  else
  {
    LOWORD(_H7) = COERCE_UNSIGNED_INT(1.0);
  }

  _H16 = *v49;
  _D17.i32[0] = *(v49 + 2);
  if (v12)
  {
    v58 = *(v12 + (v41 | v33));
LABEL_52:
    v59 = v58 & 0xF;
    v60 = HIBYTE(v58) & 3;
    if (v59 == 1)
    {
      v95 = v46 + SBYTE1(v58) * v11;
      if (v22 < v95)
      {
        v95 = v22;
      }

      if (v95 >= v47)
      {
        v96 = v95;
      }

      else
      {
        v96 = v47;
      }

      _H20 = *v96;
      v5.i32[0] = *(v96 + 2);
      _S19 = 1.0;
      if (v21)
      {
        __asm { FCMP            H19, #0 }

        if (_NF)
        {
          v98 = 1;
        }

        else
        {
          v98 = 0;
        }

        if (_H19 > v23)
        {
          v99 = 1;
        }

        else
        {
          v99 = v98;
        }

        if ((v98 & (_H19 <= v23)) != 0)
        {
          v100 = COERCE_SHORT_FLOAT(0);
        }

        else
        {
          LOWORD(v100) = COERCE_UNSIGNED_INT(1.0);
        }

        if (v99)
        {
          _H19 = v100;
        }

        __asm { FCVT            S19, H19 }
      }

      v94 = &interpolate_rgbaf16[4 * v60];
    }

    else
    {
      if (v59 != 2)
      {
        if (v59 == 3)
        {
          v61 = SBYTE1(v58) * v11;
          v62 = 8 * SBYTE2(v58);
          v63 = v46 + v62;
          if (v22 < v46 + v62)
          {
            v63 = v22;
          }

          if (v63 >= v47)
          {
            v64 = v63;
          }

          else
          {
            v64 = v47;
          }

          _H19 = *v64;
          v5.i32[0] = *(v64 + 2);
          if (v21)
          {
            __asm { FCMP            H20, #0 }

            if (_NF)
            {
              v67 = 1;
            }

            else
            {
              v67 = 0;
            }

            if (_H20 > v23)
            {
              v68 = 1;
            }

            else
            {
              v68 = v67;
            }

            if ((v67 & (_H20 <= v23)) != 0)
            {
              v69 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v69) = COERCE_UNSIGNED_INT(1.0);
            }

            if (v68)
            {
              _H20 = v69;
            }

            __asm { FCVT            S20, H20 }

            v71 = v46 + v61;
            if (v22 >= v46 + v61)
            {
              v72 = v46 + v61;
            }

            else
            {
              v72 = v22;
            }

            if (v72 >= v47)
            {
              v73 = v72;
            }

            else
            {
              v73 = v47;
            }

            __asm { FCMP            H21, #0 }

            if (_NF)
            {
              v75 = 1;
            }

            else
            {
              v75 = 0;
            }

            if (_H21 > v23)
            {
              v76 = 1;
            }

            else
            {
              v76 = v75;
            }

            if ((v75 & (_H21 <= v23)) != 0)
            {
              v77 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v77) = COERCE_UNSIGNED_INT(1.0);
            }

            if (v76)
            {
              _H21 = v77;
            }

            __asm { FCVT            S21, H21 }

            v79 = v71 + v62;
            if (v22 < v79)
            {
              v79 = v22;
            }

            if (v79 >= v47)
            {
              v80 = v79;
            }

            else
            {
              v80 = v47;
            }

            __asm { FCMP            H22, #0 }

            if (_NF)
            {
              v82 = 1;
            }

            else
            {
              v82 = 0;
            }

            if (_H22 > v23)
            {
              v83 = 1;
            }

            else
            {
              v83 = v82;
            }

            if ((v82 & (_H22 <= v23)) != 0)
            {
              v84 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v84) = COERCE_UNSIGNED_INT(1.0);
            }

            if (v83)
            {
              _H22 = v84;
            }

            __asm { FCVT            S22, H22 }
          }

          else
          {
            v107 = v46 + v61;
            if (v22 >= v46 + v61)
            {
              v108 = v46 + v61;
            }

            else
            {
              v108 = v22;
            }

            if (v108 >= v47)
            {
              v73 = v108;
            }

            else
            {
              v73 = v47;
            }

            v109 = v107 + v62;
            if (v22 < v109)
            {
              v109 = v22;
            }

            if (v109 >= v47)
            {
              v80 = v109;
            }

            else
            {
              v80 = v47;
            }

            _S21 = 1.0;
            _S20 = 1.0;
            _S22 = 1.0;
          }

          v7.i32[0] = *(v73 + 2);
          _H24 = *v73;
          _H25 = *v80;
          v8.i32[0] = *(v80 + 2);
          _H27 = interpolate_rgbaf16[4 * v60 + 3];
          __asm { FCVT            S27, H27 }

          _H28 = interpolate_rgbaf16[4 * ((v58 >> 28) & 3) + 3];
          __asm
          {
            FCVT            S28, H28
            FCVT            S16, H16
            FCVT            S19, H19
          }

          v116 = (_S16 - (_S16 * _D28.f32[0])) + (_S19 * _D28.f32[0]);
          __asm
          {
            FCVT            S19, H24
            FCVT            S24, H25
          }

          v119 = (_S19 - (_S19 * _D28.f32[0])) + (_S24 * _D28.f32[0]);
          v120 = vcvtq_f32_f16(_D17);
          v5 = vcvtq_f32_f16(v5).u64[0];
          v121 = vcvtq_f32_f16(v7).u64[0];
          v122 = vcvtq_f32_f16(v8).u64[0];
          __asm { FCVT            S7, H7 }

          v124 = (_S7 - (_S7 * _D28.f32[0])) + (_S20 * _D28.f32[0]);
          v125 = v124 > 1.0 || v124 < 0.0;
          if (v124 < 0.0 && v124 <= 1.0)
          {
            v126 = 0.0;
          }

          else
          {
            v126 = 1.0;
          }

          if (v125)
          {
            v124 = v126;
          }

          v127 = (_S21 - (_S21 * _D28.f32[0])) + (_S22 * _D28.f32[0]);
          v128 = v127 > 1.0 || v127 < 0.0;
          if (v127 < 0.0 && v127 <= 1.0)
          {
            v129 = 0.0;
          }

          else
          {
            v129 = 1.0;
          }

          if (v128)
          {
            v127 = v129;
          }

          _S16 = (v116 - (v116 * _D27.f32[0])) + (v119 * _D27.f32[0]);
          __asm { FCVT            H16, S16 }

          *v120.f32 = vmla_n_f32(vmls_lane_f32(*v120.f32, *v120.f32, _D28, 0), v5, _D28.f32[0]);
          v7 = vmla_n_f32(vmls_lane_f32(v121, v121, _D28, 0), v122, _D28.f32[0]);
          *v120.f32 = vmla_n_f32(vmls_lane_f32(*v120.f32, *v120.f32, _D27, 0), v7, _D27.f32[0]);
          _D17 = vcvt_f16_f32(v120);
          _S7 = (v124 - (v124 * _D27.f32[0])) + (v127 * _D27.f32[0]);
          v132 = _S7 > 1.0 || _S7 < 0.0;
          if (_S7 < 0.0 && _S7 <= 1.0)
          {
            v133 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v133) = COERCE_UNSIGNED_INT(1.0);
          }

          __asm { FCVT            H7, S7 }

          if (v132)
          {
            _H7 = v133;
          }
        }

        goto LABEL_181;
      }

      v86 = v46 + ((HIWORD(v58) << 56) >> 53);
      if (v22 < v86)
      {
        v86 = v22;
      }

      if (v86 >= v47)
      {
        v87 = v86;
      }

      else
      {
        v87 = v47;
      }

      _H20 = *v87;
      v5.i32[0] = *(v87 + 2);
      _S19 = 1.0;
      if (v21)
      {
        __asm { FCMP            H19, #0 }

        if (_NF)
        {
          v91 = 1;
        }

        else
        {
          v91 = 0;
        }

        if (_H19 > v23)
        {
          v92 = 1;
        }

        else
        {
          v92 = v91;
        }

        if ((v91 & (_H19 <= v23)) != 0)
        {
          v93 = COERCE_SHORT_FLOAT(0);
        }

        else
        {
          LOWORD(v93) = COERCE_UNSIGNED_INT(1.0);
        }

        if (v92)
        {
          _H19 = v93;
        }

        __asm { FCVT            S19, H19 }
      }

      v94 = &interpolate_rgbaf16[4 * ((v58 >> 28) & 3)];
    }

    _D21.i16[0] = v94[3];
    __asm
    {
      FCVT            S21, H21
      FCVT            S16, H16
      FCVT            S20, H20
    }

    _S16 = (_S16 - (_S16 * _D21.f32[0])) + (_S20 * _D21.f32[0]);
    __asm { FCVT            H16, S16 }

    v104 = vcvtq_f32_f16(_D17);
    v5 = vcvtq_f32_f16(v5).u64[0];
    *v104.f32 = vmla_n_f32(vmls_lane_f32(*v104.f32, *v104.f32, _D21, 0), v5, _D21.f32[0]);
    _D17 = vcvt_f16_f32(v104);
    __asm { FCVT            S7, H7 }

    _S7 = (_S7 - (_S7 * _D21.f32[0])) + (_S19 * _D21.f32[0]);
    __asm { FCVT            H7, S7 }
  }

LABEL_181:
  __asm
  {
    FCVT            S16, H16
    FCVT            S18, H17
  }

  _H17 = _D17.i16[1];
  __asm { FCVT            S17, H17 }

  _S16 = ((_S18 * 0.59) + (_S16 * 0.3)) + (_S17 * 0.11);
  __asm { FCVT            H16, S16 }

  *(v18 + 4) = LOWORD(_S16);
  *(v18 + 6) = _H7;
  *++v19 = v34 >> 22;
  if (--v24)
  {
    v139 = (v18 + 10);
    a2 += v16;
    v140 = v160 - a2;
    a3 += v17;
    v141 = v15 - a3;
    while (1)
    {
      v18 = (v139 - 3);
      if (((v141 | v140 | (a3 - v14) | (a2 - v13)) & 0x8000000000000000) != 0)
      {
        goto LABEL_47;
      }

      v142 = v20 + SHIDWORD(a3) * v11;
      v46 = v142 + 8 * (a2 >> 32);
      v47 = *(result + 32);
      if (v22 >= v46)
      {
        v143 = v142 + 8 * (a2 >> 32);
      }

      else
      {
        v143 = v22;
      }

      if (v143 >= v47)
      {
        v144 = v143;
      }

      else
      {
        v144 = *(result + 32);
      }

      if (v21)
      {
        __asm { FCMP            H7, #0 }

        if (_NF)
        {
          v145 = 1;
        }

        else
        {
          v145 = 0;
        }

        if (_H7 > v23)
        {
          v146 = 1;
        }

        else
        {
          v146 = v145;
        }

        if ((v145 & (_H7 <= v23)) != 0)
        {
          v147 = COERCE_SHORT_FLOAT(0);
        }

        else
        {
          LOWORD(v147) = COERCE_UNSIGNED_INT(1.0);
        }

        if (v146)
        {
          _H7 = v147;
        }
      }

      else
      {
        LOWORD(_H7) = COERCE_UNSIGNED_INT(1.0);
      }

      _H16 = *v144;
      _D17.i32[0] = *(v144 + 2);
      if (v12)
      {
        v58 = *(v12 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        v148 = v58 & 0xF;
        if ((v58 & 0xF) != 0)
        {
          v154 = *(result + 264);
          v155 = *v154;
          if (v24 + 1 != a4 && v24 != 1 && v157 != 1 && v155 == 3 && v148 < 3)
          {
            v58 |= 3u;
          }

          v34 = -1;
          if (v155 < v148)
          {
            *v154 = v148;
          }

          goto LABEL_52;
        }
      }

      __asm
      {
        FCVT            S16, H16
        FCVT            S18, H17
      }

      _H17 = _D17.i16[1];
      __asm { FCVT            S17, H17 }

      _S16 = ((_S18 * 0.59) + (_S16 * 0.3)) + (_S17 * 0.11);
      __asm { FCVT            H16, S16 }

      *(v139 - 1) = *&_S16;
      *v139 = _H7;
      *++v19 = -1;
      v139 += 2;
      a2 += v16;
      v140 -= v16;
      a3 += v17;
      v141 -= v17;
      if (!--v24)
      {
        return result;
      }
    }
  }

  return result;
}

_DWORD *Wf16_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v9 = *(*a1 + 64);
  _S10 = *v9;
  v10 = v9[1];
  if (!a2 || a3 <= 3)
  {
    a2 = malloc_type_malloc(0x34uLL, 0x1080040E00A32E4uLL);
    if (!a2)
    {
      return a2;
    }
  }

  if (_S10 <= a6)
  {
    _S0 = a6;
  }

  else
  {
    _S0 = _S10;
  }

  if (v10 < a6)
  {
    _S0 = v10;
  }

  if (a5)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  switch(v13)
  {
    case 1:
      v14 = *a5;
      goto LABEL_18;
    case 4:
      v14 = (v10 - (((*a5 * v9[2]) + (a5[1] * v9[3])) + (a5[2] * v9[4]))) - a5[3];
      goto LABEL_18;
    case 3:
      v14 = ((*a5 * v9[2]) + (a5[1] * v9[3])) + (a5[2] * v9[4]);
LABEL_18:
      _S10 = _S0 * v14;
      break;
  }

  *a2 = xmmword_18439CA20;
  a2[6] = 0;
  *(a2 + 2) = 1;
  __asm { FCVT            H1, S10 }

  *(a2 + 24) = _H1;
  __asm { FCVT            H0, S0 }

  *(a2 + 25) = _H0;
  v21 = a2 + 50;
  if (!_NF)
  {
    v21 = 0;
  }

  *(a2 + 4) = a2 + 12;
  *(a2 + 5) = v21;
  return a2;
}

uint64_t Wf16_mark_inner(uint64_t a1, __n128 a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2);
  v1014 = *MEMORY[0x1E69E9840];
  v9 = *(v4 + 96);
  v10 = *(v4 + 48);
  v11 = *(v3 + 16 * *v4 + 8 * (v9 == 0) + 4 * (v10 == 0));
  if (v11 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v4;
  v14 = *(v4 + 4);
  v15 = v14 - 1;
  if (v14 < 1)
  {
    return 0;
  }

  v16 = *(v4 + 8);
  v17 = (v16 - 1);
  if (v16 < 1)
  {
    return 0;
  }

  v18 = *(v4 + 136);
  if ((*v4 & 0xFF0000) != 0x50000 && v18)
  {
    v19 = *(v4 + 128);
    if ((v19 | 8) == 8)
    {
      if ((*v4 & 0xFF00) == 0x400)
      {
        Wf16_mark_constmask(v4, v11, _Q0, v6, v7);
      }

      else
      {
        Wf16_mark_pixelmask(v4, v11, _Q0, v6, v7);
      }

      return 1;
    }

    v27 = *(v4 + 112);
    v28 = *(v4 + 116);
    v29 = v4;
    v30 = (v27 + 15) & 0xFFFFFFF0;
    v31 = v30 * v28;
    if (v31 <= 4096)
    {
      v33 = v1013;
    }

    else
    {
      v32 = malloc_type_malloc(v31, 0x100004077774924uLL);
      if (!v32)
      {
        return 1;
      }

      v33 = v32;
      v18 = *(v29 + 136);
      v19 = *(v29 + 128);
    }

    CGSConvertBitsToMask(v18, *(v29 + 124), v33, v30, v27, v28, v19);
    v55 = *(v29 + 112);
    v1009 = *(v29 + 96);
    v1010 = v55;
    v56 = *(v29 + 144);
    v1011 = *(v29 + 128);
    v1012 = v56;
    v57 = *(v29 + 48);
    v1005 = *(v29 + 32);
    v1006 = v57;
    v58 = *(v29 + 80);
    v1007 = *(v29 + 64);
    v1008 = v58;
    v59 = *v29;
    v60 = *(v29 + 16);
    *v1003 = *v29;
    v1004 = v60;
    HIDWORD(v1010) = (v27 + 15) & 0xFFFFFFF0;
    *(&v1011 + 1) = v33;
    if (BYTE1(v1003[0]) << 8 == 1024)
    {
      Wf16_mark_constmask(v1003, v11, v59, *&v60, v54);
    }

    else
    {
      Wf16_mark_pixelmask(v1003, v11, v59, *&v60, v54);
    }

    if (v33 != v1013)
    {
LABEL_66:
      v78 = v33;
LABEL_977:
      free(v78);
      return 1;
    }

    return 1;
  }

  v20 = *v4 & 0xFF00;
  v969 = *(v3 + 16 * *v4 + 8 * (v9 == 0) + 4 * (v10 == 0));
  v967 = v4;
  if (v20 == 1024)
  {
    v1013[0] = *(v4 + 4);
    v1003[0] = v16;
    if (v9)
    {
      _H10 = *v9;
    }

    else
    {
      LOWORD(_H10) = COERCE_UNSIGNED_INT(1.0);
    }

    v34 = *(v4 + 40);
    __asm { FCVT            S8, H10 }

    _Q0.n128_u32[0] = 1.0;
    v40 = *(v4 + 28) >> 1;
    v41 = *(v4 + 12);
    v42 = *(v4 + 16);
    if (v10)
    {
      v1000 = *(v4 + 32) >> 1;
      v998 = v10 + 2 * v1000 * v42 + 2 * v41;
      v992 = 1;
    }

    else
    {
      v998 = 0;
      v1000 = 0;
      v992 = 0;
    }

    LOWORD(_S9) = **(v4 + 88);
    *v8.i32 = 1.0 - _S8;
    v47 = v34 + 2 * v42 * v40 + 2 * v41;
    v996 = v8;
    v991 = *(v4 + 28) >> 1;
    v994 = v47;
    if (v18)
    {
      shape_enum_clip_alloc(v3, v4, v18, 1, 1, 1, *(v4 + 104), *(v4 + 108), v14, v16);
      v33 = v48;
      v49 = v998;
      v50 = v1000;
      if (v48)
      {
        goto LABEL_1362;
      }

      return 1;
    }

    v33 = 0;
    if (v10)
    {
      v51 = v14;
    }

    else
    {
      v51 = 0;
    }

    v49 = v998;
    v50 = v1000 - v51;
    v52 = (v34 + 2 * v42 * v40 + 2 * v41);
    v53 = v14;
LABEL_1006:
    v47 = v40 - v53;
    v692 = v14;
    switch(v11)
    {
      case 0:
        v693 = v40;
        v694 = v47 + v14;
        v695 = v1003[0];
        v696 = v14;
        v697 = v1003[0] - 1;
        v698 = v52 + 2 * ((v694 * v697) & (v694 >> 63));
        if (v694 < 0)
        {
          v694 = -v694;
        }

        CGBlt_fillBytes(2 * v696, v1003[0], 0, v698, 2 * v694);
        if (v10)
        {
          v699 = v50 + v696;
          v49 += 2 * ((v699 * v697) & (v699 >> 63));
          if (v699 >= 0)
          {
            v50 += v696;
          }

          else
          {
            v50 = -v699;
          }

          CGBlt_fillBytes(2 * v696, v695, 0, v49, 2 * v50);
        }

        goto LABEL_1192;
      case 1:
        v693 = v40;
        v841 = v47 + v14;
        if (v841 < 0)
        {
          v52 = (v52 + 2 * v841 * (v1003[0] - 1));
          v841 = -v841;
        }

        v842 = 0;
        v843 = *(v967 + 88);
        if (v843)
        {
          v842 = *v843 | (*v843 << 16);
        }

        v844 = v1003[0];
        CGBlt_fillBytes(2 * v14, v1003[0], v842, v52, 2 * v841);
        if (v10)
        {
          v845 = &_W_float16_alpha;
          if (*(v967 + 96))
          {
            v845 = *(v967 + 96);
          }

          v49 += 2 * (((v50 + v14) * (v844 - 1)) & ((v50 + v14) >> 63));
          if ((v50 + v14) >= 0)
          {
            v50 += v14;
          }

          else
          {
            v50 = -(v50 + v14);
          }

          CGBlt_fillBytes(2 * v14, v844, *v845 | (*v845 << 16), v49, 2 * v50);
        }

        v11 = v969;
LABEL_1192:
        v40 = v693;
        goto LABEL_1359;
      case 2:
        v801 = v1003[0];
        v802 = v14 >> 2;
        __asm { FCVT            S0, H9 }

        v803 = 8 * v992;
        v804 = 2 * v992;
        if (v10)
        {
          v805 = v802 + 1;
          do
          {
            if (v14 < 4)
            {
              v824 = v14;
            }

            else
            {
              v806 = v805;
              do
              {
                _H1 = v52->i16[0];
                __asm { FCVT            S1, H1 }

                _S1 = _Q0.n128_f32[0] + (_S1 * *v8.i32);
                __asm { FCVT            H1, S1 }

                v52->i16[0] = LOWORD(_S1);
                LOWORD(_S1) = *v49;
                __asm { FCVT            S1, H1 }

                _S1 = _S8 + (_S1 * *v8.i32);
                __asm { FCVT            H1, S1 }

                *v49 = LOWORD(_S1);
                LOWORD(_S1) = v52->i16[1];
                __asm { FCVT            S1, H1 }

                _S1 = _Q0.n128_f32[0] + (_S1 * *v8.i32);
                __asm { FCVT            H1, S1 }

                v52->i16[1] = LOWORD(_S1);
                LOWORD(_S1) = *(v49 + 2);
                __asm { FCVT            S1, H1 }

                _S1 = _S8 + (_S1 * *v8.i32);
                __asm { FCVT            H1, S1 }

                *(v49 + 2) = LOWORD(_S1);
                LOWORD(_S1) = v52->i16[2];
                __asm { FCVT            S1, H1 }

                _S1 = _Q0.n128_f32[0] + (_S1 * *v8.i32);
                __asm { FCVT            H1, S1 }

                v52->i16[2] = LOWORD(_S1);
                LOWORD(_S1) = *(v49 + 4);
                __asm { FCVT            S1, H1 }

                _S1 = _S8 + (_S1 * *v8.i32);
                __asm { FCVT            H1, S1 }

                *(v49 + 4) = LOWORD(_S1);
                LOWORD(_S1) = v52->i16[3];
                __asm { FCVT            S1, H1 }

                _S1 = _Q0.n128_f32[0] + (_S1 * *v8.i32);
                __asm { FCVT            H1, S1 }

                v52->i16[3] = LOWORD(_S1);
                LOWORD(_S1) = *(v49 + 6);
                __asm { FCVT            S1, H1 }

                _S1 = _S8 + (_S1 * *v8.i32);
                __asm { FCVT            H1, S1 }

                *(v49 + 6) = LOWORD(_S1);
                ++v52;
                --v806;
                v49 += v803;
              }

              while (v806 > 1);
              v824 = v14 & 3;
            }

            if (v824 >= 1)
            {
              v825 = v824 + 1;
              do
              {
                _H1 = v52->i16[0];
                __asm { FCVT            S1, H1 }

                _S1 = _Q0.n128_f32[0] + (_S1 * *v8.i32);
                __asm { FCVT            H1, S1 }

                v52->i16[0] = LOWORD(_S1);
                v52 = (v52 + 2);
                LOWORD(_S1) = *v49;
                __asm { FCVT            S1, H1 }

                _S1 = _S8 + (_S1 * *v8.i32);
                __asm { FCVT            H1, S1 }

                *v49 = LOWORD(_S1);
                v49 += v804;
                --v825;
              }

              while (v825 > 1);
            }

            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v801;
          }

          while (v801);
        }

        else
        {
          v958 = vdupq_lane_s32(v8, 0);
          v959 = vdupq_lane_s32(_Q0.n128_u64[0], 0);
          v960 = v802 + 1;
          do
          {
            if (v14 < 4)
            {
              v962 = v14;
            }

            else
            {
              v961 = v960;
              do
              {
                *v52 = vcvt_f16_f32(vmlaq_f32(v959, v958, vcvtq_f32_f16(*v52)));
                ++v52;
                --v961;
                v49 += v803;
              }

              while (v961 > 1);
              v962 = v14 & 3;
            }

            if (v962 >= 1)
            {
              v963 = v962 + 1;
              do
              {
                _H3 = v52->i16[0];
                __asm { FCVT            S3, H3 }

                _S3 = _Q0.n128_f32[0] + (_S3 * *v8.i32);
                __asm { FCVT            H3, S3 }

                v52->i16[0] = LOWORD(_S3);
                v52 = (v52 + 2);
                v49 += v804;
                --v963;
              }

              while (v963 > 1);
            }

            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v801;
          }

          while (v801);
        }

        goto LABEL_1358;
      case 3:
        v834 = v1003[0];
        do
        {
          v835 = v14;
          do
          {
            __asm { FCMP            H2, #0 }

            if (!_ZF & _CF)
            {
              if (_H2 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                v52->i16[0] = _S9;
                *v49 = _H10;
              }

              else
              {
                *v52->i16 = *&_S9 * _H2;
                *v49 = _H10 * _H2;
              }
            }

            else
            {
              *v49 = 0;
              v52->i16[0] = 0;
            }

            v52 = (v52 + 2);
            v49 += 2 * v992;
            --v835;
          }

          while (v835);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          --v834;
        }

        while (v834);
        goto LABEL_1358;
      case 4:
        __asm { FCVT            S0, H9; jumptable 000000018434DEAC case 4 }

        v753 = v1003[0];
        do
        {
          v754 = v14;
          do
          {
            _H3 = *v49;
            __asm { FCVT            S3, H3 }

            v757 = 1.0 - _S3;
            if (v757 <= 0.0)
            {
              *v49 = 0;
              v52->i16[0] = 0;
            }

            else if (v757 >= 1.0)
            {
              v52->i16[0] = _S9;
              *v49 = _H10;
            }

            else
            {
              _S4 = v757 * _S0;
              __asm { FCVT            H4, S4 }

              v52->i16[0] = LOWORD(_S4);
              _S3 = v757 * _S8;
              __asm { FCVT            H3, S3 }

              *v49 = LOWORD(_S3);
            }

            v52 = (v52 + 2);
            v49 += 2 * v992;
            --v754;
          }

          while (v754);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          --v753;
        }

        while (v753);
        goto LABEL_1358;
      case 5:
        __asm { FCVT            S0, H9; jumptable 000000018434DEAC case 5 }

        v861 = v1003[0];
        do
        {
          v862 = v14;
          do
          {
            _H1 = *v49;
            __asm { FCVT            S1, H1 }

            _H2 = v52->i16[0];
            __asm { FCVT            S2, H2 }

            _S2 = (*v8.i32 * _S2) + (_S0 * _S1);
            __asm { FCVT            H2, S2 }

            v52->i16[0] = LOWORD(_S2);
            v52 = (v52 + 2);
            _S1 = (*v8.i32 * _S1) + (_S8 * _S1);
            __asm { FCVT            H1, S1 }

            *v49 = LOWORD(_S1);
            v49 += 2 * v992;
            --v862;
          }

          while (v862);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          --v861;
        }

        while (v861);
        goto LABEL_1358;
      case 6:
        __asm { FCVT            S0, H9; jumptable 000000018434DEAC case 6 }

        v884 = v1003[0];
        while (1)
        {
          v885 = v14;
          do
          {
            _H2 = *v49;
            __asm { FCVT            S2, H2 }

            v888 = 1.0 - _S2;
            if ((1.0 - _S2) >= 1.0)
            {
              v52->i16[0] = _S9;
              _H2 = _H10;
            }

            else
            {
              if (v888 <= 0.0)
              {
                goto LABEL_1263;
              }

              _H4 = v52->i16[0];
              __asm { FCVT            S4, H4 }

              _S4 = _S4 + (_S0 * v888);
              __asm { FCVT            H4, S4 }

              v52->i16[0] = LOWORD(_S4);
              _S2 = _S2 + (_S8 * v888);
              __asm { FCVT            H2, S2 }
            }

            *v49 = _H2;
LABEL_1263:
            v52 = (v52 + 2);
            v49 += 2 * v992;
            --v885;
          }

          while (v885);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          if (!--v884)
          {
            goto LABEL_1358;
          }
        }

      case 7:
        v837 = v1003[0];
        v838 = 2 * v992;
        if (v10)
        {
          do
          {
            v839 = v14;
            do
            {
              *v52->i16 = _H10 * *v52->i16;
              v52 = (v52 + 2);
              *v49 = _H10 * *v49;
              v49 += v838;
              --v839;
            }

            while (v839);
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v837;
          }

          while (v837);
        }

        else
        {
          do
          {
            v840 = v14;
            do
            {
              *v52->i16 = _H10 * *v52->i16;
              v52 = (v52 + 2);
              v49 += v838;
              --v840;
            }

            while (v840);
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v837;
          }

          while (v837);
        }

        goto LABEL_1358;
      case 8:
        v906 = v1003[0];
        v907 = 2 * v992;
        if (v10)
        {
          do
          {
            v908 = v14;
            do
            {
              _H0 = v52->i16[0];
              __asm { FCVT            S0, H0 }

              _S0 = *v8.i32 * _S0;
              __asm { FCVT            H0, S0 }

              v52->i16[0] = LOWORD(_S0);
              v52 = (v52 + 2);
              LOWORD(_S0) = *v49;
              __asm { FCVT            S0, H0 }

              _S0 = *v8.i32 * _S0;
              __asm { FCVT            H0, S0 }

              *v49 = LOWORD(_S0);
              v49 += v907;
              --v908;
            }

            while (v908);
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v906;
          }

          while (v906);
        }

        else
        {
          do
          {
            v914 = v14;
            do
            {
              _H0 = v52->i16[0];
              __asm { FCVT            S0, H0 }

              _S0 = *v8.i32 * _S0;
              __asm { FCVT            H0, S0 }

              v52->i16[0] = LOWORD(_S0);
              v52 = (v52 + 2);
              v49 += v907;
              --v914;
            }

            while (v914);
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v906;
          }

          while (v906);
        }

        goto LABEL_1358;
      case 9:
        __asm { FCVT            S0, H9; jumptable 000000018434DEAC case 9 }

        v769 = v1003[0];
        do
        {
          v770 = v14;
          do
          {
            _H2 = *v49;
            __asm { FCVT            S2, H2 }

            _H4 = v52->i16[0];
            __asm { FCVT            S4, H4 }

            _S4 = (_S8 * _S4) + (_S0 * (1.0 - _S2));
            __asm { FCVT            H4, S4 }

            v52->i16[0] = LOWORD(_S4);
            v52 = (v52 + 2);
            _S2 = (_S8 * _S2) + (_S8 * (1.0 - _S2));
            __asm { FCVT            H2, S2 }

            *v49 = LOWORD(_S2);
            v49 += 2 * v992;
            --v770;
          }

          while (v770);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          --v769;
        }

        while (v769);
        goto LABEL_1358;
      case 10:
        __asm { FCVT            S0, H9; jumptable 000000018434DEAC case 10 }

        v898 = v1003[0];
        do
        {
          v899 = v14;
          do
          {
            _H2 = *v49;
            __asm { FCVT            S2, H2 }

            _H4 = v52->i16[0];
            __asm { FCVT            S4, H4 }

            _S4 = (*v8.i32 * _S4) + (_S0 * (1.0 - _S2));
            __asm { FCVT            H4, S4 }

            v52->i16[0] = LOWORD(_S4);
            v52 = (v52 + 2);
            _S2 = (*v8.i32 * _S2) + (_S8 * (1.0 - _S2));
            __asm { FCVT            H2, S2 }

            *v49 = LOWORD(_S2);
            v49 += 2 * v992;
            --v899;
          }

          while (v899);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          --v898;
        }

        while (v898);
        goto LABEL_1358;
      case 11:
        __asm { FCVT            S0, H9; jumptable 000000018434DEAC case 11 }

        v736 = _S8 - _S0;
        v737 = v1003[0];
        v738 = 2 * v992;
        if (v10)
        {
          do
          {
            v739 = v14;
            do
            {
              _H2 = *v49;
              __asm { FCVT            S2, H2 }

              _S3 = _S8 + _S2;
              _H4 = v52->i16[0];
              __asm { FCVT            S4, H4 }

              v745 = v736 + (_S2 - _S4);
              if (_S3 > 1.0)
              {
                _S3 = 1.0;
              }

              __asm { FCVT            H4, S3 }

              *v49 = _H4;
              _S2 = _S3 - v745;
              __asm { FCVT            H2, S2 }

              v52->i16[0] = LOWORD(_S2);
              v52 = (v52 + 2);
              v49 += v738;
              --v739;
            }

            while (v739);
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v737;
          }

          while (v737);
        }

        else
        {
          do
          {
            v748 = v14;
            do
            {
              _H2 = v52->i16[0];
              __asm { FCVT            S2, H2 }

              _S2 = 1.0 - (v736 + (1.0 - _S2));
              __asm { FCVT            H2, S2 }

              v52->i16[0] = LOWORD(_S2);
              v52 = (v52 + 2);
              v49 += v738;
              --v748;
            }

            while (v748);
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v737;
          }

          while (v737);
        }

        goto LABEL_1358;
      case 12:
        v760 = v1003[0];
        v761 = 2 * v992;
        if (v10)
        {
          do
          {
            v762 = v14;
            do
            {
              _H1 = *v49;
              __asm { FCVT            S1, H1 }

              _S1 = _S8 + _S1;
              if (_S1 > 1.0)
              {
                _S1 = 1.0;
              }

              *v52->i16 = *&_S9 + *v52->i16;
              v52 = (v52 + 2);
              __asm { FCVT            H1, S1 }

              *v49 = _H1;
              v49 += v761;
              --v762;
            }

            while (v762);
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v760;
          }

          while (v760);
        }

        else
        {
          do
          {
            v767 = v14;
            do
            {
              *v52->i16 = *&_S9 + *v52->i16;
              v52 = (v52 + 2);
              v49 += v761;
              --v767;
            }

            while (v767);
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v760;
          }

          while (v760);
        }

        goto LABEL_1358;
      case 13:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 13 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v873 = v1003[0];
        while (1)
        {
          v874 = v14;
          do
          {
            if (v10)
            {
              __asm { FCMP            H3, #0 }

              if (!(!_ZF & _CF))
              {
                v52->i16[0] = _S9;
                *v49 = _H10;
                goto LABEL_1253;
              }

              __asm { FCVT            S3, H3 }
            }

            else
            {
              _S3 = 1.0;
            }

            _H4 = v52->i16[0];
            __asm { FCVT            S4, H4 }

            v879 = _S0 * _S4;
            _S4 = (_S0 * _S4) + (_S4 * *v8.i32);
            if (_H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              _S4 = v879;
            }

            if (_S3 != 1.0)
            {
              _S4 = _S4 + (_S0 * (1.0 - _S3));
            }

            __asm { FCVT            H4, S4 }

            if (v10)
            {
              _S3 = (_S3 + _S8) - (_S3 * _S8);
              __asm { FCVT            H3, S3 }

              v52->i16[0] = _H4;
              *v49 = LOWORD(_S3);
            }

            else
            {
              v52->i16[0] = _H4;
            }

LABEL_1253:
            v52 = (v52 + 2);
            v49 += 2 * v992;
            --v874;
          }

          while (v874);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          if (!--v873)
          {
            goto LABEL_1358;
          }
        }

      case 14:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 14 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v724 = v1003[0];
        do
        {
          v725 = v14;
          do
          {
            if (v10)
            {
              __asm { FCMP            H2, #0 }

              if (!_ZF & _CF)
              {
                __asm { FCVT            S2, H2 }

                _H3 = v52->i16[0];
                __asm { FCVT            S3, H3 }

                _S3 = _S3 + (_S0 * (1.0 - _S3));
                __asm { FCVT            H3, S3 }

                _S2 = (_S8 + _S2) - (_S2 * _S8);
                __asm { FCVT            H2, S2 }

                v52->i16[0] = LOWORD(_S3);
                *v49 = LOWORD(_S2);
              }

              else
              {
                v52->i16[0] = _S9;
                *v49 = _H10;
              }
            }

            else
            {
              _H2 = v52->i16[0];
              __asm { FCVT            S2, H2 }

              _S2 = _S2 + (_S0 * (1.0 - _S2));
              __asm { FCVT            H2, S2 }

              v52->i16[0] = LOWORD(_S2);
            }

            v52 = (v52 + 2);
            v49 += 2 * v992;
            --v725;
          }

          while (v725);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          --v724;
        }

        while (v724);
        goto LABEL_1358;
      case 15:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 15 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        v831 = v1003[0];
        while (1)
        {
          if (v10)
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF & _CF)
            {
              __asm { FCVT            S1, H0 }

              _Q0.n128_u16[0] = v52->i16[0];
              v7.n128_u32[0] = _S9;
              _Q0.n128_u64[0] = PDAoverlayPDA(_Q0, _S1, v7, _S8);
              v52->i16[0] = _Q0.n128_u16[0];
              *v49 = v833;
            }

            else
            {
              v52->i16[0] = _S9;
              *v49 = _H10;
            }
          }

          else
          {
            _Q0.n128_u16[0] = v52->i16[0];
            v7.n128_u32[0] = _S9;
            _Q0.n128_u64[0] = PDAoverlayPDA(_Q0, 1.0, v7, _S8);
            v52->i16[0] = _Q0.n128_u16[0];
          }

          v52 = (v52 + 2);
          v49 += 2 * v992;
          LODWORD(v14) = v14 - 1;
          if (!v14)
          {
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v831;
            LODWORD(v14) = v692;
            if (!v831)
            {
              break;
            }
          }
        }

        goto LABEL_1315;
      case 16:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 16 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v713 = v1003[0];
        while (1)
        {
          v714 = v14;
          do
          {
            if (v10)
            {
              __asm { FCMP            H3, #0 }

              if (!(!_ZF & _CF))
              {
                v52->i16[0] = _S9;
                *v49 = _H10;
                goto LABEL_1050;
              }

              __asm { FCVT            S3, H3 }
            }

            else
            {
              _S3 = 1.0;
            }

            _H4 = v52->i16[0];
            __asm { FCVT            S4, H4 }

            v719 = _S8 * _S4;
            if ((_S3 * _S0) < (_S8 * _S4))
            {
              v719 = _S3 * _S0;
            }

            _S4 = v719 + (_S4 * *v8.i32);
            if (_H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              _S4 = v719;
            }

            if (_S3 != 1.0)
            {
              _S4 = _S4 + (_S0 * (1.0 - _S3));
            }

            __asm { FCVT            H4, S4 }

            if (v10)
            {
              _S3 = (_S3 + _S8) - (_S3 * _S8);
              __asm { FCVT            H3, S3 }

              v52->i16[0] = _H4;
              *v49 = LOWORD(_S3);
            }

            else
            {
              v52->i16[0] = _H4;
            }

LABEL_1050:
            v52 = (v52 + 2);
            v49 += 2 * v992;
            --v714;
          }

          while (v714);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          if (!--v713)
          {
            goto LABEL_1358;
          }
        }

      case 17:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 17 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v847 = v1003[0];
        while (1)
        {
          v848 = v14;
          do
          {
            if (v10)
            {
              __asm { FCMP            H3, #0 }

              if (!(!_ZF & _CF))
              {
                v52->i16[0] = _S9;
                *v49 = _H10;
                goto LABEL_1210;
              }

              __asm { FCVT            S3, H3 }
            }

            else
            {
              _S3 = 1.0;
            }

            _H4 = v52->i16[0];
            __asm { FCVT            S4, H4 }

            v853 = _S8 * _S4;
            if ((_S3 * _S0) > (_S8 * _S4))
            {
              v853 = _S3 * _S0;
            }

            _S4 = v853 + (_S4 * *v8.i32);
            if (_H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              _S4 = v853;
            }

            if (_S3 != 1.0)
            {
              _S4 = _S4 + (_S0 * (1.0 - _S3));
            }

            __asm { FCVT            H4, S4 }

            if (v10)
            {
              _S3 = (_S3 + _S8) - (_S3 * _S8);
              __asm { FCVT            H3, S3 }

              v52->i16[0] = _H4;
              *v49 = LOWORD(_S3);
            }

            else
            {
              v52->i16[0] = _H4;
            }

LABEL_1210:
            v52 = (v52 + 2);
            v49 += 2 * v992;
            --v848;
          }

          while (v848);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          if (!--v847)
          {
            goto LABEL_1358;
          }
        }

      case 18:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 18 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        v894 = v1003[0];
        while (1)
        {
          if (v10)
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF & _CF)
            {
              __asm { FCVT            S1, H0 }

              _Q0.n128_u16[0] = v52->i16[0];
              v7.n128_u32[0] = _S9;
              _Q0.n128_u64[0] = PDAcolordodgePDA(_Q0, _S1, v7, _S8);
              v52->i16[0] = _Q0.n128_u16[0];
              *v49 = v896;
            }

            else
            {
              v52->i16[0] = _S9;
              *v49 = _H10;
            }
          }

          else
          {
            _Q0.n128_u16[0] = v52->i16[0];
            v7.n128_u32[0] = _S9;
            _Q0.n128_u64[0] = PDAcolordodgePDA(_Q0, 1.0, v7, _S8);
            v52->i16[0] = _Q0.n128_u16[0];
          }

          v52 = (v52 + 2);
          v49 += 2 * v992;
          LODWORD(v14) = v14 - 1;
          if (!v14)
          {
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v894;
            LODWORD(v14) = v692;
            if (!v894)
            {
              break;
            }
          }
        }

        goto LABEL_1315;
      case 19:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 19 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        v933 = v1003[0];
        while (1)
        {
          if (v10)
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF & _CF)
            {
              __asm { FCVT            S1, H0 }

              _Q0.n128_u16[0] = v52->i16[0];
              v7.n128_u32[0] = _S9;
              _Q0.n128_u64[0] = PDAcolorburnPDA(_Q0, _S1, v7, _S8);
              v52->i16[0] = _Q0.n128_u16[0];
              *v49 = v935;
            }

            else
            {
              v52->i16[0] = _S9;
              *v49 = _H10;
            }
          }

          else
          {
            _Q0.n128_u16[0] = v52->i16[0];
            v7.n128_u32[0] = _S9;
            _Q0.n128_u64[0] = PDAcolorburnPDA(_Q0, 1.0, v7, _S8);
            v52->i16[0] = _Q0.n128_u16[0];
          }

          v52 = (v52 + 2);
          v49 += 2 * v992;
          LODWORD(v14) = v14 - 1;
          if (!v14)
          {
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v933;
            LODWORD(v14) = v692;
            if (!v933)
            {
              break;
            }
          }
        }

        goto LABEL_1315;
      case 20:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 20 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        v857 = v1003[0];
        while (1)
        {
          if (v10)
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF & _CF)
            {
              __asm { FCVT            S1, H0 }

              _Q0.n128_u16[0] = v52->i16[0];
              v7.n128_u32[0] = _S9;
              _Q0.n128_u64[0] = PDAsoftlightPDA(_Q0, _S1, v7, _S8);
              v52->i16[0] = _Q0.n128_u16[0];
              *v49 = v859;
            }

            else
            {
              v52->i16[0] = _S9;
              *v49 = _H10;
            }
          }

          else
          {
            _Q0.n128_u16[0] = v52->i16[0];
            v7.n128_u32[0] = _S9;
            _Q0.n128_u64[0] = PDAsoftlightPDA(_Q0, 1.0, v7, _S8);
            v52->i16[0] = _Q0.n128_u16[0];
          }

          v52 = (v52 + 2);
          v49 += 2 * v992;
          LODWORD(v14) = v14 - 1;
          if (!v14)
          {
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v857;
            LODWORD(v14) = v692;
            if (!v857)
            {
              break;
            }
          }
        }

        goto LABEL_1315;
      case 21:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 21 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        v869 = v1003[0];
        while (1)
        {
          if (v10)
          {
            __asm { FCMP            H0, #0 }

            if (!_ZF & _CF)
            {
              __asm { FCVT            S1, H0 }

              _Q0.n128_u16[0] = v52->i16[0];
              v7.n128_u32[0] = _S9;
              _Q0.n128_u64[0] = PDAhardlightPDA(_Q0, _S1, v7, _S8);
              v52->i16[0] = _Q0.n128_u16[0];
              *v49 = v871;
            }

            else
            {
              v52->i16[0] = _S9;
              *v49 = _H10;
            }
          }

          else
          {
            _Q0.n128_u16[0] = v52->i16[0];
            v7.n128_u32[0] = _S9;
            _Q0.n128_u64[0] = PDAhardlightPDA(_Q0, 1.0, v7, _S8);
            v52->i16[0] = _Q0.n128_u16[0];
          }

          v52 = (v52 + 2);
          v49 += 2 * v992;
          LODWORD(v14) = v14 - 1;
          if (!v14)
          {
            v52 = (v52 + 2 * v47);
            v49 += 2 * v50;
            --v869;
            LODWORD(v14) = v692;
            if (!v869)
            {
              break;
            }
          }
        }

LABEL_1315:
        v1003[0] = 0;
        v11 = v969;
        v40 = v991;
        goto LABEL_1359;
      case 22:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 22 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v919 = v1003[0];
        while (1)
        {
          v920 = v14;
          do
          {
            if (v10)
            {
              __asm { FCMP            H1, #0 }

              if (!(!_ZF & _CF))
              {
                v52->i16[0] = _S9;
                *v49 = _H10;
                goto LABEL_1303;
              }

              __asm { FCVT            S1, H1 }
            }

            else
            {
              _S1 = 1.0;
            }

            _H2 = v52->i16[0];
            __asm { FCVT            S2, H2 }

            v925 = _S0 + _S2;
            v926 = _S8 * _S2;
            v927 = v925 - v926;
            v928 = v926 - (_S1 * _S0);
            v929 = v927 - (_S1 * _S0);
            if (v928 < 0.0)
            {
              v928 = -v928;
            }

            _S2 = v929 + v928;
            __asm { FCVT            H2, S2 }

            if (v10)
            {
              _S1 = (_S1 + _S8) - (_S1 * _S8);
              __asm { FCVT            H1, S1 }

              v52->i16[0] = _H2;
              *v49 = LOWORD(_S1);
            }

            else
            {
              v52->i16[0] = _H2;
            }

LABEL_1303:
            v52 = (v52 + 2);
            v49 += 2 * v992;
            --v920;
          }

          while (v920);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          if (!--v919)
          {
            goto LABEL_1358;
          }
        }

      case 23:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 23 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v937 = v1003[0];
        while (1)
        {
          v938 = v14;
          do
          {
            if (v10)
            {
              __asm { FCMP            H2, #0 }

              if (!(!_ZF & _CF))
              {
                v52->i16[0] = _S9;
                *v49 = _H10;
                goto LABEL_1327;
              }

              __asm { FCVT            S2, H2 }
            }

            else
            {
              _S2 = 1.0;
            }

            _H3 = v52->i16[0];
            __asm { FCVT            S3, H3 }

            _S3 = (_S0 + _S3) + ((_S0 * _S3) * -2.0);
            __asm { FCVT            H3, S3 }

            if (v10)
            {
              _S2 = (_S2 + _S8) - (_S2 * _S8);
              __asm { FCVT            H2, S2 }

              v52->i16[0] = _H3;
              *v49 = LOWORD(_S2);
            }

            else
            {
              v52->i16[0] = _H3;
            }

LABEL_1327:
            v52 = (v52 + 2);
            v49 += 2 * v992;
            --v938;
          }

          while (v938);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          if (!--v937)
          {
            goto LABEL_1358;
          }
        }

      case 24:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 24 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v790 = v1003[0];
        while (1)
        {
          v791 = v14;
          do
          {
            if (v10)
            {
              __asm { FCMP            H4, #0 }

              if (!(!_ZF & _CF))
              {
                v52->i16[0] = _S9;
                *v49 = _H10;
                goto LABEL_1136;
              }

              __asm { FCVT            S4, H4 }
            }

            else
            {
              _S4 = 1.0;
            }

            _H5 = v52->i16[0];
            __asm { FCVT            S5, H5 }

            v796 = _S5 - (_S8 * _S5);
            if (_H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v797 = 0.0;
            }

            else
            {
              _S5 = _S8 * _S5;
              v797 = v796;
            }

            if (_S4 != 1.0)
            {
              v797 = (v797 + _S0) - (_S4 * _S0);
            }

            _S5 = _S5 + v797;
            __asm { FCVT            H5, S5 }

            if (v10)
            {
              _S4 = (_S4 + _S8) - (_S4 * _S8);
              __asm { FCVT            H4, S4 }

              v52->i16[0] = _H5;
              *v49 = LOWORD(_S4);
            }

            else
            {
              v52->i16[0] = _H5;
            }

LABEL_1136:
            v52 = (v52 + 2);
            v49 += 2 * v992;
            --v791;
          }

          while (v791);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          if (!--v790)
          {
            goto LABEL_1358;
          }
        }

      case 25:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 25 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v778 = v1003[0];
        while (1)
        {
          v779 = v14;
          do
          {
            if (v10)
            {
              __asm { FCMP            H4, #0 }

              if (!(!_ZF & _CF))
              {
                v52->i16[0] = _S9;
                *v49 = _H10;
                goto LABEL_1117;
              }

              __asm { FCVT            S4, H4 }
            }

            else
            {
              _S4 = 1.0;
            }

            _H5 = v52->i16[0];
            __asm { FCVT            S5, H5 }

            v784 = _S5 - (_S8 * _S5);
            if (_H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v785 = 0.0;
            }

            else
            {
              _S5 = _S8 * _S5;
              v785 = v784;
            }

            if (_S4 != 1.0)
            {
              v785 = (v785 + _S0) - (_S4 * _S0);
            }

            _S5 = _S5 + v785;
            __asm { FCVT            H5, S5 }

            if (v10)
            {
              _S4 = (_S4 + _S8) - (_S4 * _S8);
              __asm { FCVT            H4, S4 }

              v52->i16[0] = _H5;
              *v49 = LOWORD(_S4);
            }

            else
            {
              v52->i16[0] = _H5;
            }

LABEL_1117:
            v52 = (v52 + 2);
            v49 += 2 * v992;
            --v779;
          }

          while (v779);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          if (!--v778)
          {
            goto LABEL_1358;
          }
        }

      case 26:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 26 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v947 = v1003[0];
        while (1)
        {
          v948 = v14;
          do
          {
            if (v10)
            {
              __asm { FCMP            H4, #0 }

              if (!(!_ZF & _CF))
              {
                v52->i16[0] = _S9;
                *v49 = _H10;
                goto LABEL_1345;
              }

              __asm { FCVT            S4, H4 }
            }

            else
            {
              _S4 = 1.0;
            }

            _H5 = v52->i16[0];
            __asm { FCVT            S5, H5 }

            v953 = _S0 - (_S4 * _S0);
            if (_S4 == 1.0)
            {
              v953 = 0.0;
            }

            v954 = (v953 + _S5) - (_S8 * _S5);
            if (_H10 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              _S5 = _S8 * _S5;
              v953 = v954;
            }

            _S5 = _S5 + v953;
            __asm { FCVT            H5, S5 }

            if (v10)
            {
              _S4 = (_S4 + _S8) - (_S4 * _S8);
              __asm { FCVT            H4, S4 }

              v52->i16[0] = _H5;
              *v49 = LOWORD(_S4);
            }

            else
            {
              v52->i16[0] = _H5;
            }

LABEL_1345:
            v52 = (v52 + 2);
            v49 += 2 * v992;
            --v948;
          }

          while (v948);
          v52 = (v52 + 2 * v47);
          v49 += 2 * v50;
          if (!--v947)
          {
            goto LABEL_1358;
          }
        }

      case 27:
        __asm { FCMP            H10, #0; jumptable 000000018434DEAC case 27 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_1359;
        }

        __asm { FCVT            S0, H9 }

        v701 = v1003[0];
        break;
      default:
        goto LABEL_1360;
    }

LABEL_1016:
    v702 = v14;
    while (v10)
    {
      __asm { FCMP            H4, #0 }

      if (!_ZF & _CF)
      {
        __asm { FCVT            S4, H4 }

LABEL_1022:
        _H5 = v52->i16[0];
        __asm { FCVT            S5, H5 }

        v707 = _S5 - (_S8 * _S5);
        if (_H10 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          v707 = 0.0;
        }

        v708 = _S4 * _S0;
        if (_S4 == 1.0)
        {
          v708 = _S0;
        }

        else
        {
          v707 = (v707 + _S0) - (_S4 * _S0);
        }

        _S5 = v708 + v707;
        __asm { FCVT            H5, S5 }

        if (v10)
        {
          _S4 = (_S4 + _S8) - (_S4 * _S8);
          __asm { FCVT            H4, S4 }

          v52->i16[0] = _H5;
          *v49 = LOWORD(_S4);
        }

        else
        {
          v52->i16[0] = _H5;
        }

        goto LABEL_1030;
      }

      v52->i16[0] = _S9;
      *v49 = _H10;
LABEL_1030:
      v52 = (v52 + 2);
      v49 += 2 * v992;
      if (!--v702)
      {
        v52 = (v52 + 2 * v47);
        v49 += 2 * v50;
        if (!--v701)
        {
LABEL_1358:
          v1003[0] = 0;
LABEL_1359:
          v47 = v994;
LABEL_1360:
          if (!v33)
          {
            return 1;
          }

          v1002 = 0;
LABEL_1362:
          if (!shape_enum_clip_next(v33, &v1002 + 1, &v1002, v1013, v1003))
          {
            goto LABEL_66;
          }

          v52 = (v47 + 2 * v40 * v1002 + 2 * SHIDWORD(v1002));
          v53 = v1013[0];
          if (v10)
          {
            v49 = v998 + 2 * v1000 * v1002 + 2 * SHIDWORD(v1002);
            v50 = v1000 - v1013[0];
          }

          LODWORD(v14) = v1013[0];
          v8 = v996;
          goto LABEL_1006;
        }

        goto LABEL_1016;
      }
    }

    _S4 = 1.0;
    goto LABEL_1022;
  }

  v1013[0] = *(v4 + 4);
  v1003[0] = v16;
  v22 = *(v4 + 88);
  v23 = *(v4 + 12);
  v24 = *(v4 + 16);
  v25 = *(v4 + 28) >> 1;
  if (v10)
  {
    v974 = *(v4 + 32) >> 1;
    v975 = v10 + 2 * v974 * v24 + 2 * v23;
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v974 = 0;
    v975 = 0;
    v26 = 0;
  }

  v973 = *(v4 + 40) + 2 * v24 * v25 + 2 * v23;
  v43 = *(v4 + 56);
  v44 = *(v4 + 60);
  v993 = *(v4 + 76) >> 1;
  if (v20 == 256)
  {
    if (v9)
    {
      v990 = *(v4 + 80) >> 1;
      v9 += 2 * v990 * v44 + 2 * v43;
      v45 = 0xFFFFFFFFLL;
    }

    else
    {
      v990 = 0;
      v45 = 0;
    }

    v22 += v44 * v993 + v43;
    if (v993 == v25)
    {
      v61 = (v973 - v22) >> 1;
      if (v61 >= 1)
      {
        if (v61 <= v14)
        {
          v973 += 2 * v15;
          v22 += v15;
          v975 += 2 * (v26 & v15);
          v63 = -1;
          v993 = *(v4 + 28) >> 1;
          v9 += 2 * (v45 & v15);
          goto LABEL_49;
        }

        v62 = &v22[v25 * v17];
        if (v973 <= &v62[v14 - 1])
        {
          v973 += 2 * v25 * v17;
          v25 = -v25;
          v77 = v975 + 2 * v974 * v17;
          v974 = -v974;
          v975 = v77;
          v9 += 2 * v990 * v17;
          v26 &= 1u;
          v990 = -v990;
          v993 = v25;
          v45 &= 1u;
          v63 = 1;
          v22 = v62;
          goto LABEL_49;
        }
      }
    }

    v26 &= 1u;
    v45 &= 1u;
    v63 = 1;
LABEL_49:
    v970 = *(v4 + 56);
    v971 = *(v4 + 60);
    if (v18)
    {
      v999 = v45;
      v1001 = v26;
      v987 = 0;
      v989 = 0;
      v64 = -1;
      v46 = v993;
      v977 = v990;
      goto LABEL_54;
    }

    v68 = v63 * v14;
    v997 = v974 - v26 * v14;
    v64 = -1;
    v69 = v990;
    v976 = v63;
    v977 = v990;
    v70 = v993;
    v46 = v993;
LABEL_62:
    v978 = 0;
    v979 = v22;
    v74 = 0;
    v993 = v70 - v68;
    v989 = 0;
    v990 = v69 - v45 * v14;
    v75 = v9;
    v972 = v9;
    v67 = v975;
    v76 = v973;
    goto LABEL_67;
  }

  v46 = *(v4 + 64);
  v977 = *(v4 + 68);
  if (v9)
  {
    v990 = *(v4 + 80) >> 1;
    v45 = 1;
  }

  else
  {
    v990 = 0;
    v45 = 0;
  }

  v989 = &v22[v993 * v977];
  v26 &= 1u;
  if (v18)
  {
    v970 = *(v4 + 56);
    v971 = *(v4 + 60);
    v999 = v45;
    v1001 = v26;
    v63 = 1;
    v987 = *(v4 + 88);
    v64 = v987;
LABEL_54:
    v976 = v63;
    v980 = v25;
    shape_enum_clip_alloc(v3, v4, v18, v63, v25, 1, *(v4 + 104), *(v4 + 108), v14, v16);
    v66 = v65;
    v988 = v9;
    v972 = v9;
    v67 = v975;
    v997 = v974;
    if (v65)
    {
      goto LABEL_955;
    }

    return 1;
  }

  v997 = v974 - (v26 * v14);
  if (!v22)
  {
    v970 = *(v4 + 56);
    v971 = *(v4 + 60);
    v64 = 0;
    v976 = 1;
    v68 = v14;
    v69 = v990;
    v70 = *(v4 + 76) >> 1;
    goto LABEL_62;
  }

  v71 = v44 % v977;
  v971 = v44 % v977;
  v979 = *(v4 + 88);
  v72 = &v22[v993 * v71];
  v73 = v43 % v46;
  v74 = &v72[v73];
  v64 = &v72[v46];
  v970 = v73;
  if (v9)
  {
    v978 = 0;
    v972 = v9;
    v75 = &v9[2 * v990 * v71 + 2 * v73];
    v976 = 1;
    v45 = 1;
    v9 = v75;
  }

  else
  {
    v972 = 0;
    v978 = 0;
    v75 = 0;
    v976 = 1;
  }

  v22 = &v72[v73];
  v67 = v975;
  v76 = v973;
  v68 = v14;
LABEL_67:
  v999 = v45;
  v1001 = v26;
  v980 = v25;
  v995 = v25 - v68;
  switch(v11)
  {
    case 0:
      v987 = v74;
      v988 = v75;
      v981 = v64;
      v79 = v995 - v14;
      v80 = &v76[-v14 + 1];
      if (v976 >= 0)
      {
        v80 = v76;
        v79 = v995 + v14;
      }

      v81 = v1003[0];
      v82 = v1003[0] - 1;
      v83 = (v80 + 2 * ((v79 * v82) & (v79 >> 63)));
      if (v79 < 0)
      {
        v79 = -v79;
      }

      CGBlt_fillBytes(2 * v14, v1003[0], 0, v83, 2 * v79);
      if (v26)
      {
        if (v976 < 0)
        {
          v84 = v997 - v14;
          v67 = &v67[-2 * v14 + 2];
        }

        else
        {
          v84 = v997 + v14;
        }

        v67 += 2 * ((v84 * v82) & (v84 >> 63));
        if (v84 < 0)
        {
          v84 = -v84;
        }

        v997 = v84;
        CGBlt_fillBytes(2 * v14, v81, 0, v67, 2 * v84);
      }

      v22 = v979;
      goto LABEL_1002;
    case 1:
      v315 = *(v13 + 1);
      if (v315 == 2)
      {
        if (v14 >= 16 && (2 * v46) <= 0x40)
        {
          _Q0.n128_u32[0] = 2 * v46;
          v638 = vcnt_s8(_Q0.n128_u64[0]);
          v638.i16[0] = vaddlv_u8(v638);
          if (v638.i32[0] <= 1u)
          {
            v987 = v74;
            v988 = v75;
            v639 = v76;
            v640 = v1003[0];
            CGSFillDRAM64(v639, 2 * (v14 + v995), 2 * v14, v1003[0], v979, 2 * v993, 2 * v46, v977, 2 * v970, v971);
            if (v26)
            {
              if (v999)
              {
                CGSFillDRAM64(v67, 2 * (v14 + v997), 2 * v14, v640, v972, 2 * v990, 2 * v46, v977, 2 * v970, v971);
              }

              else
              {
                CGBlt_fillBytes(2 * v14, v640, 1006648320, v67, 2 * (v14 + v997));
              }
            }

            v66 = v978;
            goto LABEL_953;
          }
        }

LABEL_894:
        if (v26)
        {
          if (v45)
          {
            v641 = v1003[0];
            do
            {
              v642 = v14;
              do
              {
                *v76 = *v22;
                *v67 = *v9;
                v643 = &v22[v976];
                if (v643 >= v64)
                {
                  v644 = -v46;
                }

                else
                {
                  v644 = 0;
                }

                v9 += 2 * v45 + 2 * v644;
                v22 = &v643[v644];
                v67 += 2 * v26;
                v76 += v976;
                --v642;
              }

              while (v642);
              if (v989)
              {
                v645 = &v74[v993];
                if (v645 >= v989)
                {
                  v646 = -(v990 * v977);
                }

                else
                {
                  v646 = 0;
                }

                v75 += 2 * v990 + 2 * v646;
                if (v645 >= v989)
                {
                  v647 = -(v993 * v977);
                }

                else
                {
                  v647 = 0;
                }

                v74 = &v645[v647];
                v64 += 2 * v647 + 2 * v993;
                v9 = v75;
                v22 = v74;
              }

              else
              {
                v22 += v993;
                v9 += 2 * v990;
              }

              v76 += v995;
              v67 += 2 * v997;
              --v641;
            }

            while (v641);
          }

          else
          {
            v655 = v1003[0];
            do
            {
              v656 = v14;
              do
              {
                *v76 = *v22;
                *v67 = COERCE_UNSIGNED_INT(1.0);
                v657 = &v22[v976];
                if (v657 >= v64)
                {
                  v658 = -v46;
                }

                else
                {
                  v658 = 0;
                }

                v9 += 2 * v658;
                v22 = &v657[v658];
                v67 += 2 * v26;
                v76 += v976;
                --v656;
              }

              while (v656);
              if (v989)
              {
                v659 = &v74[v993];
                if (v659 >= v989)
                {
                  v660 = -(v990 * v977);
                }

                else
                {
                  v660 = 0;
                }

                v75 += 2 * v990 + 2 * v660;
                if (v659 >= v989)
                {
                  v661 = -(v993 * v977);
                }

                else
                {
                  v661 = 0;
                }

                v74 = &v659[v661];
                v64 += 2 * v661 + 2 * v993;
                v9 = v75;
                v22 = v74;
              }

              else
              {
                v22 += v993;
                v9 += 2 * v990;
              }

              v76 += v995;
              v67 += 2 * v997;
              --v655;
            }

            while (v655);
          }
        }

        else
        {
          v648 = v1003[0];
          do
          {
            v649 = v14;
            do
            {
              *v76 = *v22;
              v650 = &v22[v976];
              if (v650 >= v64)
              {
                v651 = -v46;
              }

              else
              {
                v651 = 0;
              }

              v9 += 2 * v45 + 2 * v651;
              v22 = &v650[v651];
              v76 += v976;
              --v649;
            }

            while (v649);
            if (v989)
            {
              v652 = &v74[v993];
              if (v652 >= v989)
              {
                v653 = -(v990 * v977);
              }

              else
              {
                v653 = 0;
              }

              v75 += 2 * v990 + 2 * v653;
              if (v652 >= v989)
              {
                v654 = -(v993 * v977);
              }

              else
              {
                v654 = 0;
              }

              v74 = &v652[v654];
              v64 += 2 * v654 + 2 * v993;
              v9 = v75;
              v22 = v74;
            }

            else
            {
              v22 += v993;
              v9 += 2 * v990;
            }

            v76 += v995;
            v67 += 2 * v997;
            --v648;
          }

          while (v648);
        }

        goto LABEL_951;
      }

      if (v315 != 1)
      {
        goto LABEL_894;
      }

      v987 = v74;
      v988 = v75;
      v316 = v14;
      v981 = v64;
      if (v976 < 0)
      {
        v317 = v993 - v14;
        v672 = 2 * v14 - 2;
        v22 = (v22 - v672);
        v318 = v995 - v14;
        v76 = (v76 - v672);
      }

      else
      {
        v317 = v993 + v14;
        v318 = v995 + v14;
      }

      v673 = v14;
      v674 = v1003[0] - 1;
      v675 = &v22[(v317 * v674) & (v317 >> 63)];
      v676 = v1003[0];
      if (v317 >= 0)
      {
        v677 = v317;
      }

      else
      {
        v677 = -v317;
      }

      v678 = &v76[(v318 * v674) & (v318 >> 63)];
      if (v318 >= 0)
      {
        LODWORD(v679) = v318;
      }

      else
      {
        v679 = -v318;
      }

      v680 = v673;
      v681 = 2 * v673;
      v993 = v677;
      CGBlt_copyBytes(2 * v673, v1003[0], v675, v678, 2 * v677, 2 * v679);
      if (v26)
      {
        if (v999)
        {
          v682 = v990 - v316;
          v683 = 2 * v680 - 2;
          v684 = &v9[-v683];
          v685 = v997 - v316;
          v686 = &v67[-v683];
          if (v976 >= 0)
          {
            v684 = v9;
            v686 = v67;
            v682 = v990 + v316;
            v685 = v997 + v316;
          }

          v9 = &v684[2 * ((v682 * v674) & (v682 >> 63))];
          if (v682 >= 0)
          {
            v687 = v682;
          }

          else
          {
            v687 = -v682;
          }

          v67 = &v686[2 * ((v685 * v674) & (v685 >> 63))];
          if (v685 >= 0)
          {
            v688 = v685;
          }

          else
          {
            v688 = -v685;
          }

          v990 = v687;
          v997 = v688;
          CGBlt_copyBytes(v681, v676, v9, v67, 2 * v687, 2 * v688);
        }

        else
        {
          v689 = v997 - v316;
          v690 = &v67[-2 * v680 + 2];
          if (v976 >= 0)
          {
            v690 = v67;
            v689 = v997 + v316;
          }

          v691 = (v689 * v674) & (v689 >> 63);
          v67 = (v690 + 2 * v691);
          if (v689 < 0)
          {
            v689 = -v689;
          }

          v997 = v689;
          CGBlt_fillBytes(v681, v676, 1006648320, (v690 + 2 * v691), 2 * v689);
        }
      }

      v22 = v979;
LABEL_1002:
      v66 = v978;
      v64 = v981;
      if (v978)
      {
        goto LABEL_954;
      }

      return 1;
    case 2:
      v258 = 2 * v976;
      if (v26)
      {
        v259 = v1003[0];
        while (1)
        {
          v260 = v14;
          do
          {
            if (*v9 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              *v76 = *v22;
              _H2 = *v9;
            }

            else
            {
              __asm { FCMP            H2, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_335;
              }

              __asm { FCVT            S2, H2 }

              _H3 = *v22;
              __asm { FCVT            S3, H3 }

              _H4 = *v76;
              __asm { FCVT            S4, H4 }

              _S3 = _S3 + (_S4 * (1.0 - _S2));
              __asm { FCVT            H3, S3 }

              *v76 = *&_S3;
              LOWORD(_S3) = *v67;
              __asm { FCVT            S3, H3 }

              _S2 = _S2 + (_S3 * (1.0 - _S2));
              __asm { FCVT            H2, S2 }
            }

            *v67 = _H2;
LABEL_335:
            v271 = &v22[v976];
            if (v271 >= v64)
            {
              v272 = -v46;
            }

            else
            {
              v272 = 0;
            }

            v9 += 2 * v45 + 2 * v272;
            v22 = &v271[v272];
            v67 += 2 * v26;
            v76 = (v76 + v258);
            --v260;
          }

          while (v260);
          if (v989)
          {
            v273 = &v74[v993];
            if (v273 >= v989)
            {
              v274 = -(v990 * v977);
            }

            else
            {
              v274 = 0;
            }

            v75 += 2 * v990 + 2 * v274;
            if (v273 >= v989)
            {
              v275 = -(v993 * v977);
            }

            else
            {
              v275 = 0;
            }

            v74 = &v273[v275];
            v64 += 2 * v275 + 2 * v993;
            v9 = v75;
            v22 = v74;
          }

          else
          {
            v22 += v993;
            v9 += 2 * v990;
          }

          v76 += v995;
          v67 += 2 * v997;
          if (!--v259)
          {
            goto LABEL_951;
          }
        }
      }

      v591 = v1003[0];
LABEL_803:
      v592 = v14;
      while (*v9 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        __asm { FCMP            H2, #0 }

        if (!(_NF ^ _VF | _ZF))
        {
          __asm { FCVT            S2, H2 }

          _H3 = *v22;
          __asm { FCVT            S3, H3 }

          _H4 = *v76;
          __asm { FCVT            S4, H4 }

          _S2 = _S3 + (_S4 * (1.0 - _S2));
          __asm { FCVT            H2, S2 }

LABEL_808:
          *v76 = _H2;
        }

        v601 = &v22[v976];
        if (v601 >= v64)
        {
          v602 = -v46;
        }

        else
        {
          v602 = 0;
        }

        v9 += 2 * v45 + 2 * v602;
        v22 = &v601[v602];
        v76 = (v76 + v258);
        if (!--v592)
        {
          if (v989)
          {
            v603 = &v74[v993];
            if (v603 >= v989)
            {
              v604 = -(v990 * v977);
            }

            else
            {
              v604 = 0;
            }

            v75 += 2 * v990 + 2 * v604;
            if (v603 >= v989)
            {
              v605 = -(v993 * v977);
            }

            else
            {
              v605 = 0;
            }

            v74 = &v603[v605];
            v64 += 2 * v605 + 2 * v993;
            v9 = v75;
            v22 = v74;
          }

          else
          {
            v22 += v993;
            v9 += 2 * v990;
          }

          v76 += v995;
          v67 += 2 * v997;
          if (!--v591)
          {
LABEL_951:
            v987 = v74;
            v988 = v75;
            v1003[0] = 0;
LABEL_952:
            v66 = v978;
LABEL_953:
            v22 = v979;
            if (!v66)
            {
              return 1;
            }

LABEL_954:
            v1002 = 0;
LABEL_955:
            if (!shape_enum_clip_next(v66, &v1002 + 1, &v1002, v1013, v1003))
            {
              v78 = v66;
              goto LABEL_977;
            }

            v978 = v66;
            v979 = v22;
            if (v989)
            {
              v25 = v980;
              v76 = (v973 + 2 * v980 * v1002 + 2 * SHIDWORD(v1002));
              v662 = (v1002 + *(v13 + 60)) % v977;
              v68 = v1013[0];
              v663 = (HIDWORD(v1002) + *(v13 + 56)) % v46;
              v664 = &v22[v993 * v662];
              v74 = &v664[v663];
              v64 = &v664[v46];
              v26 = v1001;
              if (v1001)
              {
                v67 = (v975 + 2 * v974 * v1002 + 2 * SHIDWORD(v1002));
              }

              v665 = v997;
              if (v1001)
              {
                v665 = v974 - v1013[0];
              }

              v997 = v665;
              if (v999)
              {
                v45 = v999;
              }

              else
              {
                v45 = 0;
              }

              v75 = v988;
              if (v999)
              {
                v75 = v972 + 2 * v990 * v662 + 2 * v663;
                v9 = v75;
              }

              LODWORD(v14) = v1013[0];
              v22 = &v664[v663];
              v970 = (HIDWORD(v1002) + *(v13 + 56)) % v46;
              v971 = (v1002 + *(v13 + 60)) % v977;
            }

            else
            {
              v989 = 0;
              v666 = HIDWORD(v1002) * v976;
              LODWORD(v14) = v1013[0];
              v667 = v1013[0] * v976;
              v25 = v980;
              v76 = (v973 + 2 * v980 * v1002 + 2 * HIDWORD(v1002) * v976);
              v68 = v1013[0] * v976;
              v22 += v1002 * v46 + HIDWORD(v1002) * v976;
              v993 = v46 - v1013[0] * v976;
              v45 = v999;
              v26 = v1001;
              if (v1001)
              {
                v67 = (v975 + 2 * v974 * v1002 + 2 * v666);
              }

              v668 = v997;
              if (v1001)
              {
                v668 = v974 - v667;
              }

              v997 = v668;
              v669 = v972 + 2 * v1002 * v977 + 2 * v666;
              v670 = v977 - v667;
              if (v999)
              {
                v9 = v669;
              }

              v671 = v990;
              if (v999)
              {
                v671 = v670;
              }

              v990 = v671;
              v74 = v987;
              v75 = v988;
            }

            goto LABEL_67;
          }

          goto LABEL_803;
        }
      }

      _H2 = *v22;
      goto LABEL_808;
    case 3:
      v295 = 2 * v26;
      v296 = 2 * v976;
      if (v45)
      {
        v297 = v1003[0];
        do
        {
          v298 = v14;
          do
          {
            __asm { FCMP            H2, #0 }

            if (!_ZF & _CF)
            {
              v300 = *v22;
              if (_H2 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                *v76 = v300;
                v301 = *v9;
              }

              else
              {
                *v76 = _H2 * v300;
                v301 = _H2 * *v9;
              }

              *v67 = v301;
            }

            else
            {
              *v67 = 0;
              *v76 = 0;
            }

            v302 = &v22[v976];
            if (v302 >= v64)
            {
              v303 = -v46;
            }

            else
            {
              v303 = 0;
            }

            v9 += 2 * v45 + 2 * v303;
            v22 = &v302[v303];
            v67 += v295;
            v76 = (v76 + v296);
            --v298;
          }

          while (v298);
          if (v989)
          {
            v304 = &v74[v993];
            if (v304 >= v989)
            {
              v305 = -(v990 * v977);
            }

            else
            {
              v305 = 0;
            }

            v75 += 2 * v990 + 2 * v305;
            if (v304 >= v989)
            {
              v306 = -(v993 * v977);
            }

            else
            {
              v306 = 0;
            }

            v74 = &v304[v306];
            v64 += 2 * v306 + 2 * v993;
            v9 = v75;
            v22 = v74;
          }

          else
          {
            v22 += v993;
            v9 += 2 * v990;
          }

          v76 += v995;
          v67 += 2 * v997;
          --v297;
        }

        while (v297);
      }

      else
      {
        v606 = v1003[0];
        do
        {
          v607 = v14;
          do
          {
            LOWORD(v608) = 0;
            __asm { FCMP            H2, #0 }

            if (!_ZF & _CF)
            {
              v608 = *v22;
              if (_H2 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                v608 = _H2 * v608;
              }
            }

            *v76 = v608;
            v610 = &v22[v976];
            if (v610 >= v64)
            {
              v611 = -v46;
            }

            else
            {
              v611 = 0;
            }

            v9 += 2 * v611;
            v22 = &v610[v611];
            v67 += v295;
            v76 = (v76 + v296);
            --v607;
          }

          while (v607);
          if (v989)
          {
            v612 = &v74[v993];
            if (v612 >= v989)
            {
              v613 = -(v990 * v977);
            }

            else
            {
              v613 = 0;
            }

            v75 += 2 * v990 + 2 * v613;
            if (v612 >= v989)
            {
              v614 = -(v993 * v977);
            }

            else
            {
              v614 = 0;
            }

            v74 = &v612[v614];
            v64 += 2 * v614 + 2 * v993;
            v9 = v75;
            v22 = v74;
          }

          else
          {
            v22 += v993;
            v9 += 2 * v990;
          }

          v76 += v995;
          v67 += 2 * v997;
          --v606;
        }

        while (v606);
      }

      goto LABEL_951;
    case 4:
      v167 = v1003[0];
      do
      {
        v168 = v14;
        do
        {
          _H2 = *v67;
          __asm { FCVT            S2, H2 }

          v171 = 1.0 - _S2;
          if (v171 <= 0.0)
          {
            *v67 = 0;
            *v76 = 0;
          }

          else
          {
            if (v171 >= 1.0)
            {
              if (v45)
              {
                _H2 = *v9;
              }

              else
              {
                LOWORD(_H2) = COERCE_UNSIGNED_INT(1.0);
              }
            }

            else
            {
              _H3 = *v22;
              __asm { FCVT            S3, H3 }

              _S3 = v171 * _S3;
              __asm { FCVT            H3, S3 }

              *v76 = *&_S3;
              if (v45)
              {
                _H3 = *v9;
                __asm { FCVT            S3, H3 }
              }

              else
              {
                _S3 = 1.0;
              }

              _S2 = v171 * _S3;
              __asm { FCVT            H2, S2 }
            }

            *v67 = _H2;
          }

          v179 = &v22[v976];
          if (v179 >= v64)
          {
            v180 = -v46;
          }

          else
          {
            v180 = 0;
          }

          v9 += 2 * v45 + 2 * v180;
          v22 = &v179[v180];
          v67 += 2 * v26;
          v76 += v976;
          --v168;
        }

        while (v168);
        if (v989)
        {
          v181 = &v74[v993];
          if (v181 >= v989)
          {
            v182 = -(v990 * v977);
          }

          else
          {
            v182 = 0;
          }

          v75 += 2 * v990 + 2 * v182;
          if (v181 >= v989)
          {
            v183 = -(v993 * v977);
          }

          else
          {
            v183 = 0;
          }

          v74 = &v181[v183];
          v64 += 2 * v183 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        --v167;
      }

      while (v167);
      goto LABEL_951;
    case 5:
      v359 = v1003[0];
      do
      {
        v360 = v14;
        do
        {
          _H1 = *v67;
          __asm { FCVT            S1, H1 }

          _H2 = *v9;
          __asm { FCVT            S2, H2 }

          _H3 = *v22;
          __asm { FCVT            S3, H3 }

          _H4 = *v76;
          __asm { FCVT            S4, H4 }

          _S3 = ((1.0 - _S2) * _S4) + (_S3 * _S1);
          __asm { FCVT            H3, S3 }

          *v76 = *&_S3;
          _S1 = ((1.0 - _S2) * _S1) + (_S2 * _S1);
          __asm { FCVT            H1, S1 }

          *v67 = LOWORD(_S1);
          v371 = &v22[v976];
          if (v371 >= v64)
          {
            v372 = -v46;
          }

          else
          {
            v372 = 0;
          }

          v9 += 2 * v45 + 2 * v372;
          v22 = &v371[v372];
          v67 += 2 * v26;
          v76 += v976;
          --v360;
        }

        while (v360);
        if (v989)
        {
          v373 = &v74[v993];
          if (v373 >= v989)
          {
            v374 = -(v990 * v977);
          }

          else
          {
            v374 = 0;
          }

          v75 += 2 * v990 + 2 * v374;
          if (v373 >= v989)
          {
            v375 = -(v993 * v977);
          }

          else
          {
            v375 = 0;
          }

          v74 = &v373[v375];
          v64 += 2 * v375 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        --v359;
      }

      while (v359);
      goto LABEL_951;
    case 6:
      v416 = v1003[0];
      while (1)
      {
        v417 = v14;
        do
        {
          _H1 = *v67;
          __asm { FCVT            S1, H1 }

          v420 = 1.0 - _S1;
          if ((1.0 - _S1) >= 1.0)
          {
            *v76 = *v22;
            if (v45)
            {
              _H1 = *v9;
            }

            else
            {
              LOWORD(_H1) = COERCE_UNSIGNED_INT(1.0);
            }
          }

          else
          {
            if (v420 <= 0.0)
            {
              goto LABEL_570;
            }

            _H3 = *v76;
            __asm { FCVT            S3, H3 }

            _H4 = *v22;
            __asm { FCVT            S4, H4 }

            _S3 = _S3 + (_S4 * v420);
            __asm { FCVT            H3, S3 }

            *v76 = *&_S3;
            if (v45)
            {
              _H3 = *v9;
              __asm { FCVT            S3, H3 }
            }

            else
            {
              _S3 = 1.0;
            }

            _S1 = _S1 + (_S3 * v420);
            __asm { FCVT            H1, S1 }
          }

          *v67 = _H1;
LABEL_570:
          v430 = &v22[v976];
          if (v430 >= v64)
          {
            v431 = -v46;
          }

          else
          {
            v431 = 0;
          }

          v9 += 2 * v45 + 2 * v431;
          v22 = &v430[v431];
          v67 += 2 * v26;
          v76 += v976;
          --v417;
        }

        while (v417);
        if (v989)
        {
          v432 = &v74[v993];
          if (v432 >= v989)
          {
            v433 = -(v990 * v977);
          }

          else
          {
            v433 = 0;
          }

          v75 += 2 * v990 + 2 * v433;
          if (v432 >= v989)
          {
            v434 = -(v993 * v977);
          }

          else
          {
            v434 = 0;
          }

          v74 = &v432[v434];
          v64 += 2 * v434 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        if (!--v416)
        {
          goto LABEL_951;
        }
      }

    case 7:
      if (v26)
      {
        v307 = v1003[0];
        do
        {
          v308 = v14;
          do
          {
            __asm { FCMP            H2, #0 }

            if (!_ZF & _CF)
            {
              if (_H2 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                *v76 = _H2 * *v76;
                *v67 = _H2 * *v67;
              }
            }

            else
            {
              *v67 = 0;
              *v76 = 0;
            }

            v310 = &v22[v976];
            if (v310 >= v64)
            {
              v311 = -v46;
            }

            else
            {
              v311 = 0;
            }

            v9 += 2 * v45 + 2 * v311;
            v22 = &v310[v311];
            v67 += 2 * v26;
            v76 += v976;
            --v308;
          }

          while (v308);
          if (v989)
          {
            v312 = &v74[v993];
            if (v312 >= v989)
            {
              v313 = -(v990 * v977);
            }

            else
            {
              v313 = 0;
            }

            v75 += 2 * v990 + 2 * v313;
            if (v312 >= v989)
            {
              v314 = -(v993 * v977);
            }

            else
            {
              v314 = 0;
            }

            v74 = &v312[v314];
            v64 += 2 * v314 + 2 * v993;
            v9 = v75;
            v22 = v74;
          }

          else
          {
            v22 += v993;
            v9 += 2 * v990;
          }

          v76 += v995;
          v67 += 2 * v997;
          --v307;
        }

        while (v307);
        goto LABEL_951;
      }

      v615 = v1003[0];
LABEL_846:
      v616 = v14;
      while (1)
      {
        LOWORD(v617) = 0;
        __asm { FCMP            H1, #0 }

        if (!(!_ZF & _CF))
        {
          goto LABEL_851;
        }

        if (_H1 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          break;
        }

LABEL_852:
        v619 = &v22[v976];
        if (v619 >= v64)
        {
          v620 = -v46;
        }

        else
        {
          v620 = 0;
        }

        v9 += 2 * v45 + 2 * v620;
        v22 = &v619[v620];
        v76 += v976;
        if (!--v616)
        {
          if (v989)
          {
            v621 = &v74[v993];
            if (v621 >= v989)
            {
              v622 = -(v990 * v977);
            }

            else
            {
              v622 = 0;
            }

            v75 += 2 * v990 + 2 * v622;
            if (v621 >= v989)
            {
              v623 = -(v993 * v977);
            }

            else
            {
              v623 = 0;
            }

            v74 = &v621[v623];
            v64 += 2 * v623 + 2 * v993;
            v9 = v75;
            v22 = v74;
          }

          else
          {
            v22 += v993;
            v9 += 2 * v990;
          }

          v76 += v995;
          v67 += 2 * v997;
          if (!--v615)
          {
            goto LABEL_951;
          }

          goto LABEL_846;
        }
      }

      v617 = _H1 * *v76;
LABEL_851:
      *v76 = v617;
      goto LABEL_852;
    case 8:
      if (v26)
      {
        v471 = v1003[0];
        do
        {
          v472 = v14;
          do
          {
            _H2 = *v9;
            __asm { FCVT            S2, H2 }

            v475 = 1.0 - _S2;
            if (v475 <= 0.0)
            {
              *v67 = 0;
              *v76 = 0;
            }

            else if (v475 < 1.0)
            {
              _H3 = *v76;
              __asm { FCVT            S3, H3 }

              _S3 = v475 * _S3;
              __asm { FCVT            H3, S3 }

              *v76 = *&_S3;
              LOWORD(_S3) = *v67;
              __asm { FCVT            S3, H3 }

              _S2 = v475 * _S3;
              __asm { FCVT            H2, S2 }

              *v67 = LOWORD(_S2);
            }

            v481 = &v22[v976];
            if (v481 >= v64)
            {
              v482 = -v46;
            }

            else
            {
              v482 = 0;
            }

            v9 += 2 * v45 + 2 * v482;
            v22 = &v481[v482];
            v67 += 2 * v26;
            v76 += v976;
            --v472;
          }

          while (v472);
          if (v989)
          {
            v483 = &v74[v993];
            if (v483 >= v989)
            {
              v484 = -(v990 * v977);
            }

            else
            {
              v484 = 0;
            }

            v75 += 2 * v990 + 2 * v484;
            if (v483 >= v989)
            {
              v485 = -(v993 * v977);
            }

            else
            {
              v485 = 0;
            }

            v74 = &v483[v485];
            v64 += 2 * v485 + 2 * v993;
            v9 = v75;
            v22 = v74;
          }

          else
          {
            v22 += v993;
            v9 += 2 * v990;
          }

          v76 += v995;
          v67 += 2 * v997;
          --v471;
        }

        while (v471);
        goto LABEL_951;
      }

      v624 = v1003[0];
LABEL_868:
      v625 = v14;
      while (1)
      {
        _H1 = *v9;
        __asm { FCVT            S1, H1 }

        v628 = 1.0 - _S1;
        _H2 = 0;
        if (v628 <= 0.0)
        {
          goto LABEL_872;
        }

        if (v628 < 1.0)
        {
          break;
        }

LABEL_873:
        v633 = &v22[v976];
        if (v633 >= v64)
        {
          v634 = -v46;
        }

        else
        {
          v634 = 0;
        }

        v9 += 2 * v45 + 2 * v634;
        v22 = &v633[v634];
        v76 += v976;
        if (!--v625)
        {
          if (v989)
          {
            v635 = &v74[v993];
            if (v635 >= v989)
            {
              v636 = -(v990 * v977);
            }

            else
            {
              v636 = 0;
            }

            v75 += 2 * v990 + 2 * v636;
            if (v635 >= v989)
            {
              v637 = -(v993 * v977);
            }

            else
            {
              v637 = 0;
            }

            v74 = &v635[v637];
            v64 += 2 * v637 + 2 * v993;
            v9 = v75;
            v22 = v74;
          }

          else
          {
            v22 += v993;
            v9 += 2 * v990;
          }

          v76 += v995;
          v67 += 2 * v997;
          if (!--v624)
          {
            goto LABEL_951;
          }

          goto LABEL_868;
        }
      }

      _H2 = *v76;
      __asm { FCVT            S2, H2 }

      _S1 = v628 * _S2;
      __asm { FCVT            H2, S1 }

LABEL_872:
      *v76 = _H2;
      goto LABEL_873;
    case 9:
      v197 = v1003[0];
      do
      {
        v198 = v14;
        do
        {
          _H1 = *v67;
          __asm { FCVT            S1, H1 }

          _H2 = *v9;
          __asm { FCVT            S2, H2 }

          _H3 = *v22;
          __asm { FCVT            S3, H3 }

          _H5 = *v76;
          __asm { FCVT            S5, H5 }

          _S3 = (_S2 * _S5) + (_S3 * (1.0 - _S1));
          __asm { FCVT            H3, S3 }

          *v76 = *&_S3;
          _S1 = (_S1 * _S2) + (_S2 * (1.0 - _S1));
          __asm { FCVT            H1, S1 }

          *v67 = LOWORD(_S1);
          v209 = &v22[v976];
          if (v209 >= v64)
          {
            v210 = -v46;
          }

          else
          {
            v210 = 0;
          }

          v9 += 2 * v45 + 2 * v210;
          v22 = &v209[v210];
          v67 += 2 * v26;
          v76 += v976;
          --v198;
        }

        while (v198);
        if (v989)
        {
          v211 = &v74[v993];
          if (v211 >= v989)
          {
            v212 = -(v990 * v977);
          }

          else
          {
            v212 = 0;
          }

          v75 += 2 * v990 + 2 * v212;
          if (v211 >= v989)
          {
            v213 = -(v993 * v977);
          }

          else
          {
            v213 = 0;
          }

          v74 = &v211[v213];
          v64 += 2 * v213 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        --v197;
      }

      while (v197);
      goto LABEL_951;
    case 10:
      v454 = v1003[0];
      do
      {
        v455 = v14;
        do
        {
          _H1 = *v67;
          __asm { FCVT            S1, H1 }

          _H2 = *v9;
          __asm { FCVT            S2, H2 }

          _H3 = *v22;
          __asm { FCVT            S3, H3 }

          _H5 = *v76;
          __asm { FCVT            S5, H5 }

          _S3 = ((1.0 - _S2) * _S5) + (_S3 * (1.0 - _S1));
          __asm { FCVT            H3, S3 }

          *v76 = *&_S3;
          _S1 = ((1.0 - _S2) * _S1) + (_S2 * (1.0 - _S1));
          __asm { FCVT            H1, S1 }

          *v67 = LOWORD(_S1);
          v466 = &v22[v976];
          if (v466 >= v64)
          {
            v467 = -v46;
          }

          else
          {
            v467 = 0;
          }

          v9 += 2 * v45 + 2 * v467;
          v22 = &v466[v467];
          v67 += 2 * v26;
          v76 += v976;
          --v455;
        }

        while (v455);
        if (v989)
        {
          v468 = &v74[v993];
          if (v468 >= v989)
          {
            v469 = -(v990 * v977);
          }

          else
          {
            v469 = 0;
          }

          v75 += 2 * v990 + 2 * v469;
          if (v468 >= v989)
          {
            v470 = -(v993 * v977);
          }

          else
          {
            v470 = 0;
          }

          v74 = &v468[v470];
          v64 += 2 * v470 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        --v454;
      }

      while (v454);
      goto LABEL_951;
    case 11:
      v146 = 2 * v976;
      if (v26)
      {
        v147 = v1003[0];
        do
        {
          v148 = v14;
          do
          {
            if (v45)
            {
              _H1 = *v9;
              __asm { FCVT            S1, H1 }
            }

            else
            {
              _S1 = 1.0;
            }

            _H2 = *v67;
            __asm { FCVT            S2, H2 }

            v153 = _S1 + _S2;
            _H4 = *v76;
            __asm { FCVT            S4, H4 }

            v156 = _S2 - _S4;
            *&_S4 = *v22;
            __asm { FCVT            S4, H4 }

            v158 = v156 + (_S1 - _S4);
            if (v153 <= 1.0)
            {
              _S2 = v153;
            }

            else
            {
              _S2 = 1.0;
            }

            __asm { FCVT            H3, S2 }

            *v67 = _H3;
            _S1 = _S2 - v158;
            __asm { FCVT            H1, S1 }

            *v76 = *&_S1;
            v162 = &v22[v976];
            if (v162 >= v64)
            {
              v163 = -v46;
            }

            else
            {
              v163 = 0;
            }

            v9 += 2 * v45 + 2 * v163;
            v22 = &v162[v163];
            v67 += 2 * v26;
            v76 = (v76 + v146);
            --v148;
          }

          while (v148);
          if (v989)
          {
            v164 = &v74[v993];
            if (v164 >= v989)
            {
              v165 = -(v990 * v977);
            }

            else
            {
              v165 = 0;
            }

            v75 += 2 * v990 + 2 * v165;
            if (v164 >= v989)
            {
              v166 = -(v993 * v977);
            }

            else
            {
              v166 = 0;
            }

            v74 = &v164[v166];
            v64 += 2 * v166 + 2 * v993;
            v9 = v75;
            v22 = v74;
          }

          else
          {
            v22 += v993;
            v9 += 2 * v990;
          }

          v76 += v995;
          v67 += 2 * v997;
          --v147;
        }

        while (v147);
      }

      else
      {
        v570 = v1003[0];
        do
        {
          v571 = v14;
          do
          {
            _S2 = 1.0;
            if (v45)
            {
              _H2 = *v9;
              __asm { FCVT            S2, H2 }
            }

            _H3 = *v76;
            __asm { FCVT            S3, H3 }

            v576 = 1.0 - _S3;
            *&_S3 = *v22;
            __asm { FCVT            S3, H3 }

            _S1 = 1.0 - (v576 + (_S2 - _S3));
            __asm { FCVT            H1, S1 }

            *v76 = *&_S1;
            v579 = &v22[v976];
            if (v579 >= v64)
            {
              v580 = -v46;
            }

            else
            {
              v580 = 0;
            }

            v9 += 2 * v45 + 2 * v580;
            v22 = &v579[v580];
            v76 = (v76 + v146);
            --v571;
          }

          while (v571);
          if (v989)
          {
            v581 = &v74[v993];
            if (v581 >= v989)
            {
              v582 = -(v990 * v977);
            }

            else
            {
              v582 = 0;
            }

            v75 += 2 * v990 + 2 * v582;
            if (v581 >= v989)
            {
              v583 = -(v993 * v977);
            }

            else
            {
              v583 = 0;
            }

            v74 = &v581[v583];
            v64 += 2 * v583 + 2 * v993;
            v9 = v75;
            v22 = v74;
          }

          else
          {
            v22 += v993;
            v9 += 2 * v990;
          }

          v76 += v995;
          v67 += 2 * v997;
          --v570;
        }

        while (v570);
      }

      goto LABEL_951;
    case 12:
      if (v26)
      {
        v184 = v1003[0];
        do
        {
          v185 = v14;
          do
          {
            if (v45)
            {
              _H1 = *v9;
              __asm { FCVT            S1, H1 }
            }

            else
            {
              _S1 = 1.0;
            }

            _H2 = *v67;
            __asm { FCVT            S2, H2 }

            _S1 = _S1 + _S2;
            if (_S1 > 1.0)
            {
              _S1 = 1.0;
            }

            *v76 = *v76 + *v22;
            __asm { FCVT            H1, S1 }

            *v67 = _H1;
            v192 = &v22[v976];
            if (v192 >= v64)
            {
              v193 = -v46;
            }

            else
            {
              v193 = 0;
            }

            v9 += 2 * v45 + 2 * v193;
            v22 = &v192[v193];
            v67 += 2 * v26;
            v76 += v976;
            --v185;
          }

          while (v185);
          if (v989)
          {
            v194 = &v74[v993];
            if (v194 >= v989)
            {
              v195 = -(v990 * v977);
            }

            else
            {
              v195 = 0;
            }

            v75 += 2 * v990 + 2 * v195;
            if (v194 >= v989)
            {
              v196 = -(v993 * v977);
            }

            else
            {
              v196 = 0;
            }

            v74 = &v194[v196];
            v64 += 2 * v196 + 2 * v993;
            v9 = v75;
            v22 = v74;
          }

          else
          {
            v22 += v993;
            v9 += 2 * v990;
          }

          v76 += v995;
          v67 += 2 * v997;
          --v184;
        }

        while (v184);
      }

      else
      {
        v584 = v1003[0];
        do
        {
          v585 = v14;
          do
          {
            *v76 = *v76 + *v22;
            v586 = &v22[v976];
            if (v586 >= v64)
            {
              v587 = -v46;
            }

            else
            {
              v587 = 0;
            }

            v9 += 2 * v45 + 2 * v587;
            v22 = &v586[v587];
            v76 += v976;
            --v585;
          }

          while (v585);
          if (v989)
          {
            v588 = &v74[v993];
            if (v588 >= v989)
            {
              v589 = -(v990 * v977);
            }

            else
            {
              v589 = 0;
            }

            v75 += 2 * v990 + 2 * v589;
            if (v588 >= v989)
            {
              v590 = -(v993 * v977);
            }

            else
            {
              v590 = 0;
            }

            v74 = &v588[v590];
            v64 += 2 * v590 + 2 * v993;
            v9 = v75;
            v22 = v74;
          }

          else
          {
            v22 += v993;
            v9 += 2 * v990;
          }

          v76 += v995;
          v67 += 2 * v997;
          --v584;
        }

        while (v584);
      }

      goto LABEL_951;
    case 13:
      v395 = v1003[0];
      while (1)
      {
        v396 = v14;
        do
        {
          _S2 = 1.0;
          _S1 = 1.0;
          if (v45)
          {
            __asm { FCMP            H1, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_543;
            }

            __asm { FCVT            S1, H1 }
          }

          if (v26)
          {
            __asm { FCMP            H2, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H1, S1 }

LABEL_541:
              *v67 = _H1;
              goto LABEL_543;
            }

            __asm { FCVT            S2, H2 }
          }

          _H3 = *v76;
          _H4 = *v22;
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          v405 = _S3 * _S4;
          _S3 = (_S3 * _S4) + (_S3 * (1.0 - _S1));
          if (_S1 == 1.0)
          {
            _S3 = v405;
          }

          v407 = _S3 + (_S4 * (1.0 - _S2));
          if (_S2 != 1.0)
          {
            _S3 = v407;
          }

          __asm { FCVT            H3, S3 }

          if (v26)
          {
            _S1 = (_S1 + _S2) - (_S2 * _S1);
            __asm { FCVT            H1, S1 }

            *v76 = _H3;
            goto LABEL_541;
          }

          *v76 = _H3;
LABEL_543:
          v411 = &v22[v976];
          if (v411 >= v64)
          {
            v412 = -v46;
          }

          else
          {
            v412 = 0;
          }

          v9 += 2 * v45 + 2 * v412;
          v22 = &v411[v412];
          v67 += 2 * v26;
          v76 += v976;
          --v396;
        }

        while (v396);
        if (v989)
        {
          v413 = &v74[v993];
          if (v413 >= v989)
          {
            v414 = -(v990 * v977);
          }

          else
          {
            v414 = 0;
          }

          v75 += 2 * v990 + 2 * v414;
          if (v413 >= v989)
          {
            v415 = -(v993 * v977);
          }

          else
          {
            v415 = 0;
          }

          v74 = &v413[v415];
          v64 += 2 * v415 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        if (!--v395)
        {
          goto LABEL_951;
        }
      }

    case 14:
      v127 = v1003[0];
      while (1)
      {
        v128 = v14;
        do
        {
          _S2 = 1.0;
          _S1 = 1.0;
          if (v45)
          {
            __asm { FCMP            H1, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_154;
            }

            __asm { FCVT            S1, H1 }
          }

          if (v26)
          {
            __asm { FCMP            H2, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H1, S1 }

LABEL_152:
              *v67 = _H1;
              goto LABEL_154;
            }

            __asm { FCVT            S2, H2 }
          }

          _H3 = *v76;
          _H4 = *v22;
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          _S3 = _S3 + (_S4 * (1.0 - _S3));
          __asm { FCVT            H3, S3 }

          if (v26)
          {
            _S1 = (_S1 + _S2) - (_S2 * _S1);
            __asm { FCVT            H1, S1 }

            *v76 = _H3;
            goto LABEL_152;
          }

          *v76 = _H3;
LABEL_154:
          v141 = &v22[v976];
          if (v141 >= v64)
          {
            v142 = -v46;
          }

          else
          {
            v142 = 0;
          }

          v9 += 2 * v45 + 2 * v142;
          v22 = &v141[v142];
          v67 += 2 * v26;
          v76 += v976;
          --v128;
        }

        while (v128);
        if (v989)
        {
          v143 = &v74[v993];
          if (v143 >= v989)
          {
            v144 = -(v990 * v977);
          }

          else
          {
            v144 = 0;
          }

          v75 += 2 * v990 + 2 * v144;
          if (v143 >= v989)
          {
            v145 = -(v993 * v977);
          }

          else
          {
            v145 = 0;
          }

          v74 = &v143[v145];
          v64 += 2 * v145 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        if (!--v127)
        {
          goto LABEL_951;
        }
      }

    case 15:
      v987 = v74;
      v988 = v75;
      v276 = v45;
      v277 = v1003[0];
      v278 = 2 * v26;
      v279 = 2 * v976;
      v968 = v46;
      v280 = -v46;
      while (1)
      {
        v982 = v277;
        v281 = v14;
        do
        {
          _S1 = 1.0;
          _S3 = 1.0;
          if (v45)
          {
            __asm { FCMP            H0, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_362;
            }

            __asm { FCVT            S3, H0 }
          }

          if (v26)
          {
            __asm { FCMP            H0, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H0, S3 }

              *v67 = _H0;
              goto LABEL_362;
            }

            __asm { FCVT            S1, H0 }
          }

          _Q0.n128_u16[0] = *v76;
          v7.n128_u16[0] = *v22;
          LODWORD(v26) = v1001;
          *v76 = PDAoverlayPDA(_Q0, _S1, v7, _S3);
          if (v1001)
          {
            *v67 = v286;
          }

          LODWORD(v45) = v999;
          v280 = -v46;
          v279 = 2 * v976;
LABEL_362:
          v288 = &v22[v976];
          if (v288 >= v64)
          {
            v289 = v280;
          }

          else
          {
            v289 = 0;
          }

          v9 += 2 * v276 + 2 * v289;
          v22 = &v288[v289];
          v67 += v278;
          v76 = (v76 + v279);
          --v281;
        }

        while (v281);
        if (v989)
        {
          v290 = v987 + 2 * v993;
          v291 = -(v990 * v977);
          if (v290 < v989)
          {
            v291 = 0;
          }

          v292 = v988 + 2 * v990 + 2 * v291;
          v293 = -(v993 * v977);
          if (v290 < v989)
          {
            v293 = 0;
          }

          v294 = (v290 + 2 * v293);
          v64 += 2 * v293 + 2 * v993;
          v9 = (v988 + 2 * v990 + 2 * v291);
          v22 = v294;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
          v294 = v987;
          v292 = v988;
        }

        v987 = v294;
        v988 = v292;
        v76 += v995;
        v67 += 2 * v997;
        v277 = v982 - 1;
        if (v982 == 1)
        {
LABEL_703:
          v1003[0] = 0;
          v46 = v968;
          v11 = v969;
          v13 = v967;
          v66 = v978;
          v22 = v979;
          if (v978)
          {
            goto LABEL_954;
          }

          return 1;
        }
      }

    case 16:
      v106 = v1003[0];
      while (1)
      {
        v107 = v14;
        do
        {
          _S2 = 1.0;
          _S1 = 1.0;
          if (v45)
          {
            __asm { FCMP            H1, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_126;
            }

            __asm { FCVT            S1, H1 }
          }

          if (v26)
          {
            __asm { FCMP            H2, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H1, S1 }

LABEL_124:
              *v67 = _H1;
              goto LABEL_126;
            }

            __asm { FCVT            S2, H2 }
          }

          _H3 = *v76;
          _H4 = *v22;
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          v116 = _S1 * _S3;
          if ((_S2 * _S4) < (_S1 * _S3))
          {
            v116 = _S2 * _S4;
          }

          _S3 = v116 + (_S3 * (1.0 - _S1));
          if (_S1 == 1.0)
          {
            _S3 = v116;
          }

          v118 = _S3 + (_S4 * (1.0 - _S2));
          if (_S2 != 1.0)
          {
            _S3 = v118;
          }

          __asm { FCVT            H3, S3 }

          if (v26)
          {
            _S1 = (_S1 + _S2) - (_S2 * _S1);
            __asm { FCVT            H1, S1 }

            *v76 = _H3;
            goto LABEL_124;
          }

          *v76 = _H3;
LABEL_126:
          v122 = &v22[v976];
          if (v122 >= v64)
          {
            v123 = -v46;
          }

          else
          {
            v123 = 0;
          }

          v9 += 2 * v45 + 2 * v123;
          v22 = &v122[v123];
          v67 += 2 * v26;
          v76 += v976;
          --v107;
        }

        while (v107);
        if (v989)
        {
          v124 = &v74[v993];
          if (v124 >= v989)
          {
            v125 = -(v990 * v977);
          }

          else
          {
            v125 = 0;
          }

          v75 += 2 * v990 + 2 * v125;
          if (v124 >= v989)
          {
            v126 = -(v993 * v977);
          }

          else
          {
            v126 = 0;
          }

          v74 = &v124[v126];
          v64 += 2 * v126 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        if (!--v106)
        {
          goto LABEL_951;
        }
      }

    case 17:
      v319 = v1003[0];
      while (1)
      {
        v320 = v14;
        do
        {
          _S2 = 1.0;
          _S1 = 1.0;
          if (v45)
          {
            __asm { FCMP            H1, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_444;
            }

            __asm { FCVT            S1, H1 }
          }

          if (v26)
          {
            __asm { FCMP            H2, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H1, S1 }

LABEL_442:
              *v67 = _H1;
              goto LABEL_444;
            }

            __asm { FCVT            S2, H2 }
          }

          _H3 = *v76;
          _H4 = *v22;
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          v329 = _S1 * _S3;
          if ((_S2 * _S4) > (_S1 * _S3))
          {
            v329 = _S2 * _S4;
          }

          _S3 = v329 + (_S3 * (1.0 - _S1));
          if (_S1 == 1.0)
          {
            _S3 = v329;
          }

          v331 = _S3 + (_S4 * (1.0 - _S2));
          if (_S2 != 1.0)
          {
            _S3 = v331;
          }

          __asm { FCVT            H3, S3 }

          if (v26)
          {
            _S1 = (_S1 + _S2) - (_S2 * _S1);
            __asm { FCVT            H1, S1 }

            *v76 = _H3;
            goto LABEL_442;
          }

          *v76 = _H3;
LABEL_444:
          v335 = &v22[v976];
          if (v335 >= v64)
          {
            v336 = -v46;
          }

          else
          {
            v336 = 0;
          }

          v9 += 2 * v45 + 2 * v336;
          v22 = &v335[v336];
          v67 += 2 * v26;
          v76 += v976;
          --v320;
        }

        while (v320);
        if (v989)
        {
          v337 = &v74[v993];
          if (v337 >= v989)
          {
            v338 = -(v990 * v977);
          }

          else
          {
            v338 = 0;
          }

          v75 += 2 * v990 + 2 * v338;
          if (v337 >= v989)
          {
            v339 = -(v993 * v977);
          }

          else
          {
            v339 = 0;
          }

          v74 = &v337[v339];
          v64 += 2 * v339 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        if (!--v319)
        {
          goto LABEL_951;
        }
      }

    case 18:
      v987 = v74;
      v988 = v75;
      v435 = v45;
      v436 = v1003[0];
      v437 = 2 * v26;
      v438 = 2 * v976;
      v968 = v46;
      v439 = -v46;
      while (1)
      {
        v985 = v436;
        v440 = v14;
        do
        {
          _S1 = 1.0;
          _S3 = 1.0;
          if (v45)
          {
            __asm { FCMP            H0, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_597;
            }

            __asm { FCVT            S3, H0 }
          }

          if (v26)
          {
            __asm { FCMP            H0, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H0, S3 }

              *v67 = _H0;
              goto LABEL_597;
            }

            __asm { FCVT            S1, H0 }
          }

          _Q0.n128_u16[0] = *v76;
          v7.n128_u16[0] = *v22;
          LODWORD(v26) = v1001;
          *v76 = PDAcolordodgePDA(_Q0, _S1, v7, _S3);
          if (v1001)
          {
            *v67 = v445;
          }

          LODWORD(v45) = v999;
          v439 = -v46;
          v438 = 2 * v976;
LABEL_597:
          v447 = &v22[v976];
          if (v447 >= v64)
          {
            v448 = v439;
          }

          else
          {
            v448 = 0;
          }

          v9 += 2 * v435 + 2 * v448;
          v22 = &v447[v448];
          v67 += v437;
          v76 = (v76 + v438);
          --v440;
        }

        while (v440);
        if (v989)
        {
          v449 = v987 + 2 * v993;
          v450 = -(v990 * v977);
          if (v449 < v989)
          {
            v450 = 0;
          }

          v451 = v988 + 2 * v990 + 2 * v450;
          v452 = -(v993 * v977);
          if (v449 < v989)
          {
            v452 = 0;
          }

          v453 = (v449 + 2 * v452);
          v64 += 2 * v452 + 2 * v993;
          v9 = (v988 + 2 * v990 + 2 * v450);
          v22 = v453;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
          v453 = v987;
          v451 = v988;
        }

        v987 = v453;
        v988 = v451;
        v76 += v995;
        v67 += 2 * v997;
        v436 = v985 - 1;
        if (v985 == 1)
        {
          goto LABEL_703;
        }
      }

    case 19:
      v987 = v74;
      v988 = v75;
      v511 = v45;
      v512 = v1003[0];
      v513 = 2 * v26;
      v514 = 2 * v976;
      v968 = v46;
      v515 = -v46;
      while (1)
      {
        v986 = v512;
        v516 = v14;
        do
        {
          _S1 = 1.0;
          _S3 = 1.0;
          if (v45)
          {
            __asm { FCMP            H0, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_691;
            }

            __asm { FCVT            S3, H0 }
          }

          if (v26)
          {
            __asm { FCMP            H0, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H0, S3 }

              *v67 = _H0;
              goto LABEL_691;
            }

            __asm { FCVT            S1, H0 }
          }

          _Q0.n128_u16[0] = *v76;
          v7.n128_u16[0] = *v22;
          LODWORD(v26) = v1001;
          *v76 = PDAcolorburnPDA(_Q0, _S1, v7, _S3);
          if (v1001)
          {
            *v67 = v521;
          }

          LODWORD(v45) = v999;
          v515 = -v46;
          v514 = 2 * v976;
LABEL_691:
          v523 = &v22[v976];
          if (v523 >= v64)
          {
            v524 = v515;
          }

          else
          {
            v524 = 0;
          }

          v9 += 2 * v511 + 2 * v524;
          v22 = &v523[v524];
          v67 += v513;
          v76 = (v76 + v514);
          --v516;
        }

        while (v516);
        if (v989)
        {
          v525 = v987 + 2 * v993;
          v526 = -(v990 * v977);
          if (v525 < v989)
          {
            v526 = 0;
          }

          v527 = v988 + 2 * v990 + 2 * v526;
          v528 = -(v993 * v977);
          if (v525 < v989)
          {
            v528 = 0;
          }

          v529 = (v525 + 2 * v528);
          v64 += 2 * v528 + 2 * v993;
          v9 = (v988 + 2 * v990 + 2 * v526);
          v22 = v529;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
          v529 = v987;
          v527 = v988;
        }

        v987 = v529;
        v988 = v527;
        v76 += v995;
        v67 += 2 * v997;
        v512 = v986 - 1;
        if (v986 == 1)
        {
          goto LABEL_703;
        }
      }

    case 20:
      v987 = v74;
      v988 = v75;
      v340 = v45;
      v341 = v1003[0];
      v342 = 2 * v26;
      v343 = 2 * v976;
      v968 = v46;
      v344 = -v46;
      while (1)
      {
        v983 = v341;
        v345 = v14;
        do
        {
          _S1 = 1.0;
          _S3 = 1.0;
          if (v45)
          {
            __asm { FCMP            H0, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_471;
            }

            __asm { FCVT            S3, H0 }
          }

          if (v26)
          {
            __asm { FCMP            H0, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H0, S3 }

              *v67 = _H0;
              goto LABEL_471;
            }

            __asm { FCVT            S1, H0 }
          }

          _Q0.n128_u16[0] = *v76;
          v7.n128_u16[0] = *v22;
          LODWORD(v26) = v1001;
          *v76 = PDAsoftlightPDA(_Q0, _S1, v7, _S3);
          if (v1001)
          {
            *v67 = v350;
          }

          LODWORD(v45) = v999;
          v344 = -v46;
          v343 = 2 * v976;
LABEL_471:
          v352 = &v22[v976];
          if (v352 >= v64)
          {
            v353 = v344;
          }

          else
          {
            v353 = 0;
          }

          v9 += 2 * v340 + 2 * v353;
          v22 = &v352[v353];
          v67 += v342;
          v76 = (v76 + v343);
          --v345;
        }

        while (v345);
        if (v989)
        {
          v354 = v987 + 2 * v993;
          v355 = -(v990 * v977);
          if (v354 < v989)
          {
            v355 = 0;
          }

          v356 = v988 + 2 * v990 + 2 * v355;
          v357 = -(v993 * v977);
          if (v354 < v989)
          {
            v357 = 0;
          }

          v358 = (v354 + 2 * v357);
          v64 += 2 * v357 + 2 * v993;
          v9 = (v988 + 2 * v990 + 2 * v355);
          v22 = v358;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
          v358 = v987;
          v356 = v988;
        }

        v987 = v358;
        v988 = v356;
        v76 += v995;
        v67 += 2 * v997;
        v341 = v983 - 1;
        if (v983 == 1)
        {
          goto LABEL_703;
        }
      }

    case 21:
      v987 = v74;
      v988 = v75;
      v376 = v45;
      v377 = v1003[0];
      v378 = 2 * v26;
      v379 = 2 * v976;
      v968 = v46;
      v380 = -v46;
      while (1)
      {
        v984 = v377;
        v381 = v14;
        do
        {
          _S1 = 1.0;
          _S3 = 1.0;
          if (v45)
          {
            __asm { FCMP            H0, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_513;
            }

            __asm { FCVT            S3, H0 }
          }

          if (v26)
          {
            __asm { FCMP            H0, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H0, S3 }

              *v67 = _H0;
              goto LABEL_513;
            }

            __asm { FCVT            S1, H0 }
          }

          _Q0.n128_u16[0] = *v76;
          v7.n128_u16[0] = *v22;
          LODWORD(v26) = v1001;
          *v76 = PDAhardlightPDA(_Q0, _S1, v7, _S3);
          if (v1001)
          {
            *v67 = v386;
          }

          LODWORD(v45) = v999;
          v380 = -v46;
          v379 = 2 * v976;
LABEL_513:
          v388 = &v22[v976];
          if (v388 >= v64)
          {
            v389 = v380;
          }

          else
          {
            v389 = 0;
          }

          v9 += 2 * v376 + 2 * v389;
          v22 = &v388[v389];
          v67 += v378;
          v76 = (v76 + v379);
          --v381;
        }

        while (v381);
        if (v989)
        {
          v390 = v987 + 2 * v993;
          v391 = -(v990 * v977);
          if (v390 < v989)
          {
            v391 = 0;
          }

          v392 = v988 + 2 * v990 + 2 * v391;
          v393 = -(v993 * v977);
          if (v390 < v989)
          {
            v393 = 0;
          }

          v394 = (v390 + 2 * v393);
          v64 += 2 * v393 + 2 * v993;
          v9 = (v988 + 2 * v990 + 2 * v391);
          v22 = v394;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
          v394 = v987;
          v392 = v988;
        }

        v987 = v394;
        v988 = v392;
        v76 += v995;
        v67 += 2 * v997;
        v377 = v984 - 1;
        if (v984 == 1)
        {
          goto LABEL_703;
        }
      }

    case 22:
      v486 = v1003[0];
      while (1)
      {
        v487 = v14;
        do
        {
          _S1 = 1.0;
          _S0 = 1.0;
          if (v45)
          {
            __asm { FCMP            H0, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_664;
            }

            __asm { FCVT            S0, H0 }
          }

          if (v26)
          {
            __asm { FCMP            H1, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H0, S0 }

LABEL_662:
              *v67 = _H0;
              goto LABEL_664;
            }

            __asm { FCVT            S1, H1 }
          }

          _H2 = *v76;
          _H3 = *v22;
          __asm
          {
            FCVT            S2, H2
            FCVT            S3, H3
          }

          v496 = _S2 + _S3;
          v497 = _S0 * _S2;
          v498 = _S1 * _S3;
          v499 = v496 - v497;
          v500 = v497 - v498;
          v501 = v499 - v498;
          if (v500 < 0.0)
          {
            v500 = -v500;
          }

          _S2 = v501 + v500;
          __asm { FCVT            H2, S2 }

          if (v26)
          {
            _S0 = (_S0 + _S1) - (_S1 * _S0);
            __asm { FCVT            H0, S0 }

            *v76 = _H2;
            goto LABEL_662;
          }

          *v76 = _H2;
LABEL_664:
          v506 = &v22[v976];
          if (v506 >= v64)
          {
            v507 = -v46;
          }

          else
          {
            v507 = 0;
          }

          v9 += 2 * v45 + 2 * v507;
          v22 = &v506[v507];
          v67 += 2 * v26;
          v76 += v976;
          --v487;
        }

        while (v487);
        if (v989)
        {
          v508 = &v74[v993];
          if (v508 >= v989)
          {
            v509 = -(v990 * v977);
          }

          else
          {
            v509 = 0;
          }

          v75 += 2 * v990 + 2 * v509;
          if (v508 >= v989)
          {
            v510 = -(v993 * v977);
          }

          else
          {
            v510 = 0;
          }

          v74 = &v508[v510];
          v64 += 2 * v510 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        if (!--v486)
        {
          goto LABEL_951;
        }
      }

    case 23:
      v530 = v1003[0];
      while (1)
      {
        v531 = v14;
        do
        {
          _S2 = 1.0;
          _S1 = 1.0;
          if (v45)
          {
            __asm { FCMP            H1, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_718;
            }

            __asm { FCVT            S1, H1 }
          }

          if (v26)
          {
            __asm { FCMP            H2, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H1, S1 }

LABEL_716:
              *v67 = _H1;
              goto LABEL_718;
            }

            __asm { FCVT            S2, H2 }
          }

          _H3 = *v76;
          _H4 = *v22;
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          _S3 = (_S3 + _S4) + ((_S3 * _S4) * -2.0);
          __asm { FCVT            H3, S3 }

          if (v26)
          {
            _S1 = (_S1 + _S2) - (_S2 * _S1);
            __asm { FCVT            H1, S1 }

            *v76 = _H3;
            goto LABEL_716;
          }

          *v76 = _H3;
LABEL_718:
          v544 = &v22[v976];
          if (v544 >= v64)
          {
            v545 = -v46;
          }

          else
          {
            v545 = 0;
          }

          v9 += 2 * v45 + 2 * v545;
          v22 = &v544[v545];
          v67 += 2 * v26;
          v76 += v976;
          --v531;
        }

        while (v531);
        if (v989)
        {
          v546 = &v74[v993];
          if (v546 >= v989)
          {
            v547 = -(v990 * v977);
          }

          else
          {
            v547 = 0;
          }

          v75 += 2 * v990 + 2 * v547;
          if (v546 >= v989)
          {
            v548 = -(v993 * v977);
          }

          else
          {
            v548 = 0;
          }

          v74 = &v546[v548];
          v64 += 2 * v548 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        if (!--v530)
        {
          goto LABEL_951;
        }
      }

    case 24:
      v236 = v1003[0];
      while (1)
      {
        v237 = v14;
        do
        {
          _S3 = 1.0;
          _S2 = 1.0;
          if (v45)
          {
            __asm { FCMP            H2, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_312;
            }

            __asm { FCVT            S2, H2 }
          }

          if (v26)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H2, S2 }

LABEL_310:
              *v67 = _H2;
              goto LABEL_312;
            }

            __asm { FCVT            S3, H3 }
          }

          _H4 = *v76;
          _H5 = *v22;
          __asm
          {
            FCVT            S4, H4
            FCVT            S5, H5
          }

          v246 = _S4 - (_S2 * _S4);
          if (_S2 == 1.0)
          {
            v247 = 0.0;
          }

          else
          {
            _S4 = _S2 * _S4;
            v247 = v246;
          }

          v248 = (v247 + _S5) - (_S3 * _S5);
          if (_S3 == 1.0)
          {
            v248 = v247;
          }

          _S4 = _S4 + v248;
          __asm { FCVT            H4, S4 }

          if (v26)
          {
            _S2 = (_S2 + _S3) - (_S2 * _S3);
            __asm { FCVT            H2, S2 }

            *v76 = _H4;
            goto LABEL_310;
          }

          *v76 = _H4;
LABEL_312:
          v253 = &v22[v976];
          if (v253 >= v64)
          {
            v254 = -v46;
          }

          else
          {
            v254 = 0;
          }

          v9 += 2 * v45 + 2 * v254;
          v22 = &v253[v254];
          v67 += 2 * v26;
          v76 += v976;
          --v237;
        }

        while (v237);
        if (v989)
        {
          v255 = &v74[v993];
          if (v255 >= v989)
          {
            v256 = -(v990 * v977);
          }

          else
          {
            v256 = 0;
          }

          v75 += 2 * v990 + 2 * v256;
          if (v255 >= v989)
          {
            v257 = -(v993 * v977);
          }

          else
          {
            v257 = 0;
          }

          v74 = &v255[v257];
          v64 += 2 * v257 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        if (!--v236)
        {
          goto LABEL_951;
        }
      }

    case 25:
      v214 = v1003[0];
      while (1)
      {
        v215 = v14;
        do
        {
          _S3 = 1.0;
          _S2 = 1.0;
          if (v45)
          {
            __asm { FCMP            H2, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_279;
            }

            __asm { FCVT            S2, H2 }
          }

          if (v26)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H2, S2 }

LABEL_277:
              *v67 = _H2;
              goto LABEL_279;
            }

            __asm { FCVT            S3, H3 }
          }

          _H4 = *v76;
          _H5 = *v22;
          __asm
          {
            FCVT            S4, H4
            FCVT            S5, H5
          }

          v224 = _S4 - (_S2 * _S4);
          if (_S2 == 1.0)
          {
            v225 = 0.0;
          }

          else
          {
            _S4 = _S2 * _S4;
            v225 = v224;
          }

          v226 = (v225 + _S5) - (_S3 * _S5);
          if (_S3 == 1.0)
          {
            v226 = v225;
          }

          _S4 = _S4 + v226;
          __asm { FCVT            H4, S4 }

          if (v26)
          {
            _S2 = (_S2 + _S3) - (_S2 * _S3);
            __asm { FCVT            H2, S2 }

            *v76 = _H4;
            goto LABEL_277;
          }

          *v76 = _H4;
LABEL_279:
          v231 = &v22[v976];
          if (v231 >= v64)
          {
            v232 = -v46;
          }

          else
          {
            v232 = 0;
          }

          v9 += 2 * v45 + 2 * v232;
          v22 = &v231[v232];
          v67 += 2 * v26;
          v76 += v976;
          --v215;
        }

        while (v215);
        if (v989)
        {
          v233 = &v74[v993];
          if (v233 >= v989)
          {
            v234 = -(v990 * v977);
          }

          else
          {
            v234 = 0;
          }

          v75 += 2 * v990 + 2 * v234;
          if (v233 >= v989)
          {
            v235 = -(v993 * v977);
          }

          else
          {
            v235 = 0;
          }

          v74 = &v233[v235];
          v64 += 2 * v235 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        if (!--v214)
        {
          goto LABEL_951;
        }
      }

    case 26:
      v549 = v1003[0];
      while (1)
      {
        v550 = v14;
        do
        {
          _S3 = 1.0;
          _S2 = 1.0;
          if (v45)
          {
            __asm { FCMP            H2, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_751;
            }

            __asm { FCVT            S2, H2 }
          }

          if (v26)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              *v76 = *v22;
              __asm { FCVT            H2, S2 }

LABEL_749:
              *v67 = _H2;
              goto LABEL_751;
            }

            __asm { FCVT            S3, H3 }
          }

          _H4 = *v22;
          _H5 = *v76;
          __asm
          {
            FCVT            S5, H5
            FCVT            S4, H4
          }

          v559 = _S4 - (_S3 * _S4);
          if (_S3 == 1.0)
          {
            v559 = 0.0;
          }

          v560 = (v559 + _S5) - (_S2 * _S5);
          if (_S2 != 1.0)
          {
            _S5 = _S2 * _S5;
            v559 = v560;
          }

          _S4 = _S5 + v559;
          __asm { FCVT            H4, S4 }

          if (v26)
          {
            _S2 = (_S2 + _S3) - (_S2 * _S3);
            __asm { FCVT            H2, S2 }

            *v76 = _H4;
            goto LABEL_749;
          }

          *v76 = _H4;
LABEL_751:
          v565 = &v22[v976];
          if (v565 >= v64)
          {
            v566 = -v46;
          }

          else
          {
            v566 = 0;
          }

          v9 += 2 * v45 + 2 * v566;
          v22 = &v565[v566];
          v67 += 2 * v26;
          v76 += v976;
          --v550;
        }

        while (v550);
        if (v989)
        {
          v567 = &v74[v993];
          if (v567 >= v989)
          {
            v568 = -(v990 * v977);
          }

          else
          {
            v568 = 0;
          }

          v75 += 2 * v990 + 2 * v568;
          if (v567 >= v989)
          {
            v569 = -(v993 * v977);
          }

          else
          {
            v569 = 0;
          }

          v74 = &v567[v569];
          v64 += 2 * v569 + 2 * v993;
          v9 = v75;
          v22 = v74;
        }

        else
        {
          v22 += v993;
          v9 += 2 * v990;
        }

        v76 += v995;
        v67 += 2 * v997;
        if (!--v549)
        {
          goto LABEL_951;
        }
      }

    case 27:
      v85 = v1003[0];
      break;
    default:
      v987 = v74;
      v988 = v75;
      goto LABEL_952;
  }

LABEL_76:
  v86 = v14;
  while (1)
  {
    _S3 = 1.0;
    _S2 = 1.0;
    if (!v45)
    {
      goto LABEL_80;
    }

    __asm { FCMP            H2, #0 }

    if (!(_NF ^ _VF | _ZF))
    {
      break;
    }

LABEL_92:
    v101 = &v22[v976];
    if (v101 >= v64)
    {
      v102 = -v46;
    }

    else
    {
      v102 = 0;
    }

    v9 += 2 * v45 + 2 * v102;
    v22 = &v101[v102];
    v67 += 2 * v26;
    v76 += v976;
    if (!--v86)
    {
      if (v989)
      {
        v103 = &v74[v993];
        if (v103 >= v989)
        {
          v104 = -(v990 * v977);
        }

        else
        {
          v104 = 0;
        }

        v75 += 2 * v990 + 2 * v104;
        if (v103 >= v989)
        {
          v105 = -(v993 * v977);
        }

        else
        {
          v105 = 0;
        }

        v74 = &v103[v105];
        v64 += 2 * v105 + 2 * v993;
        v9 = v75;
        v22 = v74;
      }

      else
      {
        v22 += v993;
        v9 += 2 * v990;
      }

      v76 += v995;
      v67 += 2 * v997;
      if (!--v85)
      {
        goto LABEL_951;
      }

      goto LABEL_76;
    }
  }

  __asm { FCVT            S2, H2 }

LABEL_80:
  if (v26)
  {
    __asm { FCMP            H3, #0 }

    if (!(!_ZF & _CF))
    {
      *v76 = *v22;
      __asm { FCVT            H2, S2 }

LABEL_90:
      *v67 = _H2;
      goto LABEL_92;
    }

    __asm { FCVT            S3, H3 }
  }

  _H4 = *v76;
  _H5 = *v22;
  __asm
  {
    FCVT            S5, H5
    FCVT            S4, H4
  }

  v95 = _S4 - (_S2 * _S4);
  if (_S2 == 1.0)
  {
    v95 = 0.0;
  }

  v96 = (v95 + _S5) - (_S3 * _S5);
  if (_S3 != 1.0)
  {
    _S5 = _S3 * _S5;
    v95 = v96;
  }

  _S4 = _S5 + v95;
  __asm { FCVT            H4, S4 }

  if (!v26)
  {
    *v76 = _H4;
    goto LABEL_92;
  }

  _S2 = (_S2 + _S3) - (_S2 * _S3);
  __asm { FCVT            H2, S2 }

  *v76 = _H4;
  goto LABEL_90;
}