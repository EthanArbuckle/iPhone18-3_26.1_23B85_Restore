__int16 PDAluminosityPDA@<H0>(__n128 _Q0@<Q0>, __n128 _Q1@<Q1>, __n128 _Q2@<Q2>, double a4@<D3>, float a5@<S4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, uint64_t a9@<X0>, uint64_t a10@<X1>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>, uint64_t a15@<X6>, uint64_t a16@<X7>, __int16 a17, __int16 a18, __int16 a19, float a20)
{
  _H5 = a19;
  _H6 = a18;
  _H7 = a17;
  __asm
  {
    FCVT            S0, H0
    FCVT            S1, H1
    FCVT            S2, H2
    FCVT            S7, H7
    FCVT            S6, H6
    FCVT            S5, H5
  }

  v30 = 0.0;
  v31 = _S0 - (_S0 * a20);
  v32 = _S1 - (_S1 * a20);
  if (a20 == 1.0)
  {
    v31 = 0.0;
    v32 = 0.0;
  }

  else
  {
    v30 = _S2 - (_S2 * a20);
    _S2 = _S2 * a20;
  }

  if (a20 != 1.0)
  {
    _S1 = _S1 * a20;
    _S0 = _S0 * a20;
  }

  v33 = (v31 + _S7) - (_S7 * a5);
  v34 = (v32 + _S6) - (_S6 * a5);
  v35 = (v30 + _S5) - (_S5 * a5);
  if (a5 == 1.0)
  {
    v33 = v31;
  }

  else
  {
    _S7 = _S7 * a5;
    _S6 = _S6 * a5;
    _S5 = _S5 * a5;
  }

  if (a5 == 1.0)
  {
    v36 = v32;
  }

  else
  {
    v36 = v34;
  }

  if (a5 != 1.0)
  {
    v30 = v35;
  }

  v37 = (((_S6 - _S1) * 0.59) + ((_S7 - _S0) * 0.3)) + ((_S5 - _S2) * 0.11);
  _S3 = (a5 + a20) - (a5 * a20);
  _S0 = v33 + (_S0 + v37);
  _S1 = v36 + (_S1 + v37);
  _S2 = v30 + (_S2 + v37);
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S1
    FCVT            H2, S2
    FCVT            H3, S3
  }

  return result;
}

int8x16_t *RGBAf16_mark_pixelmask(_DWORD *a1, int *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 _Q2, float16x4_t _D3, float32x4_t _Q4, float32x4_t _Q5, int8x16_t _Q6, float32x4_t _Q7, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = a2[2];
  v19 = a2[7];
  v21 = *(a2 + 5);
  result = *(a2 + 6);
  v22 = *(a2 + 11);
  v23 = *(a2 + 12);
  v24 = *(a2 + 17);
  v623 = a2[1];
  v25 = *a2;
  v625 = result;
  if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::onceToken != -1)
  {
    v589 = a3;
    dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::onceToken, &__block_literal_global_9_13911);
    a3 = v589;
    result = v625;
  }

  v26 = result != 0;
  if (v24)
  {
    v27 = v623;
    v28 = v19 >> 3;
    v29 = (v21 + 8 * (v19 >> 3) * a2[4] + 8 * a2[3]);
    v30 = a2[31];
    v31 = (v24 + a2[27] * v30 + a2[26]);
    v32 = a2[14];
    v33 = a2[15];
    v34 = a2[19];
    if ((v25 & 0xFF00) != 0x100)
    {
      v40 = a2[16];
      v35 = v34 >> 3;
      v41 = v22 + 8 * (v34 >> 3) * a2[17];
      v39 = 1;
      v42 = v22;
      v36 = v22;
      v43 = a2[17];
      goto LABEL_15;
    }

    v35 = v34 >> 3;
    v36 = v22 + 8 * (v34 >> 3) * v33 + 8 * v32;
    if (v34 >> 3 != v28)
    {
      v39 = 1;
LABEL_14:
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v22 = -1;
      v40 = v35;
LABEL_15:
      v44 = v23 != 0;
      v45 = v39 * v623;
      v607 = v41;
      if (v41)
      {
        v46 = v36 + 8 * v35 * (v33 % v43);
        v36 = v46 + 8 * (v32 % v40);
        v22 = v46 + 8 * v40;
        v624 = v36;
      }

      else
      {
        v624 = v42;
        v35 -= v45;
      }

      v621 = v30 - v45;
      v622 = v28 - v45;
      v606 = v35;
      switch(a3)
      {
        case 0:
          do
          {
            v47 = v623;
            do
            {
              v48 = *v31;
              if (*v31)
              {
                if (v48 == 255)
                {
                  *v29 = 0;
                }

                else
                {
                  *v29 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v29), (v48 * -0.0039216) + 1.0));
                }
              }

              v31 += v39;
              v29 += v39;
              --v47;
            }

            while (v47);
            v31 += v621;
            v29 += v622;
            --v18;
          }

          while (v18);
          return result;
        case 1:
          if (use_vImage_fp16_compositing(void)::predicate != -1)
          {
            v592 = v43;
            v590 = v40;
            v591 = v39;
            dispatch_once(&use_vImage_fp16_compositing(void)::predicate, &__block_literal_global_21944);
            result = v625;
            LODWORD(v39) = v591;
            v35 = v606;
            LODWORD(v40) = v590;
            LODWORD(v43) = v592;
          }

          if (use_vImage_fp16_compositing(void)::status == 1)
          {
            return vImageCGCompositePixelMask_ARGB16F();
          }

          if (!result || v23)
          {
            do
            {
              v579 = v623 + 1;
              v580 = v624;
              do
              {
                v581 = *v31;
                if (*v31)
                {
                  if (v581 == 255)
                  {
                    v582 = *v36;
                  }

                  else
                  {
                    v582 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v29), 1.0 - (v581 * 0.0039216)), vcvtq_f32_f16(*v36), v581 * 0.0039216));
                  }

                  *v29 = v582;
                }

                v31 += v39;
                v583 = v36 + 8 * v39;
                if (v583 >= v22)
                {
                  v584 = -v40;
                }

                else
                {
                  v584 = 0;
                }

                v36 = v583 + 8 * v584;
                --v579;
                v29 += v39;
              }

              while (v579 > 1);
              v31 += v621;
              v29 += v622;
              v585 = &v624->i8[8 * v35];
              if (v585 >= v607)
              {
                v586 = -(v35 * v43);
              }

              else
              {
                v586 = 0;
              }

              v587 = &v585[8 * v586];
              v588 = v22 + 8 * v586 + 8 * v35;
              if (v607)
              {
                v22 = v588;
                v580 = v587;
              }

              v624 = v580;
              if (v607)
              {
                v36 = v587;
              }

              else
              {
                v36 += 8 * v35;
              }

              _VF = __OFSUB__(v18--, 1);
            }

            while (!((v18 < 0) ^ _VF | (v18 == 0)));
          }

          else
          {
            do
            {
              v568 = v623 + 1;
              v569 = v624;
              do
              {
                v570 = *v31;
                if (*v31)
                {
                  if (v570 == 255)
                  {
                    v29->i32[0] = *v36;
                    v29->i16[2] = *(v36 + 4);
                    v29->i16[3] = COERCE_UNSIGNED_INT(1.0);
                  }

                  else
                  {
                    _Q4.i16[0] = *v36;
                    __asm { FCVT            S4, H4 }

                    v571 = v570 * 0.0039216;
                    _Q4.f32[0] = v571 * _Q4.f32[0];
                    _Q6.i32[0] = *(v36 + 2);
                    _Q6 = vcvtq_f32_f16(*_Q6.i8);
                    *_Q6.i8 = vmul_n_f32(*_Q6.i8, v571);
                    v572 = vextq_s8(vextq_s8(_Q4, _Q4, 4uLL), _Q6, 0xCuLL);
                    v572.f32[3] = v571;
                    _Q4 = vmlaq_n_f32(v572, vcvtq_f32_f16(*v29), 1.0 - v571);
                    *v29 = vcvt_f16_f32(_Q4);
                  }
                }

                v31 += v39;
                v573 = v36 + 8 * v39;
                if (v573 >= v22)
                {
                  v574 = -v40;
                }

                else
                {
                  v574 = 0;
                }

                v36 = v573 + 8 * v574;
                --v568;
                v29 += v39;
              }

              while (v568 > 1);
              v31 += v621;
              v29 += v622;
              v575 = &v624->i8[8 * v35];
              if (v575 >= v607)
              {
                v576 = -(v35 * v43);
              }

              else
              {
                v576 = 0;
              }

              v577 = &v575[8 * v576];
              v578 = v22 + 8 * v576 + 8 * v35;
              if (v607)
              {
                v22 = v578;
                v569 = v577;
              }

              v624 = v569;
              if (v607)
              {
                v36 = v577;
              }

              else
              {
                v36 += 8 * v35;
              }

              _VF = __OFSUB__(v18--, 1);
            }

            while (!((v18 < 0) ^ _VF | (v18 == 0)));
          }

          return result;
        case 2:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33] >= 2)
          {
            return composite_pixelmask<(CGCompositeOperation)2,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, *a1);
          }

          else
          {
            return composite_pixelmask_SOVER(v29, v622, v36, v35, v624, v43, v40, v22, a4.n128_f64[0], a5.n128_f64[0], _Q2.n128_f64[0], _D3, *_Q4.i64, _Q5, v41, v31, v621, v623, v18, v39);
          }

        case 3:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)3,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v44, *a1);
          }

          result = v41;
          do
          {
            v333 = v29 + 3;
            v334 = v623;
            v335 = v624;
            do
            {
              v336 = *v31;
              if (*v31)
              {
                if (v336 == 255)
                {
                  _H1 = *v333;
                  *(v333 - 3) = *v36 * *v333;
                  *(v333 - 2) = _H1 * *(v36 + 2);
                  *(v333 - 1) = _H1 * *(v36 + 4);
                  if (v23)
                  {
                    _H2 = *(v36 + 6);
                    __asm { FCVT            S2, H2 }
                  }

                  else
                  {
                    _S2 = 1.0;
                  }

                  v359 = v29 + 3;
                  __asm { FCVT            S1, H1 }

                  _S1 = _S2 * _S1;
                }

                else
                {
                  v340 = v336 * 0.0039216;
                  _H1 = *(v333 - 3);
                  __asm { FCVT            S5, H1 }

                  _S2 = 1.0;
                  v344 = 1.0 - v340;
                  _H3 = *v36;
                  __asm { FCVT            S6, H3 }

                  _H3 = *v333;
                  __asm { FCVT            S3, H3 }

                  v349 = v340 * _S3;
                  _S5 = (v349 * _S6) + (_S5 * v344);
                  __asm { FCVT            H5, S5 }

                  *(v333 - 3) = *&_S5;
                  *&_S5 = *(v333 - 2);
                  __asm { FCVT            S5, H5 }

                  LOWORD(_S6) = *(v36 + 2);
                  __asm { FCVT            S6, H6 }

                  _S5 = (v349 * _S6) + (_S5 * v344);
                  __asm { FCVT            H5, S5 }

                  *(v333 - 2) = *&_S5;
                  *&_S5 = *(v333 - 1);
                  __asm { FCVT            S5, H5 }

                  LOWORD(_S6) = *(v36 + 4);
                  __asm { FCVT            S6, H6 }

                  _S5 = (v349 * _S6) + (_S5 * v344);
                  __asm { FCVT            H5, S5 }

                  *(v333 - 1) = *&_S5;
                  if (v23)
                  {
                    _H2 = *(v36 + 6);
                    __asm { FCVT            S2, H2 }
                  }

                  _S1 = (v349 * _S2) + (_S3 * v344);
                  v359 = v333;
                }

                __asm { FCVT            H1, S1 }

                *v359 = _H1;
              }

              v31 += v39;
              v29 += v39;
              v362 = v36 + 8 * v39;
              if (v362 >= v22)
              {
                v363 = -v40;
              }

              else
              {
                v363 = 0;
              }

              v36 = v362 + 8 * v363;
              v333 += 4 * v39;
              --v334;
            }

            while (v334);
            v31 += v621;
            v29 = &v333[4 * v622 - 3];
            v364 = &v624->i8[8 * v35];
            if (v364 >= v607)
            {
              v365 = -(v35 * v43);
            }

            else
            {
              v365 = 0;
            }

            v366 = &v364[8 * v365];
            v367 = v22 + 8 * v365 + 8 * v35;
            if (v607)
            {
              v22 = v367;
              v335 = v366;
            }

            v624 = v335;
            if (v607)
            {
              v36 = v366;
            }

            else
            {
              v36 += 8 * v35;
            }

            --v18;
          }

          while (v18);
          return result;
        case 4:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)4,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v44, *a1);
          }

          result = v41;
          do
          {
            v235 = v29 + 3;
            v236 = v623;
            v237 = v624;
            do
            {
              v238 = *v31;
              if (*v31)
              {
                if (v238 == 255)
                {
                  _H1 = *v36;
                  __asm { FCVT            S3, H1 }

                  _H1 = *v235;
                  __asm { FCVT            S1, H1 }

                  _S2 = 1.0;
                  v244 = 1.0 - _S1;
                  _S3 = v244 * _S3;
                  __asm { FCVT            H3, S3 }

                  *(v235 - 3) = LOWORD(_S3);
                  LOWORD(_S3) = *(v36 + 2);
                  __asm { FCVT            S3, H3 }

                  _S3 = v244 * _S3;
                  __asm { FCVT            H3, S3 }

                  *(v235 - 2) = LOWORD(_S3);
                  LOWORD(_S3) = *(v36 + 4);
                  __asm { FCVT            S3, H3 }

                  _S3 = v244 * _S3;
                  __asm { FCVT            H3, S3 }

                  *(v235 - 1) = LOWORD(_S3);
                  if (v23)
                  {
                    _H2 = *(v36 + 6);
                    __asm { FCVT            S2, H2 }
                  }

                  v251 = v29 + 3;
                  _S1 = v244 * _S2;
                }

                else
                {
                  v253 = v238 * 0.0039216;
                  _H1 = *(v235 - 3);
                  __asm { FCVT            S5, H1 }

                  _S2 = 1.0;
                  v257 = 1.0 - v253;
                  _H3 = *v36;
                  __asm { FCVT            S6, H3 }

                  _H3 = *v235;
                  __asm { FCVT            S3, H3 }

                  v262 = v253 * (1.0 - _S3);
                  _S5 = (v262 * _S6) + (_S5 * v257);
                  __asm { FCVT            H5, S5 }

                  *(v235 - 3) = LOWORD(_S5);
                  LOWORD(_S5) = *(v235 - 2);
                  __asm { FCVT            S5, H5 }

                  LOWORD(_S6) = *(v36 + 2);
                  __asm { FCVT            S6, H6 }

                  _S5 = (v262 * _S6) + (_S5 * v257);
                  __asm { FCVT            H5, S5 }

                  *(v235 - 2) = LOWORD(_S5);
                  LOWORD(_S5) = *(v235 - 1);
                  __asm { FCVT            S5, H5 }

                  LOWORD(_S6) = *(v36 + 4);
                  __asm { FCVT            S6, H6 }

                  _S5 = (v262 * _S6) + (_S5 * v257);
                  __asm { FCVT            H5, S5 }

                  *(v235 - 1) = LOWORD(_S5);
                  if (v23)
                  {
                    _H2 = *(v36 + 6);
                    __asm { FCVT            S2, H2 }
                  }

                  _S1 = (v262 * _S2) + (_S3 * v257);
                  v251 = v235;
                }

                __asm { FCVT            H1, S1 }

                *v251 = _H1;
              }

              v31 += v39;
              v29 += v39;
              v272 = v36 + 8 * v39;
              if (v272 >= v22)
              {
                v273 = -v40;
              }

              else
              {
                v273 = 0;
              }

              v36 = v272 + 8 * v273;
              v235 += 4 * v39;
              --v236;
            }

            while (v236);
            v31 += v621;
            v29 = &v235[4 * v622 - 3];
            v274 = &v624->i8[8 * v35];
            if (v274 >= v607)
            {
              v275 = -(v35 * v43);
            }

            else
            {
              v275 = 0;
            }

            v276 = &v274[8 * v275];
            v277 = v22 + 8 * v275 + 8 * v35;
            if (v607)
            {
              v22 = v277;
              v237 = v276;
            }

            v624 = v237;
            if (v607)
            {
              v36 = v276;
            }

            else
            {
              v36 += 8 * v35;
            }

            --v18;
          }

          while (v18);
          return result;
        case 5:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)5,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, *a1);
          }

          do
          {
            v412 = v623;
            v413 = v624;
            do
            {
              if (*v31)
              {
                v414 = vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v36), *v31 * 0.0039216)));
                v415 = vcvtq_f32_f16(*v29);
                *v29 = vcvt_f16_f32(vmlaq_laneq_f32(vmulq_n_f32(v415, 1.0 - v414.f32[3]), v414, v415, 3));
              }

              v31 += v39;
              v416 = v36 + 8 * v39;
              if (v416 >= v22)
              {
                v417 = -v40;
              }

              else
              {
                v417 = 0;
              }

              v36 = v416 + 8 * v417;
              v29 += v39;
              --v412;
            }

            while (v412);
            v31 += v621;
            v29 += v622;
            v418 = &v624->i8[8 * v35];
            if (v418 >= v607)
            {
              v419 = -(v35 * v43);
            }

            else
            {
              v419 = 0;
            }

            v420 = &v418[8 * v419];
            v421 = v22 + 8 * v419 + 8 * v35;
            if (v607)
            {
              v22 = v421;
              v413 = v420;
            }

            v624 = v413;
            if (v607)
            {
              v36 = v420;
            }

            else
            {
              v36 += 8 * v35;
            }

            --v18;
          }

          while (v18);
          return result;
        case 6:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)6,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v44, *a1);
          }

          while (1)
          {
            v454 = v623;
            v455 = v624;
            do
            {
              v456 = *v31;
              if (!*v31)
              {
                goto LABEL_587;
              }

              _H2 = v29->i16[3];
              __asm { FCVT            S2, H2 }

              v459 = 1.0 - _S2;
              if ((1.0 - _S2) >= 1.0)
              {
                _H2 = *v36;
                __asm { FCVT            S3, H2 }

                v476 = v456 * 0.0039216;
                _S3 = v476 * _S3;
                __asm { FCVT            H3, S3 }

                v29->i16[0] = LOWORD(_S3);
                LOWORD(_S3) = *(v36 + 2);
                __asm { FCVT            S3, H3 }

                _S3 = v476 * _S3;
                __asm { FCVT            H3, S3 }

                v29->i16[1] = LOWORD(_S3);
                LOWORD(_S3) = *(v36 + 4);
                __asm { FCVT            S3, H3 }

                _S3 = v476 * _S3;
                __asm { FCVT            H3, S3 }

                v29->i16[2] = LOWORD(_S3);
                if (v23)
                {
                  _H3 = *(v36 + 6);
                  __asm { FCVT            S3, H3 }
                }

                else
                {
                  _S3 = 1.0;
                }

                _S2 = v476 * _S3;
              }

              else
              {
                if (v459 <= 0.0)
                {
                  goto LABEL_587;
                }

                _H4 = v29->i16[0];
                __asm { FCVT            S4, H4 }

                _H5 = *v36;
                __asm { FCVT            S5, H5 }

                v464 = (v456 * 0.0039216) * v459;
                _S4 = _S4 + (_S5 * v464);
                __asm { FCVT            H4, S4 }

                v29->i16[0] = LOWORD(_S4);
                LOWORD(_S4) = v29->i16[1];
                __asm { FCVT            S4, H4 }

                LOWORD(_S5) = *(v36 + 2);
                __asm { FCVT            S5, H5 }

                _S4 = _S4 + (_S5 * v464);
                __asm { FCVT            H4, S4 }

                v29->i16[1] = LOWORD(_S4);
                LOWORD(_S4) = v29->i16[2];
                __asm { FCVT            S4, H4 }

                LOWORD(_S5) = *(v36 + 4);
                __asm { FCVT            S5, H5 }

                _S4 = _S4 + (_S5 * v464);
                __asm { FCVT            H4, S4 }

                v29->i16[2] = LOWORD(_S4);
                if (v23)
                {
                  _H4 = *(v36 + 6);
                  __asm { FCVT            S4, H4 }
                }

                else
                {
                  _S4 = 1.0;
                }

                _S2 = _S2 + (_S4 * v464);
              }

              __asm { FCVT            H2, S2 }

              v29->i16[3] = _H2;
LABEL_587:
              v31 += v39;
              v486 = v36 + 8 * v39;
              if (v486 >= v22)
              {
                v487 = -v40;
              }

              else
              {
                v487 = 0;
              }

              v36 = v486 + 8 * v487;
              v29 += v39;
              --v454;
            }

            while (v454);
            v31 += v621;
            v29 += v622;
            v488 = &v624->i8[8 * v35];
            if (v488 >= v607)
            {
              v489 = -(v35 * v43);
            }

            else
            {
              v489 = 0;
            }

            v490 = &v488[8 * v489];
            v491 = v22 + 8 * v489 + 8 * v35;
            if (v607)
            {
              v22 = v491;
              v455 = v490;
            }

            v624 = v455;
            if (v607)
            {
              v36 = v490;
            }

            else
            {
              v36 += 8 * v35;
            }

            if (!--v18)
            {
              return result;
            }
          }

        case 7:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)7,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, *a1);
          }

          do
          {
            v368 = v623;
            v369 = v624;
            do
            {
              v370 = *v31;
              if (*v31)
              {
                if (v370 == 255)
                {
                  v371 = vmul_n_f16(*v29, *(v36 + 6));
                }

                else
                {
                  _H3 = *(v36 + 6);
                  __asm { FCVT            S3, H3 }

                  v374 = vcvtq_f32_f16(*v29);
                  v371 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v374, 1.0 - (v370 * 0.0039216)), v374, (v370 * 0.0039216) * _S3));
                }

                *v29 = v371;
              }

              v31 += v39;
              v375 = v36 + 8 * v39;
              if (v375 >= v22)
              {
                v376 = -v40;
              }

              else
              {
                v376 = 0;
              }

              v36 = v375 + 8 * v376;
              v29 += v39;
              --v368;
            }

            while (v368);
            v31 += v621;
            v29 += v622;
            v377 = &v624->i8[8 * v35];
            if (v377 >= v607)
            {
              v378 = -(v35 * v43);
            }

            else
            {
              v378 = 0;
            }

            v379 = &v377[8 * v378];
            v380 = v22 + 8 * v378 + 8 * v35;
            if (v607)
            {
              v22 = v380;
              v369 = v379;
            }

            v624 = v369;
            if (v607)
            {
              v36 = v379;
            }

            else
            {
              v36 += 8 * v35;
            }

            --v18;
          }

          while (v18);
          return result;
        case 8:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)8,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, *a1);
          }

          do
          {
            v502 = v623;
            v503 = v624;
            do
            {
              v504 = *v31;
              if (*v31)
              {
                _H2 = *(v36 + 6);
                if (v504 == 255)
                {
                  __asm { FCVT            S2, H2 }
                }

                else
                {
                  __asm { FCVT            S2, H2 }

                  _S2 = (v504 * 0.0039216) * _S2;
                }

                *v29 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v29), 1.0 - _S2));
              }

              v31 += v39;
              v508 = v36 + 8 * v39;
              if (v508 >= v22)
              {
                v509 = -v40;
              }

              else
              {
                v509 = 0;
              }

              v36 = v508 + 8 * v509;
              v29 += v39;
              --v502;
            }

            while (v502);
            v31 += v621;
            v29 += v622;
            v510 = &v624->i8[8 * v35];
            if (v510 >= v607)
            {
              v511 = -(v35 * v43);
            }

            else
            {
              v511 = 0;
            }

            v512 = &v510[8 * v511];
            v513 = v22 + 8 * v511 + 8 * v35;
            if (v607)
            {
              v22 = v513;
              v503 = v512;
            }

            v624 = v503;
            if (v607)
            {
              v36 = v512;
            }

            else
            {
              v36 += 8 * v35;
            }

            --v18;
          }

          while (v18);
          return result;
        case 9:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)9,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, *a1);
          }

          do
          {
            v305 = v623;
            v306 = v624;
            do
            {
              if (*v31)
              {
                v307 = *v31 * 0.0039216;
                v308 = 1.0 - v307;
                v309 = vcvtq_f32_f16(*v29);
                v310 = vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v36), v307)));
                *v29 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v309, v308 + v310.f32[3]), v310, 1.0 - v309.f32[3]));
              }

              v31 += v39;
              v311 = v36 + 8 * v39;
              if (v311 >= v22)
              {
                v312 = -v40;
              }

              else
              {
                v312 = 0;
              }

              v36 = v311 + 8 * v312;
              v29 += v39;
              --v305;
            }

            while (v305);
            v31 += v621;
            v29 += v622;
            v313 = &v624->i8[8 * v35];
            if (v313 >= v607)
            {
              v314 = -(v35 * v43);
            }

            else
            {
              v314 = 0;
            }

            v315 = &v313[8 * v314];
            v316 = v22 + 8 * v314 + 8 * v35;
            if (v607)
            {
              v22 = v316;
              v306 = v315;
            }

            v624 = v306;
            if (v607)
            {
              v36 = v315;
            }

            else
            {
              v36 += 8 * v35;
            }

            --v18;
          }

          while (v18);
          return result;
        case 10:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)10,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, *a1);
          }

          do
          {
            v492 = v623;
            v493 = v624;
            do
            {
              if (*v31)
              {
                v494 = vcvtq_f32_f16(*v29);
                v495 = vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v36), *v31 * 0.0039216)));
                *v29 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v494, 1.0 - v495.f32[3]), v495, 1.0 - v494.f32[3]));
              }

              v31 += v39;
              v496 = v36 + 8 * v39;
              if (v496 >= v22)
              {
                v497 = -v40;
              }

              else
              {
                v497 = 0;
              }

              v36 = v496 + 8 * v497;
              v29 += v39;
              --v492;
            }

            while (v492);
            v31 += v621;
            v29 += v622;
            v498 = &v624->i8[8 * v35];
            if (v498 >= v607)
            {
              v499 = -(v35 * v43);
            }

            else
            {
              v499 = 0;
            }

            v500 = &v498[8 * v499];
            v501 = v22 + 8 * v499 + 8 * v35;
            if (v607)
            {
              v22 = v501;
              v493 = v500;
            }

            v624 = v493;
            if (v607)
            {
              v36 = v500;
            }

            else
            {
              v36 += 8 * v35;
            }

            --v18;
          }

          while (v18);
          return result;
        case 11:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)11,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v26, v44, *a1);
          }

          do
          {
            v189 = v623;
            v190 = v624;
            do
            {
              v191 = *v31;
              if (*v31)
              {
                _S1 = 1.0;
                _S5 = 1.0;
                if (result)
                {
                  _H2 = v29->i16[3];
                  __asm { FCVT            S5, H2 }
                }

                v195 = v191 * 0.0039216;
                _H2 = *(v36 + 6);
                __asm { FCVT            S2, H2 }

                _S2 = v195 * _S2;
                __asm
                {
                  FCVT            H2, S2
                  FCVT            S2, H2
                }

                if (v23)
                {
                  v200 = _S2;
                }

                else
                {
                  v200 = v191 * 0.0039216;
                }

                _S2 = v200 + _S5;
                if ((v200 + _S5) > 1.0)
                {
                  _S2 = 1.0;
                }

                if (result)
                {
                  _H1 = v29->i16[3];
                  __asm { FCVT            S1, H1 }
                }

                _H6 = *v36;
                __asm { FCVT            S6, H6 }

                _S6 = v195 * _S6;
                __asm { FCVT            H16, S6 }

                _H7 = *(v36 + 2);
                _H6 = *(v36 + 4);
                _H17 = v29->i16[0];
                __asm
                {
                  FCVT            S17, H17
                  FCVT            S16, H16
                }

                v212 = (v200 - _S16) + (_S5 - _S17);
                _H5 = v29->i16[1];
                _S16 = _S2 - v212;
                __asm { FCVT            H16, S16 }

                v29->i16[0] = LOWORD(_S16);
                if (result)
                {
                  _H16 = v29->i16[3];
                  __asm { FCVT            S16, H16 }
                }

                else
                {
                  _S16 = 1.0;
                }

                __asm { FCVT            S7, H7 }

                _S7 = v195 * _S7;
                __asm
                {
                  FCVT            H7, S7
                  FCVT            S6, H6
                }

                _S4 = v195 * _S6;
                __asm
                {
                  FCVT            H4, S4
                  FCVT            S5, H5
                }

                v222 = _S1 - _S5;
                __asm { FCVT            S5, H7 }

                v224 = (v200 - _S5) + v222;
                LOWORD(_S5) = v29->i16[2];
                __asm
                {
                  FCVT            S5, H5
                  FCVT            S4, H4
                }

                _S1 = _S2 - v224;
                __asm { FCVT            H1, S1 }

                v29->i16[1] = LOWORD(_S1);
                __asm { FCVT            H1, S2 }

                v29->i16[3] = LOWORD(_S1);
                _S1 = _S2 - ((v200 - _S4) + (_S16 - _S5));
                __asm { FCVT            H1, S1 }

                v29->i16[2] = LOWORD(_S1);
              }

              v31 += v39;
              v229 = v36 + 8 * v39;
              if (v229 >= v22)
              {
                v230 = -v40;
              }

              else
              {
                v230 = 0;
              }

              v36 = v229 + 8 * v230;
              v29 += v39;
              --v189;
            }

            while (v189);
            v31 += v621;
            v29 += v622;
            v231 = &v624->i8[8 * v35];
            if (v231 >= v607)
            {
              v232 = -(v35 * v43);
            }

            else
            {
              v232 = 0;
            }

            v233 = &v231[8 * v232];
            v234 = v22 + 8 * v232 + 8 * v35;
            if (v607)
            {
              v22 = v234;
              v190 = v233;
            }

            v624 = v190;
            if (v607)
            {
              v36 = v233;
            }

            else
            {
              v36 += 8 * v35;
            }

            --v18;
          }

          while (v18);
          return result;
        case 12:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)12,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v44, *a1);
          }

          do
          {
            v278 = v623;
            v279 = v624;
            do
            {
              if (*v31)
              {
                v280 = *v31 * 0.0039216;
                _H3 = *v36;
                __asm { FCVT            S3, H3 }

                _S3 = v280 * _S3;
                __asm { FCVT            H3, S3 }

                _H4 = *(v36 + 2);
                __asm { FCVT            S4, H4 }

                _S4 = v280 * _S4;
                __asm { FCVT            H4, S4 }

                _H5 = *(v36 + 4);
                __asm { FCVT            S5, H5 }

                _S5 = v280 * _S5;
                __asm { FCVT            H5, S5 }

                _H6 = *(v36 + 6);
                __asm { FCVT            S6, H6 }

                _S6 = v280 * _S6;
                __asm { FCVT            H6, S6 }

                v294 = *&v29->i16[1];
                *v29->i16 = *v29->i16 + *&_S3;
                *&v29->i16[1] = v294 + *&_S4;
                LOWORD(_S3) = v29->i16[3];
                __asm
                {
                  FCVT            S3, H3
                  FCVT            S4, H6
                }

                if (v23)
                {
                  v280 = _S4;
                }

                _S2 = v280 + _S3;
                if (_S2 > 1.0)
                {
                  _S2 = 1.0;
                }

                *&v29->i16[2] = *&v29->i16[2] + _H5;
                __asm { FCVT            H2, S2 }

                v29->i16[3] = _H2;
              }

              v31 += v39;
              v299 = v36 + 8 * v39;
              if (v299 >= v22)
              {
                v300 = -v40;
              }

              else
              {
                v300 = 0;
              }

              v36 = v299 + 8 * v300;
              v29 += v39;
              --v278;
            }

            while (v278);
            v31 += v621;
            v29 += v622;
            v301 = &v624->i8[8 * v35];
            if (v301 >= v607)
            {
              v302 = -(v35 * v43);
            }

            else
            {
              v302 = 0;
            }

            v303 = &v301[8 * v302];
            v304 = v22 + 8 * v302 + 8 * v35;
            if (v607)
            {
              v22 = v304;
              v279 = v303;
            }

            v624 = v279;
            if (v607)
            {
              v36 = v303;
            }

            else
            {
              v36 += 8 * v35;
            }

            --v18;
          }

          while (v18);
          return result;
        case 13:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)13,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v26, v44, *a1);
          }

          v438 = v39;
          v439 = -v40;
          v603 = -(v35 * v43);
          v440 = 8 * v39;
          while (1)
          {
            v618 = v18;
            v441 = v623;
            do
            {
              v442 = *v31;
              if (*v31)
              {
                a4.n128_f32[0] = v442 * 0.0039216;
                _Q1 = vmulq_n_f32(vcvtq_f32_f16(*v36), a4.n128_f32[0]);
                v443 = COERCE_DOUBLE(vcvt_f16_f32(_Q1));
                _Q7.i16[0] = HIWORD(v443);
                __asm { FCVT            S1, H7 }

                *_Q6.i32 = v23 ? _Q1.n128_f32[0] : v442 * 0.0039216;
                if (*_Q6.i32 > 0.0)
                {
                  _D3.i16[0] = v29->i16[3];
                  if (result)
                  {
                    __asm { FCMP            H3, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = LODWORD(v443);
                      v29->i16[2] = WORD2(v443);
                      __asm { FCVT            H3, S6 }

LABEL_560:
                      v29->i16[3] = _D3.i16[0];
                      goto LABEL_561;
                    }

                    __asm { FCVT            S4, H3 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  a4.n128_u16[0] = v29->i16[0];
                  _Q1.n128_u16[0] = v29->u16[1];
                  _Q2.n128_u16[0] = v29->u16[2];
                  v29->i16[0] = PDAmultiplyPDA(a4, _Q1, _Q2, *&_D3, _S4, v443, *_Q6.i64, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, SLOWORD(v443), SWORD1(v443), SWORD2(v443), *_Q6.i32);
                  v29->i16[1] = v446;
                  v29->i16[2] = _Q2.n128_u16[0];
                  result = v625;
                  goto LABEL_560;
                }
              }

LABEL_561:
              v31 += v438;
              v447 = v36 + 8 * v438;
              if (v447 >= v22)
              {
                v448 = v439;
              }

              else
              {
                v448 = 0;
              }

              v36 = v447 + 8 * v448;
              v29 = (v29 + v440);
              --v441;
            }

            while (v441);
            v31 += v621;
            v29 += v622;
            v449 = v624;
            v450 = &v624->i8[8 * v606];
            v451 = v603;
            if (v450 < v607)
            {
              v451 = 0;
            }

            v452 = &v450[8 * v451];
            v453 = v22 + 8 * v451 + 8 * v606;
            if (v607)
            {
              v22 = v453;
              v449 = v452;
            }

            v624 = v449;
            if (v607)
            {
              v36 = v452;
            }

            else
            {
              v36 += 8 * v606;
            }

            v18 = v618 - 1;
            if (v618 == 1)
            {
              return result;
            }
          }

        case 14:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)14,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v26, v44, *a1);
          }

          while (1)
          {
            v147 = v623;
            v148 = v624;
            do
            {
              v149 = *v31;
              if (*v31)
              {
                v150 = v149 * 0.0039216;
                _H2 = *(v36 + 6);
                __asm { FCVT            S2, H2 }

                _S2 = v150 * _S2;
                __asm
                {
                  FCVT            H2, S2
                  FCVT            S2, H2
                }

                if (!v23)
                {
                  _S2 = v149 * 0.0039216;
                }

                if (_S2 > 0.0)
                {
                  _H3 = *v36;
                  __asm { FCVT            S3, H3 }

                  _S3 = v150 * _S3;
                  __asm { FCVT            H3, S3 }

                  _H4 = *(v36 + 2);
                  __asm { FCVT            S4, H4 }

                  _S4 = v150 * _S4;
                  __asm { FCVT            H4, S4 }

                  _H6 = *(v36 + 4);
                  __asm { FCVT            S6, H6 }

                  _S5 = v150 * _S6;
                  __asm { FCVT            H5, S5 }

                  if (result)
                  {
                    __asm { FCMP            H6, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i16[0] = _H3;
                      v29->i16[1] = _H4;
                      v29->i16[2] = _H5;
                      __asm { FCVT            H2, S2 }

LABEL_269:
                      v29->i16[3] = _H2;
                      goto LABEL_270;
                    }

                    __asm { FCVT            S6, H6 }
                  }

                  else
                  {
                    _S6 = 1.0;
                  }

                  _H7 = v29->i16[0];
                  _H16 = v29->i16[1];
                  _H17 = v29->i16[2];
                  __asm
                  {
                    FCVT            S7, H7
                    FCVT            S16, H16
                    FCVT            S17, H17
                    FCVT            S3, H3
                    FCVT            S4, H4
                    FCVT            S5, H5
                  }

                  _S3 = _S7 + (_S3 * (1.0 - _S7));
                  _S4 = _S16 + (_S4 * (1.0 - _S16));
                  _S5 = _S17 + (_S5 * (1.0 - _S17));
                  _S2 = (_S2 + _S6) - (_S6 * _S2);
                  __asm
                  {
                    FCVT            H3, S3
                    FCVT            H4, S4
                    FCVT            H5, S5
                  }

                  v29->i16[0] = LOWORD(_S3);
                  v29->i16[1] = LOWORD(_S4);
                  __asm { FCVT            H2, S2 }

                  v29->i16[2] = LOWORD(_S5);
                  goto LABEL_269;
                }
              }

LABEL_270:
              v31 += v39;
              v183 = v36 + 8 * v39;
              if (v183 >= v22)
              {
                v184 = -v40;
              }

              else
              {
                v184 = 0;
              }

              v36 = v183 + 8 * v184;
              v29 += v39;
              --v147;
            }

            while (v147);
            v31 += v621;
            v29 += v622;
            v185 = &v624->i8[8 * v35];
            if (v185 >= v607)
            {
              v186 = -(v35 * v43);
            }

            else
            {
              v186 = 0;
            }

            v187 = &v185[8 * v186];
            v188 = v22 + 8 * v186 + 8 * v35;
            if (v607)
            {
              v22 = v188;
              v148 = v187;
            }

            v624 = v148;
            if (v607)
            {
              v36 = v187;
            }

            else
            {
              v36 += 8 * v35;
            }

            if (!--v18)
            {
              return result;
            }
          }

        case 15:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)15,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v26, v44, *a1);
          }

          v317 = v39;
          v318 = -v40;
          v599 = -(v35 * v43);
          v319 = 8 * v39;
          while (1)
          {
            v614 = v18;
            v320 = v623;
            do
            {
              v321 = *v31;
              if (*v31)
              {
                a4.n128_f32[0] = v321 * 0.0039216;
                _Q1 = vmulq_n_f32(vcvtq_f32_f16(*v36), a4.n128_f32[0]);
                v322 = COERCE_DOUBLE(vcvt_f16_f32(_Q1));
                _Q7.i16[0] = HIWORD(v322);
                __asm { FCVT            S1, H7 }

                *_Q6.i32 = v23 ? _Q1.n128_f32[0] : v321 * 0.0039216;
                if (*_Q6.i32 > 0.0)
                {
                  _D3.i16[0] = v29->i16[3];
                  if (result)
                  {
                    __asm { FCMP            H3, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = LODWORD(v322);
                      v29->i16[2] = WORD2(v322);
                      __asm { FCVT            H3, S6 }

LABEL_389:
                      v29->i16[3] = _D3.i16[0];
                      goto LABEL_390;
                    }

                    __asm { FCVT            S4, H3 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  a4.n128_u16[0] = v29->i16[0];
                  _Q1.n128_u16[0] = v29->u16[1];
                  _Q2.n128_u16[0] = v29->u16[2];
                  v29->i16[0] = PDAoverlayPDA(a4, _Q1, _Q2, *&_D3, _S4, v322, *_Q6.i64, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, SLOWORD(v322), SWORD1(v322), SWORD2(v322), *_Q6.i32);
                  v29->i16[1] = v325;
                  v29->i16[2] = _Q2.n128_u16[0];
                  result = v625;
                  goto LABEL_389;
                }
              }

LABEL_390:
              v31 += v317;
              v326 = v36 + 8 * v317;
              if (v326 >= v22)
              {
                v327 = v318;
              }

              else
              {
                v327 = 0;
              }

              v36 = v326 + 8 * v327;
              v29 = (v29 + v319);
              --v320;
            }

            while (v320);
            v31 += v621;
            v29 += v622;
            v328 = v624;
            v329 = &v624->i8[8 * v606];
            v330 = v599;
            if (v329 < v607)
            {
              v330 = 0;
            }

            v331 = &v329[8 * v330];
            v332 = v22 + 8 * v330 + 8 * v606;
            if (v607)
            {
              v22 = v332;
              v328 = v331;
            }

            v624 = v328;
            if (v607)
            {
              v36 = v331;
            }

            else
            {
              v36 += 8 * v606;
            }

            v18 = v614 - 1;
            if (v614 == 1)
            {
              return result;
            }
          }

        case 16:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)16,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v26, v44, *a1);
          }

          v131 = v39;
          v132 = -v40;
          v598 = -(v35 * v43);
          v133 = 8 * v39;
          while (1)
          {
            v613 = v18;
            v134 = v623;
            do
            {
              v135 = *v31;
              if (*v31)
              {
                a4.n128_f32[0] = v135 * 0.0039216;
                _Q1 = vmulq_n_f32(vcvtq_f32_f16(*v36), a4.n128_f32[0]);
                v136 = COERCE_DOUBLE(vcvt_f16_f32(_Q1));
                _Q7.i16[0] = HIWORD(v136);
                __asm { FCVT            S1, H7 }

                *_Q6.i32 = v23 ? _Q1.f32[0] : v135 * 0.0039216;
                if (*_Q6.i32 > 0.0)
                {
                  _D3.i16[0] = v29->i16[3];
                  if (result)
                  {
                    __asm { FCMP            H3, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = LODWORD(v136);
                      v29->i16[2] = WORD2(v136);
                      __asm { FCVT            H3, S6 }

LABEL_244:
                      v29->i16[3] = _D3.i16[0];
                      goto LABEL_245;
                    }

                    __asm { FCVT            S4, H3 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  a4.n128_u16[0] = v29->i16[0];
                  _Q1.i16[0] = v29->i16[1];
                  _Q2.n128_u16[0] = v29->u16[2];
                  v29->i16[0] = PDAdarkenPDA(a4, *_Q1.i64, _Q2.n128_f64[0], *&_D3, _S4, v136, *_Q6.i64, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, SLOWORD(v136), SHIDWORD(v136), *_Q6.i32);
                  v29->i16[1] = v139;
                  v29->i16[2] = _Q2.n128_u16[0];
                  result = v625;
                  goto LABEL_244;
                }
              }

LABEL_245:
              v31 += v131;
              v140 = v36 + 8 * v131;
              if (v140 >= v22)
              {
                v141 = v132;
              }

              else
              {
                v141 = 0;
              }

              v36 = v140 + 8 * v141;
              v29 = (v29 + v133);
              --v134;
            }

            while (v134);
            v31 += v621;
            v29 += v622;
            v142 = v624;
            v143 = &v624->i8[8 * v606];
            v144 = v598;
            if (v143 < v607)
            {
              v144 = 0;
            }

            v145 = &v143[8 * v144];
            v146 = v22 + 8 * v144 + 8 * v606;
            if (v607)
            {
              v22 = v146;
              v142 = v145;
            }

            v624 = v142;
            if (v607)
            {
              v36 = v145;
            }

            else
            {
              v36 += 8 * v606;
            }

            v18 = v613 - 1;
            if (v613 == 1)
            {
              return result;
            }
          }

        case 17:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)17,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v26, v44, *a1);
          }

          v381 = v39;
          v382 = -v40;
          v600 = -(v35 * v43);
          v383 = 8 * v39;
          while (1)
          {
            v615 = v18;
            v384 = v623;
            do
            {
              v385 = *v31;
              if (*v31)
              {
                a4.n128_f32[0] = v385 * 0.0039216;
                _Q1 = vmulq_n_f32(vcvtq_f32_f16(*v36), a4.n128_f32[0]);
                v386 = COERCE_DOUBLE(vcvt_f16_f32(_Q1));
                _Q7.i16[0] = HIWORD(v386);
                __asm { FCVT            S1, H7 }

                *_Q6.i32 = v23 ? _Q1.f32[0] : v385 * 0.0039216;
                if (*_Q6.i32 > 0.0)
                {
                  _D3.i16[0] = v29->i16[3];
                  if (result)
                  {
                    __asm { FCMP            H3, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = LODWORD(v386);
                      v29->i16[2] = WORD2(v386);
                      __asm { FCVT            H3, S6 }

LABEL_462:
                      v29->i16[3] = _D3.i16[0];
                      goto LABEL_463;
                    }

                    __asm { FCVT            S4, H3 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  a4.n128_u16[0] = v29->i16[0];
                  _Q1.i16[0] = v29->i16[1];
                  _Q2.n128_u16[0] = v29->u16[2];
                  v29->i16[0] = PDAlightenPDA(a4, *_Q1.i64, _Q2.n128_f64[0], *&_D3, _S4, v386, *_Q6.i64, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, SLOWORD(v386), SHIDWORD(v386), *_Q6.i32);
                  v29->i16[1] = v389;
                  v29->i16[2] = _Q2.n128_u16[0];
                  result = v625;
                  goto LABEL_462;
                }
              }

LABEL_463:
              v31 += v381;
              v390 = v36 + 8 * v381;
              if (v390 >= v22)
              {
                v391 = v382;
              }

              else
              {
                v391 = 0;
              }

              v36 = v390 + 8 * v391;
              v29 = (v29 + v383);
              --v384;
            }

            while (v384);
            v31 += v621;
            v29 += v622;
            v392 = v624;
            v393 = &v624->i8[8 * v606];
            v394 = v600;
            if (v393 < v607)
            {
              v394 = 0;
            }

            v395 = &v393[8 * v394];
            v396 = v22 + 8 * v394 + 8 * v606;
            if (v607)
            {
              v22 = v396;
              v392 = v395;
            }

            v624 = v392;
            if (v607)
            {
              v36 = v395;
            }

            else
            {
              v36 += 8 * v606;
            }

            v18 = v615 - 1;
            if (v615 == 1)
            {
              return result;
            }
          }

        case 18:
          v101 = v39;
          v102 = -v40;
          v596 = -(v35 * v43);
          v103 = 8 * v39;
          while (1)
          {
            v611 = v18;
            v104 = v623;
            do
            {
              v105 = *v31;
              if (*v31)
              {
                a4.n128_f32[0] = v105 * 0.0039216;
                _Q1 = vmulq_n_f32(vcvtq_f32_f16(*v36), a4.n128_f32[0]);
                v106 = COERCE_DOUBLE(vcvt_f16_f32(_Q1));
                _Q7.i16[0] = HIWORD(v106);
                __asm { FCVT            S1, H7 }

                *_Q6.i32 = v23 ? _Q1.n128_f32[0] : v105 * 0.0039216;
                if (*_Q6.i32 > 0.0)
                {
                  _D3.i16[0] = v29->i16[3];
                  if (result)
                  {
                    __asm { FCMP            H3, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = LODWORD(v106);
                      v29->i16[2] = WORD2(v106);
                      __asm { FCVT            H3, S6 }

LABEL_174:
                      v29->i16[3] = _D3.i16[0];
                      goto LABEL_175;
                    }

                    __asm { FCVT            S4, H3 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  a4.n128_u16[0] = v29->i16[0];
                  _Q1.n128_u16[0] = v29->u16[1];
                  _Q2.n128_u16[0] = v29->u16[2];
                  v29->i16[0] = PDAcolordodgePDA(a4, _Q1, _Q2, *&_D3, _S4, v106, *_Q6.i64, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, SLOWORD(v106), SWORD1(v106), SWORD2(v106), *_Q6.i32);
                  v29->i16[1] = v109;
                  v29->i16[2] = _Q2.n128_u16[0];
                  result = v625;
                  goto LABEL_174;
                }
              }

LABEL_175:
              v31 += v101;
              v110 = v36 + 8 * v101;
              if (v110 >= v22)
              {
                v111 = v102;
              }

              else
              {
                v111 = 0;
              }

              v36 = v110 + 8 * v111;
              v29 = (v29 + v103);
              --v104;
            }

            while (v104);
            v31 += v621;
            v29 += v622;
            v112 = v624;
            v113 = &v624->i8[8 * v606];
            v114 = v596;
            if (v113 < v607)
            {
              v114 = 0;
            }

            v115 = &v113[8 * v114];
            v116 = v22 + 8 * v114 + 8 * v606;
            if (v607)
            {
              v22 = v116;
              v112 = v115;
            }

            v624 = v112;
            if (v607)
            {
              v36 = v115;
            }

            else
            {
              v36 += 8 * v606;
            }

            v18 = v611 - 1;
            if (v611 == 1)
            {
              return result;
            }
          }

        case 19:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)19,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v26, v44, *a1);
          }

          v530 = v39;
          v531 = -v40;
          v605 = -(v35 * v43);
          v532 = 8 * v39;
          while (1)
          {
            v620 = v18;
            v533 = v623;
            do
            {
              v534 = *v31;
              if (*v31)
              {
                a4.n128_f32[0] = v534 * 0.0039216;
                _Q1 = vmulq_n_f32(vcvtq_f32_f16(*v36), a4.n128_f32[0]);
                v535 = COERCE_DOUBLE(vcvt_f16_f32(_Q1));
                _Q7.i16[0] = HIWORD(v535);
                __asm { FCVT            S1, H7 }

                *_Q6.i32 = v23 ? _Q1.n128_f32[0] : v534 * 0.0039216;
                if (*_Q6.i32 > 0.0)
                {
                  _D3.i16[0] = v29->i16[3];
                  if (result)
                  {
                    __asm { FCMP            H3, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = LODWORD(v535);
                      v29->i16[2] = WORD2(v535);
                      __asm { FCVT            H3, S6 }

LABEL_678:
                      v29->i16[3] = _D3.i16[0];
                      goto LABEL_679;
                    }

                    __asm { FCVT            S4, H3 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  a4.n128_u16[0] = v29->i16[0];
                  _Q1.n128_u16[0] = v29->u16[1];
                  _Q2.n128_u16[0] = v29->u16[2];
                  v29->i16[0] = PDAcolorburnPDA(a4, _Q1, _Q2, *&_D3, _S4, v535, *_Q6.i64, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, SLOWORD(v535), SWORD1(v535), SWORD2(v535), *_Q6.i32);
                  v29->i16[1] = v538;
                  v29->i16[2] = _Q2.n128_u16[0];
                  result = v625;
                  goto LABEL_678;
                }
              }

LABEL_679:
              v31 += v530;
              v539 = v36 + 8 * v530;
              if (v539 >= v22)
              {
                v540 = v531;
              }

              else
              {
                v540 = 0;
              }

              v36 = v539 + 8 * v540;
              v29 = (v29 + v532);
              --v533;
            }

            while (v533);
            v31 += v621;
            v29 += v622;
            v541 = v624;
            v542 = &v624->i8[8 * v606];
            v543 = v605;
            if (v542 < v607)
            {
              v543 = 0;
            }

            v544 = &v542[8 * v543];
            v545 = v22 + 8 * v543 + 8 * v606;
            if (v607)
            {
              v22 = v545;
              v541 = v544;
            }

            v624 = v541;
            if (v607)
            {
              v36 = v544;
            }

            else
            {
              v36 += 8 * v606;
            }

            v18 = v620 - 1;
            if (v620 == 1)
            {
              return result;
            }
          }

        case 20:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)20,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v26, v44, *a1);
          }

          v397 = v39;
          v398 = -v40;
          v601 = -(v35 * v43);
          v399 = 8 * v39;
          while (1)
          {
            v616 = v18;
            v400 = v623;
            do
            {
              v401 = *v31;
              if (*v31)
              {
                a4.n128_f32[0] = v401 * 0.0039216;
                _Q1 = vmulq_n_f32(vcvtq_f32_f16(*v36), a4.n128_f32[0]);
                v402 = COERCE_DOUBLE(vcvt_f16_f32(_Q1));
                _Q7.i16[0] = HIWORD(v402);
                __asm { FCVT            S1, H7 }

                *_Q6.i32 = v23 ? _Q1.f32[0] : v401 * 0.0039216;
                if (*_Q6.i32 > 0.0)
                {
                  _D3.i16[0] = v29->i16[3];
                  if (result)
                  {
                    __asm { FCMP            H3, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = LODWORD(v402);
                      v29->i16[2] = WORD2(v402);
                      __asm { FCVT            H3, S6 }

LABEL_489:
                      v29->i16[3] = _D3.i16[0];
                      goto LABEL_490;
                    }

                    __asm { FCVT            S4, H3 }
                  }

                  else
                  {
                    _Q4.i32[0] = 1.0;
                  }

                  a4.n128_u16[0] = v29->i16[0];
                  _Q1.i16[0] = v29->i16[1];
                  _Q2.n128_u16[0] = v29->u16[2];
                  v29->i16[0] = PDAsoftlightPDA(a4, *_Q1.f32, _Q2, _D3, *_Q4.i64, v402, *_Q6.i8, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, SLOWORD(v402), SWORD1(v402), SWORD2(v402), *_Q6.i32);
                  v29->i16[1] = v404;
                  v29->i16[2] = _Q2.n128_u16[0];
                  result = v625;
                  goto LABEL_489;
                }
              }

LABEL_490:
              v31 += v397;
              v405 = v36 + 8 * v397;
              if (v405 >= v22)
              {
                v406 = v398;
              }

              else
              {
                v406 = 0;
              }

              v36 = v405 + 8 * v406;
              v29 = (v29 + v399);
              --v400;
            }

            while (v400);
            v31 += v621;
            v29 += v622;
            v407 = v624;
            v408 = &v624->i8[8 * v606];
            v409 = v601;
            if (v408 < v607)
            {
              v409 = 0;
            }

            v410 = &v408[8 * v409];
            v411 = v22 + 8 * v409 + 8 * v606;
            if (v607)
            {
              v22 = v411;
              v407 = v410;
            }

            v624 = v407;
            if (v607)
            {
              v36 = v410;
            }

            else
            {
              v36 += 8 * v606;
            }

            v18 = v616 - 1;
            if (v616 == 1)
            {
              return result;
            }
          }

        case 21:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)21,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v26, v44, *a1);
          }

          v422 = v39;
          v423 = -v40;
          v602 = -(v35 * v43);
          v424 = 8 * v39;
          while (1)
          {
            v617 = v18;
            v425 = v623;
            do
            {
              v426 = *v31;
              if (*v31)
              {
                a4.n128_f32[0] = v426 * 0.0039216;
                _Q1 = vmulq_n_f32(vcvtq_f32_f16(*v36), a4.n128_f32[0]);
                v427 = COERCE_DOUBLE(vcvt_f16_f32(_Q1));
                _Q7.i16[0] = HIWORD(v427);
                __asm { FCVT            S1, H7 }

                *_Q6.i32 = v23 ? _Q1.n128_f32[0] : v426 * 0.0039216;
                if (*_Q6.i32 > 0.0)
                {
                  _D3.i16[0] = v29->i16[3];
                  if (result)
                  {
                    __asm { FCMP            H3, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = LODWORD(v427);
                      v29->i16[2] = WORD2(v427);
                      __asm { FCVT            H3, S6 }

LABEL_533:
                      v29->i16[3] = _D3.i16[0];
                      goto LABEL_534;
                    }

                    __asm { FCVT            S4, H3 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  a4.n128_u16[0] = v29->i16[0];
                  _Q1.n128_u16[0] = v29->u16[1];
                  _Q2.n128_u16[0] = v29->u16[2];
                  v29->i16[0] = PDAhardlightPDA(a4, _Q1, _Q2, *&_D3, _S4, v427, *_Q6.i64, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, SLOWORD(v427), SWORD1(v427), SWORD2(v427), *_Q6.i32);
                  v29->i16[1] = v430;
                  v29->i16[2] = _Q2.n128_u16[0];
                  result = v625;
                  goto LABEL_533;
                }
              }

LABEL_534:
              v31 += v422;
              v431 = v36 + 8 * v422;
              if (v431 >= v22)
              {
                v432 = v423;
              }

              else
              {
                v432 = 0;
              }

              v36 = v431 + 8 * v432;
              v29 = (v29 + v424);
              --v425;
            }

            while (v425);
            v31 += v621;
            v29 += v622;
            v433 = v624;
            v434 = &v624->i8[8 * v606];
            v435 = v602;
            if (v434 < v607)
            {
              v435 = 0;
            }

            v436 = &v434[8 * v435];
            v437 = v22 + 8 * v435 + 8 * v606;
            if (v607)
            {
              v22 = v437;
              v433 = v436;
            }

            v624 = v433;
            if (v607)
            {
              v36 = v436;
            }

            else
            {
              v36 += 8 * v606;
            }

            v18 = v617 - 1;
            if (v617 == 1)
            {
              return result;
            }
          }

        case 22:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)22,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v26, v44, *a1);
          }

          v514 = v39;
          v515 = -v40;
          v604 = -(v35 * v43);
          v516 = 8 * v39;
          while (1)
          {
            v619 = v18;
            v517 = v623;
            do
            {
              v518 = *v31;
              if (*v31)
              {
                a4.n128_f32[0] = v518 * 0.0039216;
                _Q1 = vmulq_n_f32(vcvtq_f32_f16(*v36), a4.n128_f32[0]);
                v519 = COERCE_DOUBLE(vcvt_f16_f32(_Q1));
                _Q7.i16[0] = HIWORD(v519);
                __asm { FCVT            S1, H7 }

                *_Q6.i32 = v23 ? _Q1.f32[0] : v518 * 0.0039216;
                if (*_Q6.i32 > 0.0)
                {
                  _D3.i16[0] = v29->i16[3];
                  if (result)
                  {
                    __asm { FCMP            H3, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = LODWORD(v519);
                      v29->i16[2] = WORD2(v519);
                      __asm { FCVT            H3, S6 }

LABEL_651:
                      v29->i16[3] = _D3.i16[0];
                      goto LABEL_652;
                    }

                    __asm { FCVT            S4, H3 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  a4.n128_u16[0] = v29->i16[0];
                  _Q1.i16[0] = v29->i16[1];
                  _Q2.n128_u16[0] = v29->u16[2];
                  v29->i16[0] = PDAdifferencePDA(a4, *_Q1.i64, _Q2.n128_f64[0], *&_D3, _S4, v519, *_Q6.i64, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, SLOWORD(v519), SHIDWORD(v519), *_Q6.i32);
                  v29->i16[1] = v522;
                  v29->i16[2] = _Q2.n128_u16[0];
                  result = v625;
                  goto LABEL_651;
                }
              }

LABEL_652:
              v31 += v514;
              v523 = v36 + 8 * v514;
              if (v523 >= v22)
              {
                v524 = v515;
              }

              else
              {
                v524 = 0;
              }

              v36 = v523 + 8 * v524;
              v29 = (v29 + v516);
              --v517;
            }

            while (v517);
            v31 += v621;
            v29 += v622;
            v525 = v624;
            v526 = &v624->i8[8 * v606];
            v527 = v604;
            if (v526 < v607)
            {
              v527 = 0;
            }

            v528 = &v526[8 * v527];
            v529 = v22 + 8 * v527 + 8 * v606;
            if (v607)
            {
              v22 = v529;
              v525 = v528;
            }

            v624 = v525;
            if (v607)
            {
              v36 = v528;
            }

            else
            {
              v36 += 8 * v606;
            }

            v18 = v619 - 1;
            if (v619 == 1)
            {
              return result;
            }
          }

        case 23:
          if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
          {
            return composite_pixelmask<(CGCompositeOperation)23,_rgbaf16_t>(v29, v622, v36, v35, v624, v43, v40, v22, v41, v31, v621, v623, v18, v39, v26, v44, *a1);
          }

          a4.n128_u32[0] = 998277249;
          while (1)
          {
            v546 = v623;
            v547 = v624;
            do
            {
              if (*v31)
              {
                _S3 = *v31 * 0.0039216;
                _D4 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v36), _S3));
                _H5 = _D4.i16[3];
                __asm { FCVT            S5, H5 }

                if (v23)
                {
                  _S3 = _S5;
                }

                if (_S3 > 0.0)
                {
                  if (result)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = _D4.i32[0];
                      v29->i16[2] = _D4.i16[2];
LABEL_704:
                      __asm { FCVT            H3, S3 }

                      v29->i16[3] = _H3;
                      goto LABEL_705;
                    }

                    __asm { FCVT            S5, H5 }
                  }

                  else
                  {
                    _S5 = 1.0;
                  }

                  _H6 = v29->i16[0];
                  _Q7.i32[0] = *(v29->i32 + 2);
                  __asm
                  {
                    FCVT            S6, H6
                    FCVT            S16, H4
                  }

                  _S6 = (_S6 + _S16) + ((_S6 * _S16) * -2.0);
                  _S3 = (_S5 + _S3) - (_S5 * _S3);
                  __asm { FCVT            H5, S6 }

                  v559 = vcvtq_f32_f16(*_Q7.f32).u64[0];
                  v560 = vcvtq_f32_f16(vext_s8(_D4, a4.n128_u64[0], 2uLL)).u64[0];
                  *_Q7.f32 = vmla_f32(vadd_f32(v559, v560), 0xC0000000C0000000, vmul_f32(v559, v560));
                  v29->i16[0] = _H5;
                  *(v29->i32 + 2) = vcvt_f16_f32(_Q7).u32[0];
                  goto LABEL_704;
                }
              }

LABEL_705:
              v31 += v39;
              v562 = v36 + 8 * v39;
              if (v562 >= v22)
              {
                v563 = -v40;
              }

              else
              {
                v563 = 0;
              }

              v36 = v562 + 8 * v563;
              v29 += v39;
              --v546;
            }

            while (v546);
            v31 += v621;
            v29 += v622;
            v564 = &v624->i8[8 * v35];
            if (v564 >= v607)
            {
              v565 = -(v35 * v43);
            }

            else
            {
              v565 = 0;
            }

            v566 = &v564[8 * v565];
            v567 = v22 + 8 * v565 + 8 * v35;
            if (v607)
            {
              v22 = v567;
              v547 = v566;
            }

            v624 = v547;
            if (v607)
            {
              v36 = v566;
            }

            else
            {
              v36 += 8 * v35;
            }

            if (!--v18)
            {
              return result;
            }
          }

        case 24:
          v85 = v39;
          v86 = -v40;
          v595 = -(v35 * v43);
          v87 = 8 * v39;
          while (1)
          {
            v610 = v18;
            v88 = v623;
            do
            {
              v89 = *v31;
              if (*v31)
              {
                a4.n128_f32[0] = v89 * 0.0039216;
                _Q1 = vmulq_n_f32(vcvtq_f32_f16(*v36), a4.n128_f32[0]);
                v90 = COERCE_DOUBLE(vcvt_f16_f32(_Q1));
                _Q7.i16[0] = HIWORD(v90);
                __asm { FCVT            S1, H7 }

                *_Q6.i32 = v23 ? _Q1.n128_f32[0] : v89 * 0.0039216;
                if (*_Q6.i32 > 0.0)
                {
                  _D3.i16[0] = v29->i16[3];
                  if (result)
                  {
                    __asm { FCMP            H3, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = LODWORD(v90);
                      v29->i16[2] = WORD2(v90);
                      __asm { FCVT            H3, S6 }

LABEL_113:
                      v29->i16[3] = _D3.i16[0];
                      goto LABEL_114;
                    }

                    __asm { FCVT            S4, H3 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  a4.n128_u16[0] = v29->i16[0];
                  _Q1.n128_u16[0] = v29->u16[1];
                  _Q2.n128_u16[0] = v29->u16[2];
                  v29->i16[0] = PDAhuePDA(a4, _Q1, _Q2, *&_D3, _S4, v90, *_Q6.i64, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, SLOWORD(v90), SWORD1(v90), SWORD2(v90), *_Q6.i32);
                  v29->i16[1] = v93;
                  v29->i16[2] = _Q2.n128_u16[0];
                  result = v625;
                  goto LABEL_113;
                }
              }

LABEL_114:
              v31 += v85;
              v94 = v36 + 8 * v85;
              if (v94 >= v22)
              {
                v95 = v86;
              }

              else
              {
                v95 = 0;
              }

              v36 = v94 + 8 * v95;
              v29 = (v29 + v87);
              --v88;
            }

            while (v88);
            v31 += v621;
            v29 += v622;
            v96 = v624;
            v97 = &v624->i8[8 * v606];
            v98 = v595;
            if (v97 < v607)
            {
              v98 = 0;
            }

            v99 = &v97[8 * v98];
            v100 = v22 + 8 * v98 + 8 * v606;
            if (v607)
            {
              v22 = v100;
              v96 = v99;
            }

            v624 = v96;
            if (v607)
            {
              v36 = v99;
            }

            else
            {
              v36 += 8 * v606;
            }

            v18 = v610 - 1;
            if (v610 == 1)
            {
              return result;
            }
          }

        case 25:
          v69 = v39;
          v70 = -v40;
          v594 = -(v35 * v43);
          v71 = 8 * v39;
          while (1)
          {
            v609 = v18;
            v72 = v623;
            do
            {
              v73 = *v31;
              if (*v31)
              {
                a4.n128_f32[0] = v73 * 0.0039216;
                _Q1 = vmulq_n_f32(vcvtq_f32_f16(*v36), a4.n128_f32[0]);
                v74 = COERCE_DOUBLE(vcvt_f16_f32(_Q1));
                _Q7.i16[0] = HIWORD(v74);
                __asm { FCVT            S1, H7 }

                *_Q6.i32 = v23 ? _Q1.n128_f32[0] : v73 * 0.0039216;
                if (*_Q6.i32 > 0.0)
                {
                  _D3.i16[0] = v29->i16[3];
                  if (result)
                  {
                    __asm { FCMP            H3, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = LODWORD(v74);
                      v29->i16[2] = WORD2(v74);
                      __asm { FCVT            H3, S6 }

LABEL_86:
                      v29->i16[3] = _D3.i16[0];
                      goto LABEL_87;
                    }

                    __asm { FCVT            S4, H3 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  a4.n128_u16[0] = v29->i16[0];
                  _Q1.n128_u16[0] = v29->u16[1];
                  _Q2.n128_u16[0] = v29->u16[2];
                  v29->i16[0] = PDAsaturationPDA(a4, _Q1, _Q2, *&_D3, _S4, v74, *_Q6.i64, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, SLOWORD(v74), SWORD1(v74), SWORD2(v74), *_Q6.i32);
                  v29->i16[1] = v77;
                  v29->i16[2] = _Q2.n128_u16[0];
                  result = v625;
                  goto LABEL_86;
                }
              }

LABEL_87:
              v31 += v69;
              v78 = v36 + 8 * v69;
              if (v78 >= v22)
              {
                v79 = v70;
              }

              else
              {
                v79 = 0;
              }

              v36 = v78 + 8 * v79;
              v29 = (v29 + v71);
              --v72;
            }

            while (v72);
            v31 += v621;
            v29 += v622;
            v80 = v624;
            v81 = &v624->i8[8 * v606];
            v82 = v594;
            if (v81 < v607)
            {
              v82 = 0;
            }

            v83 = &v81[8 * v82];
            v84 = v22 + 8 * v82 + 8 * v606;
            if (v607)
            {
              v22 = v84;
              v80 = v83;
            }

            v624 = v80;
            if (v607)
            {
              v36 = v83;
            }

            else
            {
              v36 += 8 * v606;
            }

            v18 = v609 - 1;
            if (v609 == 1)
            {
              return result;
            }
          }

        case 26:
          v117 = v39;
          v118 = -v40;
          v597 = -(v35 * v43);
          v119 = 8 * v39;
          while (1)
          {
            v612 = v18;
            v120 = v623;
            do
            {
              v121 = *v31;
              if (*v31)
              {
                a5.n128_f32[0] = v121 * 0.0039216;
                v122 = vmulq_n_f32(vcvtq_f32_f16(*v36), a5.n128_f32[0]);
                v122.n128_u64[0] = vcvt_f16_f32(v122);
                _D3.i16[0] = v122.n128_i16[3];
                __asm { FCVT            S2, H3 }

                _S4 = v23 ? _Q2.n128_f32[0] : v121 * 0.0039216;
                if (_S4 > 0.0)
                {
                  _Q5.i16[0] = v29->i16[3];
                  if (result)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      v29->i32[0] = v122.n128_u32[0];
                      v29->i16[2] = v122.n128_i16[2];
                      __asm { FCVT            H3, S4 }

LABEL_216:
                      v29->i16[3] = _D3.i16[0];
                      goto LABEL_217;
                    }

                    __asm { FCVT            S6, H5 }
                  }

                  else
                  {
                    _Q6.i32[0] = 1.0;
                  }

                  _Q7.i16[0] = v29->i16[0];
                  a5.n128_u16[0] = v122.n128_u16[1];
                  _Q2.n128_u16[0] = v122.n128_u16[2];
                  v29->i16[0] = PDAluminosityPDA(v122, a5, _Q2, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, v29->i16[0], *(v29->i32 + 2), HIWORD(*(v29->i32 + 2)), *_Q6.i32);
                  v29->i16[1] = a5.n128_u16[0];
                  v29->i16[2] = _Q2.n128_u16[0];
                  result = v625;
                  goto LABEL_216;
                }
              }

LABEL_217:
              v31 += v117;
              v124 = v36 + 8 * v117;
              if (v124 >= v22)
              {
                v125 = v118;
              }

              else
              {
                v125 = 0;
              }

              v36 = v124 + 8 * v125;
              v29 = (v29 + v119);
              --v120;
            }

            while (v120);
            v31 += v621;
            v29 += v622;
            v126 = v624;
            v127 = &v624->i8[8 * v606];
            v128 = v597;
            if (v127 < v607)
            {
              v128 = 0;
            }

            v129 = &v127[8 * v128];
            v130 = v22 + 8 * v128 + 8 * v606;
            if (v607)
            {
              v22 = v130;
              v126 = v129;
            }

            v624 = v126;
            if (v607)
            {
              v36 = v129;
            }

            else
            {
              v36 += 8 * v606;
            }

            v18 = v612 - 1;
            if (v612 == 1)
            {
              return result;
            }
          }

        case 27:
          v49 = v39;
          v50 = -v40;
          v593 = -(v35 * v43);
          v51 = 8 * v39;
          break;
        default:
          return result;
      }

LABEL_29:
      v608 = v18;
      v52 = v623;
      while (1)
      {
        v53 = *v31;
        if (!*v31)
        {
          goto LABEL_42;
        }

        a4.n128_f32[0] = v53 * 0.0039216;
        _Q1 = vmulq_n_f32(vcvtq_f32_f16(*v36), a4.n128_f32[0]);
        v54 = COERCE_DOUBLE(vcvt_f16_f32(_Q1));
        _Q7.i16[0] = HIWORD(v54);
        __asm { FCVT            S1, H7 }

        *_Q6.i32 = v23 ? _Q1.n128_f32[0] : v53 * 0.0039216;
        if (*_Q6.i32 <= 0.0)
        {
          goto LABEL_42;
        }

        _D3.i16[0] = v29->i16[3];
        if (!result)
        {
          break;
        }

        __asm { FCMP            H3, #0 }

        if (!_ZF & _CF)
        {
          __asm { FCVT            S4, H3 }

LABEL_40:
          a4.n128_u16[0] = v29->i16[0];
          _Q1.n128_u16[0] = v29->u16[1];
          _Q2.n128_u16[0] = v29->u16[2];
          v29->i16[0] = PDAluminosityPDA(a4, _Q1, _Q2, *&_D3, _S4, v54, *_Q6.i64, *_Q7.i64, result, v27, a3, v39, v44, v43, v40, a16, SLOWORD(v54), SWORD1(v54), SWORD2(v54), *_Q6.i32);
          v29->i16[1] = v61;
          v29->i16[2] = _Q2.n128_u16[0];
          result = v625;
          goto LABEL_41;
        }

        v29->i32[0] = LODWORD(v54);
        v29->i16[2] = WORD2(v54);
        __asm { FCVT            H3, S6 }

LABEL_41:
        v29->i16[3] = _D3.i16[0];
LABEL_42:
        v31 += v49;
        v62 = v36 + 8 * v49;
        if (v62 >= v22)
        {
          v63 = v50;
        }

        else
        {
          v63 = 0;
        }

        v36 = v62 + 8 * v63;
        v29 = (v29 + v51);
        if (!--v52)
        {
          v31 += v621;
          v29 += v622;
          v64 = v624;
          v65 = &v624->i8[8 * v606];
          v66 = v593;
          if (v65 < v607)
          {
            v66 = 0;
          }

          v67 = &v65[8 * v66];
          v68 = v22 + 8 * v66 + 8 * v606;
          if (v607)
          {
            v22 = v68;
            v64 = v67;
          }

          v624 = v64;
          if (v607)
          {
            v36 = v67;
          }

          else
          {
            v36 += 8 * v606;
          }

          v18 = v608 - 1;
          if (v608 == 1)
          {
            return result;
          }

          goto LABEL_29;
        }
      }

      _S4 = 1.0;
      goto LABEL_40;
    }

    v37 = (v29 - v36) >> 3;
    if (v37 >= 1)
    {
      if (v37 <= v623)
      {
        v29 += v623 - 1;
        v36 += 8 * (v623 - 1);
        v31 += v623 - 1;
        v39 = 0xFFFFFFFFLL;
        goto LABEL_13;
      }

      v38 = v28 * (v18 - 1);
      if (v29 <= v36 + 8 * v38 + 8 * v623 - 8)
      {
        v29 += v38;
        v35 = -v28;
        v31 += v30 * (v18 - 1);
        v30 = -v30;
        v39 = 1;
        v36 += 8 * v38;
        v28 = -v28;
        goto LABEL_14;
      }
    }

    v39 = 1;
LABEL_13:
    v35 = v28;
    goto LABEL_14;
  }

  return result;
}

void RGBAf16_mark_const_deep_mask_ARGB(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 4);
  v9 = *(a1 + 8);
  if (v8 >= 1 && v9 >= 1)
  {
    v12 = *(a1 + 136);
    if (v12)
    {
      v14 = *(a1 + 40);
      if (use_vImage_font_smoothing(void)::predicate != -1)
      {
        dispatch_once(&use_vImage_font_smoothing(void)::predicate, &__block_literal_global_14_21947);
      }

      if (use_vImage_font_smoothing(void)::status == 1)
      {
        if ((a2 - 3) <= 0xFFFFFFFD)
        {
          _CGHandleAssert("RGBAf16_mark_const_deep_mask_ARGB", 9559, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "mode == COPY || mode == SOVER", "mode = %d", a6, a7, a8, a2);
        }

        v15 = vImageCGCompositeMarkConstDeepMaskARGB_ARGB16F();
        if (v15)
        {
          CGPostError("vImageCGCompositeMarkConstDeepMaskARGB_ARGB16F failed %ld", v16, v17, v18, v19, v20, v21, v22, v15);
        }
      }

      else
      {
        v23 = *(a1 + 124);
        if (v23)
        {
          _CGHandleAssert("RGBAf16_mark_const_deep_mask_ARGB", 9588, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "((mdn >> 1) << 1) == mdn", "%ld", a6, a7, a8, *(a1 + 124));
        }

        if ((a2 - 1) > 1)
        {
          _CGHandleAssert("RGBAf16_mark_const_deep_mask_ARGB", 9685, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "", "Unimplemented", a6, a7, a8, v145);
        }

        v24 = *(a1 + 28) >> 3;
        v25 = v14 + 8 * v24 * *(a1 + 16) + 8 * *(a1 + 12);
        v26 = v23 >> 1;
        v27 = v26 - v8;
        v28 = v24 - v8;
        v29 = v12 + 2 * v26 * *(a1 + 108) + 2 * *(a1 + 104);
        LOWORD(v30) = COERCE_UNSIGNED_INT(1.0);
        do
        {
          v31 = (v29 & 3) != 0;
          v32 = (v29 + 2 * v8) & 0xFFFFFFFFFFFFFFFCLL;
          v33 = v29 + 4 * v8;
          v34 = v8;
          do
          {
            if (v31)
            {
              v35 = *v29;
              v36 = 1;
              v37 = 1;
            }

            else if (v34 == 1)
            {
              if (v32 == v33)
              {
                _CGHandleAssert("RGBAf16_mark_const_deep_mask_ARGB", 9616, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "postamble == true", "mdp %p w %d", a6, a7, a8, v29);
              }

              v35 = *v29;
              v37 = 1;
              v36 = 1;
            }

            else
            {
              v36 = 0;
              v35 = *v29;
              v37 = 2;
            }

            if ((v35 & 0x7FFF7FFF) != 0)
            {
              v38 = HIWORD(v35);
              do
              {
                v39 = v36;
                v40 = v35 & 0x7FFF;
                if ((v35 & 0x7FFF) != 0)
                {
                  __asm
                  {
                    FCMP            H2, #0
                    FCMP            H17, #0
                  }

                  _ZF = _ZF || _H17 == v30;
                  if (!_ZF)
                  {
                    __asm { FCVT            S4, H17 }

                    v48 = _H17 * _H17;
                    _S4 = -(_S4 * _S4);
                    __asm
                    {
                      FCVT            H4, S4
                      FCMP            H17, #0
                    }

                    if (_NF)
                    {
                      _H17 = _H4;
                    }

                    else
                    {
                      _H17 = v48;
                    }
                  }

                  __asm { FCMP            H7, #0 }

                  if (!_ZF && _H7 != v30)
                  {
                    __asm { FCVT            S4, H7 }

                    v55 = _H7 * _H7;
                    _S4 = -(_S4 * _S4);
                    __asm
                    {
                      FCVT            H4, S4
                      FCMP            H7, #0
                    }

                    if (_NF)
                    {
                      _H7 = _H4;
                    }

                    else
                    {
                      _H7 = v55;
                    }
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF && _H3 != v30)
                  {
                    __asm { FCVT            S4, H3 }

                    v62 = _H3 * _H3;
                    _S4 = -(_S4 * _S4);
                    __asm
                    {
                      FCVT            H4, S4
                      FCMP            H3, #0
                    }

                    if (_NF)
                    {
                      _H3 = _H4;
                    }

                    else
                    {
                      _H3 = v62;
                    }
                  }

                  _H6 = *v25;
                  _H5 = *(v25 + 2);
                  _H4 = *(v25 + 4);
                  __asm
                  {
                    FCMP            H16, #0
                    FCMP            H20, #0
                  }

                  if (!_ZF && _H20 != v30)
                  {
                    __asm { FCVT            S21, H20 }

                    v72 = _H20 * _H20;
                    _S21 = -(_S21 * _S21);
                    __asm
                    {
                      FCVT            H21, S21
                      FCMP            H20, #0
                    }

                    if (_NF)
                    {
                      _H20 = _H21;
                    }

                    else
                    {
                      _H20 = v72;
                    }
                  }

                  __asm { FCMP            H19, #0 }

                  if (!_ZF && _H19 != v30)
                  {
                    __asm { FCVT            S21, H19 }

                    v78 = _H19 * _H19;
                    _S21 = -(_S21 * _S21);
                    __asm
                    {
                      FCVT            H21, S21
                      FCMP            H19, #0
                    }

                    if (_NF)
                    {
                      _H19 = _H21;
                    }

                    else
                    {
                      _H19 = v78;
                    }
                  }

                  __asm { FCMP            H18, #0 }

                  if (!_ZF && _H18 != v30)
                  {
                    __asm { FCVT            S21, H18 }

                    v84 = _H18 * _H18;
                    _S21 = -(_S21 * _S21);
                    __asm
                    {
                      FCVT            H21, S21
                      FCMP            H18, #0
                    }

                    if (_NF)
                    {
                      _H18 = _H21;
                    }

                    else
                    {
                      _H18 = v84;
                    }
                  }

                  __asm
                  {
                    FCVT            S17, H17
                    FCVT            S20, H20
                  }

                  _S17 = _S20 + ((_S17 - _S20) * ((v40 >> 10) / 31.0));
                  __asm
                  {
                    FCVT            H17, S17
                    FCMP            H17, #0
                  }

                  if (!_ZF && _H17 != v30)
                  {
                    __asm { FCVT            S20, H17 }

                    v94 = sqrtf(_S20);
                    v95 = -sqrtf(fabsf(_S20));
                    __asm { FCMP            H17, #0 }

                    if (_NF)
                    {
                      _S17 = v95;
                    }

                    else
                    {
                      _S17 = v94;
                    }

                    __asm { FCVT            H17, S17 }
                  }

                  __asm
                  {
                    FCVT            S7, H7
                    FCVT            S19, H19
                  }

                  _S7 = _S19 + ((_S7 - _S19) * (((v40 >> 5) & 0x1F) / 31.0));
                  __asm
                  {
                    FCVT            H7, S7
                    FCMP            H7, #0
                  }

                  if (!_ZF && _H7 != v30)
                  {
                    __asm { FCVT            S19, H7 }

                    v104 = sqrtf(_S19);
                    v105 = -sqrtf(fabsf(_S19));
                    __asm { FCMP            H7, #0 }

                    if (_NF)
                    {
                      _S7 = v105;
                    }

                    else
                    {
                      _S7 = v104;
                    }

                    __asm { FCVT            H7, S7 }
                  }

                  __asm
                  {
                    FCVT            S3, H3
                    FCVT            S18, H18
                  }

                  _S3 = _S18 + ((_S3 - _S18) * ((v35 & 0x1F) / 31.0));
                  __asm
                  {
                    FCVT            H3, S3
                    FCMP            H3, #0
                  }

                  if (!_ZF && _H3 != v30)
                  {
                    __asm { FCVT            S18, H3 }

                    v114 = sqrtf(_S18);
                    v115 = -sqrtf(fabsf(_S18));
                    __asm { FCMP            H3, #0 }

                    if (_NF)
                    {
                      _S3 = v115;
                    }

                    else
                    {
                      _S3 = v114;
                    }

                    __asm { FCVT            H3, S3 }
                  }

                  v118 = ((((v35 >> 2) & 0xF8) + 16) * ((v35 >> 2) & 0xF8)) >> 8;
                  __asm { FCVT            S16, H16 }

                  _S18 = ((v118 / 255.0) - (_S16 * (v118 / 255.0))) + _S16;
                  __asm
                  {
                    FCVT            H18, S18
                    FCVT            S19, H18
                    FCMP            H18, #0
                  }

                  if (_NF ^ _VF | _ZF)
                  {
                    v123 = 0;
                  }

                  else
                  {
                    v123 = 1;
                  }

                  v124 = _H18 < v30;
                  v125 = _H17 * _H18;
                  v126 = _H7 * _H18;
                  v127 = _H3 * _H18;
                  if ((v123 & v124) != 0)
                  {
                    _H3 = v127;
                    _H7 = v126;
                    _H17 = v125;
                  }

                  __asm
                  {
                    FCVT            S17, H17
                    FCVT            S6, H6
                    FCVT            S2, H2
                  }

                  _S6 = _S6 + ((_S17 - _S6) * _S2);
                  __asm
                  {
                    FCVT            H6, S6
                    FCVT            S7, H7
                    FCVT            S5, H5
                  }

                  _S5 = _S5 + ((_S7 - _S5) * _S2);
                  __asm
                  {
                    FCVT            H5, S5
                    FCVT            S3, H3
                    FCVT            S4, H4
                  }

                  _S3 = _S4 + ((_S3 - _S4) * _S2);
                  __asm { FCVT            H3, S3 }

                  _S2 = _S16 + ((_S19 - _S16) * _S2);
                  __asm { FCVT            H2, S2 }

                  *(v25 + 6) = _H2;
                  if (_H6 > _H2)
                  {
                    v143 = _H2;
                  }

                  else
                  {
                    v143 = _H6;
                  }

                  *v25 = v143;
                  if (_H5 > _H2)
                  {
                    v144 = _H2;
                  }

                  else
                  {
                    v144 = _H5;
                  }

                  *(v25 + 2) = v144;
                  if (_H3 <= _H2)
                  {
                    _H2 = _H3;
                  }

                  *(v25 + 4) = _H2;
                }

                v25 += 8;
                v36 = 1;
                v35 = v38;
              }

              while ((v39 & 1) == 0);
            }

            else
            {
              v25 += 8 * v37;
            }

            v31 = 0;
            v29 += 2 * v37;
            _VF = __OFSUB__(v34, v37);
            v34 -= v37;
          }

          while (!((v34 < 0) ^ _VF | (v34 == 0)));
          v29 += 2 * v27;
          v25 += 8 * v28;
          _VF = __OFSUB__(v9--, 1);
        }

        while (!((v9 < 0) ^ _VF | (v9 == 0)));
      }
    }
  }
}

void RGBAf16_mark_const_deep_mask_BGColorARGB(uint64_t a1, int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double _D6, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = *(a1 + 4);
  v20 = *(a1 + 8);
  if (v19 < 1 || v20 < 1)
  {
    return;
  }

  v23 = *(a1 + 136);
  if (!v23)
  {
    return;
  }

  v26 = *(a1 + 40);
  v27 = *(a1 + 88);
  if (use_vImage_font_smoothing(void)::predicate != -1)
  {
    dispatch_once(&use_vImage_font_smoothing(void)::predicate, &__block_literal_global_14_21947);
  }

  v28 = *(a1 + 124);
  if (v28)
  {
    _CGHandleAssert("RGBAf16_mark_const_deep_mask_BGColorARGB", 9759, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "((mdn >> 1) << 1) == mdn", "mdn = %ld", a13, a14, a15, *(a1 + 124));
  }

  if ((a2 - 1) > 1)
  {
    _CGHandleAssert("RGBAf16_mark_const_deep_mask_BGColorARGB", 9883, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "", "Unimplemented", a13, a14, a15, v186);
  }

  v29 = *(a1 + 28) >> 3;
  v30 = v26 + 8 * v29 * *(a1 + 16) + 8 * *(a1 + 12);
  v31 = v28 >> 1;
  v32 = (v28 >> 1) - v19;
  v33 = v29 - v19;
  v34 = v23 + 2 * v31 * *(a1 + 108) + 2 * *(a1 + 104);
  LOWORD(v35) = COERCE_UNSIGNED_INT(1.0);
  while (2)
  {
    v36 = (v34 & 3) != 0;
    v37 = (v34 + 2 * v19) & 0xFFFFFFFFFFFFFFFCLL;
    v38 = v34 + 4 * v19;
    v39 = v19;
    do
    {
      if (v36)
      {
        v40 = *v34;
        v41 = 1;
        v42 = 1;
        if (!*v34)
        {
          goto LABEL_18;
        }
      }

      else if (v39 == 1)
      {
        if (v37 == v38)
        {
          _CGHandleAssert("RGBAf16_mark_const_deep_mask_BGColorARGB", 9787, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "postamble == true", "", a13, a14, a15, v186);
        }

        v40 = *v34;
        v42 = 1;
        v41 = 1;
        if (!*v34)
        {
LABEL_18:
          v30 += 8 * v42;
          goto LABEL_128;
        }
      }

      else
      {
        v41 = 0;
        v40 = *v34;
        v42 = 2;
        if (!*v34)
        {
          goto LABEL_18;
        }
      }

      v43 = v40;
      v44 = HIWORD(v40);
      do
      {
        v45 = v41;
        if (v43)
        {
          _H19 = *(v27 + 4);
          _H18 = *(v27 + 6);
          _H7 = *(v30 + 4);
          _H5 = *(v30 + 6);
          __asm { FCVT            S5, H5 }

          v53 = 1.0 - _S5;
          if ((1.0 - _S5) > 1.0)
          {
            v53 = 1.0;
          }

          if (v53 >= 0.0)
          {
            v54 = v53;
          }

          else
          {
            v54 = 0.0;
          }

          _D21.i32[0] = *v27;
          LODWORD(_D6) = *v30;
          _D16.i32[0] = *a3;
          _D16 = vcvtq_f32_f16(_D16).u64[0];
          *&_D6 = vcvtq_f32_f16(*&_D6).u64[0];
          *_Q17.f32 = vmla_n_f32(*&_D6, _D16, v54);
          *_Q17.f32 = vcvt_f16_f32(_Q17);
          _D16.i16[0] = *(a3 + 4);
          __asm
          {
            FCVT            S16, H16
            FCVT            S7, H7
          }

          *_D16.i32 = _S7 + (*_D16.i32 * v54);
          __asm { FCVT            H16, S16 }

          _H22 = *(a3 + 6);
          __asm { FCVT            S22, H22 }

          _S20 = _S5 + (_S22 * v54);
          __asm { FCVT            H20, S20 }

          if (a2 == 2)
          {
            __asm { FCVT            S18, H18 }

            v61 = 1.0 - _S18;
            if ((1.0 - _S18) > 1.0)
            {
              v61 = 1.0;
            }

            if (v61 < 0.0)
            {
              v61 = 0.0;
            }

            v62 = vcvtq_f32_f16(_D21);
            *v62.f32 = vmla_n_f32(*v62.f32, *&vcvtq_f32_f16(*_Q17.f32), v61);
            _D21 = vcvt_f16_f32(v62);
            __asm
            {
              FCVT            S23, H16
              FCVT            S19, H19
            }

            _S19 = _S19 + (_S23 * v61);
            __asm
            {
              FCVT            H19, S19
              FCVT            S23, H20
            }

            *_D18.i32 = _S18 + (_S23 * v61);
            __asm { FCVT            H18, S18 }
          }

          __asm { FCMP            H18, #0 }

          if (_NF ^ _VF | _ZF)
          {
            _NF = 0;
          }

          else
          {
            _NF = *_D18.i16 < v35;
          }

          if (_NF)
          {
            _D21 = vdiv_f16(_D21, vdup_lane_s16(_D18, 0));
          }

          _H22 = *_D21.i16;
          __asm { FCMP            H21, #0 }

          if (!_ZF && _H22 != v35)
          {
            __asm { FCVT            S23, H22 }

            v70 = vmul_f16(_D21, _D21).u16[0];
            _S23 = -(_S23 * _S23);
            __asm
            {
              FCVT            H23, S23
              FCMP            H22, #0
            }

            if (_NF)
            {
              _H22 = _H23;
            }

            else
            {
              _H22 = *&v70;
            }
          }

          __asm { FCMP            H23, #0 }

          _ZF = _ZF || _H23 == v35;
          if (!_ZF)
          {
            __asm { FCVT            S21, H23 }

            v77 = _H23 * _H23;
            _S21 = -(_S21 * _S21);
            __asm
            {
              FCVT            H21, S21
              FCMP            H23, #0
            }

            if (_NF)
            {
              _H23 = _H21;
            }

            else
            {
              _H23 = v77;
            }
          }

          __asm { FCMP            H19, #0 }

          if (!_ZF && _H19 != v35)
          {
            __asm { FCVT            S21, H19 }

            v83 = _H19 * _H19;
            _S21 = -(_S21 * _S21);
            __asm
            {
              FCVT            H21, S21
              FCMP            H19, #0
            }

            if (_NF)
            {
              _H19 = _H21;
            }

            else
            {
              _H19 = v83;
            }
          }

          _H21 = _Q17.i16[1];
          __asm
          {
            FCMP            H20, #0
            FCMP            H28, #0
          }

          if (!_ZF && _H28 != v35)
          {
            __asm { FCVT            S26, H28 }

            v92 = _H28 * _H28;
            _S26 = -(_S26 * _S26);
            __asm
            {
              FCVT            H26, S26
              FCMP            H28, #0
            }

            if (_NF)
            {
              _H28 = _H26;
            }

            else
            {
              _H28 = v92;
            }
          }

          __asm { FCMP            H25, #0 }

          if (!_ZF && _H25 != v35)
          {
            __asm { FCVT            S26, H25 }

            v99 = _H25 * _H25;
            _S26 = -(_S26 * _S26);
            __asm
            {
              FCVT            H26, S26
              FCMP            H25, #0
            }

            if (_NF)
            {
              _H25 = _H26;
            }

            else
            {
              _H25 = v99;
            }
          }

          __asm { FCMP            H24, #0 }

          if (!_ZF && _H24 != v35)
          {
            __asm { FCVT            S26, H24 }

            v106 = _H24 * _H24;
            _S26 = -(_S26 * _S26);
            __asm
            {
              FCVT            H26, S26
              FCMP            H24, #0
            }

            if (_NF)
            {
              _H24 = _H26;
            }

            else
            {
              _H24 = v106;
            }
          }

          _S26 = ((v43 >> 10) & 0x1F) / 31.0;
          __asm { FCVT            H26, S26 }

          _S27 = ((v43 >> 5) & 0x1F) / 31.0;
          __asm { FCVT            H27, S27 }

          _S29 = (v43 & 0x1F) / 31.0;
          __asm
          {
            FCVT            H29, S29
            FCVT            S30, H26
          }

          if (_H27 <= _H29)
          {
            v117 = _H29;
          }

          else
          {
            v117 = _H27;
          }

          if (v117 >= _H26)
          {
            _H26 = v117;
          }

          __asm
          {
            FCVT            S22, H22
            FCVT            S28, H28
          }

          _S22 = ((1.0 - _S30) * _S28) + (_S30 * _S22);
          __asm
          {
            FCVT            H22, S22
            FCMP            H22, #0
          }

          if (!_ZF && _H22 != v35)
          {
            __asm { FCVT            S28, H22 }

            v124 = sqrtf(_S28);
            v125 = -sqrtf(fabsf(_S28));
            __asm { FCMP            H22, #0 }

            if (_NF)
            {
              _S22 = v125;
            }

            else
            {
              _S22 = v124;
            }

            __asm { FCVT            H22, S22 }
          }

          __asm
          {
            FCVT            S28, H27
            FCVT            S23, H23
            FCVT            S25, H25
          }

          _S23 = ((1.0 - _S28) * _S25) + (_S28 * _S23);
          __asm
          {
            FCVT            H23, S23
            FCMP            H23, #0
          }

          if (!_ZF && _H23 != v35)
          {
            __asm { FCVT            S25, H23 }

            v135 = sqrtf(_S25);
            v136 = -sqrtf(fabsf(_S25));
            __asm { FCMP            H23, #0 }

            if (_NF)
            {
              _S23 = v136;
            }

            else
            {
              _S23 = v135;
            }

            __asm { FCVT            H23, S23 }
          }

          __asm
          {
            FCVT            S25, H29
            FCVT            S19, H19
            FCVT            S24, H24
          }

          _S19 = ((1.0 - _S25) * _S24) + (_S25 * _S19);
          __asm
          {
            FCVT            H19, S19
            FCMP            H19, #0
          }

          if (!_ZF && _H19 != v35)
          {
            __asm { FCVT            S24, H19 }

            v146 = sqrtf(_S24);
            v147 = -sqrtf(fabsf(_S24));
            __asm { FCMP            H19, #0 }

            if (_NF)
            {
              _S19 = v147;
            }

            else
            {
              _S19 = v146;
            }

            __asm { FCVT            H19, S19 }
          }

          _H24 = _H27 * _H27;
          __asm
          {
            FCVT            S24, H24
            FCVT            S18, H18
            FCVT            S20, H20
          }

          _S18 = ((1.0 - _S24) * _S20) + (_S24 * _S18);
          __asm
          {
            FCVT            H18, S18
            FCMP            H18, #0
          }

          if (_NF ^ _VF | _ZF)
          {
            v156 = 0;
          }

          else
          {
            v156 = 1;
          }

          if ((v156 & (_H18 < v35)) != 0)
          {
            _H19 = _H19 * _H18;
            _H23 = _H23 * _H18;
            _H22 = _H22 * _H18;
          }

          _H24 = v35 - _H26;
          __asm
          {
            FCVT            S17, H17
            FCVT            S24, H24
            FCVT            S22, H22
          }

          _S17 = _S22 - (_S17 * _S24);
          __asm
          {
            FCVT            H17, S17
            FCVT            S21, H21
            FCVT            S22, H23
          }

          _S21 = _S22 - (_S21 * _S24);
          __asm
          {
            FCVT            H21, S21
            FCVT            S16, H16
            FCVT            S19, H19
          }

          _S16 = _S19 - (_S16 * _S24);
          __asm
          {
            FCVT            H16, S16
            FCVT            S18, H18
          }

          _S18 = _S18 - (_S20 * _S24);
          __asm
          {
            FCVT            H18, S18
            FCVT            S18, H18
          }

          _S19 = 1.0 - *_D18.i32;
          if ((1.0 - *_D18.i32) > 1.0)
          {
            _S19 = 1.0;
          }

          if (_S19 < 0.0)
          {
            _S19 = 0.0;
          }

          __asm { FCVT            S17, H17 }

          _S17 = _S17 + (*&_D6 * _S19);
          __asm { FCVT            H17, S17 }

          *v30 = LOWORD(_S17);
          __asm
          {
            FCVT            S17, H21
            FMLA            S17, S19, V6.S[1]
            FCVT            H6, S17
          }

          *(v30 + 2) = _H6;
          __asm { FCVT            S6, H16 }

          _S6 = _S6 + (_S7 * _S19);
          __asm { FCVT            H6, S6 }

          *(v30 + 4) = LOWORD(_S6);
          _S5 = *_D18.i32 + (_S5 * _S19);
          __asm
          {
            FCVT            H5, S5
            FCMP            H5, #0
          }

          v183 = _NF;
          if (_H5 > v35)
          {
            v184 = 1;
          }

          else
          {
            v184 = v183;
          }

          if ((v183 & (_H5 <= v35)) != 0)
          {
            v185 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v185) = COERCE_UNSIGNED_INT(1.0);
          }

          if (v184)
          {
            _H5 = v185;
          }

          *(v30 + 6) = _H5;
        }

        v30 += 8;
        v41 = 1;
        v43 = v44;
      }

      while ((v45 & 1) == 0);
LABEL_128:
      v36 = 0;
      v34 += 2 * v42;
      _VF = __OFSUB__(v39, v42);
      v39 -= v42;
    }

    while (!((v39 < 0) ^ _VF | (v39 == 0)));
    v34 += 2 * v32;
    v30 += 8 * v33;
    _VF = __OFSUB__(v20--, 1);
    if (!((v20 < 0) ^ _VF | (v20 == 0)))
    {
      continue;
    }

    break;
  }
}

void RGBAf16_mark_const_deep_mask_XRGB(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 4);
  v9 = *(a1 + 8);
  if (v8 >= 1 && v9 >= 1)
  {
    v12 = *(a1 + 136);
    if (v12)
    {
      v14 = *(a1 + 40);
      if (use_vImage_font_smoothing(void)::predicate != -1)
      {
        dispatch_once(&use_vImage_font_smoothing(void)::predicate, &__block_literal_global_14_21947);
      }

      if (use_vImage_font_smoothing(void)::status == 1)
      {
        if ((a2 - 3) <= 0xFFFFFFFD)
        {
          _CGHandleAssert("RGBAf16_mark_const_deep_mask_XRGB", 9918, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "mode == COPY || mode == SOVER", "mode = %d", a6, a7, a8, a2);
        }

        if (vImageCGCompositeMarkConstDeepMaskXRGB_ARGB16F())
        {
          CGPostError("vImageCGCompositeMarkConstDeepMaskXRGB_ARGB16F failed", v15, v16, v17, v18, v19, v20, v21, v132);
        }
      }

      else
      {
        v22 = *(a1 + 124);
        if (v22)
        {
          _CGHandleAssert("RGBAf16_mark_const_deep_mask_XRGB", 9947, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "((mdn >> 1) << 1) == mdn", "mdn = %ld", a6, a7, a8, *(a1 + 124));
        }

        if ((a2 - 1) > 1)
        {
          _CGHandleAssert("RGBAf16_mark_const_deep_mask_XRGB", 10032, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "", "Unimplemented", a6, a7, a8, v132);
        }

        v23 = *(a1 + 28) >> 3;
        v24 = (v14 + 8 * v23 * *(a1 + 16) + 8 * *(a1 + 12));
        v25 = v22 >> 1;
        v26 = (v22 >> 1) - v8;
        v27 = v23 - v8;
        v28 = v12 + 2 * v25 * *(a1 + 108) + 2 * *(a1 + 104);
        LOWORD(v29) = COERCE_UNSIGNED_INT(1.0);
        do
        {
          v30 = (v28 & 3) != 0;
          v31 = (v28 + 2 * v8) & 0xFFFFFFFFFFFFFFFCLL;
          v32 = v28 + 4 * v8;
          v33 = v8;
          do
          {
            if (v30)
            {
              v34 = *v28;
              v35 = 1;
              v36 = 1;
            }

            else if (v33 == 1)
            {
              if (v31 == v32)
              {
                _CGHandleAssert("RGBAf16_mark_const_deep_mask_XRGB", 9975, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "postamble == true", "", a6, a7, a8, v132);
              }

              v34 = *v28;
              v36 = 1;
              v35 = 1;
            }

            else
            {
              v35 = 0;
              v34 = *v28;
              v36 = 2;
            }

            if ((v34 & 0x7FFF7FFF) != 0)
            {
              v37 = HIWORD(v34);
              do
              {
                v38 = v35;
                v39 = v34 & 0x7FFF;
                if (v39)
                {
                  __asm
                  {
                    FCMP            H2, #0
                    FCMP            H17, #0
                  }

                  _ZF = _ZF || _H17 == v29;
                  if (!_ZF)
                  {
                    __asm { FCVT            S5, H17 }

                    v47 = _H17 * _H17;
                    _S5 = -(_S5 * _S5);
                    __asm
                    {
                      FCVT            H5, S5
                      FCMP            H17, #0
                    }

                    if (_NF)
                    {
                      _H17 = _H5;
                    }

                    else
                    {
                      _H17 = v47;
                    }
                  }

                  __asm { FCMP            H4, #0 }

                  if (!_ZF && _H4 != v29)
                  {
                    __asm { FCVT            S5, H4 }

                    v54 = _H4 * _H4;
                    _S5 = -(_S5 * _S5);
                    __asm
                    {
                      FCVT            H5, S5
                      FCMP            H4, #0
                    }

                    if (_NF)
                    {
                      _H4 = _H5;
                    }

                    else
                    {
                      _H4 = v54;
                    }
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF && _H3 != v29)
                  {
                    __asm { FCVT            S5, H3 }

                    v61 = _H3 * _H3;
                    _S5 = -(_S5 * _S5);
                    __asm
                    {
                      FCVT            H5, S5
                      FCMP            H3, #0
                    }

                    if (_NF)
                    {
                      _H3 = _H5;
                    }

                    else
                    {
                      _H3 = v61;
                    }
                  }

                  _H7 = *v24;
                  _H5 = v24[1];
                  __asm { FCMP            H16, #0 }

                  if (_NF ^ _VF | _ZF)
                  {
                    v68 = 0;
                  }

                  else
                  {
                    v68 = 1;
                  }

                  if (_H16 >= v29)
                  {
                    v68 = 0;
                  }

                  _H6 = v24[2];
                  __asm { FCMP            H20, #0 }

                  if (!_ZF && _H20 != v29)
                  {
                    __asm { FCVT            S21, H20 }

                    v72 = _H20 * _H20;
                    _S21 = -(_S21 * _S21);
                    __asm
                    {
                      FCVT            H21, S21
                      FCMP            H20, #0
                    }

                    if (_NF)
                    {
                      _H20 = _H21;
                    }

                    else
                    {
                      _H20 = v72;
                    }
                  }

                  __asm { FCMP            H19, #0 }

                  if (!_ZF && _H19 != v29)
                  {
                    __asm { FCVT            S21, H19 }

                    v78 = _H19 * _H19;
                    _S21 = -(_S21 * _S21);
                    __asm
                    {
                      FCVT            H21, S21
                      FCMP            H19, #0
                    }

                    if (_NF)
                    {
                      _H19 = _H21;
                    }

                    else
                    {
                      _H19 = v78;
                    }
                  }

                  __asm { FCMP            H18, #0 }

                  if (!_ZF && _H18 != v29)
                  {
                    __asm { FCVT            S21, H18 }

                    v84 = _H18 * _H18;
                    _S21 = -(_S21 * _S21);
                    __asm
                    {
                      FCVT            H21, S21
                      FCMP            H18, #0
                    }

                    if (_NF)
                    {
                      _H18 = _H21;
                    }

                    else
                    {
                      _H18 = v84;
                    }
                  }

                  __asm
                  {
                    FCVT            S17, H17
                    FCVT            S20, H20
                  }

                  _S17 = _S20 + ((_S17 - _S20) * ((v39 >> 10) / 31.0));
                  __asm
                  {
                    FCVT            H17, S17
                    FCMP            H17, #0
                  }

                  if (!_ZF && _H17 != v29)
                  {
                    __asm { FCVT            S20, H17 }

                    v94 = sqrtf(_S20);
                    v95 = -sqrtf(fabsf(_S20));
                    __asm { FCMP            H17, #0 }

                    if (_NF)
                    {
                      _S17 = v95;
                    }

                    else
                    {
                      _S17 = v94;
                    }

                    __asm { FCVT            H17, S17 }
                  }

                  __asm
                  {
                    FCVT            S4, H4
                    FCVT            S19, H19
                  }

                  _S4 = _S19 + ((_S4 - _S19) * (((v39 >> 5) & 0x1F) / 31.0));
                  __asm
                  {
                    FCVT            H4, S4
                    FCMP            H4, #0
                  }

                  if (!_ZF && _H4 != v29)
                  {
                    __asm { FCVT            S19, H4 }

                    v104 = sqrtf(_S19);
                    v105 = -sqrtf(fabsf(_S19));
                    __asm { FCMP            H4, #0 }

                    if (_NF)
                    {
                      _S4 = v105;
                    }

                    else
                    {
                      _S4 = v104;
                    }

                    __asm { FCVT            H4, S4 }
                  }

                  __asm
                  {
                    FCVT            S3, H3
                    FCVT            S18, H18
                  }

                  _S3 = _S18 + ((_S3 - _S18) * ((v39 & 0x1F) / 31.0));
                  __asm
                  {
                    FCVT            H3, S3
                    FCMP            H3, #0
                  }

                  if (!_ZF && _H3 != v29)
                  {
                    __asm { FCVT            S18, H3 }

                    v114 = sqrtf(_S18);
                    v115 = -sqrtf(fabsf(_S18));
                    __asm { FCMP            H3, #0 }

                    if (_NF)
                    {
                      _S3 = v115;
                    }

                    else
                    {
                      _S3 = v114;
                    }

                    __asm { FCVT            H3, S3 }
                  }

                  v118 = _H16 * _H17;
                  v119 = _H16 * _H4;
                  v120 = _H16 * _H3;
                  if (v68)
                  {
                    _H3 = v120;
                    _H4 = v119;
                    _H16 = v118;
                  }

                  else
                  {
                    _H16 = _H17;
                  }

                  __asm
                  {
                    FCVT            S16, H16
                    FCVT            S7, H7
                    FCVT            S2, H2
                  }

                  _S7 = _S7 + ((_S16 - _S7) * _S2);
                  __asm { FCVT            H7, S7 }

                  *v24 = LOWORD(_S7);
                  __asm
                  {
                    FCVT            S4, H4
                    FCVT            S5, H5
                  }

                  _S4 = _S5 + ((_S4 - _S5) * _S2);
                  __asm { FCVT            H4, S4 }

                  v24[1] = LOWORD(_S4);
                  __asm
                  {
                    FCVT            S3, H3
                    FCVT            S4, H6
                  }

                  _S2 = _S4 + ((_S3 - _S4) * _S2);
                  __asm { FCVT            H2, S2 }

                  v24[2] = LOWORD(_S2);
                }

                v24 += 4;
                v35 = 1;
                LOWORD(v34) = v37;
              }

              while ((v38 & 1) == 0);
            }

            else
            {
              v24 += 4 * v36;
            }

            v30 = 0;
            v28 += 2 * v36;
            _VF = __OFSUB__(v33, v36);
            v33 -= v36;
          }

          while (!((v33 < 0) ^ _VF | (v33 == 0)));
          v28 += 2 * v26;
          v24 += 4 * v27;
          _VF = __OFSUB__(v9--, 1);
        }

        while (!((v9 < 0) ^ _VF | (v9 == 0)));
      }
    }
  }
}

uint64_t RGBAf16_mark_deep_pixel(uint64_t result, int a2, double a3, double a4, double a5, double a6, double a7, double a8, double _D6, float32x4_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(result + 4);
  v18 = *(result + 8);
  if (v17 < 1 || v18 < 1)
  {
    return result;
  }

  v20 = *(result + 124);
  if (v20)
  {
    _CGHandleAssert("RGBAf16_mark_deep_pixel", 10064, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "((mdn >> 1) << 1) == mdn", "mdn = %lu", a14, a15, a16, v20);
  }

  v21 = *(result + 136);
  if (!v21)
  {
    return result;
  }

  v22 = *(result + 88);
  v23 = *(result + 96);
  v24 = *(result + 28) >> 3;
  v25 = (*(result + 40) + 8 * v24 * *(result + 16) + 8 * *(result + 12));
  v26 = v20 >> 1;
  v27 = (v21 + 2 * (*(result + 124) >> 1) * *(result + 108) + 2 * *(result + 104));
  v29 = *(result + 56);
  v28 = *(result + 60);
  v30 = *(result + 76) >> 3;
  if (*(result + 1) << 8 == 256)
  {
    v22 += 8 * v30 * v28 + 8 * v29;
    if (v30 == v24)
    {
      v31 = (v25 - v22) >> 3;
      if (v31 >= 1)
      {
        if (v31 <= v17)
        {
          v25 += (v17 - 1);
          v22 += 8 * (v17 - 1);
          LODWORD(v32) = -1;
          v34 = *(result + 28) >> 3;
          v27 += (v17 - 1);
          goto LABEL_19;
        }

        v32 = (v18 - 1);
        v33 = v22 + 8 * v24 * v32;
        if (v25 <= v33 + 8 * v17 - 8)
        {
          v25 += v24 * v32;
          v27 += v26 * v32;
          v34 = -v24;
          v26 = -v26;
          LODWORD(v32) = 1;
          v22 = v33;
          v24 = -v24;
          goto LABEL_19;
        }
      }

      LODWORD(v32) = 1;
      v34 = *(result + 28) >> 3;
    }

    else
    {
      LODWORD(v32) = 1;
      v34 = *(result + 76) >> 3;
    }

LABEL_19:
    LODWORD(v40) = 0;
    v43 = v32 * v17;
    v37 = v23 != 0;
    v38 = v26 - v43;
    v39 = v24 - v43;
    v32 = v32;
    v46 = -1;
    v30 = v34;
    goto LABEL_20;
  }

  v35 = *(result + 64);
  v36 = *(result + 68);
  v37 = v23 != 0;
  v38 = v26 - v17;
  v39 = v24 - v17;
  if (!v22)
  {
    v46 = 0;
    v32 = 1;
    v43 = *(result + 4);
    LODWORD(v34) = *(result + 64);
    LODWORD(v40) = *(result + 68);
LABEL_20:
    v41 = 0;
    v45 = 0;
    v30 -= v43;
    v34 = v34;
    v40 = v40;
    goto LABEL_21;
  }

  v34 = v35;
  v40 = v36;
  v41 = v22 + 8 * v30 * v36;
  v42 = v28 % v36;
  v43 = (v29 / v35);
  v44 = v22 + 8 * v30 * v42;
  v45 = v44 + 8 * (v29 % v35);
  v46 = v44 + 8 * v34;
  v32 = 1;
  v22 = v45;
LABEL_21:
  if (a2 == 1)
  {
    v73 = *(result + 48) == 0 || v37;
    result = -v34;
    if (v73)
    {
      v74 = v17 + 1;
      do
      {
        v75 = v74;
        do
        {
          v76 = *v27;
          v77 = v76 & 0x7FFF;
          if ((v76 & 0x7FFF) != 0)
          {
            if (v77 == 0x7FFF)
            {
              v78 = *v22;
            }

            else
            {
              v79.f32[0] = (v77 >> 10);
              v79.f32[1] = ((v76 >> 5) & 0x1F);
              v79.f32[2] = (v76 & 0x1F);
              v79.f32[3] = (((((v76 >> 2) & 0xF8) + 16) * ((v76 >> 2) & 0xF8)) >> 8);
              v80 = vdivq_f32(v79, xmmword_18439CF90);
              v78 = vcvt_f16_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_f16(*v25), 1.0 - v80.f32[3]), v80, vcvtq_f32_f16(*v22)));
            }

            *v25 = v78;
          }

          v81 = v22 + 8 * v32;
          if (v81 >= v46)
          {
            v82 = -v34;
          }

          else
          {
            v82 = 0;
          }

          v22 = v81 + 8 * v82;
          v27 += v32;
          --v75;
          v25 += v32;
        }

        while (v75 > 1);
        v27 += v38;
        v25 += v39;
        v83 = v45 + 8 * v30;
        if (v83 >= v41)
        {
          v84 = -(v30 * v40);
        }

        else
        {
          v84 = 0;
        }

        v85 = v83 + 8 * v84;
        v86 = v46 + 8 * v84 + 8 * v30;
        v22 += 8 * v30;
        if (v41)
        {
          v46 = v86;
          v45 = v85;
          v22 = v85;
        }

        _VF = __OFSUB__(v18--, 1);
      }

      while (!((v18 < 0) ^ _VF | (v18 == 0)));
    }

    else
    {
      v87 = v17 + 1;
      do
      {
        v88 = v87;
        do
        {
          v89 = *v27;
          v90 = v89 & 0x7FFF;
          if ((v89 & 0x7FFF) != 0)
          {
            if (v90 == 0x7FFF)
            {
              v25->i32[0] = *v22;
              v25->i16[2] = *(v22 + 4);
              v25->i16[3] = COERCE_UNSIGNED_INT(1.0);
            }

            else
            {
              v91.f32[0] = (v90 >> 10);
              a10.i32[0] = *v22;
              a10 = vcvtq_f32_f16(*a10.f32);
              _H16 = *(v22 + 4);
              v91.f32[1] = ((v89 >> 5) & 0x1F);
              v91.f32[2] = (v89 & 0x1F);
              __asm { FCVT            S4, H16 }

              v91.f32[3] = (((((v89 >> 2) & 0xF8) + 16) * ((v89 >> 2) & 0xF8)) >> 8);
              v94 = vdivq_f32(v91, xmmword_18439CF90);
              a10.i32[2] = _S4;
              v95 = vmulq_f32(a10, v94);
              a10.i32[3] = 1.0;
              v96 = vsubq_f32(a10, v94);
              v95.i32[3] = v96.i32[3];
              *v25 = vcvt_f16_f32(vmlaq_laneq_f32(v95, vcvtq_f32_f16(*v25), v96, 3));
            }
          }

          v97 = v22 + 8 * v32;
          if (v97 >= v46)
          {
            v98 = -v34;
          }

          else
          {
            v98 = 0;
          }

          v22 = v97 + 8 * v98;
          --v88;
          v27 += v32;
          v25 += v32;
        }

        while (v88 > 1);
        v27 += v38;
        v25 += v39;
        v99 = v45 + 8 * v30;
        if (v99 >= v41)
        {
          v100 = -(v30 * v40);
        }

        else
        {
          v100 = 0;
        }

        v101 = v99 + 8 * v100;
        v102 = v46 + 8 * v100 + 8 * v30;
        v22 += 8 * v30;
        if (v41)
        {
          v46 = v102;
          v45 = v101;
          v22 = v101;
        }

        _VF = __OFSUB__(v18--, 1);
      }

      while (!((v18 < 0) ^ _VF | (v18 == 0)));
    }

    return result;
  }

  if (a2 != 2)
  {
    _CGHandleAssert("RGBAf16_mark_deep_pixel", 10312, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "", "Unimplemented", v34, v40, v43, v103);
  }

  result = -v34;
  v47 = v17 + 1;
  __asm { FMOV            V4.2S, #31.0 }

  while (2)
  {
    v53 = v47;
    do
    {
      v54 = *v27;
      v55 = v54 & 0x7FFF;
      if ((v54 & 0x7FFF) == 0)
      {
        goto LABEL_34;
      }

      if (v55 == 0x7FFF)
      {
        if (*(v22 + 6) >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          v61 = *v22;
        }

        else
        {
          __asm { FCMP            H6, #0 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_34;
          }

          __asm { FCVT            S5, H6 }

          a10.i32[0] = *v22;
          v58.i64[0] = vcvtq_f32_f16(*a10.f32).u64[0];
          _H16 = *(v22 + 4);
          __asm { FCVT            S16, H16 }

          v58.i64[1] = __PAIR64__(LODWORD(_S5), _S16);
          a10 = vmlaq_n_f32(v58, vcvtq_f32_f16(*v25), 1.0 - _S5);
          v61 = vcvt_f16_f32(a10);
        }
      }

      else
      {
        _H6 = *(v22 + 6);
        __asm { FCVT            S6, H6 }

        _S5 = ((((((v54 >> 2) & 0xF8) + 16) * ((v54 >> 2) & 0xF8)) >> 8) / 255.0) * _S6;
        __asm
        {
          FCVT            H5, S5
          FCMP            H5, #0
        }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_34;
        }

        a10.i32[0] = v54 >> 5;
        a10.i32[1] = *v27;
        _D16.i32[0] = *(v22 + 2);
        _D16 = vcvtq_f32_f16(_D16).u64[0];
        *a10.f32 = vmul_f32(vdiv_f32(vcvt_f32_u32(vand_s8(*a10.f32, 0x1F0000001FLL)), _D4), _D16);
        _D16.i16[0] = *v22;
        __asm { FCVT            S16, H16 }

        *&_D6 = ((v55 >> 10) / 31.0) * *_D16.i32;
        __asm { FCVT            H6, S6 }

        _D6 = COERCE_DOUBLE(vext_s8(vext_s8(*&_D6, *&_D6, 2uLL), vcvt_f16_f32(a10), 6uLL));
        HIWORD(_D6) = _H5;
        v66 = vcvtq_f32_f16(*&_D6);
        a10 = vcvtq_f32_f16(*v25);
        v61 = vcvt_f16_f32(vmlaq_n_f32(v66, a10, 1.0 - v66.f32[3]));
      }

      *v25 = v61;
LABEL_34:
      v67 = v22 + 8 * v32;
      if (v67 >= v46)
      {
        v68 = -v34;
      }

      else
      {
        v68 = 0;
      }

      v22 = v67 + 8 * v68;
      v27 += v32;
      v25 += v32;
      --v53;
    }

    while (v53 > 1);
    v27 += v38;
    v25 += v39;
    v69 = v45 + 8 * v30;
    if (v69 >= v41)
    {
      v70 = -(v30 * v40);
    }

    else
    {
      v70 = 0;
    }

    v71 = v69 + 8 * v70;
    v72 = v46 + 8 * v70 + 8 * v30;
    v22 += 8 * v30;
    if (v41)
    {
      v46 = v72;
      v45 = v71;
      v22 = v71;
    }

    _VF = __OFSUB__(v18--, 1);
    if (!((v18 < 0) ^ _VF | (v18 == 0)))
    {
      continue;
    }

    return result;
  }
}

void RGBAf16_mark_bits(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v36 = *MEMORY[0x1E69E9840];
  v8 = *(v5 + 112);
  v9 = *(v5 + 116);
  v10 = (v8 + 15) & 0xFFFFFFF0;
  v11 = v10 * v9;
  if (v11 <= 4096)
  {
    v12 = v35;
  }

  else
  {
    v12 = malloc_type_malloc(v11, 0x100004077774924uLL);
    if (!v12)
    {
      return;
    }
  }

  CGSConvertBitsToMask(*(v6 + 136), *(v6 + 124), v12, v10, v8, v9, *(v6 + 128));
  v25 = *(v6 + 112);
  v31[6] = *(v6 + 96);
  v32 = v25;
  v26 = *(v6 + 144);
  v33 = *(v6 + 128);
  v34 = v26;
  v27 = *(v6 + 48);
  v31[2] = *(v6 + 32);
  v31[3] = v27;
  v28 = *(v6 + 80);
  v31[4] = *(v6 + 64);
  v31[5] = v28;
  v29 = *v6;
  v30 = *(v6 + 16);
  v31[0] = *v6;
  v31[1] = v30;
  HIDWORD(v32) = (v8 + 15) & 0xFFFFFFF0;
  *(&v33 + 1) = v12;
  if (BYTE1(v31[0]) << 8 == 1024)
  {
    RGBAf16_mark_constmask(v31, v4, v13, v14, v29.n128_f64[0], v30, v19, v20, *v21.i64, *v22.i64, *v23.i64, v24, v15, v16, v17, v18);
  }

  else
  {
    RGBAf16_mark_pixelmask(v7, v31, v4, v29, v30, v19, *&v20, v21, v22, v23, v24, v14, v15, v16, v17, v18);
  }

  if (v12 != v35)
  {
    free(v12);
  }
}

float16x8_t *composite_pixelmask<(CGCompositeOperation)2,_rgbaf16_t>(float16x8_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  v18 = 4 * a14;
  v19 = -a7;
  v20 = -(a6 * a4);
  v21 = 8 * v18;
  v22 = 8 * a14;
  v23.i64[0] = 0x3C003C003C003C00;
  v23.i64[1] = 0x3C003C003C003C00;
  v24.i64[0] = -1;
  v24.i64[1] = -1;
  v25 = vdupq_n_s16(0x1C04u);
  v26 = vdup_n_s16(0x1C04u);
  if ((a15 & 0x30) != 0)
  {
    while (1)
    {
      v27 = (a8 - a3) >> 3;
      if (v27 >= a12)
      {
        v27 = a12;
      }

      v28 = v27;
      if (v27 < 4)
      {
        goto LABEL_36;
      }

      while (1)
      {
        v29 = *a10;
        if (*a10 == -1)
        {
          v36 = &a10[v28];
          v37 = a10;
          do
          {
            v38 = v37++;
          }

          while (v37 <= v36 && (vminvq_u8(vceqq_s8(*v38, v24)) & 0x80) != 0);
          do
          {
            v39 = v38;
            v38 = (v38 + 4);
          }

          while (v38 <= v36 && v39->i32[0] == -1);
          if (v39 < v36)
          {
            while (v39->u8[0] == 255)
            {
              v39 = (v39 + 1);
              if (v39 >= v36)
              {
                v39 = &a10[v28];
                break;
              }
            }
          }

          v40 = v39 - a10;
          v41 = v39 - a10;
          do
          {
            v42 = a3[1];
            v43 = result[1];
            v44 = vqtbl1q_s8(v42, xmmword_18439C6E0);
            v45 = vqtbl1q_s8(*a3, xmmword_18439C6E0);
            v46 = vcgtzq_f16(v44);
            v47 = vmlsq_f16(v43, v43, vmaxnmq_f16(vminnmq_f16(v44, v23), 0));
            v15 = vmlsq_f16(*result, *result, vmaxnmq_f16(vminnmq_f16(v45, v23), 0));
            *result = vbslq_s8(vcgtzq_f16(v45), vaddq_f16(*a3, v15), *result);
            result[1] = vbslq_s8(v46, vaddq_f16(v42, v47), v43);
            a10 += v18;
            v41 -= 4;
            result = (result + v21);
            a3 = (a3 + v21);
          }

          while (v41 > 3);
          v28 = v28 - v40 + v41;
          goto LABEL_33;
        }

        if (v29)
        {
          break;
        }

        v30 = &a10[v28];
        v31 = a10;
        do
        {
          v32 = v31++;
        }

        while (v31 <= v30 && (vminvq_u8(vceqzq_s8(*v32)) & 0x80) != 0);
        do
        {
          v33 = v32;
          v32 = (v32 + 4);
        }

        while (v32 <= v30 && !v33->i32[0]);
        if (v33 < v30)
        {
          while (!v33->i8[0])
          {
            v33 = (v33 + 1);
            if (v33 >= v30)
            {
              v33 = &a10[v28];
              break;
            }
          }
        }

        v34 = v33 - a10;
        v35 = (v33 - a10) * a14;
        a3 = (a3 + 8 * v35);
        result = (result + 8 * v35);
        a10 += v35;
        v28 -= v34;
LABEL_33:
        if (v28 <= 3)
        {
          goto LABEL_36;
        }
      }

      v48 = 0;
      while (1)
      {
        v49 = &result->i8[v48];
        v51 = *(result + v48);
        v50 = *(&result[1] + v48);
        v15.i32[0] = v29;
        v52 = vqtbl1q_s8(v15, xmmword_18439C7A0);
        v53 = vmulq_f16(*(&a3[1] + v48), vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v52)), v25));
        v54 = vmulq_f16(*(a3 + v48), vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v52.i8)), v25));
        v55 = vqtbl1q_s8(v54, xmmword_18439C6E0);
        v56 = vqtbl1q_s8(v53, xmmword_18439C6E0);
        v57 = vcgtzq_f16(v55);
        v58 = vmlsq_f16(v51, v51, vmaxnmq_f16(vminnmq_f16(v55, v23), 0));
        v15 = vmlsq_f16(v50, v50, vmaxnmq_f16(vminnmq_f16(v56, v23), 0));
        *v49 = vbslq_s8(v57, vaddq_f16(v54, v58), v51);
        v49[1] = vbslq_s8(vcgtzq_f16(v56), vaddq_f16(v53, v15), v50);
        a10 += v18;
        v28 -= 4;
        if (v28 < 4)
        {
          break;
        }

        v29 = *a10;
        v48 += v21;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v48);
          a3 = (a3 + v48);
          goto LABEL_33;
        }
      }

      result = (result + v21 + v48);
      a3 = (a3 + v21 + v48);
LABEL_36:
      for (i = a12 - v27 + v28; i; --i)
      {
        if (*a10)
        {
          v60 = vmul_f16(vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v26), *a3->i8);
          v61 = vdup_lane_s16(v60, 3);
          *v15.i8 = vmls_f16(*result->i8, *result->i8, vmaxnm_f16(vminnm_f16(v61, 0x3C003C003C003C00), 0));
          *result->i8 = vbsl_s8(vcgtz_f16(v61), vadd_f16(v60, *v15.i8), *result->i8);
        }

        v62 = &a3->i8[8 * a14];
        a10 += a14;
        if (v62 >= a8)
        {
          v63 = v19;
        }

        else
        {
          v63 = 0;
        }

        a3 = &v62[8 * v63];
        result = (result + v22);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v64 = &a5->i64[a4];
      if (v64 >= a9)
      {
        v65 = v20;
      }

      else
      {
        v65 = 0;
      }

      v66 = &v64[v65];
      v67 = a8 + 8 * v65 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v66;
        a8 = v67;
        a5 = v66;
      }

      v68 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v68 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v69 = (a8 - a3) >> 3;
    if (v69 >= a12)
    {
      v69 = a12;
    }

    v70 = v69;
    if (v69 < 4)
    {
      goto LABEL_85;
    }

    while (1)
    {
      v71 = *a10;
      if (*a10 == -1)
      {
        v78 = &a10[v70];
        v79 = a10;
        do
        {
          v80 = v79++;
        }

        while (v79 <= v78 && (vminvq_u8(vceqq_s8(*v80, v24)) & 0x80) != 0);
        do
        {
          v81 = v80;
          v80 = (v80 + 4);
        }

        while (v80 <= v78 && v81->i32[0] == -1);
        if (v81 < v78)
        {
          while (v81->u8[0] == 255)
          {
            v81 = (v81 + 1);
            if (v81 >= v78)
            {
              v81 = &a10[v70];
              break;
            }
          }
        }

        v82 = v81 - a10;
        v83 = v81 - a10;
        do
        {
          v84 = vrev16q_s8(a3[1]);
          v85 = vrev16q_s8(*a3);
          v86 = vrev16q_s8(result[1]);
          v87 = vrev16q_s8(*result);
          v88 = vqtbl1q_s8(v85, xmmword_18439C6E0);
          v89 = vqtbl1q_s8(v84, xmmword_18439C6E0);
          v90 = vcgtzq_f16(v88);
          v91 = vmlsq_f16(v87, v87, vmaxnmq_f16(vminnmq_f16(v88, v23), 0));
          v15 = vmlsq_f16(v86, v86, vmaxnmq_f16(vminnmq_f16(v89, v23), 0));
          *result = vrev16q_s8(vbslq_s8(v90, vaddq_f16(v91, v85), v87));
          result[1] = vrev16q_s8(vbslq_s8(vcgtzq_f16(v89), vaddq_f16(v15, v84), v86));
          a10 += v18;
          v83 -= 4;
          result = (result + v21);
          a3 = (a3 + v21);
        }

        while (v83 > 3);
        v70 = v70 - v82 + v83;
        goto LABEL_82;
      }

      if (v71)
      {
        break;
      }

      v72 = &a10[v70];
      v73 = a10;
      do
      {
        v74 = v73++;
      }

      while (v73 <= v72 && (vminvq_u8(vceqzq_s8(*v74)) & 0x80) != 0);
      do
      {
        v75 = v74;
        v74 = (v74 + 4);
      }

      while (v74 <= v72 && !v75->i32[0]);
      if (v75 < v72)
      {
        while (!v75->i8[0])
        {
          v75 = (v75 + 1);
          if (v75 >= v72)
          {
            v75 = &a10[v70];
            break;
          }
        }
      }

      v76 = v75 - a10;
      v77 = (v75 - a10) * a14;
      a3 = (a3 + 8 * v77);
      result = (result + 8 * v77);
      a10 += v77;
      v70 -= v76;
LABEL_82:
      if (v70 <= 3)
      {
        goto LABEL_85;
      }
    }

    v92 = 0;
    while (1)
    {
      v93 = &result->i8[v92];
      v94 = vrev16q_s8(*(result + v92));
      v95 = vrev16q_s8(*(&result[1] + v92));
      v15.i32[0] = v71;
      v96 = vqtbl1q_s8(v15, xmmword_18439C7A0);
      v97 = vmulq_f16(vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v96.i8)), v25), vrev16q_s8(*(a3 + v92)));
      v98 = vmulq_f16(vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v96)), v25), vrev16q_s8(*(&a3[1] + v92)));
      v99 = vqtbl1q_s8(v98, xmmword_18439C6E0);
      v100 = vqtbl1q_s8(v97, xmmword_18439C6E0);
      v101 = vcgtzq_f16(v99);
      v102 = vmlsq_f16(v95, v95, vmaxnmq_f16(vminnmq_f16(v99, v23), 0));
      v15 = vmlsq_f16(v94, v94, vmaxnmq_f16(vminnmq_f16(v100, v23), 0));
      *v93 = vrev16q_s8(vbslq_s8(vcgtzq_f16(v100), vaddq_f16(v97, v15), v94));
      v93[1] = vrev16q_s8(vbslq_s8(v101, vaddq_f16(v98, v102), v95));
      a10 += v18;
      v70 -= 4;
      if (v70 < 4)
      {
        break;
      }

      v71 = *a10;
      v92 += v21;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v92);
        a3 = (a3 + v92);
        goto LABEL_82;
      }
    }

    result = (result + v21 + v92);
    a3 = (a3 + v21 + v92);
LABEL_85:
    for (j = a12 - v69 + v70; j; --j)
    {
      if (*a10)
      {
        v104 = vrev16_s8(*result->i8);
        v105 = vmul_f16(vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v26), vrev16_s8(*a3->i8));
        v106 = vdup_lane_s16(v105, 3);
        *v15.i8 = vmls_f16(v104, v104, vmaxnm_f16(vminnm_f16(v106, 0x3C003C003C003C00), 0));
        *result->i8 = vrev16_s8(vbsl_s8(vcgtz_f16(v106), vadd_f16(v105, *v15.i8), v104));
      }

      v107 = &a3->i8[8 * a14];
      a10 += a14;
      if (v107 >= a8)
      {
        v108 = v19;
      }

      else
      {
        v108 = 0;
      }

      a3 = &v107[8 * v108];
      result = (result + v22);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v109 = &a5->i64[a4];
    if (v109 >= a9)
    {
      v110 = v20;
    }

    else
    {
      v110 = 0;
    }

    v111 = &v109[v110];
    v112 = a8 + 8 * v110 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v111;
      a8 = v112;
      a5 = v111;
    }

    v68 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v68 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

uint64_t composite_pixelmask_SOVER(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, unint64_t a8, double a9, double a10, double a11, float16x4_t a12, double a13, float32x4_t a14, unint64_t a15, _BYTE *a16, uint64_t a17, int a18, int a19, int a20)
{
  if (use_vImage_fp16_compositing(void)::predicate != -1)
  {
    dispatch_once(&use_vImage_fp16_compositing(void)::predicate, &__block_literal_global_21944);
  }

  if (use_vImage_fp16_compositing(void)::status == 1)
  {
    return vImageCGCompositePixelMask_ARGB16F();
  }

  LOWORD(v31) = COERCE_UNSIGNED_INT(1.0);
  do
  {
    v32 = a18;
    do
    {
      v33 = *a16;
      if (!*a16)
      {
        goto LABEL_18;
      }

      if (v33 == 255)
      {
        if (*(a3 + 6) < v31)
        {
          __asm { FCMP            H3, #0 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_18;
          }

          __asm { FCVT            S3, H3 }

          a14.i32[0] = *a3;
          v40.i64[0] = vcvtq_f32_f16(*a14.f32).u64[0];
          _H6 = *(a3 + 4);
          __asm { FCVT            S6, H6 }

          v40.i64[1] = __PAIR64__(LODWORD(_S3), _S6);
          a14 = vmlaq_n_f32(v40, vcvtq_f32_f16(*a1), 1.0 - _S3);
          a12 = vcvt_f16_f32(a14);
LABEL_15:
          *a1 = *&a12;
          goto LABEL_18;
        }

        *a1 = *a3;
      }

      else
      {
        v43 = v33 * 0.0039216;
        a12.i32[0] = *a3;
        v44 = vcvtq_f32_f16(a12);
        *v44.f32 = vmul_n_f32(*v44.f32, v43);
        a12 = vcvt_f16_f32(v44);
        _H4 = *(a3 + 4);
        __asm { FCVT            S4, H4 }

        _S4 = v43 * _S4;
        __asm { FCVT            H4, S4 }

        _H6 = *(a3 + 6);
        __asm { FCVT            S6, H6 }

        _S5 = v43 * _S6;
        __asm { FCVT            H5, S5 }

        if (_H5 < v31)
        {
          __asm { FCMP            H5, #0 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_18;
          }

          __asm { FCVT            S5, H5 }

          v55.i64[0] = vcvtq_f32_f16(a12).u64[0];
          __asm { FCVT            S4, H4 }

          v55.i64[1] = __PAIR64__(LODWORD(_S5), _S4);
          a12 = vcvt_f16_f32(vmlaq_n_f32(v55, vcvtq_f32_f16(*a1), 1.0 - _S5));
          goto LABEL_15;
        }

        *a1 = a12.i32[0];
        *(a1 + 4) = _H4;
        *(a1 + 6) = _H5;
      }

LABEL_18:
      a16 += a20;
      v57 = a3 + 8 * a20;
      if (v57 >= a8)
      {
        v58 = -a7;
      }

      else
      {
        v58 = 0;
      }

      a3 = v57 + 8 * v58;
      a1 += 8 * a20;
      --v32;
    }

    while (v32);
    a16 += a17;
    a1 += 8 * a2;
    v59 = a5 + 8 * a4;
    if (v59 >= a15)
    {
      v60 = -(a6 * a4);
    }

    else
    {
      v60 = 0;
    }

    result = v59 + 8 * v60;
    v61 = a8 + 8 * v60 + 8 * a4;
    if (a15)
    {
      a8 = v61;
      a5 = result;
      a3 = result;
    }

    else
    {
      a3 += 8 * a4;
    }

    --a19;
  }

  while (a19);
  return result;
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)6,_rgbaf16_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, char a16)
{
  if (a15)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20 = vdupq_n_s16(v19);
  v21.i64[0] = 0xFFFF000000000000;
  v21.i64[1] = 0xFFFF000000000000;
  v22 = vmvnq_s8(vandq_s8(v20, v21));
  v23 = vandq_s8(v20, xmmword_18439CFA0);
  v24 = 4 * a14;
  v25 = 0;
  v25.i16[3] = v19;
  v26 = vmvn_s8(v25);
  v27 = vand_s8(*v20.i8, 0x3C00000000000000);
  v28 = -a7;
  v29 = -(a6 * a4);
  v30 = 8 * v24;
  v31 = 8 * a14;
  v32.i64[0] = 0x3C003C003C003C00;
  v32.i64[1] = 0x3C003C003C003C00;
  v33.i64[0] = -1;
  v33.i64[1] = -1;
  v34 = vdupq_n_s16(0x1C04u);
  v35 = vdup_n_s16(0x1C04u);
  if ((a16 & 0x30) != 0)
  {
    while (1)
    {
      v36 = (a8 - a3) >> 3;
      if (v36 >= a12)
      {
        v36 = a12;
      }

      v37 = v36;
      if (v36 < 4)
      {
        goto LABEL_39;
      }

      while (1)
      {
        v38 = *a10;
        if (*a10 == -1)
        {
          v45 = &a10[v37];
          v46 = a10;
          do
          {
            v47 = v46++;
          }

          while (v46 <= v45 && (vminvq_u8(vceqq_s8(*v47, v33)) & 0x80) != 0);
          do
          {
            v48 = v47;
            v47 = (v47 + 4);
          }

          while (v47 <= v45 && v48->i32[0] == -1);
          if (v48 < v45)
          {
            while (v48->u8[0] == 255)
            {
              v48 = (v48 + 1);
              if (v48 >= v45)
              {
                v48 = &a10[v37];
                break;
              }
            }
          }

          v49 = v48 - a10;
          v50 = v48 - a10;
          do
          {
            v51 = result[1];
            v52 = vorrq_s8(vandq_s8(*a3, v22), v23);
            v53 = vorrq_s8(vandq_s8(a3[1], v22), v23);
            v54 = vqtbl1q_s8(v51, xmmword_18439C6E0);
            v55 = vqtbl1q_s8(*result, xmmword_18439C6E0);
            v56 = vcgtzq_f16(v54);
            v57 = vcgtq_f16(v54, v32);
            v16 = vmaxnmq_f16(v54, 0);
            *result = vbslq_s8(vcgtq_f16(v55, v32), *result, vaddq_f16(vandq_s8(*result, vcgtzq_f16(v55)), vmlsq_f16(v52, v52, vmaxnmq_f16(v55, 0))));
            result[1] = vbslq_s8(v57, v51, vaddq_f16(vandq_s8(v51, v56), vmlsq_f16(v53, v53, v16)));
            a10 += v24;
            v50 -= 4;
            result = (result + v30);
            a3 = (a3 + v30);
          }

          while (v50 > 3);
          v37 = v37 - v49 + v50;
          goto LABEL_36;
        }

        if (v38)
        {
          break;
        }

        v39 = &a10[v37];
        v40 = a10;
        do
        {
          v41 = v40++;
        }

        while (v40 <= v39 && (vminvq_u8(vceqzq_s8(*v41)) & 0x80) != 0);
        do
        {
          v42 = v41;
          v41 = (v41 + 4);
        }

        while (v41 <= v39 && !v42->i32[0]);
        if (v42 < v39)
        {
          while (!v42->i8[0])
          {
            v42 = (v42 + 1);
            if (v42 >= v39)
            {
              v42 = &a10[v37];
              break;
            }
          }
        }

        v43 = v42 - a10;
        v44 = (v42 - a10) * a14;
        a3 = (a3 + 8 * v44);
        result = (result + 8 * v44);
        a10 += v44;
        v37 -= v43;
LABEL_36:
        if (v37 <= 3)
        {
          goto LABEL_39;
        }
      }

      v58 = 0;
      while (1)
      {
        v59 = (result + v58);
        v61 = *(result + v58);
        v60 = *(&result[1] + v58);
        v16.i32[0] = v38;
        v62 = vqtbl1q_s8(v16, xmmword_18439C7A0);
        v63 = vcvtq_f16_u16(vmovl_u8(*v62.i8));
        v16 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v62)), v34);
        v64 = vmulq_f16(v63, v34);
        v65 = vorrq_s8(vandq_s8(*(&a3[1] + v58), v22), v23);
        v66 = vorrq_s8(vandq_s8(*(a3 + v58), v22), v23);
        v67 = vqtbl1q_s8(v61, xmmword_18439C6E0);
        v68 = vqtbl1q_s8(v60, xmmword_18439C6E0);
        *v59 = vbslq_s8(vorrq_s8(vceqzq_f16(v64), vcgtq_f16(v67, v32)), v61, vmlaq_f16(vandq_s8(v61, vcgtzq_f16(v67)), v64, vmlsq_f16(v66, v66, vmaxnmq_f16(v67, 0))));
        v59[1] = vbslq_s8(vorrq_s8(vceqzq_f16(v16), vcgtq_f16(v68, v32)), v60, vmlaq_f16(vandq_s8(v60, vcgtzq_f16(v68)), v16, vmlsq_f16(v65, v65, vmaxnmq_f16(v68, 0))));
        a10 += v24;
        v37 -= 4;
        if (v37 < 4)
        {
          break;
        }

        v38 = *a10;
        v58 += v30;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v58);
          a3 = (a3 + v58);
          goto LABEL_36;
        }
      }

      result = (result + v30 + v58);
      a3 = (a3 + v30 + v58);
LABEL_39:
      for (i = a12 - v36 + v37; i; --i)
      {
        if (*a10)
        {
          v70 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v35);
          v71 = vorr_s8(vand_s8(*a3->i8, v26), v27);
          v72 = vdup_lane_s16(*result->i8, 3);
          v73 = vcgtz_f16(v72);
          v74 = vcgt_f16(v72, 0x3C003C003C003C00);
          *v16.i8 = vmaxnm_f16(v72, 0);
          *result->i8 = vbsl_s8(vorr_s8(v74, vceqz_f16(v70)), *result->i8, vmla_f16(vand_s8(*result->i8, v73), v70, vmls_f16(v71, v71, *v16.i8)));
        }

        v75 = &a3->i8[8 * a14];
        a10 += a14;
        if (v75 >= a8)
        {
          v76 = v28;
        }

        else
        {
          v76 = 0;
        }

        a3 = &v75[8 * v76];
        result = (result + v31);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v77 = &a5->i64[a4];
      if (v77 >= a9)
      {
        v78 = v29;
      }

      else
      {
        v78 = 0;
      }

      v79 = &v77[v78];
      v80 = a8 + 8 * v78 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v79;
        a8 = v80;
        a5 = v79;
      }

      v81 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v81 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v82 = (a8 - a3) >> 3;
    if (v82 >= a12)
    {
      v82 = a12;
    }

    v83 = v82;
    if (v82 < 4)
    {
      goto LABEL_88;
    }

    while (1)
    {
      v84 = *a10;
      if (*a10 == -1)
      {
        v91 = &a10[v83];
        v92 = a10;
        do
        {
          v93 = v92++;
        }

        while (v92 <= v91 && (vminvq_u8(vceqq_s8(*v93, v33)) & 0x80) != 0);
        do
        {
          v94 = v93;
          v93 = (v93 + 4);
        }

        while (v93 <= v91 && v94->i32[0] == -1);
        if (v94 < v91)
        {
          while (v94->u8[0] == 255)
          {
            v94 = (v94 + 1);
            if (v94 >= v91)
            {
              v94 = &a10[v83];
              break;
            }
          }
        }

        v95 = v94 - a10;
        v96 = v94 - a10;
        do
        {
          v97 = vrev16q_s8(result[1]);
          v98 = vrev16q_s8(*result);
          v99 = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v22), v23);
          v100 = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v22), v23);
          v101 = vqtbl1q_s8(v98, xmmword_18439C6E0);
          v102 = vqtbl1q_s8(v97, xmmword_18439C6E0);
          v103 = vcgtzq_f16(v101);
          v104 = vcgtq_f16(v101, v32);
          v16 = vmaxnmq_f16(v101, 0);
          *result = vrev16q_s8(vbslq_s8(v104, v98, vaddq_f16(vandq_s8(v98, v103), vmlsq_f16(v100, v100, v16))));
          result[1] = vrev16q_s8(vbslq_s8(vcgtq_f16(v102, v32), v97, vaddq_f16(vandq_s8(v97, vcgtzq_f16(v102)), vmlsq_f16(v99, v99, vmaxnmq_f16(v102, 0)))));
          a10 += v24;
          v96 -= 4;
          result = (result + v30);
          a3 = (a3 + v30);
        }

        while (v96 > 3);
        v83 = v83 - v95 + v96;
        goto LABEL_85;
      }

      if (v84)
      {
        break;
      }

      v85 = &a10[v83];
      v86 = a10;
      do
      {
        v87 = v86++;
      }

      while (v86 <= v85 && (vminvq_u8(vceqzq_s8(*v87)) & 0x80) != 0);
      do
      {
        v88 = v87;
        v87 = (v87 + 4);
      }

      while (v87 <= v85 && !v88->i32[0]);
      if (v88 < v85)
      {
        while (!v88->i8[0])
        {
          v88 = (v88 + 1);
          if (v88 >= v85)
          {
            v88 = &a10[v83];
            break;
          }
        }
      }

      v89 = v88 - a10;
      v90 = (v88 - a10) * a14;
      a3 = (a3 + 8 * v90);
      result = (result + 8 * v90);
      a10 += v90;
      v83 -= v89;
LABEL_85:
      if (v83 <= 3)
      {
        goto LABEL_88;
      }
    }

    v105 = 0;
    while (1)
    {
      v106 = (result + v105);
      v107 = vrev16q_s8(*(result + v105));
      v108 = vrev16q_s8(*(&result[1] + v105));
      v16.i32[0] = v84;
      v109 = vqtbl1q_s8(v16, xmmword_18439C7A0);
      v110 = vcvtq_f16_u16(vmovl_high_u8(v109));
      v16 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v109.i8)), v34);
      v111 = vmulq_f16(v110, v34);
      v112 = vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v105)), v22), v23);
      v113 = vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v105)), v22), v23);
      v114 = vqtbl1q_s8(v108, xmmword_18439C6E0);
      v115 = vqtbl1q_s8(v107, xmmword_18439C6E0);
      *v106 = vrev16q_s8(vbslq_s8(vorrq_s8(vceqzq_f16(v16), vcgtq_f16(v115, v32)), v107, vmlaq_f16(vandq_s8(v107, vcgtzq_f16(v115)), v16, vmlsq_f16(v112, v112, vmaxnmq_f16(v115, 0)))));
      v106[1] = vrev16q_s8(vbslq_s8(vorrq_s8(vceqzq_f16(v111), vcgtq_f16(v114, v32)), v108, vmlaq_f16(vandq_s8(v108, vcgtzq_f16(v114)), v111, vmlsq_f16(v113, v113, vmaxnmq_f16(v114, 0)))));
      a10 += v24;
      v83 -= 4;
      if (v83 < 4)
      {
        break;
      }

      v84 = *a10;
      v105 += v30;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v105);
        a3 = (a3 + v105);
        goto LABEL_85;
      }
    }

    result = (result + v30 + v105);
    a3 = (a3 + v30 + v105);
LABEL_88:
    for (j = a12 - v82 + v83; j; --j)
    {
      if (*a10)
      {
        v117 = vrev16_s8(*result->i8);
        v118 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v35);
        v119 = vorr_s8(vand_s8(vrev16_s8(*a3->i8), v26), v27);
        v120 = vdup_lane_s16(v117, 3);
        v121 = vcgtz_f16(v120);
        v122 = vcgt_f16(v120, 0x3C003C003C003C00);
        *v16.i8 = vmaxnm_f16(v120, 0);
        *result->i8 = vrev16_s8(vbsl_s8(vorr_s8(v122, vceqz_f16(v118)), v117, vmla_f16(vand_s8(v117, v121), v118, vmls_f16(v119, v119, *v16.i8))));
      }

      v123 = &a3->i8[8 * a14];
      a10 += a14;
      if (v123 >= a8)
      {
        v124 = v28;
      }

      else
      {
        v124 = 0;
      }

      a3 = &v123[8 * v124];
      result = (result + v31);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v125 = &a5->i64[a4];
    if (v125 >= a9)
    {
      v126 = v29;
    }

    else
    {
      v126 = 0;
    }

    v127 = &v125[v126];
    v128 = a8 + 8 * v126 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v127;
      a8 = v128;
      a5 = v127;
    }

    v81 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v81 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

uint64_t composite_pixelmask<(CGCompositeOperation)3,_rgbaf16_t>(uint64_t result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, char a16)
{
  if (a15)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20 = vdupq_n_s16(v19);
  v21.i64[0] = 0xFFFF000000000000;
  v21.i64[1] = 0xFFFF000000000000;
  v22 = vmvnq_s8(vandq_s8(v20, v21));
  v23 = vandq_s8(v20, xmmword_18439CFA0);
  v24 = 4 * a14;
  v25 = 0;
  v25.i16[3] = v19;
  v26 = vmvn_s8(v25);
  v27 = vand_s8(*v20.i8, 0x3C00000000000000);
  v28 = -a7;
  v29 = -(a6 * a4);
  v30 = 8 * v24;
  v31 = 8 * a14;
  v32.i64[0] = -1;
  v32.i64[1] = -1;
  v33 = vdupq_n_s16(0x1C04u);
  v34 = vdup_n_s16(0x1C04u);
  if ((a16 & 0x30) != 0)
  {
    while (1)
    {
      v35 = (a8 - a3) >> 3;
      if (v35 >= a12)
      {
        v35 = a12;
      }

      v36 = v35;
      if (v35 < 4)
      {
        goto LABEL_39;
      }

      while (1)
      {
        v37 = *a10;
        if (*a10 == -1)
        {
          v44 = &a10[v36];
          v45 = a10;
          do
          {
            v46 = v45++;
          }

          while (v45 <= v44 && (vminvq_u8(vceqq_s8(*v46, v32)) & 0x80) != 0);
          do
          {
            v47 = v46;
            v46 = (v46 + 4);
          }

          while (v46 <= v44 && v47->i32[0] == -1);
          if (v47 < v44)
          {
            while (v47->u8[0] == 255)
            {
              v47 = (v47 + 1);
              if (v47 >= v44)
              {
                v47 = &a10[v36];
                break;
              }
            }
          }

          v48 = v47 - a10;
          v49 = v47 - a10;
          do
          {
            v16 = vqtbl1q_s8(*result, xmmword_18439C6E0);
            v50 = vmlaq_f16(vsubq_f16(*(result + 16), *(result + 16)), vqtbl1q_s8(*(result + 16), xmmword_18439C6E0), vorrq_s8(vandq_s8(a3[1], v22), v23));
            *result = vmlaq_f16(vsubq_f16(*result, *result), v16, vorrq_s8(vandq_s8(*a3, v22), v23));
            *(result + 16) = v50;
            a10 += v24;
            v49 -= 4;
            result += v30;
            a3 = (a3 + v30);
          }

          while (v49 > 3);
          v36 = v36 - v48 + v49;
          goto LABEL_36;
        }

        if (v37)
        {
          break;
        }

        v38 = &a10[v36];
        v39 = a10;
        do
        {
          v40 = v39++;
        }

        while (v39 <= v38 && (vminvq_u8(vceqzq_s8(*v40)) & 0x80) != 0);
        do
        {
          v41 = v40;
          v40 = (v40 + 4);
        }

        while (v40 <= v38 && !v41->i32[0]);
        if (v41 < v38)
        {
          while (!v41->i8[0])
          {
            v41 = (v41 + 1);
            if (v41 >= v38)
            {
              v41 = &a10[v36];
              break;
            }
          }
        }

        v42 = v41 - a10;
        v43 = (v41 - a10) * a14;
        a3 = (a3 + 8 * v43);
        result += 8 * v43;
        a10 += v43;
        v36 -= v42;
LABEL_36:
        if (v36 <= 3)
        {
          goto LABEL_39;
        }
      }

      v51 = 0;
      while (1)
      {
        v52 = (result + v51);
        v16.i32[0] = v37;
        v53 = vqtbl1q_s8(v16, xmmword_18439C7A0);
        v54 = vcvtq_f16_u16(vmovl_high_u8(v53));
        v16 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v53.i8)), v33);
        v55 = vmulq_f16(v54, v33);
        v56 = vmlaq_f16(vmlsq_f16(*(result + v51 + 16), *(result + v51 + 16), v55), vqtbl1q_s8(*(result + v51 + 16), xmmword_18439C6E0), vmulq_f16(v55, vorrq_s8(vandq_s8(*(&a3[1] + v51), v22), v23)));
        *v52 = vmlaq_f16(vmlsq_f16(*(result + v51), *(result + v51), v16), vqtbl1q_s8(*(result + v51), xmmword_18439C6E0), vmulq_f16(v16, vorrq_s8(vandq_s8(*(a3 + v51), v22), v23)));
        v52[1] = v56;
        a10 += v24;
        v36 -= 4;
        if (v36 < 4)
        {
          break;
        }

        v37 = *a10;
        v51 += v30;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result += v51;
          a3 = (a3 + v51);
          goto LABEL_36;
        }
      }

      result += v30 + v51;
      a3 = (a3 + v30 + v51);
LABEL_39:
      for (i = a12 - v35 + v36; i; --i)
      {
        if (*a10)
        {
          v58 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v34);
          *result = vmla_lane_f16(vmls_f16(*result, *result, v58), vmul_f16(v58, vorr_s8(vand_s8(*a3->i8, v26), v27)), *result, 3);
        }

        v59 = &a3->i8[8 * a14];
        a10 += a14;
        if (v59 >= a8)
        {
          v60 = v28;
        }

        else
        {
          v60 = 0;
        }

        a3 = &v59[8 * v60];
        result += v31;
      }

      a10 += a11;
      result += 8 * a2;
      v61 = &a5->i64[a4];
      if (v61 >= a9)
      {
        v62 = v29;
      }

      else
      {
        v62 = 0;
      }

      v63 = &v61[v62];
      v64 = a8 + 8 * v62 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v63;
        a8 = v64;
        a5 = v63;
      }

      v65 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v65 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v66 = (a8 - a3) >> 3;
    if (v66 >= a12)
    {
      v66 = a12;
    }

    v67 = v66;
    if (v66 < 4)
    {
      goto LABEL_88;
    }

    while (1)
    {
      v68 = *a10;
      if (*a10 == -1)
      {
        v75 = &a10[v67];
        v76 = a10;
        do
        {
          v77 = v76++;
        }

        while (v76 <= v75 && (vminvq_u8(vceqq_s8(*v77, v32)) & 0x80) != 0);
        do
        {
          v78 = v77;
          v77 = (v77 + 4);
        }

        while (v77 <= v75 && v78->i32[0] == -1);
        if (v78 < v75)
        {
          while (v78->u8[0] == 255)
          {
            v78 = (v78 + 1);
            if (v78 >= v75)
            {
              v78 = &a10[v67];
              break;
            }
          }
        }

        v79 = v78 - a10;
        v80 = v78 - a10;
        do
        {
          v81 = vrev16q_s8(*result);
          v82 = vrev16q_s8(*(result + 16));
          v16 = vqtbl1q_s8(v82, xmmword_18439C6E0);
          v83 = vrev16q_s8(vmlaq_f16(vsubq_f16(v82, v82), v16, vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v22), v23)));
          *result = vrev16q_s8(vmlaq_f16(vsubq_f16(v81, v81), vqtbl1q_s8(v81, xmmword_18439C6E0), vorrq_s8(vandq_s8(vrev16q_s8(*a3), v22), v23)));
          *(result + 16) = v83;
          a10 += v24;
          v80 -= 4;
          result += v30;
          a3 = (a3 + v30);
        }

        while (v80 > 3);
        v67 = v67 - v79 + v80;
        goto LABEL_85;
      }

      if (v68)
      {
        break;
      }

      v69 = &a10[v67];
      v70 = a10;
      do
      {
        v71 = v70++;
      }

      while (v70 <= v69 && (vminvq_u8(vceqzq_s8(*v71)) & 0x80) != 0);
      do
      {
        v72 = v71;
        v71 = (v71 + 4);
      }

      while (v71 <= v69 && !v72->i32[0]);
      if (v72 < v69)
      {
        while (!v72->i8[0])
        {
          v72 = (v72 + 1);
          if (v72 >= v69)
          {
            v72 = &a10[v67];
            break;
          }
        }
      }

      v73 = v72 - a10;
      v74 = (v72 - a10) * a14;
      a3 = (a3 + 8 * v74);
      result += 8 * v74;
      a10 += v74;
      v67 -= v73;
LABEL_85:
      if (v67 <= 3)
      {
        goto LABEL_88;
      }
    }

    v84 = 0;
    while (1)
    {
      v85 = (result + v84);
      v86 = vrev16q_s8(*(result + v84 + 16));
      v87 = vrev16q_s8(*(result + v84));
      v16.i32[0] = v68;
      v88 = vqtbl1q_s8(v16, xmmword_18439C7A0);
      v89 = vcvtq_f16_u16(vmovl_u8(*v88.i8));
      v16 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v88)), v33);
      v90 = vmulq_f16(v89, v33);
      v91 = vrev16q_s8(vmlaq_f16(vmlsq_f16(v86, v86, v16), vqtbl1q_s8(v86, xmmword_18439C6E0), vmulq_f16(v16, vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v84)), v22), v23))));
      *v85 = vrev16q_s8(vmlaq_f16(vmlsq_f16(v87, v87, v90), vqtbl1q_s8(v87, xmmword_18439C6E0), vmulq_f16(v90, vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v84)), v22), v23))));
      v85[1] = v91;
      a10 += v24;
      v67 -= 4;
      if (v67 < 4)
      {
        break;
      }

      v68 = *a10;
      v84 += v30;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result += v84;
        a3 = (a3 + v84);
        goto LABEL_85;
      }
    }

    result += v30 + v84;
    a3 = (a3 + v30 + v84);
LABEL_88:
    for (j = a12 - v66 + v67; j; --j)
    {
      if (*a10)
      {
        v93 = vrev16_s8(*result);
        v94 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v34);
        *result = vrev16_s8(vmla_lane_f16(vmls_f16(v93, v93, v94), vmul_f16(v94, vorr_s8(vand_s8(vrev16_s8(*a3->i8), v26), v27)), v93, 3));
      }

      v95 = &a3->i8[8 * a14];
      a10 += a14;
      if (v95 >= a8)
      {
        v96 = v28;
      }

      else
      {
        v96 = 0;
      }

      a3 = &v95[8 * v96];
      result += v31;
    }

    a10 += a11;
    result += 8 * a2;
    v97 = &a5->i64[a4];
    if (v97 >= a9)
    {
      v98 = v29;
    }

    else
    {
      v98 = 0;
    }

    v99 = &v97[v98];
    v100 = a8 + 8 * v98 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v99;
      a8 = v100;
      a5 = v99;
    }

    v65 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v65 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float16x8_t *composite_pixelmask<(CGCompositeOperation)7,_rgbaf16_t>(float16x8_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  v18 = 4 * a14;
  v19 = -a7;
  v20 = -(a6 * a4);
  v21 = 8 * v18;
  v22 = 8 * a14;
  v23.i64[0] = 0xBC00BC00BC00BC00;
  v23.i64[1] = 0xBC00BC00BC00BC00;
  v24.i64[0] = -1;
  v24.i64[1] = -1;
  v25 = vdupq_n_s16(0x1C04u);
  v26 = vdup_n_s16(0x1C04u);
  if ((a15 & 0x30) != 0)
  {
    while (1)
    {
      v27 = (a8 - a3) >> 3;
      if (v27 >= a12)
      {
        v27 = a12;
      }

      v28 = v27;
      if (v27 < 4)
      {
        goto LABEL_36;
      }

      while (1)
      {
        v29 = *a10;
        if (*a10 == -1)
        {
          v36 = &a10[v28];
          v37 = a10;
          do
          {
            v38 = v37++;
          }

          while (v37 <= v36 && (vminvq_u8(vceqq_s8(*v38, v24)) & 0x80) != 0);
          do
          {
            v39 = v38;
            v38 = (v38 + 4);
          }

          while (v38 <= v36 && v39->i32[0] == -1);
          if (v39 < v36)
          {
            while (v39->u8[0] == 255)
            {
              v39 = (v39 + 1);
              if (v39 >= v36)
              {
                v39 = &a10[v28];
                break;
              }
            }
          }

          v40 = v39 - a10;
          v41 = v39 - a10;
          do
          {
            v42.i64[0] = 0x3C003C003C003C00;
            v42.i64[1] = 0x3C003C003C003C00;
            v15 = vmlaq_f16(v42, v23, vqtbl1q_s8(*a3, xmmword_18439C6E0));
            v43.i64[0] = 0x3C003C003C003C00;
            v43.i64[1] = 0x3C003C003C003C00;
            v44 = vmlsq_f16(result[1], result[1], vmlaq_f16(v43, v23, vqtbl1q_s8(a3[1], xmmword_18439C6E0)));
            *result = vmlsq_f16(*result, *result, v15);
            result[1] = v44;
            a10 += v18;
            v41 -= 4;
            result = (result + v21);
            a3 = (a3 + v21);
          }

          while (v41 > 3);
          v28 = v28 - v40 + v41;
          goto LABEL_33;
        }

        if (v29)
        {
          break;
        }

        v30 = &a10[v28];
        v31 = a10;
        do
        {
          v32 = v31++;
        }

        while (v31 <= v30 && (vminvq_u8(vceqzq_s8(*v32)) & 0x80) != 0);
        do
        {
          v33 = v32;
          v32 = (v32 + 4);
        }

        while (v32 <= v30 && !v33->i32[0]);
        if (v33 < v30)
        {
          while (!v33->i8[0])
          {
            v33 = (v33 + 1);
            if (v33 >= v30)
            {
              v33 = &a10[v28];
              break;
            }
          }
        }

        v34 = v33 - a10;
        v35 = (v33 - a10) * a14;
        a3 = (a3 + 8 * v35);
        result = (result + 8 * v35);
        a10 += v35;
        v28 -= v34;
LABEL_33:
        if (v28 <= 3)
        {
          goto LABEL_36;
        }
      }

      v45 = 0;
      while (1)
      {
        v46 = (result + v45);
        v15.i32[0] = v29;
        v47 = vqtbl1q_s8(v15, xmmword_18439C7A0);
        v48 = vcvtq_f16_u16(vmovl_u8(*v47.i8));
        v49 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v47)), v25);
        v50 = vmulq_f16(v48, v25);
        v15 = vmlsq_f16(v49, v49, vqtbl1q_s8(*(&a3[1] + v45), xmmword_18439C6E0));
        v51 = vmlsq_f16(*(&result[1] + v45), *(&result[1] + v45), v15);
        *v46 = vmlsq_f16(*(result + v45), *(result + v45), vmlsq_f16(v50, v50, vqtbl1q_s8(*(a3 + v45), xmmword_18439C6E0)));
        v46[1] = v51;
        a10 += v18;
        v28 -= 4;
        if (v28 < 4)
        {
          break;
        }

        v29 = *a10;
        v45 += v21;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v45);
          a3 = (a3 + v45);
          goto LABEL_33;
        }
      }

      result = (result + v21 + v45);
      a3 = (a3 + v21 + v45);
LABEL_36:
      for (i = a12 - v27 + v28; i; --i)
      {
        if (*a10)
        {
          v53 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v26);
          *result->i8 = vmls_f16(*result->i8, *result->i8, vmls_lane_f16(v53, v53, *a3->i8, 3));
        }

        v54 = &a3->i8[8 * a14];
        a10 += a14;
        if (v54 >= a8)
        {
          v55 = v19;
        }

        else
        {
          v55 = 0;
        }

        a3 = &v54[8 * v55];
        result = (result + v22);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v56 = &a5->i64[a4];
      if (v56 >= a9)
      {
        v57 = v20;
      }

      else
      {
        v57 = 0;
      }

      v58 = &v56[v57];
      v59 = a8 + 8 * v57 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v58;
        a8 = v59;
        a5 = v58;
      }

      v60 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v60 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v61 = (a8 - a3) >> 3;
    if (v61 >= a12)
    {
      v61 = a12;
    }

    v62 = v61;
    if (v61 < 4)
    {
      goto LABEL_85;
    }

    while (1)
    {
      v63 = *a10;
      if (*a10 == -1)
      {
        v70 = &a10[v62];
        v71 = a10;
        do
        {
          v72 = v71++;
        }

        while (v71 <= v70 && (vminvq_u8(vceqq_s8(*v72, v24)) & 0x80) != 0);
        do
        {
          v73 = v72;
          v72 = (v72 + 4);
        }

        while (v72 <= v70 && v73->i32[0] == -1);
        if (v73 < v70)
        {
          while (v73->u8[0] == 255)
          {
            v73 = (v73 + 1);
            if (v73 >= v70)
            {
              v73 = &a10[v62];
              break;
            }
          }
        }

        v74 = v73 - a10;
        v75 = v73 - a10;
        do
        {
          v76 = vrev16q_s8(result[1]);
          v77 = vrev16q_s8(*result);
          v78.i64[0] = 0x3C003C003C003C00;
          v78.i64[1] = 0x3C003C003C003C00;
          v15 = vmlaq_f16(v78, v23, vqtbl1q_s8(vrev16q_s8(*a3), xmmword_18439C6E0));
          v79.i64[0] = 0x3C003C003C003C00;
          v79.i64[1] = 0x3C003C003C003C00;
          v80 = vrev16q_s8(vmlsq_f16(v76, v76, vmlaq_f16(v79, v23, vqtbl1q_s8(vrev16q_s8(a3[1]), xmmword_18439C6E0))));
          *result = vrev16q_s8(vmlsq_f16(v77, v77, v15));
          result[1] = v80;
          a10 += v18;
          v75 -= 4;
          result = (result + v21);
          a3 = (a3 + v21);
        }

        while (v75 > 3);
        v62 = v62 - v74 + v75;
        goto LABEL_82;
      }

      if (v63)
      {
        break;
      }

      v64 = &a10[v62];
      v65 = a10;
      do
      {
        v66 = v65++;
      }

      while (v65 <= v64 && (vminvq_u8(vceqzq_s8(*v66)) & 0x80) != 0);
      do
      {
        v67 = v66;
        v66 = (v66 + 4);
      }

      while (v66 <= v64 && !v67->i32[0]);
      if (v67 < v64)
      {
        while (!v67->i8[0])
        {
          v67 = (v67 + 1);
          if (v67 >= v64)
          {
            v67 = &a10[v62];
            break;
          }
        }
      }

      v68 = v67 - a10;
      v69 = (v67 - a10) * a14;
      a3 = (a3 + 8 * v69);
      result = (result + 8 * v69);
      a10 += v69;
      v62 -= v68;
LABEL_82:
      if (v62 <= 3)
      {
        goto LABEL_85;
      }
    }

    v81 = 0;
    while (1)
    {
      v82 = &result->i8[v81];
      v83 = vrev16q_s8(*(&result[1] + v81));
      v84 = vrev16q_s8(*(result + v81));
      v15.i32[0] = v63;
      v85 = vqtbl1q_s8(v15, xmmword_18439C7A0);
      v86 = vcvtq_f16_u16(vmovl_u8(*v85.i8));
      v87 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v85)), v25);
      v88 = vmulq_f16(v86, v25);
      v15 = vmlsq_f16(v87, v87, vqtbl1q_s8(vrev16q_s8(*(&a3[1] + v81)), xmmword_18439C6E0));
      *v82 = vrev16q_s8(vmlsq_f16(v84, v84, vmlsq_f16(v88, v88, vqtbl1q_s8(vrev16q_s8(*(a3 + v81)), xmmword_18439C6E0))));
      v82[1] = vrev16q_s8(vmlsq_f16(v83, v83, v15));
      a10 += v18;
      v62 -= 4;
      if (v62 < 4)
      {
        break;
      }

      v63 = *a10;
      v81 += v21;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v81);
        a3 = (a3 + v81);
        goto LABEL_82;
      }
    }

    result = (result + v21 + v81);
    a3 = (a3 + v21 + v81);
LABEL_85:
    for (j = a12 - v61 + v62; j; --j)
    {
      if (*a10)
      {
        v90 = vrev16_s8(*result->i8);
        v91 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v26);
        *result->i8 = vrev16_s8(vmls_f16(v90, v90, vmls_lane_f16(v91, v91, vrev16_s8(*a3->i8), 3)));
      }

      v92 = &a3->i8[8 * a14];
      a10 += a14;
      if (v92 >= a8)
      {
        v93 = v19;
      }

      else
      {
        v93 = 0;
      }

      a3 = &v92[8 * v93];
      result = (result + v22);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v94 = &a5->i64[a4];
    if (v94 >= a9)
    {
      v95 = v20;
    }

    else
    {
      v95 = 0;
    }

    v96 = &v94[v95];
    v97 = a8 + 8 * v95 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v96;
      a8 = v97;
      a5 = v96;
    }

    v60 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v60 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float16x8_t *composite_pixelmask<(CGCompositeOperation)4,_rgbaf16_t>(float16x8_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, char a16)
{
  if (a15)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20 = vdupq_n_s16(v19);
  v21.i64[0] = 0xFFFF000000000000;
  v21.i64[1] = 0xFFFF000000000000;
  v22 = vmvnq_s8(vandq_s8(v20, v21));
  v23 = vandq_s8(v20, xmmword_18439CFA0);
  v24 = 4 * a14;
  v25 = 0;
  v25.i16[3] = v19;
  v26 = vmvn_s8(v25);
  v27 = vand_s8(*v20.i8, 0x3C00000000000000);
  v28 = -a7;
  v29 = -(a6 * a4);
  v30 = 8 * v24;
  v31 = 8 * a14;
  v32.i64[0] = -1;
  v32.i64[1] = -1;
  v33 = vdupq_n_s16(0x1C04u);
  v34 = vdup_n_s16(0x1C04u);
  if ((a16 & 0x30) != 0)
  {
    while (1)
    {
      v35 = (a8 - a3) >> 3;
      if (v35 >= a12)
      {
        v35 = a12;
      }

      v36 = v35;
      if (v35 < 4)
      {
        goto LABEL_39;
      }

      while (1)
      {
        v37 = *a10;
        if (*a10 == -1)
        {
          v44 = &a10[v36];
          v45 = a10;
          do
          {
            v46 = v45++;
          }

          while (v45 <= v44 && (vminvq_u8(vceqq_s8(*v46, v32)) & 0x80) != 0);
          do
          {
            v47 = v46;
            v46 = (v46 + 4);
          }

          while (v46 <= v44 && v47->i32[0] == -1);
          if (v47 < v44)
          {
            while (v47->u8[0] == 255)
            {
              v47 = (v47 + 1);
              if (v47 >= v44)
              {
                v47 = &a10[v36];
                break;
              }
            }
          }

          v48 = v47 - a10;
          v49 = v47 - a10;
          do
          {
            v50 = result[1];
            v16 = vqtbl1q_s8(v50, xmmword_18439C6E0);
            v51 = vorrq_s8(vandq_s8(*a3, v22), v23);
            v52 = vorrq_s8(vandq_s8(a3[1], v22), v23);
            *result = vaddq_f16(vsubq_f16(*result, *result), vmlsq_f16(v51, v51, vqtbl1q_s8(*result, xmmword_18439C6E0)));
            result[1] = vaddq_f16(vsubq_f16(v50, v50), vmlsq_f16(v52, v52, v16));
            a10 += v24;
            v49 -= 4;
            result = (result + v30);
            a3 = (a3 + v30);
          }

          while (v49 > 3);
          v36 = v36 - v48 + v49;
          goto LABEL_36;
        }

        if (v37)
        {
          break;
        }

        v38 = &a10[v36];
        v39 = a10;
        do
        {
          v40 = v39++;
        }

        while (v39 <= v38 && (vminvq_u8(vceqzq_s8(*v40)) & 0x80) != 0);
        do
        {
          v41 = v40;
          v40 = (v40 + 4);
        }

        while (v40 <= v38 && !v41->i32[0]);
        if (v41 < v38)
        {
          while (!v41->i8[0])
          {
            v41 = (v41 + 1);
            if (v41 >= v38)
            {
              v41 = &a10[v36];
              break;
            }
          }
        }

        v42 = v41 - a10;
        v43 = (v41 - a10) * a14;
        a3 = (a3 + 8 * v43);
        result = (result + 8 * v43);
        a10 += v43;
        v36 -= v42;
LABEL_36:
        if (v36 <= 3)
        {
          goto LABEL_39;
        }
      }

      v53 = 0;
      while (1)
      {
        v54 = (result + v53);
        v16.i32[0] = v37;
        v55 = vqtbl1q_s8(v16, xmmword_18439C7A0);
        v56 = vcvtq_f16_u16(vmovl_high_u8(v55));
        v16 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v55.i8)), v33);
        v57 = vmulq_f16(v56, v33);
        v58 = vorrq_s8(vandq_s8(*(a3 + v53), v22), v23);
        v59 = vorrq_s8(vandq_s8(*(&a3[1] + v53), v22), v23);
        v60 = vmlaq_f16(vmlsq_f16(*(&result[1] + v53), *(&result[1] + v53), v57), v57, vmlsq_f16(v59, v59, vqtbl1q_s8(*(&result[1] + v53), xmmword_18439C6E0)));
        *v54 = vmlaq_f16(vmlsq_f16(*(result + v53), *(result + v53), v16), v16, vmlsq_f16(v58, v58, vqtbl1q_s8(*(result + v53), xmmword_18439C6E0)));
        v54[1] = v60;
        a10 += v24;
        v36 -= 4;
        if (v36 < 4)
        {
          break;
        }

        v37 = *a10;
        v53 += v30;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v53);
          a3 = (a3 + v53);
          goto LABEL_36;
        }
      }

      result = (result + v30 + v53);
      a3 = (a3 + v30 + v53);
LABEL_39:
      for (i = a12 - v35 + v36; i; --i)
      {
        if (*a10)
        {
          v62 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v34);
          v63 = vorr_s8(vand_s8(*a3->i8, v26), v27);
          *result->i8 = vmla_f16(vmls_f16(*result->i8, *result->i8, v62), v62, vmls_lane_f16(v63, v63, *result->i8, 3));
        }

        v64 = &a3->i8[8 * a14];
        a10 += a14;
        if (v64 >= a8)
        {
          v65 = v28;
        }

        else
        {
          v65 = 0;
        }

        a3 = &v64[8 * v65];
        result = (result + v31);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v66 = &a5->i64[a4];
      if (v66 >= a9)
      {
        v67 = v29;
      }

      else
      {
        v67 = 0;
      }

      v68 = &v66[v67];
      v69 = a8 + 8 * v67 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v68;
        a8 = v69;
        a5 = v68;
      }

      v70 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v70 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v71 = (a8 - a3) >> 3;
    if (v71 >= a12)
    {
      v71 = a12;
    }

    v72 = v71;
    if (v71 < 4)
    {
      goto LABEL_88;
    }

    while (1)
    {
      v73 = *a10;
      if (*a10 == -1)
      {
        v80 = &a10[v72];
        v81 = a10;
        do
        {
          v82 = v81++;
        }

        while (v81 <= v80 && (vminvq_u8(vceqq_s8(*v82, v32)) & 0x80) != 0);
        do
        {
          v83 = v82;
          v82 = (v82 + 4);
        }

        while (v82 <= v80 && v83->i32[0] == -1);
        if (v83 < v80)
        {
          while (v83->u8[0] == 255)
          {
            v83 = (v83 + 1);
            if (v83 >= v80)
            {
              v83 = &a10[v72];
              break;
            }
          }
        }

        v84 = v83 - a10;
        v85 = v83 - a10;
        do
        {
          v86 = vrev16q_s8(*result);
          v87 = vrev16q_s8(result[1]);
          v16 = vqtbl1q_s8(v87, xmmword_18439C6E0);
          v88 = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v22), v23);
          v89 = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v22), v23);
          *result = vrev16q_s8(vaddq_f16(vsubq_f16(v86, v86), vmlsq_f16(v88, v88, vqtbl1q_s8(v86, xmmword_18439C6E0))));
          result[1] = vrev16q_s8(vaddq_f16(vsubq_f16(v87, v87), vmlsq_f16(v89, v89, v16)));
          a10 += v24;
          v85 -= 4;
          result = (result + v30);
          a3 = (a3 + v30);
        }

        while (v85 > 3);
        v72 = v72 - v84 + v85;
        goto LABEL_85;
      }

      if (v73)
      {
        break;
      }

      v74 = &a10[v72];
      v75 = a10;
      do
      {
        v76 = v75++;
      }

      while (v75 <= v74 && (vminvq_u8(vceqzq_s8(*v76)) & 0x80) != 0);
      do
      {
        v77 = v76;
        v76 = (v76 + 4);
      }

      while (v76 <= v74 && !v77->i32[0]);
      if (v77 < v74)
      {
        while (!v77->i8[0])
        {
          v77 = (v77 + 1);
          if (v77 >= v74)
          {
            v77 = &a10[v72];
            break;
          }
        }
      }

      v78 = v77 - a10;
      v79 = (v77 - a10) * a14;
      a3 = (a3 + 8 * v79);
      result = (result + 8 * v79);
      a10 += v79;
      v72 -= v78;
LABEL_85:
      if (v72 <= 3)
      {
        goto LABEL_88;
      }
    }

    v90 = 0;
    while (1)
    {
      v91 = &result->i8[v90];
      v92 = vrev16q_s8(*(result + v90));
      v93 = vrev16q_s8(*(&result[1] + v90));
      v16.i32[0] = v73;
      v94 = vqtbl1q_s8(v16, xmmword_18439C7A0);
      v95 = vcvtq_f16_u16(vmovl_u8(*v94.i8));
      v16 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v94)), v33);
      v96 = vmulq_f16(v95, v33);
      v97 = vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v90)), v22), v23);
      v98 = vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v90)), v22), v23);
      *v91 = vrev16q_s8(vmlaq_f16(vmlsq_f16(v92, v92, v96), v96, vmlsq_f16(v97, v97, vqtbl1q_s8(v92, xmmword_18439C6E0))));
      v91[1] = vrev16q_s8(vmlaq_f16(vmlsq_f16(v93, v93, v16), v16, vmlsq_f16(v98, v98, vqtbl1q_s8(v93, xmmword_18439C6E0))));
      a10 += v24;
      v72 -= 4;
      if (v72 < 4)
      {
        break;
      }

      v73 = *a10;
      v90 += v30;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v90);
        a3 = (a3 + v90);
        goto LABEL_85;
      }
    }

    result = (result + v30 + v90);
    a3 = (a3 + v30 + v90);
LABEL_88:
    for (j = a12 - v71 + v72; j; --j)
    {
      if (*a10)
      {
        v100 = vrev16_s8(*result->i8);
        v101 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v34);
        v102 = vorr_s8(vand_s8(vrev16_s8(*a3->i8), v26), v27);
        *result->i8 = vrev16_s8(vmla_f16(vmls_f16(v100, v100, v101), v101, vmls_lane_f16(v102, v102, v100, 3)));
      }

      v103 = &a3->i8[8 * a14];
      a10 += a14;
      if (v103 >= a8)
      {
        v104 = v28;
      }

      else
      {
        v104 = 0;
      }

      a3 = &v103[8 * v104];
      result = (result + v31);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v105 = &a5->i64[a4];
    if (v105 >= a9)
    {
      v106 = v29;
    }

    else
    {
      v106 = 0;
    }

    v107 = &v105[v106];
    v108 = a8 + 8 * v106 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v107;
      a8 = v108;
      a5 = v107;
    }

    v70 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v70 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float16x8_t *composite_pixelmask<(CGCompositeOperation)8,_rgbaf16_t>(float16x8_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  v18 = 4 * a14;
  v19 = -a7;
  v20 = -(a6 * a4);
  v21 = 8 * v18;
  v22 = 8 * a14;
  v23.i64[0] = -1;
  v23.i64[1] = -1;
  v24 = vdupq_n_s16(0x9C04u);
  v25 = vdup_n_s16(0x9C04u);
  if ((a15 & 0x30) != 0)
  {
    while (1)
    {
      v26 = (a8 - a3) >> 3;
      if (v26 >= a12)
      {
        v26 = a12;
      }

      v27 = v26;
      if (v26 < 4)
      {
        goto LABEL_36;
      }

      while (1)
      {
        v28 = *a10;
        if (*a10 == -1)
        {
          v35 = &a10[v27];
          v36 = a10;
          do
          {
            v37 = v36++;
          }

          while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, v23)) & 0x80) != 0);
          do
          {
            v38 = v37;
            v37 = (v37 + 4);
          }

          while (v37 <= v35 && v38->i32[0] == -1);
          if (v38 < v35)
          {
            while (v38->u8[0] == 255)
            {
              v38 = (v38 + 1);
              if (v38 >= v35)
              {
                v38 = &a10[v27];
                break;
              }
            }
          }

          v39 = v38 - a10;
          v40 = v38 - a10;
          do
          {
            v41 = vmlsq_f16(result[1], result[1], vqtbl1q_s8(a3[1], xmmword_18439C6E0));
            *result = vmlsq_f16(*result, *result, vqtbl1q_s8(*a3, xmmword_18439C6E0));
            result[1] = v41;
            a10 += v18;
            v40 -= 4;
            result = (result + v21);
            a3 = (a3 + v21);
          }

          while (v40 > 3);
          v27 = v27 - v39 + v40;
          goto LABEL_33;
        }

        if (v28)
        {
          break;
        }

        v29 = &a10[v27];
        v30 = a10;
        do
        {
          v31 = v30++;
        }

        while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
        do
        {
          v32 = v31;
          v31 = (v31 + 4);
        }

        while (v31 <= v29 && !v32->i32[0]);
        if (v32 < v29)
        {
          while (!v32->i8[0])
          {
            v32 = (v32 + 1);
            if (v32 >= v29)
            {
              v32 = &a10[v27];
              break;
            }
          }
        }

        v33 = v32 - a10;
        v34 = (v32 - a10) * a14;
        a3 = (a3 + 8 * v34);
        result = (result + 8 * v34);
        a10 += v34;
        v27 -= v33;
LABEL_33:
        if (v27 <= 3)
        {
          goto LABEL_36;
        }
      }

      v42 = 0;
      while (1)
      {
        v43 = (result + v42);
        v15.i32[0] = v28;
        v44 = vqtbl1q_s8(v15, xmmword_18439C7A0);
        v45 = vcvtq_f16_u16(vmovl_high_u8(v44));
        v15 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v44.i8)), v24);
        v46 = vmlaq_f16(*(&result[1] + v42), vmulq_f16(vqtbl1q_s8(*(&a3[1] + v42), xmmword_18439C6E0), vmulq_f16(v45, v24)), *(&result[1] + v42));
        *v43 = vmlaq_f16(*(result + v42), vmulq_f16(vqtbl1q_s8(*(a3 + v42), xmmword_18439C6E0), v15), *(result + v42));
        v43[1] = v46;
        a10 += v18;
        v27 -= 4;
        if (v27 < 4)
        {
          break;
        }

        v28 = *a10;
        v42 += v21;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v42);
          a3 = (a3 + v42);
          goto LABEL_33;
        }
      }

      result = (result + v21 + v42);
      a3 = (a3 + v21 + v42);
LABEL_36:
      for (i = a12 - v26 + v27; i; --i)
      {
        if (*a10)
        {
          *result->i8 = vmla_f16(*result->i8, vmul_lane_f16(vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v25), *a3->i8, 3), *result->i8);
        }

        v48 = &a3->i8[8 * a14];
        a10 += a14;
        if (v48 >= a8)
        {
          v49 = v19;
        }

        else
        {
          v49 = 0;
        }

        a3 = &v48[8 * v49];
        result = (result + v22);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v50 = &a5->i64[a4];
      if (v50 >= a9)
      {
        v51 = v20;
      }

      else
      {
        v51 = 0;
      }

      v52 = &v50[v51];
      v53 = a8 + 8 * v51 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v52;
        a8 = v53;
        a5 = v52;
      }

      v54 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v54 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v55 = (a8 - a3) >> 3;
    if (v55 >= a12)
    {
      v55 = a12;
    }

    v56 = v55;
    if (v55 < 4)
    {
      goto LABEL_85;
    }

    while (1)
    {
      v57 = *a10;
      if (*a10 == -1)
      {
        v64 = &a10[v56];
        v65 = a10;
        do
        {
          v66 = v65++;
        }

        while (v65 <= v64 && (vminvq_u8(vceqq_s8(*v66, v23)) & 0x80) != 0);
        do
        {
          v67 = v66;
          v66 = (v66 + 4);
        }

        while (v66 <= v64 && v67->i32[0] == -1);
        if (v67 < v64)
        {
          while (v67->u8[0] == 255)
          {
            v67 = (v67 + 1);
            if (v67 >= v64)
            {
              v67 = &a10[v56];
              break;
            }
          }
        }

        v68 = v67 - a10;
        v69 = v67 - a10;
        do
        {
          v70 = vrev16q_s8(result[1]);
          v71 = vrev16q_s8(*result);
          v72 = vrev16q_s8(vmlsq_f16(v70, v70, vqtbl1q_s8(vrev16q_s8(a3[1]), xmmword_18439C6E0)));
          *result = vrev16q_s8(vmlsq_f16(v71, v71, vqtbl1q_s8(vrev16q_s8(*a3), xmmword_18439C6E0)));
          result[1] = v72;
          a10 += v18;
          v69 -= 4;
          result = (result + v21);
          a3 = (a3 + v21);
        }

        while (v69 > 3);
        v56 = v56 - v68 + v69;
        goto LABEL_82;
      }

      if (v57)
      {
        break;
      }

      v58 = &a10[v56];
      v59 = a10;
      do
      {
        v60 = v59++;
      }

      while (v59 <= v58 && (vminvq_u8(vceqzq_s8(*v60)) & 0x80) != 0);
      do
      {
        v61 = v60;
        v60 = (v60 + 4);
      }

      while (v60 <= v58 && !v61->i32[0]);
      if (v61 < v58)
      {
        while (!v61->i8[0])
        {
          v61 = (v61 + 1);
          if (v61 >= v58)
          {
            v61 = &a10[v56];
            break;
          }
        }
      }

      v62 = v61 - a10;
      v63 = (v61 - a10) * a14;
      a3 = (a3 + 8 * v63);
      result = (result + 8 * v63);
      a10 += v63;
      v56 -= v62;
LABEL_82:
      if (v56 <= 3)
      {
        goto LABEL_85;
      }
    }

    v73 = 0;
    while (1)
    {
      v74 = &result->i8[v73];
      v75 = vrev16q_s8(*(result + v73));
      v76 = vrev16q_s8(*(&result[1] + v73));
      v15.i32[0] = v57;
      v77 = vqtbl1q_s8(v15, xmmword_18439C7A0);
      v78 = vcvtq_f16_u16(vmovl_u8(*v77.i8));
      v15 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v77)), v24);
      v79 = vrev16q_s8(vmlaq_f16(v76, vmulq_f16(vqtbl1q_s8(vrev16q_s8(*(&a3[1] + v73)), xmmword_18439C6E0), v15), v76));
      *v74 = vrev16q_s8(vmlaq_f16(v75, vmulq_f16(vqtbl1q_s8(vrev16q_s8(*(a3 + v73)), xmmword_18439C6E0), vmulq_f16(v78, v24)), v75));
      v74[1] = v79;
      a10 += v18;
      v56 -= 4;
      if (v56 < 4)
      {
        break;
      }

      v57 = *a10;
      v73 += v21;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v73);
        a3 = (a3 + v73);
        goto LABEL_82;
      }
    }

    result = (result + v21 + v73);
    a3 = (a3 + v21 + v73);
LABEL_85:
    for (j = a12 - v55 + v56; j; --j)
    {
      if (*a10)
      {
        v81 = vrev16_s8(*result->i8);
        *result->i8 = vrev16_s8(vmla_f16(v81, vmul_lane_f16(vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v25), vrev16_s8(*a3->i8), 3), v81));
      }

      v82 = &a3->i8[8 * a14];
      a10 += a14;
      if (v82 >= a8)
      {
        v83 = v19;
      }

      else
      {
        v83 = 0;
      }

      a3 = &v82[8 * v83];
      result = (result + v22);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v84 = &a5->i64[a4];
    if (v84 >= a9)
    {
      v85 = v20;
    }

    else
    {
      v85 = 0;
    }

    v86 = &v84[v85];
    v87 = a8 + 8 * v85 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v86;
      a8 = v87;
      a5 = v86;
    }

    v54 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v54 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float16x8_t *composite_pixelmask<(CGCompositeOperation)5,_rgbaf16_t>(float16x8_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  v18 = 4 * a14;
  v19 = -a7;
  v20 = -(a6 * a4);
  v21 = 8 * v18;
  v22 = 8 * a14;
  v23.i64[0] = -1;
  v23.i64[1] = -1;
  v24 = vdupq_n_s16(0x1C04u);
  v25 = vdup_n_s16(0x1C04u);
  if ((a15 & 0x30) != 0)
  {
    while (1)
    {
      v26 = (a8 - a3) >> 3;
      if (v26 >= a12)
      {
        v26 = a12;
      }

      v27 = v26;
      if (v26 < 4)
      {
        goto LABEL_36;
      }

      while (1)
      {
        v28 = *a10;
        if (*a10 == -1)
        {
          v35 = &a10[v27];
          v36 = a10;
          do
          {
            v37 = v36++;
          }

          while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, v23)) & 0x80) != 0);
          do
          {
            v38 = v37;
            v37 = (v37 + 4);
          }

          while (v37 <= v35 && v38->i32[0] == -1);
          if (v38 < v35)
          {
            while (v38->u8[0] == 255)
            {
              v38 = (v38 + 1);
              if (v38 >= v35)
              {
                v38 = &a10[v27];
                break;
              }
            }
          }

          v39 = v38 - a10;
          v40 = v38 - a10;
          do
          {
            v41 = a3[1];
            v15 = vqtbl1q_s8(v41, xmmword_18439C6E0);
            v42 = vmlaq_f16(vmlsq_f16(result[1], result[1], v15), vqtbl1q_s8(result[1], xmmword_18439C6E0), v41);
            *result = vmlaq_f16(vmlsq_f16(*result, *result, vqtbl1q_s8(*a3, xmmword_18439C6E0)), vqtbl1q_s8(*result, xmmword_18439C6E0), *a3);
            result[1] = v42;
            a10 += v18;
            v40 -= 4;
            result = (result + v21);
            a3 = (a3 + v21);
          }

          while (v40 > 3);
          v27 = v27 - v39 + v40;
          goto LABEL_33;
        }

        if (v28)
        {
          break;
        }

        v29 = &a10[v27];
        v30 = a10;
        do
        {
          v31 = v30++;
        }

        while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
        do
        {
          v32 = v31;
          v31 = (v31 + 4);
        }

        while (v31 <= v29 && !v32->i32[0]);
        if (v32 < v29)
        {
          while (!v32->i8[0])
          {
            v32 = (v32 + 1);
            if (v32 >= v29)
            {
              v32 = &a10[v27];
              break;
            }
          }
        }

        v33 = v32 - a10;
        v34 = (v32 - a10) * a14;
        a3 = (a3 + 8 * v34);
        result = (result + 8 * v34);
        a10 += v34;
        v27 -= v33;
LABEL_33:
        if (v27 <= 3)
        {
          goto LABEL_36;
        }
      }

      v43 = 0;
      while (1)
      {
        v44 = (result + v43);
        v15.i32[0] = v28;
        v45 = vqtbl1q_s8(v15, xmmword_18439C7A0);
        v46 = vmulq_f16(*(a3 + v43), vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v45.i8)), v24));
        v47 = vmulq_f16(*(&a3[1] + v43), vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v45)), v24));
        v15 = vqtbl1q_s8(v47, xmmword_18439C6E0);
        v48 = vmlaq_f16(vmlsq_f16(*(&result[1] + v43), *(&result[1] + v43), v15), vqtbl1q_s8(*(&result[1] + v43), xmmword_18439C6E0), v47);
        *v44 = vmlaq_f16(vmlsq_f16(*(result + v43), *(result + v43), vqtbl1q_s8(v46, xmmword_18439C6E0)), vqtbl1q_s8(*(result + v43), xmmword_18439C6E0), v46);
        v44[1] = v48;
        a10 += v18;
        v27 -= 4;
        if (v27 < 4)
        {
          break;
        }

        v28 = *a10;
        v43 += v21;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v43);
          a3 = (a3 + v43);
          goto LABEL_33;
        }
      }

      result = (result + v21 + v43);
      a3 = (a3 + v21 + v43);
LABEL_36:
      for (i = a12 - v26 + v27; i; --i)
      {
        if (*a10)
        {
          v50 = vmul_f16(vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v25), *a3->i8);
          *result->i8 = vmla_lane_f16(vmls_lane_f16(*result->i8, *result->i8, v50, 3), v50, *result->i8, 3);
        }

        v51 = &a3->i8[8 * a14];
        a10 += a14;
        if (v51 >= a8)
        {
          v52 = v19;
        }

        else
        {
          v52 = 0;
        }

        a3 = &v51[8 * v52];
        result = (result + v22);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v53 = &a5->i64[a4];
      if (v53 >= a9)
      {
        v54 = v20;
      }

      else
      {
        v54 = 0;
      }

      v55 = &v53[v54];
      v56 = a8 + 8 * v54 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v55;
        a8 = v56;
        a5 = v55;
      }

      v57 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v57 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v58 = (a8 - a3) >> 3;
    if (v58 >= a12)
    {
      v58 = a12;
    }

    v59 = v58;
    if (v58 < 4)
    {
      goto LABEL_85;
    }

    while (1)
    {
      v60 = *a10;
      if (*a10 == -1)
      {
        v67 = &a10[v59];
        v68 = a10;
        do
        {
          v69 = v68++;
        }

        while (v68 <= v67 && (vminvq_u8(vceqq_s8(*v69, v23)) & 0x80) != 0);
        do
        {
          v70 = v69;
          v69 = (v69 + 4);
        }

        while (v69 <= v67 && v70->i32[0] == -1);
        if (v70 < v67)
        {
          while (v70->u8[0] == 255)
          {
            v70 = (v70 + 1);
            if (v70 >= v67)
            {
              v70 = &a10[v59];
              break;
            }
          }
        }

        v71 = v70 - a10;
        v72 = v70 - a10;
        do
        {
          v73 = vrev16q_s8(*a3);
          v74 = vrev16q_s8(a3[1]);
          v75 = vrev16q_s8(*result);
          v76 = vrev16q_s8(result[1]);
          v15 = vqtbl1q_s8(v74, xmmword_18439C6E0);
          *result = vrev16q_s8(vmlaq_f16(vmlsq_f16(v75, v75, vqtbl1q_s8(v73, xmmword_18439C6E0)), vqtbl1q_s8(v75, xmmword_18439C6E0), v73));
          result[1] = vrev16q_s8(vmlaq_f16(vmlsq_f16(v76, v76, v15), vqtbl1q_s8(v76, xmmword_18439C6E0), v74));
          a10 += v18;
          v72 -= 4;
          result = (result + v21);
          a3 = (a3 + v21);
        }

        while (v72 > 3);
        v59 = v59 - v71 + v72;
        goto LABEL_82;
      }

      if (v60)
      {
        break;
      }

      v61 = &a10[v59];
      v62 = a10;
      do
      {
        v63 = v62++;
      }

      while (v62 <= v61 && (vminvq_u8(vceqzq_s8(*v63)) & 0x80) != 0);
      do
      {
        v64 = v63;
        v63 = (v63 + 4);
      }

      while (v63 <= v61 && !v64->i32[0]);
      if (v64 < v61)
      {
        while (!v64->i8[0])
        {
          v64 = (v64 + 1);
          if (v64 >= v61)
          {
            v64 = &a10[v59];
            break;
          }
        }
      }

      v65 = v64 - a10;
      v66 = (v64 - a10) * a14;
      a3 = (a3 + 8 * v66);
      result = (result + 8 * v66);
      a10 += v66;
      v59 -= v65;
LABEL_82:
      if (v59 <= 3)
      {
        goto LABEL_85;
      }
    }

    v77 = 0;
    while (1)
    {
      v78 = &result->i8[v77];
      v79 = vrev16q_s8(*(&result[1] + v77));
      v80 = vrev16q_s8(*(result + v77));
      v15.i32[0] = v60;
      v81 = vqtbl1q_s8(v15, xmmword_18439C7A0);
      v82 = vmulq_f16(vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v81.i8)), v24), vrev16q_s8(*(a3 + v77)));
      v83 = vmulq_f16(vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v81)), v24), vrev16q_s8(*(&a3[1] + v77)));
      v15 = vqtbl1q_s8(v83, xmmword_18439C6E0);
      *v78 = vrev16q_s8(vmlaq_f16(vmlsq_f16(v80, v80, vqtbl1q_s8(v82, xmmword_18439C6E0)), vqtbl1q_s8(v80, xmmword_18439C6E0), v82));
      v78[1] = vrev16q_s8(vmlaq_f16(vmlsq_f16(v79, v79, v15), vqtbl1q_s8(v79, xmmword_18439C6E0), v83));
      a10 += v18;
      v59 -= 4;
      if (v59 < 4)
      {
        break;
      }

      v60 = *a10;
      v77 += v21;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v77);
        a3 = (a3 + v77);
        goto LABEL_82;
      }
    }

    result = (result + v21 + v77);
    a3 = (a3 + v21 + v77);
LABEL_85:
    for (j = a12 - v58 + v59; j; --j)
    {
      if (*a10)
      {
        v85 = vrev16_s8(*result->i8);
        v86 = vmul_f16(vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v25), vrev16_s8(*a3->i8));
        *result->i8 = vrev16_s8(vmla_lane_f16(vmls_lane_f16(v85, v85, v86, 3), v86, v85, 3));
      }

      v87 = &a3->i8[8 * a14];
      a10 += a14;
      if (v87 >= a8)
      {
        v88 = v19;
      }

      else
      {
        v88 = 0;
      }

      a3 = &v87[8 * v88];
      result = (result + v22);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v89 = &a5->i64[a4];
    if (v89 >= a9)
    {
      v90 = v20;
    }

    else
    {
      v90 = 0;
    }

    v91 = &v89[v90];
    v92 = a8 + 8 * v90 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v91;
      a8 = v92;
      a5 = v91;
    }

    v57 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v57 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float16x8_t *composite_pixelmask<(CGCompositeOperation)9,_rgbaf16_t>(float16x8_t *result, uint64_t a2, float16x8_t *a3, uint64_t a4, float16x8_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  v18 = 4 * a14;
  v19 = -a7;
  v20 = -(a6 * a4);
  v21 = 8 * v18;
  v22 = 8 * a14;
  v23.i64[0] = -1;
  v23.i64[1] = -1;
  v24 = vdupq_n_s16(0x1C04u);
  v25 = vdup_n_s16(0x1C04u);
  if ((a15 & 0x30) != 0)
  {
    while (1)
    {
      v26 = (a8 - a3) >> 3;
      if (v26 >= a12)
      {
        v26 = a12;
      }

      v27 = v26;
      if (v26 < 4)
      {
        goto LABEL_36;
      }

      while (1)
      {
        v28 = *a10;
        if (*a10 == -1)
        {
          v35 = &a10[v27];
          v36 = a10;
          do
          {
            v37 = v36++;
          }

          while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, v23)) & 0x80) != 0);
          do
          {
            v38 = v37;
            v37 = (v37 + 4);
          }

          while (v37 <= v35 && v38->i32[0] == -1);
          if (v38 < v35)
          {
            while (v38->u8[0] == 255)
            {
              v38 = (v38 + 1);
              if (v38 >= v35)
              {
                v38 = &a10[v27];
                break;
              }
            }
          }

          v39 = v38 - a10;
          v40 = v38 - a10;
          do
          {
            v41 = a3[1];
            v15 = vqtbl1q_s8(v41, xmmword_18439C6E0);
            v42 = vaddq_f16(result[1], vsubq_f16(vmlsq_f16(v41, v41, vqtbl1q_s8(result[1], xmmword_18439C6E0)), vmlsq_f16(result[1], result[1], v15)));
            *result = vaddq_f16(*result, vsubq_f16(vmlsq_f16(*a3, *a3, vqtbl1q_s8(*result, xmmword_18439C6E0)), vmlsq_f16(*result, *result, vqtbl1q_s8(*a3, xmmword_18439C6E0))));
            result[1] = v42;
            a10 += v18;
            v40 -= 4;
            result = (result + v21);
            a3 = (a3 + v21);
          }

          while (v40 > 3);
          v27 = v27 - v39 + v40;
          goto LABEL_33;
        }

        if (v28)
        {
          break;
        }

        v29 = &a10[v27];
        v30 = a10;
        do
        {
          v31 = v30++;
        }

        while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
        do
        {
          v32 = v31;
          v31 = (v31 + 4);
        }

        while (v31 <= v29 && !v32->i32[0]);
        if (v32 < v29)
        {
          while (!v32->i8[0])
          {
            v32 = (v32 + 1);
            if (v32 >= v29)
            {
              v32 = &a10[v27];
              break;
            }
          }
        }

        v33 = v32 - a10;
        v34 = (v32 - a10) * a14;
        a3 = (a3 + 8 * v34);
        result = (result + 8 * v34);
        a10 += v34;
        v27 -= v33;
LABEL_33:
        if (v27 <= 3)
        {
          goto LABEL_36;
        }
      }

      v43 = 0;
      while (1)
      {
        v44 = (result + v43);
        v15.i32[0] = v28;
        v45 = vqtbl1q_s8(v15, xmmword_18439C7A0);
        v46 = vcvtq_f16_u16(vmovl_u8(*v45.i8));
        v15 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v45)), v24);
        v47 = vmlaq_f16(*(&result[1] + v43), vsubq_f16(vmlsq_f16(*(&a3[1] + v43), *(&a3[1] + v43), vqtbl1q_s8(*(&result[1] + v43), xmmword_18439C6E0)), vmlsq_f16(*(&result[1] + v43), *(&result[1] + v43), vqtbl1q_s8(*(&a3[1] + v43), xmmword_18439C6E0))), v15);
        *v44 = vmlaq_f16(*(result + v43), vsubq_f16(vmlsq_f16(*(a3 + v43), *(a3 + v43), vqtbl1q_s8(*(result + v43), xmmword_18439C6E0)), vmlsq_f16(*(result + v43), *(result + v43), vqtbl1q_s8(*(a3 + v43), xmmword_18439C6E0))), vmulq_f16(v46, v24));
        v44[1] = v47;
        a10 += v18;
        v27 -= 4;
        if (v27 < 4)
        {
          break;
        }

        v28 = *a10;
        v43 += v21;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v43);
          a3 = (a3 + v43);
          goto LABEL_33;
        }
      }

      result = (result + v21 + v43);
      a3 = (a3 + v21 + v43);
LABEL_36:
      for (i = a12 - v26 + v27; i; --i)
      {
        if (*a10)
        {
          *result->i8 = vmla_f16(*result->i8, vsub_f16(vmls_lane_f16(*a3->i8, *a3->i8, *result->i8, 3), vmls_lane_f16(*result->i8, *result->i8, *a3->i8, 3)), vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v25));
        }

        v49 = &a3->i8[8 * a14];
        a10 += a14;
        if (v49 >= a8)
        {
          v50 = v19;
        }

        else
        {
          v50 = 0;
        }

        a3 = &v49[8 * v50];
        result = (result + v22);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v51 = a5 + 8 * a4;
      if (v51 >= a9)
      {
        v52 = v20;
      }

      else
      {
        v52 = 0;
      }

      v53 = (v51 + 8 * v52);
      v54 = a8 + 8 * v52 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v53;
        a8 = v54;
        a5 = v53;
      }

      v55 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v55 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v56 = (a8 - a3) >> 3;
    if (v56 >= a12)
    {
      v56 = a12;
    }

    v57 = v56;
    if (v56 < 4)
    {
      goto LABEL_85;
    }

    while (1)
    {
      v58 = *a10;
      if (*a10 == -1)
      {
        v65 = &a10[v57];
        v66 = a10;
        do
        {
          v67 = v66++;
        }

        while (v66 <= v65 && (vminvq_u8(vceqq_s8(*v67, v23)) & 0x80) != 0);
        do
        {
          v68 = v67;
          v67 = (v67 + 4);
        }

        while (v67 <= v65 && v68->i32[0] == -1);
        if (v68 < v65)
        {
          while (v68->u8[0] == 255)
          {
            v68 = (v68 + 1);
            if (v68 >= v65)
            {
              v68 = &a10[v57];
              break;
            }
          }
        }

        v69 = v68 - a10;
        v70 = v68 - a10;
        do
        {
          v71 = vrev16q_s8(*a3);
          v72 = vrev16q_s8(a3[1]);
          v73 = vrev16q_s8(*result);
          v74 = vrev16q_s8(result[1]);
          v15 = vqtbl1q_s8(v72, xmmword_18439C6E0);
          *result = vrev16q_s8(vaddq_f16(vsubq_f16(vmlsq_f16(v71, v71, vqtbl1q_s8(v73, xmmword_18439C6E0)), vmlsq_f16(v73, v73, vqtbl1q_s8(v71, xmmword_18439C6E0))), v73));
          result[1] = vrev16q_s8(vaddq_f16(vsubq_f16(vmlsq_f16(v72, v72, vqtbl1q_s8(v74, xmmword_18439C6E0)), vmlsq_f16(v74, v74, v15)), v74));
          a10 += v18;
          v70 -= 4;
          result = (result + v21);
          a3 = (a3 + v21);
        }

        while (v70 > 3);
        v57 = v57 - v69 + v70;
        goto LABEL_82;
      }

      if (v58)
      {
        break;
      }

      v59 = &a10[v57];
      v60 = a10;
      do
      {
        v61 = v60++;
      }

      while (v60 <= v59 && (vminvq_u8(vceqzq_s8(*v61)) & 0x80) != 0);
      do
      {
        v62 = v61;
        v61 = (v61 + 4);
      }

      while (v61 <= v59 && !v62->i32[0]);
      if (v62 < v59)
      {
        while (!v62->i8[0])
        {
          v62 = (v62 + 1);
          if (v62 >= v59)
          {
            v62 = &a10[v57];
            break;
          }
        }
      }

      v63 = v62 - a10;
      v64 = (v62 - a10) * a14;
      a3 = (a3 + 8 * v64);
      result = (result + 8 * v64);
      a10 += v64;
      v57 -= v63;
LABEL_82:
      if (v57 <= 3)
      {
        goto LABEL_85;
      }
    }

    v75 = 0;
    while (1)
    {
      v76 = &result->i8[v75];
      v77 = vrev16q_s8(*(a3 + v75));
      v78 = vrev16q_s8(*(&a3[1] + v75));
      v79 = vrev16q_s8(*(result + v75));
      v80 = vrev16q_s8(*(&result[1] + v75));
      v15.i32[0] = v58;
      v81 = vqtbl1q_s8(v15, xmmword_18439C7A0);
      v82 = vcvtq_f16_u16(vmovl_u8(*v81.i8));
      v15 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v81)), v24);
      *v76 = vrev16q_s8(vmlaq_f16(v79, vsubq_f16(vmlsq_f16(v77, v77, vqtbl1q_s8(v79, xmmword_18439C6E0)), vmlsq_f16(v79, v79, vqtbl1q_s8(v77, xmmword_18439C6E0))), vmulq_f16(v82, v24)));
      v76[1] = vrev16q_s8(vmlaq_f16(v80, vsubq_f16(vmlsq_f16(v78, v78, vqtbl1q_s8(v80, xmmword_18439C6E0)), vmlsq_f16(v80, v80, vqtbl1q_s8(v78, xmmword_18439C6E0))), v15));
      a10 += v18;
      v57 -= 4;
      if (v57 < 4)
      {
        break;
      }

      v58 = *a10;
      v75 += v21;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v75);
        a3 = (a3 + v75);
        goto LABEL_82;
      }
    }

    result = (result + v21 + v75);
    a3 = (a3 + v21 + v75);
LABEL_85:
    for (j = a12 - v56 + v57; j; --j)
    {
      if (*a10)
      {
        v84 = vrev16_s8(*result->i8);
        v85 = vrev16_s8(*a3->i8);
        *result->i8 = vrev16_s8(vmla_f16(v84, vsub_f16(vmls_lane_f16(v85, v85, v84, 3), vmls_lane_f16(v84, v84, v85, 3)), vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v25)));
      }

      v86 = &a3->i8[8 * a14];
      a10 += a14;
      if (v86 >= a8)
      {
        v87 = v19;
      }

      else
      {
        v87 = 0;
      }

      a3 = &v86[8 * v87];
      result = (result + v22);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v88 = a5 + 8 * a4;
    if (v88 >= a9)
    {
      v89 = v20;
    }

    else
    {
      v89 = 0;
    }

    v90 = (v88 + 8 * v89);
    v91 = a8 + 8 * v89 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v90;
      a8 = v91;
      a5 = v90;
    }

    v55 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v55 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float16x8_t *composite_pixelmask<(CGCompositeOperation)10,_rgbaf16_t>(float16x8_t *result, uint64_t a2, float16x8_t *a3, uint64_t a4, float16x8_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  v18 = 4 * a14;
  v19 = -a7;
  v20 = -(a6 * a4);
  v21 = 8 * v18;
  v22 = 8 * a14;
  v23.i64[0] = -1;
  v23.i64[1] = -1;
  v24 = vdupq_n_s16(0x1C04u);
  v25 = vdup_n_s16(0x1C04u);
  if ((a15 & 0x30) != 0)
  {
    while (1)
    {
      v26 = (a8 - a3) >> 3;
      if (v26 >= a12)
      {
        v26 = a12;
      }

      v27 = v26;
      if (v26 < 4)
      {
        goto LABEL_36;
      }

      while (1)
      {
        v28 = *a10;
        if (*a10 == -1)
        {
          v35 = &a10[v27];
          v36 = a10;
          do
          {
            v37 = v36++;
          }

          while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, v23)) & 0x80) != 0);
          do
          {
            v38 = v37;
            v37 = (v37 + 4);
          }

          while (v37 <= v35 && v38->i32[0] == -1);
          if (v38 < v35)
          {
            while (v38->u8[0] == 255)
            {
              v38 = (v38 + 1);
              if (v38 >= v35)
              {
                v38 = &a10[v27];
                break;
              }
            }
          }

          v39 = v38 - a10;
          v40 = v38 - a10;
          do
          {
            v41 = a3[1];
            v15 = vqtbl1q_s8(v41, xmmword_18439C6E0);
            v42 = vaddq_f16(result[1], vmlsq_f16(vmlsq_f16(v41, v41, vqtbl1q_s8(result[1], xmmword_18439C6E0)), result[1], v15));
            *result = vaddq_f16(*result, vmlsq_f16(vmlsq_f16(*a3, *a3, vqtbl1q_s8(*result, xmmword_18439C6E0)), *result, vqtbl1q_s8(*a3, xmmword_18439C6E0)));
            result[1] = v42;
            a10 += v18;
            v40 -= 4;
            result = (result + v21);
            a3 = (a3 + v21);
          }

          while (v40 > 3);
          v27 = v27 - v39 + v40;
          goto LABEL_33;
        }

        if (v28)
        {
          break;
        }

        v29 = &a10[v27];
        v30 = a10;
        do
        {
          v31 = v30++;
        }

        while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
        do
        {
          v32 = v31;
          v31 = (v31 + 4);
        }

        while (v31 <= v29 && !v32->i32[0]);
        if (v32 < v29)
        {
          while (!v32->i8[0])
          {
            v32 = (v32 + 1);
            if (v32 >= v29)
            {
              v32 = &a10[v27];
              break;
            }
          }
        }

        v33 = v32 - a10;
        v34 = (v32 - a10) * a14;
        a3 = (a3 + 8 * v34);
        result = (result + 8 * v34);
        a10 += v34;
        v27 -= v33;
LABEL_33:
        if (v27 <= 3)
        {
          goto LABEL_36;
        }
      }

      v43 = 0;
      while (1)
      {
        v44 = (result + v43);
        v15.i32[0] = v28;
        v45 = vqtbl1q_s8(v15, xmmword_18439C7A0);
        v46 = vcvtq_f16_u16(vmovl_u8(*v45.i8));
        v15 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v45)), v24);
        v47 = vmlaq_f16(*(&result[1] + v43), v15, vmlsq_f16(vmlsq_f16(*(&a3[1] + v43), *(&a3[1] + v43), vqtbl1q_s8(*(&result[1] + v43), xmmword_18439C6E0)), *(&result[1] + v43), vqtbl1q_s8(*(&a3[1] + v43), xmmword_18439C6E0)));
        *v44 = vmlaq_f16(*(result + v43), vmulq_f16(v46, v24), vmlsq_f16(vmlsq_f16(*(a3 + v43), *(a3 + v43), vqtbl1q_s8(*(result + v43), xmmword_18439C6E0)), *(result + v43), vqtbl1q_s8(*(a3 + v43), xmmword_18439C6E0)));
        v44[1] = v47;
        a10 += v18;
        v27 -= 4;
        if (v27 < 4)
        {
          break;
        }

        v28 = *a10;
        v43 += v21;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v43);
          a3 = (a3 + v43);
          goto LABEL_33;
        }
      }

      result = (result + v21 + v43);
      a3 = (a3 + v21 + v43);
LABEL_36:
      for (i = a12 - v26 + v27; i; --i)
      {
        if (*a10)
        {
          *result->i8 = vmla_f16(*result->i8, vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v25), vmls_lane_f16(vmls_lane_f16(*a3->i8, *a3->i8, *result->i8, 3), *result->i8, *a3->i8, 3));
        }

        v49 = &a3->i8[8 * a14];
        a10 += a14;
        if (v49 >= a8)
        {
          v50 = v19;
        }

        else
        {
          v50 = 0;
        }

        a3 = &v49[8 * v50];
        result = (result + v22);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v51 = a5 + 8 * a4;
      if (v51 >= a9)
      {
        v52 = v20;
      }

      else
      {
        v52 = 0;
      }

      v53 = (v51 + 8 * v52);
      v54 = a8 + 8 * v52 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v53;
        a8 = v54;
        a5 = v53;
      }

      v55 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v55 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v56 = (a8 - a3) >> 3;
    if (v56 >= a12)
    {
      v56 = a12;
    }

    v57 = v56;
    if (v56 < 4)
    {
      goto LABEL_85;
    }

    while (1)
    {
      v58 = *a10;
      if (*a10 == -1)
      {
        v65 = &a10[v57];
        v66 = a10;
        do
        {
          v67 = v66++;
        }

        while (v66 <= v65 && (vminvq_u8(vceqq_s8(*v67, v23)) & 0x80) != 0);
        do
        {
          v68 = v67;
          v67 = (v67 + 4);
        }

        while (v67 <= v65 && v68->i32[0] == -1);
        if (v68 < v65)
        {
          while (v68->u8[0] == 255)
          {
            v68 = (v68 + 1);
            if (v68 >= v65)
            {
              v68 = &a10[v57];
              break;
            }
          }
        }

        v69 = v68 - a10;
        v70 = v68 - a10;
        do
        {
          v71 = vrev16q_s8(*a3);
          v72 = vrev16q_s8(a3[1]);
          v73 = vrev16q_s8(*result);
          v74 = vrev16q_s8(result[1]);
          v15 = vqtbl1q_s8(v72, xmmword_18439C6E0);
          *result = vrev16q_s8(vaddq_f16(vmlsq_f16(vmlsq_f16(v71, v71, vqtbl1q_s8(v73, xmmword_18439C6E0)), v73, vqtbl1q_s8(v71, xmmword_18439C6E0)), v73));
          result[1] = vrev16q_s8(vaddq_f16(vmlsq_f16(vmlsq_f16(v72, v72, vqtbl1q_s8(v74, xmmword_18439C6E0)), v74, v15), v74));
          a10 += v18;
          v70 -= 4;
          result = (result + v21);
          a3 = (a3 + v21);
        }

        while (v70 > 3);
        v57 = v57 - v69 + v70;
        goto LABEL_82;
      }

      if (v58)
      {
        break;
      }

      v59 = &a10[v57];
      v60 = a10;
      do
      {
        v61 = v60++;
      }

      while (v60 <= v59 && (vminvq_u8(vceqzq_s8(*v61)) & 0x80) != 0);
      do
      {
        v62 = v61;
        v61 = (v61 + 4);
      }

      while (v61 <= v59 && !v62->i32[0]);
      if (v62 < v59)
      {
        while (!v62->i8[0])
        {
          v62 = (v62 + 1);
          if (v62 >= v59)
          {
            v62 = &a10[v57];
            break;
          }
        }
      }

      v63 = v62 - a10;
      v64 = (v62 - a10) * a14;
      a3 = (a3 + 8 * v64);
      result = (result + 8 * v64);
      a10 += v64;
      v57 -= v63;
LABEL_82:
      if (v57 <= 3)
      {
        goto LABEL_85;
      }
    }

    v75 = 0;
    while (1)
    {
      v76 = &result->i8[v75];
      v77 = vrev16q_s8(*(a3 + v75));
      v78 = vrev16q_s8(*(&a3[1] + v75));
      v79 = vrev16q_s8(*(result + v75));
      v80 = vrev16q_s8(*(&result[1] + v75));
      v15.i32[0] = v58;
      v81 = vqtbl1q_s8(v15, xmmword_18439C7A0);
      v82 = vcvtq_f16_u16(vmovl_u8(*v81.i8));
      v15 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v81)), v24);
      *v76 = vrev16q_s8(vmlaq_f16(v79, vmulq_f16(v82, v24), vmlsq_f16(vmlsq_f16(v77, v77, vqtbl1q_s8(v79, xmmword_18439C6E0)), v79, vqtbl1q_s8(v77, xmmword_18439C6E0))));
      v76[1] = vrev16q_s8(vmlaq_f16(v80, v15, vmlsq_f16(vmlsq_f16(v78, v78, vqtbl1q_s8(v80, xmmword_18439C6E0)), v80, vqtbl1q_s8(v78, xmmword_18439C6E0))));
      a10 += v18;
      v57 -= 4;
      if (v57 < 4)
      {
        break;
      }

      v58 = *a10;
      v75 += v21;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v75);
        a3 = (a3 + v75);
        goto LABEL_82;
      }
    }

    result = (result + v21 + v75);
    a3 = (a3 + v21 + v75);
LABEL_85:
    for (j = a12 - v56 + v57; j; --j)
    {
      if (*a10)
      {
        v84 = vrev16_s8(*result->i8);
        v85 = vrev16_s8(*a3->i8);
        *result->i8 = vrev16_s8(vmla_f16(v84, vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v25), vmls_lane_f16(vmls_lane_f16(v85, v85, v84, 3), v84, v85, 3)));
      }

      v86 = &a3->i8[8 * a14];
      a10 += a14;
      if (v86 >= a8)
      {
        v87 = v19;
      }

      else
      {
        v87 = 0;
      }

      a3 = &v86[8 * v87];
      result = (result + v22);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v88 = a5 + 8 * a4;
    if (v88 >= a9)
    {
      v89 = v20;
    }

    else
    {
      v89 = 0;
    }

    v90 = (v88 + 8 * v89);
    v91 = a8 + 8 * v89 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v90;
      a8 = v91;
      a5 = v90;
    }

    v55 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v55 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)11,_rgbaf16_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21 = vdupq_n_s16(v20);
  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vmvnq_s8(vandq_s8(v21, v22));
  v24 = vandq_s8(v21, xmmword_18439CFA0);
  if (a15)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s16(v25);
  v27 = vandq_s8(v26, v22);
  v28 = vmvnq_s8(v27);
  v29 = vandq_s8(v26, xmmword_18439CFA0);
  v30 = 4 * a14;
  v34 = 0;
  v31 = 0;
  v31.i16[3] = v20;
  v32 = vmvn_s8(v31);
  v33 = vand_s8(*v21.i8, 0x3C00000000000000);
  v34.i16[3] = v25;
  v35 = -(a6 * a4);
  v36 = 8 * v30;
  v37 = 8 * a14;
  v38.i64[0] = 0x3C003C003C003C00;
  v38.i64[1] = 0x3C003C003C003C00;
  v39.i64[0] = -1;
  v39.i64[1] = -1;
  v40 = vdupq_n_s16(0x1C04u);
  if ((a17 & 0x30) != 0)
  {
    while (1)
    {
      v41 = (a8 - a3) >> 3;
      if (v41 >= a12)
      {
        v41 = a12;
      }

      v42 = v41;
      if (v41 < 4)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v43 = *a10;
        if (*a10 == -1)
        {
          v50 = &a10[v42];
          v51 = a10;
          do
          {
            v52 = v51++;
          }

          while (v51 <= v50 && (vminvq_u8(vceqq_s8(*v52, v39)) & 0x80) != 0);
          do
          {
            v53 = v52;
            v52 = (v52 + 4);
          }

          while (v52 <= v50 && v53->i32[0] == -1);
          if (v53 < v50)
          {
            while (v53->u8[0] == 255)
            {
              v53 = (v53 + 1);
              if (v53 >= v50)
              {
                v53 = &a10[v42];
                break;
              }
            }
          }

          v54 = v53 - a10;
          v55 = v53 - a10;
          do
          {
            v56 = vorrq_s8(vandq_s8(a3[1], v23), v24);
            v57 = vorrq_s8(vandq_s8(*a3, v23), v24);
            v58 = vorrq_s8(vandq_s8(result[1], v28), v29);
            v59 = vorrq_s8(vandq_s8(*result, v28), v29);
            v17 = vqtbl1q_s8(v57, xmmword_18439C6E0);
            v60 = vqtbl1q_s8(v56, xmmword_18439C6E0);
            v61 = vqtbl1q_s8(v59, xmmword_18439C6E0);
            v62 = vqtbl1q_s8(v58, xmmword_18439C6E0);
            *result = vsubq_f16(vminnmq_f16(vaddq_f16(v17, v61), v38), vaddq_f16(vsubq_f16(v17, v57), vsubq_f16(v61, v59)));
            result[1] = vsubq_f16(vminnmq_f16(vaddq_f16(v60, v62), v38), vaddq_f16(vsubq_f16(v60, v56), vsubq_f16(v62, v58)));
            a10 += v30;
            v55 -= 4;
            result = (result + v36);
            a3 = (a3 + v36);
          }

          while (v55 > 3);
          v42 = v42 - v54 + v55;
          goto LABEL_39;
        }

        if (v43)
        {
          break;
        }

        v44 = &a10[v42];
        v45 = a10;
        do
        {
          v46 = v45++;
        }

        while (v45 <= v44 && (vminvq_u8(vceqzq_s8(*v46)) & 0x80) != 0);
        do
        {
          v47 = v46;
          v46 = (v46 + 4);
        }

        while (v46 <= v44 && !v47->i32[0]);
        if (v47 < v44)
        {
          while (!v47->i8[0])
          {
            v47 = (v47 + 1);
            if (v47 >= v44)
            {
              v47 = &a10[v42];
              break;
            }
          }
        }

        v48 = v47 - a10;
        v49 = (v47 - a10) * a14;
        a3 = (a3 + 8 * v49);
        result = (result + 8 * v49);
        a10 += v49;
        v42 -= v48;
LABEL_39:
        if (v42 <= 3)
        {
          goto LABEL_42;
        }
      }

      v63 = 0;
      while (1)
      {
        v64 = (result + v63);
        v17.i32[0] = v43;
        v65 = vqtbl1q_s8(v17, xmmword_18439C7A0);
        v66 = vcvtq_f16_u16(vmovl_high_u8(v65));
        v17 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v65.i8)), v40);
        v67 = vmulq_f16(v66, v40);
        v68 = vorrq_s8(vandq_s8(*(&a3[1] + v63), v23), v24);
        v69 = vorrq_s8(vandq_s8(*(a3 + v63), v23), v24);
        v70 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v67)), v38, *(&result[1] + v63));
        v71 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v17)), v38, *(result + v63));
        v72 = vqtbl1q_s8(v69, xmmword_18439C6E0);
        v73 = vqtbl1q_s8(v68, xmmword_18439C6E0);
        v74 = vqtbl1q_s8(v71, xmmword_18439C6E0);
        v75 = vqtbl1q_s8(v70, xmmword_18439C6E0);
        *v64 = vbslq_s8(vceqzq_f16(v17), v71, vsubq_f16(vminnmq_f16(vmlaq_f16(v74, v17, v72), v38), vmlaq_f16(vsubq_f16(v74, v71), v17, vsubq_f16(v72, v69))));
        v64[1] = vbslq_s8(vceqzq_f16(v67), v70, vsubq_f16(vminnmq_f16(vmlaq_f16(v75, v67, v73), v38), vmlaq_f16(vsubq_f16(v75, v70), v67, vsubq_f16(v73, v68))));
        a10 += v30;
        v42 -= 4;
        if (v42 < 4)
        {
          break;
        }

        v43 = *a10;
        v63 += v36;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v63);
          a3 = (a3 + v63);
          goto LABEL_39;
        }
      }

      result = (result + v36 + v63);
      a3 = (a3 + v36 + v63);
LABEL_42:
      for (i = a12 - v41 + v42; i; --i)
      {
        if (*a10)
        {
          v77 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
          v78 = vorr_s8(vand_s8(*a3->i8, v32), v33);
          v79 = vbsl_s8(vand_s8(v34, vcgtz_f16(v77)), 0x3C003C003C003C00, *result->i8);
          v80 = vdup_lane_s16(v79, 3);
          v81 = vsub_f16(v80, v79);
          *v17.i8 = vmla_lane_f16(v80, v77, v78, 3);
          *result->i8 = vbsl_s8(vceqz_f16(v77), v79, vsub_f16(vminnm_f16(*v17.i8, 0x3C003C003C003C00), vmla_f16(v81, v77, vsub_f16(vdup_lane_s16(v78, 3), v78))));
        }

        v82 = &a3->i8[8 * a14];
        a10 += a14;
        if (v82 >= a8)
        {
          v83 = -a7;
        }

        else
        {
          v83 = 0;
        }

        a3 = &v82[8 * v83];
        result = (result + v37);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v84 = &a5->i64[a4];
      if (v84 >= a9)
      {
        v85 = v35;
      }

      else
      {
        v85 = 0;
      }

      v86 = &v84[v85];
      v87 = a8 + 8 * v85 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v86;
        a8 = v87;
        a5 = v86;
      }

      v88 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v88 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v89 = (a8 - a3) >> 3;
    if (v89 >= a12)
    {
      v89 = a12;
    }

    v90 = v89;
    if (v89 < 4)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v91 = *a10;
      if (*a10 == -1)
      {
        v98 = &a10[v90];
        v99 = a10;
        do
        {
          v100 = v99++;
        }

        while (v99 <= v98 && (vminvq_u8(vceqq_s8(*v100, v39)) & 0x80) != 0);
        do
        {
          v101 = v100;
          v100 = (v100 + 4);
        }

        while (v100 <= v98 && v101->i32[0] == -1);
        if (v101 < v98)
        {
          while (v101->u8[0] == 255)
          {
            v101 = (v101 + 1);
            if (v101 >= v98)
            {
              v101 = &a10[v90];
              break;
            }
          }
        }

        v102 = v101 - a10;
        v103 = v101 - a10;
        do
        {
          v104 = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v23), v24);
          v105 = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v23), v24);
          v106 = vorrq_s8(vandq_s8(vrev16q_s8(result[1]), v28), v29);
          v107 = vorrq_s8(vandq_s8(vrev16q_s8(*result), v28), v29);
          v17 = vqtbl1q_s8(v105, xmmword_18439C6E0);
          v108 = vqtbl1q_s8(v104, xmmword_18439C6E0);
          v109 = vqtbl1q_s8(v107, xmmword_18439C6E0);
          v110 = vqtbl1q_s8(v106, xmmword_18439C6E0);
          *result = vrev16q_s8(vsubq_f16(vminnmq_f16(vaddq_f16(v17, v109), v38), vaddq_f16(vsubq_f16(v17, v105), vsubq_f16(v109, v107))));
          result[1] = vrev16q_s8(vsubq_f16(vminnmq_f16(vaddq_f16(v108, v110), v38), vaddq_f16(vsubq_f16(v108, v104), vsubq_f16(v110, v106))));
          a10 += v30;
          v103 -= 4;
          result = (result + v36);
          a3 = (a3 + v36);
        }

        while (v103 > 3);
        v90 = v90 - v102 + v103;
        goto LABEL_88;
      }

      if (v91)
      {
        break;
      }

      v92 = &a10[v90];
      v93 = a10;
      do
      {
        v94 = v93++;
      }

      while (v93 <= v92 && (vminvq_u8(vceqzq_s8(*v94)) & 0x80) != 0);
      do
      {
        v95 = v94;
        v94 = (v94 + 4);
      }

      while (v94 <= v92 && !v95->i32[0]);
      if (v95 < v92)
      {
        while (!v95->i8[0])
        {
          v95 = (v95 + 1);
          if (v95 >= v92)
          {
            v95 = &a10[v90];
            break;
          }
        }
      }

      v96 = v95 - a10;
      v97 = (v95 - a10) * a14;
      a3 = (a3 + 8 * v97);
      result = (result + 8 * v97);
      a10 += v97;
      v90 -= v96;
LABEL_88:
      if (v90 <= 3)
      {
        goto LABEL_91;
      }
    }

    v111 = 0;
    while (1)
    {
      v112 = (result + v111);
      v17.i32[0] = v91;
      v113 = vqtbl1q_s8(v17, xmmword_18439C7A0);
      v114 = vcvtq_f16_u16(vmovl_high_u8(v113));
      v17 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v113.i8)), v40);
      v115 = vmulq_f16(v114, v40);
      v116 = vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v111)), v23), v24);
      v117 = vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v111)), v23), v24);
      v118 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v115)), v38, vrev16q_s8(*(&result[1] + v111)));
      v119 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v17)), v38, vrev16q_s8(*(result + v111)));
      v120 = vqtbl1q_s8(v117, xmmword_18439C6E0);
      v121 = vqtbl1q_s8(v116, xmmword_18439C6E0);
      v122 = vqtbl1q_s8(v119, xmmword_18439C6E0);
      v123 = vqtbl1q_s8(v118, xmmword_18439C6E0);
      *v112 = vrev16q_s8(vbslq_s8(vceqzq_f16(v17), v119, vsubq_f16(vminnmq_f16(vmlaq_f16(v122, v17, v120), v38), vmlaq_f16(vsubq_f16(v122, v119), v17, vsubq_f16(v120, v117)))));
      v112[1] = vrev16q_s8(vbslq_s8(vceqzq_f16(v115), v118, vsubq_f16(vminnmq_f16(vmlaq_f16(v123, v115, v121), v38), vmlaq_f16(vsubq_f16(v123, v118), v115, vsubq_f16(v121, v116)))));
      a10 += v30;
      v90 -= 4;
      if (v90 < 4)
      {
        break;
      }

      v91 = *a10;
      v111 += v36;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v111);
        a3 = (a3 + v111);
        goto LABEL_88;
      }
    }

    result = (result + v36 + v111);
    a3 = (a3 + v36 + v111);
LABEL_91:
    for (j = a12 - v89 + v90; j; --j)
    {
      if (*a10)
      {
        v125 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
        v126 = vorr_s8(vand_s8(vrev16_s8(*a3->i8), v32), v33);
        v127 = vbsl_s8(vand_s8(v34, vcgtz_f16(v125)), 0x3C003C003C003C00, vrev16_s8(*result->i8));
        v128 = vdup_lane_s16(v127, 3);
        v129 = vsub_f16(v128, v127);
        *v17.i8 = vmla_lane_f16(v128, v125, v126, 3);
        *result->i8 = vrev16_s8(vbsl_s8(vceqz_f16(v125), v127, vsub_f16(vminnm_f16(*v17.i8, 0x3C003C003C003C00), vmla_f16(v129, v125, vsub_f16(vdup_lane_s16(v126, 3), v126)))));
      }

      v130 = &a3->i8[8 * a14];
      a10 += a14;
      if (v130 >= a8)
      {
        v131 = -a7;
      }

      else
      {
        v131 = 0;
      }

      a3 = &v130[8 * v131];
      result = (result + v37);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v132 = &a5->i64[a4];
    if (v132 >= a9)
    {
      v133 = v35;
    }

    else
    {
      v133 = 0;
    }

    v134 = &v132[v133];
    v135 = a8 + 8 * v133 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v134;
      a8 = v135;
      a5 = v134;
    }

    v88 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v88 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}