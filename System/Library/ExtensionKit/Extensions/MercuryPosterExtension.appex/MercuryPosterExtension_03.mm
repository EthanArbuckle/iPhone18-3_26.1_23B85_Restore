float sub_10003A960(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -5.0) * a2) + 5.0;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10003A980(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -3.5) * a2) + 3.5) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.78) * a2) + 0.78) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.6) * a2) + 1.6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10003AA28(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.41) * a2) + 0.41;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10003AA58(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.7) * a2) + 1.7) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.4) * a2) + 2.4) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.53) * a2) + 0.53;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003AB10(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -4.0) * a2) + 4.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.0) * a2) + 2.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.2) * a2) + 1.2;
    *(result + 108) = ((*(result + 108) + -1.2) * a2) + 1.2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10003ABBC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.57) * a2) + 0.57;
  *(a1 + 100) = result;
  return result;
}

float sub_10003ABEC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -1.3) * a2) + 1.3;
  *(a1 + 100) = result;
  return result;
}

float sub_10003AC1C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.49) * a2) + 0.49;
  *(a1 + 100) = result;
  return result;
}

void sub_10003AC4C(uint64_t a1, float a2)
{
  if (*(a1 + 12) == 1)
  {
    v3 = ((*(a1 + 8) + -1.0) * a2) + 1.0;
    *a1 = COERCE_UNSIGNED_INT(((*a1 + -1.2) * a2) + 1.2) | (COERCE_UNSIGNED_INT(((*(a1 + 4) + -1.1) * a2) + 1.1) << 32);
    *(a1 + 8) = v3;
    *(a1 + 100) = ((*(a1 + 100) + -0.38) * a2) + 0.38;
    sub_1000BA464(*(a1 + 80), *(a1 + 88), *(a1 + 96), 0x3F6AEAEB00000000, 1065353216, 0, a2);
    *(a1 + 80) = v4;
    *(a1 + 88) = v5;
    *(a1 + 96) = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003AD48(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -0.83) * a2) + 0.83) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.2) * a2) + 3.2) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.9) * a2) + 2.9;
    *(result + 108) = ((*(result + 108) + -0.49) * a2) + 0.49;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003AE2C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -3.0) * a2) + 3.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -4.4) * a2) + 4.4) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.36) * a2) + 0.36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float32x2_t sub_10003AED4(float a1)
{
  v1 = a1;
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v2 = a1 * 3.1416;
  if (v1 >= 1.0)
  {
    v2 = 3.1416;
  }

  return vmul_n_f32(vadd_f32(vmul_n_f32(0x3E99999A3EF0A3D8, fminf(v1 / 0.875, 1.0)), 0x3F3333333F07AE14), ((0.5 - (cosf(v2) * 0.5)) * 0.916) + 0.084);
}

double sub_10003AF90()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v435 = unk_10013AA60;
  v436 = xmmword_10013AA50;
  v434 = qword_10013AA70;
  v0 = dword_10013AA78;
  v432 = unk_10013AA90;
  v433 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v2 = dword_10013AAA8;
  v3 = qword_10013AAC0;
  v430 = xmmword_10013AAD0;
  v431 = xmmword_10013AAB0;
  v428 = unk_10013AAE8;
  v429 = qword_10013AAE0;
  v427 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000EF780;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v5 = vmulq_f32(xmmword_10013DCA0, 0);
  v489 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v483 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v5), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v456 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v5, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v421 = vdupq_n_s32(0x3FDC28F5u);
  v399 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFB47AE1)), v421, *algn_10013DCB0), 0, xmmword_10013DCC0));
  sub_10001358C(v492, 1.9373, xmmword_1000EC910);
  v6 = sub_100013568(v492);
  v488 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v489, v6.n128_f32[0]), v483, v6.n128_u64[0], 1), v456, v6, 2), v399, v6, 3);
  v473 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v489, v7.f32[0]), v483, *v7.f32, 1), v456, v7, 2), v399, v7, 3);
  v437 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v489, v8.f32[0]), v483, *v8.f32, 1), v456, v8, 2), v399, v8, 3);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v489, v9.f32[0]), v483, *v9.f32, 1), v456, v9, 2), v399, v9, 3);
  sub_10001358C(v493, -2.3911, xmmword_1000EC8E0);
  v10 = sub_100013568(v493);
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v10.n128_f32[0]), v473, v10.n128_u64[0], 1), v437, v10, 2), v373, v10, 3);
  v457 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v12.f32[0]), v473, *v12.f32, 1), v437, v12, 2), v373, v12, 3);
  v400 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v13.f32[0]), v473, *v13.f32, 1), v437, v13, 2), v373, v13, 3);
  v474 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v14.f32[0]), v473, *v14.f32, 1), v437, v14, 2), v373, v14, 3);
  v484 = v11;
  sub_10001358C(v494, 0.034907, xmmword_1000EC920);
  v15 = sub_100013568(v494);
  v544 = 1;
  *(v4 + 64) = 0x408666663F59999ALL;
  *(v4 + 72) = 1052266988;
  *(v4 + 76) = 1;
  *(v4 + 77) = v549;
  *(v4 + 79) = v550;
  *(v4 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v15.n128_f32[0]), v457, v15.n128_u64[0], 1), v400, v15, 2), v474, v15, 3);
  *(v4 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v16.f32[0]), v457, *v16.f32, 1), v400, v16, 2), v474, v16, 3);
  *(v4 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v17.f32[0]), v457, *v17.f32, 1), v400, v17, 2), v474, v17, 3);
  *(v4 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v18.f32[0]), v457, *v18.f32, 1), v400, v18, 2), v474, v18, 3);
  *(v4 + 144) = xmmword_1000EF790;
  *(v4 + 160) = 0;
  v19 = v547;
  *(v4 + 163) = v548;
  *(v4 + 161) = v19;
  *(v4 + 164) = 1108869120;
  *(v4 + 168) = 0;
  *(v4 + 169) = v545;
  *(v4 + 171) = v546;
  *(v4 + 172) = 1067869798;
  *(v4 + 192) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 200) = v544;
  *(v4 + 201) = 0;
  *(v4 + 203) = 1;
  *(v4 + 208) = 0u;
  *(v4 + 224) = sub_10003E3EC;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0x3F80000000000000;
  *(v4 + 256) = xmmword_1000EF5A0;
  *(v4 + 272) = 9;
  v20 = vmulq_f32(xmmword_10013DCA0, 0);
  v458 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v401 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v20), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v374 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v20, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v326 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEDC28F5)), vdupq_n_s32(0xBEA3D70A), *algn_10013DCB0), vdupq_n_s32(0xBEF0A3D7), xmmword_10013DCC0));
  sub_10001358C(v495, 0.0, xmmword_1000EC910);
  v21 = sub_100013568(v495);
  v475 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v21.n128_f32[0]), v401, v21.n128_u64[0], 1), v374, v21, 2), v326, v21, 3);
  v438 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v22.f32[0]), v401, *v22.f32, 1), v374, v22, 2), v326, v22, 3);
  v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v23.f32[0]), v401, *v23.f32, 1), v374, v23, 2), v326, v23, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v24.f32[0]), v401, *v24.f32, 1), v374, v24, 2), v326, v24, 3);
  sub_10001358C(v496, 0.0, xmmword_1000EC8E0);
  v25 = sub_100013568(v496);
  v402 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v475, v26.f32[0]), v438, *v26.f32, 1), v352, v26, 2), v327, v26, 3);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v475, v27.f32[0]), v438, *v27.f32, 1), v352, v27, 2), v327, v27, 3);
  v459 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v475, v25.n128_f32[0]), v438, v25.n128_u64[0], 1), v352, v25, 2), v327, v25, 3);
  v476 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v475, v28.f32[0]), v438, *v28.f32, 1), v352, v28, 2), v327, v28, 3);
  sub_10001358C(v497, 0.0, xmmword_1000EC920);
  v29 = sub_100013568(v497);
  v551 = 1;
  *(v4 + 288) = 0x403333334039999ALL;
  *(v4 + 296) = 1056964608;
  *(v4 + 300) = 1;
  *(v4 + 301) = v556;
  *(v4 + 303) = v557;
  *(v4 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v459, v29.n128_f32[0]), v402, v29.n128_u64[0], 1), v375, v29, 2), v476, v29, 3);
  *(v4 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v459, v30.f32[0]), v402, *v30.f32, 1), v375, v30, 2), v476, v30, 3);
  *(v4 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v459, v31.f32[0]), v402, *v31.f32, 1), v375, v31, 2), v476, v31, 3);
  *(v4 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v459, v32.f32[0]), v402, *v32.f32, 1), v375, v32, 2), v476, v32, 3);
  *(v4 + 368) = xmmword_1000EF7A0;
  *(v4 + 384) = 0;
  v33 = v554;
  *(v4 + 387) = v555;
  *(v4 + 385) = v33;
  *(v4 + 388) = 1077936128;
  *(v4 + 392) = 9;
  *(v4 + 393) = v552;
  *(v4 + 395) = v553;
  *(v4 + 396) = 1065353216;
  *(v4 + 416) = 0;
  *(v4 + 400) = 0u;
  *(v4 + 424) = v551;
  *(v4 + 425) = 0;
  *(v4 + 427) = 0;
  *(v4 + 432) = 0u;
  *(v4 + 448) = sub_10003E4C0;
  *(v4 + 456) = 0;
  *(v4 + 464) = 0x3F80000000000000;
  *(v4 + 480) = xmmword_1000EF5A0;
  *(v4 + 496) = 2;
  v34 = vmulq_f32(xmmword_10013DCA0, 0);
  v460 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v403 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v34), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v376 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v34, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v328 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBD4CCCCC)), vdupq_n_s32(0xBDB851EB), *algn_10013DCB0), vdupq_n_s32(0x3F199999u), xmmword_10013DCC0));
  sub_10001358C(v498, 4.7124, xmmword_1000EC910);
  v35 = sub_100013568(v498);
  v477 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v35.n128_f32[0]), v403, v35.n128_u64[0], 1), v376, v35, 2), v328, v35, 3);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v36.f32[0]), v403, *v36.f32, 1), v376, v36, 2), v328, v36, 3);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v37.f32[0]), v403, *v37.f32, 1), v376, v37, 2), v328, v37, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v38.f32[0]), v403, *v38.f32, 1), v376, v38, 2), v328, v38, 3);
  sub_10001358C(v499, 1.0036, xmmword_1000EC8E0);
  v39 = sub_100013568(v499);
  v404 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v40.f32[0]), v439, *v40.f32, 1), v353, v40, 2), v329, v40, 3);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v41.f32[0]), v439, *v41.f32, 1), v353, v41, 2), v329, v41, 3);
  v461 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v39.n128_f32[0]), v439, v39.n128_u64[0], 1), v353, v39, 2), v329, v39, 3);
  v478 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v42.f32[0]), v439, *v42.f32, 1), v353, v42, 2), v329, v42, 3);
  sub_10001358C(v500, -1.5708, xmmword_1000EC920);
  v43 = sub_100013568(v500);
  v558 = 1;
  *(v4 + 512) = 0x3FA666663F570A3DLL;
  *(v4 + 520) = 1056964608;
  *(v4 + 524) = 1;
  *(v4 + 525) = v563;
  *(v4 + 527) = v564;
  *(v4 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v43.n128_f32[0]), v404, v43.n128_u64[0], 1), v377, v43, 2), v478, v43, 3);
  *(v4 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v44.f32[0]), v404, *v44.f32, 1), v377, v44, 2), v478, v44, 3);
  *(v4 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v45.f32[0]), v404, *v45.f32, 1), v377, v45, 2), v478, v45, 3);
  *(v4 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v46.f32[0]), v404, *v46.f32, 1), v377, v46, 2), v478, v46, 3);
  *(v4 + 592) = xmmword_1000EC900;
  *(v4 + 608) = 0;
  v47 = v561;
  *(v4 + 611) = v562;
  *(v4 + 609) = v47;
  *(v4 + 612) = 1088421888;
  *(v4 + 616) = 13;
  *(v4 + 617) = v559;
  *(v4 + 619) = v560;
  *(v4 + 620) = 1065353216;
  *(v4 + 640) = 0;
  *(v4 + 624) = 0u;
  *(v4 + 648) = v558;
  *(v4 + 649) = 0;
  *(v4 + 651) = 0;
  *(v4 + 656) = 0u;
  *(v4 + 672) = sub_10003E4F0;
  *(v4 + 680) = 0;
  *(v4 + 688) = 0x3E6A0EA100000000;
  *(v4 + 704) = xmmword_1000EF5A0;
  *(v4 + 720) = 1;
  v48 = vmulq_f32(xmmword_10013DCA0, 0);
  v440 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v378 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v48), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v354 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v48, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v307 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF428F5C)), vdupq_n_s32(0x3F9851EBu), *algn_10013DCB0), vdupq_n_s32(0xBE947AE1), xmmword_10013DCC0));
  sub_10001358C(v501, 2.0944, xmmword_1000EC910);
  v49 = sub_100013568(v501);
  v479 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v49.n128_f32[0]), v378, v49.n128_u64[0], 1), v354, v49, 2), v307, v49, 3);
  v405 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v50.f32[0]), v378, *v50.f32, 1), v354, v50, 2), v307, v50, 3);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v51.f32[0]), v378, *v51.f32, 1), v354, v51, 2), v307, v51, 3);
  v308 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v52.f32[0]), v378, *v52.f32, 1), v354, v52, 2), v307, v52, 3);
  sub_10001358C(v502, -2.618, xmmword_1000EC8E0);
  v53 = sub_100013568(v502);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v53.n128_f32[0]), v405, v53.n128_u64[0], 1), v330, v53, 2), v308, v53, 3);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v54.f32[0]), v405, *v54.f32, 1), v330, v54, 2), v308, v54, 3);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v55.f32[0]), v405, *v55.f32, 1), v330, v55, 2), v308, v55, 3);
  v480 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v56.f32[0]), v405, *v56.f32, 1), v330, v56, 2), v308, v56, 3);
  sub_10001358C(v503, 0.087266, xmmword_1000EC920);
  v57 = sub_100013568(v503);
  v565 = 1;
  *(v4 + 736) = 0x402CCCCD40066666;
  *(v4 + 744) = 1056964608;
  *(v4 + 748) = 1;
  *(v4 + 749) = v570;
  *(v4 + 751) = v571;
  *(v4 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v57.n128_f32[0]), v379, v57.n128_u64[0], 1), v355, v57, 2), v480, v57, 3);
  *(v4 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v58.f32[0]), v379, *v58.f32, 1), v355, v58, 2), v480, v58, 3);
  *(v4 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v59.f32[0]), v379, *v59.f32, 1), v355, v59, 2), v480, v59, 3);
  *(v4 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v60.f32[0]), v379, *v60.f32, 1), v355, v60, 2), v480, v60, 3);
  *(v4 + 816) = xmmword_1000EC900;
  *(v4 + 832) = 0;
  v61 = v568;
  *(v4 + 835) = v569;
  *(v4 + 833) = v61;
  *(v4 + 836) = 1077936128;
  *(v4 + 840) = 13;
  *(v4 + 841) = v566;
  *(v4 + 843) = v567;
  *(v4 + 844) = 1065353216;
  *(v4 + 848) = 0;
  *(v4 + 856) = 0u;
  *(v4 + 872) = v565;
  *(v4 + 873) = 0;
  *(v4 + 875) = 0;
  *(v4 + 880) = 0u;
  *(v4 + 896) = sub_1000815F8;
  *(v4 + 904) = 0;
  *(v4 + 912) = 0x3F80000000000000;
  *(v4 + 928) = xmmword_1000EF5C0;
  *(v4 + 944) = 1;
  v62 = vmulq_f32(xmmword_10013DCA0, 0);
  v442 = vdupq_n_s32(0xBEEB851E);
  v380 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v331 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v62), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v309 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v62, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v280 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v442), vdupq_n_s32(0x402851EBu), *algn_10013DCB0), vdupq_n_s32(0x3DCCCCCCu), xmmword_10013DCC0));
  sub_10001358C(v504, -0.71558, xmmword_1000EC910);
  v63 = sub_100013568(v504);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v63.n128_f32[0]), v331, v63.n128_u64[0], 1), v309, v63, 2), v280, v63, 3);
  v356 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v64.f32[0]), v331, *v64.f32, 1), v309, v64, 2), v280, v64, 3);
  v293 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v65.f32[0]), v331, *v65.f32, 1), v309, v65, 2), v280, v65, 3);
  v281 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v66.f32[0]), v331, *v66.f32, 1), v309, v66, 2), v280, v66, 3);
  sub_10001358C(v505, -0.7854, xmmword_1000EC8E0);
  v67 = sub_100013568(v505);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v68.f32[0]), v356, *v68.f32, 1), v293, v68, 2), v281, v68, 3);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v69.f32[0]), v356, *v69.f32, 1), v293, v69, 2), v281, v69, 3);
  v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v67.n128_f32[0]), v356, v67.n128_u64[0], 1), v293, v67, 2), v281, v67, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v70.f32[0]), v356, *v70.f32, 1), v293, v70, 2), v281, v70, 3);
  sub_10001358C(v506, -1.5708, xmmword_1000EC920);
  v71 = sub_100013568(v506);
  v572 = 1;
  *(v4 + 960) = 0x3F56872B3F8147AELL;
  *(v4 + 968) = 1045220557;
  *(v4 + 972) = 1;
  *(v4 + 973) = v577;
  *(v4 + 975) = v578;
  *(v4 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v71.n128_f32[0]), v332, v71.n128_u64[0], 1), v310, v71, 2), v407, v71, 3);
  *(v4 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v72.f32[0]), v332, *v72.f32, 1), v310, v72, 2), v407, v72, 3);
  *(v4 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v73.f32[0]), v332, *v73.f32, 1), v310, v73, 2), v407, v73, 3);
  *(v4 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v74.f32[0]), v332, *v74.f32, 1), v310, v74, 2), v407, v74, 3);
  *(v4 + 1040) = xmmword_1000EF7B0;
  *(v4 + 1056) = 0;
  v75 = v575;
  *(v4 + 1059) = v576;
  *(v4 + 1057) = v75;
  *(v4 + 1060) = 1069547520;
  *(v4 + 1064) = 9;
  *(v4 + 1065) = v573;
  *(v4 + 1067) = v574;
  *(v4 + 1068) = 1065353216;
  *(v4 + 1072) = 0;
  *(v4 + 1080) = 0u;
  *(v4 + 1096) = v572;
  *(v4 + 1097) = 0;
  *(v4 + 1099) = 0;
  *(v4 + 1104) = 0u;
  *(v4 + 1120) = sub_10003E598;
  *(v4 + 1128) = 0;
  *(v4 + 1136) = 0x3F80000000000000;
  *(v4 + 1152) = xmmword_1000EF5C0;
  *(v4 + 1168) = 9;
  v76 = vmulq_f32(xmmword_10013DCA0, 0);
  v408 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v357 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v76), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v311 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v76, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v282 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFCCCCCC)), vdupq_n_s32(0x3FCE147Bu), *algn_10013DCB0), vdupq_n_s32(0xBFC7AE14), xmmword_10013DCC0));
  sub_10001358C(v507, 2.0071, xmmword_1000EC910);
  v77 = sub_100013568(v507);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v77.n128_f32[0]), v357, v77.n128_u64[0], 1), v311, v77, 2), v282, v77, 3);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v78.f32[0]), v357, *v78.f32, 1), v311, v78, 2), v282, v78, 3);
  v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v79.f32[0]), v357, *v79.f32, 1), v311, v79, 2), v282, v79, 3);
  v283 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v80.f32[0]), v357, *v80.f32, 1), v311, v80, 2), v282, v80, 3);
  sub_10001358C(v508, -2.3911, xmmword_1000EC8E0);
  v81 = sub_100013568(v508);
  v82 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v81.n128_f32[0]), v333, v81.n128_u64[0], 1), v294, v81, 2), v283, v81, 3);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v83.f32[0]), v333, *v83.f32, 1), v294, v83, 2), v283, v83, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v84.f32[0]), v333, *v84.f32, 1), v294, v84, 2), v283, v84, 3);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v85.f32[0]), v333, *v85.f32, 1), v294, v85, 2), v283, v85, 3);
  v409 = v82;
  sub_10001358C(v509, -3.0194, xmmword_1000EC920);
  v86 = sub_100013568(v509);
  v579 = 1;
  *(v4 + 1184) = 0x404CCCCD40066666;
  *(v4 + 1192) = 1052602532;
  *(v4 + 1196) = 1;
  *(v4 + 1197) = v584;
  *(v4 + 1199) = v585;
  *(v4 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v409, v86.n128_f32[0]), v358, v86.n128_u64[0], 1), v312, v86, 2), v383, v86, 3);
  *(v4 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v409, v87.f32[0]), v358, *v87.f32, 1), v312, v87, 2), v383, v87, 3);
  *(v4 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v409, v88.f32[0]), v358, *v88.f32, 1), v312, v88, 2), v383, v88, 3);
  *(v4 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v409, v89.f32[0]), v358, *v89.f32, 1), v312, v89, 2), v383, v89, 3);
  *(v4 + 1264) = xmmword_1000EF7C0;
  *(v4 + 1280) = 0;
  v90 = v582;
  *(v4 + 1283) = v583;
  *(v4 + 1281) = v90;
  *(v4 + 1284) = 1057803469;
  *(v4 + 1288) = 5;
  *(v4 + 1289) = v580;
  *(v4 + 1291) = v581;
  *(v4 + 1292) = 1066192077;
  *(v4 + 1296) = 0;
  *(v4 + 1304) = 0u;
  *(v4 + 1320) = v579;
  *(v4 + 1321) = 1;
  *(v4 + 1323) = 1;
  *(v4 + 1328) = 0u;
  *(v4 + 1344) = sub_10003E640;
  *(v4 + 1352) = 0;
  *(v4 + 1360) = 0x3F80000000000000;
  *(v4 + 1376) = xmmword_1000EF7D0;
  *(v4 + 1392) = 9;
  v91 = vmulq_f32(xmmword_10013DCA0, 0);
  v410 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v359 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v91), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v313 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v91, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v284 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(v91, vdupq_n_s32(0x3E4CCCCCu), *algn_10013DCB0), vdupq_n_s32(0xC0247AE1), xmmword_10013DCC0));
  sub_10001358C(v510, 0.0, xmmword_1000EC910);
  v92 = sub_100013568(v510);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v92.n128_f32[0]), v359, v92.n128_u64[0], 1), v313, v92, 2), v284, v92, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v93.f32[0]), v359, *v93.f32, 1), v313, v93, 2), v284, v93, 3);
  v295 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v94.f32[0]), v359, *v94.f32, 1), v313, v94, 2), v284, v94, 3);
  v285 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v95.f32[0]), v359, *v95.f32, 1), v313, v95, 2), v284, v95, 3);
  sub_10001358C(v511, 0.0, xmmword_1000EC8E0);
  v96 = sub_100013568(v511);
  v97 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v96.n128_f32[0]), v334, v96.n128_u64[0], 1), v295, v96, 2), v285, v96, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v98.f32[0]), v334, *v98.f32, 1), v295, v98, 2), v285, v98, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v99.f32[0]), v334, *v99.f32, 1), v295, v99, 2), v285, v99, 3);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v100.f32[0]), v334, *v100.f32, 1), v295, v100, 2), v285, v100, 3);
  v411 = v97;
  sub_10001358C(v512, -0.87266, xmmword_1000EC920);
  v101 = sub_100013568(v512);
  v586 = 1;
  *(v4 + 1408) = 0x404000003FB33333;
  *(v4 + 1416) = 1051931443;
  *(v4 + 1420) = 0;
  *(v4 + 1421) = v591;
  *(v4 + 1423) = v592;
  *(v4 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v101.n128_f32[0]), v360, v101.n128_u64[0], 1), v314, v101, 2), v385, v101, 3);
  *(v4 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v102.f32[0]), v360, *v102.f32, 1), v314, v102, 2), v385, v102, 3);
  *(v4 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v103.f32[0]), v360, *v103.f32, 1), v314, v103, 2), v385, v103, 3);
  *(v4 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v104.f32[0]), v360, *v104.f32, 1), v314, v104, 2), v385, v104, 3);
  *(v4 + 1488) = xmmword_1000EF7E0;
  *(v4 + 1504) = 0;
  v105 = v589;
  *(v4 + 1507) = v590;
  *(v4 + 1505) = v105;
  *(v4 + 1508) = 1054280253;
  *(v4 + 1512) = 10;
  *(v4 + 1513) = v587;
  *(v4 + 1515) = v588;
  *(v4 + 1516) = 1065353216;
  *(v4 + 1520) = 0;
  *(v4 + 1528) = 0u;
  *(v4 + 1544) = v586;
  *(v4 + 1545) = 1;
  *(v4 + 1547) = 1;
  *(v4 + 1552) = 0u;
  *(v4 + 1568) = sub_10003E69C;
  *(v4 + 1576) = 0;
  *(v4 + 1584) = 0x3F80000000000000;
  *(v4 + 1600) = xmmword_1000EF5A0;
  *(v4 + 1616) = 3;
  v106 = vmulq_f32(xmmword_10013DCA0, 0);
  v386 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v335 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v106), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v315 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v106, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v286 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC086147B)), vdupq_n_s32(0x3FBEB852u), *algn_10013DCB0), vdupq_n_s32(0xC04147AE), xmmword_10013DCC0));
  sub_10001358C(v513, -0.95993, xmmword_1000EC910);
  v107 = sub_100013568(v513);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v107.n128_f32[0]), v335, v107.n128_u64[0], 1), v315, v107, 2), v286, v107, 3);
  v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v108.f32[0]), v335, *v108.f32, 1), v315, v108, 2), v286, v108, 3);
  v296 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v109.f32[0]), v335, *v109.f32, 1), v315, v109, 2), v286, v109, 3);
  v287 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v110.f32[0]), v335, *v110.f32, 1), v315, v110, 2), v286, v110, 3);
  sub_10001358C(v514, -0.2618, xmmword_1000EC8E0);
  v111 = sub_100013568(v514);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v112.f32[0]), v361, *v112.f32, 1), v296, v112, 2), v287, v112, 3);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v113.f32[0]), v361, *v113.f32, 1), v296, v113, 2), v287, v113, 3);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v111.n128_f32[0]), v361, v111.n128_u64[0], 1), v296, v111, 2), v287, v111, 3);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v114.f32[0]), v361, *v114.f32, 1), v296, v114, 2), v287, v114, 3);
  sub_10001358C(v515, 0.83776, xmmword_1000EC920);
  v115 = sub_100013568(v515);
  v593 = 1;
  *(v4 + 1632) = 0x3FB333333FCCCCCDLL;
  *(v4 + 1640) = 1036831949;
  *(v4 + 1644) = 1;
  *(v4 + 1645) = v598;
  *(v4 + 1647) = v599;
  *(v4 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v115.n128_f32[0]), v336, v115.n128_u64[0], 1), v316, v115, 2), v413, v115, 3);
  *(v4 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v116.f32[0]), v336, *v116.f32, 1), v316, v116, 2), v413, v116, 3);
  *(v4 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v117.f32[0]), v336, *v117.f32, 1), v316, v117, 2), v413, v117, 3);
  *(v4 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v118.f32[0]), v336, *v118.f32, 1), v316, v118, 2), v413, v118, 3);
  *(v4 + 1712) = xmmword_1000EF7F0;
  *(v4 + 1728) = 0;
  v119 = v596;
  *(v4 + 1731) = v597;
  *(v4 + 1729) = v119;
  *(v4 + 1732) = 1067869798;
  *(v4 + 1736) = 13;
  *(v4 + 1737) = v594;
  *(v4 + 1739) = v595;
  *(v4 + 1740) = 1065353216;
  *(v4 + 1744) = 0;
  *(v4 + 1752) = 0u;
  *(v4 + 1768) = v593;
  *(v4 + 1769) = 1;
  *(v4 + 1771) = 0;
  *(v4 + 1776) = 0u;
  *(v4 + 1792) = sub_10003E6CC;
  *(v4 + 1800) = 0;
  *(v4 + 1808) = 0x3F295A9600000000;
  *(v4 + 1824) = xmmword_1000EF5C0;
  *(v4 + 1840) = 3;
  v388 = vdupq_n_s32(0x3E3851EBu);
  v120 = vmulq_f32(xmmword_10013DCA0, 0);
  v414 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v337 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v120), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v317 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v120, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v362 = vdupq_n_s32(0x3F2147AEu);
  v275 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v388), v362, *algn_10013DCB0), v442, xmmword_10013DCC0));
  sub_10001358C(v516, 1.5708, xmmword_1000EC910);
  v121 = sub_100013568(v516);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v122.f32[0]), v337, *v122.f32, 1), v317, v122, 2), v275, v122, 3);
  v297 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v121.n128_f32[0]), v337, v121.n128_u64[0], 1), v317, v121, 2), v275, v121, 3);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v123.f32[0]), v337, *v123.f32, 1), v317, v123, 2), v275, v123, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v124.f32[0]), v337, *v124.f32, 1), v317, v124, 2), v275, v124, 3);
  sub_10001358C(v517, -0.89012, xmmword_1000EC8E0);
  v125 = sub_100013568(v517);
  v415 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v297, v125.n128_f32[0]), v288, v125.n128_u64[0], 1), v278, v125, 2), v276, v125, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v297, v126.f32[0]), v288, *v126.f32, 1), v278, v126, 2), v276, v126, 3);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v297, v127.f32[0]), v288, *v127.f32, 1), v278, v127, 2), v276, v127, 3);
  v298 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v297, v128.f32[0]), v288, *v128.f32, 1), v278, v128, 2), v276, v128, 3);
  sub_10001358C(v518, 0.0, xmmword_1000EC920);
  v129 = sub_100013568(v518);
  v600 = 1;
  *(v4 + 1856) = 0x400CCCCD3E800000;
  *(v4 + 1864) = 1055622431;
  *(v4 + 1868) = 1;
  *(v4 + 1869) = v605;
  *(v4 + 1871) = v606;
  *(v4 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v129.n128_f32[0]), v338, v129.n128_u64[0], 1), v318, v129, 2), v298, v129, 3);
  *(v4 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v130.f32[0]), v338, *v130.f32, 1), v318, v130, 2), v298, v130, 3);
  *(v4 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v131.f32[0]), v338, *v131.f32, 1), v318, v131, 2), v298, v131, 3);
  *(v4 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v132.f32[0]), v338, *v132.f32, 1), v318, v132, 2), v298, v132, 3);
  *(v4 + 1936) = xmmword_1000EC900;
  *(v4 + 1952) = 0;
  v133 = v603;
  *(v4 + 1955) = v604;
  *(v4 + 1953) = v133;
  *(v4 + 1956) = 1082130432;
  *(v4 + 1960) = 9;
  *(v4 + 1961) = v601;
  *(v4 + 1963) = v602;
  *(v4 + 1964) = 1065353216;
  *(v4 + 1968) = 0;
  *(v4 + 1976) = 0u;
  *(v4 + 1992) = v600;
  *(v4 + 1993) = 1;
  *(v4 + 1995) = 0;
  *(v4 + 2000) = 0u;
  *(v4 + 2016) = sub_10003E794;
  *(v4 + 2024) = 0;
  *(v4 + 2032) = 0x3E0F5C2900000000;
  *(v4 + 2048) = xmmword_1000EF5D0;
  *(v4 + 2064) = 3;
  v134 = *algn_10013DCB0;
  v135 = xmmword_10013DCC0;
  v136 = xmmword_10013DCD0;
  v137 = vmulq_f32(xmmword_10013DCA0, 0);
  v138 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3D75C28Fu));
  v299 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v319 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v137), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v339 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v137, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v139 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF51EB85)), vdupq_n_s32(0xC01D70A4), *algn_10013DCB0), vdupq_n_s32(0xBF65E354), xmmword_10013DCC0));
  v607 = 1;
  *(v4 + 2080) = 0x3FF3333340200000;
  *(v4 + 2088) = 0;
  *(v4 + 2092) = 0;
  *(v4 + 2095) = v613;
  *(v4 + 2093) = v612;
  *(v4 + 2096) = v299;
  *(v4 + 2112) = v319;
  *(v4 + 2128) = v339;
  *(v4 + 2144) = v139;
  *(v4 + 2160) = xmmword_1000EF800;
  *(v4 + 2176) = 0;
  v140 = v610;
  *(v4 + 2179) = v611;
  *(v4 + 2177) = v140;
  *(v4 + 2180) = 1075838976;
  *(v4 + 2184) = 9;
  v141 = v608;
  *(v4 + 2187) = v609;
  *(v4 + 2185) = v141;
  *(v4 + 2188) = 1065353216;
  *(v4 + 2208) = 0;
  *(v4 + 2200) = 0;
  *(v4 + 2192) = 0;
  *(v4 + 2216) = v607;
  *(v4 + 2217) = 1;
  *(v4 + 2219) = 0;
  *(v4 + 2224) = 0u;
  *(v4 + 2240) = sub_10003E7C4;
  *(v4 + 2248) = 0;
  *(v4 + 2256) = 0x3ECCCCCD3F051EB8;
  *(v4 + 2272) = xmmword_1000EF5A0;
  v273 = vaddq_f32(v136, vmlaq_f32(vmlaq_f32(v138, vdupq_n_s32(0x3EF0A3D7u), v134), vdupq_n_s32(0xBD75C28F), v135));
  *(v4 + 2288) = 4;
  sub_10001358C(v519, 1.5708, xmmword_1000EC910);
  v142 = sub_100013568(v519);
  v279 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v299, v143.f32[0]), v319, *v143.f32, 1), v339, v143, 2), v273, v143, 3);
  v289 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v299, v142.n128_f32[0]), v319, v142.n128_u64[0], 1), v339, v142, 2), v273, v142, 3);
  v277 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v299, v144.f32[0]), v319, *v144.f32, 1), v339, v144, 2), v273, v144, 3);
  v274 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v299, v145.f32[0]), v319, *v145.f32, 1), v339, v145, 2), v273, v145, 3);
  sub_10001358C(v520, -0.89012, xmmword_1000EC8E0);
  v146 = sub_100013568(v520);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v289, v147.f32[0]), v279, *v147.f32, 1), v277, v147, 2), v274, v147, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v289, v146.n128_f32[0]), v279, v146.n128_u64[0], 1), v277, v146, 2), v274, v146, 3);
  v300 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v289, v148.f32[0]), v279, *v148.f32, 1), v277, v148, 2), v274, v148, 3);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v289, v149.f32[0]), v279, *v149.f32, 1), v277, v149, 2), v274, v149, 3);
  sub_10001358C(v521, 0.0, xmmword_1000EC920);
  v150 = sub_100013568(v521);
  v614 = 1;
  *(v4 + 2304) = 0x4014FDF43F7020C5;
  *(v4 + 2312) = 1050253722;
  *(v4 + 2316) = 1;
  *(v4 + 2317) = v619;
  *(v4 + 2319) = v620;
  *(v4 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v150.n128_f32[0]), v320, v150.n128_u64[0], 1), v300, v150, 2), v290, v150, 3);
  *(v4 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v151.f32[0]), v320, *v151.f32, 1), v300, v151, 2), v290, v151, 3);
  *(v4 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v152.f32[0]), v320, *v152.f32, 1), v300, v152, 2), v290, v152, 3);
  *(v4 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v153.f32[0]), v320, *v153.f32, 1), v300, v153, 2), v290, v153, 3);
  *(v4 + 2384) = xmmword_1000EF810;
  *(v4 + 2400) = 0;
  v154 = v617;
  *(v4 + 2403) = v618;
  *(v4 + 2401) = v154;
  *(v4 + 2404) = 1056964608;
  *(v4 + 2408) = 9;
  *(v4 + 2409) = v615;
  *(v4 + 2411) = v616;
  *(v4 + 2412) = 1065353216;
  *(v4 + 2416) = 0;
  *(v4 + 2424) = 0u;
  *(v4 + 2440) = v614;
  *(v4 + 2441) = 1;
  *(v4 + 2443) = 0;
  *(v4 + 2448) = 0u;
  *(v4 + 2464) = sub_10003E7F4;
  *(v4 + 2472) = 0;
  *(v4 + 2480) = 0x3EAE147B00000000;
  *(v4 + 2496) = xmmword_1000EF5C0;
  *(v4 + 2512) = 4;
  v155 = vmulq_f32(xmmword_10013DCA0, 0);
  v156 = vmulq_f32(xmmword_10013DCA0, v388);
  v389 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v341 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v155), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v301 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v155, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v291 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(v156, v362, *algn_10013DCB0), v442, xmmword_10013DCC0));
  sub_10001358C(v522, 1.5708, xmmword_1000EC910);
  v157 = sub_100013568(v522);
  v443 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v157.n128_f32[0]), v341, v157.n128_u64[0], 1), v301, v157, 2), v291, v157, 3);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v158.f32[0]), v341, *v158.f32, 1), v301, v158, 2), v291, v158, 3);
  v321 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v159.f32[0]), v341, *v159.f32, 1), v301, v159, 2), v291, v159, 3);
  v292 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v160.f32[0]), v341, *v160.f32, 1), v301, v160, 2), v291, v160, 3);
  sub_10001358C(v523, -0.89012, xmmword_1000EC8E0);
  v161 = sub_100013568(v523);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v161.n128_f32[0]), v363, v161.n128_u64[0], 1), v321, v161, 2), v292, v161, 3);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v162.f32[0]), v363, *v162.f32, 1), v321, v162, 2), v292, v162, 3);
  v302 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v163.f32[0]), v363, *v163.f32, 1), v321, v163, 2), v292, v163, 3);
  v444 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v164.f32[0]), v363, *v164.f32, 1), v321, v164, 2), v292, v164, 3);
  sub_10001358C(v524, 0.0, xmmword_1000EC920);
  v165 = sub_100013568(v524);
  v621 = 1;
  *(v4 + 2528) = 0x3F95C28F3F3020C5;
  *(v4 + 2536) = 1053609165;
  *(v4 + 2540) = 1;
  *(v4 + 2541) = v626;
  *(v4 + 2543) = v627;
  *(v4 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v165.n128_f32[0]), v342, v165.n128_u64[0], 1), v302, v165, 2), v444, v165, 3);
  *(v4 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v166.f32[0]), v342, *v166.f32, 1), v302, v166, 2), v444, v166, 3);
  *(v4 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v167.f32[0]), v342, *v167.f32, 1), v302, v167, 2), v444, v167, 3);
  *(v4 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v168.f32[0]), v342, *v168.f32, 1), v302, v168, 2), v444, v168, 3);
  *(v4 + 2608) = xmmword_1000EC900;
  *(v4 + 2624) = 0;
  v169 = v624;
  *(v4 + 2627) = v625;
  *(v4 + 2625) = v169;
  *(v4 + 2628) = 1071225242;
  *(v4 + 2632) = 9;
  *(v4 + 2633) = v622;
  *(v4 + 2635) = v623;
  *(v4 + 2636) = 1065353216;
  *(v4 + 2640) = 0;
  *(v4 + 2648) = 0u;
  *(v4 + 2664) = v621;
  *(v4 + 2665) = 1;
  *(v4 + 2667) = 0;
  *(v4 + 2672) = 0u;
  *(v4 + 2688) = sub_10003E890;
  *(v4 + 2696) = 0;
  *(v4 + 2704) = 0x3EF3F3F400000000;
  *(v4 + 2720) = xmmword_1000EF630;
  *(v4 + 2736) = 9;
  v170 = vmulq_f32(xmmword_10013DCA0, 0);
  v445 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v364 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v170), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v343 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v170, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v303 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC03C28F5)), vdupq_n_s32(0x4071EB85u), *algn_10013DCB0), vdupq_n_s32(0x405E147Bu), xmmword_10013DCC0));
  sub_10001358C(v525, -1.2217, xmmword_1000EC910);
  v171 = sub_100013568(v525);
  v462 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v171.n128_f32[0]), v364, v171.n128_u64[0], 1), v343, v171, 2), v303, v171, 3);
  v391 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v172.f32[0]), v364, *v172.f32, 1), v343, v172, 2), v303, v172, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v173.f32[0]), v364, *v173.f32, 1), v343, v173, 2), v303, v173, 3);
  v304 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v174.f32[0]), v364, *v174.f32, 1), v343, v174, 2), v303, v174, 3);
  sub_10001358C(v526, -0.68068, xmmword_1000EC8E0);
  v175 = sub_100013568(v526);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v176.f32[0]), v391, *v176.f32, 1), v322, v176, 2), v304, v176, 3);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v177.f32[0]), v391, *v177.f32, 1), v322, v177, 2), v304, v177, 3);
  v446 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v175.n128_f32[0]), v391, v175.n128_u64[0], 1), v322, v175, 2), v304, v175, 3);
  v463 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v178.f32[0]), v391, *v178.f32, 1), v322, v178, 2), v304, v178, 3);
  sub_10001358C(v527, -0.27925, xmmword_1000EC920);
  v179 = sub_100013568(v527);
  v628 = 1;
  *(v4 + 2752) = 0x4079999A3F7851ECLL;
  *(v4 + 2760) = 1054951342;
  *(v4 + 2764) = 1;
  *(v4 + 2765) = v633;
  *(v4 + 2767) = v634;
  *(v4 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v179.n128_f32[0]), v365, v179.n128_u64[0], 1), v344, v179, 2), v463, v179, 3);
  *(v4 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v180.f32[0]), v365, *v180.f32, 1), v344, v180, 2), v463, v180, 3);
  *(v4 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v181.f32[0]), v365, *v181.f32, 1), v344, v181, 2), v463, v181, 3);
  *(v4 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v182.f32[0]), v365, *v182.f32, 1), v344, v182, 2), v463, v182, 3);
  *(v4 + 2832) = xmmword_1000EF820;
  *(v4 + 2848) = 0;
  v183 = v631;
  *(v4 + 2851) = v632;
  *(v4 + 2849) = v183;
  *(v4 + 2852) = 1065353216;
  *(v4 + 2856) = 8;
  *(v4 + 2857) = v629;
  *(v4 + 2859) = v630;
  *(v4 + 2860) = 1059481190;
  *(v4 + 2864) = 0;
  *(v4 + 2872) = 0u;
  *(v4 + 2888) = v628;
  *(v4 + 2889) = 3;
  *(v4 + 2891) = 1;
  *(v4 + 2896) = 0u;
  *(v4 + 2912) = sub_100081608;
  *(v4 + 2920) = 0;
  *(v4 + 2928) = 0x3F80000000000000;
  *(v4 + 2944) = xmmword_1000EF5A0;
  *(v4 + 2960) = 5;
  v184 = vmulq_f32(xmmword_10013DCA0, 0);
  v447 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v366 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v184), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v345 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v184, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v305 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FAB851Eu)), vdupq_n_s32(0xC0351EB8), *algn_10013DCB0), vdupq_n_s32(0x404AE147u), xmmword_10013DCC0));
  sub_10001358C(v528, 0.0, xmmword_1000EC910);
  v185 = sub_100013568(v528);
  v464 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v185.n128_f32[0]), v366, v185.n128_u64[0], 1), v345, v185, 2), v305, v185, 3);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v186.f32[0]), v366, *v186.f32, 1), v345, v186, 2), v305, v186, 3);
  v323 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v187.f32[0]), v366, *v187.f32, 1), v345, v187, 2), v305, v187, 3);
  v306 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v188.f32[0]), v366, *v188.f32, 1), v345, v188, 2), v305, v188, 3);
  sub_10001358C(v529, 0.54105, xmmword_1000EC8E0);
  v189 = sub_100013568(v529);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v190.f32[0]), v392, *v190.f32, 1), v323, v190, 2), v306, v190, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v191.f32[0]), v392, *v191.f32, 1), v323, v191, 2), v306, v191, 3);
  v448 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v189.n128_f32[0]), v392, v189.n128_u64[0], 1), v323, v189, 2), v306, v189, 3);
  v465 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v192.f32[0]), v392, *v192.f32, 1), v323, v192, 2), v306, v192, 3);
  sub_10001358C(v530, 0.0, xmmword_1000EC920);
  v193 = sub_100013568(v530);
  v635 = 1;
  *(v4 + 2976) = 0x4059999A3FD9999ALL;
  *(v4 + 2984) = 1053609165;
  *(v4 + 2988) = 1;
  *(v4 + 2989) = v640;
  *(v4 + 2991) = v641;
  *(v4 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v193.n128_f32[0]), v367, v193.n128_u64[0], 1), v346, v193, 2), v465, v193, 3);
  *(v4 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v194.f32[0]), v367, *v194.f32, 1), v346, v194, 2), v465, v194, 3);
  *(v4 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v195.f32[0]), v367, *v195.f32, 1), v346, v195, 2), v465, v195, 3);
  *(v4 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v196.f32[0]), v367, *v196.f32, 1), v346, v196, 2), v465, v196, 3);
  *(v4 + 3056) = xmmword_1000EF830;
  *(v4 + 3072) = 0;
  v197 = v638;
  *(v4 + 3075) = v639;
  *(v4 + 3073) = v197;
  *(v4 + 3076) = 1085905306;
  *(v4 + 3080) = 9;
  *(v4 + 3081) = v636;
  *(v4 + 3083) = v637;
  *(v4 + 3084) = 1065353216;
  *(v4 + 3088) = 0;
  *(v4 + 3096) = 0u;
  *(v4 + 3112) = v635;
  *(v4 + 3113) = 259;
  *(v4 + 3115) = 1;
  *(v4 + 3120) = 0u;
  *(v4 + 3136) = sub_1000815F8;
  *(v4 + 3144) = 0;
  *(v4 + 3152) = 0x3F80000000000000;
  *(v4 + 3168) = xmmword_1000EF5C0;
  *(v4 + 3184) = 5;
  v198 = vmulq_f32(xmmword_10013DCA0, 0);
  v449 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v393 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v198), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v368 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v198, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v324 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFC147AE)), v421, *algn_10013DCB0), vdupq_n_s32(0x404147AEu), xmmword_10013DCC0));
  sub_10001358C(v531, -0.69813, xmmword_1000EC910);
  v199 = sub_100013568(v531);
  v466 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v199.n128_f32[0]), v393, v199.n128_u64[0], 1), v368, v199, 2), v324, v199, 3);
  v422 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v200.f32[0]), v393, *v200.f32, 1), v368, v200, 2), v324, v200, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v201.f32[0]), v393, *v201.f32, 1), v368, v201, 2), v324, v201, 3);
  v325 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v202.f32[0]), v393, *v202.f32, 1), v368, v202, 2), v324, v202, 3);
  sub_10001358C(v532, 0.0, xmmword_1000EC8E0);
  v203 = sub_100013568(v532);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v204.f32[0]), v422, *v204.f32, 1), v347, v204, 2), v325, v204, 3);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v205.f32[0]), v422, *v205.f32, 1), v347, v205, 2), v325, v205, 3);
  v450 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v203.n128_f32[0]), v422, v203.n128_u64[0], 1), v347, v203, 2), v325, v203, 3);
  v467 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v206.f32[0]), v422, *v206.f32, 1), v347, v206, 2), v325, v206, 3);
  sub_10001358C(v533, 0.0, xmmword_1000EC920);
  v207 = sub_100013568(v533);
  v642 = 1;
  *(v4 + 3200) = 0x408D1EB83FF851ECLL;
  *(v4 + 3208) = 1048576000;
  *(v4 + 3212) = 0;
  *(v4 + 3213) = v647;
  *(v4 + 3215) = v648;
  *(v4 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v207.n128_f32[0]), v394, v207.n128_u64[0], 1), v369, v207, 2), v467, v207, 3);
  *(v4 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v208.f32[0]), v394, *v208.f32, 1), v369, v208, 2), v467, v208, 3);
  *(v4 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v209.f32[0]), v394, *v209.f32, 1), v369, v209, 2), v467, v209, 3);
  *(v4 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v210.f32[0]), v394, *v210.f32, 1), v369, v210, 2), v467, v210, 3);
  *(v4 + 3280) = xmmword_1000EF840;
  *(v4 + 3296) = 0;
  v211 = v645;
  *(v4 + 3299) = v646;
  *(v4 + 3297) = v211;
  *(v4 + 3300) = 1057803469;
  *(v4 + 3304) = 9;
  *(v4 + 3305) = v643;
  *(v4 + 3307) = v644;
  *(v4 + 3308) = 1065353216;
  *(v4 + 3312) = 0;
  *(v4 + 3320) = 0u;
  *(v4 + 3336) = v642;
  *(v4 + 3337) = 3;
  *(v4 + 3339) = 1;
  *(v4 + 3344) = 0u;
  *(v4 + 3360) = sub_100081600;
  *(v4 + 3368) = 0;
  *(v4 + 3376) = 0x3F80000000000000;
  *(v4 + 3392) = xmmword_1000EF5D0;
  *(v4 + 3408) = 5;
  v212 = vmulq_f32(xmmword_10013DCA0, 0);
  v451 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v416 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v212), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v395 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v212, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v348 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3EC7AE14u)), vdupq_n_s32(0xBF63D70A), *algn_10013DCB0), vdupq_n_s32(0x403F5C29u), xmmword_10013DCC0));
  sub_10001358C(v534, 0.0, xmmword_1000EC910);
  v213 = sub_100013568(v534);
  v468 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v213.n128_f32[0]), v416, v213.n128_u64[0], 1), v395, v213, 2), v348, v213, 3);
  v423 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v214.f32[0]), v416, *v214.f32, 1), v395, v214, 2), v348, v214, 3);
  v370 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v215.f32[0]), v416, *v215.f32, 1), v395, v215, 2), v348, v215, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v216.f32[0]), v416, *v216.f32, 1), v395, v216, 2), v348, v216, 3);
  sub_10001358C(v535, 0.54105, xmmword_1000EC8E0);
  v217 = sub_100013568(v535);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v218.f32[0]), v423, *v218.f32, 1), v370, v218, 2), v349, v218, 3);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v219.f32[0]), v423, *v219.f32, 1), v370, v219, 2), v349, v219, 3);
  v452 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v217.n128_f32[0]), v423, v217.n128_u64[0], 1), v370, v217, 2), v349, v217, 3);
  v469 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v220.f32[0]), v423, *v220.f32, 1), v370, v220, 2), v349, v220, 3);
  sub_10001358C(v536, -1.5708, xmmword_1000EC920);
  v221 = sub_100013568(v536);
  v649 = 1;
  *(v4 + 3424) = 0x406CCCCD3F59999ALL;
  *(v4 + 3432) = 1056964608;
  *(v4 + 3436) = 0;
  *(v4 + 3437) = v654;
  *(v4 + 3439) = v655;
  *(v4 + 3440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v221.n128_f32[0]), v417, v221.n128_u64[0], 1), v396, v221, 2), v469, v221, 3);
  *(v4 + 3456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v222.f32[0]), v417, *v222.f32, 1), v396, v222, 2), v469, v222, 3);
  *(v4 + 3472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v223.f32[0]), v417, *v223.f32, 1), v396, v223, 2), v469, v223, 3);
  *(v4 + 3488) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v224.f32[0]), v417, *v224.f32, 1), v396, v224, 2), v469, v224, 3);
  *(v4 + 3504) = xmmword_1000EF850;
  *(v4 + 3520) = 0;
  v225 = v652;
  *(v4 + 3523) = v653;
  *(v4 + 3521) = v225;
  *(v4 + 3524) = 1055286886;
  *(v4 + 3528) = 9;
  *(v4 + 3529) = v650;
  *(v4 + 3531) = v651;
  *(v4 + 3532) = 1065353216;
  *(v4 + 3536) = 0;
  *(v4 + 3544) = 0u;
  *(v4 + 3560) = v649;
  *(v4 + 3561) = 3;
  *(v4 + 3563) = 1;
  *(v4 + 3568) = 0u;
  *(v4 + 3584) = sub_10003E958;
  *(v4 + 3592) = 0;
  *(v4 + 3600) = 0x3F80000000000000;
  *(v4 + 3616) = xmmword_1000EF5A0;
  *(v4 + 3632) = 6;
  v226 = vmulq_f32(xmmword_10013DCA0, 0);
  v453 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v418 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v226), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v371 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v226, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v485 = vdupq_n_s32(0xBF8E147B);
  v350 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE6B851E)), vdupq_n_s32(0x3F0CCCCDu), *algn_10013DCB0), v485, xmmword_10013DCC0));
  sub_10001358C(v537, 1.5708, xmmword_1000EC910);
  v227 = sub_100013568(v537);
  v470 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v227.n128_f32[0]), v418, v227.n128_u64[0], 1), v371, v227, 2), v350, v227, 3);
  v424 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v228.f32[0]), v418, *v228.f32, 1), v371, v228, 2), v350, v228, 3);
  v397 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v229.f32[0]), v418, *v229.f32, 1), v371, v229, 2), v350, v229, 3);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v230.f32[0]), v418, *v230.f32, 1), v371, v230, 2), v350, v230, 3);
  sub_10001358C(v538, -3.4034, xmmword_1000EC8E0);
  v231 = sub_100013568(v538);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v232.f32[0]), v424, *v232.f32, 1), v397, v232, 2), v351, v232, 3);
  v372 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v233.f32[0]), v424, *v233.f32, 1), v397, v233, 2), v351, v233, 3);
  v454 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v231.n128_f32[0]), v424, v231.n128_u64[0], 1), v397, v231, 2), v351, v231, 3);
  v471 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v234.f32[0]), v424, *v234.f32, 1), v397, v234, 2), v351, v234, 3);
  sub_10001358C(v539, 1.5708, xmmword_1000EC920);
  v235 = sub_100013568(v539);
  v656 = 1;
  *(v4 + 3648) = 0x3F99999A3F400000;
  *(v4 + 3656) = 1056964608;
  *(v4 + 3660) = 1;
  *(v4 + 3661) = v661;
  *(v4 + 3663) = v662;
  *(v4 + 3664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v235.n128_f32[0]), v419, v235.n128_u64[0], 1), v372, v235, 2), v471, v235, 3);
  *(v4 + 3680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v236.f32[0]), v419, *v236.f32, 1), v372, v236, 2), v471, v236, 3);
  *(v4 + 3696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v237.f32[0]), v419, *v237.f32, 1), v372, v237, 2), v471, v237, 3);
  *(v4 + 3712) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v238.f32[0]), v419, *v238.f32, 1), v372, v238, 2), v471, v238, 3);
  *(v4 + 3728) = xmmword_1000EF860;
  *(v4 + 3744) = 0;
  v239 = v659;
  *(v4 + 3747) = v660;
  *(v4 + 3745) = v239;
  *(v4 + 3748) = 1052938076;
  *(v4 + 3752) = 9;
  *(v4 + 3753) = v657;
  *(v4 + 3755) = v658;
  *(v4 + 3756) = 1065353216;
  *(v4 + 3760) = 0;
  *(v4 + 3768) = 0u;
  *(v4 + 3784) = v656;
  *(v4 + 3785) = 2;
  *(v4 + 3787) = 1;
  *(v4 + 3792) = 0u;
  *(v4 + 3808) = sub_10003E988;
  *(v4 + 3816) = 0;
  *(v4 + 3824) = 0x3F80000000000000;
  *(v4 + 3840) = xmmword_1000EF5C0;
  *(v4 + 3856) = 6;
  v240 = vmulq_f32(xmmword_10013DCA0, 0);
  v425 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v420 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v240), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v398 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v240, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v486 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF599999)), vdupq_n_s32(0xBF451EB8), *algn_10013DCB0), v485, xmmword_10013DCC0));
  sub_10001358C(v540, 1.5708, xmmword_1000EC910);
  v241 = sub_100013568(v540);
  v472 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v242.f32[0]), v420, *v242.f32, 1), v398, v242, 2), v486, v242, 3);
  v481 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v241.n128_f32[0]), v420, v241.n128_u64[0], 1), v398, v241, 2), v486, v241, 3);
  v455 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v243.f32[0]), v420, *v243.f32, 1), v398, v243, 2), v486, v243, 3);
  v426 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v244.f32[0]), v420, *v244.f32, 1), v398, v244, 2), v486, v244, 3);
  sub_10001358C(v541, -2.5307, xmmword_1000EC8E0);
  v245 = sub_100013568(v541);
  v490 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v246.f32[0]), v472, *v246.f32, 1), v455, v246, 2), v426, v246, 3);
  v491 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v245.n128_f32[0]), v472, v245.n128_u64[0], 1), v455, v245, 2), v426, v245, 3);
  v487 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v247.f32[0]), v472, *v247.f32, 1), v455, v247, 2), v426, v247, 3);
  v482 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v248.f32[0]), v472, *v248.f32, 1), v455, v248, 2), v426, v248, 3);
  sub_10001358C(v542, 1.5708, xmmword_1000EC920);
  v249 = sub_100013568(v542);
  v663 = 1;
  *(v4 + 3872) = 0x3F99999A3F8CCCCDLL;
  *(v4 + 3880) = 1056964608;
  *(v4 + 3884) = 1;
  *(v4 + 3885) = v668;
  *(v4 + 3887) = v669;
  *(v4 + 3888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v249.n128_f32[0]), v490, v249.n128_u64[0], 1), v487, v249, 2), v482, v249, 3);
  *(v4 + 3904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v250.f32[0]), v490, *v250.f32, 1), v487, v250, 2), v482, v250, 3);
  *(v4 + 3920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v251.f32[0]), v490, *v251.f32, 1), v487, v251, 2), v482, v251, 3);
  *(v4 + 3936) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v252.f32[0]), v490, *v252.f32, 1), v487, v252, 2), v482, v252, 3);
  *(v4 + 3952) = xmmword_1000EF870;
  *(v4 + 3968) = 0;
  v253 = v666;
  *(v4 + 3971) = v667;
  *(v4 + 3969) = v253;
  *(v4 + 3972) = 1058642330;
  *(v4 + 3976) = 9;
  *(v4 + 3977) = v664;
  *(v4 + 3979) = v665;
  *(v4 + 3980) = 1065353216;
  *(v4 + 3984) = 0;
  *(v4 + 3992) = 0u;
  *(v4 + 4008) = v663;
  *(v4 + 4009) = 2;
  *(v4 + 4011) = 1;
  *(v4 + 4016) = 0u;
  *(v4 + 4032) = sub_10003EA40;
  *(v4 + 4040) = 0;
  *(v4 + 4048) = 0x3F80000000000000;
  v254 = sub_1000A0774(v4);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020);
  v255 = swift_allocObject();
  v255[1] = xmmword_1000ED250;
  v255[2] = xmmword_1000EF880;
  v255[3] = xmmword_1000EF890;
  v255[4] = xmmword_1000EF8A0;
  v256 = swift_allocObject();
  v256[1] = xmmword_1000EC880;
  v256[2] = xmmword_1000EF8B0;
  v256[3] = xmmword_1000EF8C0;
  v257 = swift_allocObject();
  v257[1] = xmmword_1000EC880;
  v257[2] = xmmword_1000EF8D0;
  v257[3] = xmmword_1000EF8E0;
  v258 = qword_10013AC20;
  v259 = unk_10013AC28;
  v260 = qword_10013AC30;

  v261 = qword_10013AC50;
  v262 = sub_1000A0A98(_swiftEmptyArrayStorage);
  v670.i64[0] = v258;
  v670.i64[1] = v259;
  v671.i64[0] = v260;
  v671.i64[1] = v262;
  v672.i64[0] = _swiftEmptyArrayStorage;
  v672.i64[1] = _swiftEmptyArrayStorage;
  v673 = v261;
  v542[3] = v670;
  v542[4] = v671;
  v542[5] = v672;
  v543 = v261;
  v263 = sub_1000A0A98(&off_10011F090);
  sub_1000125FC(&qword_100131048);
  swift_arrayDestroy();
  v264 = sub_1000A092C(_swiftEmptyArrayStorage);
  sub_1000BA704(v264, v263, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v674);

  sub_100081544(&v670);
  swift_bridgeObjectRetain_n();
  v265 = sub_1000C1928(v254);

  sub_1000C53DC(v265, v678);
  v266 = sub_1000C199C(v254);

  sub_1000C53DC(v266, v676);
  xmmword_10013AC60 = v436;
  *algn_10013AC70 = v435;
  qword_10013AC80 = v434;
  dword_10013AC88 = v0;
  xmmword_10013AC90 = v433;
  unk_10013ACA0 = v432;
  qword_10013ACB0 = v1;
  dword_10013ACB8 = v2;
  xmmword_10013ACC0 = v431;
  qword_10013ACD0 = v3;
  xmmword_10013ACE0 = v430;
  qword_10013ACF0 = v429;
  unk_10013ACF8 = v428;
  dword_10013AD00 = v427;
  qword_10013AD08 = 0;
  unk_10013AD10 = v254;
  qword_10013AD38 = v679;
  unk_10013AD28 = v678[1];
  unk_10013AD18 = v678[0];
  xmmword_10013AD40 = v676[0];
  unk_10013AD50 = v676[1];
  qword_10013AD60 = v677;
  unk_10013AD68 = variable initialization expression of ToriScene.tapTarget;
  qword_10013AD70 = 0;
  xmmword_10013AD80 = xmmword_1000EF8F0;
  unk_10013AD90 = xmmword_1000EF900;
  qword_10013ADA0 = v255;
  word_10013ADAC = 1;
  dword_10013ADA8 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  xmmword_10013ADB0 = _Q0;
  qword_10013ADC0 = v256;
  xmmword_10013ADC8 = xmmword_1000EF910;
  xmmword_10013ADD8 = xmmword_1000EF920;
  qword_10013ADE8 = 1056635643;
  unk_10013ADF0 = v257;
  xmmword_10013ADF8 = xmmword_1000EF930;
  xmmword_10013AE08 = xmmword_1000EF940;
  qword_10013AE18 = 1062326738;
  result = 0.0000000231406324;
  qword_10013AE60 = v675;
  xmmword_10013AE40 = v674[1];
  unk_10013AE50 = v674[2];
  xmmword_10013AE20 = xmmword_1000EF950;
  unk_10013AE30 = v674[0];
  return result;
}

uint64_t sub_10003E3EC(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -0.92) * a2) + 0.92) | (COERCE_UNSIGNED_INT(((*(result + 4) + -4.2) * a2) + 4.2) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -5.0) * a2) + 5.0;
    *(result + 108) = ((*(result + 108) + -0.44) * a2) + 0.44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10003E4C0(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.89) * a2) + 0.89;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10003E4F0(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.1) * a2) + 1.1) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.2) * a2) + 1.2) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.5) * a2) + 2.5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003E598(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.2) * a2) + 0.2;
    *result = COERCE_UNSIGNED_INT(((*result + -1.7) * a2) + 1.7) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.84) * a2) + 0.84) << 32);
    *(result + 8) = v2;
    *(result + 100) = *(result + 100) * a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10003E640(uint64_t a1, float a2)
{
  *(a1 + 100) = ((*(a1 + 100) + -0.6) * a2) + 0.6;
  result = ((*(a1 + 108) + -0.8) * a2) + 0.8;
  *(a1 + 108) = result;
  return result;
}

float sub_10003E69C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.086) * a2) + 0.086;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10003E6CC(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.045) * a2) + 0.045;
    *result = COERCE_UNSIGNED_INT(((*result + -1.6) * a2) + 1.6) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.4) * a2) + 1.4) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.3) * a2) + 0.3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10003E794(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -2.2) * a2) + 2.2;
  *(a1 + 100) = result;
  return result;
}

float sub_10003E7C4(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.73) * a2) + 0.73;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10003E7F4(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    *&v2 = ((*result + -0.55) * a2) + 0.55;
    *&v3 = ((*(result + 4) + -1.1) * a2) + 1.1;
    v4 = ((*(result + 8) + -0.47) * a2) + 0.47;
    *result = v2 | (v3 << 32);
    *(result + 8) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003E890(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.4) * a2) + 0.4;
    *result = COERCE_UNSIGNED_INT(((*result + -1.1) * a2) + 1.1) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.3) * a2) + 2.3) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.36) * a2) + 0.36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10003E958(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.14) * a2) + 0.14;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10003E988(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -0.48) * a2) + 0.48) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.2) * a2) + 1.2) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.85) * a2) + 0.85;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003EA40(uint64_t a1, float a2)
{
  if (*(a1 + 12) == 1)
  {
    v3 = ((*(a1 + 8) + -0.5) * a2) + 0.5;
    *a1 = COERCE_UNSIGNED_INT(((*a1 + -0.26) * a2) + 0.26) | (COERCE_UNSIGNED_INT(((*(a1 + 4) + -1.2) * a2) + 1.2) << 32);
    *(a1 + 8) = v3;
    *(a1 + 100) = ((*(a1 + 100) + -0.64) * a2) + 0.64;
    sub_1000BA464(*(a1 + 80), *(a1 + 88), *(a1 + 96), 0x3F66E6E700000000, 1059102881, 0, a2);
    *(a1 + 80) = v4;
    *(a1 + 88) = v5;
    *(a1 + 96) = v6;
  }

  else
  {
    __break(1u);
  }
}

double sub_10003EB40()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v397 = unk_10013AA60;
  v398 = xmmword_10013AA50;
  v396 = qword_10013AA70;
  v0 = dword_10013AA78;
  v394 = unk_10013AA90;
  v395 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v2 = dword_10013AAA8;
  v3 = qword_10013AAC0;
  v392 = xmmword_10013AAD0;
  v393 = xmmword_10013AAB0;
  v390 = unk_10013AAE8;
  v391 = qword_10013AAE0;
  v389 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000EF960;
  *(v4 + 32) = xmmword_1000EF5A0;
  *(v4 + 48) = 0;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v5 = vmulq_f32(xmmword_10013DCA0, 0);
  v448 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v432 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v5), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v399 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v5, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v336 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC08A8F5C)), vdupq_n_s32(0x40A1EB85u), *algn_10013DCB0), vdupq_n_s32(0xC025C28F), xmmword_10013DCC0));
  sub_10001358C(v451, 2.234, xmmword_1000EC910);
  v6 = sub_100013568(v451);
  v447 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v6.n128_f32[0]), v432, v6.n128_u64[0], 1), v399, v6, 2), v336, v6, 3);
  v423 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v7.f32[0]), v432, *v7.f32, 1), v399, v7, 2), v336, v7, 3);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v8.f32[0]), v432, *v8.f32, 1), v399, v8, 2), v336, v8, 3);
  v311 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v9.f32[0]), v432, *v9.f32, 1), v399, v9, 2), v336, v9, 3);
  sub_10001358C(v452, -2.426, xmmword_1000EC8E0);
  v10 = sub_100013568(v452);
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v10.n128_f32[0]), v423, v10.n128_u64[0], 1), v359, v10, 2), v311, v10, 3);
  v400 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v12.f32[0]), v423, *v12.f32, 1), v359, v12, 2), v311, v12, 3);
  v337 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v13.f32[0]), v423, *v13.f32, 1), v359, v13, 2), v311, v13, 3);
  v424 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v14.f32[0]), v423, *v14.f32, 1), v359, v14, 2), v311, v14, 3);
  v433 = v11;
  sub_10001358C(v453, 0.15708, xmmword_1000EC920);
  v15 = sub_100013568(v453);
  v499 = 0;
  *(v4 + 64) = 0x40CAE148401C28F6;
  *(v4 + 72) = 1008981770;
  *(v4 + 76) = 1;
  *(v4 + 77) = v504;
  *(v4 + 79) = v505;
  *(v4 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v15.n128_f32[0]), v400, v15.n128_u64[0], 1), v337, v15, 2), v424, v15, 3);
  *(v4 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v16.f32[0]), v400, *v16.f32, 1), v337, v16, 2), v424, v16, 3);
  *(v4 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v17.f32[0]), v400, *v17.f32, 1), v337, v17, 2), v424, v17, 3);
  *(v4 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v18.f32[0]), v400, *v18.f32, 1), v337, v18, 2), v424, v18, 3);
  *(v4 + 144) = xmmword_1000EF970;
  *(v4 + 160) = 0;
  v19 = v502;
  *(v4 + 163) = v503;
  *(v4 + 161) = v19;
  *(v4 + 164) = 1092616192;
  *(v4 + 168) = 1;
  *(v4 + 169) = v500;
  *(v4 + 171) = v501;
  *(v4 + 172) = 1060320051;
  *(v4 + 176) = xmmword_1000EF980;
  *(v4 + 192) = 0x3F0F5C2900000000;
  *(v4 + 200) = v499;
  *(v4 + 201) = 0;
  *(v4 + 203) = 1;
  *(v4 + 208) = 0u;
  *(v4 + 224) = sub_100081614;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0x3F80000000000000;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 9;
  v20 = vmulq_f32(xmmword_10013DCA0, 0);
  v425 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v360 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v20), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v338 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v20, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v285 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0833333)), vdupq_n_s32(0x40AAE147u), *algn_10013DCB0), vdupq_n_s32(0xC01F5C29), xmmword_10013DCC0));
  sub_10001358C(v454, 2.234, xmmword_1000EC910);
  v21 = sub_100013568(v454);
  v434 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v21.n128_f32[0]), v360, v21.n128_u64[0], 1), v338, v21, 2), v285, v21, 3);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v22.f32[0]), v360, *v22.f32, 1), v338, v22, 2), v285, v22, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v23.f32[0]), v360, *v23.f32, 1), v338, v23, 2), v285, v23, 3);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v24.f32[0]), v360, *v24.f32, 1), v338, v24, 2), v285, v24, 3);
  sub_10001358C(v455, -2.426, xmmword_1000EC8E0);
  v25 = sub_100013568(v455);
  v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v26.f32[0]), v401, *v26.f32, 1), v312, v26, 2), v286, v26, 3);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v27.f32[0]), v401, *v27.f32, 1), v312, v27, 2), v286, v27, 3);
  v426 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v25.n128_f32[0]), v401, v25.n128_u64[0], 1), v312, v25, 2), v286, v25, 3);
  v435 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v28.f32[0]), v401, *v28.f32, 1), v312, v28, 2), v286, v28, 3);
  sub_10001358C(v456, 0.15708, xmmword_1000EC920);
  v29 = sub_100013568(v456);
  v506 = 0;
  *(v4 + 288) = 0x408CCCCD40200000;
  *(v4 + 296) = 1008981770;
  *(v4 + 300) = 1;
  *(v4 + 301) = v511;
  *(v4 + 303) = v512;
  *(v4 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v29.n128_f32[0]), v361, v29.n128_u64[0], 1), v339, v29, 2), v435, v29, 3);
  *(v4 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v30.f32[0]), v361, *v30.f32, 1), v339, v30, 2), v435, v30, 3);
  *(v4 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v31.f32[0]), v361, *v31.f32, 1), v339, v31, 2), v435, v31, 3);
  *(v4 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v32.f32[0]), v361, *v32.f32, 1), v339, v32, 2), v435, v32, 3);
  *(v4 + 368) = xmmword_1000EF990;
  *(v4 + 384) = 2;
  v33 = v509;
  *(v4 + 387) = v510;
  *(v4 + 385) = v33;
  *(v4 + 388) = 1102577664;
  *(v4 + 392) = 1;
  *(v4 + 393) = v507;
  *(v4 + 395) = v508;
  *(v4 + 396) = 1052938076;
  *(v4 + 400) = xmmword_1000EF9A0;
  *(v4 + 416) = 0x3F0F5C2900000000;
  *(v4 + 424) = v506;
  *(v4 + 425) = 0;
  *(v4 + 427) = 1;
  *(v4 + 432) = 0u;
  *(v4 + 448) = sub_100041BA4;
  *(v4 + 456) = 0;
  *(v4 + 464) = 0x3F80000000000000;
  *(v4 + 480) = xmmword_1000EF5A0;
  *(v4 + 496) = 1;
  v34 = vmulq_f32(xmmword_10013DCA0, 0);
  v427 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v362 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v34), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v340 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v34, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v287 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF90A3D7)), vdupq_n_s32(0x3FBEB852u), *algn_10013DCB0), vdupq_n_s32(0x3E051EB8u), xmmword_10013DCC0));
  sub_10001358C(v457, 1.7628, xmmword_1000EC910);
  v35 = sub_100013568(v457);
  v436 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v35.n128_f32[0]), v362, v35.n128_u64[0], 1), v340, v35, 2), v287, v35, 3);
  v402 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v36.f32[0]), v362, *v36.f32, 1), v340, v36, 2), v287, v36, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v37.f32[0]), v362, *v37.f32, 1), v340, v37, 2), v287, v37, 3);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v38.f32[0]), v362, *v38.f32, 1), v340, v38, 2), v287, v38, 3);
  sub_10001358C(v458, -2.5133, xmmword_1000EC8E0);
  v39 = sub_100013568(v458);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v40.f32[0]), v402, *v40.f32, 1), v313, v40, 2), v288, v40, 3);
  v341 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v41.f32[0]), v402, *v41.f32, 1), v313, v41, 2), v288, v41, 3);
  v428 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v39.n128_f32[0]), v402, v39.n128_u64[0], 1), v313, v39, 2), v288, v39, 3);
  v437 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v42.f32[0]), v402, *v42.f32, 1), v313, v42, 2), v288, v42, 3);
  sub_10001358C(v459, -0.12217, xmmword_1000EC920);
  v43 = sub_100013568(v459);
  v513 = 1;
  *(v4 + 512) = 0x3F1C28F63F666666;
  *(v4 + 520) = 1045220557;
  *(v4 + 524) = 1;
  *(v4 + 525) = v518;
  *(v4 + 527) = v519;
  *(v4 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v43.n128_f32[0]), v363, v43.n128_u64[0], 1), v341, v43, 2), v437, v43, 3);
  *(v4 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v44.f32[0]), v363, *v44.f32, 1), v341, v44, 2), v437, v44, 3);
  *(v4 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v45.f32[0]), v363, *v45.f32, 1), v341, v45, 2), v437, v45, 3);
  *(v4 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v46.f32[0]), v363, *v46.f32, 1), v341, v46, 2), v437, v46, 3);
  *(v4 + 592) = xmmword_1000EF9B0;
  *(v4 + 608) = 0;
  v47 = v516;
  *(v4 + 611) = v517;
  *(v4 + 609) = v47;
  *(v4 + 612) = 1101004800;
  *(v4 + 616) = 11;
  *(v4 + 617) = v514;
  *(v4 + 619) = v515;
  *(v4 + 620) = 1065353216;
  *(v4 + 640) = 0;
  *(v4 + 624) = 0u;
  *(v4 + 648) = v513;
  *(v4 + 649) = 0;
  *(v4 + 651) = 1;
  *(v4 + 656) = 0u;
  *(v4 + 672) = sub_100041C68;
  *(v4 + 680) = 0;
  *(v4 + 688) = 0x3F80000000000000;
  *(v4 + 704) = xmmword_1000EF5C0;
  *(v4 + 720) = 1;
  v48 = vmulq_f32(xmmword_10013DCA0, 0);
  v364 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v314 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v48), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v289 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v48, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v403 = vdupq_n_s32(0xBEB851EB);
  v249 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF570A3D)), vdupq_n_s32(0x3FB33333u), *algn_10013DCB0), v403, xmmword_10013DCC0));
  sub_10001358C(v460, 2.7402, xmmword_1000EC910);
  v49 = sub_100013568(v460);
  v429 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v49.n128_f32[0]), v314, v49.n128_u64[0], 1), v289, v49, 2), v249, v49, 3);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v50.f32[0]), v314, *v50.f32, 1), v289, v50, 2), v249, v50, 3);
  v270 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v51.f32[0]), v314, *v51.f32, 1), v289, v51, 2), v249, v51, 3);
  v250 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v52.f32[0]), v314, *v52.f32, 1), v289, v52, 2), v249, v52, 3);
  sub_10001358C(v461, -3.0718, xmmword_1000EC8E0);
  v53 = sub_100013568(v461);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v53.n128_f32[0]), v342, v53.n128_u64[0], 1), v270, v53, 2), v250, v53, 3);
  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v54.f32[0]), v342, *v54.f32, 1), v270, v54, 2), v250, v54, 3);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v55.f32[0]), v342, *v55.f32, 1), v270, v55, 2), v250, v55, 3);
  v430 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v56.f32[0]), v342, *v56.f32, 1), v270, v56, 2), v250, v56, 3);
  sub_10001358C(v462, 0.034907, xmmword_1000EC920);
  v57 = sub_100013568(v462);
  v520 = 1;
  *(v4 + 736) = 0x402666663FB5C28FLL;
  *(v4 + 744) = 1036831949;
  *(v4 + 748) = 1;
  *(v4 + 749) = v525;
  *(v4 + 751) = v526;
  *(v4 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v57.n128_f32[0]), v315, v57.n128_u64[0], 1), v290, v57, 2), v430, v57, 3);
  *(v4 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v58.f32[0]), v315, *v58.f32, 1), v290, v58, 2), v430, v58, 3);
  *(v4 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v59.f32[0]), v315, *v59.f32, 1), v290, v59, 2), v430, v59, 3);
  *(v4 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v60.f32[0]), v315, *v60.f32, 1), v290, v60, 2), v430, v60, 3);
  *(v4 + 816) = xmmword_1000EF9C0;
  *(v4 + 832) = 0;
  v61 = v523;
  *(v4 + 835) = v524;
  *(v4 + 833) = v61;
  *(v4 + 836) = 1076677837;
  *(v4 + 840) = 9;
  *(v4 + 841) = v521;
  *(v4 + 843) = v522;
  *(v4 + 844) = 1065353216;
  *(v4 + 848) = 0;
  *(v4 + 856) = 0u;
  *(v4 + 872) = v520;
  *(v4 + 873) = 0;
  *(v4 + 875) = 0;
  *(v4 + 880) = 0u;
  *(v4 + 896) = sub_100041D20;
  *(v4 + 904) = 0;
  *(v4 + 912) = 0x3F80000000000000;
  *(v4 + 928) = xmmword_1000EF5D0;
  *(v4 + 944) = 1;
  v62 = vmulq_f32(xmmword_10013DCA0, 0);
  v366 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v316 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v62), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v291 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v62, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v251 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF666666)), vdupq_n_s32(0x3F570A3Du), *algn_10013DCB0), v403, xmmword_10013DCC0));
  sub_10001358C(v463, 2.6354, xmmword_1000EC910);
  v63 = sub_100013568(v463);
  v404 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v63.n128_f32[0]), v316, v63.n128_u64[0], 1), v291, v63, 2), v251, v63, 3);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v64.f32[0]), v316, *v64.f32, 1), v291, v64, 2), v251, v64, 3);
  v271 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v65.f32[0]), v316, *v65.f32, 1), v291, v65, 2), v251, v65, 3);
  v252 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v66.f32[0]), v316, *v66.f32, 1), v291, v66, 2), v251, v66, 3);
  sub_10001358C(v464, -2.9147, xmmword_1000EC8E0);
  v67 = sub_100013568(v464);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v67.n128_f32[0]), v343, v67.n128_u64[0], 1), v271, v67, 2), v252, v67, 3);
  v317 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v68.f32[0]), v343, *v68.f32, 1), v271, v68, 2), v252, v68, 3);
  v292 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v69.f32[0]), v343, *v69.f32, 1), v271, v69, 2), v252, v69, 3);
  v405 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v70.f32[0]), v343, *v70.f32, 1), v271, v70, 2), v252, v70, 3);
  sub_10001358C(v465, 0.64577, xmmword_1000EC920);
  v71 = sub_100013568(v465);
  v527 = 1;
  *(v4 + 960) = 0x3F8CCCCD40600000;
  *(v4 + 968) = 1036831949;
  *(v4 + 972) = 1;
  *(v4 + 973) = v532;
  *(v4 + 975) = v533;
  *(v4 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v71.n128_f32[0]), v317, v71.n128_u64[0], 1), v292, v71, 2), v405, v71, 3);
  *(v4 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v72.f32[0]), v317, *v72.f32, 1), v292, v72, 2), v405, v72, 3);
  *(v4 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v73.f32[0]), v317, *v73.f32, 1), v292, v73, 2), v405, v73, 3);
  *(v4 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v74.f32[0]), v317, *v74.f32, 1), v292, v74, 2), v405, v74, 3);
  *(v4 + 1040) = xmmword_1000EF9D0;
  *(v4 + 1056) = 0;
  v75 = v530;
  *(v4 + 1059) = v531;
  *(v4 + 1057) = v75;
  *(v4 + 1060) = 1100480512;
  *(v4 + 1064) = 9;
  *(v4 + 1065) = v528;
  *(v4 + 1067) = v529;
  *(v4 + 1068) = 1065353216;
  *(v4 + 1072) = 0;
  *(v4 + 1080) = 0u;
  *(v4 + 1096) = v527;
  *(v4 + 1097) = 0;
  *(v4 + 1099) = 1;
  *(v4 + 1104) = 0u;
  *(v4 + 1120) = sub_100041DD0;
  *(v4 + 1128) = 0;
  *(v4 + 1136) = 0x3F80000000000000;
  *(v4 + 1152) = xmmword_1000EF5A0;
  *(v4 + 1168) = 2;
  v76 = vmulq_f32(xmmword_10013DCA0, 0);
  v368 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v318 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v76), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v293 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v76, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v253 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF051EB8)), vdupq_n_s32(0x3F91EB85u), *algn_10013DCB0), vdupq_n_s32(0x3F199999u), xmmword_10013DCC0));
  sub_10001358C(v466, 4.7124, xmmword_1000EC910);
  v77 = sub_100013568(v466);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v77.n128_f32[0]), v318, v77.n128_u64[0], 1), v293, v77, 2), v253, v77, 3);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v78.f32[0]), v318, *v78.f32, 1), v293, v78, 2), v253, v78, 3);
  v272 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v79.f32[0]), v318, *v79.f32, 1), v293, v79, 2), v253, v79, 3);
  v254 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v80.f32[0]), v318, *v80.f32, 1), v293, v80, 2), v253, v80, 3);
  sub_10001358C(v467, -0.0090757, xmmword_1000EC8E0);
  v81 = sub_100013568(v467);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v81.n128_f32[0]), v344, v81.n128_u64[0], 1), v272, v81, 2), v254, v81, 3);
  v319 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v82.f32[0]), v344, *v82.f32, 1), v272, v82, 2), v254, v82, 3);
  v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v83.f32[0]), v344, *v83.f32, 1), v272, v83, 2), v254, v83, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v84.f32[0]), v344, *v84.f32, 1), v272, v84, 2), v254, v84, 3);
  sub_10001358C(v468, -1.5708, xmmword_1000EC920);
  v85 = sub_100013568(v468);
  v534 = 1;
  *(v4 + 1184) = 0x3EFAE1483FE66666;
  *(v4 + 1192) = 1050253722;
  *(v4 + 1196) = 1;
  *(v4 + 1197) = v539;
  *(v4 + 1199) = v540;
  *(v4 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v85.n128_f32[0]), v319, v85.n128_u64[0], 1), v294, v85, 2), v407, v85, 3);
  *(v4 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v86.f32[0]), v319, *v86.f32, 1), v294, v86, 2), v407, v86, 3);
  *(v4 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v87.f32[0]), v319, *v87.f32, 1), v294, v87, 2), v407, v87, 3);
  *(v4 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v88.f32[0]), v319, *v88.f32, 1), v294, v88, 2), v407, v88, 3);
  *(v4 + 1264) = xmmword_1000EF9E0;
  *(v4 + 1280) = 0;
  v89 = v537;
  *(v4 + 1283) = v538;
  *(v4 + 1281) = v89;
  *(v4 + 1284) = 1101004800;
  *(v4 + 1288) = 13;
  *(v4 + 1289) = v535;
  *(v4 + 1291) = v536;
  *(v4 + 1292) = 1065353216;
  *(v4 + 1296) = 0;
  *(v4 + 1304) = 0u;
  *(v4 + 1320) = v534;
  *(v4 + 1321) = 0;
  *(v4 + 1323) = 0;
  *(v4 + 1328) = 0u;
  *(v4 + 1344) = sub_100041E98;
  *(v4 + 1352) = 0;
  *(v4 + 1360) = 0x3F80000000000000;
  *(v4 + 1376) = xmmword_1000EF5C0;
  *(v4 + 1392) = 9;
  v90 = vmulq_f32(xmmword_10013DCA0, 0);
  v408 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v345 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v90), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v295 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v90, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v255 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0D19999)), vdupq_n_s32(0x40B23D70u), *algn_10013DCB0), vdupq_n_s32(0xC09E147B), xmmword_10013DCC0));
  sub_10001358C(v469, 2.234, xmmword_1000EC910);
  v91 = sub_100013568(v469);
  v370 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v91.n128_f32[0]), v345, v91.n128_u64[0], 1), v295, v91, 2), v255, v91, 3);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v92.f32[0]), v345, *v92.f32, 1), v295, v92, 2), v255, v92, 3);
  v273 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v93.f32[0]), v345, *v93.f32, 1), v295, v93, 2), v255, v93, 3);
  v256 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v94.f32[0]), v345, *v94.f32, 1), v295, v94, 2), v255, v94, 3);
  sub_10001358C(v470, -2.426, xmmword_1000EC8E0);
  v95 = sub_100013568(v470);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v95.n128_f32[0]), v320, v95.n128_u64[0], 1), v273, v95, 2), v256, v95, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v96.f32[0]), v320, *v96.f32, 1), v273, v96, 2), v256, v96, 3);
  v296 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v97.f32[0]), v320, *v97.f32, 1), v273, v97, 2), v256, v97, 3);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v98.f32[0]), v320, *v98.f32, 1), v273, v98, 2), v256, v98, 3);
  sub_10001358C(v471, 0.14835, xmmword_1000EC920);
  v99 = sub_100013568(v471);
  v541 = 0;
  *(v4 + 1408) = 0x40A1EB8540128F5CLL;
  *(v4 + 1416) = 1008981770;
  *(v4 + 1420) = 1;
  *(v4 + 1421) = v546;
  *(v4 + 1423) = v547;
  *(v4 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v409, v99.n128_f32[0]), v346, v99.n128_u64[0], 1), v296, v99, 2), v371, v99, 3);
  *(v4 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v409, v100.f32[0]), v346, *v100.f32, 1), v296, v100, 2), v371, v100, 3);
  *(v4 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v409, v101.f32[0]), v346, *v101.f32, 1), v296, v101, 2), v371, v101, 3);
  *(v4 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v409, v102.f32[0]), v346, *v102.f32, 1), v296, v102, 2), v371, v102, 3);
  *(v4 + 1488) = xmmword_1000EF9F0;
  *(v4 + 1504) = 2;
  v103 = v544;
  *(v4 + 1507) = v545;
  *(v4 + 1505) = v103;
  *(v4 + 1508) = 1085485875;
  *(v4 + 1512) = 1;
  *(v4 + 1513) = v542;
  *(v4 + 1515) = v543;
  *(v4 + 1516) = 1061158912;
  *(v4 + 1520) = xmmword_1000EFA00;
  *(v4 + 1536) = 0x3F28F5C33DB851ECLL;
  *(v4 + 1544) = v541;
  *(v4 + 1545) = 1;
  *(v4 + 1547) = 1;
  *(v4 + 1552) = 0u;
  *(v4 + 1568) = sub_100041EC8;
  *(v4 + 1576) = 0;
  *(v4 + 1584) = 0x3F80000000000000;
  *(v4 + 1600) = xmmword_1000EF5D0;
  *(v4 + 1616) = 9;
  v104 = vmulq_f32(xmmword_10013DCA0, 0);
  v372 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v321 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v104), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v297 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v104, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v257 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0D75C29)), vdupq_n_s32(0x409E6666u), *algn_10013DCB0), vdupq_n_s32(0xC0AFAE14), xmmword_10013DCC0));
  sub_10001358C(v472, -0.8203, xmmword_1000EC910);
  v105 = sub_100013568(v472);
  v410 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v105.n128_f32[0]), v321, v105.n128_u64[0], 1), v297, v105, 2), v257, v105, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v106.f32[0]), v321, *v106.f32, 1), v297, v106, 2), v257, v106, 3);
  v274 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v107.f32[0]), v321, *v107.f32, 1), v297, v107, 2), v257, v107, 3);
  v258 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v108.f32[0]), v321, *v108.f32, 1), v297, v108, 2), v257, v108, 3);
  sub_10001358C(v473, -0.73304, xmmword_1000EC8E0);
  v109 = sub_100013568(v473);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v109.n128_f32[0]), v347, v109.n128_u64[0], 1), v274, v109, 2), v258, v109, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v110.f32[0]), v347, *v110.f32, 1), v274, v110, 2), v258, v110, 3);
  v298 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v111.f32[0]), v347, *v111.f32, 1), v274, v111, 2), v258, v111, 3);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v112.f32[0]), v347, *v112.f32, 1), v274, v112, 2), v258, v112, 3);
  sub_10001358C(v474, -2.9322, xmmword_1000EC920);
  v113 = sub_100013568(v474);
  v548 = 0;
  *(v4 + 1632) = 0x4120000040400000;
  *(v4 + 1640) = 1008981770;
  *(v4 + 1644) = 1;
  *(v4 + 1645) = v553;
  *(v4 + 1647) = v554;
  *(v4 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v113.n128_f32[0]), v322, v113.n128_u64[0], 1), v298, v113, 2), v411, v113, 3);
  *(v4 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v114.f32[0]), v322, *v114.f32, 1), v298, v114, 2), v411, v114, 3);
  *(v4 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v115.f32[0]), v322, *v115.f32, 1), v298, v115, 2), v411, v115, 3);
  *(v4 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v116.f32[0]), v322, *v116.f32, 1), v298, v116, 2), v411, v116, 3);
  *(v4 + 1712) = xmmword_1000EFA10;
  *(v4 + 1728) = 2;
  v117 = v551;
  *(v4 + 1731) = v552;
  *(v4 + 1729) = v117;
  *(v4 + 1732) = 1086324736;
  *(v4 + 1736) = 1;
  *(v4 + 1737) = v549;
  *(v4 + 1739) = v550;
  *(v4 + 1740) = 1061158912;
  *(v4 + 1744) = xmmword_1000EFA20;
  *(v4 + 1760) = 0x3EBD70A400000000;
  *(v4 + 1768) = v548;
  *(v4 + 1769) = 1;
  *(v4 + 1771) = 1;
  *(v4 + 1776) = 0u;
  *(v4 + 1792) = sub_100042024;
  *(v4 + 1800) = 0;
  *(v4 + 1808) = 0x3F80000000000000;
  *(v4 + 1824) = xmmword_1000EF5A0;
  *(v4 + 1840) = 4;
  v118 = vmulq_f32(xmmword_10013DCA0, 0);
  v374 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v323 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v118), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v299 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v118, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v259 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3DF5C28Fu)), vdupq_n_s32(0x3EDC28F5u), *algn_10013DCB0), vdupq_n_s32(0xBE851EB8), xmmword_10013DCC0));
  sub_10001358C(v475, 1.5708, xmmword_1000EC910);
  v119 = sub_100013568(v475);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v119.n128_f32[0]), v323, v119.n128_u64[0], 1), v299, v119, 2), v259, v119, 3);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v120.f32[0]), v323, *v120.f32, 1), v299, v120, 2), v259, v120, 3);
  v275 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v121.f32[0]), v323, *v121.f32, 1), v299, v121, 2), v259, v121, 3);
  v260 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v122.f32[0]), v323, *v122.f32, 1), v299, v122, 2), v259, v122, 3);
  sub_10001358C(v476, -0.82903, xmmword_1000EC8E0);
  v123 = sub_100013568(v476);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v123.n128_f32[0]), v348, v123.n128_u64[0], 1), v275, v123, 2), v260, v123, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v124.f32[0]), v348, *v124.f32, 1), v275, v124, 2), v260, v124, 3);
  v300 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v125.f32[0]), v348, *v125.f32, 1), v275, v125, 2), v260, v125, 3);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v126.f32[0]), v348, *v126.f32, 1), v275, v126, 2), v260, v126, 3);
  sub_10001358C(v477, 1.5708, xmmword_1000EC920);
  v127 = sub_100013568(v477);
  v555 = 1;
  *(v4 + 1856) = 0x3F35C28F3FE66666;
  *(v4 + 1864) = 1045220557;
  *(v4 + 1868) = 1;
  *(v4 + 1869) = v560;
  *(v4 + 1871) = v561;
  *(v4 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v127.n128_f32[0]), v324, v127.n128_u64[0], 1), v300, v127, 2), v413, v127, 3);
  *(v4 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v128.f32[0]), v324, *v128.f32, 1), v300, v128, 2), v413, v128, 3);
  *(v4 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v129.f32[0]), v324, *v129.f32, 1), v300, v129, 2), v413, v129, 3);
  *(v4 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v130.f32[0]), v324, *v130.f32, 1), v300, v130, 2), v413, v130, 3);
  *(v4 + 1936) = xmmword_1000EFA30;
  *(v4 + 1952) = 0;
  v131 = v558;
  *(v4 + 1955) = v559;
  *(v4 + 1953) = v131;
  *(v4 + 1956) = 1088002458;
  *(v4 + 1960) = 9;
  *(v4 + 1961) = v556;
  *(v4 + 1963) = v557;
  *(v4 + 1964) = 1065353216;
  *(v4 + 1968) = 0;
  *(v4 + 1976) = 0u;
  *(v4 + 1992) = v555;
  *(v4 + 1993) = 1;
  *(v4 + 1995) = 0;
  *(v4 + 2000) = 0u;
  *(v4 + 2016) = sub_1000420E8;
  *(v4 + 2024) = 0;
  *(v4 + 2032) = 0x3F28F5C300000000;
  *(v4 + 2048) = xmmword_1000EF5A0;
  *(v4 + 2064) = 3;
  v132 = vmulq_f32(xmmword_10013DCA0, 0);
  v376 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v325 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v132), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v301 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v132, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v261 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E4CCCCCu)), vdupq_n_s32(0x3F970A3Du), *algn_10013DCB0), vdupq_n_s32(0xBFAF5C29), xmmword_10013DCC0));
  sub_10001358C(v478, 3.2987, xmmword_1000EC910);
  v133 = sub_100013568(v478);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v133.n128_f32[0]), v325, v133.n128_u64[0], 1), v301, v133, 2), v261, v133, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v134.f32[0]), v325, *v134.f32, 1), v301, v134, 2), v261, v134, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v135.f32[0]), v325, *v135.f32, 1), v301, v135, 2), v261, v135, 3);
  v262 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v136.f32[0]), v325, *v136.f32, 1), v301, v136, 2), v261, v136, 3);
  sub_10001358C(v479, -2.4086, xmmword_1000EC8E0);
  v137 = sub_100013568(v479);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v137.n128_f32[0]), v349, v137.n128_u64[0], 1), v276, v137, 2), v262, v137, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v138.f32[0]), v349, *v138.f32, 1), v276, v138, 2), v262, v138, 3);
  v302 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v139.f32[0]), v349, *v139.f32, 1), v276, v139, 2), v262, v139, 3);
  v415 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v140.f32[0]), v349, *v140.f32, 1), v276, v140, 2), v262, v140, 3);
  sub_10001358C(v480, 0.64577, xmmword_1000EC920);
  v141 = sub_100013568(v480);
  v562 = 1;
  *(v4 + 2080) = 0x3F851EB84070A3D7;
  *(v4 + 2088) = 1036831949;
  *(v4 + 2092) = 1;
  *(v4 + 2093) = v567;
  *(v4 + 2095) = v568;
  *(v4 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377, v141.n128_f32[0]), v326, v141.n128_u64[0], 1), v302, v141, 2), v415, v141, 3);
  *(v4 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377, v142.f32[0]), v326, *v142.f32, 1), v302, v142, 2), v415, v142, 3);
  *(v4 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377, v143.f32[0]), v326, *v143.f32, 1), v302, v143, 2), v415, v143, 3);
  *(v4 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377, v144.f32[0]), v326, *v144.f32, 1), v302, v144, 2), v415, v144, 3);
  *(v4 + 2160) = xmmword_1000EFA40;
  *(v4 + 2176) = 0;
  v145 = v565;
  *(v4 + 2179) = v566;
  *(v4 + 2177) = v145;
  *(v4 + 2180) = 1066192077;
  *(v4 + 2184) = 9;
  *(v4 + 2185) = v563;
  *(v4 + 2187) = v564;
  *(v4 + 2188) = 1065353216;
  *(v4 + 2192) = 0;
  *(v4 + 2200) = 0u;
  *(v4 + 2216) = v562;
  *(v4 + 2217) = 1;
  *(v4 + 2219) = 0;
  *(v4 + 2224) = 0u;
  *(v4 + 2240) = sub_100042188;
  *(v4 + 2248) = 0;
  *(v4 + 2256) = 0x3F80000000000000;
  *(v4 + 2272) = xmmword_1000EF5C0;
  *(v4 + 2288) = 3;
  v146 = vmulq_f32(xmmword_10013DCA0, 0);
  v378 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v327 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v146), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v303 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v146, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v263 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0047AE1)), vdupq_n_s32(0xBEAE147B), *algn_10013DCB0), vdupq_n_s32(0xC05F5C29), xmmword_10013DCC0));
  sub_10001358C(v481, -0.76794, xmmword_1000EC910);
  v147 = sub_100013568(v481);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v147.n128_f32[0]), v327, v147.n128_u64[0], 1), v303, v147, 2), v263, v147, 3);
  v350 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v148.f32[0]), v327, *v148.f32, 1), v303, v148, 2), v263, v148, 3);
  v277 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v149.f32[0]), v327, *v149.f32, 1), v303, v149, 2), v263, v149, 3);
  v264 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v150.f32[0]), v327, *v150.f32, 1), v303, v150, 2), v263, v150, 3);
  sub_10001358C(v482, -0.034907, xmmword_1000EC8E0);
  v151 = sub_100013568(v482);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v151.n128_f32[0]), v350, v151.n128_u64[0], 1), v277, v151, 2), v264, v151, 3);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v152.f32[0]), v350, *v152.f32, 1), v277, v152, 2), v264, v152, 3);
  v304 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v153.f32[0]), v350, *v153.f32, 1), v277, v153, 2), v264, v153, 3);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v154.f32[0]), v350, *v154.f32, 1), v277, v154, 2), v264, v154, 3);
  sub_10001358C(v483, 0.36652, xmmword_1000EC920);
  v155 = sub_100013568(v483);
  v569 = 1;
  *(v4 + 2304) = 0x3FEB851F3F90A3D7;
  *(v4 + 2312) = 1034147594;
  *(v4 + 2316) = 1;
  *(v4 + 2317) = v574;
  *(v4 + 2319) = v575;
  *(v4 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v379, v155.n128_f32[0]), v328, v155.n128_u64[0], 1), v304, v155, 2), v417, v155, 3);
  *(v4 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v379, v156.f32[0]), v328, *v156.f32, 1), v304, v156, 2), v417, v156, 3);
  *(v4 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v379, v157.f32[0]), v328, *v157.f32, 1), v304, v157, 2), v417, v157, 3);
  *(v4 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v379, v158.f32[0]), v328, *v158.f32, 1), v304, v158, 2), v417, v158, 3);
  *(v4 + 2384) = xmmword_1000EFA50;
  *(v4 + 2400) = 0;
  v159 = v572;
  *(v4 + 2403) = v573;
  *(v4 + 2401) = v159;
  *(v4 + 2404) = 1059313418;
  *(v4 + 2408) = 13;
  *(v4 + 2409) = v570;
  *(v4 + 2411) = v571;
  *(v4 + 2412) = 1065353216;
  *(v4 + 2416) = 0;
  *(v4 + 2424) = 0u;
  *(v4 + 2440) = v569;
  *(v4 + 2441) = 1;
  *(v4 + 2443) = 0;
  *(v4 + 2448) = 0u;
  *(v4 + 2464) = sub_100042240;
  *(v4 + 2472) = 0;
  *(v4 + 2480) = 0x3F80000000000000;
  *(v4 + 2496) = xmmword_1000EF630;
  *(v4 + 2512) = 9;
  v160 = vmulq_f32(xmmword_10013DCA0, 0);
  __asm { FMOV            V5.4S, #-3.5 }

  v418 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v351 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v160), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v305 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v160, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v265 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, _Q5), vdupq_n_s32(0x40847AE1u), *algn_10013DCB0), vdupq_n_s32(0x4063D70Au), xmmword_10013DCC0));
  sub_10001358C(v484, -1.2392, xmmword_1000EC910);
  v166 = sub_100013568(v484);
  v380 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v166.n128_f32[0]), v351, v166.n128_u64[0], 1), v305, v166, 2), v265, v166, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v167.f32[0]), v351, *v167.f32, 1), v305, v167, 2), v265, v167, 3);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v168.f32[0]), v351, *v168.f32, 1), v305, v168, 2), v265, v168, 3);
  v266 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v169.f32[0]), v351, *v169.f32, 1), v305, v169, 2), v265, v169, 3);
  sub_10001358C(v485, -0.73304, xmmword_1000EC8E0);
  v170 = sub_100013568(v485);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v170.n128_f32[0]), v329, v170.n128_u64[0], 1), v278, v170, 2), v266, v170, 3);
  v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v171.f32[0]), v329, *v171.f32, 1), v278, v171, 2), v266, v171, 3);
  v306 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v172.f32[0]), v329, *v172.f32, 1), v278, v172, 2), v266, v172, 3);
  v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v173.f32[0]), v329, *v173.f32, 1), v278, v173, 2), v266, v173, 3);
  sub_10001358C(v486, -0.17453, xmmword_1000EC920);
  v174 = sub_100013568(v486);
  v576 = 1;
  *(v4 + 2528) = 0x4040000040400000;
  *(v4 + 2536) = 1048576000;
  *(v4 + 2540) = 1;
  *(v4 + 2541) = v581;
  *(v4 + 2543) = v582;
  *(v4 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v174.n128_f32[0]), v352, v174.n128_u64[0], 1), v306, v174, 2), v381, v174, 3);
  *(v4 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v175.f32[0]), v352, *v175.f32, 1), v306, v175, 2), v381, v175, 3);
  *(v4 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v176.f32[0]), v352, *v176.f32, 1), v306, v176, 2), v381, v176, 3);
  *(v4 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v177.f32[0]), v352, *v177.f32, 1), v306, v177, 2), v381, v177, 3);
  *(v4 + 2608) = xmmword_1000EC900;
  *(v4 + 2624) = 0;
  v178 = v579;
  *(v4 + 2627) = v580;
  *(v4 + 2625) = v178;
  *(v4 + 2628) = 1077516698;
  *(v4 + 2632) = 1;
  *(v4 + 2633) = v577;
  *(v4 + 2635) = v578;
  *(v4 + 2636) = 1053944709;
  *(v4 + 2640) = 0;
  *(v4 + 2648) = 0u;
  *(v4 + 2664) = v576;
  *(v4 + 2665) = 3;
  *(v4 + 2667) = 1;
  *(v4 + 2672) = 0u;
  *(v4 + 2688) = sub_100042270;
  *(v4 + 2696) = 0;
  *(v4 + 2704) = 0x3F80000000000000;
  *(v4 + 2720) = xmmword_1000EF5A0;
  *(v4 + 2736) = 5;
  v179 = vmulq_f32(xmmword_10013DCA0, 0);
  v353 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v307 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v179), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v279 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v179, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v247 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFCCCCCC)), vdupq_n_s32(0x40233333u), *algn_10013DCB0), vdupq_n_s32(0x4041EB85u), xmmword_10013DCC0));
  sub_10001358C(v487, -0.69813, xmmword_1000EC910);
  v180 = sub_100013568(v487);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v180.n128_f32[0]), v307, v180.n128_u64[0], 1), v279, v180, 2), v247, v180, 3);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v181.f32[0]), v307, *v181.f32, 1), v279, v181, 2), v247, v181, 3);
  v267 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v182.f32[0]), v307, *v182.f32, 1), v279, v182, 2), v247, v182, 3);
  v248 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v183.f32[0]), v307, *v183.f32, 1), v279, v183, 2), v247, v183, 3);
  sub_10001358C(v488, 0.0, xmmword_1000EC8E0);
  v184 = sub_100013568(v488);
  v308 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v185.f32[0]), v330, *v185.f32, 1), v267, v185, 2), v248, v185, 3);
  v280 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v186.f32[0]), v330, *v186.f32, 1), v267, v186, 2), v248, v186, 3);
  v354 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v184.n128_f32[0]), v330, v184.n128_u64[0], 1), v267, v184, 2), v248, v184, 3);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v187.f32[0]), v330, *v187.f32, 1), v267, v187, 2), v248, v187, 3);
  sub_10001358C(v489, 0.0, xmmword_1000EC920);
  v188 = sub_100013568(v489);
  v583 = 1;
  *(v4 + 2752) = 0x408D1EB83FF0A3D7;
  *(v4 + 2760) = 1048576000;
  *(v4 + 2764) = 1;
  *(v4 + 2765) = v588;
  *(v4 + 2767) = v589;
  *(v4 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v188.n128_f32[0]), v308, v188.n128_u64[0], 1), v280, v188, 2), v383, v188, 3);
  *(v4 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v189.f32[0]), v308, *v189.f32, 1), v280, v189, 2), v383, v189, 3);
  *(v4 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v190.f32[0]), v308, *v190.f32, 1), v280, v190, 2), v383, v190, 3);
  *(v4 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v191.f32[0]), v308, *v191.f32, 1), v280, v191, 2), v383, v191, 3);
  *(v4 + 2832) = xmmword_1000EC900;
  *(v4 + 2848) = 0;
  v192 = v586;
  *(v4 + 2851) = v587;
  *(v4 + 2849) = v192;
  *(v4 + 2852) = 1068708659;
  *(v4 + 2856) = 9;
  *(v4 + 2857) = v584;
  *(v4 + 2859) = v585;
  *(v4 + 2860) = 1065353216;
  *(v4 + 2864) = 0;
  *(v4 + 2872) = 0u;
  *(v4 + 2888) = v583;
  *(v4 + 2889) = 3;
  *(v4 + 2891) = 1;
  *(v4 + 2896) = 0u;
  *(v4 + 2912) = sub_1000815FC;
  *(v4 + 2920) = 0;
  *(v4 + 2928) = 0x3F80000000000000;
  *(v4 + 2944) = xmmword_1000EF5C0;
  *(v4 + 2960) = 5;
  v193 = vmulq_f32(xmmword_10013DCA0, 0);
  v384 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v331 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v193), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v281 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v193, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v268 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD1EB85u)), vdupq_n_s32(0xC00EB852), *algn_10013DCB0), vdupq_n_s32(0x40047AE1u), xmmword_10013DCC0));
  sub_10001358C(v490, 0.0, xmmword_1000EC910);
  v194 = sub_100013568(v490);
  v438 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v194.n128_f32[0]), v331, v194.n128_u64[0], 1), v281, v194, 2), v268, v194, 3);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v195.f32[0]), v331, *v195.f32, 1), v281, v195, 2), v268, v195, 3);
  v309 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v196.f32[0]), v331, *v196.f32, 1), v281, v196, 2), v268, v196, 3);
  v269 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v197.f32[0]), v331, *v197.f32, 1), v281, v197, 2), v268, v197, 3);
  sub_10001358C(v491, 0.54105, xmmword_1000EC8E0);
  v198 = sub_100013568(v491);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v198.n128_f32[0]), v355, v198.n128_u64[0], 1), v309, v198, 2), v269, v198, 3);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v199.f32[0]), v355, *v199.f32, 1), v309, v199, 2), v269, v199, 3);
  v282 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v200.f32[0]), v355, *v200.f32, 1), v309, v200, 2), v269, v200, 3);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v201.f32[0]), v355, *v201.f32, 1), v309, v201, 2), v269, v201, 3);
  sub_10001358C(v492, 0.0, xmmword_1000EC920);
  v202 = sub_100013568(v492);
  v590 = 1;
  *(v4 + 2976) = 0x4053D70A3FF0A3D7;
  *(v4 + 2984) = 1053609165;
  *(v4 + 2988) = 1;
  *(v4 + 2989) = v595;
  *(v4 + 2991) = v596;
  *(v4 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v202.n128_f32[0]), v332, v202.n128_u64[0], 1), v282, v202, 2), v439, v202, 3);
  *(v4 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v203.f32[0]), v332, *v203.f32, 1), v282, v203, 2), v439, v203, 3);
  *(v4 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v204.f32[0]), v332, *v204.f32, 1), v282, v204, 2), v439, v204, 3);
  *(v4 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v205.f32[0]), v332, *v205.f32, 1), v282, v205, 2), v439, v205, 3);
  *(v4 + 3056) = xmmword_1000EC900;
  *(v4 + 3072) = 0;
  v206 = v593;
  *(v4 + 3075) = v594;
  *(v4 + 3073) = v206;
  *(v4 + 3076) = 1094713344;
  *(v4 + 3080) = 9;
  *(v4 + 3081) = v591;
  *(v4 + 3083) = v592;
  *(v4 + 3084) = 1065353216;
  *(v4 + 3088) = 0;
  *(v4 + 3096) = 0u;
  *(v4 + 3112) = v590;
  *(v4 + 3113) = 3;
  *(v4 + 3115) = 1;
  *(v4 + 3120) = 0u;
  *(v4 + 3136) = sub_10004232C;
  *(v4 + 3144) = 0;
  *(v4 + 3152) = 0x3F80000000000000;
  *(v4 + 3168) = xmmword_1000EF5A0;
  *(v4 + 3184) = 6;
  v207 = vmulq_f32(xmmword_10013DCA0, 0);
  v420 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v356 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v207), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v333 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v207, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v444 = vdupq_n_s32(0xBF8E147B);
  v283 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBECCCCCC)), vdupq_n_s32(0x3F9851EBu), *algn_10013DCB0), v444, xmmword_10013DCC0));
  sub_10001358C(v493, 1.5708, xmmword_1000EC910);
  v208 = sub_100013568(v493);
  v440 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v208.n128_f32[0]), v356, v208.n128_u64[0], 1), v333, v208, 2), v283, v208, 3);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v209.f32[0]), v356, *v209.f32, 1), v333, v209, 2), v283, v209, 3);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v210.f32[0]), v356, *v210.f32, 1), v333, v210, 2), v283, v210, 3);
  v284 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v211.f32[0]), v356, *v211.f32, 1), v333, v211, 2), v283, v211, 3);
  sub_10001358C(v494, -3.4034, xmmword_1000EC8E0);
  v212 = sub_100013568(v494);
  v421 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v212.n128_f32[0]), v386, v212.n128_u64[0], 1), v310, v212, 2), v284, v212, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v213.f32[0]), v386, *v213.f32, 1), v310, v213, 2), v284, v213, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v214.f32[0]), v386, *v214.f32, 1), v310, v214, 2), v284, v214, 3);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v215.f32[0]), v386, *v215.f32, 1), v310, v215, 2), v284, v215, 3);
  sub_10001358C(v495, 1.5708, xmmword_1000EC920);
  v216 = sub_100013568(v495);
  v597 = 1;
  *(v4 + 3200) = 0x3F99999A3F800000;
  *(v4 + 3208) = 1056964608;
  *(v4 + 3212) = 1;
  *(v4 + 3213) = v602;
  *(v4 + 3215) = v603;
  *(v4 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v216.n128_f32[0]), v357, v216.n128_u64[0], 1), v334, v216, 2), v441, v216, 3);
  *(v4 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v217.f32[0]), v357, *v217.f32, 1), v334, v217, 2), v441, v217, 3);
  *(v4 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v218.f32[0]), v357, *v218.f32, 1), v334, v218, 2), v441, v218, 3);
  *(v4 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v219.f32[0]), v357, *v219.f32, 1), v334, v219, 2), v441, v219, 3);
  *(v4 + 3280) = xmmword_1000EFA60;
  *(v4 + 3296) = 0;
  v220 = v600;
  *(v4 + 3299) = v601;
  *(v4 + 3297) = v220;
  *(v4 + 3300) = 1056964608;
  *(v4 + 3304) = 9;
  *(v4 + 3305) = v598;
  *(v4 + 3307) = v599;
  *(v4 + 3308) = 1065353216;
  *(v4 + 3312) = 0;
  *(v4 + 3320) = 0u;
  *(v4 + 3336) = v597;
  *(v4 + 3337) = 2;
  *(v4 + 3339) = 1;
  *(v4 + 3344) = 0u;
  *(v4 + 3360) = sub_10004235C;
  *(v4 + 3368) = 0;
  *(v4 + 3376) = 0x3F80000000000000;
  *(v4 + 3392) = xmmword_1000EF5D0;
  *(v4 + 3408) = 6;
  v221 = vmulq_f32(xmmword_10013DCA0, 0);
  v387 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v358 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v221), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v335 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v221, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v445 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF6147AE)), vdupq_n_s32(0xBF9D70A4), *algn_10013DCB0), v444, xmmword_10013DCC0));
  sub_10001358C(v496, 1.5708, xmmword_1000EC910);
  v222 = sub_100013568(v496);
  v431 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v223.f32[0]), v358, *v223.f32, 1), v335, v223, 2), v445, v223, 3);
  v442 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v222.n128_f32[0]), v358, v222.n128_u64[0], 1), v335, v222, 2), v445, v222, 3);
  v422 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v224.f32[0]), v358, *v224.f32, 1), v335, v224, 2), v445, v224, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v225.f32[0]), v358, *v225.f32, 1), v335, v225, 2), v445, v225, 3);
  sub_10001358C(v497, -2.2864, xmmword_1000EC8E0);
  v226 = sub_100013568(v497);
  v449 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v227.f32[0]), v431, *v227.f32, 1), v422, v227, 2), v388, v227, 3);
  v450 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v226.n128_f32[0]), v431, v226.n128_u64[0], 1), v422, v226, 2), v388, v226, 3);
  v446 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v228.f32[0]), v431, *v228.f32, 1), v422, v228, 2), v388, v228, 3);
  v443 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v229.f32[0]), v431, *v229.f32, 1), v422, v229, 2), v388, v229, 3);
  sub_10001358C(v498, 1.5708, xmmword_1000EC920);
  v230 = sub_100013568(v498);
  v604 = 1;
  *(v4 + 3424) = 0x3F8CCCCD3F4A3D71;
  *(v4 + 3432) = 1056964608;
  *(v4 + 3436) = 1;
  *(v4 + 3437) = v609;
  *(v4 + 3439) = v610;
  *(v4 + 3440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v230.n128_f32[0]), v449, v230.n128_u64[0], 1), v446, v230, 2), v443, v230, 3);
  *(v4 + 3456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v231.f32[0]), v449, *v231.f32, 1), v446, v231, 2), v443, v231, 3);
  *(v4 + 3472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v232.f32[0]), v449, *v232.f32, 1), v446, v232, 2), v443, v232, 3);
  *(v4 + 3488) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v233.f32[0]), v449, *v233.f32, 1), v446, v233, 2), v443, v233, 3);
  *(v4 + 3504) = xmmword_1000EFA70;
  *(v4 + 3520) = 0;
  v234 = v607;
  *(v4 + 3523) = v608;
  *(v4 + 3521) = v234;
  *(v4 + 3524) = 1060152279;
  *(v4 + 3528) = 9;
  *(v4 + 3529) = v605;
  *(v4 + 3531) = v606;
  *(v4 + 3532) = 1065353216;
  *(v4 + 3536) = 0;
  *(v4 + 3544) = 0u;
  *(v4 + 3560) = v604;
  *(v4 + 3561) = 2;
  *(v4 + 3563) = 1;
  *(v4 + 3568) = 0u;
  *(v4 + 3584) = sub_100042414;
  *(v4 + 3592) = 0;
  *(v4 + 3600) = 0x3F80000000000000;
  v235 = sub_1000A0774(v4);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020);
  v236 = swift_allocObject();
  v236[1] = xmmword_1000EC880;
  v236[2] = xmmword_1000EFA80;
  v236[3] = xmmword_1000EFA90;
  v237 = swift_allocObject();
  v237[1] = xmmword_1000EC880;
  v237[2] = xmmword_1000EFAA0;
  v237[3] = xmmword_1000EFAB0;
  v238 = swift_allocObject();
  v238[1] = xmmword_1000ED250;
  v238[2] = xmmword_1000EFAC0;
  v238[3] = xmmword_1000EFAD0;
  v238[4] = xmmword_1000EFAE0;
  v239 = qword_10013AC20;
  v240 = unk_10013AC28;
  v241 = qword_10013AC30;

  v242 = qword_10013AC50;
  v243 = sub_1000A0A98(_swiftEmptyArrayStorage);
  swift_bridgeObjectRetain_n();
  v244 = sub_1000C1928(v235);

  sub_1000C53DC(v244, v613);
  v245 = sub_1000C199C(v235);

  sub_1000C53DC(v245, v611);
  xmmword_10013AE70 = v398;
  unk_10013AE80 = v397;
  qword_10013AE90 = v396;
  dword_10013AE98 = v0;
  xmmword_10013AEA0 = v395;
  unk_10013AEB0 = v394;
  qword_10013AEC0 = v1;
  dword_10013AEC8 = v2;
  xmmword_10013AED0 = v393;
  qword_10013AEE0 = v3;
  xmmword_10013AEF0 = v392;
  qword_10013AF00 = v391;
  unk_10013AF08 = v390;
  dword_10013AF10 = v389;
  qword_10013AF18 = 0;
  unk_10013AF20 = v235;
  qword_10013AF48 = v614;
  unk_10013AF38 = v613[1];
  unk_10013AF28 = v613[0];
  xmmword_10013AF50 = v611[0];
  unk_10013AF60 = v611[1];
  qword_10013AF70 = v612;
  qword_10013AF78 = sub_1000424EC;
  qword_10013AF80 = 0;
  xmmword_10013AF90 = xmmword_1000EFAF0;
  unk_10013AFA0 = xmmword_1000EFB00;
  qword_10013AFB0 = v236;
  word_10013AFBC = 5;
  dword_10013AFB8 = 0;
  xmmword_10013AFC0 = xmmword_1000EFB10;
  qword_10013AFD0 = v237;
  xmmword_10013AFD8 = xmmword_1000EFB20;
  xmmword_10013AFE8 = xmmword_1000EFB30;
  qword_10013AFF8 = 1060550327;
  unk_10013B000 = v238;
  xmmword_10013B008 = xmmword_1000EFB40;
  xmmword_10013B018 = xmmword_1000EFB50;
  qword_10013B028 = 1063182047;
  result = 0.000218769215;
  xmmword_10013B030 = xmmword_1000EFB60;
  qword_10013B040 = v239;
  unk_10013B048 = v240;
  qword_10013B050 = v241;
  unk_10013B058 = v243;
  qword_10013B060 = _swiftEmptyArrayStorage;
  unk_10013B068 = _swiftEmptyArrayStorage;
  qword_10013B070 = v242;
  return result;
}

double sub_100041BA4(uint64_t a1, float a2)
{
  *(a1 + 100) = ((*(a1 + 100) + -6.4) * a2) + 6.4;
  *(a1 + 108) = ((*(a1 + 108) + -0.15) * a2) + 0.15;
  v7 = xmmword_1000EFB70;
  v8 = 0x3F0F5C2900000000;
  sub_1000BAC84(*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), &v5, a2);
  v3 = v6;
  result = *&v5;
  *(a1 + 112) = v5;
  *(a1 + 128) = v3;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_100041C68(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.13) * a2) + 0.13;
    *result = COERCE_UNSIGNED_INT(((*result + -1.0) * a2) + 1.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.61) * a2) + 0.61) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -5.2) * a2) + 5.2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100041D20(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.1) * a2) + 0.1;
    *result = COERCE_UNSIGNED_INT(((*result + -2.6) * a2) + 2.6) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.6) * a2) + 2.6) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.021) * a2) + 0.021;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100041DD0(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.053) * a2) + 0.053;
    *result = COERCE_UNSIGNED_INT(((*result + -3.6) * a2) + 3.6) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.56) * a2) + 0.56) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.1) * a2) + 2.1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_100041E98(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -3.9) * a2) + 3.9;
  *(a1 + 100) = result;
  return result;
}

void sub_100041EC8(uint64_t a1, float a2)
{
  if (*(a1 + 12) == 1)
  {
    v11 = v2;
    v12 = v3;
    v5 = ((*(a1 + 8) + -0.11) * a2) + 0.11;
    *a1 = COERCE_UNSIGNED_INT(((*a1 + -2.3) * a2) + 2.3) | (COERCE_UNSIGNED_INT(((*(a1 + 4) + -5.1) * a2) + 5.1) << 32);
    *(a1 + 8) = v5;
    *(a1 + 100) = ((*(a1 + 100) + -0.78) * a2) + 0.78;
    *(a1 + 108) = ((*(a1 + 108) + -0.19) * a2) + 0.19;
    v9 = xmmword_1000EFB80;
    v10 = 0x3F80000000000000;
    sub_1000BAC84(*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), &v7, a2);
    v6 = v8;
    *(a1 + 112) = v7;
    *(a1 + 128) = v6;
    *(a1 + 136) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100042024(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -5.0) * a2) + 5.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -10.0) * a2) + 10.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.2) * a2) + 0.2;
    *(result + 108) = ((*(result + 108) + -0.8) * a2) + 0.8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000420E8(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.8) * a2) + 1.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.71) * a2) + 0.71) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.8) * a2) + 1.8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100042188(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.1) * a2) + 0.1;
    *result = COERCE_UNSIGNED_INT(((*result + -3.8) * a2) + 3.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -5.0) * a2) + 5.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.18) * a2) + 0.18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_100042240(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.045) * a2) + 0.045;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_100042270(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -3.0) * a2) + 3.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.0) * a2) + 3.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.22) * a2) + 0.22;
    *(result + 108) = ((*(result + 108) + -0.28) * a2) + 0.28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10004232C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.43) * a2) + 0.43;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10004235C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.3) * a2) + 1.3) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.2) * a2) + 1.2) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.66) * a2) + 0.66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100042414(uint64_t a1, float a2)
{
  if (*(a1 + 12) == 1)
  {
    v3 = ((*(a1 + 8) + -0.5) * a2) + 0.5;
    *a1 = COERCE_UNSIGNED_INT(((*a1 + -2.7) * a2) + 2.7) | (COERCE_UNSIGNED_INT(((*(a1 + 4) + -1.1) * a2) + 1.1) << 32);
    *(a1 + 8) = v3;
    sub_1000BA464(*(a1 + 80), *(a1 + 88), *(a1 + 96), 0x3EF4F4F53F800000, 1051240617, 0, a2);
    *(a1 + 80) = v4;
    *(a1 + 88) = v5;
    *(a1 + 96) = v6;
  }

  else
  {
    __break(1u);
  }
}

float32x2_t sub_1000424EC(float a1)
{
  v1 = a1;
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v2 = a1 * 3.1416;
  if (v1 >= 1.0)
  {
    v2 = 3.1416;
  }

  return vmul_n_f32(vadd_f32(vmul_n_f32(0x3E99999A3EF0A3D8, fminf(v1 / 0.875, 1.0)), 0x3F3333333F07AE14), ((0.5 - (cosf(v2) * 0.5)) * 0.984) + 0.016);
}

double sub_1000425A8()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v480 = unk_10013AA60;
  v481 = xmmword_10013AA50;
  v479 = qword_10013AA70;
  v0 = dword_10013AA78;
  v477 = unk_10013AA90;
  v478 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v2 = dword_10013AAA8;
  v476 = xmmword_10013AAB0;
  v475 = qword_10013AAC0;
  v474 = xmmword_10013AAD0;
  v472 = unk_10013AAE8;
  v473 = qword_10013AAE0;
  v471 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000EF780;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v4 = vmulq_f32(xmmword_10013DCA0, 0);
  v510 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v501 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v4), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v482 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v4, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v438 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0BF0A3D)), vdupq_n_s32(0x40CEB852u), *algn_10013DCB0), vdupq_n_s32(0xC053D70A), xmmword_10013DCC0));
  sub_10001358C(v513, -0.90757, xmmword_1000EC910);
  v5 = sub_100013568(v513);
  v509 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v510, v5.n128_f32[0]), v501, v5.n128_u64[0], 1), v482, v5, 2), v438, v5, 3);
  v489 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v510, v6.f32[0]), v501, *v6.f32, 1), v482, v6, 2), v438, v6, 3);
  v458 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v510, v7.f32[0]), v501, *v7.f32, 1), v482, v7, 2), v438, v7, 3);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v510, v8.f32[0]), v501, *v8.f32, 1), v482, v8, 2), v438, v8, 3);
  sub_10001358C(v514, -0.75049, xmmword_1000EC8E0);
  v9 = sub_100013568(v514);
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v9.n128_f32[0]), v489, v9.n128_u64[0], 1), v458, v9, 2), v406, v9, 3);
  v483 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v11.f32[0]), v489, *v11.f32, 1), v458, v11, 2), v406, v11, 3);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v12.f32[0]), v489, *v12.f32, 1), v458, v12, 2), v406, v12, 3);
  v490 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v13.f32[0]), v489, *v13.f32, 1), v458, v13, 2), v406, v13, 3);
  v502 = v10;
  sub_10001358C(v515, -2.9845, xmmword_1000EC920);
  v14 = sub_100013568(v515);
  v568 = 0;
  *(v3 + 64) = 0x406CCCCD4039999ALL;
  *(v3 + 72) = 1034684465;
  *(v3 + 76) = 1;
  *(v3 + 77) = v573;
  *(v3 + 79) = v574;
  *(v3 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v502, v14.n128_f32[0]), v483, v14.n128_u64[0], 1), v439, v14, 2), v490, v14, 3);
  *(v3 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v502, v15.f32[0]), v483, *v15.f32, 1), v439, v15, 2), v490, v15, 3);
  *(v3 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v502, v16.f32[0]), v483, *v16.f32, 1), v439, v16, 2), v490, v16, 3);
  *(v3 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v502, v17.f32[0]), v483, *v17.f32, 1), v439, v17, 2), v490, v17, 3);
  *(v3 + 144) = xmmword_1000EFB90;
  *(v3 + 160) = 2;
  v18 = v571;
  *(v3 + 163) = v572;
  *(v3 + 161) = v18;
  *(v3 + 164) = 1107558400;
  *(v3 + 168) = 0;
  *(v3 + 169) = v569;
  *(v3 + 171) = v570;
  *(v3 + 172) = 1060320051;
  *(v3 + 176) = xmmword_1000EFBA0;
  *(v3 + 192) = 0x3F0000003F800000;
  *(v3 + 200) = v568;
  *(v3 + 201) = 0;
  *(v3 + 203) = 1;
  *(v3 + 208) = 0u;
  *(v3 + 224) = sub_100045CAC;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0x3F80000000000000;
  *(v3 + 256) = xmmword_1000EF5A0;
  *(v3 + 272) = 1;
  v19 = vmulq_f32(xmmword_10013DCA0, 0);
  v484 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v440 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v19), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v407 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v19, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v356 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0A4CCCD)), vdupq_n_s32(0xBDE147AE), *algn_10013DCB0), vdupq_n_s32(0xC0299999), xmmword_10013DCC0));
  sub_10001358C(v516, -0.97738, xmmword_1000EC910);
  v20 = sub_100013568(v516);
  v491 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v20.n128_f32[0]), v440, v20.n128_u64[0], 1), v407, v20, 2), v356, v20, 3);
  v459 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v21.f32[0]), v440, *v21.f32, 1), v407, v21, 2), v356, v21, 3);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v22.f32[0]), v440, *v22.f32, 1), v407, v22, 2), v356, v22, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v23.f32[0]), v440, *v23.f32, 1), v407, v23, 2), v356, v23, 3);
  sub_10001358C(v517, 0.15708, xmmword_1000EC8E0);
  v24 = sub_100013568(v517);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v25.f32[0]), v459, *v25.f32, 1), v382, v25, 2), v357, v25, 3);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v26.f32[0]), v459, *v26.f32, 1), v382, v26, 2), v357, v26, 3);
  v485 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v24.n128_f32[0]), v459, v24.n128_u64[0], 1), v382, v24, 2), v357, v24, 3);
  v492 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v27.f32[0]), v459, *v27.f32, 1), v382, v27, 2), v357, v27, 3);
  sub_10001358C(v518, 0.2618, xmmword_1000EC920);
  v28 = sub_100013568(v518);
  v575 = 1;
  *(v3 + 288) = 0x40A0000040600000;
  *(v3 + 296) = 1045220557;
  *(v3 + 300) = 1;
  *(v3 + 301) = v580;
  *(v3 + 303) = v581;
  *(v3 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v28.n128_f32[0]), v441, v28.n128_u64[0], 1), v408, v28, 2), v492, v28, 3);
  *(v3 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v29.f32[0]), v441, *v29.f32, 1), v408, v29, 2), v492, v29, 3);
  *(v3 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v30.f32[0]), v441, *v30.f32, 1), v408, v30, 2), v492, v30, 3);
  *(v3 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v31.f32[0]), v441, *v31.f32, 1), v408, v31, 2), v492, v31, 3);
  *(v3 + 368) = xmmword_1000EC900;
  *(v3 + 384) = 0;
  v32 = v578;
  *(v3 + 387) = v579;
  *(v3 + 385) = v32;
  *(v3 + 388) = 1082759578;
  *(v3 + 392) = 10;
  *(v3 + 393) = v576;
  *(v3 + 395) = v577;
  *(v3 + 396) = 1065353216;
  *(v3 + 416) = 0;
  *(v3 + 400) = 0u;
  *(v3 + 424) = v575;
  *(v3 + 425) = 0;
  *(v3 + 427) = 0;
  *(v3 + 432) = 0u;
  *(v3 + 448) = sub_100045DA0;
  *(v3 + 456) = 0;
  *(v3 + 464) = 0x3F80000000000000;
  *(v3 + 480) = xmmword_1000EF5D0;
  *(v3 + 496) = 1;
  v33 = vmulq_f32(xmmword_10013DCA0, 0);
  v460 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v383 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v33), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v358 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v33, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v312 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F1C28F6u)), vdupq_n_s32(0xBE947AE1), *algn_10013DCB0), vdupq_n_s32(0x3E3851EBu), xmmword_10013DCC0));
  sub_10001358C(v519, -0.22689, xmmword_1000EC910);
  v34 = sub_100013568(v519);
  v486 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v34.n128_f32[0]), v383, v34.n128_u64[0], 1), v358, v34, 2), v312, v34, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v35.f32[0]), v383, *v35.f32, 1), v358, v35, 2), v312, v35, 3);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v36.f32[0]), v383, *v36.f32, 1), v358, v36, 2), v312, v36, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v37.f32[0]), v383, *v37.f32, 1), v358, v37, 2), v312, v37, 3);
  sub_10001358C(v520, 0.48869, xmmword_1000EC8E0);
  v38 = sub_100013568(v520);
  v461 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v38.n128_f32[0]), v409, v38.n128_u64[0], 1), v332, v38, 2), v313, v38, 3);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v39.f32[0]), v409, *v39.f32, 1), v332, v39, 2), v313, v39, 3);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v40.f32[0]), v409, *v40.f32, 1), v332, v40, 2), v313, v40, 3);
  v487 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v41.f32[0]), v409, *v41.f32, 1), v332, v41, 2), v313, v41, 3);
  sub_10001358C(v521, 0.48869, xmmword_1000EC920);
  v42 = sub_100013568(v521);
  v582 = 1;
  *(v3 + 512) = 0x3F2666664039999ALL;
  *(v3 + 520) = 1056964608;
  *(v3 + 524) = 1;
  *(v3 + 525) = v587;
  *(v3 + 527) = v588;
  *(v3 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v42.n128_f32[0]), v384, v42.n128_u64[0], 1), v359, v42, 2), v487, v42, 3);
  *(v3 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v43.f32[0]), v384, *v43.f32, 1), v359, v43, 2), v487, v43, 3);
  *(v3 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v44.f32[0]), v384, *v44.f32, 1), v359, v44, 2), v487, v44, 3);
  *(v3 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v45.f32[0]), v384, *v45.f32, 1), v359, v45, 2), v487, v45, 3);
  *(v3 + 592) = xmmword_1000EFBB0;
  *(v3 + 608) = 0;
  v46 = v585;
  *(v3 + 611) = v586;
  *(v3 + 609) = v46;
  *(v3 + 612) = 1099956224;
  *(v3 + 616) = 10;
  *(v3 + 617) = v583;
  *(v3 + 619) = v584;
  *(v3 + 620) = 1065353216;
  *(v3 + 640) = 0;
  *(v3 + 624) = 0u;
  *(v3 + 648) = v582;
  *(v3 + 649) = 0;
  *(v3 + 651) = 1;
  *(v3 + 656) = 0u;
  *(v3 + 672) = sub_100045DD0;
  *(v3 + 680) = 0;
  *(v3 + 688) = 0x3F80000000000000;
  *(v3 + 704) = xmmword_1000EF7D0;
  *(v3 + 720) = 1;
  v47 = vmulq_f32(xmmword_10013DCA0, 0);
  v462 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v385 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v47), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v333 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v47, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v293 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF0CCCCD)), vdupq_n_s32(0x3F70A3D7u), *algn_10013DCB0), vdupq_n_s32(0xBEC7AE14), xmmword_10013DCC0));
  sub_10001358C(v522, -0.43633, xmmword_1000EC910);
  v48 = sub_100013568(v522);
  v410 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v48.n128_f32[0]), v385, v48.n128_u64[0], 1), v333, v48, 2), v293, v48, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v49.f32[0]), v385, *v49.f32, 1), v333, v49, 2), v293, v49, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v50.f32[0]), v385, *v50.f32, 1), v333, v50, 2), v293, v50, 3);
  v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v51.f32[0]), v385, *v51.f32, 1), v333, v51, 2), v293, v51, 3);
  sub_10001358C(v523, 0.15708, xmmword_1000EC8E0);
  v52 = sub_100013568(v523);
  v463 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v52.n128_f32[0]), v360, v52.n128_u64[0], 1), v314, v52, 2), v294, v52, 3);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v53.f32[0]), v360, *v53.f32, 1), v314, v53, 2), v294, v53, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v54.f32[0]), v360, *v54.f32, 1), v314, v54, 2), v294, v54, 3);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v55.f32[0]), v360, *v55.f32, 1), v314, v55, 2), v294, v55, 3);
  sub_10001358C(v524, 0.76794, xmmword_1000EC920);
  v56 = sub_100013568(v524);
  v589 = 1;
  *(v3 + 736) = 0x4020000040200000;
  *(v3 + 744) = 990057071;
  *(v3 + 748) = 1;
  *(v3 + 749) = v594;
  *(v3 + 751) = v595;
  *(v3 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v56.n128_f32[0]), v386, v56.n128_u64[0], 1), v334, v56, 2), v411, v56, 3);
  *(v3 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v57.f32[0]), v386, *v57.f32, 1), v334, v57, 2), v411, v57, 3);
  *(v3 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v58.f32[0]), v386, *v58.f32, 1), v334, v58, 2), v411, v58, 3);
  *(v3 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v59.f32[0]), v386, *v59.f32, 1), v334, v59, 2), v411, v59, 3);
  *(v3 + 816) = xmmword_1000EC900;
  *(v3 + 832) = 0;
  v60 = v592;
  *(v3 + 835) = v593;
  *(v3 + 833) = v60;
  *(v3 + 836) = 1053273620;
  *(v3 + 840) = 10;
  *(v3 + 841) = v590;
  *(v3 + 843) = v591;
  *(v3 + 844) = 1065353216;
  *(v3 + 848) = 0;
  *(v3 + 856) = 0u;
  *(v3 + 872) = v589;
  *(v3 + 873) = 0;
  *(v3 + 875) = 0;
  *(v3 + 880) = 0u;
  *(v3 + 896) = sub_100081614;
  *(v3 + 904) = 0;
  *(v3 + 912) = 0x3F80000000000000;
  *(v3 + 928) = xmmword_1000EF630;
  *(v3 + 944) = 1;
  v61 = vmulq_f32(xmmword_10013DCA0, 0);
  v412 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v361 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v61), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v335 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v61, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v295 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3CA3D70Au)), vdupq_n_s32(0x4041EB85u), *algn_10013DCB0), vdupq_n_s32(0xBD8F5C29), xmmword_10013DCC0));
  sub_10001358C(v525, -1.0472, xmmword_1000EC910);
  v62 = sub_100013568(v525);
  v493 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v62.n128_f32[0]), v361, v62.n128_u64[0], 1), v335, v62, 2), v295, v62, 3);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v63.f32[0]), v361, *v63.f32, 1), v335, v63, 2), v295, v63, 3);
  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v64.f32[0]), v361, *v64.f32, 1), v335, v64, 2), v295, v64, 3);
  v296 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v65.f32[0]), v361, *v65.f32, 1), v335, v65, 2), v295, v65, 3);
  sub_10001358C(v526, -0.83776, xmmword_1000EC8E0);
  v66 = sub_100013568(v526);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v493, v66.n128_f32[0]), v387, v66.n128_u64[0], 1), v315, v66, 2), v296, v66, 3);
  v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v493, v67.f32[0]), v387, *v67.f32, 1), v315, v67, 2), v296, v67, 3);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v493, v68.f32[0]), v387, *v68.f32, 1), v315, v68, 2), v296, v68, 3);
  v494 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v493, v69.f32[0]), v387, *v69.f32, 1), v315, v69, 2), v296, v69, 3);
  sub_10001358C(v527, -1.0647, xmmword_1000EC920);
  v70 = sub_100013568(v527);
  v596 = 1;
  *(v3 + 960) = 0x402666663F800000;
  *(v3 + 968) = 1044549468;
  *(v3 + 972) = 0;
  *(v3 + 973) = v601;
  *(v3 + 975) = v602;
  *(v3 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v70.n128_f32[0]), v362, v70.n128_u64[0], 1), v336, v70, 2), v494, v70, 3);
  *(v3 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v71.f32[0]), v362, *v71.f32, 1), v336, v71, 2), v494, v71, 3);
  *(v3 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v72.f32[0]), v362, *v72.f32, 1), v336, v72, 2), v494, v72, 3);
  *(v3 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v73.f32[0]), v362, *v73.f32, 1), v336, v73, 2), v494, v73, 3);
  *(v3 + 1040) = xmmword_1000EFBC0;
  *(v3 + 1056) = 0;
  v74 = v599;
  *(v3 + 1059) = v600;
  *(v3 + 1057) = v74;
  *(v3 + 1060) = 1070386381;
  *(v3 + 1064) = 9;
  *(v3 + 1065) = v597;
  *(v3 + 1067) = v598;
  *(v3 + 1068) = 1065353216;
  *(v3 + 1072) = 0;
  *(v3 + 1080) = 0u;
  *(v3 + 1096) = v596;
  *(v3 + 1097) = 0;
  *(v3 + 1099) = 0;
  *(v3 + 1104) = 0u;
  *(v3 + 1120) = sub_100081610;
  *(v3 + 1128) = 0;
  *(v3 + 1136) = 0x3F80000000000000;
  *(v3 + 1152) = xmmword_1000EF5A0;
  *(v3 + 1168) = 2;
  v75 = vmulq_f32(xmmword_10013DCA0, 0);
  v414 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v363 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v75), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v337 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v75, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v297 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEFAE147)), vdupq_n_s32(0x3E4CCCCCu), *algn_10013DCB0), vdupq_n_s32(0x3EFAE147u), xmmword_10013DCC0));
  sub_10001358C(v528, 4.7124, xmmword_1000EC910);
  v76 = sub_100013568(v528);
  v495 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v76.n128_f32[0]), v363, v76.n128_u64[0], 1), v337, v76, 2), v297, v76, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v77.f32[0]), v363, *v77.f32, 1), v337, v77, 2), v297, v77, 3);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v78.f32[0]), v363, *v78.f32, 1), v337, v78, 2), v297, v78, 3);
  v298 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v79.f32[0]), v363, *v79.f32, 1), v337, v79, 2), v297, v79, 3);
  sub_10001358C(v529, 1.0123, xmmword_1000EC8E0);
  v80 = sub_100013568(v529);
  v415 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v495, v80.n128_f32[0]), v388, v80.n128_u64[0], 1), v316, v80, 2), v298, v80, 3);
  v364 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v495, v81.f32[0]), v388, *v81.f32, 1), v316, v81, 2), v298, v81, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v495, v82.f32[0]), v388, *v82.f32, 1), v316, v82, 2), v298, v82, 3);
  v496 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v495, v83.f32[0]), v388, *v83.f32, 1), v316, v83, 2), v298, v83, 3);
  sub_10001358C(v530, 1.5708, xmmword_1000EC920);
  v84 = sub_100013568(v530);
  v603 = 1;
  *(v3 + 1184) = 0x3EBD70A440400000;
  *(v3 + 1192) = 1051260355;
  *(v3 + 1196) = 1;
  *(v3 + 1197) = v608;
  *(v3 + 1199) = v609;
  *(v3 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v84.n128_f32[0]), v364, v84.n128_u64[0], 1), v338, v84, 2), v496, v84, 3);
  *(v3 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v85.f32[0]), v364, *v85.f32, 1), v338, v85, 2), v496, v85, 3);
  *(v3 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v86.f32[0]), v364, *v86.f32, 1), v338, v86, 2), v496, v86, 3);
  *(v3 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v87.f32[0]), v364, *v87.f32, 1), v338, v87, 2), v496, v87, 3);
  *(v3 + 1264) = xmmword_1000EFBD0;
  *(v3 + 1280) = 0;
  v88 = v606;
  *(v3 + 1283) = v607;
  *(v3 + 1281) = v88;
  *(v3 + 1284) = 1104150528;
  *(v3 + 1288) = 13;
  *(v3 + 1289) = v604;
  *(v3 + 1291) = v605;
  *(v3 + 1292) = 1065353216;
  *(v3 + 1296) = 0;
  *(v3 + 1304) = 0u;
  *(v3 + 1320) = v603;
  *(v3 + 1321) = 0;
  *(v3 + 1323) = 0;
  *(v3 + 1328) = 0u;
  *(v3 + 1344) = sub_100045E78;
  *(v3 + 1352) = 0;
  *(v3 + 1360) = 0x3F80000000000000;
  *(v3 + 1376) = xmmword_1000EF5C0;
  *(v3 + 1392) = 9;
  v89 = vmulq_f32(xmmword_10013DCA0, 0);
  v389 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v339 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v89), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v317 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v89, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v285 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0F1EB85)), vdupq_n_s32(0x40BE147Bu), *algn_10013DCB0), vdupq_n_s32(0xC05851EB), xmmword_10013DCC0));
  sub_10001358C(v531, -1.0821, xmmword_1000EC910);
  v90 = sub_100013568(v531);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v90.n128_f32[0]), v339, v90.n128_u64[0], 1), v317, v90, 2), v285, v90, 3);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v91.f32[0]), v339, *v91.f32, 1), v317, v91, 2), v285, v91, 3);
  v299 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v92.f32[0]), v339, *v92.f32, 1), v317, v92, 2), v285, v92, 3);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v93.f32[0]), v339, *v93.f32, 1), v317, v93, 2), v285, v93, 3);
  sub_10001358C(v532, -0.76794, xmmword_1000EC8E0);
  v94 = sub_100013568(v532);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v95.f32[0]), v365, *v95.f32, 1), v299, v95, 2), v286, v95, 3);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v96.f32[0]), v365, *v96.f32, 1), v299, v96, 2), v286, v96, 3);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v94.n128_f32[0]), v365, v94.n128_u64[0], 1), v299, v94, 2), v286, v94, 3);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v97.f32[0]), v365, *v97.f32, 1), v299, v97, 2), v286, v97, 3);
  sub_10001358C(v533, -3.1241, xmmword_1000EC920);
  v98 = sub_100013568(v533);
  v610 = 0;
  *(v3 + 1408) = 0x4098A3D7403C28F6;
  *(v3 + 1416) = 1008981770;
  *(v3 + 1420) = 1;
  *(v3 + 1421) = v615;
  *(v3 + 1423) = v616;
  *(v3 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v98.n128_f32[0]), v340, v98.n128_u64[0], 1), v318, v98, 2), v417, v98, 3);
  *(v3 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v99.f32[0]), v340, *v99.f32, 1), v318, v99, 2), v417, v99, 3);
  *(v3 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v100.f32[0]), v340, *v100.f32, 1), v318, v100, 2), v417, v100, 3);
  *(v3 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v101.f32[0]), v340, *v101.f32, 1), v318, v101, 2), v417, v101, 3);
  *(v3 + 1488) = xmmword_1000EFBE0;
  *(v3 + 1504) = 2;
  v102 = v613;
  *(v3 + 1507) = v614;
  *(v3 + 1505) = v102;
  *(v3 + 1508) = 1070386381;
  *(v3 + 1512) = 1;
  *(v3 + 1513) = v611;
  *(v3 + 1515) = v612;
  *(v3 + 1516) = 1051931443;
  *(v3 + 1520) = xmmword_1000EFBF0;
  *(v3 + 1536) = 0x3F8000003F800000;
  *(v3 + 1544) = v610;
  *(v3 + 1545) = 1;
  *(v3 + 1547) = 1;
  *(v3 + 1552) = 0u;
  *(v3 + 1568) = sub_100045F20;
  *(v3 + 1576) = 0;
  *(v3 + 1584) = 0x3F80000000000000;
  *(v3 + 1600) = xmmword_1000EF5A0;
  *(v3 + 1616) = 3;
  v103 = vmulq_f32(xmmword_10013DCA0, 0);
  v391 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v341 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v103), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v319 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v103, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v287 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC018F5C2)), vdupq_n_s32(0xBF68F5C2), *algn_10013DCB0), vdupq_n_s32(0xC0B50E55), xmmword_10013DCC0));
  sub_10001358C(v534, -0.43633, xmmword_1000EC910);
  v104 = sub_100013568(v534);
  v418 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v104.n128_f32[0]), v341, v104.n128_u64[0], 1), v319, v104, 2), v287, v104, 3);
  v366 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v105.f32[0]), v341, *v105.f32, 1), v319, v105, 2), v287, v105, 3);
  v300 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v106.f32[0]), v341, *v106.f32, 1), v319, v106, 2), v287, v106, 3);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v107.f32[0]), v341, *v107.f32, 1), v319, v107, 2), v287, v107, 3);
  sub_10001358C(v535, 0.15708, xmmword_1000EC8E0);
  v108 = sub_100013568(v535);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v109.f32[0]), v366, *v109.f32, 1), v300, v109, 2), v288, v109, 3);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v110.f32[0]), v366, *v110.f32, 1), v300, v110, 2), v288, v110, 3);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v108.n128_f32[0]), v366, v108.n128_u64[0], 1), v300, v108, 2), v288, v108, 3);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v111.f32[0]), v366, *v111.f32, 1), v300, v111, 2), v288, v111, 3);
  sub_10001358C(v536, 0.76794, xmmword_1000EC920);
  v112 = sub_100013568(v536);
  v617 = 1;
  *(v3 + 1632) = 0x4013333340600000;
  *(v3 + 1640) = 0;
  *(v3 + 1644) = 1;
  *(v3 + 1645) = v622;
  *(v3 + 1647) = v623;
  *(v3 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v112.n128_f32[0]), v342, v112.n128_u64[0], 1), v320, v112, 2), v419, v112, 3);
  *(v3 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v113.f32[0]), v342, *v113.f32, 1), v320, v113, 2), v419, v113, 3);
  *(v3 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v114.f32[0]), v342, *v114.f32, 1), v320, v114, 2), v419, v114, 3);
  *(v3 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v115.f32[0]), v342, *v115.f32, 1), v320, v115, 2), v419, v115, 3);
  *(v3 + 1712) = xmmword_1000EFC00;
  *(v3 + 1728) = 0;
  v116 = v620;
  *(v3 + 1731) = v621;
  *(v3 + 1729) = v116;
  *(v3 + 1732) = 1066192077;
  *(v3 + 1736) = 10;
  *(v3 + 1737) = v618;
  *(v3 + 1739) = v619;
  *(v3 + 1740) = 1065353216;
  *(v3 + 1744) = 0;
  *(v3 + 1752) = 0u;
  *(v3 + 1768) = v617;
  *(v3 + 1769) = 1;
  *(v3 + 1771) = 1;
  *(v3 + 1776) = 0u;
  *(v3 + 1792) = sub_1000815FC;
  *(v3 + 1800) = 0;
  *(v3 + 1808) = 0x3F80000000000000;
  *(v3 + 1824) = xmmword_1000EF5C0;
  *(v3 + 1840) = 3;
  v117 = vmulq_f32(xmmword_10013DCA0, 0);
  v393 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v343 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v117), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v321 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v117, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v289 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F147AE1u)), vdupq_n_s32(0x3CF5C28Fu), *algn_10013DCB0), vdupq_n_s32(0xBF547AE1), xmmword_10013DCC0));
  sub_10001358C(v537, 0.38397, xmmword_1000EC910);
  v118 = sub_100013568(v537);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v118.n128_f32[0]), v343, v118.n128_u64[0], 1), v321, v118, 2), v289, v118, 3);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v119.f32[0]), v343, *v119.f32, 1), v321, v119, 2), v289, v119, 3);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v120.f32[0]), v343, *v120.f32, 1), v321, v120, 2), v289, v120, 3);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v121.f32[0]), v343, *v121.f32, 1), v321, v121, 2), v289, v121, 3);
  sub_10001358C(v538, -0.50615, xmmword_1000EC8E0);
  v122 = sub_100013568(v538);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v123.f32[0]), v367, *v123.f32, 1), v301, v123, 2), v290, v123, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v124.f32[0]), v367, *v124.f32, 1), v301, v124, 2), v290, v124, 3);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v122.n128_f32[0]), v367, v122.n128_u64[0], 1), v301, v122, 2), v290, v122, 3);
  v421 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v125.f32[0]), v367, *v125.f32, 1), v301, v125, 2), v290, v125, 3);
  sub_10001358C(v539, 0.90757, xmmword_1000EC920);
  v126 = sub_100013568(v539);
  v624 = 1;
  *(v3 + 1856) = 0x3F47AE14400CCCCDLL;
  *(v3 + 1864) = 1056964608;
  *(v3 + 1868) = 1;
  *(v3 + 1869) = v629;
  *(v3 + 1871) = v630;
  *(v3 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v126.n128_f32[0]), v344, v126.n128_u64[0], 1), v322, v126, 2), v421, v126, 3);
  *(v3 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v127.f32[0]), v344, *v127.f32, 1), v322, v127, 2), v421, v127, 3);
  *(v3 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v128.f32[0]), v344, *v128.f32, 1), v322, v128, 2), v421, v128, 3);
  *(v3 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v129.f32[0]), v344, *v129.f32, 1), v322, v129, 2), v421, v129, 3);
  *(v3 + 1936) = xmmword_1000EFC10;
  *(v3 + 1952) = 0;
  v130 = v627;
  *(v3 + 1955) = v628;
  *(v3 + 1953) = v130;
  *(v3 + 1956) = 1072902963;
  *(v3 + 1960) = 10;
  *(v3 + 1961) = v625;
  *(v3 + 1963) = v626;
  *(v3 + 1964) = 1065353216;
  *(v3 + 1968) = 0;
  *(v3 + 1976) = 0u;
  *(v3 + 1992) = v624;
  *(v3 + 1993) = 1;
  *(v3 + 1995) = 1;
  *(v3 + 2000) = 0u;
  *(v3 + 2016) = sub_100046014;
  *(v3 + 2024) = 0;
  *(v3 + 2032) = 0x3F80000000000000;
  *(v3 + 2048) = xmmword_1000EF5D0;
  *(v3 + 2064) = 3;
  v131 = vmulq_f32(xmmword_10013DCA0, 0);
  v422 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v368 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v131), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v323 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v131, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v302 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC031EB85)), vdupq_n_s32(0xBF3AE147), *algn_10013DCB0), vdupq_n_s32(0xC0899999), xmmword_10013DCC0));
  sub_10001358C(v540, -0.43633, xmmword_1000EC910);
  v132 = sub_100013568(v540);
  v442 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v132.n128_f32[0]), v368, v132.n128_u64[0], 1), v323, v132, 2), v302, v132, 3);
  v395 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v133.f32[0]), v368, *v133.f32, 1), v323, v133, 2), v302, v133, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v134.f32[0]), v368, *v134.f32, 1), v323, v134, 2), v302, v134, 3);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v135.f32[0]), v368, *v135.f32, 1), v323, v135, 2), v302, v135, 3);
  sub_10001358C(v541, 0.15359, xmmword_1000EC8E0);
  v136 = sub_100013568(v541);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v137.f32[0]), v395, *v137.f32, 1), v345, v137, 2), v303, v137, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v138.f32[0]), v395, *v138.f32, 1), v345, v138, 2), v303, v138, 3);
  v423 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v136.n128_f32[0]), v395, v136.n128_u64[0], 1), v345, v136, 2), v303, v136, 3);
  v443 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v139.f32[0]), v395, *v139.f32, 1), v345, v139, 2), v303, v139, 3);
  sub_10001358C(v542, 0.76794, xmmword_1000EC920);
  v140 = sub_100013568(v542);
  v631 = 1;
  *(v3 + 2080) = 0x3FA7EF9E4037BE77;
  *(v3 + 2088) = 1025758986;
  *(v3 + 2092) = 1;
  *(v3 + 2093) = v636;
  *(v3 + 2095) = v637;
  *(v3 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v140.n128_f32[0]), v369, v140.n128_u64[0], 1), v324, v140, 2), v443, v140, 3);
  *(v3 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v141.f32[0]), v369, *v141.f32, 1), v324, v141, 2), v443, v141, 3);
  *(v3 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v142.f32[0]), v369, *v142.f32, 1), v324, v142, 2), v443, v142, 3);
  *(v3 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v143.f32[0]), v369, *v143.f32, 1), v324, v143, 2), v443, v143, 3);
  *(v3 + 2160) = xmmword_1000EFC20;
  *(v3 + 2176) = 0;
  v144 = v634;
  *(v3 + 2179) = v635;
  *(v3 + 2177) = v144;
  *(v3 + 2180) = 1051260355;
  *(v3 + 2184) = 10;
  *(v3 + 2185) = v632;
  *(v3 + 2187) = v633;
  *(v3 + 2188) = 1065353216;
  *(v3 + 2192) = 0;
  *(v3 + 2200) = 0u;
  *(v3 + 2216) = v631;
  *(v3 + 2217) = 1;
  *(v3 + 2219) = 0;
  *(v3 + 2224) = 0u;
  *(v3 + 2240) = sub_100081614;
  *(v3 + 2248) = 0;
  *(v3 + 2256) = 0x3F80000000000000;
  *(v3 + 2272) = xmmword_1000EF7D0;
  *(v3 + 2288) = 3;
  v145 = vmulq_f32(xmmword_10013DCA0, 0);
  v424 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v370 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v145), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v346 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v145, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v304 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFD1EB85)), vdupq_n_s32(0xBFF99999), *algn_10013DCB0), vdupq_n_s32(0xC0933333), xmmword_10013DCC0));
  sub_10001358C(v543, -0.50615, xmmword_1000EC910);
  v146 = sub_100013568(v543);
  v444 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v146.n128_f32[0]), v370, v146.n128_u64[0], 1), v346, v146, 2), v304, v146, 3);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v147.f32[0]), v370, *v147.f32, 1), v346, v147, 2), v304, v147, 3);
  v325 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v148.f32[0]), v370, *v148.f32, 1), v346, v148, 2), v304, v148, 3);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v149.f32[0]), v370, *v149.f32, 1), v346, v149, 2), v304, v149, 3);
  sub_10001358C(v544, -0.13265, xmmword_1000EC8E0);
  v150 = sub_100013568(v544);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v151.f32[0]), v396, *v151.f32, 1), v325, v151, 2), v305, v151, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v152.f32[0]), v396, *v152.f32, 1), v325, v152, 2), v305, v152, 3);
  v425 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v150.n128_f32[0]), v396, v150.n128_u64[0], 1), v325, v150, 2), v305, v150, 3);
  v445 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v153.f32[0]), v396, *v153.f32, 1), v325, v153, 2), v305, v153, 3);
  sub_10001358C(v545, 0.16406, xmmword_1000EC920);
  v154 = sub_100013568(v545);
  v638 = 1;
  *(v3 + 2304) = 0x4090000040466666;
  *(v3 + 2312) = 1040522936;
  *(v3 + 2316) = 1;
  *(v3 + 2317) = v643;
  *(v3 + 2319) = v644;
  *(v3 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v154.n128_f32[0]), v371, v154.n128_u64[0], 1), v347, v154, 2), v445, v154, 3);
  *(v3 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v155.f32[0]), v371, *v155.f32, 1), v347, v155, 2), v445, v155, 3);
  *(v3 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v156.f32[0]), v371, *v156.f32, 1), v347, v156, 2), v445, v156, 3);
  *(v3 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v157.f32[0]), v371, *v157.f32, 1), v347, v157, 2), v445, v157, 3);
  *(v3 + 2384) = xmmword_1000EFC30;
  *(v3 + 2400) = 0;
  v158 = v641;
  *(v3 + 2403) = v642;
  *(v3 + 2401) = v158;
  *(v3 + 2404) = 1080452710;
  *(v3 + 2408) = 10;
  *(v3 + 2409) = v639;
  *(v3 + 2411) = v640;
  *(v3 + 2412) = 1065353216;
  *(v3 + 2416) = 0;
  *(v3 + 2424) = 0u;
  *(v3 + 2440) = v638;
  *(v3 + 2441) = 257;
  *(v3 + 2443) = 0;
  *(v3 + 2448) = 0u;
  *(v3 + 2464) = sub_1000460BC;
  *(v3 + 2472) = 0;
  *(v3 + 2480) = 0x3F80000000000000;
  *(v3 + 2496) = xmmword_1000EF5A0;
  *(v3 + 2512) = 4;
  v159 = vmulq_f32(xmmword_10013DCA0, 0);
  v426 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v372 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v159), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v348 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v159, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v306 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E8A3D70u)), vdupq_n_s32(0x3F0A3D70u), *algn_10013DCB0), vdupq_n_s32(0xBE199999), xmmword_10013DCC0));
  sub_10001358C(v546, 1.5708, xmmword_1000EC910);
  v160 = sub_100013568(v546);
  v446 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v160.n128_f32[0]), v372, v160.n128_u64[0], 1), v348, v160, 2), v306, v160, 3);
  v397 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v161.f32[0]), v372, *v161.f32, 1), v348, v161, 2), v306, v161, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v162.f32[0]), v372, *v162.f32, 1), v348, v162, 2), v306, v162, 3);
  v307 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v163.f32[0]), v372, *v163.f32, 1), v348, v163, 2), v306, v163, 3);
  sub_10001358C(v547, -0.82903, xmmword_1000EC8E0);
  v164 = sub_100013568(v547);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v165.f32[0]), v397, *v165.f32, 1), v326, v165, 2), v307, v165, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v166.f32[0]), v397, *v166.f32, 1), v326, v166, 2), v307, v166, 3);
  v427 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v164.n128_f32[0]), v397, v164.n128_u64[0], 1), v326, v164, 2), v307, v164, 3);
  v447 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v167.f32[0]), v397, *v167.f32, 1), v326, v167, 2), v307, v167, 3);
  sub_10001358C(v548, 1.5708, xmmword_1000EC920);
  v168 = sub_100013568(v548);
  v645 = 1;
  *(v3 + 2528) = 0x400000003FB33333;
  *(v3 + 2536) = 1055622431;
  *(v3 + 2540) = 1;
  *(v3 + 2541) = v650;
  *(v3 + 2543) = v651;
  *(v3 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v168.n128_f32[0]), v373, v168.n128_u64[0], 1), v349, v168, 2), v447, v168, 3);
  *(v3 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v169.f32[0]), v373, *v169.f32, 1), v349, v169, 2), v447, v169, 3);
  *(v3 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v170.f32[0]), v373, *v170.f32, 1), v349, v170, 2), v447, v170, 3);
  *(v3 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v171.f32[0]), v373, *v171.f32, 1), v349, v171, 2), v447, v171, 3);
  *(v3 + 2608) = xmmword_1000EFC40;
  *(v3 + 2624) = 0;
  v172 = v648;
  *(v3 + 2627) = v649;
  *(v3 + 2625) = v172;
  *(v3 + 2628) = 1079194419;
  *(v3 + 2632) = 9;
  *(v3 + 2633) = v646;
  *(v3 + 2635) = v647;
  *(v3 + 2636) = 1065353216;
  *(v3 + 2640) = 0;
  *(v3 + 2648) = 0u;
  *(v3 + 2664) = v645;
  *(v3 + 2665) = 1;
  *(v3 + 2667) = 1;
  *(v3 + 2672) = 0u;
  *(v3 + 2688) = sub_1000460EC;
  *(v3 + 2696) = 0;
  *(v3 + 2704) = 0x3F68BA2F00000000;
  *(v3 + 2720) = xmmword_1000EF5A0;
  *(v3 + 2736) = 6;
  v173 = vmulq_f32(xmmword_10013DCA0, 0);
  v398 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v350 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v173), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v308 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v173, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v448 = vdupq_n_s32(0xBF8E147B);
  v291 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE6B851E)), vdupq_n_s32(0x3F0CCCCDu), *algn_10013DCB0), v448, xmmword_10013DCC0));
  sub_10001358C(v549, 1.5708, xmmword_1000EC910);
  v174 = sub_100013568(v549);
  v428 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v174.n128_f32[0]), v350, v174.n128_u64[0], 1), v308, v174, 2), v291, v174, 3);
  v374 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v175.f32[0]), v350, *v175.f32, 1), v308, v175, 2), v291, v175, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v176.f32[0]), v350, *v176.f32, 1), v308, v176, 2), v291, v176, 3);
  v292 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v177.f32[0]), v350, *v177.f32, 1), v308, v177, 2), v291, v177, 3);
  sub_10001358C(v550, -3.4034, xmmword_1000EC8E0);
  v178 = sub_100013568(v550);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v179.f32[0]), v374, *v179.f32, 1), v327, v179, 2), v292, v179, 3);
  v309 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v180.f32[0]), v374, *v180.f32, 1), v327, v180, 2), v292, v180, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v178.n128_f32[0]), v374, v178.n128_u64[0], 1), v327, v178, 2), v292, v178, 3);
  v429 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v181.f32[0]), v374, *v181.f32, 1), v327, v181, 2), v292, v181, 3);
  sub_10001358C(v551, 1.5708, xmmword_1000EC920);
  v182 = sub_100013568(v551);
  v652 = 1;
  *(v3 + 2752) = 0x3F59999A3F5C28F6;
  *(v3 + 2760) = 1056964608;
  *(v3 + 2764) = 1;
  *(v3 + 2765) = v657;
  *(v3 + 2767) = v658;
  *(v3 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v399, v182.n128_f32[0]), v351, v182.n128_u64[0], 1), v309, v182, 2), v429, v182, 3);
  *(v3 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v399, v183.f32[0]), v351, *v183.f32, 1), v309, v183, 2), v429, v183, 3);
  *(v3 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v399, v184.f32[0]), v351, *v184.f32, 1), v309, v184, 2), v429, v184, 3);
  *(v3 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v399, v185.f32[0]), v351, *v185.f32, 1), v309, v185, 2), v429, v185, 3);
  *(v3 + 2832) = xmmword_1000EFC50;
  *(v3 + 2848) = 0;
  v186 = v655;
  *(v3 + 2851) = v656;
  *(v3 + 2849) = v186;
  *(v3 + 2852) = 1056629064;
  *(v3 + 2856) = 9;
  *(v3 + 2857) = v653;
  *(v3 + 2859) = v654;
  *(v3 + 2860) = 1065353216;
  *(v3 + 2864) = 0;
  *(v3 + 2872) = 0u;
  *(v3 + 2888) = v652;
  *(v3 + 2889) = 2;
  *(v3 + 2891) = 1;
  *(v3 + 2928) = 0;
  *(v3 + 2912) = 0u;
  *(v3 + 2896) = 0u;
  *(v3 + 2932) = 1065353216;
  *(v3 + 2944) = xmmword_1000EF5C0;
  v187 = *algn_10013DCB0;
  v188 = vmulq_f32(xmmword_10013DCA0, 0);
  v189 = xmmword_10013DCC0;
  v190 = xmmword_10013DCD0;
  v191 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE570A3D));
  v430 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v3 + 2960) = 6;
  v375 = vmlaq_f32(vmlaq_f32(vaddq_f32(v187, v188), 0, v189), 0, v190);
  v328 = vmlaq_f32(vaddq_f32(v189, vmlaq_f32(v188, 0, v187)), 0, v190);
  v310 = vaddq_f32(v190, vmlaq_f32(vmlaq_f32(v191, vdupq_n_s32(0xBF11EB85), v187), v448, v189));
  sub_10001358C(v552, 1.5708, xmmword_1000EC910);
  v192 = sub_100013568(v552);
  v449 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v192.n128_f32[0]), v375, v192.n128_u64[0], 1), v328, v192, 2), v310, v192, 3);
  v400 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v193.f32[0]), v375, *v193.f32, 1), v328, v193, 2), v310, v193, 3);
  v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v194.f32[0]), v375, *v194.f32, 1), v328, v194, 2), v310, v194, 3);
  v311 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v195.f32[0]), v375, *v195.f32, 1), v328, v195, 2), v310, v195, 3);
  sub_10001358C(v553, -2.4609, xmmword_1000EC8E0);
  v196 = sub_100013568(v553);
  v376 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v197.f32[0]), v400, *v197.f32, 1), v352, v197, 2), v311, v197, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v198.f32[0]), v400, *v198.f32, 1), v352, v198, 2), v311, v198, 3);
  v431 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v196.n128_f32[0]), v400, v196.n128_u64[0], 1), v352, v196, 2), v311, v196, 3);
  v450 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v199.f32[0]), v400, *v199.f32, 1), v352, v199, 2), v311, v199, 3);
  sub_10001358C(v554, 1.5708, xmmword_1000EC920);
  v200 = sub_100013568(v554);
  v659 = 1;
  *(v3 + 2976) = 0x3F2B851F3FF33333;
  *(v3 + 2984) = 1056964608;
  *(v3 + 2988) = 1;
  *(v3 + 2989) = v664;
  *(v3 + 2991) = v665;
  *(v3 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v200.n128_f32[0]), v376, v200.n128_u64[0], 1), v329, v200, 2), v450, v200, 3);
  *(v3 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v201.f32[0]), v376, *v201.f32, 1), v329, v201, 2), v450, v201, 3);
  *(v3 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v202.f32[0]), v376, *v202.f32, 1), v329, v202, 2), v450, v202, 3);
  *(v3 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v203.f32[0]), v376, *v203.f32, 1), v329, v203, 2), v450, v203, 3);
  *(v3 + 3056) = xmmword_1000EFC60;
  *(v3 + 3072) = 0;
  v204 = v662;
  *(v3 + 3075) = v663;
  *(v3 + 3073) = v204;
  *(v3 + 3076) = 1060487823;
  *(v3 + 3080) = 9;
  *(v3 + 3081) = v660;
  *(v3 + 3083) = v661;
  *(v3 + 3084) = 1065353216;
  *(v3 + 3088) = 0;
  *(v3 + 3096) = 0u;
  *(v3 + 3112) = v659;
  *(v3 + 3113) = 2;
  *(v3 + 3115) = 1;
  v205 = *algn_10013DCB0;
  v206 = vmulq_f32(xmmword_10013DCA0, 0);
  __asm { FMOV            V3.4S, #-4.0 }

  v212 = vmulq_f32(xmmword_10013DCA0, _Q3);
  v213 = xmmword_10013DCC0;
  v214 = xmmword_10013DCD0;
  v451 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v3 + 3152) = 0;
  *(v3 + 3136) = 0u;
  v432 = vmlaq_f32(vmlaq_f32(vaddq_f32(v205, v206), 0, v213), 0, v214);
  *(v3 + 3120) = 0u;
  *(v3 + 3156) = 1061158912;
  v377 = vmlaq_f32(vaddq_f32(v213, vmlaq_f32(v206, 0, v205)), 0, v214);
  *(v3 + 3168) = xmmword_1000EF630;
  v330 = vaddq_f32(v214, vmlaq_f32(vmlaq_f32(v212, vdupq_n_s32(0x409851EBu), v205), vdupq_n_s32(0x40566666u), v213));
  *(v3 + 3184) = 9;
  sub_10001358C(v555, -1.2392, xmmword_1000EC910);
  v215 = sub_100013568(v555);
  v464 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v215.n128_f32[0]), v432, v215.n128_u64[0], 1), v377, v215, 2), v330, v215, 3);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v216.f32[0]), v432, *v216.f32, 1), v377, v216, 2), v330, v216, 3);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v217.f32[0]), v432, *v217.f32, 1), v377, v217, 2), v330, v217, 3);
  v331 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v218.f32[0]), v432, *v218.f32, 1), v377, v218, 2), v330, v218, 3);
  sub_10001358C(v556, -0.73304, xmmword_1000EC8E0);
  v219 = sub_100013568(v556);
  v433 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v220.f32[0]), v401, *v220.f32, 1), v353, v220, 2), v331, v220, 3);
  v452 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v219.n128_f32[0]), v401, v219.n128_u64[0], 1), v353, v219, 2), v331, v219, 3);
  v378 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v221.f32[0]), v401, *v221.f32, 1), v353, v221, 2), v331, v221, 3);
  v465 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v222.f32[0]), v401, *v222.f32, 1), v353, v222, 2), v331, v222, 3);
  sub_10001358C(v557, -0.17453, xmmword_1000EC920);
  v223 = sub_100013568(v557);
  v666 = 0;
  *(v3 + 3200) = 0x4060000040333333;
  *(v3 + 3208) = 1048911544;
  *(v3 + 3212) = 1;
  *(v3 + 3213) = v671;
  *(v3 + 3215) = v672;
  *(v3 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v223.n128_f32[0]), v433, v223.n128_u64[0], 1), v378, v223, 2), v465, v223, 3);
  *(v3 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v224.f32[0]), v433, *v224.f32, 1), v378, v224, 2), v465, v224, 3);
  *(v3 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v225.f32[0]), v433, *v225.f32, 1), v378, v225, 2), v465, v225, 3);
  *(v3 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v226.f32[0]), v433, *v226.f32, 1), v378, v226, 2), v465, v226, 3);
  *(v3 + 3280) = xmmword_1000EFC70;
  *(v3 + 3296) = 1;
  v227 = v669;
  *(v3 + 3299) = v670;
  *(v3 + 3297) = v227;
  *(v3 + 3300) = 1061830001;
  *(v3 + 3304) = 1;
  *(v3 + 3305) = v667;
  *(v3 + 3307) = v668;
  *(v3 + 3308) = 1058139013;
  *(v3 + 3312) = xmmword_1000EFC80;
  *(v3 + 3328) = 0x3F51EB8500000000;
  *(v3 + 3336) = v666;
  *(v3 + 3337) = 3;
  *(v3 + 3339) = 1;
  *(v3 + 3344) = 0u;
  *(v3 + 3360) = sub_100046194;
  *(v3 + 3368) = 0;
  *(v3 + 3376) = 0x3F80000000000000;
  *(v3 + 3392) = xmmword_1000EF5A0;
  *(v3 + 3408) = 5;
  v228 = vmulq_f32(xmmword_10013DCA0, 0);
  v503 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v453 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v228), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v402 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v228, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v354 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FC51EB8u)), vdupq_n_s32(0xBF6B851E), *algn_10013DCB0), vdupq_n_s32(0x4008F5C2u), xmmword_10013DCC0));
  sub_10001358C(v558, 6.2308, xmmword_1000EC910);
  v229 = sub_100013568(v558);
  v466 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v503, v229.n128_f32[0]), v453, v229.n128_u64[0], 1), v402, v229, 2), v354, v229, 3);
  v434 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v503, v230.f32[0]), v453, *v230.f32, 1), v402, v230, 2), v354, v230, 3);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v503, v231.f32[0]), v453, *v231.f32, 1), v402, v231, 2), v354, v231, 3);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v503, v232.f32[0]), v453, *v232.f32, 1), v402, v232, 2), v354, v232, 3);
  sub_10001358C(v559, 0.0, xmmword_1000EC8E0);
  v233 = sub_100013568(v559);
  v504 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v233.n128_f32[0]), v434, v233.n128_u64[0], 1), v379, v233, 2), v355, v233, 3);
  v454 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v234.f32[0]), v434, *v234.f32, 1), v379, v234, 2), v355, v234, 3);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v235.f32[0]), v434, *v235.f32, 1), v379, v235, 2), v355, v235, 3);
  v467 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v236.f32[0]), v434, *v236.f32, 1), v379, v236, 2), v355, v236, 3);
  sub_10001358C(v560, -0.92502, xmmword_1000EC920);
  v237 = sub_100013568(v560);
  v673 = 1;
  *(v3 + 3424) = 0x4046666640066666;
  *(v3 + 3432) = 1050253722;
  *(v3 + 3436) = 0;
  *(v3 + 3437) = v678;
  *(v3 + 3439) = v679;
  *(v3 + 3440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v237.n128_f32[0]), v454, v237.n128_u64[0], 1), v403, v237, 2), v467, v237, 3);
  *(v3 + 3456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v238.f32[0]), v454, *v238.f32, 1), v403, v238, 2), v467, v238, 3);
  *(v3 + 3472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v239.f32[0]), v454, *v239.f32, 1), v403, v239, 2), v467, v239, 3);
  *(v3 + 3488) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v240.f32[0]), v454, *v240.f32, 1), v403, v240, 2), v467, v240, 3);
  *(v3 + 3504) = xmmword_1000EFC90;
  *(v3 + 3520) = 0;
  v241 = v676;
  *(v3 + 3523) = v677;
  *(v3 + 3521) = v241;
  *(v3 + 3524) = 1069547520;
  *(v3 + 3528) = 9;
  *(v3 + 3529) = v674;
  *(v3 + 3531) = v675;
  *(v3 + 3532) = 1065353216;
  *(v3 + 3536) = 0;
  *(v3 + 3544) = 0u;
  *(v3 + 3560) = v673;
  *(v3 + 3561) = 3;
  *(v3 + 3563) = 1;
  *(v3 + 3568) = 0u;
  *(v3 + 3584) = sub_1000461C4;
  *(v3 + 3592) = 0;
  *(v3 + 3600) = 0x3F80000000000000;
  *(v3 + 3616) = xmmword_1000EF5C0;
  *(v3 + 3632) = 5;
  v242 = vmulq_f32(xmmword_10013DCA0, 0);
  v497 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v455 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v242), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v435 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v242, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v380 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC008F5C2)), vdupq_n_s32(0x3F07AE14u), *algn_10013DCB0), vdupq_n_s32(0x400B851Fu), xmmword_10013DCC0));
  sub_10001358C(v561, -0.69813, xmmword_1000EC910);
  v243 = sub_100013568(v561);
  v505 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v497, v243.n128_f32[0]), v455, v243.n128_u64[0], 1), v435, v243, 2), v380, v243, 3);
  v468 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v497, v244.f32[0]), v455, *v244.f32, 1), v435, v244, 2), v380, v244, 3);
  v404 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v497, v245.f32[0]), v455, *v245.f32, 1), v435, v245, 2), v380, v245, 3);
  v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v497, v246.f32[0]), v455, *v246.f32, 1), v435, v246, 2), v380, v246, 3);
  sub_10001358C(v562, 0.0, xmmword_1000EC8E0);
  v247 = sub_100013568(v562);
  v456 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v248.f32[0]), v468, *v248.f32, 1), v404, v248, 2), v381, v248, 3);
  v436 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v249.f32[0]), v468, *v249.f32, 1), v404, v249, 2), v381, v249, 3);
  v498 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v247.n128_f32[0]), v468, v247.n128_u64[0], 1), v404, v247, 2), v381, v247, 3);
  v506 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v250.f32[0]), v468, *v250.f32, 1), v404, v250, 2), v381, v250, 3);
  sub_10001358C(v563, 0.0, xmmword_1000EC920);
  v251 = sub_100013568(v563);
  v680 = 1;
  *(v3 + 3648) = 0x406147AE3FBD70A4;
  *(v3 + 3656) = 1048576000;
  *(v3 + 3660) = 0;
  *(v3 + 3661) = v685;
  *(v3 + 3663) = v686;
  *(v3 + 3664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v498, v251.n128_f32[0]), v456, v251.n128_u64[0], 1), v436, v251, 2), v506, v251, 3);
  *(v3 + 3680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v498, v252.f32[0]), v456, *v252.f32, 1), v436, v252, 2), v506, v252, 3);
  *(v3 + 3696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v498, v253.f32[0]), v456, *v253.f32, 1), v436, v253, 2), v506, v253, 3);
  *(v3 + 3712) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v498, v254.f32[0]), v456, *v254.f32, 1), v436, v254, 2), v506, v254, 3);
  *(v3 + 3728) = xmmword_1000EFCA0;
  *(v3 + 3744) = 0;
  v255 = v683;
  *(v3 + 3747) = v684;
  *(v3 + 3745) = v255;
  *(v3 + 3748) = 1061830001;
  *(v3 + 3752) = 9;
  *(v3 + 3753) = v681;
  *(v3 + 3755) = v682;
  *(v3 + 3756) = 1065353216;
  *(v3 + 3760) = 0;
  *(v3 + 3768) = 0u;
  *(v3 + 3784) = v680;
  *(v3 + 3785) = 3;
  *(v3 + 3787) = 1;
  *(v3 + 3792) = 0u;
  *(v3 + 3808) = sub_1000461F4;
  *(v3 + 3816) = 0;
  *(v3 + 3824) = 0x3F80000000000000;
  *(v3 + 3840) = xmmword_1000EF7D0;
  *(v3 + 3856) = 5;
  v256 = vmulq_f32(xmmword_10013DCA0, 0);
  v507 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v469 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v256), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v457 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v256, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v405 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD1EB85u)), vdupq_n_s32(0xC048F5C2), *algn_10013DCB0), vdupq_n_s32(0x3FBD70A4u), xmmword_10013DCC0));
  sub_10001358C(v564, 0.0, xmmword_1000EC910);
  v257 = sub_100013568(v564);
  v488 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v258.f32[0]), v469, *v258.f32, 1), v457, v258, 2), v405, v258, 3);
  v499 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v257.n128_f32[0]), v469, v257.n128_u64[0], 1), v457, v257, 2), v405, v257, 3);
  v437 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v259.f32[0]), v469, *v259.f32, 1), v457, v259, 2), v405, v259, 3);
  v470 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v260.f32[0]), v469, *v260.f32, 1), v457, v260, 2), v405, v260, 3);
  sub_10001358C(v565, -0.016581, xmmword_1000EC8E0);
  v261 = sub_100013568(v565);
  v511 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v499, v262.f32[0]), v488, *v262.f32, 1), v437, v262, 2), v470, v262, 3);
  v512 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v499, v261.n128_f32[0]), v488, v261.n128_u64[0], 1), v437, v261, 2), v470, v261, 3);
  v508 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v499, v263.f32[0]), v488, *v263.f32, 1), v437, v263, 2), v470, v263, 3);
  v500 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v499, v264.f32[0]), v488, *v264.f32, 1), v437, v264, 2), v470, v264, 3);
  sub_10001358C(v566, 0.0, xmmword_1000EC920);
  v265 = sub_100013568(v566);
  v687 = 1;
  *(v3 + 3872) = 0x40A00000402CCCCDLL;
  *(v3 + 3880) = 1056964608;
  *(v3 + 3884) = 1;
  *(v3 + 3885) = v692;
  *(v3 + 3887) = v693;
  *(v3 + 3888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v512, v265.n128_f32[0]), v511, v265.n128_u64[0], 1), v508, v265, 2), v500, v265, 3);
  *(v3 + 3904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v512, v266.f32[0]), v511, *v266.f32, 1), v508, v266, 2), v500, v266, 3);
  *(v3 + 3920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v512, v267.f32[0]), v511, *v267.f32, 1), v508, v267, 2), v500, v267, 3);
  *(v3 + 3936) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v512, v268.f32[0]), v511, *v268.f32, 1), v508, v268, 2), v500, v268, 3);
  *(v3 + 3952) = xmmword_1000EFCB0;
  *(v3 + 3968) = 0;
  v269 = v690;
  *(v3 + 3971) = v691;
  *(v3 + 3969) = v269;
  *(v3 + 3972) = 1086744166;
  *(v3 + 3976) = 9;
  *(v3 + 3977) = v688;
  *(v3 + 3979) = v689;
  *(v3 + 3980) = 1065353216;
  *(v3 + 3984) = 0;
  *(v3 + 3992) = 0u;
  *(v3 + 4008) = v687;
  *(v3 + 4009) = 259;
  *(v3 + 4011) = 1;
  *(v3 + 4016) = 0u;
  *(v3 + 4032) = sub_100046224;
  *(v3 + 4040) = 0;
  *(v3 + 4048) = 0x3F80000000000000;
  v270 = sub_1000A0774(v3);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020);
  v271 = swift_allocObject();
  v271[1] = xmmword_1000EDAB0;
  v271[2] = xmmword_1000EFCC0;
  v271[3] = xmmword_1000EFCD0;
  v271[4] = xmmword_1000EFCE0;
  v271[5] = xmmword_1000EFCF0;
  v271[6] = xmmword_1000EFD00;
  v272 = swift_allocObject();
  v272[1] = xmmword_1000EC880;
  v272[2] = xmmword_1000EFD10;
  v272[3] = xmmword_1000EFD20;
  v273 = swift_allocObject();
  v273[1] = xmmword_1000EC880;
  v273[2] = xmmword_1000EFD30;
  v273[3] = xmmword_1000EFD40;
  v274 = qword_10013AC20;
  v275 = unk_10013AC28;
  v276 = qword_10013AC30;

  v277 = qword_10013AC50;
  v278 = sub_1000A0A98(_swiftEmptyArrayStorage);
  v694.i64[0] = v274;
  v694.i64[1] = v275;
  v695.i64[0] = v276;
  v695.i64[1] = v278;
  v696.i64[0] = _swiftEmptyArrayStorage;
  v696.i64[1] = _swiftEmptyArrayStorage;
  v697 = v277;
  v566[3] = v694;
  v566[4] = v695;
  v566[5] = v696;
  v567 = v277;
  v279 = sub_1000A0A98(&off_10011F298);
  sub_1000047C4(&unk_10011F2B8, &qword_100131048);
  sub_1000125FC(&qword_100131050);
  v280 = swift_allocObject();
  *(v280 + 16) = xmmword_1000EC880;
  *(v280 + 32) = swift_getKeyPath();
  *(v280 + 40) = 1051766961;
  *(v280 + 48) = swift_getKeyPath();
  *(v280 + 56) = 1057458056;
  v281 = sub_1000A092C(_swiftEmptyArrayStorage);
  sub_1000BA704(v281, v279, _swiftEmptyArrayStorage, v280, v698);

  sub_100081544(&v694);
  swift_bridgeObjectRetain_n();
  v282 = sub_1000C1928(v270);

  sub_1000C53DC(v282, v702);
  v283 = sub_1000C199C(v270);

  sub_1000C53DC(v283, v700);
  xmmword_10013B080 = v481;
  *algn_10013B090 = v480;
  qword_10013B0A0 = v479;
  dword_10013B0A8 = v0;
  xmmword_10013B0B0 = v478;
  unk_10013B0C0 = v477;
  qword_10013B0D0 = v1;
  dword_10013B0D8 = v2;
  xmmword_10013B0E0 = v476;
  qword_10013B0F0 = v475;
  xmmword_10013B100 = v474;
  qword_10013B110 = v473;
  unk_10013B118 = v472;
  dword_10013B120 = v471;
  qword_10013B128 = 0;
  unk_10013B130 = v270;
  qword_10013B158 = v703;
  unk_10013B148 = v702[1];
  unk_10013B138 = v702[0];
  xmmword_10013B160 = v700[0];
  unk_10013B170 = v700[1];
  qword_10013B180 = v701;
  qword_10013B188 = sub_1000462DC;
  qword_10013B190 = 0;
  xmmword_10013B1A0 = xmmword_1000EFD50;
  unk_10013B1B0 = xmmword_1000EFD60;
  qword_10013B1C0 = v271;
  word_10013B1CC = 6;
  dword_10013B1C8 = 1018814174;
  xmmword_10013B1D0 = xmmword_1000EFD70;
  qword_10013B1E0 = v272;
  xmmword_10013B1E8 = xmmword_1000EFD80;
  xmmword_10013B1F8 = xmmword_1000EFD90;
  qword_10013B208 = 1063313633;
  unk_10013B210 = v273;
  xmmword_10013B218 = xmmword_1000EFDA0;
  xmmword_10013B228 = xmmword_1000EFDB0;
  qword_10013B238 = 1059300260;
  result = 5.592503e-12;
  qword_10013B280 = v699;
  xmmword_10013B260 = v698[1];
  unk_10013B270 = v698[2];
  xmmword_10013B240 = xmmword_1000EFDC0;
  unk_10013B250 = v698[0];
  return result;
}

uint64_t sub_100045CAC(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.12) * a2) + 0.12;
    *result = COERCE_UNSIGNED_INT(((*result + -2.9) * a2) + 2.9) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.7) * a2) + 3.7) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -7.1) * a2) + 7.1;
    *(result + 108) = ((*(result + 108) + -0.16) * a2) + 0.16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_100045DA0(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.15) * a2) + 0.15;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_100045DD0(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -5.0) * a2) + 5.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.6) * a2) + 0.6) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.3) * a2) + 1.3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100045E78(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.8) * a2) + 1.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.37) * a2) + 0.37) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -12.0) * a2) + 12.0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100045F20(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.15) * a2) + 0.15;
    *result = COERCE_UNSIGNED_INT(((*result + -2.9) * a2) + 2.9) | (COERCE_UNSIGNED_INT(((*(result + 4) + -4.8) * a2) + 4.8) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.4) * a2) + 0.4;
    *(result + 108) = ((*(result + 108) + -0.32) * a2) + 0.32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100046014(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -5.0) * a2) + 5.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.55) * a2) + 0.55) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.16) * a2) + 0.16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_1000460BC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -1.8) * a2) + 1.8;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_1000460EC(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.1) * a2) + 1.1) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.0) * a2) + 2.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.7) * a2) + 1.7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_100046194(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.39) * a2) + 0.39;
  *(a1 + 100) = result;
  return result;
}

float sub_1000461C4(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.095) * a2) + 0.095;
  *(a1 + 100) = result;
  return result;
}

float sub_1000461F4(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.4) * a2) + 0.4;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_100046224(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -2.8) * a2) + 2.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.2) * a2) + 3.2) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.73) * a2) + 0.73;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float32x2_t sub_1000462DC(float a1)
{
  v1 = a1;
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v2 = a1 * 3.1416;
  if (v1 >= 1.0)
  {
    v2 = 3.1416;
  }

  return vmul_n_f32(vadd_f32(vmul_n_f32(0x3E99999A3EF0A3D8, fminf(v1 / 0.95833, 1.0)), 0x3F3333333F07AE14), ((0.5 - (cosf(v2) * 0.5)) * 0.06) + 0.06);
}

double sub_100046394@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ((*(a1 + 24) & 0x8000000000000000) != 0)
  {
    *&v2 = 0x3F8000003F800000;
    *a2 = xmmword_1000EC900;
  }

  else
  {
    v2 = *(a1 + 32);
    *a2 = v2;
  }

  return *&v2;
}

uint64_t *sub_1000463C0(uint64_t *result, void *a2)
{
  if ((a2[3] & 0x8000000000000000) == 0)
  {
    v3 = *result;
    v2 = result[1];
    a2[2] = *(a2 + 4);
    a2[3] = 0;
    a2[4] = v3;
    a2[5] = v2;
  }

  return result;
}

double sub_1000463DC()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v543 = unk_10013AA60;
  v544 = xmmword_10013AA50;
  v542 = qword_10013AA70;
  v0 = dword_10013AA78;
  v540 = unk_10013AA90;
  v541 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v539 = dword_10013AAA8;
  v538 = xmmword_10013AAB0;
  v537 = qword_10013AAC0;
  v536 = xmmword_10013AAD0;
  v534 = unk_10013AAE8;
  v535 = qword_10013AAE0;
  v533 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000EFDD0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v3 = vmulq_f32(xmmword_10013DCA0, 0);
  v578 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v571 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v3), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v554 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v3, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v521 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0AA3D70)), vdupq_n_s32(0x40B7AE14u), *algn_10013DCB0), vdupq_n_s32(0xC06A3D70), xmmword_10013DCC0));
  sub_10001358C(v581, 2.234, xmmword_1000EC910);
  v4 = sub_100013568(v581);
  v577 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v578, v4.n128_f32[0]), v571, v4.n128_u64[0], 1), v554, v4, 2), v521, v4, 3);
  v562 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v578, v5.f32[0]), v571, *v5.f32, 1), v554, v5, 2), v521, v5, 3);
  v545 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v578, v6.f32[0]), v571, *v6.f32, 1), v554, v6, 2), v521, v6, 3);
  v512 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v578, v7.f32[0]), v571, *v7.f32, 1), v554, v7, 2), v521, v7, 3);
  sub_10001358C(v582, -2.426, xmmword_1000EC8E0);
  v8 = sub_100013568(v582);
  v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v577, v8.n128_f32[0]), v562, v8.n128_u64[0], 1), v545, v8, 2), v512, v8, 3);
  v555 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v577, v10.f32[0]), v562, *v10.f32, 1), v545, v10, 2), v512, v10, 3);
  v522 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v577, v11.f32[0]), v562, *v11.f32, 1), v545, v11, 2), v512, v11, 3);
  v563 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v577, v12.f32[0]), v562, *v12.f32, 1), v545, v12, 2), v512, v12, 3);
  v572 = v9;
  sub_10001358C(v583, 0.15708, xmmword_1000EC920);
  v13 = sub_100013568(v583);
  v642 = 0;
  *(v2 + 64) = 0x4080000040266666;
  *(v2 + 72) = 1008981770;
  *(v2 + 76) = 1;
  *(v2 + 77) = v647;
  *(v2 + 79) = v648;
  *(v2 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v572, v13.n128_f32[0]), v555, v13.n128_u64[0], 1), v522, v13, 2), v563, v13, 3);
  *(v2 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v572, v14.f32[0]), v555, *v14.f32, 1), v522, v14, 2), v563, v14, 3);
  *(v2 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v572, v15.f32[0]), v555, *v15.f32, 1), v522, v15, 2), v563, v15, 3);
  *(v2 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v572, v16.f32[0]), v555, *v16.f32, 1), v522, v16, 2), v563, v16, 3);
  *(v2 + 144) = xmmword_1000EFDE0;
  *(v2 + 160) = 2;
  v17 = v645;
  *(v2 + 163) = v646;
  *(v2 + 161) = v17;
  *(v2 + 164) = 1085066445;
  *(v2 + 168) = 1;
  *(v2 + 169) = v643;
  *(v2 + 171) = v644;
  *(v2 + 172) = 1051931443;
  *(v2 + 176) = xmmword_1000EFDF0;
  *(v2 + 192) = 0x3F0000003DCCCCCDLL;
  *(v2 + 200) = v642;
  *(v2 + 201) = 0;
  *(v2 + 203) = 1;
  *(v2 + 208) = 0u;
  *(v2 + 224) = sub_100049FFC;
  *(v2 + 232) = 0;
  *(v2 + 240) = 0x3F80000000000000;
  *(v2 + 256) = xmmword_1000EF5A0;
  *(v2 + 272) = 1;
  v18 = vmulq_f32(xmmword_10013DCA0, 0);
  v494 = vdupq_n_s32(0x3CA3D70Au);
  v556 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v513 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v18), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v503 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v18, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v523 = vdupq_n_s32(0x4041EB85u);
  v451 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v494), v523, *algn_10013DCB0), vdupq_n_s32(0xBD8F5C29), xmmword_10013DCC0));
  sub_10001358C(v584, -1.0472, xmmword_1000EC910);
  v19 = sub_100013568(v584);
  v573 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v556, v19.n128_f32[0]), v513, v19.n128_u64[0], 1), v503, v19, 2), v451, v19, 3);
  v546 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v556, v20.f32[0]), v513, *v20.f32, 1), v503, v20, 2), v451, v20, 3);
  v481 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v556, v21.f32[0]), v513, *v21.f32, 1), v503, v21, 2), v451, v21, 3);
  v452 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v556, v22.f32[0]), v513, *v22.f32, 1), v503, v22, 2), v451, v22, 3);
  sub_10001358C(v585, -0.83776, xmmword_1000EC8E0);
  v23 = sub_100013568(v585);
  v557 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v573, v23.n128_f32[0]), v546, v23.n128_u64[0], 1), v481, v23, 2), v452, v23, 3);
  v514 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v573, v24.f32[0]), v546, *v24.f32, 1), v481, v24, 2), v452, v24, 3);
  v504 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v573, v25.f32[0]), v546, *v25.f32, 1), v481, v25, 2), v452, v25, 3);
  v574 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v573, v26.f32[0]), v546, *v26.f32, 1), v481, v26, 2), v452, v26, 3);
  sub_10001358C(v586, -1.0647, xmmword_1000EC920);
  v27 = sub_100013568(v586);
  v649 = 1;
  *(v2 + 288) = 0x3FF333333F6B851FLL;
  *(v2 + 296) = 1045220557;
  *(v2 + 300) = 0;
  *(v2 + 301) = v654;
  *(v2 + 303) = v655;
  *(v2 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v557, v27.n128_f32[0]), v514, v27.n128_u64[0], 1), v504, v27, 2), v574, v27, 3);
  *(v2 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v557, v28.f32[0]), v514, *v28.f32, 1), v504, v28, 2), v574, v28, 3);
  *(v2 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v557, v29.f32[0]), v514, *v29.f32, 1), v504, v29, 2), v574, v29, 3);
  *(v2 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v557, v30.f32[0]), v514, *v30.f32, 1), v504, v30, 2), v574, v30, 3);
  *(v2 + 368) = xmmword_1000EC900;
  *(v2 + 384) = 0;
  v31 = v652;
  *(v2 + 387) = v653;
  *(v2 + 385) = v31;
  *(v2 + 388) = 1052266988;
  *(v2 + 392) = 9;
  *(v2 + 393) = v650;
  *(v2 + 395) = v651;
  *(v2 + 396) = 1065353216;
  *(v2 + 416) = 0;
  *(v2 + 400) = 0u;
  *(v2 + 424) = v649;
  *(v2 + 425) = 0;
  *(v2 + 427) = 0;
  *(v2 + 432) = 0u;
  *(v2 + 448) = sub_10004A0E0;
  *(v2 + 456) = 0;
  *(v2 + 464) = 0x3F80000000000000;
  *(v2 + 480) = xmmword_1000EF5C0;
  *(v2 + 496) = 1;
  v32 = vmulq_f32(xmmword_10013DCA0, 0);
  v547 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v482 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v32), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v422 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v32, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v374 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0A5C28F)), vdupq_n_s32(0xBFB33333), *algn_10013DCB0), vdupq_n_s32(0xC013D70A), xmmword_10013DCC0));
  sub_10001358C(v587, -0.97738, xmmword_1000EC910);
  v33 = sub_100013568(v587);
  v515 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v547, v33.n128_f32[0]), v482, v33.n128_u64[0], 1), v422, v33, 2), v374, v33, 3);
  v453 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v547, v34.f32[0]), v482, *v34.f32, 1), v422, v34, 2), v374, v34, 3);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v547, v35.f32[0]), v482, *v35.f32, 1), v422, v35, 2), v374, v35, 3);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v547, v36.f32[0]), v482, *v36.f32, 1), v422, v36, 2), v374, v36, 3);
  sub_10001358C(v588, 0.15708, xmmword_1000EC8E0);
  v37 = sub_100013568(v588);
  v548 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v515, v37.n128_f32[0]), v453, v37.n128_u64[0], 1), v398, v37, 2), v375, v37, 3);
  v483 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v515, v38.f32[0]), v453, *v38.f32, 1), v398, v38, 2), v375, v38, 3);
  v423 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v515, v39.f32[0]), v453, *v39.f32, 1), v398, v39, 2), v375, v39, 3);
  v516 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v515, v40.f32[0]), v453, *v40.f32, 1), v398, v40, 2), v375, v40, 3);
  sub_10001358C(v589, 0.2618, xmmword_1000EC920);
  v41 = sub_100013568(v589);
  v656 = 1;
  *(v2 + 512) = 0x408000004023D70ALL;
  *(v2 + 520) = 1036831949;
  *(v2 + 524) = 1;
  *(v2 + 525) = v661;
  *(v2 + 527) = v662;
  *(v2 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v548, v41.n128_f32[0]), v483, v41.n128_u64[0], 1), v423, v41, 2), v516, v41, 3);
  *(v2 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v548, v42.f32[0]), v483, *v42.f32, 1), v423, v42, 2), v516, v42, 3);
  *(v2 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v548, v43.f32[0]), v483, *v43.f32, 1), v423, v43, 2), v516, v43, 3);
  *(v2 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v548, v44.f32[0]), v483, *v44.f32, 1), v423, v44, 2), v516, v44, 3);
  *(v2 + 592) = xmmword_1000EFE00;
  *(v2 + 608) = 0;
  v45 = v659;
  *(v2 + 611) = v660;
  *(v2 + 609) = v45;
  *(v2 + 612) = 0x40000000;
  *(v2 + 616) = 9;
  *(v2 + 617) = v657;
  *(v2 + 619) = v658;
  *(v2 + 620) = 1065353216;
  *(v2 + 640) = 0;
  *(v2 + 624) = 0u;
  *(v2 + 648) = v656;
  *(v2 + 649) = 0;
  *(v2 + 651) = 0;
  *(v2 + 656) = 0u;
  *(v2 + 672) = sub_10004A110;
  *(v2 + 680) = 0;
  *(v2 + 688) = 0x3F80000000000000;
  *(v2 + 704) = xmmword_1000EF5D0;
  *(v2 + 720) = 1;
  v46 = vmulq_f32(xmmword_10013DCA0, 0);
  v484 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v424 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v46), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v376 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v46, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v352 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F7851EBu)), vdupq_n_s32(0xBEDC28F5), *algn_10013DCB0), vdupq_n_s32(0x3E2E147Bu), xmmword_10013DCC0));
  sub_10001358C(v590, 0.0, xmmword_1000EC910);
  v47 = sub_100013568(v590);
  v517 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v47.n128_f32[0]), v424, v47.n128_u64[0], 1), v376, v47, 2), v352, v47, 3);
  v454 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v48.f32[0]), v424, *v48.f32, 1), v376, v48, 2), v352, v48, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v49.f32[0]), v424, *v49.f32, 1), v376, v49, 2), v352, v49, 3);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v50.f32[0]), v424, *v50.f32, 1), v376, v50, 2), v352, v50, 3);
  sub_10001358C(v591, 0.61087, xmmword_1000EC8E0);
  v51 = sub_100013568(v591);
  v485 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v51.n128_f32[0]), v454, v51.n128_u64[0], 1), v399, v51, 2), v353, v51, 3);
  v425 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v52.f32[0]), v454, *v52.f32, 1), v399, v52, 2), v353, v52, 3);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v53.f32[0]), v454, *v53.f32, 1), v399, v53, 2), v353, v53, 3);
  v518 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v54.f32[0]), v454, *v54.f32, 1), v399, v54, 2), v353, v54, 3);
  sub_10001358C(v592, 0.0, xmmword_1000EC920);
  v55 = sub_100013568(v592);
  v663 = 1;
  *(v2 + 736) = 0x3FB3333340A00000;
  *(v2 + 744) = 1056964608;
  *(v2 + 748) = 1;
  *(v2 + 749) = v668;
  *(v2 + 751) = v669;
  *(v2 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v55.n128_f32[0]), v425, v55.n128_u64[0], 1), v377, v55, 2), v518, v55, 3);
  *(v2 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v56.f32[0]), v425, *v56.f32, 1), v377, v56, 2), v518, v56, 3);
  *(v2 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v57.f32[0]), v425, *v57.f32, 1), v377, v57, 2), v518, v57, 3);
  *(v2 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v58.f32[0]), v425, *v58.f32, 1), v377, v58, 2), v518, v58, 3);
  *(v2 + 816) = xmmword_1000EFE10;
  *(v2 + 832) = 0;
  v59 = v666;
  *(v2 + 835) = v667;
  *(v2 + 833) = v59;
  *(v2 + 836) = 1067869798;
  *(v2 + 840) = 9;
  *(v2 + 841) = v664;
  *(v2 + 843) = v665;
  *(v2 + 844) = 1065353216;
  *(v2 + 848) = 0;
  *(v2 + 856) = 0u;
  *(v2 + 872) = v663;
  *(v2 + 873) = 0;
  *(v2 + 875) = 0;
  *(v2 + 880) = 0u;
  *(v2 + 896) = sub_10004A1C8;
  *(v2 + 904) = 0;
  *(v2 + 912) = 0x3F80000000000000;
  *(v2 + 928) = xmmword_1000EF7D0;
  *(v2 + 944) = 1;
  v60 = vmulq_f32(xmmword_10013DCA0, 0);
  v455 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v400 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v60), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v378 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v60, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v61 = vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v494), vdupq_n_s32(0xBCF5C28F), *algn_10013DCB0);
  v495 = vdupq_n_s32(0x3ECCCCCCu);
  v335 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(v61, v495, xmmword_10013DCC0));
  sub_10001358C(v593, -0.61087, xmmword_1000EC910);
  v62 = sub_100013568(v593);
  v486 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v455, v62.n128_f32[0]), v400, v62.n128_u64[0], 1), v378, v62, 2), v335, v62, 3);
  v426 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v455, v63.f32[0]), v400, *v63.f32, 1), v378, v63, 2), v335, v63, 3);
  v354 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v455, v64.f32[0]), v400, *v64.f32, 1), v378, v64, 2), v335, v64, 3);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v455, v65.f32[0]), v400, *v65.f32, 1), v378, v65, 2), v335, v65, 3);
  sub_10001358C(v594, 0.24435, xmmword_1000EC8E0);
  v66 = sub_100013568(v594);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v67.f32[0]), v426, *v67.f32, 1), v354, v67, 2), v336, v67, 3);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v68.f32[0]), v426, *v68.f32, 1), v354, v68, 2), v336, v68, 3);
  v456 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v66.n128_f32[0]), v426, v66.n128_u64[0], 1), v354, v66, 2), v336, v66, 3);
  v487 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v69.f32[0]), v426, *v69.f32, 1), v354, v69, 2), v336, v69, 3);
  sub_10001358C(v595, 0.54105, xmmword_1000EC920);
  v70 = sub_100013568(v595);
  v670 = 1;
  *(v2 + 960) = 0x3F7851EC406147AELL;
  *(v2 + 968) = 1036831949;
  *(v2 + 972) = 1;
  *(v2 + 973) = v675;
  *(v2 + 975) = v676;
  *(v2 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v70.n128_f32[0]), v401, v70.n128_u64[0], 1), v379, v70, 2), v487, v70, 3);
  *(v2 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v71.f32[0]), v401, *v71.f32, 1), v379, v71, 2), v487, v71, 3);
  *(v2 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v72.f32[0]), v401, *v72.f32, 1), v379, v72, 2), v487, v72, 3);
  *(v2 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v73.f32[0]), v401, *v73.f32, 1), v379, v73, 2), v487, v73, 3);
  *(v2 + 1040) = xmmword_1000EC900;
  *(v2 + 1056) = 0;
  v74 = v673;
  *(v2 + 1059) = v674;
  *(v2 + 1057) = v74;
  *(v2 + 1060) = 1062836634;
  *(v2 + 1064) = 9;
  *(v2 + 1065) = v671;
  *(v2 + 1067) = v672;
  *(v2 + 1068) = 1065353216;
  *(v2 + 1072) = 0;
  *(v2 + 1080) = 0u;
  *(v2 + 1096) = v670;
  *(v2 + 1097) = 0;
  *(v2 + 1099) = 1;
  *(v2 + 1104) = 0u;
  *(v2 + 1120) = sub_10004A280;
  *(v2 + 1128) = 0;
  *(v2 + 1136) = 0x3F80000000000000;
  *(v2 + 1152) = xmmword_1000EF5A0;
  *(v2 + 1168) = 2;
  v75 = vmulq_f32(xmmword_10013DCA0, 0);
  v402 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v355 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v75), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v337 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v75, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v488 = vdupq_n_s32(0x3EF5C28Fu);
  v457 = vdupq_n_s32(0x3F30A3D7u);
  v320 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEF0A3D7)), v488, *algn_10013DCB0), v457, xmmword_10013DCC0));
  sub_10001358C(v596, 4.7124, xmmword_1000EC910);
  v76 = sub_100013568(v596);
  v427 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v76.n128_f32[0]), v355, v76.n128_u64[0], 1), v337, v76, 2), v320, v76, 3);
  v380 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v77.f32[0]), v355, *v77.f32, 1), v337, v77, 2), v320, v77, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v78.f32[0]), v355, *v78.f32, 1), v337, v78, 2), v320, v78, 3);
  v321 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v79.f32[0]), v355, *v79.f32, 1), v337, v79, 2), v320, v79, 3);
  sub_10001358C(v597, 0.27925, xmmword_1000EC8E0);
  v80 = sub_100013568(v597);
  v356 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v81.f32[0]), v380, *v81.f32, 1), v322, v81, 2), v321, v81, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v82.f32[0]), v380, *v82.f32, 1), v322, v82, 2), v321, v82, 3);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v80.n128_f32[0]), v380, v80.n128_u64[0], 1), v322, v80, 2), v321, v80, 3);
  v428 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v83.f32[0]), v380, *v83.f32, 1), v322, v83, 2), v321, v83, 3);
  sub_10001358C(v598, -1.5708, xmmword_1000EC920);
  v84 = sub_100013568(v598);
  v677 = 1;
  *(v2 + 1184) = 0x3FA666663FB33333;
  *(v2 + 1192) = 1053609165;
  *(v2 + 1196) = 1;
  *(v2 + 1197) = v682;
  *(v2 + 1199) = v683;
  *(v2 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v84.n128_f32[0]), v356, v84.n128_u64[0], 1), v338, v84, 2), v428, v84, 3);
  *(v2 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v85.f32[0]), v356, *v85.f32, 1), v338, v85, 2), v428, v85, 3);
  *(v2 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v86.f32[0]), v356, *v86.f32, 1), v338, v86, 2), v428, v86, 3);
  *(v2 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v87.f32[0]), v356, *v87.f32, 1), v338, v87, 2), v428, v87, 3);
  *(v2 + 1264) = xmmword_1000EFE20;
  *(v2 + 1280) = 0;
  v88 = v680;
  *(v2 + 1283) = v681;
  *(v2 + 1281) = v88;
  *(v2 + 1284) = 1084647014;
  *(v2 + 1288) = 13;
  *(v2 + 1289) = v678;
  *(v2 + 1291) = v679;
  *(v2 + 1292) = 1065353216;
  *(v2 + 1296) = 0;
  *(v2 + 1304) = 0u;
  *(v2 + 1320) = v677;
  *(v2 + 1321) = 0;
  *(v2 + 1323) = 0;
  *(v2 + 1360) = 0;
  *(v2 + 1344) = 0u;
  *(v2 + 1328) = 0u;
  *(v2 + 1364) = 1067611688;
  *(v2 + 1376) = xmmword_1000EF5C0;
  v89 = *algn_10013DCB0;
  v90 = vmulq_f32(xmmword_10013DCA0, 0);
  v91 = xmmword_10013DCC0;
  v92 = xmmword_10013DCD0;
  v93 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F51EB85u));
  v429 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 1392) = 2;
  v381 = vmlaq_f32(vmlaq_f32(vaddq_f32(v89, v90), 0, v91), 0, v92);
  v339 = vmlaq_f32(vaddq_f32(v91, vmlaq_f32(v90, 0, v89)), 0, v92);
  v323 = vaddq_f32(v92, vmlaq_f32(vmlaq_f32(v93, vdupq_n_s32(0xBE8F5C29), v89), v457, v91));
  sub_10001358C(v599, 4.7124, xmmword_1000EC910);
  v94 = sub_100013568(v599);
  v458 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v94.n128_f32[0]), v381, v94.n128_u64[0], 1), v339, v94, 2), v323, v94, 3);
  v404 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v95.f32[0]), v381, *v95.f32, 1), v339, v95, 2), v323, v95, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v96.f32[0]), v381, *v96.f32, 1), v339, v96, 2), v323, v96, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v97.f32[0]), v381, *v97.f32, 1), v339, v97, 2), v323, v97, 3);
  sub_10001358C(v600, 1.4486, xmmword_1000EC8E0);
  v98 = sub_100013568(v600);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v99.f32[0]), v404, *v99.f32, 1), v357, v99, 2), v324, v99, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v100.f32[0]), v404, *v100.f32, 1), v357, v100, 2), v324, v100, 3);
  v430 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v98.n128_f32[0]), v404, v98.n128_u64[0], 1), v357, v98, 2), v324, v98, 3);
  v459 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v101.f32[0]), v404, *v101.f32, 1), v357, v101, 2), v324, v101, 3);
  sub_10001358C(v601, -1.5708, xmmword_1000EC920);
  v102 = sub_100013568(v601);
  v684 = 1;
  *(v2 + 1408) = 0x3F170A3D3FB33333;
  *(v2 + 1416) = 1053609165;
  *(v2 + 1420) = 1;
  *(v2 + 1421) = v689;
  *(v2 + 1423) = v690;
  *(v2 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v102.n128_f32[0]), v382, v102.n128_u64[0], 1), v340, v102, 2), v459, v102, 3);
  *(v2 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v103.f32[0]), v382, *v103.f32, 1), v340, v103, 2), v459, v103, 3);
  *(v2 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v104.f32[0]), v382, *v104.f32, 1), v340, v104, 2), v459, v104, 3);
  *(v2 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v105.f32[0]), v382, *v105.f32, 1), v340, v105, 2), v459, v105, 3);
  *(v2 + 1488) = xmmword_1000EFE30;
  *(v2 + 1504) = 0;
  v106 = v687;
  *(v2 + 1507) = v688;
  *(v2 + 1505) = v106;
  *(v2 + 1508) = 1091567616;
  *(v2 + 1512) = 13;
  *(v2 + 1513) = v685;
  *(v2 + 1515) = v686;
  *(v2 + 1516) = 1065353216;
  *(v2 + 1520) = 0;
  *(v2 + 1528) = 0u;
  *(v2 + 1544) = v684;
  *(v2 + 1545) = 0;
  *(v2 + 1547) = 0;
  *(v2 + 1552) = 0u;
  *(v2 + 1568) = sub_10004A2B0;
  *(v2 + 1576) = 0;
  *(v2 + 1584) = 0x3EE38E3900000000;
  *(v2 + 1600) = xmmword_1000EF5C0;
  *(v2 + 1616) = 9;
  v107 = vmulq_f32(xmmword_10013DCA0, 0);
  v460 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v405 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v107), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v358 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v107, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v325 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0E47AE1)), vdupq_n_s32(0x40D1EB85u), *algn_10013DCB0), vdupq_n_s32(0xC09DC28F), xmmword_10013DCC0));
  sub_10001358C(v602, 2.234, xmmword_1000EC910);
  v108 = sub_100013568(v602);
  v431 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v108.n128_f32[0]), v405, v108.n128_u64[0], 1), v358, v108, 2), v325, v108, 3);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v109.f32[0]), v405, *v109.f32, 1), v358, v109, 2), v325, v109, 3);
  v341 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v110.f32[0]), v405, *v110.f32, 1), v358, v110, 2), v325, v110, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v111.f32[0]), v405, *v111.f32, 1), v358, v111, 2), v325, v111, 3);
  sub_10001358C(v603, -2.426, xmmword_1000EC8E0);
  v112 = sub_100013568(v603);
  v113 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v112.n128_f32[0]), v383, v112.n128_u64[0], 1), v341, v112, 2), v326, v112, 3);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v114.f32[0]), v383, *v114.f32, 1), v341, v114, 2), v326, v114, 3);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v115.f32[0]), v383, *v115.f32, 1), v341, v115, 2), v326, v115, 3);
  v432 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v116.f32[0]), v383, *v116.f32, 1), v341, v116, 2), v326, v116, 3);
  v461 = v113;
  sub_10001358C(v604, 0.14835, xmmword_1000EC920);
  v117 = sub_100013568(v604);
  v691 = 0;
  *(v2 + 1632) = 0x4059999A40233333;
  *(v2 + 1640) = 1004888130;
  *(v2 + 1644) = 1;
  *(v2 + 1645) = v696;
  *(v2 + 1647) = v697;
  *(v2 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v117.n128_f32[0]), v406, v117.n128_u64[0], 1), v359, v117, 2), v432, v117, 3);
  *(v2 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v118.f32[0]), v406, *v118.f32, 1), v359, v118, 2), v432, v118, 3);
  *(v2 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v119.f32[0]), v406, *v119.f32, 1), v359, v119, 2), v432, v119, 3);
  *(v2 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v120.f32[0]), v406, *v120.f32, 1), v359, v120, 2), v432, v120, 3);
  *(v2 + 1712) = xmmword_1000EFBE0;
  *(v2 + 1728) = 2;
  v121 = v694;
  *(v2 + 1731) = v695;
  *(v2 + 1729) = v121;
  *(v2 + 1732) = 1075838976;
  *(v2 + 1736) = 1;
  *(v2 + 1737) = v692;
  *(v2 + 1739) = v693;
  *(v2 + 1740) = 1061158912;
  *(v2 + 1744) = xmmword_1000EFE40;
  *(v2 + 1760) = 0x3F8000003F000000;
  *(v2 + 1768) = v691;
  *(v2 + 1769) = 1;
  *(v2 + 1771) = 1;
  *(v2 + 1776) = 0u;
  *(v2 + 1792) = sub_10004A368;
  *(v2 + 1800) = 0;
  *(v2 + 1808) = 0x3F80000000000000;
  *(v2 + 1824) = xmmword_1000EF5A0;
  *(v2 + 1840) = 3;
  v122 = vmulq_f32(xmmword_10013DCA0, 0);
  v433 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v384 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v122), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v360 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v122, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v327 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F147AE1u)), vdupq_n_s32(0xBE8A3D70), *algn_10013DCB0), vdupq_n_s32(0xBF733333), xmmword_10013DCC0));
  sub_10001358C(v605, 0.10472, xmmword_1000EC910);
  v123 = sub_100013568(v605);
  v462 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v123.n128_f32[0]), v384, v123.n128_u64[0], 1), v360, v123, 2), v327, v123, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v124.f32[0]), v384, *v124.f32, 1), v360, v124, 2), v327, v124, 3);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v125.f32[0]), v384, *v125.f32, 1), v360, v125, 2), v327, v125, 3);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v126.f32[0]), v384, *v126.f32, 1), v360, v126, 2), v327, v126, 3);
  sub_10001358C(v606, -0.27925, xmmword_1000EC8E0);
  v127 = sub_100013568(v606);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v128.f32[0]), v407, *v128.f32, 1), v342, v128, 2), v328, v128, 3);
  v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v129.f32[0]), v407, *v129.f32, 1), v342, v129, 2), v328, v129, 3);
  v434 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v127.n128_f32[0]), v407, v127.n128_u64[0], 1), v342, v127, 2), v328, v127, 3);
  v463 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v130.f32[0]), v407, *v130.f32, 1), v342, v130, 2), v328, v130, 3);
  sub_10001358C(v607, 0.80285, xmmword_1000EC920);
  v131 = sub_100013568(v607);
  v698 = 1;
  *(v2 + 1856) = 0x3F7851EC40133333;
  *(v2 + 1864) = 1045220557;
  *(v2 + 1868) = 1;
  *(v2 + 1869) = v703;
  *(v2 + 1871) = v704;
  *(v2 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v131.n128_f32[0]), v385, v131.n128_u64[0], 1), v361, v131, 2), v463, v131, 3);
  *(v2 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v132.f32[0]), v385, *v132.f32, 1), v361, v132, 2), v463, v132, 3);
  *(v2 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v133.f32[0]), v385, *v133.f32, 1), v361, v133, 2), v463, v133, 3);
  *(v2 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v134.f32[0]), v385, *v134.f32, 1), v361, v134, 2), v463, v134, 3);
  *(v2 + 1936) = xmmword_1000EFE50;
  *(v2 + 1952) = 0;
  v135 = v701;
  *(v2 + 1955) = v702;
  *(v2 + 1953) = v135;
  *(v2 + 1956) = 1068708659;
  *(v2 + 1960) = 10;
  *(v2 + 1961) = v699;
  *(v2 + 1963) = v700;
  *(v2 + 1964) = 1065353216;
  *(v2 + 1968) = 0;
  *(v2 + 1976) = 0u;
  *(v2 + 1992) = v698;
  *(v2 + 1993) = 1;
  *(v2 + 1995) = 1;
  *(v2 + 2000) = 0u;
  *(v2 + 2016) = sub_10004A44C;
  *(v2 + 2024) = 0;
  *(v2 + 2032) = 0x3F80000000000000;
  *(v2 + 2048) = xmmword_1000EF5C0;
  *(v2 + 2064) = 3;
  v136 = vmulq_f32(xmmword_10013DCA0, 0);
  __asm { FMOV            V5.4S, #-3.25 }

  v435 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v386 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v136), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v362 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v136, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v329 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, _Q5), vdupq_n_s32(0xBFACCCCD), *algn_10013DCB0), vdupq_n_s32(0xC0AE147B), xmmword_10013DCC0));
  sub_10001358C(v608, -0.64577, xmmword_1000EC910);
  v142 = sub_100013568(v608);
  v464 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v142.n128_f32[0]), v386, v142.n128_u64[0], 1), v362, v142, 2), v329, v142, 3);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v143.f32[0]), v386, *v143.f32, 1), v362, v143, 2), v329, v143, 3);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v144.f32[0]), v386, *v144.f32, 1), v362, v144, 2), v329, v144, 3);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v145.f32[0]), v386, *v145.f32, 1), v362, v145, 2), v329, v145, 3);
  sub_10001358C(v609, -0.069813, xmmword_1000EC8E0);
  v146 = sub_100013568(v609);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v147.f32[0]), v408, *v147.f32, 1), v343, v147, 2), v330, v147, 3);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v148.f32[0]), v408, *v148.f32, 1), v343, v148, 2), v330, v148, 3);
  v436 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v146.n128_f32[0]), v408, v146.n128_u64[0], 1), v343, v146, 2), v330, v146, 3);
  v465 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v149.f32[0]), v408, *v149.f32, 1), v343, v149, 2), v330, v149, 3);
  sub_10001358C(v610, 1.0123, xmmword_1000EC920);
  v150 = sub_100013568(v610);
  v705 = 1;
  *(v2 + 2080) = 0x4053D70A408428F6;
  *(v2 + 2088) = 1036831949;
  *(v2 + 2092) = 1;
  *(v2 + 2093) = v710;
  *(v2 + 2095) = v711;
  *(v2 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v150.n128_f32[0]), v387, v150.n128_u64[0], 1), v363, v150, 2), v465, v150, 3);
  *(v2 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v151.f32[0]), v387, *v151.f32, 1), v363, v151, 2), v465, v151, 3);
  *(v2 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v152.f32[0]), v387, *v152.f32, 1), v363, v152, 2), v465, v152, 3);
  *(v2 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v153.f32[0]), v387, *v153.f32, 1), v363, v153, 2), v465, v153, 3);
  *(v2 + 2160) = xmmword_1000EC900;
  *(v2 + 2176) = 0;
  v154 = v708;
  *(v2 + 2179) = v709;
  *(v2 + 2177) = v154;
  *(v2 + 2180) = 1061158912;
  *(v2 + 2184) = 13;
  *(v2 + 2185) = v706;
  *(v2 + 2187) = v707;
  *(v2 + 2188) = 1065353216;
  *(v2 + 2192) = 0;
  *(v2 + 2200) = 0u;
  *(v2 + 2216) = v705;
  *(v2 + 2217) = 1;
  *(v2 + 2219) = 0;
  *(v2 + 2224) = 0u;
  *(v2 + 2240) = sub_10004A47C;
  *(v2 + 2248) = 0;
  *(v2 + 2256) = 0x3F80000000000000;
  *(v2 + 2272) = xmmword_1000EF5D0;
  *(v2 + 2288) = 3;
  v155 = vmulq_f32(xmmword_10013DCA0, 0);
  v437 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v388 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v155), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v364 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v155, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v496 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F6E147Bu)), v495, *algn_10013DCB0), vdupq_n_s32(0xC0A8F5C2), xmmword_10013DCC0));
  sub_10001358C(v611, 0.0, xmmword_1000EC910);
  v156 = sub_100013568(v611);
  v466 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v156.n128_f32[0]), v388, v156.n128_u64[0], 1), v364, v156, 2), v496, v156, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v157.f32[0]), v388, *v157.f32, 1), v364, v157, 2), v496, v157, 3);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v158.f32[0]), v388, *v158.f32, 1), v364, v158, 2), v496, v158, 3);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v159.f32[0]), v388, *v159.f32, 1), v364, v159, 2), v496, v159, 3);
  sub_10001358C(v612, 0.0, xmmword_1000EC8E0);
  v160 = sub_100013568(v612);
  v497 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v160.n128_f32[0]), v409, v160.n128_u64[0], 1), v344, v160, 2), v365, v160, 3);
  v438 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v161.f32[0]), v409, *v161.f32, 1), v344, v161, 2), v365, v161, 3);
  v389 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v162.f32[0]), v409, *v162.f32, 1), v344, v162, 2), v365, v162, 3);
  v467 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v163.f32[0]), v409, *v163.f32, 1), v344, v163, 2), v365, v163, 3);
  sub_10001358C(v613, -0.50615, xmmword_1000EC920);
  v164 = sub_100013568(v613);
  v712 = 1;
  *(v2 + 2304) = 0x3FF47AE1408428F6;
  *(v2 + 2312) = 1036831949;
  *(v2 + 2316) = 1;
  *(v2 + 2317) = v717;
  *(v2 + 2319) = v718;
  *(v2 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v497, v164.n128_f32[0]), v438, v164.n128_u64[0], 1), v389, v164, 2), v467, v164, 3);
  *(v2 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v497, v165.f32[0]), v438, *v165.f32, 1), v389, v165, 2), v467, v165, 3);
  *(v2 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v497, v166.f32[0]), v438, *v166.f32, 1), v389, v166, 2), v467, v166, 3);
  *(v2 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v497, v167.f32[0]), v438, *v167.f32, 1), v389, v167, 2), v467, v167, 3);
  *(v2 + 2384) = xmmword_1000EC900;
  *(v2 + 2400) = 0;
  v168 = v715;
  *(v2 + 2403) = v716;
  *(v2 + 2401) = v168;
  *(v2 + 2404) = 1057300152;
  *(v2 + 2408) = 9;
  *(v2 + 2409) = v713;
  *(v2 + 2411) = v714;
  *(v2 + 2412) = 1065353216;
  *(v2 + 2416) = 0;
  *(v2 + 2424) = 0u;
  *(v2 + 2440) = v712;
  *(v2 + 2441) = 1;
  *(v2 + 2443) = 0;
  *(v2 + 2448) = 0u;
  *(v2 + 2464) = sub_10004A4AC;
  *(v2 + 2472) = 0;
  *(v2 + 2480) = 0x3F80000000000000;
  *(v2 + 2496) = xmmword_1000EF5A0;
  *(v2 + 2512) = 4;
  v169 = vmulq_f32(xmmword_10013DCA0, 0);
  v468 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v410 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v169), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v390 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v169, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v498 = vdupq_n_s32(0x3EB33333u);
  v345 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v488), v498, *algn_10013DCB0), vdupq_n_s32(0xBE851EB8), xmmword_10013DCC0));
  sub_10001358C(v614, 1.5708, xmmword_1000EC910);
  v170 = sub_100013568(v614);
  v489 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v170.n128_f32[0]), v410, v170.n128_u64[0], 1), v390, v170, 2), v345, v170, 3);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v171.f32[0]), v410, *v171.f32, 1), v390, v171, 2), v345, v171, 3);
  v366 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v172.f32[0]), v410, *v172.f32, 1), v390, v172, 2), v345, v172, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v173.f32[0]), v410, *v173.f32, 1), v390, v173, 2), v345, v173, 3);
  sub_10001358C(v615, -0.82903, xmmword_1000EC8E0);
  v174 = sub_100013568(v615);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v489, v175.f32[0]), v439, *v175.f32, 1), v366, v175, 2), v346, v175, 3);
  v391 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v489, v176.f32[0]), v439, *v176.f32, 1), v366, v176, 2), v346, v176, 3);
  v469 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v489, v174.n128_f32[0]), v439, v174.n128_u64[0], 1), v366, v174, 2), v346, v174, 3);
  v490 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v489, v177.f32[0]), v439, *v177.f32, 1), v366, v177, 2), v346, v177, 3);
  sub_10001358C(v616, 1.5708, xmmword_1000EC920);
  v178 = sub_100013568(v616);
  v719 = 1;
  *(v2 + 2528) = 0x3F4CCCCD40133333;
  *(v2 + 2536) = 1045220557;
  *(v2 + 2540) = 1;
  *(v2 + 2541) = v724;
  *(v2 + 2543) = v725;
  *(v2 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v469, v178.n128_f32[0]), v411, v178.n128_u64[0], 1), v391, v178, 2), v490, v178, 3);
  *(v2 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v469, v179.f32[0]), v411, *v179.f32, 1), v391, v179, 2), v490, v179, 3);
  *(v2 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v469, v180.f32[0]), v411, *v180.f32, 1), v391, v180, 2), v490, v180, 3);
  *(v2 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v469, v181.f32[0]), v411, *v181.f32, 1), v391, v181, 2), v490, v181, 3);
  *(v2 + 2608) = xmmword_1000EFE60;
  *(v2 + 2624) = 0;
  v182 = v722;
  *(v2 + 2627) = v723;
  *(v2 + 2625) = v182;
  *(v2 + 2628) = 1083808154;
  *(v2 + 2632) = 9;
  *(v2 + 2633) = v720;
  *(v2 + 2635) = v721;
  *(v2 + 2636) = 1065353216;
  *(v2 + 2640) = 0;
  *(v2 + 2648) = 0u;
  *(v2 + 2664) = v719;
  *(v2 + 2665) = 1;
  *(v2 + 2667) = 0;
  *(v2 + 2672) = 0u;
  *(v2 + 2688) = sub_10004A4DC;
  *(v2 + 2696) = 0;
  *(v2 + 2704) = 0x3FC0000000000000;
  *(v2 + 2720) = xmmword_1000EF5A0;
  *(v2 + 2736) = 6;
  v183 = vmulq_f32(xmmword_10013DCA0, 0);
  v440 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v392 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v183), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v347 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v183, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v491 = vdupq_n_s32(0xBF8E147B);
  v331 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE6B851E)), vdupq_n_s32(0x3F0CCCCDu), *algn_10013DCB0), v491, xmmword_10013DCC0));
  sub_10001358C(v617, 1.5708, xmmword_1000EC910);
  v184 = sub_100013568(v617);
  v470 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v184.n128_f32[0]), v392, v184.n128_u64[0], 1), v347, v184, 2), v331, v184, 3);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v185.f32[0]), v392, *v185.f32, 1), v347, v185, 2), v331, v185, 3);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v186.f32[0]), v392, *v186.f32, 1), v347, v186, 2), v331, v186, 3);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v187.f32[0]), v392, *v187.f32, 1), v347, v187, 2), v331, v187, 3);
  sub_10001358C(v618, -3.4034, xmmword_1000EC8E0);
  v188 = sub_100013568(v618);
  v393 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v189.f32[0]), v412, *v189.f32, 1), v367, v189, 2), v332, v189, 3);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v190.f32[0]), v412, *v190.f32, 1), v367, v190, 2), v332, v190, 3);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v188.n128_f32[0]), v412, v188.n128_u64[0], 1), v367, v188, 2), v332, v188, 3);
  v471 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v191.f32[0]), v412, *v191.f32, 1), v367, v191, 2), v332, v191, 3);
  sub_10001358C(v619, 1.5708, xmmword_1000EC920);
  v192 = sub_100013568(v619);
  v726 = 1;
  *(v2 + 2752) = 0x3F8000003F2B851FLL;
  *(v2 + 2760) = 1056964608;
  *(v2 + 2764) = 1;
  *(v2 + 2765) = v731;
  *(v2 + 2767) = v732;
  *(v2 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v192.n128_f32[0]), v393, v192.n128_u64[0], 1), v348, v192, 2), v471, v192, 3);
  *(v2 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v193.f32[0]), v393, *v193.f32, 1), v348, v193, 2), v471, v193, 3);
  *(v2 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v194.f32[0]), v393, *v194.f32, 1), v348, v194, 2), v471, v194, 3);
  *(v2 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v195.f32[0]), v393, *v195.f32, 1), v348, v195, 2), v471, v195, 3);
  *(v2 + 2832) = xmmword_1000EFE70;
  *(v2 + 2848) = 0;
  v196 = v729;
  *(v2 + 2851) = v730;
  *(v2 + 2849) = v196;
  *(v2 + 2852) = 1060320051;
  *(v2 + 2856) = 9;
  *(v2 + 2857) = v727;
  *(v2 + 2859) = v728;
  *(v2 + 2860) = 1065353216;
  *(v2 + 2864) = 0;
  *(v2 + 2872) = 0u;
  *(v2 + 2888) = v726;
  *(v2 + 2889) = 2;
  *(v2 + 2891) = 1;
  *(v2 + 2928) = 0;
  *(v2 + 2912) = 0u;
  *(v2 + 2896) = 0u;
  *(v2 + 2932) = 1065353216;
  *(v2 + 2944) = xmmword_1000EF5C0;
  v197 = *algn_10013DCB0;
  v198 = vmulq_f32(xmmword_10013DCA0, 0);
  v199 = xmmword_10013DCC0;
  v200 = xmmword_10013DCD0;
  v201 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE570A3D));
  v472 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 2960) = 6;
  v413 = vmlaq_f32(vmlaq_f32(vaddq_f32(v197, v198), 0, v199), 0, v200);
  v368 = vmlaq_f32(vaddq_f32(v199, vmlaq_f32(v198, 0, v197)), 0, v200);
  v349 = vaddq_f32(v200, vmlaq_f32(vmlaq_f32(v201, vdupq_n_s32(0xBF11EB85), v197), v491, v199));
  sub_10001358C(v620, 1.5708, xmmword_1000EC910);
  v202 = sub_100013568(v620);
  v492 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v202.n128_f32[0]), v413, v202.n128_u64[0], 1), v368, v202, 2), v349, v202, 3);
  v442 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v203.f32[0]), v413, *v203.f32, 1), v368, v203, 2), v349, v203, 3);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v204.f32[0]), v413, *v204.f32, 1), v368, v204, 2), v349, v204, 3);
  v350 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v205.f32[0]), v413, *v205.f32, 1), v368, v205, 2), v349, v205, 3);
  sub_10001358C(v621, -2.4609, xmmword_1000EC8E0);
  v206 = sub_100013568(v621);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v492, v207.f32[0]), v442, *v207.f32, 1), v394, v207, 2), v350, v207, 3);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v492, v208.f32[0]), v442, *v208.f32, 1), v394, v208, 2), v350, v208, 3);
  v473 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v492, v206.n128_f32[0]), v442, v206.n128_u64[0], 1), v394, v206, 2), v350, v206, 3);
  v493 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v492, v209.f32[0]), v442, *v209.f32, 1), v394, v209, 2), v350, v209, 3);
  sub_10001358C(v622, 1.5708, xmmword_1000EC920);
  v210 = sub_100013568(v622);
  v733 = 1;
  *(v2 + 2976) = 0x3F4CCCCD3FD851ECLL;
  *(v2 + 2984) = 1065353216;
  *(v2 + 2988) = 1;
  *(v2 + 2989) = v738;
  *(v2 + 2991) = v739;
  *(v2 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v473, v210.n128_f32[0]), v414, v210.n128_u64[0], 1), v369, v210, 2), v493, v210, 3);
  *(v2 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v473, v211.f32[0]), v414, *v211.f32, 1), v369, v211, 2), v493, v211, 3);
  *(v2 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v473, v212.f32[0]), v414, *v212.f32, 1), v369, v212, 2), v493, v212, 3);
  *(v2 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v473, v213.f32[0]), v414, *v213.f32, 1), v369, v213, 2), v493, v213, 3);
  *(v2 + 3056) = xmmword_1000EFE80;
  *(v2 + 3072) = 0;
  v214 = v736;
  *(v2 + 3075) = v737;
  *(v2 + 3073) = v214;
  *(v2 + 3076) = 1052938076;
  *(v2 + 3080) = 9;
  *(v2 + 3081) = v734;
  *(v2 + 3083) = v735;
  *(v2 + 3084) = 1065353216;
  *(v2 + 3088) = 0;
  *(v2 + 3096) = 0u;
  *(v2 + 3112) = v733;
  *(v2 + 3113) = 2;
  *(v2 + 3115) = 1;
  v215 = xmmword_10013DCA0;
  v216 = *algn_10013DCB0;
  v217 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v2 + 3152) = 0;
  __asm { FMOV            V3.4S, #-4.0 }

  v219 = vmulq_f32(v215, _Q3);
  v220 = vmlaq_f32(v215, 0, v216);
  v221 = xmmword_10013DCC0;
  v222 = xmmword_10013DCD0;
  v443 = vmlaq_f32(vmlaq_f32(v220, 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 3136) = 0u;
  *(v2 + 3120) = 0u;
  v415 = vmlaq_f32(vmlaq_f32(vaddq_f32(v216, v217), 0, v221), 0, v222);
  *(v2 + 3156) = 1065353216;
  v370 = vmlaq_f32(vaddq_f32(v221, vmlaq_f32(v217, 0, v216)), 0, v222);
  *(v2 + 3168) = xmmword_1000EF630;
  v333 = vaddq_f32(v222, vmlaq_f32(vmlaq_f32(v219, vdupq_n_s32(0x409851EBu), v216), vdupq_n_s32(0x40566666u), v221));
  *(v2 + 3184) = 9;
  sub_10001358C(v623, -1.2392, xmmword_1000EC910);
  v223 = sub_100013568(v623);
  v474 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v223.n128_f32[0]), v415, v223.n128_u64[0], 1), v370, v223, 2), v333, v223, 3);
  v395 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v224.f32[0]), v415, *v224.f32, 1), v370, v224, 2), v333, v224, 3);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v225.f32[0]), v415, *v225.f32, 1), v370, v225, 2), v333, v225, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v226.f32[0]), v415, *v226.f32, 1), v370, v226, 2), v333, v226, 3);
  sub_10001358C(v624, -0.73304, xmmword_1000EC8E0);
  v227 = sub_100013568(v624);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v228.f32[0]), v395, *v228.f32, 1), v351, v228, 2), v334, v228, 3);
  v444 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v227.n128_f32[0]), v395, v227.n128_u64[0], 1), v351, v227, 2), v334, v227, 3);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v229.f32[0]), v395, *v229.f32, 1), v351, v229, 2), v334, v229, 3);
  v475 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v230.f32[0]), v395, *v230.f32, 1), v351, v230, 2), v334, v230, 3);
  sub_10001358C(v625, -0.17453, xmmword_1000EC920);
  v231 = sub_100013568(v625);
  v740 = 0;
  *(v2 + 3200) = 0x4040000040400000;
  *(v2 + 3208) = 1045220557;
  *(v2 + 3212) = 1;
  *(v2 + 3213) = v745;
  *(v2 + 3215) = v746;
  *(v2 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v231.n128_f32[0]), v416, v231.n128_u64[0], 1), v371, v231, 2), v475, v231, 3);
  *(v2 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v232.f32[0]), v416, *v232.f32, 1), v371, v232, 2), v475, v232, 3);
  *(v2 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v233.f32[0]), v416, *v233.f32, 1), v371, v233, 2), v475, v233, 3);
  *(v2 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v234.f32[0]), v416, *v234.f32, 1), v371, v234, 2), v475, v234, 3);
  *(v2 + 3280) = xmmword_1000EFE90;
  *(v2 + 3296) = 2;
  v235 = v743;
  *(v2 + 3299) = v744;
  *(v2 + 3297) = v235;
  *(v2 + 3300) = 1072064102;
  *(v2 + 3304) = 1;
  *(v2 + 3305) = v741;
  *(v2 + 3307) = v742;
  *(v2 + 3308) = 1050589266;
  *(v2 + 3312) = xmmword_1000EFEA0;
  *(v2 + 3328) = 0x3F66666600000000;
  *(v2 + 3336) = v740;
  *(v2 + 3337) = 3;
  *(v2 + 3339) = 1;
  *(v2 + 3344) = 0u;
  *(v2 + 3360) = sub_10004A57C;
  *(v2 + 3368) = 0;
  *(v2 + 3376) = 0x3F80000000000000;
  *(v2 + 3392) = xmmword_1000EF5A0;
  *(v2 + 3408) = 5;
  v236 = vmulq_f32(xmmword_10013DCA0, 0);
  v476 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v445 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v236), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v417 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v236, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v524 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFCCCCCC)), vdupq_n_s32(0x40233333u), *algn_10013DCB0), v523, xmmword_10013DCC0));
  sub_10001358C(v626, -0.69813, xmmword_1000EC910);
  v237 = sub_100013568(v626);
  v564 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v237.n128_f32[0]), v445, v237.n128_u64[0], 1), v417, v237, 2), v524, v237, 3);
  v505 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v238.f32[0]), v445, *v238.f32, 1), v417, v238, 2), v524, v238, 3);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v239.f32[0]), v445, *v239.f32, 1), v417, v239, 2), v524, v239, 3);
  v418 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v240.f32[0]), v445, *v240.f32, 1), v417, v240, 2), v524, v240, 3);
  sub_10001358C(v627, 0.0, xmmword_1000EC8E0);
  v241 = sub_100013568(v627);
  v525 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v564, v241.n128_f32[0]), v505, v241.n128_u64[0], 1), v396, v241, 2), v418, v241, 3);
  v477 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v564, v242.f32[0]), v505, *v242.f32, 1), v396, v242, 2), v418, v242, 3);
  v446 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v564, v243.f32[0]), v505, *v243.f32, 1), v396, v243, 2), v418, v243, 3);
  v565 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v564, v244.f32[0]), v505, *v244.f32, 1), v396, v244, 2), v418, v244, 3);
  sub_10001358C(v628, 0.0, xmmword_1000EC920);
  v245 = sub_100013568(v628);
  v747 = 1;
  *(v2 + 3424) = 0x408CCCCD3FF33333;
  *(v2 + 3432) = 1047904911;
  *(v2 + 3436) = 1;
  *(v2 + 3437) = v752;
  *(v2 + 3439) = v753;
  *(v2 + 3440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v525, v245.n128_f32[0]), v477, v245.n128_u64[0], 1), v446, v245, 2), v565, v245, 3);
  *(v2 + 3456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v525, v246.f32[0]), v477, *v246.f32, 1), v446, v246, 2), v565, v246, 3);
  *(v2 + 3472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v525, v247.f32[0]), v477, *v247.f32, 1), v446, v247, 2), v565, v247, 3);
  *(v2 + 3488) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v525, v248.f32[0]), v477, *v248.f32, 1), v446, v248, 2), v565, v248, 3);
  *(v2 + 3504) = xmmword_1000EC900;
  *(v2 + 3520) = 0;
  v249 = v750;
  *(v2 + 3523) = v751;
  *(v2 + 3521) = v249;
  *(v2 + 3524) = 1052602532;
  *(v2 + 3528) = 9;
  *(v2 + 3529) = v748;
  *(v2 + 3531) = v749;
  *(v2 + 3532) = 1065353216;
  *(v2 + 3536) = 0;
  *(v2 + 3544) = 0u;
  *(v2 + 3560) = v747;
  *(v2 + 3561) = 3;
  *(v2 + 3563) = 1;
  *(v2 + 3568) = 0u;
  *(v2 + 3584) = sub_100081600;
  *(v2 + 3592) = 0;
  *(v2 + 3600) = 0x3F80000000000000;
  *(v2 + 3616) = xmmword_1000EF5C0;
  *(v2 + 3632) = 5;
  v250 = vmulq_f32(xmmword_10013DCA0, 0);
  v566 = vdupq_n_s32(0x3FD1EB85u);
  v506 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v447 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v250), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v419 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v250, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v558 = vdupq_n_s32(0x40047AE1u);
  v372 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v566), vdupq_n_s32(0xC00EB852), *algn_10013DCB0), v558, xmmword_10013DCC0));
  sub_10001358C(v629, 0.0, xmmword_1000EC910);
  v251 = sub_100013568(v629);
  v526 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v506, v251.n128_f32[0]), v447, v251.n128_u64[0], 1), v419, v251, 2), v372, v251, 3);
  v478 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v506, v252.f32[0]), v447, *v252.f32, 1), v419, v252, 2), v372, v252, 3);
  v397 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v506, v253.f32[0]), v447, *v253.f32, 1), v419, v253, 2), v372, v253, 3);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v506, v254.f32[0]), v447, *v254.f32, 1), v419, v254, 2), v372, v254, 3);
  sub_10001358C(v630, 0.54105, xmmword_1000EC8E0);
  v255 = sub_100013568(v630);
  v507 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v526, v255.n128_f32[0]), v478, v255.n128_u64[0], 1), v397, v255, 2), v373, v255, 3);
  v448 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v526, v256.f32[0]), v478, *v256.f32, 1), v397, v256, 2), v373, v256, 3);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v526, v257.f32[0]), v478, *v257.f32, 1), v397, v257, 2), v373, v257, 3);
  v527 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v526, v258.f32[0]), v478, *v258.f32, 1), v397, v258, 2), v373, v258, 3);
  sub_10001358C(v631, 0.0, xmmword_1000EC920);
  v259 = sub_100013568(v631);
  v754 = 1;
  *(v2 + 3648) = 0x409333334039999ALL;
  *(v2 + 3656) = 1056964608;
  *(v2 + 3660) = 1;
  *(v2 + 3661) = v759;
  *(v2 + 3663) = v760;
  *(v2 + 3664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v259.n128_f32[0]), v448, v259.n128_u64[0], 1), v420, v259, 2), v527, v259, 3);
  *(v2 + 3680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v260.f32[0]), v448, *v260.f32, 1), v420, v260, 2), v527, v260, 3);
  *(v2 + 3696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v261.f32[0]), v448, *v261.f32, 1), v420, v261, 2), v527, v261, 3);
  *(v2 + 3712) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v262.f32[0]), v448, *v262.f32, 1), v420, v262, 2), v527, v262, 3);
  *(v2 + 3728) = xmmword_1000EFEB0;
  *(v2 + 3744) = 0;
  v263 = v757;
  *(v2 + 3747) = v758;
  *(v2 + 3745) = v263;
  *(v2 + 3748) = 1091777331;
  *(v2 + 3752) = 9;
  *(v2 + 3753) = v755;
  *(v2 + 3755) = v756;
  *(v2 + 3756) = 1065353216;
  *(v2 + 3760) = 0;
  *(v2 + 3768) = 0u;
  *(v2 + 3784) = v754;
  *(v2 + 3785) = 3;
  *(v2 + 3787) = 1;
  *(v2 + 3792) = 0u;
  *(v2 + 3808) = sub_10004A638;
  *(v2 + 3816) = 0;
  *(v2 + 3824) = 0x3F80000000000000;
  *(v2 + 3840) = xmmword_1000EF5D0;
  *(v2 + 3856) = 5;
  v264 = vmulq_f32(xmmword_10013DCA0, 0);
  v528 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v479 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v264), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v449 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v264, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v499 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC008F5C2)), v498, *algn_10013DCB0), vdupq_n_s32(0x400B851Fu), xmmword_10013DCC0));
  sub_10001358C(v632, -0.69813, xmmword_1000EC910);
  v265 = sub_100013568(v632);
  v549 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v528, v265.n128_f32[0]), v479, v265.n128_u64[0], 1), v449, v265, 2), v499, v265, 3);
  v508 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v528, v266.f32[0]), v479, *v266.f32, 1), v449, v266, 2), v499, v266, 3);
  v421 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v528, v267.f32[0]), v479, *v267.f32, 1), v449, v267, 2), v499, v267, 3);
  v450 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v528, v268.f32[0]), v479, *v268.f32, 1), v449, v268, 2), v499, v268, 3);
  sub_10001358C(v633, 0.0, xmmword_1000EC8E0);
  v269 = sub_100013568(v633);
  v529 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v549, v269.n128_f32[0]), v508, v269.n128_u64[0], 1), v421, v269, 2), v450, v269, 3);
  v500 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v549, v270.f32[0]), v508, *v270.f32, 1), v421, v270, 2), v450, v270, 3);
  v480 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v549, v271.f32[0]), v508, *v271.f32, 1), v421, v271, 2), v450, v271, 3);
  v550 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v549, v272.f32[0]), v508, *v272.f32, 1), v421, v272, 2), v450, v272, 3);
  sub_10001358C(v634, 0.0, xmmword_1000EC920);
  v273 = sub_100013568(v634);
  v761 = 1;
  *(v2 + 3872) = 0x4020000040000000;
  *(v2 + 3880) = 1050253722;
  *(v2 + 3884) = 1;
  *(v2 + 3885) = v766;
  *(v2 + 3887) = v767;
  *(v2 + 3888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v529, v273.n128_f32[0]), v500, v273.n128_u64[0], 1), v480, v273, 2), v550, v273, 3);
  *(v2 + 3904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v529, v274.f32[0]), v500, *v274.f32, 1), v480, v274, 2), v550, v274, 3);
  *(v2 + 3920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v529, v275.f32[0]), v500, *v275.f32, 1), v480, v275, 2), v550, v275, 3);
  *(v2 + 3936) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v529, v276.f32[0]), v500, *v276.f32, 1), v480, v276, 2), v550, v276, 3);
  *(v2 + 3952) = xmmword_1000EFEC0;
  *(v2 + 3968) = 0;
  v277 = v764;
  *(v2 + 3971) = v765;
  *(v2 + 3969) = v277;
  *(v2 + 3972) = 1091253043;
  *(v2 + 3976) = 9;
  *(v2 + 3977) = v762;
  *(v2 + 3979) = v763;
  *(v2 + 3980) = 1065353216;
  *(v2 + 3984) = 0;
  *(v2 + 3992) = 0u;
  *(v2 + 4008) = v761;
  *(v2 + 4009) = 3;
  *(v2 + 4011) = 1;
  *(v2 + 4016) = 0u;
  *(v2 + 4032) = sub_100081604;
  *(v2 + 4040) = 0;
  *(v2 + 4048) = 0x3F80000000000000;
  *(v2 + 4064) = xmmword_1000EF7D0;
  *(v2 + 4080) = 5;
  v278 = vmulq_f32(xmmword_10013DCA0, 0);
  v530 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v509 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v278), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v501 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v278, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v559 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v566), vdupq_n_s32(0xC0366666), *algn_10013DCB0), v558, xmmword_10013DCC0));
  sub_10001358C(v635, 0.0, xmmword_1000EC910);
  v279 = sub_100013568(v635);
  v567 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v530, v279.n128_f32[0]), v509, v279.n128_u64[0], 1), v501, v279, 2), v559, v279, 3);
  v551 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v530, v280.f32[0]), v509, *v280.f32, 1), v501, v280, 2), v559, v280, 3);
  v519 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v530, v281.f32[0]), v509, *v281.f32, 1), v501, v281, 2), v559, v281, 3);
  v502 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v530, v282.f32[0]), v509, *v282.f32, 1), v501, v282, 2), v559, v282, 3);
  sub_10001358C(v636, 0.50615, xmmword_1000EC8E0);
  v283 = sub_100013568(v636);
  v531 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v567, v284.f32[0]), v551, *v284.f32, 1), v519, v284, 2), v502, v284, 3);
  v510 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v567, v285.f32[0]), v551, *v285.f32, 1), v519, v285, 2), v502, v285, 3);
  v560 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v567, v283.n128_f32[0]), v551, v283.n128_u64[0], 1), v519, v283, 2), v502, v283, 3);
  v568 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v567, v286.f32[0]), v551, *v286.f32, 1), v519, v286, 2), v502, v286, 3);
  sub_10001358C(v637, -0.5236, xmmword_1000EC920);
  v287 = sub_100013568(v637);
  v768 = 1;
  *(v2 + 4096) = 0x40A0000040A00000;
  *(v2 + 4104) = 1056964608;
  *(v2 + 4108) = 1;
  *(v2 + 4109) = v773;
  *(v2 + 4111) = v774;
  *(v2 + 4112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v560, v287.n128_f32[0]), v531, v287.n128_u64[0], 1), v510, v287, 2), v568, v287, 3);
  *(v2 + 4128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v560, v288.f32[0]), v531, *v288.f32, 1), v510, v288, 2), v568, v288, 3);
  *(v2 + 4144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v560, v289.f32[0]), v531, *v289.f32, 1), v510, v289, 2), v568, v289, 3);
  *(v2 + 4160) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v560, v290.f32[0]), v531, *v290.f32, 1), v510, v290, 2), v568, v290, 3);
  *(v2 + 4176) = xmmword_1000EC900;
  *(v2 + 4192) = 0;
  v291 = v771;
  *(v2 + 4195) = v772;
  *(v2 + 4193) = v291;
  *(v2 + 4196) = 1093664768;
  *(v2 + 4200) = 10;
  *(v2 + 4201) = v769;
  *(v2 + 4203) = v770;
  *(v2 + 4216) = 0u;
  *(v2 + 4204) = 1065353216;
  *(v2 + 4208) = 0;
  *(v2 + 4232) = v768;
  *(v2 + 4233) = 3;
  *(v2 + 4235) = 1;
  *(v2 + 4240) = 0u;
  *(v2 + 4256) = sub_100081614;
  *(v2 + 4264) = 0;
  *(v2 + 4272) = 0x3F80000000000000;
  *(v2 + 4288) = xmmword_1000EF630;
  *(v2 + 4304) = 5;
  v292 = vmulq_f32(xmmword_10013DCA0, 0);
  v569 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v552 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v292), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v532 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v292, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v511 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F599999u)), vdupq_n_s32(0xBFA51EB8), *algn_10013DCB0), vdupq_n_s32(0x4010A3D7u), xmmword_10013DCC0));
  sub_10001358C(v638, -0.27925, xmmword_1000EC910);
  v293 = sub_100013568(v638);
  v575 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v569, v293.n128_f32[0]), v552, v293.n128_u64[0], 1), v532, v293, 2), v511, v293, 3);
  v561 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v569, v294.f32[0]), v552, *v294.f32, 1), v532, v294, 2), v511, v294, 3);
  v520 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v569, v295.f32[0]), v552, *v295.f32, 1), v532, v295, 2), v511, v295, 3);
  v553 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v569, v296.f32[0]), v552, *v296.f32, 1), v532, v296, 2), v511, v296, 3);
  sub_10001358C(v639, 0.47124, xmmword_1000EC8E0);
  v297 = sub_100013568(v639);
  v579 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v575, v298.f32[0]), v561, *v298.f32, 1), v520, v298, 2), v553, v298, 3);
  v580 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v575, v297.n128_f32[0]), v561, v297.n128_u64[0], 1), v520, v297, 2), v553, v297, 3);
  v570 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v575, v299.f32[0]), v561, *v299.f32, 1), v520, v299, 2), v553, v299, 3);
  v576 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v575, v300.f32[0]), v561, *v300.f32, 1), v520, v300, 2), v553, v300, 3);
  sub_10001358C(v640, 0.55851, xmmword_1000EC920);
  v301 = sub_100013568(v640);
  v775 = 1;
  *(v2 + 4320) = 0x3FA666663FC00000;
  *(v2 + 4328) = 1053273620;
  *(v2 + 4332) = 1;
  *(v2 + 4333) = v780;
  *(v2 + 4335) = v781;
  *(v2 + 4336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v580, v301.n128_f32[0]), v579, v301.n128_u64[0], 1), v570, v301, 2), v576, v301, 3);
  *(v2 + 4352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v580, v302.f32[0]), v579, *v302.f32, 1), v570, v302, 2), v576, v302, 3);
  *(v2 + 4368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v580, v303.f32[0]), v579, *v303.f32, 1), v570, v303, 2), v576, v303, 3);
  *(v2 + 4384) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v580, v304.f32[0]), v579, *v304.f32, 1), v570, v304, 2), v576, v304, 3);
  *(v2 + 4400) = xmmword_1000EFED0;
  *(v2 + 4416) = 0;
  v305 = v778;
  *(v2 + 4419) = v779;
  *(v2 + 4417) = v305;
  *(v2 + 4420) = 1101004800;
  *(v2 + 4424) = 9;
  *(v2 + 4425) = v776;
  *(v2 + 4427) = v777;
  *(v2 + 4428) = 1065353216;
  *(v2 + 4440) = 0u;
  *(v2 + 4432) = 0;
  *(v2 + 4456) = v775;
  *(v2 + 4457) = 3;
  *(v2 + 4459) = 1;
  *(v2 + 4464) = 0u;
  *(v2 + 4480) = sub_100081614;
  *(v2 + 4488) = 0;
  *(v2 + 4496) = 0x3F80000000000000;
  v306 = sub_1000A0774(v2);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020);
  v307 = swift_allocObject();
  v307[1] = xmmword_1000EC880;
  v307[2] = xmmword_1000EFEE0;
  v307[3] = xmmword_1000EFEF0;
  v308 = swift_allocObject();
  v308[1] = xmmword_1000ED250;
  v308[2] = xmmword_1000EFF00;
  v308[3] = xmmword_1000EFF10;
  v308[4] = xmmword_1000EFF20;
  v309 = swift_allocObject();
  v309[1] = xmmword_1000EC880;
  v309[2] = xmmword_1000EFF30;
  v309[3] = xmmword_1000EFF40;
  v310 = qword_10013AC20;
  v311 = unk_10013AC28;
  v312 = qword_10013AC30;

  v313 = qword_10013AC50;
  v314 = sub_1000A0A98(_swiftEmptyArrayStorage);
  v782.i64[0] = v310;
  v782.i64[1] = v311;
  v783.i64[0] = v312;
  v783.i64[1] = v314;
  v784.i64[0] = _swiftEmptyArrayStorage;
  v784.i64[1] = _swiftEmptyArrayStorage;
  v785 = v313;
  v640[3] = v782;
  v640[4] = v783;
  v640[5] = v784;
  v641 = v313;
  v315 = sub_1000A0A98(&off_10011F2E0);
  sub_1000047C4(&unk_10011F300, &qword_100131048);
  v316 = sub_1000A092C(_swiftEmptyArrayStorage);
  sub_1000BA704(v316, v315, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v786);

  sub_100081544(&v782);
  swift_bridgeObjectRetain_n();
  v317 = sub_1000C1928(v306);

  sub_1000C53DC(v317, v790);
  v318 = sub_1000C199C(v306);

  sub_1000C53DC(v318, v788);
  xmmword_10013B290 = v544;
  unk_10013B2A0 = v543;
  qword_10013B2B0 = v542;
  dword_10013B2B8 = v0;
  xmmword_10013B2C0 = v541;
  unk_10013B2D0 = v540;
  qword_10013B2E0 = v1;
  dword_10013B2E8 = v539;
  xmmword_10013B2F0 = v538;
  qword_10013B300 = v537;
  xmmword_10013B310 = v536;
  qword_10013B320 = v535;
  unk_10013B328 = v534;
  dword_10013B330 = v533;
  qword_10013B338 = 0;
  unk_10013B340 = v306;
  qword_10013B368 = v791;
  unk_10013B358 = v790[1];
  unk_10013B348 = v790[0];
  xmmword_10013B370 = v788[0];
  unk_10013B380 = v788[1];
  qword_10013B390 = v789;
  qword_10013B398 = sub_10004A658;
  qword_10013B3A0 = 0;
  xmmword_10013B3B0 = xmmword_1000EFF50;
  unk_10013B3C0 = xmmword_1000EFF60;
  qword_10013B3D0 = v307;
  word_10013B3DC = 7;
  dword_10013B3D8 = 0;
  xmmword_10013B3E0 = xmmword_1000EFF70;
  qword_10013B3F0 = v308;
  xmmword_10013B3F8 = xmmword_1000EFF80;
  xmmword_10013B408 = xmmword_1000EFF90;
  qword_10013B418 = 1054267095;
  unk_10013B420 = v309;
  xmmword_10013B428 = xmmword_1000EFFA0;
  xmmword_10013B438 = xmmword_1000EFFB0;
  qword_10013B448 = 1062721496;
  result = 0.00000000119793708;
  qword_10013B490 = v787;
  xmmword_10013B470 = v786[1];
  unk_10013B480 = v786[2];
  xmmword_10013B450 = xmmword_1000EFFC0;
  unk_10013B460 = v786[0];
  return result;
}

uint64_t sub_100049FFC(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.15) * a2) + 0.15;
    *result = COERCE_UNSIGNED_INT(((*result + -2.6) * a2) + 2.6) | (COERCE_UNSIGNED_INT(((*(result + 4) + -4.0) * a2) + 4.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.8) * a2) + 2.8;
    *(result + 108) = ((*(result + 108) + -0.2) * a2) + 0.2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10004A0E0(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.17) * a2) + 0.17;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10004A110(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.1) * a2) + 0.1;
    *result = COERCE_UNSIGNED_INT(((*result + -2.9) * a2) + 2.9) | (COERCE_UNSIGNED_INT(((*(result + 4) + -5.0) * a2) + 5.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.63) * a2) + 0.63;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004A1C8(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.2) * a2) + 0.2;
    *result = COERCE_UNSIGNED_INT(((*result + -5.0) * a2) + 5.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.45) * a2) + 0.45) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.27) * a2) + 0.27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10004A280(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.38) * a2) + 0.38;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10004A2B0(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -0.86) * a2) + 0.86) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.37) * a2) + 0.37) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.44) * a2) + 0.44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004A368(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.12) * a2) + 0.12;
    *result = COERCE_UNSIGNED_INT(((*result + -2.5) * a2) + 2.5) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.4) * a2) + 3.4) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.7) * a2) + 1.7;
    *(result + 108) = ((*(result + 108) + -0.66) * a2) + 0.66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10004A44C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.33) * a2) + 0.33;
  *(a1 + 100) = result;
  return result;
}

float sub_10004A47C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.21) * a2) + 0.21;
  *(a1 + 100) = result;
  return result;
}

float sub_10004A4AC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.052) * a2) + 0.052;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10004A4DC(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -2.1) * a2) + 2.1) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.8) * a2) + 0.8) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.1) * a2) + 2.1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004A57C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.37) * a2) + 0.37;
    *result = COERCE_UNSIGNED_INT(((*result + -3.0) * a2) + 3.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.0) * a2) + 3.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.0) * a2) + 1.0;
    *(result + 108) = ((*(result + 108) + -0.3) * a2) + 0.3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10004A638(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -3.0) * a2) + 3.0;
  *(a1 + 100) = result;
  return result;
}

float32x2_t sub_10004A658(float a1)
{
  v1 = a1;
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v2 = a1 * 3.1416;
  if (v1 >= 1.0)
  {
    v2 = 3.1416;
  }

  return vmul_n_f32(vadd_f32(vmul_n_f32(0x3E99999A3EF0A3D8, fminf(v1 / 0.95833, 1.0)), 0x3F3333333F07AE14), ((0.5 - (cosf(v2) * 0.5)) * 0.122) + 0.028);
}

double sub_10004A71C()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v431 = unk_10013AA60;
  v432 = xmmword_10013AA50;
  v430 = qword_10013AA70;
  v0 = dword_10013AA78;
  v428 = unk_10013AA90;
  v429 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v2 = dword_10013AAA8;
  v3 = qword_10013AAC0;
  v426 = xmmword_10013AAD0;
  v427 = xmmword_10013AAB0;
  v4 = qword_10013AAE0;
  v425 = unk_10013AAE8;
  v424 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000EFFD0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v6 = vmulq_f32(xmmword_10013DCA0, 0);
  v472 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v458 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v6), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v447 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v6, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v416 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFA66666)), vdupq_n_s32(0x401CCCCDu), *algn_10013DCB0), vdupq_n_s32(0xBCA3D70A), xmmword_10013DCC0));
  sub_10001358C(v475, 1.9024, xmmword_1000EC910);
  v7 = sub_100013568(v475);
  v471 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v7.n128_f32[0]), v458, v7.n128_u64[0], 1), v447, v7, 2), v416, v7, 3);
  v452 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v8.f32[0]), v458, *v8.f32, 1), v447, v8, 2), v416, v8, 3);
  v433 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v9.f32[0]), v458, *v9.f32, 1), v447, v9, 2), v416, v9, 3);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v10.f32[0]), v458, *v10.f32, 1), v447, v10, 2), v416, v10, 3);
  sub_10001358C(v476, -2.3911, xmmword_1000EC8E0);
  v11 = sub_100013568(v476);
  v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v471, v11.n128_f32[0]), v452, v11.n128_u64[0], 1), v433, v11, 2), v398, v11, 3);
  v448 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v471, v13.f32[0]), v452, *v13.f32, 1), v433, v13, 2), v398, v13, 3);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v471, v14.f32[0]), v452, *v14.f32, 1), v433, v14, 2), v398, v14, 3);
  v453 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v471, v15.f32[0]), v452, *v15.f32, 1), v433, v15, 2), v398, v15, 3);
  v459 = v12;
  sub_10001358C(v477, 0.0, xmmword_1000EC920);
  v16 = sub_100013568(v477);
  v526 = 0;
  *(v5 + 64) = 0x405333333F666666;
  *(v5 + 72) = 0;
  *(v5 + 76) = 1;
  *(v5 + 77) = v531;
  *(v5 + 79) = v532;
  *(v5 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v459, v16.n128_f32[0]), v448, v16.n128_u64[0], 1), v417, v16, 2), v453, v16, 3);
  *(v5 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v459, v17.f32[0]), v448, *v17.f32, 1), v417, v17, 2), v453, v17, 3);
  *(v5 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v459, v18.f32[0]), v448, *v18.f32, 1), v417, v18, 2), v453, v18, 3);
  *(v5 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v459, v19.f32[0]), v448, *v19.f32, 1), v417, v19, 2), v453, v19, 3);
  *(v5 + 144) = xmmword_1000EC900;
  *(v5 + 160) = 0;
  v20 = v529;
  *(v5 + 163) = v530;
  *(v5 + 161) = v20;
  *(v5 + 164) = 1114636288;
  *(v5 + 168) = 2;
  *(v5 + 169) = v527;
  *(v5 + 171) = v528;
  *(v5 + 172) = 1060320051;
  *(v5 + 176) = xmmword_1000EFFE0;
  *(v5 + 192) = 0x3F2B851F3D5D2F1BLL;
  *(v5 + 200) = v526;
  *(v5 + 201) = 0;
  *(v5 + 203) = 1;
  *(v5 + 208) = 0u;
  *(v5 + 224) = sub_10004DA30;
  *(v5 + 232) = 0;
  *(v5 + 240) = 0x3F80000000000000;
  *(v5 + 256) = xmmword_1000EF5A0;
  *(v5 + 272) = 1;
  v21 = vmulq_f32(xmmword_10013DCA0, 0);
  v434 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v399 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v21), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v379 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v21, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v331 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF2147AE)), vdupq_n_s32(0x3F933333u), *algn_10013DCB0), vdupq_n_s32(0x3EB851EBu), xmmword_10013DCC0));
  sub_10001358C(v478, 2.042, xmmword_1000EC910);
  v22 = sub_100013568(v478);
  v449 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v22.n128_f32[0]), v399, v22.n128_u64[0], 1), v379, v22, 2), v331, v22, 3);
  v418 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v23.f32[0]), v399, *v23.f32, 1), v379, v23, 2), v331, v23, 3);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v24.f32[0]), v399, *v24.f32, 1), v379, v24, 2), v331, v24, 3);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v25.f32[0]), v399, *v25.f32, 1), v379, v25, 2), v331, v25, 3);
  sub_10001358C(v479, -2.7053, xmmword_1000EC8E0);
  v26 = sub_100013568(v479);
  v400 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v27.f32[0]), v418, *v27.f32, 1), v353, v27, 2), v332, v27, 3);
  v380 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v28.f32[0]), v418, *v28.f32, 1), v353, v28, 2), v332, v28, 3);
  v435 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v26.n128_f32[0]), v418, v26.n128_u64[0], 1), v353, v26, 2), v332, v26, 3);
  v450 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v29.f32[0]), v418, *v29.f32, 1), v353, v29, 2), v332, v29, 3);
  sub_10001358C(v480, -0.10472, xmmword_1000EC920);
  v30 = sub_100013568(v480);
  v533 = 1;
  *(v5 + 288) = 0x407CCCCD3FA00000;
  *(v5 + 296) = 1036831949;
  *(v5 + 300) = 1;
  *(v5 + 301) = v538;
  *(v5 + 303) = v539;
  *(v5 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v30.n128_f32[0]), v400, v30.n128_u64[0], 1), v380, v30, 2), v450, v30, 3);
  *(v5 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v31.f32[0]), v400, *v31.f32, 1), v380, v31, 2), v450, v31, 3);
  *(v5 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v32.f32[0]), v400, *v32.f32, 1), v380, v32, 2), v450, v32, 3);
  *(v5 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v33.f32[0]), v400, *v33.f32, 1), v380, v33, 2), v450, v33, 3);
  *(v5 + 368) = xmmword_1000EC900;
  *(v5 + 384) = 0;
  v34 = v536;
  *(v5 + 387) = v537;
  *(v5 + 385) = v34;
  *(v5 + 388) = 1075838976;
  *(v5 + 392) = 10;
  *(v5 + 393) = v534;
  *(v5 + 395) = v535;
  *(v5 + 396) = 1065353216;
  *(v5 + 416) = 0;
  *(v5 + 400) = 0u;
  *(v5 + 424) = v533;
  *(v5 + 425) = 0;
  *(v5 + 427) = 0;
  *(v5 + 432) = 0u;
  *(v5 + 448) = sub_100081614;
  *(v5 + 456) = 0;
  *(v5 + 464) = 0x3F80000000000000;
  *(v5 + 480) = xmmword_1000EF5C0;
  *(v5 + 496) = 1;
  v35 = vmulq_f32(xmmword_10013DCA0, 0);
  v419 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v381 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v35), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v354 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v35, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v306 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEC28F5C)), vdupq_n_s32(0x3FC28F5Cu), *algn_10013DCB0), vdupq_n_s32(0x3E0F5C29u), xmmword_10013DCC0));
  sub_10001358C(v481, 2.9322, xmmword_1000EC910);
  v36 = sub_100013568(v481);
  v436 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v36.n128_f32[0]), v381, v36.n128_u64[0], 1), v354, v36, 2), v306, v36, 3);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v37.f32[0]), v381, *v37.f32, 1), v354, v37, 2), v306, v37, 3);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v38.f32[0]), v381, *v38.f32, 1), v354, v38, 2), v306, v38, 3);
  v307 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v39.f32[0]), v381, *v39.f32, 1), v354, v39, 2), v306, v39, 3);
  sub_10001358C(v482, -2.8274, xmmword_1000EC8E0);
  v40 = sub_100013568(v482);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v40.n128_f32[0]), v401, v40.n128_u64[0], 1), v333, v40, 2), v307, v40, 3);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v41.f32[0]), v401, *v41.f32, 1), v333, v41, 2), v307, v41, 3);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v42.f32[0]), v401, *v42.f32, 1), v333, v42, 2), v307, v42, 3);
  v437 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v43.f32[0]), v401, *v43.f32, 1), v333, v43, 2), v307, v43, 3);
  sub_10001358C(v483, 0.45379, xmmword_1000EC920);
  v44 = sub_100013568(v483);
  v540 = 1;
  *(v5 + 512) = 0x406666663FF33333;
  *(v5 + 520) = 1047904911;
  *(v5 + 524) = 1;
  *(v5 + 525) = v545;
  *(v5 + 527) = v546;
  *(v5 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v44.n128_f32[0]), v382, v44.n128_u64[0], 1), v355, v44, 2), v437, v44, 3);
  *(v5 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v45.f32[0]), v382, *v45.f32, 1), v355, v45, 2), v437, v45, 3);
  *(v5 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v46.f32[0]), v382, *v46.f32, 1), v355, v46, 2), v437, v46, 3);
  *(v5 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v47.f32[0]), v382, *v47.f32, 1), v355, v47, 2), v437, v47, 3);
  *(v5 + 592) = xmmword_1000EC900;
  *(v5 + 608) = 0;
  v48 = v543;
  *(v5 + 611) = v544;
  *(v5 + 609) = v48;
  *(v5 + 612) = 1082130432;
  *(v5 + 616) = 10;
  *(v5 + 617) = v541;
  *(v5 + 619) = v542;
  *(v5 + 620) = 1065353216;
  *(v5 + 640) = 0;
  *(v5 + 624) = 0u;
  *(v5 + 648) = v540;
  *(v5 + 649) = 0;
  *(v5 + 651) = 0;
  *(v5 + 656) = 0u;
  *(v5 + 672) = sub_100081614;
  *(v5 + 680) = 0;
  *(v5 + 688) = 0x3F80000000000000;
  *(v5 + 704) = xmmword_1000EF5D0;
  *(v5 + 720) = 1;
  v49 = vmulq_f32(xmmword_10013DCA0, 0);
  v421 = vdupq_n_s32(0xBEAE147B);
  v402 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v356 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v49), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v308 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v49, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v273 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v421), vdupq_n_s32(0x3F1EB852u), *algn_10013DCB0), vdupq_n_s32(0xBE2E147B), xmmword_10013DCC0));
  sub_10001358C(v484, 2.9322, xmmword_1000EC910);
  v50 = sub_100013568(v484);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v50.n128_f32[0]), v356, v50.n128_u64[0], 1), v308, v50, 2), v273, v50, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v51.f32[0]), v356, *v51.f32, 1), v308, v51, 2), v273, v51, 3);
  v287 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v52.f32[0]), v356, *v52.f32, 1), v308, v52, 2), v273, v52, 3);
  v274 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v53.f32[0]), v356, *v53.f32, 1), v308, v53, 2), v273, v53, 3);
  sub_10001358C(v485, -2.8274, xmmword_1000EC8E0);
  v54 = sub_100013568(v485);
  v55 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v54.n128_f32[0]), v334, v54.n128_u64[0], 1), v287, v54, 2), v274, v54, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v56.f32[0]), v334, *v56.f32, 1), v287, v56, 2), v274, v56, 3);
  v309 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v57.f32[0]), v334, *v57.f32, 1), v287, v57, 2), v274, v57, 3);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v58.f32[0]), v334, *v58.f32, 1), v287, v58, 2), v274, v58, 3);
  v403 = v55;
  sub_10001358C(v486, -0.33161, xmmword_1000EC920);
  v59 = sub_100013568(v486);
  v547 = 1;
  *(v5 + 736) = 0x4037AE144005C28FLL;
  *(v5 + 744) = 1036831949;
  *(v5 + 748) = 1;
  *(v5 + 749) = v552;
  *(v5 + 751) = v553;
  *(v5 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v59.n128_f32[0]), v357, v59.n128_u64[0], 1), v309, v59, 2), v384, v59, 3);
  *(v5 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v60.f32[0]), v357, *v60.f32, 1), v309, v60, 2), v384, v60, 3);
  *(v5 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v61.f32[0]), v357, *v61.f32, 1), v309, v61, 2), v384, v61, 3);
  *(v5 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v62.f32[0]), v357, *v62.f32, 1), v309, v62, 2), v384, v62, 3);
  *(v5 + 816) = xmmword_1000EC900;
  *(v5 + 832) = 0;
  v63 = v550;
  *(v5 + 835) = v551;
  *(v5 + 833) = v63;
  *(v5 + 836) = 1082549862;
  *(v5 + 840) = 10;
  *(v5 + 841) = v548;
  *(v5 + 843) = v549;
  *(v5 + 844) = 1065353216;
  *(v5 + 848) = 0;
  *(v5 + 856) = 0u;
  *(v5 + 872) = v547;
  *(v5 + 873) = 0;
  *(v5 + 875) = 1;
  *(v5 + 880) = 0u;
  *(v5 + 896) = sub_10004DAE4;
  *(v5 + 904) = 0;
  *(v5 + 912) = 0x3F80000000000000;
  *(v5 + 928) = xmmword_1000EF5A0;
  *(v5 + 944) = 2;
  v64 = vmulq_f32(xmmword_10013DCA0, 0);
  v385 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v335 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v64), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v310 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v64, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v275 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEF0A3D7)), vdupq_n_s32(0x3F4F5C29u), *algn_10013DCB0), vdupq_n_s32(0x3F599999u), xmmword_10013DCC0));
  sub_10001358C(v487, 4.7124, xmmword_1000EC910);
  v65 = sub_100013568(v487);
  v404 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v65.n128_f32[0]), v335, v65.n128_u64[0], 1), v310, v65, 2), v275, v65, 3);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v66.f32[0]), v335, *v66.f32, 1), v310, v66, 2), v275, v66, 3);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v67.f32[0]), v335, *v67.f32, 1), v310, v67, 2), v275, v67, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v68.f32[0]), v335, *v68.f32, 1), v310, v68, 2), v275, v68, 3);
  sub_10001358C(v488, 0.24435, xmmword_1000EC8E0);
  v69 = sub_100013568(v488);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v70.f32[0]), v358, *v70.f32, 1), v288, v70, 2), v276, v70, 3);
  v311 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v71.f32[0]), v358, *v71.f32, 1), v288, v71, 2), v276, v71, 3);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v69.n128_f32[0]), v358, v69.n128_u64[0], 1), v288, v69, 2), v276, v69, 3);
  v405 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v72.f32[0]), v358, *v72.f32, 1), v288, v72, 2), v276, v72, 3);
  sub_10001358C(v489, -1.5708, xmmword_1000EC920);
  v73 = sub_100013568(v489);
  v554 = 1;
  *(v5 + 960) = 0x3F4000003FCB851FLL;
  *(v5 + 968) = 1050253722;
  *(v5 + 972) = 1;
  *(v5 + 973) = v559;
  *(v5 + 975) = v560;
  *(v5 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v73.n128_f32[0]), v336, v73.n128_u64[0], 1), v311, v73, 2), v405, v73, 3);
  *(v5 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v74.f32[0]), v336, *v74.f32, 1), v311, v74, 2), v405, v74, 3);
  *(v5 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v75.f32[0]), v336, *v75.f32, 1), v311, v75, 2), v405, v75, 3);
  *(v5 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v76.f32[0]), v336, *v76.f32, 1), v311, v76, 2), v405, v76, 3);
  *(v5 + 1040) = xmmword_1000EC900;
  *(v5 + 1056) = 0;
  v77 = v557;
  *(v5 + 1059) = v558;
  *(v5 + 1057) = v77;
  *(v5 + 1060) = 1097859072;
  *(v5 + 1064) = 13;
  *(v5 + 1065) = v555;
  *(v5 + 1067) = v556;
  *(v5 + 1068) = 1065353216;
  *(v5 + 1072) = 0;
  *(v5 + 1080) = 0u;
  *(v5 + 1096) = v554;
  *(v5 + 1097) = 0;
  *(v5 + 1099) = 0;
  *(v5 + 1104) = 0u;
  *(v5 + 1120) = sub_10004DB9C;
  *(v5 + 1128) = 0;
  *(v5 + 1136) = 0x3F3BBBBC00000000;
  *(v5 + 1152) = xmmword_1000EF5C0;
  *(v5 + 1168) = 9;
  v78 = vmulq_f32(xmmword_10013DCA0, 0);
  v387 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v337 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v78), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v312 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v78, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v277 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0DC7AE1)), vdupq_n_s32(0x40B6147Bu), *algn_10013DCB0), vdupq_n_s32(0xC0A947AE), xmmword_10013DCC0));
  sub_10001358C(v490, 2.234, xmmword_1000EC910);
  v79 = sub_100013568(v490);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v79.n128_f32[0]), v337, v79.n128_u64[0], 1), v312, v79, 2), v277, v79, 3);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v80.f32[0]), v337, *v80.f32, 1), v312, v80, 2), v277, v80, 3);
  v289 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v81.f32[0]), v337, *v81.f32, 1), v312, v81, 2), v277, v81, 3);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v82.f32[0]), v337, *v82.f32, 1), v312, v82, 2), v277, v82, 3);
  sub_10001358C(v491, -2.426, xmmword_1000EC8E0);
  v83 = sub_100013568(v491);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v84.f32[0]), v359, *v84.f32, 1), v289, v84, 2), v278, v84, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v85.f32[0]), v359, *v85.f32, 1), v289, v85, 2), v278, v85, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v83.n128_f32[0]), v359, v83.n128_u64[0], 1), v289, v83, 2), v278, v83, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v86.f32[0]), v359, *v86.f32, 1), v289, v86, 2), v278, v86, 3);
  sub_10001358C(v492, 0.15708, xmmword_1000EC920);
  v87 = sub_100013568(v492);
  v561 = 0;
  *(v5 + 1184) = 0x408333333FCCCCCDLL;
  *(v5 + 1192) = 1007908028;
  *(v5 + 1196) = 1;
  *(v5 + 1197) = v566;
  *(v5 + 1199) = v567;
  *(v5 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v87.n128_f32[0]), v338, v87.n128_u64[0], 1), v313, v87, 2), v407, v87, 3);
  *(v5 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v88.f32[0]), v338, *v88.f32, 1), v313, v88, 2), v407, v88, 3);
  *(v5 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v89.f32[0]), v338, *v89.f32, 1), v313, v89, 2), v407, v89, 3);
  *(v5 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v90.f32[0]), v338, *v90.f32, 1), v313, v90, 2), v407, v90, 3);
  *(v5 + 1264) = xmmword_1000EFFF0;
  *(v5 + 1280) = 1;
  v91 = v564;
  *(v5 + 1283) = v565;
  *(v5 + 1281) = v91;
  *(v5 + 1284) = 1092616192;
  *(v5 + 1288) = 2;
  *(v5 + 1289) = v562;
  *(v5 + 1291) = v563;
  *(v5 + 1292) = 1049247089;
  *(v5 + 1296) = xmmword_1000F0000;
  *(v5 + 1312) = 0x3EE666663DAC0831;
  *(v5 + 1320) = v561;
  *(v5 + 1321) = 1;
  *(v5 + 1323) = 1;
  *(v5 + 1328) = 0u;
  *(v5 + 1344) = sub_10004DC34;
  *(v5 + 1352) = 0;
  *(v5 + 1360) = 0x3F451EB8BE4CCCCDLL;
  *(v5 + 1376) = xmmword_1000EF5A0;
  *(v5 + 1392) = 3;
  v92 = vmulq_f32(xmmword_10013DCA0, 0);
  v360 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v314 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v92), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v290 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v92, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v408 = vdupq_n_s32(0xC011EB85);
  v263 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC04F5C29)), vdupq_n_s32(0x40770A3Du), *algn_10013DCB0), v408, xmmword_10013DCC0));
  sub_10001358C(v493, -0.87266, xmmword_1000EC910);
  v93 = sub_100013568(v493);
  v389 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v93.n128_f32[0]), v314, v93.n128_u64[0], 1), v290, v93, 2), v263, v93, 3);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v94.f32[0]), v314, *v94.f32, 1), v290, v94, 2), v263, v94, 3);
  v279 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v95.f32[0]), v314, *v95.f32, 1), v290, v95, 2), v263, v95, 3);
  v264 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v96.f32[0]), v314, *v96.f32, 1), v290, v96, 2), v263, v96, 3);
  sub_10001358C(v494, -0.76794, xmmword_1000EC8E0);
  v97 = sub_100013568(v494);
  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v98.f32[0]), v339, *v98.f32, 1), v279, v98, 2), v264, v98, 3);
  v291 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v99.f32[0]), v339, *v99.f32, 1), v279, v99, 2), v264, v99, 3);
  v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v97.n128_f32[0]), v339, v97.n128_u64[0], 1), v279, v97, 2), v264, v97, 3);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v100.f32[0]), v339, *v100.f32, 1), v279, v100, 2), v264, v100, 3);
  sub_10001358C(v495, 0.0, xmmword_1000EC920);
  v101 = sub_100013568(v495);
  v568 = 1;
  *(v5 + 1408) = 0x3FB333333FCCCCCDLL;
  *(v5 + 1416) = 1034147594;
  *(v5 + 1420) = 1;
  *(v5 + 1421) = v573;
  *(v5 + 1423) = v574;
  *(v5 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v101.n128_f32[0]), v315, v101.n128_u64[0], 1), v291, v101, 2), v390, v101, 3);
  *(v5 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v102.f32[0]), v315, *v102.f32, 1), v291, v102, 2), v390, v102, 3);
  *(v5 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v103.f32[0]), v315, *v103.f32, 1), v291, v103, 2), v390, v103, 3);
  *(v5 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v104.f32[0]), v315, *v104.f32, 1), v291, v104, 2), v390, v104, 3);
  *(v5 + 1488) = xmmword_1000F0010;
  *(v5 + 1504) = 0;
  v105 = v571;
  *(v5 + 1507) = v572;
  *(v5 + 1505) = v105;
  *(v5 + 1508) = 1101004800;
  *(v5 + 1512) = 12;
  *(v5 + 1513) = v569;
  *(v5 + 1515) = v570;
  *(v5 + 1516) = 1065353216;
  *(v5 + 1520) = 0;
  *(v5 + 1528) = 0u;
  *(v5 + 1544) = v568;
  *(v5 + 1545) = 1;
  *(v5 + 1547) = 1;
  *(v5 + 1552) = 0u;
  *(v5 + 1568) = sub_10004DDB8;
  *(v5 + 1576) = 0;
  *(v5 + 1584) = 0x3EE147AE3E4CCCCDLL;
  *(v5 + 1600) = xmmword_1000EF5D0;
  *(v5 + 1616) = 3;
  v106 = vmulq_f32(xmmword_10013DCA0, 0);
  v362 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v316 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v106), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v292 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v106, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v265 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC078F5C2)), vdupq_n_s32(0xBD23D70A), *algn_10013DCB0), vdupq_n_s32(0xC05AE147), xmmword_10013DCC0));
  sub_10001358C(v496, -0.95993, xmmword_1000EC910);
  v107 = sub_100013568(v496);
  v391 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v107.n128_f32[0]), v316, v107.n128_u64[0], 1), v292, v107, 2), v265, v107, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v108.f32[0]), v316, *v108.f32, 1), v292, v108, 2), v265, v108, 3);
  v280 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v109.f32[0]), v316, *v109.f32, 1), v292, v109, 2), v265, v109, 3);
  v266 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v110.f32[0]), v316, *v110.f32, 1), v292, v110, 2), v265, v110, 3);
  sub_10001358C(v497, -0.2618, xmmword_1000EC8E0);
  v111 = sub_100013568(v497);
  v317 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v112.f32[0]), v340, *v112.f32, 1), v280, v112, 2), v266, v112, 3);
  v293 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v113.f32[0]), v340, *v113.f32, 1), v280, v113, 2), v266, v113, 3);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v111.n128_f32[0]), v340, v111.n128_u64[0], 1), v280, v111, 2), v266, v111, 3);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v114.f32[0]), v340, *v114.f32, 1), v280, v114, 2), v266, v114, 3);
  sub_10001358C(v498, 0.85521, xmmword_1000EC920);
  v115 = sub_100013568(v498);
  v575 = 1;
  *(v5 + 1632) = 0x3F2666663F8B851FLL;
  *(v5 + 1640) = 1025758986;
  *(v5 + 1644) = 1;
  *(v5 + 1645) = v580;
  *(v5 + 1647) = v581;
  *(v5 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v115.n128_f32[0]), v317, v115.n128_u64[0], 1), v293, v115, 2), v392, v115, 3);
  *(v5 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v116.f32[0]), v317, *v116.f32, 1), v293, v116, 2), v392, v116, 3);
  *(v5 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v117.f32[0]), v317, *v117.f32, 1), v293, v117, 2), v392, v117, 3);
  *(v5 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v118.f32[0]), v317, *v118.f32, 1), v293, v118, 2), v392, v118, 3);
  *(v5 + 1712) = xmmword_1000EC900;
  *(v5 + 1728) = 0;
  v119 = v578;
  *(v5 + 1731) = v579;
  *(v5 + 1729) = v119;
  *(v5 + 1732) = 1067869798;
  *(v5 + 1736) = 13;
  *(v5 + 1737) = v576;
  *(v5 + 1739) = v577;
  *(v5 + 1740) = 1065353216;
  *(v5 + 1744) = 0;
  *(v5 + 1752) = 0u;
  *(v5 + 1768) = v575;
  *(v5 + 1769) = 1;
  *(v5 + 1771) = 0;
  *(v5 + 1776) = 0u;
  *(v5 + 1792) = sub_100081614;
  *(v5 + 1800) = 0;
  *(v5 + 1808) = 0x3F80000000000000;
  *(v5 + 1824) = xmmword_1000EF7D0;
  *(v5 + 1840) = 3;
  v120 = vmulq_f32(xmmword_10013DCA0, 0);
  v341 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v294 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v120), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v281 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v120, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v259 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC06A3D70)), vdupq_n_s32(0x3FBD70A4u), *algn_10013DCB0), vdupq_n_s32(0xBFE147AE), xmmword_10013DCC0));
  sub_10001358C(v499, -1.2217, xmmword_1000EC910);
  v121 = sub_100013568(v499);
  v364 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v121.n128_f32[0]), v294, v121.n128_u64[0], 1), v281, v121, 2), v259, v121, 3);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v122.f32[0]), v294, *v122.f32, 1), v281, v122, 2), v259, v122, 3);
  v267 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v123.f32[0]), v294, *v123.f32, 1), v281, v123, 2), v259, v123, 3);
  v260 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v124.f32[0]), v294, *v124.f32, 1), v281, v124, 2), v259, v124, 3);
  sub_10001358C(v500, -0.69813, xmmword_1000EC8E0);
  v125 = sub_100013568(v500);
  v295 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v126.f32[0]), v318, *v126.f32, 1), v267, v126, 2), v260, v126, 3);
  v282 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v127.f32[0]), v318, *v127.f32, 1), v267, v127, 2), v260, v127, 3);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v125.n128_f32[0]), v318, v125.n128_u64[0], 1), v267, v125, 2), v260, v125, 3);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v128.f32[0]), v318, *v128.f32, 1), v267, v128, 2), v260, v128, 3);
  sub_10001358C(v501, 1.309, xmmword_1000EC920);
  v129 = sub_100013568(v501);
  v582 = 1;
  *(v5 + 1856) = 0x3F3D70A43F35C28FLL;
  *(v5 + 1864) = 0;
  *(v5 + 1868) = 1;
  *(v5 + 1869) = v587;
  *(v5 + 1871) = v588;
  *(v5 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v129.n128_f32[0]), v295, v129.n128_u64[0], 1), v282, v129, 2), v365, v129, 3);
  *(v5 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v130.f32[0]), v295, *v130.f32, 1), v282, v130, 2), v365, v130, 3);
  *(v5 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v131.f32[0]), v295, *v131.f32, 1), v282, v131, 2), v365, v131, 3);
  *(v5 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v132.f32[0]), v295, *v132.f32, 1), v282, v132, 2), v365, v132, 3);
  *(v5 + 1936) = xmmword_1000EC900;
  *(v5 + 1952) = 0;
  v133 = v585;
  *(v5 + 1955) = v586;
  *(v5 + 1953) = v133;
  *(v5 + 1956) = 0x40000000;
  *(v5 + 1960) = 10;
  *(v5 + 1961) = v583;
  *(v5 + 1963) = v584;
  *(v5 + 1964) = 1065353216;
  *(v5 + 1968) = 0;
  *(v5 + 1976) = 0u;
  *(v5 + 1992) = v582;
  *(v5 + 1993) = 1;
  *(v5 + 1995) = 0;
  *(v5 + 2000) = 0u;
  *(v5 + 2016) = sub_100081614;
  *(v5 + 2024) = 0;
  *(v5 + 2032) = 0x3F80000000000000;
  *(v5 + 2048) = xmmword_1000EF5A0;
  *(v5 + 2064) = 4;
  v134 = vmulq_f32(xmmword_10013DCA0, 0);
  v366 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v319 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v134), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v296 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v134, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v268 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F028F5Cu)), vdupq_n_s32(0x3E4CCCCCu), *algn_10013DCB0), vdupq_n_s32(0xBF028F5C), xmmword_10013DCC0));
  sub_10001358C(v502, 1.5708, xmmword_1000EC910);
  v135 = sub_100013568(v502);
  v460 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v135.n128_f32[0]), v319, v135.n128_u64[0], 1), v296, v135, 2), v268, v135, 3);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v136.f32[0]), v319, *v136.f32, 1), v296, v136, 2), v268, v136, 3);
  v283 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v137.f32[0]), v319, *v137.f32, 1), v296, v137, 2), v268, v137, 3);
  v269 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v138.f32[0]), v319, *v138.f32, 1), v296, v138, 2), v268, v138, 3);
  sub_10001358C(v503, -0.83776, xmmword_1000EC8E0);
  v139 = sub_100013568(v503);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v139.n128_f32[0]), v343, v139.n128_u64[0], 1), v283, v139, 2), v269, v139, 3);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v140.f32[0]), v343, *v140.f32, 1), v283, v140, 2), v269, v140, 3);
  v297 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v141.f32[0]), v343, *v141.f32, 1), v283, v141, 2), v269, v141, 3);
  v461 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v142.f32[0]), v343, *v142.f32, 1), v283, v142, 2), v269, v142, 3);
  sub_10001358C(v504, 1.5708, xmmword_1000EC920);
  v143 = sub_100013568(v504);
  v589 = 1;
  *(v5 + 2080) = 0x3F80000040133333;
  *(v5 + 2088) = 1056964608;
  *(v5 + 2092) = 1;
  *(v5 + 2093) = v594;
  *(v5 + 2095) = v595;
  *(v5 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v143.n128_f32[0]), v320, v143.n128_u64[0], 1), v297, v143, 2), v461, v143, 3);
  *(v5 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v144.f32[0]), v320, *v144.f32, 1), v297, v144, 2), v461, v144, 3);
  *(v5 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v145.f32[0]), v320, *v145.f32, 1), v297, v145, 2), v461, v145, 3);
  *(v5 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v146.f32[0]), v320, *v146.f32, 1), v297, v146, 2), v461, v146, 3);
  *(v5 + 2160) = xmmword_1000F0020;
  *(v5 + 2176) = 0;
  v147 = v592;
  *(v5 + 2179) = v593;
  *(v5 + 2177) = v147;
  *(v5 + 2180) = 1093664768;
  *(v5 + 2184) = 9;
  *(v5 + 2185) = v590;
  *(v5 + 2187) = v591;
  *(v5 + 2188) = 1065353216;
  *(v5 + 2192) = 0;
  *(v5 + 2200) = 0u;
  *(v5 + 2216) = v589;
  *(v5 + 2217) = 1;
  *(v5 + 2219) = 0;
  *(v5 + 2224) = 0u;
  *(v5 + 2240) = sub_10004DE80;
  *(v5 + 2248) = 0;
  *(v5 + 2256) = 0x3EEB851FBE3851ECLL;
  *(v5 + 2272) = xmmword_1000EF5A0;
  *(v5 + 2288) = 5;
  v148 = vmulq_f32(xmmword_10013DCA0, 0);
  v368 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v321 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v148), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v298 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v148, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v270 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFA8F5C2)), vdupq_n_s32(0x40233333u), *algn_10013DCB0), vdupq_n_s32(0x405D70A4u), xmmword_10013DCC0));
  sub_10001358C(v505, -0.50615, xmmword_1000EC910);
  v149 = sub_100013568(v505);
  v462 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v149.n128_f32[0]), v321, v149.n128_u64[0], 1), v298, v149, 2), v270, v149, 3);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v150.f32[0]), v321, *v150.f32, 1), v298, v150, 2), v270, v150, 3);
  v284 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v151.f32[0]), v321, *v151.f32, 1), v298, v151, 2), v270, v151, 3);
  v271 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v152.f32[0]), v321, *v152.f32, 1), v298, v152, 2), v270, v152, 3);
  sub_10001358C(v506, 0.0, xmmword_1000EC8E0);
  v153 = sub_100013568(v506);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v153.n128_f32[0]), v344, v153.n128_u64[0], 1), v284, v153, 2), v271, v153, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v154.f32[0]), v344, *v154.f32, 1), v284, v154, 2), v271, v154, 3);
  v299 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v155.f32[0]), v344, *v155.f32, 1), v284, v155, 2), v271, v155, 3);
  v463 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v156.f32[0]), v344, *v156.f32, 1), v284, v156, 2), v271, v156, 3);
  sub_10001358C(v507, 0.0, xmmword_1000EC920);
  v157 = sub_100013568(v507);
  v596 = 1;
  *(v5 + 2304) = 0x408CCCCD3FB33333;
  *(v5 + 2312) = 1053273620;
  *(v5 + 2316) = 0;
  *(v5 + 2317) = v601;
  *(v5 + 2319) = v602;
  *(v5 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v157.n128_f32[0]), v322, v157.n128_u64[0], 1), v299, v157, 2), v463, v157, 3);
  *(v5 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v158.f32[0]), v322, *v158.f32, 1), v299, v158, 2), v463, v158, 3);
  *(v5 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v159.f32[0]), v322, *v159.f32, 1), v299, v159, 2), v463, v159, 3);
  *(v5 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v160.f32[0]), v322, *v160.f32, 1), v299, v160, 2), v463, v160, 3);
  *(v5 + 2384) = xmmword_1000F0030;
  *(v5 + 2400) = 2;
  v161 = v599;
  *(v5 + 2403) = v600;
  *(v5 + 2401) = v161;
  *(v5 + 2404) = 1066192077;
  *(v5 + 2408) = 9;
  *(v5 + 2409) = v597;
  *(v5 + 2411) = v598;
  *(v5 + 2412) = 1065353216;
  *(v5 + 2416) = 0;
  *(v5 + 2424) = 0u;
  *(v5 + 2440) = v596;
  *(v5 + 2441) = 3;
  *(v5 + 2443) = 1;
  *(v5 + 2448) = 0u;
  *(v5 + 2464) = sub_10004DF28;
  *(v5 + 2472) = 0;
  *(v5 + 2480) = 0x3F80000000000000;
  *(v5 + 2496) = xmmword_1000EF5C0;
  *(v5 + 2512) = 5;
  v162 = vmulq_f32(xmmword_10013DCA0, 0);
  v345 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v300 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v162), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v285 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v162, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v261 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF7D70A3)), vdupq_n_s32(0x3FB5C28Fu), *algn_10013DCB0), vdupq_n_s32(0x4030A3D7u), xmmword_10013DCC0));
  sub_10001358C(v508, 0.0, xmmword_1000EC910);
  v163 = sub_100013568(v508);
  v370 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v163.n128_f32[0]), v300, v163.n128_u64[0], 1), v285, v163, 2), v261, v163, 3);
  v323 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v164.f32[0]), v300, *v164.f32, 1), v285, v164, 2), v261, v164, 3);
  v272 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v165.f32[0]), v300, *v165.f32, 1), v285, v165, 2), v261, v165, 3);
  v262 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v166.f32[0]), v300, *v166.f32, 1), v285, v166, 2), v261, v166, 3);
  sub_10001358C(v509, 0.069813, xmmword_1000EC8E0);
  v167 = sub_100013568(v509);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v168.f32[0]), v323, *v168.f32, 1), v272, v168, 2), v262, v168, 3);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v169.f32[0]), v323, *v169.f32, 1), v272, v169, 2), v262, v169, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v167.n128_f32[0]), v323, v167.n128_u64[0], 1), v272, v167, 2), v262, v167, 3);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v170.f32[0]), v323, *v170.f32, 1), v272, v170, 2), v262, v170, 3);
  sub_10001358C(v510, 0.62832, xmmword_1000EC920);
  v171 = sub_100013568(v510);
  v603 = 1;
  *(v5 + 2528) = 0x3F75C28F4017AE14;
  *(v5 + 2536) = 1032805417;
  *(v5 + 2540) = 0;
  *(v5 + 2541) = v608;
  *(v5 + 2543) = v609;
  *(v5 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v171.n128_f32[0]), v301, v171.n128_u64[0], 1), v286, v171, 2), v371, v171, 3);
  *(v5 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v172.f32[0]), v301, *v172.f32, 1), v286, v172, 2), v371, v172, 3);
  *(v5 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v173.f32[0]), v301, *v173.f32, 1), v286, v173, 2), v371, v173, 3);
  *(v5 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v174.f32[0]), v301, *v174.f32, 1), v286, v174, 2), v371, v174, 3);
  *(v5 + 2608) = xmmword_1000F0030;
  *(v5 + 2624) = 2;
  v175 = v606;
  *(v5 + 2627) = v607;
  *(v5 + 2625) = v175;
  *(v5 + 2628) = 1067030938;
  *(v5 + 2632) = 9;
  *(v5 + 2633) = v604;
  *(v5 + 2635) = v605;
  *(v5 + 2636) = 1065353216;
  *(v5 + 2640) = 0;
  *(v5 + 2648) = 0u;
  *(v5 + 2664) = v603;
  *(v5 + 2665) = 3;
  *(v5 + 2667) = 1;
  *(v5 + 2672) = 0u;
  *(v5 + 2688) = sub_10004DF58;
  *(v5 + 2696) = 0;
  *(v5 + 2704) = 0x3F80000000000000;
  *(v5 + 2720) = xmmword_1000EF5D0;
  *(v5 + 2736) = 5;
  v176 = vmulq_f32(xmmword_10013DCA0, 0);
  v438 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v372 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v176), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v324 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v176, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v171.n128_u64[0] = 0x4000000040000000;
  v171.n128_u64[1] = 0x4000000040000000;
  v302 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD1EB85u)), v408, *algn_10013DCB0), v171, xmmword_10013DCC0));
  sub_10001358C(v511, 0.0, xmmword_1000EC910);
  v177 = sub_100013568(v511);
  v464 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v177.n128_f32[0]), v372, v177.n128_u64[0], 1), v324, v177, 2), v302, v177, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v178.f32[0]), v372, *v178.f32, 1), v324, v178, 2), v302, v178, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v179.f32[0]), v372, *v179.f32, 1), v324, v179, 2), v302, v179, 3);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v180.f32[0]), v372, *v180.f32, 1), v324, v180, 2), v302, v180, 3);
  sub_10001358C(v512, 0.54105, xmmword_1000EC8E0);
  v181 = sub_100013568(v512);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v181.n128_f32[0]), v409, v181.n128_u64[0], 1), v347, v181, 2), v303, v181, 3);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v182.f32[0]), v409, *v182.f32, 1), v347, v182, 2), v303, v182, 3);
  v325 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v183.f32[0]), v409, *v183.f32, 1), v347, v183, 2), v303, v183, 3);
  v465 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v184.f32[0]), v409, *v184.f32, 1), v347, v184, 2), v303, v184, 3);
  sub_10001358C(v513, 0.0, xmmword_1000EC920);
  v185 = sub_100013568(v513);
  v610 = 1;
  *(v5 + 2752) = 0x4026666640600000;
  *(v5 + 2760) = 1043878380;
  *(v5 + 2764) = 1;
  *(v5 + 2765) = v615;
  *(v5 + 2767) = v616;
  *(v5 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v185.n128_f32[0]), v373, v185.n128_u64[0], 1), v325, v185, 2), v465, v185, 3);
  *(v5 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v186.f32[0]), v373, *v186.f32, 1), v325, v186, 2), v465, v186, 3);
  *(v5 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v187.f32[0]), v373, *v187.f32, 1), v325, v187, 2), v465, v187, 3);
  *(v5 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v188.f32[0]), v373, *v188.f32, 1), v325, v188, 2), v465, v188, 3);
  *(v5 + 2832) = xmmword_1000F0040;
  *(v5 + 2848) = 1;
  v189 = v613;
  *(v5 + 2851) = v614;
  *(v5 + 2849) = v189;
  *(v5 + 2852) = 1088631603;
  *(v5 + 2856) = 9;
  *(v5 + 2857) = v611;
  *(v5 + 2859) = v612;
  *(v5 + 2860) = 1065353216;
  *(v5 + 2864) = 0;
  *(v5 + 2872) = 0u;
  *(v5 + 2888) = v610;
  *(v5 + 2889) = 3;
  *(v5 + 2891) = 1;
  *(v5 + 2896) = 0u;
  *(v5 + 2912) = sub_10004E01C;
  *(v5 + 2920) = 0;
  *(v5 + 2928) = 0x3F80000000000000;
  *(v5 + 2944) = xmmword_1000EF7D0;
  *(v5 + 2960) = 5;
  v190 = vmulq_f32(xmmword_10013DCA0, 0);
  v466 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v410 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v190), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v374 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v190, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v326 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC001EB85)), vdupq_n_s32(0x4073D70Au), *algn_10013DCB0), vdupq_n_s32(0x405E147Bu), xmmword_10013DCC0));
  sub_10001358C(v514, -0.90757, xmmword_1000EC910);
  v191 = sub_100013568(v514);
  v440 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v191.n128_f32[0]), v410, v191.n128_u64[0], 1), v374, v191, 2), v326, v191, 3);
  v393 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v192.f32[0]), v410, *v192.f32, 1), v374, v192, 2), v326, v192, 3);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v193.f32[0]), v410, *v193.f32, 1), v374, v193, 2), v326, v193, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v194.f32[0]), v410, *v194.f32, 1), v374, v194, 2), v326, v194, 3);
  sub_10001358C(v515, -0.76794, xmmword_1000EC8E0);
  v195 = sub_100013568(v515);
  v467 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v195.n128_f32[0]), v393, v195.n128_u64[0], 1), v348, v195, 2), v327, v195, 3);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v196.f32[0]), v393, *v196.f32, 1), v348, v196, 2), v327, v196, 3);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v197.f32[0]), v393, *v197.f32, 1), v348, v197, 2), v327, v197, 3);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v198.f32[0]), v393, *v198.f32, 1), v348, v198, 2), v327, v198, 3);
  sub_10001358C(v516, 0.087266, xmmword_1000EC920);
  v199 = sub_100013568(v516);
  v617 = 1;
  *(v5 + 2976) = 0x3E428F5C3FF33333;
  *(v5 + 2984) = 1030322389;
  *(v5 + 2988) = 1;
  *(v5 + 2989) = v622;
  *(v5 + 2991) = v623;
  *(v5 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v467, v199.n128_f32[0]), v411, v199.n128_u64[0], 1), v375, v199, 2), v441, v199, 3);
  *(v5 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v467, v200.f32[0]), v411, *v200.f32, 1), v375, v200, 2), v441, v200, 3);
  *(v5 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v467, v201.f32[0]), v411, *v201.f32, 1), v375, v201, 2), v441, v201, 3);
  *(v5 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v467, v202.f32[0]), v411, *v202.f32, 1), v375, v202, 2), v441, v202, 3);
  *(v5 + 3056) = xmmword_1000F0050;
  *(v5 + 3072) = 1;
  v203 = v620;
  *(v5 + 3075) = v621;
  *(v5 + 3073) = v203;
  *(v5 + 3076) = 1078355558;
  *(v5 + 3080) = 13;
  *(v5 + 3081) = v618;
  *(v5 + 3083) = v619;
  *(v5 + 3084) = 1065353216;
  *(v5 + 3088) = 0;
  *(v5 + 3096) = 0u;
  *(v5 + 3112) = v617;
  *(v5 + 3113) = 3;
  *(v5 + 3115) = 1;
  *(v5 + 3120) = 0u;
  *(v5 + 3136) = sub_10004E0D4;
  *(v5 + 3144) = 0;
  *(v5 + 3152) = 0x3F80000000000000;
  *(v5 + 3168) = xmmword_1000EF630;
  *(v5 + 3184) = 5;
  v204 = vmulq_f32(xmmword_10013DCA0, 0);
  v412 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v376 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v204), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v349 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v204, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v304 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC02AE147)), vdupq_n_s32(0x40733333u), *algn_10013DCB0), vdupq_n_s32(0x40547AE1u), xmmword_10013DCC0));
  sub_10001358C(v517, -0.92502, xmmword_1000EC910);
  v205 = sub_100013568(v517);
  v442 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v205.n128_f32[0]), v376, v205.n128_u64[0], 1), v349, v205, 2), v304, v205, 3);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v206.f32[0]), v376, *v206.f32, 1), v349, v206, 2), v304, v206, 3);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v207.f32[0]), v376, *v207.f32, 1), v349, v207, 2), v304, v207, 3);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v208.f32[0]), v376, *v208.f32, 1), v349, v208, 2), v304, v208, 3);
  sub_10001358C(v518, -0.71558, xmmword_1000EC8E0);
  v209 = sub_100013568(v518);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v209.n128_f32[0]), v394, v209.n128_u64[0], 1), v328, v209, 2), v305, v209, 3);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v210.f32[0]), v394, *v210.f32, 1), v328, v210, 2), v305, v210, 3);
  v350 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v211.f32[0]), v394, *v211.f32, 1), v328, v211, 2), v305, v211, 3);
  v443 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v212.f32[0]), v394, *v212.f32, 1), v328, v212, 2), v305, v212, 3);
  sub_10001358C(v519, 0.19199, xmmword_1000EC920);
  v213 = sub_100013568(v519);
  v624 = 1;
  *(v5 + 3200) = 0x3E6147AE40266666;
  *(v5 + 3208) = 1026564293;
  *(v5 + 3212) = 1;
  *(v5 + 3213) = v629;
  *(v5 + 3215) = v630;
  *(v5 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v213.n128_f32[0]), v377, v213.n128_u64[0], 1), v350, v213, 2), v443, v213, 3);
  *(v5 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v214.f32[0]), v377, *v214.f32, 1), v350, v214, 2), v443, v214, 3);
  *(v5 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v215.f32[0]), v377, *v215.f32, 1), v350, v215, 2), v443, v215, 3);
  *(v5 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v216.f32[0]), v377, *v216.f32, 1), v350, v216, 2), v443, v216, 3);
  *(v5 + 3280) = xmmword_1000F0050;
  *(v5 + 3296) = 1;
  v217 = v627;
  *(v5 + 3299) = v628;
  *(v5 + 3297) = v217;
  *(v5 + 3300) = 1083179008;
  *(v5 + 3304) = 13;
  *(v5 + 3305) = v625;
  *(v5 + 3307) = v626;
  *(v5 + 3308) = 1065353216;
  *(v5 + 3312) = 0;
  *(v5 + 3320) = 0u;
  *(v5 + 3336) = v624;
  *(v5 + 3337) = 3;
  *(v5 + 3339) = 1;
  *(v5 + 3344) = 0u;
  *(v5 + 3360) = sub_10004E17C;
  *(v5 + 3368) = 0;
  *(v5 + 3376) = 0x3F80000000000000;
  *(v5 + 3392) = xmmword_1000EF5A0;
  *(v5 + 3408) = 6;
  v218 = vmulq_f32(xmmword_10013DCA0, 0);
  v444 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v395 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v218), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v351 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v218, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v468 = vdupq_n_s32(0xBF8E147B);
  v329 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBD4CCCCC)), vdupq_n_s32(0x3DB851EBu), *algn_10013DCB0), v468, xmmword_10013DCC0));
  sub_10001358C(v520, 1.5708, xmmword_1000EC910);
  v219 = sub_100013568(v520);
  v454 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v219.n128_f32[0]), v395, v219.n128_u64[0], 1), v351, v219, 2), v329, v219, 3);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v220.f32[0]), v395, *v220.f32, 1), v351, v220, 2), v329, v220, 3);
  v378 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v221.f32[0]), v395, *v221.f32, 1), v351, v221, 2), v329, v221, 3);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v222.f32[0]), v395, *v222.f32, 1), v351, v222, 2), v329, v222, 3);
  sub_10001358C(v521, -2.9671, xmmword_1000EC8E0);
  v223 = sub_100013568(v521);
  v445 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v223.n128_f32[0]), v414, v223.n128_u64[0], 1), v378, v223, 2), v330, v223, 3);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v224.f32[0]), v414, *v224.f32, 1), v378, v224, 2), v330, v224, 3);
  v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v225.f32[0]), v414, *v225.f32, 1), v378, v225, 2), v330, v225, 3);
  v455 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v226.f32[0]), v414, *v226.f32, 1), v378, v226, 2), v330, v226, 3);
  sub_10001358C(v522, 1.5708, xmmword_1000EC920);
  v227 = sub_100013568(v522);
  v631 = 1;
  *(v5 + 3424) = 0x3F99999A400CCCCDLL;
  *(v5 + 3432) = 1056964608;
  *(v5 + 3436) = 1;
  *(v5 + 3437) = v636;
  *(v5 + 3439) = v637;
  *(v5 + 3440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v227.n128_f32[0]), v396, v227.n128_u64[0], 1), v352, v227, 2), v455, v227, 3);
  *(v5 + 3456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v228.f32[0]), v396, *v228.f32, 1), v352, v228, 2), v455, v228, 3);
  *(v5 + 3472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v229.f32[0]), v396, *v229.f32, 1), v352, v229, 2), v455, v229, 3);
  *(v5 + 3488) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v230.f32[0]), v396, *v230.f32, 1), v352, v230, 2), v455, v230, 3);
  *(v5 + 3504) = xmmword_1000F0060;
  *(v5 + 3520) = 0;
  v231 = v634;
  *(v5 + 3523) = v635;
  *(v5 + 3521) = v231;
  *(v5 + 3524) = 1052938076;
  *(v5 + 3528) = 9;
  *(v5 + 3529) = v632;
  *(v5 + 3531) = v633;
  *(v5 + 3532) = 1065353216;
  *(v5 + 3536) = 0;
  *(v5 + 3544) = 0u;
  *(v5 + 3560) = v631;
  *(v5 + 3561) = 2;
  *(v5 + 3563) = 1;
  *(v5 + 3568) = 0u;
  *(v5 + 3584) = sub_10004E244;
  *(v5 + 3592) = 0;
  *(v5 + 3600) = 0x3F80000000000000;
  *(v5 + 3616) = xmmword_1000EF5C0;
  *(v5 + 3632) = 6;
  v232 = vmulq_f32(xmmword_10013DCA0, 0);
  v233 = vmulq_f32(xmmword_10013DCA0, v421);
  v422 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v415 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v232), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v397 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v232, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v469 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(v233, vdupq_n_s32(0xBF2E147B), *algn_10013DCB0), v468, xmmword_10013DCC0));
  sub_10001358C(v523, 1.5708, xmmword_1000EC910);
  v234 = sub_100013568(v523);
  v451 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v235.f32[0]), v415, *v235.f32, 1), v397, v235, 2), v469, v235, 3);
  v456 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v234.n128_f32[0]), v415, v234.n128_u64[0], 1), v397, v234, 2), v469, v234, 3);
  v446 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v236.f32[0]), v415, *v236.f32, 1), v397, v236, 2), v469, v236, 3);
  v423 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v237.f32[0]), v415, *v237.f32, 1), v397, v237, 2), v469, v237, 3);
  sub_10001358C(v524, -2.3736, xmmword_1000EC8E0);
  v238 = sub_100013568(v524);
  v473 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v239.f32[0]), v451, *v239.f32, 1), v446, v239, 2), v423, v239, 3);
  v474 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v238.n128_f32[0]), v451, v238.n128_u64[0], 1), v446, v238, 2), v423, v238, 3);
  v470 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v240.f32[0]), v451, *v240.f32, 1), v446, v240, 2), v423, v240, 3);
  v457 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v241.f32[0]), v451, *v241.f32, 1), v446, v241, 2), v423, v241, 3);
  sub_10001358C(v525, 1.5708, xmmword_1000EC920);
  v242 = sub_100013568(v525);
  v638 = 1;
  *(v5 + 3648) = 0x3F99999A3F99999ALL;
  *(v5 + 3656) = 1056964608;
  *(v5 + 3660) = 1;
  *(v5 + 3661) = v643;
  *(v5 + 3663) = v644;
  *(v5 + 3664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v242.n128_f32[0]), v473, v242.n128_u64[0], 1), v470, v242, 2), v457, v242, 3);
  *(v5 + 3680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v243.f32[0]), v473, *v243.f32, 1), v470, v243, 2), v457, v243, 3);
  *(v5 + 3696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v244.f32[0]), v473, *v244.f32, 1), v470, v244, 2), v457, v244, 3);
  *(v5 + 3712) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v245.f32[0]), v473, *v245.f32, 1), v470, v245, 2), v457, v245, 3);
  *(v5 + 3728) = xmmword_1000F0070;
  *(v5 + 3744) = 0;
  v246 = v641;
  *(v5 + 3747) = v642;
  *(v5 + 3745) = v246;
  *(v5 + 3748) = 1056964608;
  *(v5 + 3752) = 9;
  *(v5 + 3753) = v639;
  *(v5 + 3755) = v640;
  *(v5 + 3756) = 1065353216;
  *(v5 + 3760) = 0;
  *(v5 + 3768) = 0u;
  *(v5 + 3784) = v638;
  *(v5 + 3785) = 2;
  *(v5 + 3787) = 1;
  *(v5 + 3792) = 0u;
  *(v5 + 3808) = sub_100081604;
  *(v5 + 3816) = 0;
  *(v5 + 3824) = 0x3F80000000000000;
  v247 = sub_1000A0774(v5);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020);
  v248 = swift_allocObject();
  v248[1] = xmmword_1000EC880;
  v248[2] = xmmword_1000F0080;
  v248[3] = xmmword_1000F0090;
  v249 = swift_allocObject();
  v249[1] = xmmword_1000EC880;
  v249[2] = xmmword_1000F00A0;
  v249[3] = xmmword_1000F00B0;
  v250 = swift_allocObject();
  v250[1] = xmmword_1000EC880;
  v250[2] = xmmword_1000F00C0;
  v250[3] = xmmword_1000F00D0;
  v251 = qword_10013AC20;
  v252 = unk_10013AC28;
  v253 = qword_10013AC30;

  v254 = qword_10013AC50;
  v255 = sub_1000A0A98(_swiftEmptyArrayStorage);
  swift_bridgeObjectRetain_n();
  v256 = sub_1000C1928(v247);

  sub_1000C53DC(v256, v647);
  v257 = sub_1000C199C(v247);

  sub_1000C53DC(v257, v645);
  xmmword_10013B4A0 = v432;
  *algn_10013B4B0 = v431;
  qword_10013B4C0 = v430;
  dword_10013B4C8 = v0;
  xmmword_10013B4D0 = v429;
  unk_10013B4E0 = v428;
  qword_10013B4F0 = v1;
  dword_10013B4F8 = v2;
  xmmword_10013B500 = v427;
  qword_10013B510 = v3;
  xmmword_10013B520 = v426;
  qword_10013B530 = v4;
  unk_10013B538 = v425;
  dword_10013B540 = v424;
  qword_10013B548 = 0;
  unk_10013B550 = v247;
  qword_10013B578 = v648;
  unk_10013B568 = v647[1];
  unk_10013B558 = v647[0];
  xmmword_10013B580 = v645[0];
  unk_10013B590 = v645[1];
  qword_10013B5A0 = v646;
  qword_10013B5A8 = sub_10004E2D0;
  qword_10013B5B0 = 0;
  xmmword_10013B5C0 = xmmword_1000F00E0;
  unk_10013B5D0 = xmmword_1000F00F0;
  qword_10013B5E0 = v248;
  word_10013B5EC = 4;
  dword_10013B5E8 = 0;
  xmmword_10013B5F0 = xmmword_1000F0100;
  qword_10013B600 = v249;
  xmmword_10013B608 = xmmword_1000F0110;
  xmmword_10013B618 = xmmword_1000F0120;
  qword_10013B628 = 1061931980;
  unk_10013B630 = v250;
  xmmword_10013B638 = xmmword_1000F0130;
  xmmword_10013B648 = xmmword_1000F0140;
  qword_10013B658 = 1063511012;
  result = 0.000000336591084;
  xmmword_10013B660 = xmmword_1000F0150;
  qword_10013B670 = v251;
  unk_10013B678 = v252;
  qword_10013B680 = v253;
  unk_10013B688 = v255;
  qword_10013B690 = _swiftEmptyArrayStorage;
  unk_10013B698 = _swiftEmptyArrayStorage;
  qword_10013B6A0 = v254;
  return result;
}

double sub_10004DA30(uint64_t a1, float a2)
{
  *(a1 + 100) = ((*(a1 + 100) + -2.0) * a2) + 2.0;
  *(a1 + 108) = ((*(a1 + 108) + -0.21) * a2) + 0.21;
  v7 = xmmword_1000F0160;
  v8 = 0x3F8000003F1C28F6;
  sub_1000BAC84(*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), &v5, a2);
  v3 = v6;
  result = *&v5;
  *(a1 + 112) = v5;
  *(a1 + 128) = v3;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_10004DAE4(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.6) * a2) + 1.6) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.3) * a2) + 2.3) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.54) * a2) + 0.54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004DB9C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.6) * a2) + 1.6) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.75) * a2) + 0.75) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -6.0) * a2) + 6.0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004DC34(uint64_t a1, float a2)
{
  if (*(a1 + 12) == 1)
  {
    v17 = v5;
    v18 = v4;
    v19 = v2;
    v20 = v3;
    v7 = ((*(a1 + 8) + -0.09) * a2) + 0.09;
    *a1 = COERCE_UNSIGNED_INT(((*a1 + -2.3) * a2) + 2.3) | (COERCE_UNSIGNED_INT(((*(a1 + 4) + -4.1) * a2) + 4.1) << 32);
    *(a1 + 8) = v7;
    *(a1 + 100) = ((*(a1 + 100) + -2.0) * a2) + 2.0;
    *(a1 + 108) = ((*(a1 + 108) + -0.14) * a2) + 0.14;
    sub_1000BA464(*(a1 + 80), *(a1 + 88), *(a1 + 96), 1163575296, 0, 1, a2);
    *(a1 + 80) = v9;
    *(a1 + 88) = v10;
    *(a1 + 96) = v11;
    v15 = xmmword_1000F0170;
    v16 = 0x3EE666663E75C28FLL;
    sub_1000BAC84(*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), &v13, a2);
    v12 = v14;
    *(a1 + 112) = v13;
    *(a1 + 128) = v12;
    *(a1 + 136) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004DDB8(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.08) * a2) + 0.08;
    *result = COERCE_UNSIGNED_INT(((*result + -3.9) * a2) + 3.9) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.68) * a2) + 0.68) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.8) * a2) + 1.8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004DE80(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -3.8) * a2) + 3.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.0) * a2) + 1.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.2) * a2) + 2.2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10004DF28(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.36) * a2) + 0.36;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10004DF58(uint64_t result, float a2)
{
  if (*(result + 12))
  {
    __break(1u);
  }

  else
  {
    v2 = ((*(result + 8) + -0.14) * a2) + 0.14;
    *result = COERCE_UNSIGNED_INT(((*result + -2.4) * a2) + 2.4) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.96) * a2) + 0.96) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.4) * a2) + 0.4;
  }

  return result;
}

uint64_t sub_10004E01C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.37) * a2) + 0.37;
    *result = COERCE_UNSIGNED_INT(((*result + -3.5) * a2) + 3.5) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.6) * a2) + 2.6) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.3) * a2) + 1.3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004E0D4(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.9) * a2) + 1.9) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.19) * a2) + 0.19) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.0) * a2) + 2.0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004E17C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.094) * a2) + 0.094;
    *result = COERCE_UNSIGNED_INT(((*result + -2.7) * a2) + 2.7) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.22) * a2) + 0.22) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.3) * a2) + 1.3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004E244(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    *&v2 = ((*result + -1.1) * a2) + 1.1;
    *&v3 = ((*(result + 4) + -1.2) * a2) + 1.2;
    v4 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = v2 | (v3 << 32);
    *(result + 8) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10004E2D0()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  *v0.i64 = qword_10013AB58();
  *&result = vmulq_f32(v0, vdupq_n_s32(0x3FA66666u)).u64[0];
  return result;
}

double sub_10004E364()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v497 = unk_10013AA60;
  v498 = xmmword_10013AA50;
  v496 = qword_10013AA70;
  v0 = dword_10013AA78;
  v494 = unk_10013AA90;
  v495 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v2 = dword_10013AAA8;
  v493 = xmmword_10013AAB0;
  v492 = qword_10013AAC0;
  v491 = xmmword_10013AAD0;
  v489 = unk_10013AAE8;
  v490 = qword_10013AAE0;
  v488 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000F0180;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v4 = vmulq_f32(xmmword_10013DCA0, 0);
  __asm { FMOV            V5.4S, #-6.25 }

  v534 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v525 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v4), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v499 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v4, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v471 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, _Q5), vdupq_n_s32(0x40CF0A3Du), *algn_10013DCB0), vdupq_n_s32(0xC05EB852), xmmword_10013DCC0));
  sub_10001358C(v537, 2.234, xmmword_1000EC910);
  v10 = sub_100013568(v537);
  v533 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v534, v10.n128_f32[0]), v525, v10.n128_u64[0], 1), v499, v10, 2), v471, v10, 3);
  v520 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v534, v11.f32[0]), v525, *v11.f32, 1), v499, v11, 2), v471, v11, 3);
  v481 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v534, v12.f32[0]), v525, *v12.f32, 1), v499, v12, 2), v471, v12, 3);
  v462 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v534, v13.f32[0]), v525, *v13.f32, 1), v499, v13, 2), v471, v13, 3);
  sub_10001358C(v538, -2.426, xmmword_1000EC8E0);
  v14 = sub_100013568(v538);
  v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v533, v14.n128_f32[0]), v520, v14.n128_u64[0], 1), v481, v14, 2), v462, v14, 3);
  v500 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v533, v16.f32[0]), v520, *v16.f32, 1), v481, v16, 2), v462, v16, 3);
  v472 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v533, v17.f32[0]), v520, *v17.f32, 1), v481, v17, 2), v462, v17, 3);
  v521 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v533, v18.f32[0]), v520, *v18.f32, 1), v481, v18, 2), v462, v18, 3);
  v526 = v15;
  sub_10001358C(v539, 0.15708, xmmword_1000EC920);
  v19 = sub_100013568(v539);
  v595 = 0;
  *(v3 + 64) = 0x4089999A40733333;
  *(v3 + 72) = 1047233823;
  *(v3 + 76) = 1;
  *(v3 + 77) = v600;
  *(v3 + 79) = v601;
  *(v3 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v526, v19.n128_f32[0]), v500, v19.n128_u64[0], 1), v472, v19, 2), v521, v19, 3);
  *(v3 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v526, v20.f32[0]), v500, *v20.f32, 1), v472, v20, 2), v521, v20, 3);
  *(v3 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v526, v21.f32[0]), v500, *v21.f32, 1), v472, v21, 2), v521, v21, 3);
  *(v3 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v526, v22.f32[0]), v500, *v22.f32, 1), v472, v22, 2), v521, v22, 3);
  *(v3 + 144) = xmmword_1000F0190;
  *(v3 + 160) = 1;
  v23 = v598;
  *(v3 + 163) = v599;
  *(v3 + 161) = v23;
  *(v3 + 164) = 1100480512;
  *(v3 + 168) = 1;
  *(v3 + 169) = v596;
  *(v3 + 171) = v597;
  *(v3 + 172) = 1050589266;
  *(v3 + 176) = xmmword_1000F01A0;
  *(v3 + 192) = 0x3F47AE143E19999ALL;
  *(v3 + 200) = v595;
  *(v3 + 201) = 0;
  *(v3 + 203) = 1;
  *(v3 + 208) = 0u;
  *(v3 + 224) = sub_100051D58;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0x3F80000000000000;
  *(v3 + 256) = xmmword_1000EF5A0;
  *(v3 + 272) = 0;
  v24 = vmulq_f32(xmmword_10013DCA0, 0);
  v501 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v473 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v24), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v463 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v24, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v413 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0C9EB85)), vdupq_n_s32(0x40CC7AE1u), *algn_10013DCB0), vdupq_n_s32(0xC060A3D7), xmmword_10013DCC0));
  sub_10001358C(v540, 2.234, xmmword_1000EC910);
  v25 = sub_100013568(v540);
  v527 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v501, v25.n128_f32[0]), v473, v25.n128_u64[0], 1), v463, v25, 2), v413, v25, 3);
  v482 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v501, v26.f32[0]), v473, *v26.f32, 1), v463, v26, 2), v413, v26, 3);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v501, v27.f32[0]), v473, *v27.f32, 1), v463, v27, 2), v413, v27, 3);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v501, v28.f32[0]), v473, *v28.f32, 1), v463, v28, 2), v413, v28, 3);
  sub_10001358C(v541, -2.426, xmmword_1000EC8E0);
  v29 = sub_100013568(v541);
  v502 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v527, v29.n128_f32[0]), v482, v29.n128_u64[0], 1), v441, v29, 2), v414, v29, 3);
  v474 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v527, v30.f32[0]), v482, *v30.f32, 1), v441, v30, 2), v414, v30, 3);
  v464 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v527, v31.f32[0]), v482, *v31.f32, 1), v441, v31, 2), v414, v31, 3);
  v528 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v527, v32.f32[0]), v482, *v32.f32, 1), v441, v32, 2), v414, v32, 3);
  sub_10001358C(v542, 0.15708, xmmword_1000EC920);
  v33 = sub_100013568(v542);
  v602 = 0;
  *(v3 + 288) = 0x4079999A3F800000;
  *(v3 + 296) = 1028174905;
  *(v3 + 300) = 1;
  *(v3 + 301) = v607;
  *(v3 + 303) = v608;
  *(v3 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v502, v33.n128_f32[0]), v474, v33.n128_u64[0], 1), v464, v33, 2), v528, v33, 3);
  *(v3 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v502, v34.f32[0]), v474, *v34.f32, 1), v464, v34, 2), v528, v34, 3);
  *(v3 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v502, v35.f32[0]), v474, *v35.f32, 1), v464, v35, 2), v528, v35, 3);
  *(v3 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v502, v36.f32[0]), v474, *v36.f32, 1), v464, v36, 2), v528, v36, 3);
  *(v3 + 368) = xmmword_1000F01B0;
  *(v3 + 384) = 1;
  v37 = v605;
  *(v3 + 387) = v606;
  *(v3 + 385) = v37;
  *(v3 + 388) = 1080452710;
  *(v3 + 392) = 1;
  *(v3 + 393) = v603;
  *(v3 + 395) = v604;
  *(v3 + 396) = 1053609165;
  *(v3 + 400) = xmmword_1000F01C0;
  *(v3 + 416) = 0x3F2E147B3DB851ECLL;
  *(v3 + 424) = v602;
  *(v3 + 425) = 0;
  *(v3 + 427) = 1;
  *(v3 + 432) = 0u;
  *(v3 + 448) = sub_100081608;
  *(v3 + 456) = 0;
  *(v3 + 464) = 0x3F80000000000000;
  *(v3 + 480) = xmmword_1000EF5A0;
  *(v3 + 496) = 1;
  v38 = vmulq_f32(xmmword_10013DCA0, 0);
  v503 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v465 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v38), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v442 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v38, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v386 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF30A3D7)), vdupq_n_s32(0x3F147AE1u), *algn_10013DCB0), vdupq_n_s32(0xBF0CCCCD), xmmword_10013DCC0));
  sub_10001358C(v543, 2.6354, xmmword_1000EC910);
  v39 = sub_100013568(v543);
  v529 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v503, v39.n128_f32[0]), v465, v39.n128_u64[0], 1), v442, v39, 2), v386, v39, 3);
  v475 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v503, v40.f32[0]), v465, *v40.f32, 1), v442, v40, 2), v386, v40, 3);
  v415 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v503, v41.f32[0]), v465, *v41.f32, 1), v442, v41, 2), v386, v41, 3);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v503, v42.f32[0]), v465, *v42.f32, 1), v442, v42, 2), v386, v42, 3);
  sub_10001358C(v544, -2.8972, xmmword_1000EC8E0);
  v43 = sub_100013568(v544);
  v504 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v529, v43.n128_f32[0]), v475, v43.n128_u64[0], 1), v415, v43, 2), v387, v43, 3);
  v466 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v529, v44.f32[0]), v475, *v44.f32, 1), v415, v44, 2), v387, v44, 3);
  v443 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v529, v45.f32[0]), v475, *v45.f32, 1), v415, v45, 2), v387, v45, 3);
  v530 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v529, v46.f32[0]), v475, *v46.f32, 1), v415, v46, 2), v387, v46, 3);
  sub_10001358C(v545, 0.64577, xmmword_1000EC920);
  v47 = sub_100013568(v545);
  v609 = 1;
  *(v3 + 512) = 0x3F1C28F640200000;
  *(v3 + 520) = 1054280253;
  *(v3 + 524) = 1;
  *(v3 + 525) = v614;
  *(v3 + 527) = v615;
  *(v3 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v47.n128_f32[0]), v466, v47.n128_u64[0], 1), v443, v47, 2), v530, v47, 3);
  *(v3 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v48.f32[0]), v466, *v48.f32, 1), v443, v48, 2), v530, v48, 3);
  *(v3 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v49.f32[0]), v466, *v49.f32, 1), v443, v49, 2), v530, v49, 3);
  *(v3 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v50.f32[0]), v466, *v50.f32, 1), v443, v50, 2), v530, v50, 3);
  *(v3 + 592) = xmmword_1000F01D0;
  *(v3 + 608) = 0;
  v51 = v612;
  *(v3 + 611) = v613;
  *(v3 + 609) = v51;
  *(v3 + 612) = 1100480512;
  *(v3 + 616) = 9;
  *(v3 + 617) = v610;
  *(v3 + 619) = v611;
  *(v3 + 620) = 1065353216;
  *(v3 + 640) = 0;
  *(v3 + 624) = 0u;
  *(v3 + 648) = v609;
  *(v3 + 649) = 0;
  *(v3 + 651) = 0;
  *(v3 + 656) = 0u;
  *(v3 + 672) = sub_100051DB4;
  *(v3 + 680) = 0;
  *(v3 + 688) = 0x3F80000000000000;
  *(v3 + 704) = xmmword_1000EF5C0;
  *(v3 + 720) = 1;
  v52 = vmulq_f32(xmmword_10013DCA0, 0);
  v476 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v444 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v52), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v416 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v52, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v361 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE0F5C29)), vdupq_n_s32(0x3E851EB8u), *algn_10013DCB0), vdupq_n_s32(0x3F028F5Cu), xmmword_10013DCC0));
  sub_10001358C(v546, 2.2689, xmmword_1000EC910);
  v53 = sub_100013568(v546);
  v505 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v53.n128_f32[0]), v444, v53.n128_u64[0], 1), v416, v53, 2), v361, v53, 3);
  v467 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v54.f32[0]), v444, *v54.f32, 1), v416, v54, 2), v361, v54, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v55.f32[0]), v444, *v55.f32, 1), v416, v55, 2), v361, v55, 3);
  v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v56.f32[0]), v444, *v56.f32, 1), v416, v56, 2), v361, v56, 3);
  sub_10001358C(v547, -3.5081, xmmword_1000EC8E0);
  v57 = sub_100013568(v547);
  v477 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v57.n128_f32[0]), v467, v57.n128_u64[0], 1), v388, v57, 2), v362, v57, 3);
  v445 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v58.f32[0]), v467, *v58.f32, 1), v388, v58, 2), v362, v58, 3);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v59.f32[0]), v467, *v59.f32, 1), v388, v59, 2), v362, v59, 3);
  v506 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v60.f32[0]), v467, *v60.f32, 1), v388, v60, 2), v362, v60, 3);
  sub_10001358C(v548, 0.99484, xmmword_1000EC920);
  v61 = sub_100013568(v548);
  v616 = 1;
  *(v3 + 736) = 0x3EF5C28F3FF33333;
  *(v3 + 744) = 1053609165;
  *(v3 + 748) = 1;
  *(v3 + 749) = v621;
  *(v3 + 751) = v622;
  *(v3 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v61.n128_f32[0]), v445, v61.n128_u64[0], 1), v417, v61, 2), v506, v61, 3);
  *(v3 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v62.f32[0]), v445, *v62.f32, 1), v417, v62, 2), v506, v62, 3);
  *(v3 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v63.f32[0]), v445, *v63.f32, 1), v417, v63, 2), v506, v63, 3);
  *(v3 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v64.f32[0]), v445, *v64.f32, 1), v417, v64, 2), v506, v64, 3);
  *(v3 + 816) = xmmword_1000F01E0;
  *(v3 + 832) = 0;
  v65 = v619;
  *(v3 + 835) = v620;
  *(v3 + 833) = v65;
  *(v3 + 836) = 1084856730;
  *(v3 + 840) = 9;
  *(v3 + 841) = v617;
  *(v3 + 843) = v618;
  *(v3 + 844) = 1065353216;
  *(v3 + 848) = 0;
  *(v3 + 856) = 0u;
  *(v3 + 872) = v616;
  *(v3 + 873) = 0;
  *(v3 + 875) = 1;
  *(v3 + 880) = 0u;
  *(v3 + 896) = sub_100051DE4;
  *(v3 + 904) = 0;
  *(v3 + 912) = 0x3F170A3D3E800000;
  *(v3 + 928) = xmmword_1000EF5A0;
  *(v3 + 944) = 2;
  v66 = vmulq_f32(xmmword_10013DCA0, 0);
  v446 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v389 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v66), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v363 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v66, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v478 = vdupq_n_s32(0xBDB851EB);
  v468 = vdupq_n_s32(0x3F199999u);
  v319 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBD4CCCCC)), v478, *algn_10013DCB0), v468, xmmword_10013DCC0));
  sub_10001358C(v549, 4.7124, xmmword_1000EC910);
  v67 = sub_100013568(v549);
  v507 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v67.n128_f32[0]), v389, v67.n128_u64[0], 1), v363, v67, 2), v319, v67, 3);
  v418 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v68.f32[0]), v389, *v68.f32, 1), v363, v68, 2), v319, v68, 3);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v69.f32[0]), v389, *v69.f32, 1), v363, v69, 2), v319, v69, 3);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v70.f32[0]), v389, *v70.f32, 1), v363, v70, 2), v319, v70, 3);
  sub_10001358C(v550, 1.0123, xmmword_1000EC8E0);
  v71 = sub_100013568(v550);
  v447 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v71.n128_f32[0]), v418, v71.n128_u64[0], 1), v339, v71, 2), v320, v71, 3);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v72.f32[0]), v418, *v72.f32, 1), v339, v72, 2), v320, v72, 3);
  v364 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v73.f32[0]), v418, *v73.f32, 1), v339, v73, 2), v320, v73, 3);
  v508 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v74.f32[0]), v418, *v74.f32, 1), v339, v74, 2), v320, v74, 3);
  sub_10001358C(v551, -1.5708, xmmword_1000EC920);
  v75 = sub_100013568(v551);
  v623 = 1;
  *(v3 + 960) = 0x3F2666663FD9999ALL;
  *(v3 + 968) = 1056293519;
  *(v3 + 972) = 1;
  *(v3 + 973) = v628;
  *(v3 + 975) = v629;
  *(v3 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v75.n128_f32[0]), v390, v75.n128_u64[0], 1), v364, v75, 2), v508, v75, 3);
  *(v3 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v76.f32[0]), v390, *v76.f32, 1), v364, v76, 2), v508, v76, 3);
  *(v3 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v77.f32[0]), v390, *v77.f32, 1), v364, v77, 2), v508, v77, 3);
  *(v3 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v78.f32[0]), v390, *v78.f32, 1), v364, v78, 2), v508, v78, 3);
  *(v3 + 1040) = xmmword_1000F01F0;
  *(v3 + 1056) = 0;
  v79 = v626;
  *(v3 + 1059) = v627;
  *(v3 + 1057) = v79;
  *(v3 + 1060) = 1093664768;
  *(v3 + 1064) = 13;
  *(v3 + 1065) = v624;
  *(v3 + 1067) = v625;
  *(v3 + 1068) = 1065353216;
  *(v3 + 1072) = 0;
  *(v3 + 1080) = 0u;
  *(v3 + 1096) = v623;
  *(v3 + 1097) = 0;
  *(v3 + 1099) = 0;
  *(v3 + 1104) = 0u;
  *(v3 + 1120) = sub_100051E14;
  *(v3 + 1128) = 0;
  *(v3 + 1136) = 0x3F80000000000000;
  *(v3 + 1152) = xmmword_1000EF5C0;
  *(v3 + 1168) = 2;
  v80 = vmulq_f32(xmmword_10013DCA0, 0);
  v448 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v391 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v80), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v365 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v80, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  __asm { FMOV            V0.4S, #-0.25 }

  v321 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3EF5C28Fu)), _Q0, *algn_10013DCB0), vdupq_n_s32(0x3EA8F5C2u), xmmword_10013DCC0));
  sub_10001358C(v552, -0.33161, xmmword_1000EC910);
  v82 = sub_100013568(v552);
  v509 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v82.n128_f32[0]), v391, v82.n128_u64[0], 1), v365, v82, 2), v321, v82, 3);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v83.f32[0]), v391, *v83.f32, 1), v365, v83, 2), v321, v83, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v84.f32[0]), v391, *v84.f32, 1), v365, v84, 2), v321, v84, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v85.f32[0]), v391, *v85.f32, 1), v365, v85, 2), v321, v85, 3);
  sub_10001358C(v553, 0.54105, xmmword_1000EC8E0);
  v86 = sub_100013568(v553);
  v449 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v86.n128_f32[0]), v419, v86.n128_u64[0], 1), v340, v86, 2), v322, v86, 3);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v87.f32[0]), v419, *v87.f32, 1), v340, v87, 2), v322, v87, 3);
  v366 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v88.f32[0]), v419, *v88.f32, 1), v340, v88, 2), v322, v88, 3);
  v510 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v89.f32[0]), v419, *v89.f32, 1), v340, v89, 2), v322, v89, 3);
  sub_10001358C(v554, 0.62832, xmmword_1000EC920);
  v90 = sub_100013568(v554);
  v630 = 1;
  *(v3 + 1184) = 0x3F051EB840133333;
  *(v3 + 1192) = 1036831949;
  *(v3 + 1196) = 1;
  *(v3 + 1197) = v635;
  *(v3 + 1199) = v636;
  *(v3 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v90.n128_f32[0]), v392, v90.n128_u64[0], 1), v366, v90, 2), v510, v90, 3);
  *(v3 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v91.f32[0]), v392, *v91.f32, 1), v366, v91, 2), v510, v91, 3);
  *(v3 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v92.f32[0]), v392, *v92.f32, 1), v366, v92, 2), v510, v92, 3);
  *(v3 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v93.f32[0]), v392, *v93.f32, 1), v366, v93, 2), v510, v93, 3);
  *(v3 + 1264) = xmmword_1000F0200;
  *(v3 + 1280) = 0;
  v94 = v633;
  *(v3 + 1283) = v634;
  *(v3 + 1281) = v94;
  *(v3 + 1284) = 1091777331;
  *(v3 + 1288) = 10;
  *(v3 + 1289) = v631;
  *(v3 + 1291) = v632;
  *(v3 + 1292) = 1065353216;
  *(v3 + 1296) = 0;
  *(v3 + 1304) = 0u;
  *(v3 + 1320) = v630;
  *(v3 + 1321) = 0;
  *(v3 + 1323) = 1;
  *(v3 + 1328) = 0u;
  *(v3 + 1344) = sub_10008160C;
  *(v3 + 1352) = 0;
  *(v3 + 1360) = 0x3F80000000000000;
  *(v3 + 1376) = xmmword_1000EF5C0;
  *(v3 + 1392) = 9;
  v95 = vmulq_f32(xmmword_10013DCA0, 0);
  v450 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v393 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v95), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v367 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v95, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v323 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0CBD70A)), vdupq_n_s32(0x40CA3D70u), *algn_10013DCB0), vdupq_n_s32(0xC0A19999), xmmword_10013DCC0));
  sub_10001358C(v555, 2.234, xmmword_1000EC910);
  v96 = sub_100013568(v555);
  v511 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v96.n128_f32[0]), v393, v96.n128_u64[0], 1), v367, v96, 2), v323, v96, 3);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v97.f32[0]), v393, *v97.f32, 1), v367, v97, 2), v323, v97, 3);
  v341 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v98.f32[0]), v393, *v98.f32, 1), v367, v98, 2), v323, v98, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v99.f32[0]), v393, *v99.f32, 1), v367, v99, 2), v323, v99, 3);
  sub_10001358C(v556, -2.426, xmmword_1000EC8E0);
  v100 = sub_100013568(v556);
  v451 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v100.n128_f32[0]), v420, v100.n128_u64[0], 1), v341, v100, 2), v324, v100, 3);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v101.f32[0]), v420, *v101.f32, 1), v341, v101, 2), v324, v101, 3);
  v368 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v102.f32[0]), v420, *v102.f32, 1), v341, v102, 2), v324, v102, 3);
  v512 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v103.f32[0]), v420, *v103.f32, 1), v341, v103, 2), v324, v103, 3);
  sub_10001358C(v557, 0.15708, xmmword_1000EC920);
  v104 = sub_100013568(v557);
  v637 = 0;
  *(v3 + 1408) = 0x408000004019999ALL;
  *(v3 + 1416) = 1028711776;
  *(v3 + 1420) = 1;
  *(v3 + 1421) = v642;
  *(v3 + 1423) = v643;
  *(v3 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v104.n128_f32[0]), v394, v104.n128_u64[0], 1), v368, v104, 2), v512, v104, 3);
  *(v3 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v105.f32[0]), v394, *v105.f32, 1), v368, v105, 2), v512, v105, 3);
  *(v3 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v106.f32[0]), v394, *v106.f32, 1), v368, v106, 2), v512, v106, 3);
  *(v3 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v107.f32[0]), v394, *v107.f32, 1), v368, v107, 2), v512, v107, 3);
  *(v3 + 1488) = xmmword_1000F0210;
  *(v3 + 1504) = 1;
  v108 = v640;
  *(v3 + 1507) = v641;
  *(v3 + 1505) = v108;
  *(v3 + 1508) = 1074161254;
  *(v3 + 1512) = 1;
  *(v3 + 1513) = v638;
  *(v3 + 1515) = v639;
  *(v3 + 1516) = 1058474557;
  *(v3 + 1520) = xmmword_1000F0220;
  *(v3 + 1536) = 0x3F2E147B3DB851ECLL;
  *(v3 + 1544) = v637;
  *(v3 + 1545) = 1;
  *(v3 + 1547) = 1;
  *(v3 + 1552) = 0u;
  *(v3 + 1568) = sub_100051E44;
  *(v3 + 1576) = 0;
  *(v3 + 1584) = 0x3F80000000000000;
  *(v3 + 1600) = xmmword_1000EF5D0;
  *(v3 + 1616) = 9;
  v109 = vmulq_f32(xmmword_10013DCA0, 0);
  v421 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v369 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v109), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v342 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v109, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v305 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0DCCCCC)), vdupq_n_s32(0x40B7AE14u), *algn_10013DCB0), vdupq_n_s32(0xC0A5C28F), xmmword_10013DCC0));
  sub_10001358C(v558, 2.234, xmmword_1000EC910);
  v110 = sub_100013568(v558);
  v452 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v110.n128_f32[0]), v369, v110.n128_u64[0], 1), v342, v110, 2), v305, v110, 3);
  v395 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v111.f32[0]), v369, *v111.f32, 1), v342, v111, 2), v305, v111, 3);
  v325 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v112.f32[0]), v369, *v112.f32, 1), v342, v112, 2), v305, v112, 3);
  v306 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v113.f32[0]), v369, *v113.f32, 1), v342, v113, 2), v305, v113, 3);
  sub_10001358C(v559, -2.426, xmmword_1000EC8E0);
  v114 = sub_100013568(v559);
  v370 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v115.f32[0]), v395, *v115.f32, 1), v325, v115, 2), v306, v115, 3);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v116.f32[0]), v395, *v116.f32, 1), v325, v116, 2), v306, v116, 3);
  v422 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v114.n128_f32[0]), v395, v114.n128_u64[0], 1), v325, v114, 2), v306, v114, 3);
  v453 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v117.f32[0]), v395, *v117.f32, 1), v325, v117, 2), v306, v117, 3);
  sub_10001358C(v560, 0.15708, xmmword_1000EC920);
  v118 = sub_100013568(v560);
  v644 = 1;
  *(v3 + 1632) = 0x3F7333333FE66666;
  *(v3 + 1640) = 1028443341;
  *(v3 + 1644) = 1;
  *(v3 + 1645) = v649;
  *(v3 + 1647) = v650;
  *(v3 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v118.n128_f32[0]), v370, v118.n128_u64[0], 1), v343, v118, 2), v453, v118, 3);
  *(v3 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v119.f32[0]), v370, *v119.f32, 1), v343, v119, 2), v453, v119, 3);
  *(v3 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v120.f32[0]), v370, *v120.f32, 1), v343, v120, 2), v453, v120, 3);
  *(v3 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v121.f32[0]), v370, *v121.f32, 1), v343, v121, 2), v453, v121, 3);
  *(v3 + 1712) = xmmword_1000F0230;
  *(v3 + 1728) = 1;
  v122 = v647;
  *(v3 + 1731) = v648;
  *(v3 + 1729) = v122;
  *(v3 + 1732) = 1045220557;
  *(v3 + 1736) = 10;
  *(v3 + 1737) = v645;
  *(v3 + 1739) = v646;
  *(v3 + 1740) = 1065353216;
  *(v3 + 1744) = 0;
  *(v3 + 1752) = 0u;
  *(v3 + 1768) = v644;
  *(v3 + 1769) = 1;
  *(v3 + 1771) = 0;
  *(v3 + 1776) = 0u;
  *(v3 + 1792) = sub_100051FAC;
  *(v3 + 1800) = 0;
  *(v3 + 1808) = 0x3F80000000000000;
  *(v3 + 1824) = xmmword_1000EF5C0;
  *(v3 + 1840) = 3;
  v123 = vmulq_f32(xmmword_10013DCA0, 0);
  v423 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v371 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v123), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v344 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v123, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v307 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F2B851Eu)), vdupq_n_s32(0x3E3851EBu), *algn_10013DCB0), vdupq_n_s32(0xBF6B851E), xmmword_10013DCC0));
  sub_10001358C(v561, 3.735, xmmword_1000EC910);
  v124 = sub_100013568(v561);
  v454 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v124.n128_f32[0]), v371, v124.n128_u64[0], 1), v344, v124, 2), v307, v124, 3);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v125.f32[0]), v371, *v125.f32, 1), v344, v125, 2), v307, v125, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v126.f32[0]), v371, *v126.f32, 1), v344, v126, 2), v307, v126, 3);
  v308 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v127.f32[0]), v371, *v127.f32, 1), v344, v127, 2), v307, v127, 3);
  sub_10001358C(v562, -2.8449, xmmword_1000EC8E0);
  v128 = sub_100013568(v562);
  v372 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v129.f32[0]), v396, *v129.f32, 1), v326, v129, 2), v308, v129, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v130.f32[0]), v396, *v130.f32, 1), v326, v130, 2), v308, v130, 3);
  v424 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v128.n128_f32[0]), v396, v128.n128_u64[0], 1), v326, v128, 2), v308, v128, 3);
  v455 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v131.f32[0]), v396, *v131.f32, 1), v326, v131, 2), v308, v131, 3);
  sub_10001358C(v563, 0.97738, xmmword_1000EC920);
  v132 = sub_100013568(v563);
  v651 = 1;
  *(v3 + 1856) = 0x3EFAE14840A00000;
  *(v3 + 1864) = 1041865114;
  *(v3 + 1868) = 1;
  *(v3 + 1869) = v656;
  *(v3 + 1871) = v657;
  *(v3 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v132.n128_f32[0]), v372, v132.n128_u64[0], 1), v345, v132, 2), v455, v132, 3);
  *(v3 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v133.f32[0]), v372, *v133.f32, 1), v345, v133, 2), v455, v133, 3);
  *(v3 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v134.f32[0]), v372, *v134.f32, 1), v345, v134, 2), v455, v134, 3);
  *(v3 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v135.f32[0]), v372, *v135.f32, 1), v345, v135, 2), v455, v135, 3);
  *(v3 + 1936) = xmmword_1000F0240;
  *(v3 + 1952) = 0;
  v136 = v654;
  *(v3 + 1955) = v655;
  *(v3 + 1953) = v136;
  *(v3 + 1956) = 1077097267;
  *(v3 + 1960) = 9;
  *(v3 + 1961) = v652;
  *(v3 + 1963) = v653;
  *(v3 + 1964) = 1065353216;
  *(v3 + 1968) = 0;
  *(v3 + 1976) = 0u;
  *(v3 + 1992) = v651;
  *(v3 + 1993) = 1;
  *(v3 + 1995) = 1;
  *(v3 + 2000) = 0u;
  *(v3 + 2016) = sub_100051FDC;
  *(v3 + 2024) = 0;
  *(v3 + 2032) = 0x3F80000000000000;
  *(v3 + 2048) = xmmword_1000EF5D0;
  *(v3 + 2064) = 3;
  v137 = vmulq_f32(xmmword_10013DCA0, 0);
  v425 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v373 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v137), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v346 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v137, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v309 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEA3D70A)), vdupq_n_s32(0x3FC3D70Au), *algn_10013DCB0), vdupq_n_s32(0xBF91EB85), xmmword_10013DCC0));
  sub_10001358C(v564, 3.2987, xmmword_1000EC910);
  v138 = sub_100013568(v564);
  v456 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v138.n128_f32[0]), v373, v138.n128_u64[0], 1), v346, v138, 2), v309, v138, 3);
  v397 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v139.f32[0]), v373, *v139.f32, 1), v346, v139, 2), v309, v139, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v140.f32[0]), v373, *v140.f32, 1), v346, v140, 2), v309, v140, 3);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v141.f32[0]), v373, *v141.f32, 1), v346, v141, 2), v309, v141, 3);
  sub_10001358C(v565, -2.4086, xmmword_1000EC8E0);
  v142 = sub_100013568(v565);
  v374 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v143.f32[0]), v397, *v143.f32, 1), v327, v143, 2), v310, v143, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v144.f32[0]), v397, *v144.f32, 1), v327, v144, 2), v310, v144, 3);
  v426 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v142.n128_f32[0]), v397, v142.n128_u64[0], 1), v327, v142, 2), v310, v142, 3);
  v457 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v145.f32[0]), v397, *v145.f32, 1), v327, v145, 2), v310, v145, 3);
  sub_10001358C(v566, 0.64577, xmmword_1000EC920);
  v146 = sub_100013568(v566);
  v658 = 1;
  *(v3 + 2080) = 0x3F8CCCCD3FE66666;
  *(v3 + 2088) = 1041865114;
  *(v3 + 2092) = 1;
  *(v3 + 2093) = v663;
  *(v3 + 2095) = v664;
  *(v3 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v146.n128_f32[0]), v374, v146.n128_u64[0], 1), v347, v146, 2), v457, v146, 3);
  *(v3 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v147.f32[0]), v374, *v147.f32, 1), v347, v147, 2), v457, v147, 3);
  *(v3 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v148.f32[0]), v374, *v148.f32, 1), v347, v148, 2), v457, v148, 3);
  *(v3 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v149.f32[0]), v374, *v149.f32, 1), v347, v149, 2), v457, v149, 3);
  *(v3 + 2160) = xmmword_1000F0250;
  *(v3 + 2176) = 0;
  v150 = v661;
  *(v3 + 2179) = v662;
  *(v3 + 2177) = v150;
  *(v3 + 2180) = 1057467924;
  *(v3 + 2184) = 9;
  *(v3 + 2185) = v659;
  *(v3 + 2187) = v660;
  *(v3 + 2188) = 1065353216;
  *(v3 + 2192) = 0;
  *(v3 + 2200) = 0u;
  *(v3 + 2216) = v658;
  *(v3 + 2217) = 1;
  *(v3 + 2219) = 1;
  *(v3 + 2224) = 0u;
  *(v3 + 2240) = sub_10005200C;
  *(v3 + 2248) = 0;
  *(v3 + 2256) = 0x3F80000000000000;
  *(v3 + 2272) = xmmword_1000EF7D0;
  *(v3 + 2288) = 3;
  v151 = vmulq_f32(xmmword_10013DCA0, 0);
  v398 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v348 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v151), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v328 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v151, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v296 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E6B851Eu)), vdupq_n_s32(0xBF4A3D70), *algn_10013DCB0), vdupq_n_s32(0xBFFAE147), xmmword_10013DCC0));
  sub_10001358C(v567, 3.0718, xmmword_1000EC910);
  v152 = sub_100013568(v567);
  v427 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v152.n128_f32[0]), v348, v152.n128_u64[0], 1), v328, v152, 2), v296, v152, 3);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v153.f32[0]), v348, *v153.f32, 1), v328, v153, 2), v296, v153, 3);
  v311 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v154.f32[0]), v348, *v154.f32, 1), v328, v154, 2), v296, v154, 3);
  v297 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v155.f32[0]), v348, *v155.f32, 1), v328, v155, 2), v296, v155, 3);
  sub_10001358C(v568, 3.1067, xmmword_1000EC8E0);
  v156 = sub_100013568(v568);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v157.f32[0]), v375, *v157.f32, 1), v311, v157, 2), v297, v157, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v158.f32[0]), v375, *v158.f32, 1), v311, v158, 2), v297, v158, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v156.n128_f32[0]), v375, v156.n128_u64[0], 1), v311, v156, 2), v297, v156, 3);
  v428 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v159.f32[0]), v375, *v159.f32, 1), v311, v159, 2), v297, v159, 3);
  sub_10001358C(v569, -0.7854, xmmword_1000EC920);
  v160 = sub_100013568(v569);
  v665 = 1;
  *(v3 + 2304) = 0x3FC000003F2147AELL;
  *(v3 + 2312) = 1041865114;
  *(v3 + 2316) = 1;
  *(v3 + 2317) = v670;
  *(v3 + 2319) = v671;
  *(v3 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v399, v160.n128_f32[0]), v349, v160.n128_u64[0], 1), v329, v160, 2), v428, v160, 3);
  *(v3 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v399, v161.f32[0]), v349, *v161.f32, 1), v329, v161, 2), v428, v161, 3);
  *(v3 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v399, v162.f32[0]), v349, *v162.f32, 1), v329, v162, 2), v428, v162, 3);
  *(v3 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v399, v163.f32[0]), v349, *v163.f32, 1), v329, v163, 2), v428, v163, 3);
  *(v3 + 2384) = xmmword_1000F0260;
  *(v3 + 2400) = 0;
  v164 = v668;
  *(v3 + 2403) = v669;
  *(v3 + 2401) = v164;
  *(v3 + 2404) = 1061830001;
  *(v3 + 2408) = 9;
  *(v3 + 2409) = v666;
  *(v3 + 2411) = v667;
  *(v3 + 2412) = 1065353216;
  *(v3 + 2416) = 0;
  *(v3 + 2424) = 0u;
  *(v3 + 2440) = v665;
  *(v3 + 2441) = 1;
  *(v3 + 2443) = 0;
  *(v3 + 2448) = 0u;
  *(v3 + 2464) = sub_10005203C;
  *(v3 + 2472) = 0;
  *(v3 + 2480) = 0x3F80000000000000;
  *(v3 + 2496) = xmmword_1000EF5A0;
  *(v3 + 2512) = 4;
  v165 = vmulq_f32(xmmword_10013DCA0, 0);
  v400 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v350 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v165), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v330 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v165, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v298 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E2E147Bu)), vdupq_n_s32(0x3F3851EBu), *algn_10013DCB0), vdupq_n_s32(0xBE999999), xmmword_10013DCC0));
  sub_10001358C(v570, 1.5708, xmmword_1000EC910);
  v166 = sub_100013568(v570);
  v429 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v166.n128_f32[0]), v350, v166.n128_u64[0], 1), v330, v166, 2), v298, v166, 3);
  v376 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v167.f32[0]), v350, *v167.f32, 1), v330, v167, 2), v298, v167, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v168.f32[0]), v350, *v168.f32, 1), v330, v168, 2), v298, v168, 3);
  v299 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v169.f32[0]), v350, *v169.f32, 1), v330, v169, 2), v298, v169, 3);
  sub_10001358C(v571, -0.82903, xmmword_1000EC8E0);
  v170 = sub_100013568(v571);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v171.f32[0]), v376, *v171.f32, 1), v312, v171, 2), v299, v171, 3);
  v331 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v172.f32[0]), v376, *v172.f32, 1), v312, v172, 2), v299, v172, 3);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v170.n128_f32[0]), v376, v170.n128_u64[0], 1), v312, v170, 2), v299, v170, 3);
  v430 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v173.f32[0]), v376, *v173.f32, 1), v312, v173, 2), v299, v173, 3);
  sub_10001358C(v572, 1.5708, xmmword_1000EC920);
  v174 = sub_100013568(v572);
  v672 = 1;
  *(v3 + 2528) = 0x3F3D70A43FF33333;
  *(v3 + 2536) = 1050253722;
  *(v3 + 2540) = 1;
  *(v3 + 2541) = v677;
  *(v3 + 2543) = v678;
  *(v3 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v174.n128_f32[0]), v351, v174.n128_u64[0], 1), v331, v174, 2), v430, v174, 3);
  *(v3 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v175.f32[0]), v351, *v175.f32, 1), v331, v175, 2), v430, v175, 3);
  *(v3 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v176.f32[0]), v351, *v176.f32, 1), v331, v176, 2), v430, v176, 3);
  *(v3 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v177.f32[0]), v351, *v177.f32, 1), v331, v177, 2), v430, v177, 3);
  *(v3 + 2608) = xmmword_1000F0270;
  *(v3 + 2624) = 0;
  v178 = v675;
  *(v3 + 2627) = v676;
  *(v3 + 2625) = v178;
  *(v3 + 2628) = 1082969293;
  *(v3 + 2632) = 13;
  *(v3 + 2633) = v673;
  *(v3 + 2635) = v674;
  *(v3 + 2636) = 1065353216;
  *(v3 + 2640) = 0;
  *(v3 + 2648) = 0u;
  *(v3 + 2664) = v672;
  *(v3 + 2665) = 1;
  *(v3 + 2667) = 0;
  *(v3 + 2672) = 0u;
  *(v3 + 2688) = sub_100052154;
  *(v3 + 2696) = 0;
  *(v3 + 2704) = 0x3F80000000000000;
  *(v3 + 2720) = xmmword_1000EF5C0;
  *(v3 + 2736) = 4;
  v179 = vmulq_f32(xmmword_10013DCA0, 0);
  v402 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v352 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v179), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v332 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v179, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v300 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F87AE14u)), vdupq_n_s32(0xC0270A3D), *algn_10013DCB0), vdupq_n_s32(0xBF199999), xmmword_10013DCC0));
  sub_10001358C(v573, 3.9619, xmmword_1000EC910);
  v180 = sub_100013568(v573);
  v431 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v180.n128_f32[0]), v352, v180.n128_u64[0], 1), v332, v180, 2), v300, v180, 3);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v181.f32[0]), v352, *v181.f32, 1), v332, v181, 2), v300, v181, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v182.f32[0]), v352, *v182.f32, 1), v332, v182, 2), v300, v182, 3);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v183.f32[0]), v352, *v183.f32, 1), v332, v183, 2), v300, v183, 3);
  sub_10001358C(v574, -3.3859, xmmword_1000EC8E0);
  v184 = sub_100013568(v574);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v185.f32[0]), v377, *v185.f32, 1), v313, v185, 2), v301, v185, 3);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v186.f32[0]), v377, *v186.f32, 1), v313, v186, 2), v301, v186, 3);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v184.n128_f32[0]), v377, v184.n128_u64[0], 1), v313, v184, 2), v301, v184, 3);
  v432 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v187.f32[0]), v377, *v187.f32, 1), v313, v187, 2), v301, v187, 3);
  sub_10001358C(v575, 1.5708, xmmword_1000EC920);
  v188 = sub_100013568(v575);
  v679 = 1;
  *(v3 + 2752) = 0x3F70A3D740200000;
  *(v3 + 2760) = 1045220557;
  *(v3 + 2764) = 1;
  *(v3 + 2765) = v684;
  *(v3 + 2767) = v685;
  *(v3 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v188.n128_f32[0]), v353, v188.n128_u64[0], 1), v333, v188, 2), v432, v188, 3);
  *(v3 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v189.f32[0]), v353, *v189.f32, 1), v333, v189, 2), v432, v189, 3);
  *(v3 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v190.f32[0]), v353, *v190.f32, 1), v333, v190, 2), v432, v190, 3);
  *(v3 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v191.f32[0]), v353, *v191.f32, 1), v333, v191, 2), v432, v191, 3);
  *(v3 + 2832) = xmmword_1000F0280;
  *(v3 + 2848) = 0;
  v192 = v682;
  *(v3 + 2851) = v683;
  *(v3 + 2849) = v192;
  *(v3 + 2852) = 1078774989;
  *(v3 + 2856) = 9;
  *(v3 + 2857) = v680;
  *(v3 + 2859) = v681;
  *(v3 + 2860) = 1065353216;
  *(v3 + 2864) = 0;
  *(v3 + 2872) = 0u;
  *(v3 + 2888) = v679;
  *(v3 + 2889) = 1;
  *(v3 + 2891) = 0;
  *(v3 + 2896) = 0u;
  *(v3 + 2912) = sub_100052184;
  *(v3 + 2920) = 0;
  *(v3 + 2928) = 0x3F80000000000000;
  *(v3 + 2944) = xmmword_1000EF5A0;
  *(v3 + 2960) = 5;
  v193 = vmulq_f32(xmmword_10013DCA0, 0);
  v404 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v354 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v193), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v334 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v193, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v302 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD1EB85u)), vdupq_n_s32(0xC00EB852), *algn_10013DCB0), vdupq_n_s32(0x40047AE1u), xmmword_10013DCC0));
  sub_10001358C(v576, -0.017453, xmmword_1000EC910);
  v194 = sub_100013568(v576);
  v433 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v194.n128_f32[0]), v354, v194.n128_u64[0], 1), v334, v194, 2), v302, v194, 3);
  v378 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v195.f32[0]), v354, *v195.f32, 1), v334, v195, 2), v302, v195, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v196.f32[0]), v354, *v196.f32, 1), v334, v196, 2), v302, v196, 3);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v197.f32[0]), v354, *v197.f32, 1), v334, v197, 2), v302, v197, 3);
  sub_10001358C(v577, 0.24435, xmmword_1000EC8E0);
  v198 = sub_100013568(v577);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v199.f32[0]), v378, *v199.f32, 1), v314, v199, 2), v303, v199, 3);
  v335 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v200.f32[0]), v378, *v200.f32, 1), v314, v200, 2), v303, v200, 3);
  v405 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v198.n128_f32[0]), v378, v198.n128_u64[0], 1), v314, v198, 2), v303, v198, 3);
  v434 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v201.f32[0]), v378, *v201.f32, 1), v314, v201, 2), v303, v201, 3);
  sub_10001358C(v578, -0.087266, xmmword_1000EC920);
  v202 = sub_100013568(v578);
  v686 = 1;
  *(v3 + 2976) = 0x4053D70A400CCCCDLL;
  *(v3 + 2984) = 1053609165;
  *(v3 + 2988) = 1;
  *(v3 + 2989) = v691;
  *(v3 + 2991) = v692;
  *(v3 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v202.n128_f32[0]), v355, v202.n128_u64[0], 1), v335, v202, 2), v434, v202, 3);
  *(v3 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v203.f32[0]), v355, *v203.f32, 1), v335, v203, 2), v434, v203, 3);
  *(v3 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v204.f32[0]), v355, *v204.f32, 1), v335, v204, 2), v434, v204, 3);
  *(v3 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v205.f32[0]), v355, *v205.f32, 1), v335, v205, 2), v434, v205, 3);
  *(v3 + 3056) = xmmword_1000F0290;
  *(v3 + 3072) = 0;
  v206 = v689;
  *(v3 + 3075) = v690;
  *(v3 + 3073) = v206;
  *(v3 + 3076) = 1080033280;
  *(v3 + 3080) = 13;
  *(v3 + 3081) = v687;
  *(v3 + 3083) = v688;
  *(v3 + 3084) = 1065353216;
  *(v3 + 3088) = 0;
  *(v3 + 3096) = 0u;
  *(v3 + 3112) = v686;
  *(v3 + 3113) = 3;
  *(v3 + 3115) = 1;
  *(v3 + 3120) = 0u;
  *(v3 + 3136) = sub_1000521B4;
  *(v3 + 3144) = 0;
  *(v3 + 3152) = 0x3F80000000000000;
  *(v3 + 3168) = xmmword_1000EF5C0;
  *(v3 + 3184) = 5;
  v207 = vmulq_f32(xmmword_10013DCA0, 0);
  v435 = vdupq_n_s32(0xBFEF5C29);
  v379 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v336 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v207), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v315 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v207, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v294 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v435), vdupq_n_s32(0x4068F5C2u), *algn_10013DCB0), vdupq_n_s32(0x401AE147u), xmmword_10013DCC0));
  sub_10001358C(v579, -0.92502, xmmword_1000EC910);
  v208 = sub_100013568(v579);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v379, v208.n128_f32[0]), v336, v208.n128_u64[0], 1), v315, v208, 2), v294, v208, 3);
  v356 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v379, v209.f32[0]), v336, *v209.f32, 1), v315, v209, 2), v294, v209, 3);
  v304 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v379, v210.f32[0]), v336, *v210.f32, 1), v315, v210, 2), v294, v210, 3);
  v295 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v379, v211.f32[0]), v336, *v211.f32, 1), v315, v211, 2), v294, v211, 3);
  sub_10001358C(v580, -0.71558, xmmword_1000EC8E0);
  v212 = sub_100013568(v580);
  v337 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v213.f32[0]), v356, *v213.f32, 1), v304, v213, 2), v295, v213, 3);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v214.f32[0]), v356, *v214.f32, 1), v304, v214, 2), v295, v214, 3);
  v380 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v212.n128_f32[0]), v356, v212.n128_u64[0], 1), v304, v212, 2), v295, v212, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v215.f32[0]), v356, *v215.f32, 1), v304, v215, 2), v295, v215, 3);
  sub_10001358C(v581, 0.19199, xmmword_1000EC920);
  v216 = sub_100013568(v581);
  v693 = 1;
  *(v3 + 3200) = 0x3E570A3D40333333;
  *(v3 + 3208) = 1036831949;
  *(v3 + 3212) = 1;
  *(v3 + 3213) = v698;
  *(v3 + 3215) = v699;
  *(v3 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v216.n128_f32[0]), v337, v216.n128_u64[0], 1), v316, v216, 2), v407, v216, 3);
  *(v3 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v217.f32[0]), v337, *v217.f32, 1), v316, v217, 2), v407, v217, 3);
  *(v3 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v218.f32[0]), v337, *v218.f32, 1), v316, v218, 2), v407, v218, 3);
  *(v3 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v219.f32[0]), v337, *v219.f32, 1), v316, v219, 2), v407, v219, 3);
  *(v3 + 3280) = xmmword_1000F02A0;
  *(v3 + 3296) = 1;
  v220 = v696;
  *(v3 + 3299) = v697;
  *(v3 + 3297) = v220;
  *(v3 + 3300) = 1074580685;
  *(v3 + 3304) = 13;
  *(v3 + 3305) = v694;
  *(v3 + 3307) = v695;
  *(v3 + 3308) = 1065353216;
  *(v3 + 3312) = 0;
  *(v3 + 3320) = 0u;
  *(v3 + 3336) = v693;
  *(v3 + 3337) = 3;
  *(v3 + 3339) = 1;
  *(v3 + 3344) = 0u;
  *(v3 + 3360) = sub_100052254;
  *(v3 + 3368) = 0;
  *(v3 + 3376) = 0x3F80000000000000;
  *(v3 + 3392) = xmmword_1000EF5D0;
  *(v3 + 3408) = 5;
  v221 = vmulq_f32(xmmword_10013DCA0, 0);
  v222 = vmulq_f32(xmmword_10013DCA0, v435);
  v436 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v381 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v221), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v357 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v221, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v317 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(v222, vdupq_n_s32(0x405D70A4u), *algn_10013DCB0), vdupq_n_s32(0x402F5C29u), xmmword_10013DCC0));
  sub_10001358C(v582, -0.89012, xmmword_1000EC910);
  v223 = sub_100013568(v582);
  v513 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v223.n128_f32[0]), v381, v223.n128_u64[0], 1), v357, v223, 2), v317, v223, 3);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v224.f32[0]), v381, *v224.f32, 1), v357, v224, 2), v317, v224, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v225.f32[0]), v381, *v225.f32, 1), v357, v225, 2), v317, v225, 3);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v226.f32[0]), v381, *v226.f32, 1), v357, v226, 2), v317, v226, 3);
  sub_10001358C(v583, -0.87266, xmmword_1000EC8E0);
  v227 = sub_100013568(v583);
  v437 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v513, v227.n128_f32[0]), v408, v227.n128_u64[0], 1), v338, v227, 2), v318, v227, 3);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v513, v228.f32[0]), v408, *v228.f32, 1), v338, v228, 2), v318, v228, 3);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v513, v229.f32[0]), v408, *v229.f32, 1), v338, v229, 2), v318, v229, 3);
  v514 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v513, v230.f32[0]), v408, *v230.f32, 1), v338, v230, 2), v318, v230, 3);
  sub_10001358C(v584, 0.087266, xmmword_1000EC920);
  v231 = sub_100013568(v584);
  v700 = 1;
  *(v3 + 3424) = 0x3E570A3D40333333;
  *(v3 + 3432) = 1022202216;
  *(v3 + 3436) = 1;
  *(v3 + 3437) = v705;
  *(v3 + 3439) = v706;
  *(v3 + 3440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v231.n128_f32[0]), v382, v231.n128_u64[0], 1), v358, v231, 2), v514, v231, 3);
  *(v3 + 3456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v232.f32[0]), v382, *v232.f32, 1), v358, v232, 2), v514, v232, 3);
  *(v3 + 3472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v233.f32[0]), v382, *v233.f32, 1), v358, v233, 2), v514, v233, 3);
  *(v3 + 3488) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v234.f32[0]), v382, *v234.f32, 1), v358, v234, 2), v514, v234, 3);
  *(v3 + 3504) = xmmword_1000F01B0;
  *(v3 + 3520) = 1;
  v235 = v703;
  *(v3 + 3523) = v704;
  *(v3 + 3521) = v235;
  *(v3 + 3524) = 1063675494;
  *(v3 + 3528) = 13;
  *(v3 + 3529) = v701;
  *(v3 + 3531) = v702;
  *(v3 + 3532) = 1065353216;
  *(v3 + 3536) = 0;
  *(v3 + 3544) = 0u;
  *(v3 + 3560) = v700;
  *(v3 + 3561) = 3;
  *(v3 + 3563) = 1;
  *(v3 + 3568) = 0u;
  *(v3 + 3584) = sub_10005231C;
  *(v3 + 3592) = 0;
  *(v3 + 3600) = 0x3F80000000000000;
  *(v3 + 3616) = xmmword_1000EF7D0;
  *(v3 + 3632) = 5;
  v236 = vmulq_f32(xmmword_10013DCA0, 0);
  v483 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v438 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v236), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v409 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v236, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v359 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0499999)), vdupq_n_s32(0x404E147Bu), *algn_10013DCB0), vdupq_n_s32(0x4040A3D7u), xmmword_10013DCC0));
  sub_10001358C(v585, -1.2217, xmmword_1000EC910);
  v237 = sub_100013568(v585);
  v515 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v483, v237.n128_f32[0]), v438, v237.n128_u64[0], 1), v409, v237, 2), v359, v237, 3);
  v458 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v483, v238.f32[0]), v438, *v238.f32, 1), v409, v238, 2), v359, v238, 3);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v483, v239.f32[0]), v438, *v239.f32, 1), v409, v239, 2), v359, v239, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v483, v240.f32[0]), v438, *v240.f32, 1), v409, v240, 2), v359, v240, 3);
  sub_10001358C(v586, -0.69813, xmmword_1000EC8E0);
  v241 = sub_100013568(v586);
  v484 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v515, v241.n128_f32[0]), v458, v241.n128_u64[0], 1), v383, v241, 2), v360, v241, 3);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v515, v242.f32[0]), v458, *v242.f32, 1), v383, v242, 2), v360, v242, 3);
  v410 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v515, v243.f32[0]), v458, *v243.f32, 1), v383, v243, 2), v360, v243, 3);
  v516 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v515, v244.f32[0]), v458, *v244.f32, 1), v383, v244, 2), v360, v244, 3);
  sub_10001358C(v587, -0.20944, xmmword_1000EC920);
  v245 = sub_100013568(v587);
  v707 = 1;
  *(v3 + 3648) = 0x3E851EB83FD9999ALL;
  *(v3 + 3656) = 1024148374;
  *(v3 + 3660) = 1;
  *(v3 + 3661) = v712;
  *(v3 + 3663) = v713;
  *(v3 + 3664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v245.n128_f32[0]), v439, v245.n128_u64[0], 1), v410, v245, 2), v516, v245, 3);
  *(v3 + 3680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v246.f32[0]), v439, *v246.f32, 1), v410, v246, 2), v516, v246, 3);
  *(v3 + 3696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v247.f32[0]), v439, *v247.f32, 1), v410, v247, 2), v516, v247, 3);
  *(v3 + 3712) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v248.f32[0]), v439, *v248.f32, 1), v410, v248, 2), v516, v248, 3);
  *(v3 + 3728) = xmmword_1000F02B0;
  *(v3 + 3744) = 1;
  v249 = v710;
  *(v3 + 3747) = v711;
  *(v3 + 3745) = v249;
  *(v3 + 3748) = 1074580685;
  *(v3 + 3752) = 13;
  *(v3 + 3753) = v708;
  *(v3 + 3755) = v709;
  *(v3 + 3756) = 1065353216;
  *(v3 + 3760) = 0;
  *(v3 + 3768) = 0u;
  *(v3 + 3784) = v707;
  *(v3 + 3785) = 3;
  *(v3 + 3787) = 1;
  *(v3 + 3792) = 0u;
  *(v3 + 3808) = sub_1000523D4;
  *(v3 + 3816) = 0;
  *(v3 + 3824) = 0x3F80000000000000;
  *(v3 + 3840) = xmmword_1000EF5A0;
  *(v3 + 3856) = 6;
  v250 = vmulq_f32(xmmword_10013DCA0, 0);
  v485 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v459 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v250), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v411 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v250, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v522 = vdupq_n_s32(0xBF8E147B);
  v384 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBED70A3D)), v468, *algn_10013DCB0), v522, xmmword_10013DCC0));
  sub_10001358C(v588, 1.5708, xmmword_1000EC910);
  v251 = sub_100013568(v588);
  v517 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v251.n128_f32[0]), v459, v251.n128_u64[0], 1), v411, v251, 2), v384, v251, 3);
  v469 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v252.f32[0]), v459, *v252.f32, 1), v411, v252, 2), v384, v252, 3);
  v440 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v253.f32[0]), v459, *v253.f32, 1), v411, v253, 2), v384, v253, 3);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v254.f32[0]), v459, *v254.f32, 1), v411, v254, 2), v384, v254, 3);
  sub_10001358C(v589, -2.8798, xmmword_1000EC8E0);
  v255 = sub_100013568(v589);
  v486 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v255.n128_f32[0]), v469, v255.n128_u64[0], 1), v440, v255, 2), v385, v255, 3);
  v460 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v256.f32[0]), v469, *v256.f32, 1), v440, v256, 2), v385, v256, 3);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v257.f32[0]), v469, *v257.f32, 1), v440, v257, 2), v385, v257, 3);
  v518 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v258.f32[0]), v469, *v258.f32, 1), v440, v258, 2), v385, v258, 3);
  sub_10001358C(v590, 1.5708, xmmword_1000EC920);
  v259 = sub_100013568(v590);
  v714 = 1;
  *(v3 + 3872) = 0x3F99999A3E8A3D71;
  *(v3 + 3880) = 1056964608;
  *(v3 + 3884) = 1;
  *(v3 + 3885) = v719;
  *(v3 + 3887) = v720;
  *(v3 + 3888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v259.n128_f32[0]), v460, v259.n128_u64[0], 1), v412, v259, 2), v518, v259, 3);
  *(v3 + 3904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v260.f32[0]), v460, *v260.f32, 1), v412, v260, 2), v518, v260, 3);
  *(v3 + 3920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v261.f32[0]), v460, *v261.f32, 1), v412, v261, 2), v518, v261, 3);
  *(v3 + 3936) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v262.f32[0]), v460, *v262.f32, 1), v412, v262, 2), v518, v262, 3);
  *(v3 + 3952) = xmmword_1000F02C0;
  *(v3 + 3968) = 0;
  v263 = v717;
  *(v3 + 3971) = v718;
  *(v3 + 3969) = v263;
  *(v3 + 3972) = 1060487823;
  *(v3 + 3976) = 13;
  *(v3 + 3977) = v715;
  *(v3 + 3979) = v716;
  *(v3 + 3980) = 1065353216;
  *(v3 + 3984) = 0;
  *(v3 + 3992) = 0u;
  *(v3 + 4008) = v714;
  *(v3 + 4009) = 2;
  *(v3 + 4011) = 1;
  *(v3 + 4016) = 0u;
  *(v3 + 4032) = _MTLPackedFloat3.init(_:_:_:);
  *(v3 + 4040) = 0;
  *(v3 + 4048) = 0x3F80000000000000;
  *(v3 + 4064) = xmmword_1000EF5C0;
  *(v3 + 4080) = 6;
  v264 = vmulq_f32(xmmword_10013DCA0, 0);
  v265 = vmulq_f32(xmmword_10013DCA0, v478);
  v531 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v479 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v264), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v470 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v264, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v461 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(v265, vdupq_n_s32(0xBF2E147B), *algn_10013DCB0), v522, xmmword_10013DCC0));
  sub_10001358C(v591, 1.5708, xmmword_1000EC910);
  v266 = sub_100013568(v591);
  v519 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v531, v267.f32[0]), v479, *v267.f32, 1), v470, v267, 2), v461, v267, 3);
  v523 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v531, v266.n128_f32[0]), v479, v266.n128_u64[0], 1), v470, v266, 2), v461, v266, 3);
  v487 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v531, v268.f32[0]), v479, *v268.f32, 1), v470, v268, 2), v461, v268, 3);
  v480 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v531, v269.f32[0]), v479, *v269.f32, 1), v470, v269, 2), v461, v269, 3);
  sub_10001358C(v592, -2.3562, xmmword_1000EC8E0);
  v270 = sub_100013568(v592);
  v535 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v523, v271.f32[0]), v519, *v271.f32, 1), v487, v271, 2), v480, v271, 3);
  v536 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v523, v270.n128_f32[0]), v519, v270.n128_u64[0], 1), v487, v270, 2), v480, v270, 3);
  v532 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v523, v272.f32[0]), v519, *v272.f32, 1), v487, v272, 2), v480, v272, 3);
  v524 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v523, v273.f32[0]), v519, *v273.f32, 1), v487, v273, 2), v480, v273, 3);
  sub_10001358C(v593, 1.5708, xmmword_1000EC920);
  v274 = sub_100013568(v593);
  v721 = 1;
  *(v3 + 4096) = 0x3F99999A3FD9999ALL;
  *(v3 + 4104) = 1056964608;
  *(v3 + 4108) = 1;
  *(v3 + 4109) = v726;
  *(v3 + 4111) = v727;
  *(v3 + 4112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v536, v274.n128_f32[0]), v535, v274.n128_u64[0], 1), v532, v274, 2), v524, v274, 3);
  *(v3 + 4128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v536, v275.f32[0]), v535, *v275.f32, 1), v532, v275, 2), v524, v275, 3);
  *(v3 + 4144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v536, v276.f32[0]), v535, *v276.f32, 1), v532, v276, 2), v524, v276, 3);
  *(v3 + 4160) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v536, v277.f32[0]), v535, *v277.f32, 1), v532, v277, 2), v524, v277, 3);
  *(v3 + 4176) = xmmword_1000F02D0;
  *(v3 + 4192) = 0;
  v278 = v724;
  *(v3 + 4195) = v725;
  *(v3 + 4193) = v278;
  *(v3 + 4196) = 1051595899;
  *(v3 + 4200) = 9;
  *(v3 + 4201) = v722;
  *(v3 + 4203) = v723;
  *(v3 + 4216) = 0u;
  *(v3 + 4204) = 1065353216;
  *(v3 + 4208) = 0;
  *(v3 + 4232) = v721;
  *(v3 + 4233) = 2;
  *(v3 + 4235) = 1;
  *(v3 + 4240) = 0u;
  *(v3 + 4256) = sub_10005248C;
  *(v3 + 4264) = 0;
  *(v3 + 4272) = 0x3F80000000000000;
  v279 = sub_1000A0774(v3);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020);
  v280 = swift_allocObject();
  v280[1] = xmmword_1000EDAA0;
  v280[2] = xmmword_1000F02E0;
  v280[3] = xmmword_1000F02F0;
  v280[4] = xmmword_1000F0300;
  v280[5] = xmmword_1000F0310;
  v281 = swift_allocObject();
  v281[1] = xmmword_1000EC880;
  v281[2] = xmmword_1000F0320;
  v281[3] = xmmword_1000F0330;
  v282 = swift_allocObject();
  v282[1] = xmmword_1000EC880;
  v282[2] = xmmword_1000F0340;
  v282[3] = xmmword_1000F0350;
  v283 = qword_10013AC20;
  v284 = unk_10013AC28;
  v285 = qword_10013AC30;

  v286 = qword_10013AC50;
  v287 = sub_1000A0A98(_swiftEmptyArrayStorage);
  v728.i64[0] = v283;
  v728.i64[1] = v284;
  v729.i64[0] = v285;
  v729.i64[1] = v287;
  v730.i64[0] = _swiftEmptyArrayStorage;
  v730.i64[1] = _swiftEmptyArrayStorage;
  v731 = v286;
  v593[3] = v728;
  v593[4] = v729;
  v593[5] = v730;
  v594 = v286;
  sub_1000125FC(&qword_100131050);
  v288 = swift_allocObject();
  *(v288 + 16) = xmmword_1000EC870;
  *(v288 + 32) = swift_getKeyPath();
  *(v288 + 40) = 1053609165;
  v289 = sub_1000A092C(_swiftEmptyArrayStorage);
  v290 = sub_1000A0A98(_swiftEmptyArrayStorage);
  sub_1000BA704(v289, v290, _swiftEmptyArrayStorage, v288, v732);

  sub_100081544(&v728);
  swift_bridgeObjectRetain_n();
  v291 = sub_1000C1928(v279);

  sub_1000C53DC(v291, v736);
  v292 = sub_1000C199C(v279);

  sub_1000C53DC(v292, v734);
  xmmword_10013B6B0 = v498;
  unk_10013B6C0 = v497;
  qword_10013B6D0 = v496;
  dword_10013B6D8 = v0;
  xmmword_10013B6E0 = v495;
  unk_10013B6F0 = v494;
  qword_10013B700 = v1;
  dword_10013B708 = v2;
  xmmword_10013B710 = v493;
  qword_10013B720 = v492;
  xmmword_10013B730 = v491;
  qword_10013B740 = v490;
  unk_10013B748 = v489;
  dword_10013B750 = v488;
  qword_10013B758 = 0;
  unk_10013B760 = v279;
  qword_10013B788 = v737;
  unk_10013B778 = v736[1];
  unk_10013B768 = v736[0];
  xmmword_10013B790 = v734[0];
  unk_10013B7A0 = v734[1];
  qword_10013B7B0 = v735;
  qword_10013B7B8 = sub_1000525DC;
  qword_10013B7C0 = 0;
  xmmword_10013B7D0 = xmmword_1000F0360;
  unk_10013B7E0 = xmmword_1000F0370;
  qword_10013B7F0 = v280;
  word_10013B7FC = 2;
  dword_10013B7F8 = -1116064292;
  xmmword_10013B800 = xmmword_1000F0380;
  qword_10013B810 = v281;
  xmmword_10013B818 = xmmword_1000F0390;
  xmmword_10013B828 = xmmword_1000F03A0;
  qword_10013B838 = 1064103149;
  unk_10013B840 = v282;
  xmmword_10013B848 = xmmword_1000F03B0;
  xmmword_10013B858 = xmmword_1000F03C0;
  qword_10013B868 = 1056372471;
  result = 0.0000000631108174;
  qword_10013B8B0 = v733;
  xmmword_10013B890 = v732[1];
  unk_10013B8A0 = v732[2];
  xmmword_10013B870 = xmmword_1000F03D0;
  unk_10013B880 = v732[0];
  return result;
}

float sub_100051D58(uint64_t a1, float a2)
{
  *(a1 + 100) = ((*(a1 + 100) + -6.2) * a2) + 6.2;
  result = ((*(a1 + 108) + -0.1) * a2) + 0.1;
  *(a1 + 108) = result;
  return result;
}

float sub_100051DB4(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.52) * a2) + 0.52;
  *(a1 + 100) = result;
  return result;
}

float sub_100051DE4(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.99) * a2) + 0.99;
  *(a1 + 100) = result;
  return result;
}

float sub_100051E14(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -4.2) * a2) + 4.2;
  *(a1 + 100) = result;
  return result;
}

void sub_100051E44(uint64_t a1, float a2)
{
  if (*(a1 + 12) == 1)
  {
    v17 = v5;
    v18 = v4;
    v19 = v2;
    v20 = v3;
    v7 = ((*(a1 + 8) + -0.086) * a2) + 0.086;
    *a1 = COERCE_UNSIGNED_INT(((*a1 + -1.8) * a2) + 1.8) | (COERCE_UNSIGNED_INT(((*(a1 + 4) + -3.7) * a2) + 3.7) << 32);
    *(a1 + 8) = v7;
    *(a1 + 100) = ((*(a1 + 100) + -0.2) * a2) + 0.2;
    sub_1000BA464(*(a1 + 80), *(a1 + 88), *(a1 + 96), 1169915904, 0, 1, a2);
    *(a1 + 80) = v9;
    *(a1 + 88) = v10;
    *(a1 + 96) = v11;
    v15 = xmmword_1000F03E0;
    v16 = 0x3F2E147B3F800000;
    sub_1000BAC84(*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), &v13, a2);
    v12 = v14;
    *(a1 + 112) = v13;
    *(a1 + 128) = v12;
    *(a1 + 136) = 0;
  }

  else
  {
    __break(1u);
  }
}

float sub_100051FAC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.6) * a2) + 0.6;
  *(a1 + 100) = result;
  return result;
}

float sub_100051FDC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.26) * a2) + 0.26;
  *(a1 + 100) = result;
  return result;
}

float sub_10005200C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.062) * a2) + 0.062;
  *(a1 + 100) = result;
  return result;
}

void sub_10005203C(uint64_t a1, float a2)
{
  if (*(a1 + 12) == 1)
  {
    v3 = ((*(a1 + 8) + -0.29) * a2) + 0.29;
    *a1 = COERCE_UNSIGNED_INT(((*a1 + -2.7) * a2) + 2.7) | (COERCE_UNSIGNED_INT(((*(a1 + 4) + -4.8) * a2) + 4.8) << 32);
    *(a1 + 8) = v3;
    *(a1 + 100) = ((*(a1 + 100) + -0.19) * a2) + 0.19;
    sub_1000BA464(*(a1 + 80), *(a1 + 88), *(a1 + 96), 0x3EAAAAAB3EC0C0C1, 1049003655, 0, a2);
    *(a1 + 80) = v4;
    *(a1 + 88) = v5;
    *(a1 + 96) = v6;
  }

  else
  {
    __break(1u);
  }
}

float sub_100052154(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.92) * a2) + 0.92;
  *(a1 + 100) = result;
  return result;
}

float sub_100052184(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.93) * a2) + 0.93;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_1000521B4(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.35) * a2) + 0.35;
    *result = COERCE_UNSIGNED_INT(((*result + -5.0) * a2) + 5.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -5.0) * a2) + 5.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.87) * a2) + 0.87;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100052254(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.19) * a2) + 0.19;
    *result = COERCE_UNSIGNED_INT(((*result + -3.2) * a2) + 3.2) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.55) * a2) + 0.55) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.3) * a2) + 1.3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005231C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -2.8) * a2) + 2.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.21) * a2) + 0.21) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.36) * a2) + 0.36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000523D4(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.7) * a2) + 1.7) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.39) * a2) + 0.39) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.8) * a2) + 0.8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64x2_t *sub_10005248C(int64x2_t *result, float a2)
{
  v2 = result[5];
  v3 = result[6].u8[0];
  v4.i32[0] = v2.i32[0];
  if (result[6].i8[0])
  {
    if (v3 == 1)
    {
      v5 = vadd_f32(vmul_n_f32(0x3EEEEEEE3F5BDBDCLL, a2), 0x3F0888893E109091);
      v6.i32[0] = vdup_lane_s32(0x3F0888893DE8E8E8, 0).u32[0];
      v6.f32[1] = v4.f32[0] + -6500.0;
      v7 = vmul_n_f32(v6, a2);
    }

    else
    {
      v10 = vshrn_n_s64(v2, 0x20uLL);
      v4.i32[1] = result[5].i64[1];
      v5 = vadd_f32(vmul_n_f32(vadd_f32(v4, 0xBF088889BE109091), a2), 0x3F0888893E109091);
      v7 = vmul_n_f32(vadd_f32(v10, 0xC5CB2000BF62E2E3), a2);
    }

    v11.i64[0] = v5.u32[0];
    v11.i64[1] = v5.u32[1];
    v9 = vorrq_s8(vshll_n_s32(vadd_f32(v7, 0x45CB20003F62E2E3), 0x20uLL), v11);
    LOBYTE(v3) = 2;
  }

  else
  {
    *&v8 = ((*&v2.i32[2] + -0.53333) * a2) + 0.53333;
    v9.i64[0] = COERCE_UNSIGNED_INT(((v4.f32[0] + -0.14118) * a2) + 0.14118) | (COERCE_UNSIGNED_INT(((COERCE_FLOAT(HIDWORD(result[5].i64[0])) + -0.88627) * a2) + 0.88627) << 32);
    v9.i64[1] = v8;
  }

  result[5] = v9;
  result[6].i8[0] = v3;
  return result;
}

float32x2_t sub_1000525DC(float a1)
{
  v1 = a1;
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v2 = a1 * 3.1416;
  if (v1 >= 1.0)
  {
    v2 = 3.1416;
  }

  return vmul_n_f32(vadd_f32(vmul_n_f32(0x3E99999A3EF0A3D8, fminf(v1 / 0.875, 1.0)), 0x3F3333333F07AE14), ((0.5 - (cosf(v2) * 0.5)) * 0.467) + 0.033);
}

double sub_100052698()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v380 = unk_10013AA60;
  v381 = xmmword_10013AA50;
  v379 = qword_10013AA70;
  v0 = dword_10013AA78;
  v377 = unk_10013AA90;
  v378 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v2 = dword_10013AAA8;
  v3 = qword_10013AAC0;
  v375 = xmmword_10013AAD0;
  v376 = xmmword_10013AAB0;
  v373 = unk_10013AAE8;
  v374 = qword_10013AAE0;
  v372 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000EF590;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v5 = vmulq_f32(xmmword_10013DCA0, 0);
  v427 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v421 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v5), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v406 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v5, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v351 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFA7AE14)), vdupq_n_s32(0x3FB5C28Fu), *algn_10013DCB0), vdupq_n_s32(0x3E9EB852u), xmmword_10013DCC0));
  sub_10001358C(v430, 1.7104, xmmword_1000EC910);
  v6 = sub_100013568(v430);
  v426 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v6.n128_f32[0]), v421, v6.n128_u64[0], 1), v406, v6, 2), v351, v6, 3);
  v415 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v7.f32[0]), v421, *v7.f32, 1), v406, v7, 2), v351, v7, 3);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v8.f32[0]), v421, *v8.f32, 1), v406, v8, 2), v351, v8, 3);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v9.f32[0]), v421, *v9.f32, 1), v406, v9, 2), v351, v9, 3);
  sub_10001358C(v431, -2.3911, xmmword_1000EC8E0);
  v10 = sub_100013568(v431);
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v10.n128_f32[0]), v415, v10.n128_u64[0], 1), v382, v10, 2), v328, v10, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v12.f32[0]), v415, *v12.f32, 1), v382, v12, 2), v328, v12, 3);
  v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v13.f32[0]), v415, *v13.f32, 1), v382, v13, 2), v328, v13, 3);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v14.f32[0]), v415, *v14.f32, 1), v382, v14, 2), v328, v14, 3);
  v422 = v11;
  sub_10001358C(v432, -0.069813, xmmword_1000EC920);
  v15 = sub_100013568(v432);
  v475 = 0;
  *(v4 + 64) = 0x4079999A3F35C28FLL;
  *(v4 + 72) = 1040522936;
  *(v4 + 76) = 1;
  *(v4 + 77) = v480;
  *(v4 + 79) = v481;
  *(v4 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v15.n128_f32[0]), v407, v15.n128_u64[0], 1), v352, v15, 2), v416, v15, 3);
  *(v4 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v16.f32[0]), v407, *v16.f32, 1), v352, v16, 2), v416, v16, 3);
  *(v4 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v17.f32[0]), v407, *v17.f32, 1), v352, v17, 2), v416, v17, 3);
  *(v4 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v18.f32[0]), v407, *v18.f32, 1), v352, v18, 2), v416, v18, 3);
  *(v4 + 144) = xmmword_1000EC900;
  *(v4 + 160) = 0;
  v19 = v478;
  *(v4 + 163) = v479;
  *(v4 + 161) = v19;
  *(v4 + 164) = 1097859072;
  *(v4 + 168) = 0;
  *(v4 + 169) = v476;
  *(v4 + 171) = v477;
  *(v4 + 172) = 1045220557;
  *(v4 + 176) = xmmword_1000F03F0;
  *(v4 + 192) = 0x3F8000003F800000;
  *(v4 + 200) = v475;
  *(v4 + 201) = 0;
  *(v4 + 203) = 1;
  *(v4 + 208) = 0u;
  *(v4 + 224) = sub_100055388;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0x3F80000000000000;
  *(v4 + 256) = xmmword_1000EF5A0;
  *(v4 + 272) = 0;
  v20 = vmulq_f32(xmmword_10013DCA0, 0);
  v383 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v329 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v20), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v306 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v20, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v262 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0028F5C)), vdupq_n_s32(0x3F333333u), *algn_10013DCB0), vdupq_n_s32(0x3F23D70Au), xmmword_10013DCC0));
  sub_10001358C(v433, 1.7104, xmmword_1000EC910);
  v21 = sub_100013568(v433);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v21.n128_f32[0]), v329, v21.n128_u64[0], 1), v306, v21, 2), v262, v21, 3);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v22.f32[0]), v329, *v22.f32, 1), v306, v22, 2), v262, v22, 3);
  v283 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v23.f32[0]), v329, *v23.f32, 1), v306, v23, 2), v262, v23, 3);
  v263 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v24.f32[0]), v329, *v24.f32, 1), v306, v24, 2), v262, v24, 3);
  sub_10001358C(v434, -2.3911, xmmword_1000EC8E0);
  v25 = sub_100013568(v434);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v26.f32[0]), v353, *v26.f32, 1), v283, v26, 2), v263, v26, 3);
  v307 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v27.f32[0]), v353, *v27.f32, 1), v283, v27, 2), v263, v27, 3);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v25.n128_f32[0]), v353, v25.n128_u64[0], 1), v283, v25, 2), v263, v25, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v28.f32[0]), v353, *v28.f32, 1), v283, v28, 2), v263, v28, 3);
  sub_10001358C(v435, -0.069813, xmmword_1000EC920);
  v29 = sub_100013568(v435);
  v482 = 1;
  *(v4 + 288) = 0x407333333FC00000;
  *(v4 + 296) = 1024416809;
  *(v4 + 300) = 1;
  *(v4 + 301) = v487;
  *(v4 + 303) = v488;
  *(v4 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v29.n128_f32[0]), v330, v29.n128_u64[0], 1), v307, v29, 2), v409, v29, 3);
  *(v4 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v30.f32[0]), v330, *v30.f32, 1), v307, v30, 2), v409, v30, 3);
  *(v4 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v31.f32[0]), v330, *v31.f32, 1), v307, v31, 2), v409, v31, 3);
  *(v4 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v32.f32[0]), v330, *v32.f32, 1), v307, v32, 2), v409, v32, 3);
  *(v4 + 368) = xmmword_1000EC900;
  *(v4 + 384) = 0;
  v33 = v485;
  *(v4 + 387) = v486;
  *(v4 + 385) = v33;
  *(v4 + 388) = 1098907648;
  *(v4 + 392) = 0;
  *(v4 + 393) = v483;
  *(v4 + 395) = v484;
  *(v4 + 396) = 1060320051;
  *(v4 + 416) = 0;
  *(v4 + 400) = 0u;
  *(v4 + 424) = v482;
  *(v4 + 425) = 0;
  *(v4 + 427) = 1;
  *(v4 + 432) = 0u;
  *(v4 + 448) = sub_10005546C;
  *(v4 + 456) = 0;
  *(v4 + 464) = 0x3F80000000000000;
  *(v4 + 480) = xmmword_1000EF5A0;
  *(v4 + 496) = 1;
  v34 = vmulq_f32(xmmword_10013DCA0, 0);
  v385 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v331 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v34), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v308 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v34, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v264 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBD4CCCCC)), vdupq_n_s32(0x3DF5C28Fu), *algn_10013DCB0), vdupq_n_s32(0x3F11EB85u), xmmword_10013DCC0));
  sub_10001358C(v436, 4.9218, xmmword_1000EC910);
  v35 = sub_100013568(v436);
  v410 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v35.n128_f32[0]), v331, v35.n128_u64[0], 1), v308, v35, 2), v264, v35, 3);
  v354 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v36.f32[0]), v331, *v36.f32, 1), v308, v36, 2), v264, v36, 3);
  v284 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v37.f32[0]), v331, *v37.f32, 1), v308, v37, 2), v264, v37, 3);
  v265 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v38.f32[0]), v331, *v38.f32, 1), v308, v38, 2), v264, v38, 3);
  sub_10001358C(v437, 0.83776, xmmword_1000EC8E0);
  v39 = sub_100013568(v437);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v40.f32[0]), v354, *v40.f32, 1), v284, v40, 2), v265, v40, 3);
  v309 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v41.f32[0]), v354, *v41.f32, 1), v284, v41, 2), v265, v41, 3);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v39.n128_f32[0]), v354, v39.n128_u64[0], 1), v284, v39, 2), v265, v39, 3);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v42.f32[0]), v354, *v42.f32, 1), v284, v42, 2), v265, v42, 3);
  sub_10001358C(v438, -1.7279, xmmword_1000EC920);
  v43 = sub_100013568(v438);
  v489 = 1;
  *(v4 + 512) = 0x4033333340333333;
  *(v4 + 520) = 1050253722;
  *(v4 + 524) = 1;
  *(v4 + 525) = v494;
  *(v4 + 527) = v495;
  *(v4 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v43.n128_f32[0]), v332, v43.n128_u64[0], 1), v309, v43, 2), v411, v43, 3);
  *(v4 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v44.f32[0]), v332, *v44.f32, 1), v309, v44, 2), v411, v44, 3);
  *(v4 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v45.f32[0]), v332, *v45.f32, 1), v309, v45, 2), v411, v45, 3);
  *(v4 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v46.f32[0]), v332, *v46.f32, 1), v309, v46, 2), v411, v46, 3);
  *(v4 + 592) = xmmword_1000EC900;
  *(v4 + 608) = 0;
  v47 = v492;
  *(v4 + 611) = v493;
  *(v4 + 609) = v47;
  *(v4 + 612) = 0x40000000;
  *(v4 + 616) = 13;
  *(v4 + 617) = v490;
  *(v4 + 619) = v491;
  *(v4 + 620) = 1065353216;
  *(v4 + 640) = 0;
  *(v4 + 624) = 0u;
  *(v4 + 648) = v489;
  *(v4 + 649) = 0;
  *(v4 + 651) = 0;
  *(v4 + 656) = 0u;
  *(v4 + 672) = sub_10005549C;
  *(v4 + 680) = 0;
  *(v4 + 688) = 0x3E4CCCCD00000000;
  *(v4 + 704) = xmmword_1000EF5A0;
  *(v4 + 720) = 2;
  v48 = vmulq_f32(xmmword_10013DCA0, 0);
  v387 = vdupq_n_s32(0x3DCCCCCCu);
  v412 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v333 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v48), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v285 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v48, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v246 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v387), vdupq_n_s32(0x3E947AE1u), *algn_10013DCB0), vdupq_n_s32(0xBF87AE14), xmmword_10013DCC0));
  sub_10001358C(v439, 0.0, xmmword_1000EC910);
  v49 = sub_100013568(v439);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v49.n128_f32[0]), v333, v49.n128_u64[0], 1), v285, v49, 2), v246, v49, 3);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v50.f32[0]), v333, *v50.f32, 1), v285, v50, 2), v246, v50, 3);
  v266 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v51.f32[0]), v333, *v51.f32, 1), v285, v51, 2), v246, v51, 3);
  v247 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v52.f32[0]), v333, *v52.f32, 1), v285, v52, 2), v246, v52, 3);
  sub_10001358C(v440, 0.0, xmmword_1000EC8E0);
  v53 = sub_100013568(v440);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, v53.n128_f32[0]), v310, v53.n128_u64[0], 1), v266, v53, 2), v247, v53, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, v54.f32[0]), v310, *v54.f32, 1), v266, v54, 2), v247, v54, 3);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, v55.f32[0]), v310, *v55.f32, 1), v266, v55, 2), v247, v55, 3);
  v356 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, v56.f32[0]), v310, *v56.f32, 1), v266, v56, 2), v247, v56, 3);
  sub_10001358C(v441, 0.68068, xmmword_1000EC920);
  v57 = sub_100013568(v441);
  v496 = 1;
  *(v4 + 736) = 0x3F35C28F40400000;
  *(v4 + 744) = 1056964608;
  *(v4 + 748) = 1;
  *(v4 + 749) = v501;
  *(v4 + 751) = v502;
  *(v4 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v57.n128_f32[0]), v334, v57.n128_u64[0], 1), v286, v57, 2), v356, v57, 3);
  *(v4 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v58.f32[0]), v334, *v58.f32, 1), v286, v58, 2), v356, v58, 3);
  *(v4 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v59.f32[0]), v334, *v59.f32, 1), v286, v59, 2), v356, v59, 3);
  *(v4 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v60.f32[0]), v334, *v60.f32, 1), v286, v60, 2), v356, v60, 3);
  *(v4 + 816) = xmmword_1000EC900;
  *(v4 + 832) = 0;
  v61 = v499;
  *(v4 + 835) = v500;
  *(v4 + 833) = v61;
  *(v4 + 836) = 1072902963;
  *(v4 + 840) = 10;
  *(v4 + 841) = v497;
  *(v4 + 843) = v498;
  *(v4 + 844) = 1065353216;
  *(v4 + 848) = 0;
  *(v4 + 856) = 0u;
  *(v4 + 872) = v496;
  *(v4 + 873) = 0;
  *(v4 + 875) = 1;
  *(v4 + 880) = 0u;
  *(v4 + 896) = sub_100055564;
  *(v4 + 904) = 0;
  *(v4 + 912) = 0x4000000000000000;
  *(v4 + 928) = xmmword_1000EF5C0;
  *(v4 + 944) = 9;
  v62 = vmulq_f32(xmmword_10013DCA0, 0);
  v335 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v287 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v62), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v267 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v62, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v239 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0D1EB85)), vdupq_n_s32(0x40C147AEu), *algn_10013DCB0), vdupq_n_s32(0xC0A428F6), xmmword_10013DCC0));
  sub_10001358C(v442, 2.234, xmmword_1000EC910);
  v63 = sub_100013568(v442);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v335, v63.n128_f32[0]), v287, v63.n128_u64[0], 1), v267, v63, 2), v239, v63, 3);
  v311 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v335, v64.f32[0]), v287, *v64.f32, 1), v267, v64, 2), v239, v64, 3);
  v248 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v335, v65.f32[0]), v287, *v65.f32, 1), v267, v65, 2), v239, v65, 3);
  v240 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v335, v66.f32[0]), v287, *v66.f32, 1), v267, v66, 2), v239, v66, 3);
  sub_10001358C(v443, -2.426, xmmword_1000EC8E0);
  v67 = sub_100013568(v443);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v357, v68.f32[0]), v311, *v68.f32, 1), v248, v68, 2), v240, v68, 3);
  v268 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v357, v69.f32[0]), v311, *v69.f32, 1), v248, v69, 2), v240, v69, 3);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v357, v67.n128_f32[0]), v311, v67.n128_u64[0], 1), v248, v67, 2), v240, v67, 3);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v357, v70.f32[0]), v311, *v70.f32, 1), v248, v70, 2), v240, v70, 3);
  sub_10001358C(v444, 0.15708, xmmword_1000EC920);
  v71 = sub_100013568(v444);
  v503 = 0;
  *(v4 + 960) = 0x4059999A40A00000;
  *(v4 + 968) = 1015759766;
  *(v4 + 972) = 1;
  *(v4 + 973) = v508;
  *(v4 + 975) = v509;
  *(v4 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v336, v71.n128_f32[0]), v288, v71.n128_u64[0], 1), v268, v71, 2), v358, v71, 3);
  *(v4 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v336, v72.f32[0]), v288, *v72.f32, 1), v268, v72, 2), v358, v72, 3);
  *(v4 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v336, v73.f32[0]), v288, *v73.f32, 1), v268, v73, 2), v358, v73, 3);
  *(v4 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v336, v74.f32[0]), v288, *v74.f32, 1), v268, v74, 2), v358, v74, 3);
  *(v4 + 1040) = xmmword_1000EC900;
  *(v4 + 1056) = 0;
  v75 = v506;
  *(v4 + 1059) = v507;
  *(v4 + 1057) = v75;
  *(v4 + 1060) = 1077936128;
  *(v4 + 1064) = 1;
  *(v4 + 1065) = v504;
  *(v4 + 1067) = v505;
  *(v4 + 1068) = 1038174126;
  *(v4 + 1072) = xmmword_1000F0400;
  *(v4 + 1088) = 0x3F547AE100000000;
  *(v4 + 1096) = v503;
  *(v4 + 1097) = 1;
  *(v4 + 1099) = 1;
  *(v4 + 1104) = 0u;
  *(v4 + 1120) = sub_100055594;
  *(v4 + 1128) = 0;
  *(v4 + 1136) = 0x3F80000000000000;
  *(v4 + 1152) = xmmword_1000EF7D0;
  *(v4 + 1168) = 9;
  v76 = vmulq_f32(xmmword_10013DCA0, 0);
  v312 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v269 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v76), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v249 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v76, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v359 = vdupq_n_s32(0xC0247AE1);
  v237 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v387), vdupq_n_s32(0x3E75C28Fu), *algn_10013DCB0), v359, xmmword_10013DCC0));
  sub_10001358C(v445, 0.0, xmmword_1000EC910);
  v77 = sub_100013568(v445);
  v337 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v312, v77.n128_f32[0]), v269, v77.n128_u64[0], 1), v249, v77, 2), v237, v77, 3);
  v289 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v312, v78.f32[0]), v269, *v78.f32, 1), v249, v78, 2), v237, v78, 3);
  v241 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v312, v79.f32[0]), v269, *v79.f32, 1), v249, v79, 2), v237, v79, 3);
  v238 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v312, v80.f32[0]), v269, *v80.f32, 1), v249, v80, 2), v237, v80, 3);
  sub_10001358C(v446, 0.0, xmmword_1000EC8E0);
  v81 = sub_100013568(v446);
  v270 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v82.f32[0]), v289, *v82.f32, 1), v241, v82, 2), v238, v82, 3);
  v250 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v83.f32[0]), v289, *v83.f32, 1), v241, v83, 2), v238, v83, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v81.n128_f32[0]), v289, v81.n128_u64[0], 1), v241, v81, 2), v238, v81, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v84.f32[0]), v289, *v84.f32, 1), v241, v84, 2), v238, v84, 3);
  sub_10001358C(v447, 0.68068, xmmword_1000EC920);
  v85 = sub_100013568(v447);
  v510 = 1;
  *(v4 + 1184) = 0x3F8CCCCD400CCCCDLL;
  *(v4 + 1192) = 1046562734;
  *(v4 + 1196) = 1;
  *(v4 + 1197) = v515;
  *(v4 + 1199) = v516;
  *(v4 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v313, v85.n128_f32[0]), v270, v85.n128_u64[0], 1), v250, v85, 2), v338, v85, 3);
  *(v4 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v313, v86.f32[0]), v270, *v86.f32, 1), v250, v86, 2), v338, v86, 3);
  *(v4 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v313, v87.f32[0]), v270, *v87.f32, 1), v250, v87, 2), v338, v87, 3);
  *(v4 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v313, v88.f32[0]), v270, *v88.f32, 1), v250, v88, 2), v338, v88, 3);
  *(v4 + 1264) = xmmword_1000F0410;
  *(v4 + 1280) = 0;
  v89 = v513;
  *(v4 + 1283) = v514;
  *(v4 + 1281) = v89;
  *(v4 + 1284) = 1068708659;
  *(v4 + 1288) = 10;
  *(v4 + 1289) = v511;
  *(v4 + 1291) = v512;
  *(v4 + 1292) = 1065353216;
  *(v4 + 1296) = 0;
  *(v4 + 1304) = 0u;
  *(v4 + 1320) = v510;
  *(v4 + 1321) = 1;
  *(v4 + 1323) = 1;
  *(v4 + 1328) = 0u;
  *(v4 + 1344) = sub_100081610;
  *(v4 + 1352) = 0;
  *(v4 + 1360) = 0x3F80000000000000;
  *(v4 + 1376) = xmmword_1000EF5A0;
  *(v4 + 1392) = 4;
  v90 = vmulq_f32(xmmword_10013DCA0, 0);
  v339 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v290 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v90), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v271 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v90, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v242 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v387), vdupq_n_s32(0x3ECCCCCCu), *algn_10013DCB0), vdupq_n_s32(0xBD75C28F), xmmword_10013DCC0));
  sub_10001358C(v448, 1.5708, xmmword_1000EC910);
  v91 = sub_100013568(v448);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v91.n128_f32[0]), v290, v91.n128_u64[0], 1), v271, v91, 2), v242, v91, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v92.f32[0]), v290, *v92.f32, 1), v271, v92, 2), v242, v92, 3);
  v251 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v93.f32[0]), v290, *v93.f32, 1), v271, v93, 2), v242, v93, 3);
  v243 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v94.f32[0]), v290, *v94.f32, 1), v271, v94, 2), v242, v94, 3);
  sub_10001358C(v449, -0.99484, xmmword_1000EC8E0);
  v95 = sub_100013568(v449);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v95.n128_f32[0]), v314, v95.n128_u64[0], 1), v251, v95, 2), v243, v95, 3);
  v291 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v96.f32[0]), v314, *v96.f32, 1), v251, v96, 2), v243, v96, 3);
  v272 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v97.f32[0]), v314, *v97.f32, 1), v251, v97, 2), v243, v97, 3);
  v389 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v98.f32[0]), v314, *v98.f32, 1), v251, v98, 2), v243, v98, 3);
  sub_10001358C(v450, 0.0, xmmword_1000EC920);
  v99 = sub_100013568(v450);
  v517 = 1;
  *(v4 + 1408) = 0x4021EB853F70A3D7;
  *(v4 + 1416) = 1050253722;
  *(v4 + 1420) = 1;
  *(v4 + 1421) = v522;
  *(v4 + 1423) = v523;
  *(v4 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v99.n128_f32[0]), v291, v99.n128_u64[0], 1), v272, v99, 2), v389, v99, 3);
  *(v4 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v100.f32[0]), v291, *v100.f32, 1), v272, v100, 2), v389, v100, 3);
  *(v4 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v101.f32[0]), v291, *v101.f32, 1), v272, v101, 2), v389, v101, 3);
  *(v4 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v102.f32[0]), v291, *v102.f32, 1), v272, v102, 2), v389, v102, 3);
  *(v4 + 1488) = xmmword_1000F0420;
  *(v4 + 1504) = 0;
  v103 = v520;
  *(v4 + 1507) = v521;
  *(v4 + 1505) = v103;
  *(v4 + 1508) = 1086324736;
  *(v4 + 1512) = 9;
  *(v4 + 1513) = v518;
  *(v4 + 1515) = v519;
  *(v4 + 1516) = 1065353216;
  *(v4 + 1520) = 0;
  *(v4 + 1528) = 0u;
  *(v4 + 1544) = v517;
  *(v4 + 1545) = 1;
  *(v4 + 1547) = 0;
  *(v4 + 1552) = 0u;
  *(v4 + 1568) = sub_1000555F0;
  *(v4 + 1576) = 0;
  *(v4 + 1584) = 0x3EAE147B00000000;
  *(v4 + 1600) = xmmword_1000EF5C0;
  *(v4 + 1616) = 4;
  v104 = vmulq_f32(xmmword_10013DCA0, 0);
  v341 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v292 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v104), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v273 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v104, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v244 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3D8F5C29u)), vdupq_n_s32(0x3EB851EBu), *algn_10013DCB0), vdupq_n_s32(0xBF1EB852), xmmword_10013DCC0));
  sub_10001358C(v451, 1.5708, xmmword_1000EC910);
  v105 = sub_100013568(v451);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v105.n128_f32[0]), v292, v105.n128_u64[0], 1), v273, v105, 2), v244, v105, 3);
  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v106.f32[0]), v292, *v106.f32, 1), v273, v106, 2), v244, v106, 3);
  v252 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v107.f32[0]), v292, *v107.f32, 1), v273, v107, 2), v244, v107, 3);
  v245 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v108.f32[0]), v292, *v108.f32, 1), v273, v108, 2), v244, v108, 3);
  sub_10001358C(v452, -0.97738, xmmword_1000EC8E0);
  v109 = sub_100013568(v452);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v109.n128_f32[0]), v315, v109.n128_u64[0], 1), v252, v109, 2), v245, v109, 3);
  v293 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v110.f32[0]), v315, *v110.f32, 1), v252, v110, 2), v245, v110, 3);
  v274 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v111.f32[0]), v315, *v111.f32, 1), v252, v111, 2), v245, v111, 3);
  v391 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v112.f32[0]), v315, *v112.f32, 1), v252, v112, 2), v245, v112, 3);
  sub_10001358C(v453, 0.0, xmmword_1000EC920);
  v113 = sub_100013568(v453);
  v524 = 1;
  *(v4 + 1632) = 0x3F8000003F800000;
  *(v4 + 1640) = 1053609165;
  *(v4 + 1644) = 1;
  *(v4 + 1645) = v529;
  *(v4 + 1647) = v530;
  *(v4 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v113.n128_f32[0]), v293, v113.n128_u64[0], 1), v274, v113, 2), v391, v113, 3);
  *(v4 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v114.f32[0]), v293, *v114.f32, 1), v274, v114, 2), v391, v114, 3);
  *(v4 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v115.f32[0]), v293, *v115.f32, 1), v274, v115, 2), v391, v115, 3);
  *(v4 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v116.f32[0]), v293, *v116.f32, 1), v274, v116, 2), v391, v116, 3);
  *(v4 + 1712) = xmmword_1000EC900;
  *(v4 + 1728) = 0;
  v117 = v527;
  *(v4 + 1731) = v528;
  *(v4 + 1729) = v117;
  *(v4 + 1732) = 1090623898;
  *(v4 + 1736) = 9;
  *(v4 + 1737) = v525;
  *(v4 + 1739) = v526;
  *(v4 + 1740) = 1065353216;
  *(v4 + 1744) = 0;
  *(v4 + 1752) = 0u;
  *(v4 + 1768) = v524;
  *(v4 + 1769) = 1;
  *(v4 + 1771) = 0;
  *(v4 + 1776) = 0u;
  *(v4 + 1792) = sub_100055620;
  *(v4 + 1800) = 0;
  *(v4 + 1808) = 0x3F1C28F600000000;
  *(v4 + 1824) = xmmword_1000EF5A0;
  *(v4 + 1840) = 3;
  v118 = vmulq_f32(xmmword_10013DCA0, 0);
  v316 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v294 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v118), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v275 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v118, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v360 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC01D70A4)), vdupq_n_s32(0x4008F5C2u), *algn_10013DCB0), v359, xmmword_10013DCC0));
  sub_10001358C(v454, -0.83776, xmmword_1000EC910);
  v119 = sub_100013568(v454);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v316, v119.n128_f32[0]), v294, v119.n128_u64[0], 1), v275, v119, 2), v360, v119, 3);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v316, v120.f32[0]), v294, *v120.f32, 1), v275, v120, 2), v360, v120, 3);
  v253 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v316, v121.f32[0]), v294, *v121.f32, 1), v275, v121, 2), v360, v121, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v316, v122.f32[0]), v294, *v122.f32, 1), v275, v122, 2), v360, v122, 3);
  sub_10001358C(v455, -0.55851, xmmword_1000EC8E0);
  v123 = sub_100013568(v455);
  v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v123.n128_f32[0]), v343, v123.n128_u64[0], 1), v253, v123, 2), v276, v123, 3);
  v317 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v124.f32[0]), v343, *v124.f32, 1), v253, v124, 2), v276, v124, 3);
  v295 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v125.f32[0]), v343, *v125.f32, 1), v253, v125, 2), v276, v125, 3);
  v393 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v126.f32[0]), v343, *v126.f32, 1), v253, v126, 2), v276, v126, 3);
  sub_10001358C(v456, 0.0, xmmword_1000EC920);
  v127 = sub_100013568(v456);
  v531 = 1;
  *(v4 + 1856) = 0x400666663FCCCCCDLL;
  *(v4 + 1864) = 1045891645;
  *(v4 + 1868) = 1;
  *(v4 + 1869) = v536;
  *(v4 + 1871) = v537;
  *(v4 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v127.n128_f32[0]), v317, v127.n128_u64[0], 1), v295, v127, 2), v393, v127, 3);
  *(v4 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v128.f32[0]), v317, *v128.f32, 1), v295, v128, 2), v393, v128, 3);
  *(v4 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v129.f32[0]), v317, *v129.f32, 1), v295, v129, 2), v393, v129, 3);
  *(v4 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v130.f32[0]), v317, *v130.f32, 1), v295, v130, 2), v393, v130, 3);
  *(v4 + 1936) = xmmword_1000F0430;
  *(v4 + 1952) = 0;
  v131 = v534;
  *(v4 + 1955) = v535;
  *(v4 + 1953) = v131;
  *(v4 + 1956) = 1091043328;
  *(v4 + 1960) = 10;
  *(v4 + 1961) = v532;
  *(v4 + 1963) = v533;
  *(v4 + 1964) = 1065353216;
  *(v4 + 1968) = 0;
  *(v4 + 1976) = 0u;
  *(v4 + 1992) = v531;
  *(v4 + 1993) = 1;
  *(v4 + 1995) = 1;
  *(v4 + 2000) = 0u;
  *(v4 + 2016) = sub_100055650;
  *(v4 + 2024) = 0;
  *(v4 + 2032) = 0x3F80000000000000;
  *(v4 + 2048) = xmmword_1000EF630;
  *(v4 + 2064) = 9;
  v132 = vmulq_f32(xmmword_10013DCA0, 0);
  v362 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v318 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v132), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v296 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v132, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v254 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC02C28F6)), vdupq_n_s32(0x4082E147u), *algn_10013DCB0), vdupq_n_s32(0x40799999u), xmmword_10013DCC0));
  sub_10001358C(v457, -1.501, xmmword_1000EC910);
  v133 = sub_100013568(v457);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v133.n128_f32[0]), v318, v133.n128_u64[0], 1), v296, v133, 2), v254, v133, 3);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v134.f32[0]), v318, *v134.f32, 1), v296, v134, 2), v254, v134, 3);
  v277 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v135.f32[0]), v318, *v135.f32, 1), v296, v135, 2), v254, v135, 3);
  v255 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v136.f32[0]), v318, *v136.f32, 1), v296, v136, 2), v254, v136, 3);
  sub_10001358C(v458, -0.73304, xmmword_1000EC8E0);
  v137 = sub_100013568(v458);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v137.n128_f32[0]), v344, v137.n128_u64[0], 1), v277, v137, 2), v255, v137, 3);
  v319 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v138.f32[0]), v344, *v138.f32, 1), v277, v138, 2), v255, v138, 3);
  v297 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v139.f32[0]), v344, *v139.f32, 1), v277, v139, 2), v255, v139, 3);
  v395 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v140.f32[0]), v344, *v140.f32, 1), v277, v140, 2), v255, v140, 3);
  sub_10001358C(v459, 0.0, xmmword_1000EC920);
  v141 = sub_100013568(v459);
  v538 = 1;
  *(v4 + 2080) = 0x4073333340333333;
  *(v4 + 2088) = 1023611503;
  *(v4 + 2092) = 1;
  *(v4 + 2093) = v543;
  *(v4 + 2095) = v544;
  *(v4 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v141.n128_f32[0]), v319, v141.n128_u64[0], 1), v297, v141, 2), v395, v141, 3);
  *(v4 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v142.f32[0]), v319, *v142.f32, 1), v297, v142, 2), v395, v142, 3);
  *(v4 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v143.f32[0]), v319, *v143.f32, 1), v297, v143, 2), v395, v143, 3);
  *(v4 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v144.f32[0]), v319, *v144.f32, 1), v297, v144, 2), v395, v144, 3);
  *(v4 + 2160) = xmmword_1000F0440;
  *(v4 + 2176) = 0;
  v145 = v541;
  *(v4 + 2179) = v542;
  *(v4 + 2177) = v145;
  strcpy((v4 + 2180), "333?");
  *(v4 + 2185) = v539;
  *(v4 + 2187) = v540;
  *(v4 + 2188) = 1057635697;
  *(v4 + 2192) = 0;
  *(v4 + 2200) = 0u;
  *(v4 + 2216) = v538;
  *(v4 + 2217) = 3;
  *(v4 + 2219) = 1;
  *(v4 + 2224) = 0u;
  *(v4 + 2240) = sub_100055680;
  *(v4 + 2248) = 0;
  *(v4 + 2256) = 0x3F80000000000000;
  *(v4 + 2272) = xmmword_1000EF5A0;
  *(v4 + 2288) = 5;
  v146 = vmulq_f32(xmmword_10013DCA0, 0);
  v364 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v320 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v146), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v298 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v146, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v256 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC008F5C2)), vdupq_n_s32(0x402F5C29u), *algn_10013DCB0), vdupq_n_s32(0x3F8F5C29u), xmmword_10013DCC0));
  sub_10001358C(v460, 0.0, xmmword_1000EC910);
  v147 = sub_100013568(v460);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v147.n128_f32[0]), v320, v147.n128_u64[0], 1), v298, v147, 2), v256, v147, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v148.f32[0]), v320, *v148.f32, 1), v298, v148, 2), v256, v148, 3);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v149.f32[0]), v320, *v149.f32, 1), v298, v149, 2), v256, v149, 3);
  v257 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v150.f32[0]), v320, *v150.f32, 1), v298, v150, 2), v256, v150, 3);
  sub_10001358C(v461, 0.0, xmmword_1000EC8E0);
  v151 = sub_100013568(v461);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v151.n128_f32[0]), v345, v151.n128_u64[0], 1), v278, v151, 2), v257, v151, 3);
  v321 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v152.f32[0]), v345, *v152.f32, 1), v278, v152, 2), v257, v152, 3);
  v299 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v153.f32[0]), v345, *v153.f32, 1), v278, v153, 2), v257, v153, 3);
  v397 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v154.f32[0]), v345, *v154.f32, 1), v278, v154, 2), v257, v154, 3);
  sub_10001358C(v462, 0.0, xmmword_1000EC920);
  v155 = sub_100013568(v462);
  v545 = 1;
  *(v4 + 2304) = 0x409CCCCD4080A3D7;
  *(v4 + 2312) = 1053609165;
  *(v4 + 2316) = 1;
  *(v4 + 2317) = v550;
  *(v4 + 2319) = v551;
  *(v4 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v155.n128_f32[0]), v321, v155.n128_u64[0], 1), v299, v155, 2), v397, v155, 3);
  *(v4 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v156.f32[0]), v321, *v156.f32, 1), v299, v156, 2), v397, v156, 3);
  *(v4 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v157.f32[0]), v321, *v157.f32, 1), v299, v157, 2), v397, v157, 3);
  *(v4 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v158.f32[0]), v321, *v158.f32, 1), v299, v158, 2), v397, v158, 3);
  *(v4 + 2384) = xmmword_1000F0450;
  *(v4 + 2400) = 0;
  v159 = v548;
  *(v4 + 2403) = v549;
  *(v4 + 2401) = v159;
  *(v4 + 2404) = 1050253722;
  *(v4 + 2408) = 9;
  *(v4 + 2409) = v546;
  *(v4 + 2411) = v547;
  *(v4 + 2412) = 1065353216;
  *(v4 + 2416) = 0;
  *(v4 + 2424) = 0u;
  *(v4 + 2440) = v545;
  *(v4 + 2441) = 3;
  *(v4 + 2443) = 1;
  *(v4 + 2448) = 0u;
  *(v4 + 2464) = _MTLPackedFloat3.init(_:_:_:);
  *(v4 + 2472) = 0;
  *(v4 + 2480) = 0x3F80000000000000;
  *(v4 + 2496) = xmmword_1000EF5C0;
  *(v4 + 2512) = 5;
  v160 = vmulq_f32(xmmword_10013DCA0, 0);
  v366 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v322 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v160), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v300 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v160, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v258 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x40233333u)), vdupq_n_s32(0xBFF99999), *algn_10013DCB0), vdupq_n_s32(0x40028F5Cu), xmmword_10013DCC0));
  sub_10001358C(v463, 0.0, xmmword_1000EC910);
  v161 = sub_100013568(v463);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v161.n128_f32[0]), v322, v161.n128_u64[0], 1), v300, v161, 2), v258, v161, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v162.f32[0]), v322, *v162.f32, 1), v300, v162, 2), v258, v162, 3);
  v279 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v163.f32[0]), v322, *v163.f32, 1), v300, v163, 2), v258, v163, 3);
  v259 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v164.f32[0]), v322, *v164.f32, 1), v300, v164, 2), v258, v164, 3);
  sub_10001358C(v464, 0.0, xmmword_1000EC8E0);
  v165 = sub_100013568(v464);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v165.n128_f32[0]), v346, v165.n128_u64[0], 1), v279, v165, 2), v259, v165, 3);
  v323 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v166.f32[0]), v346, *v166.f32, 1), v279, v166, 2), v259, v166, 3);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v167.f32[0]), v346, *v167.f32, 1), v279, v167, 2), v259, v167, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v168.f32[0]), v346, *v168.f32, 1), v279, v168, 2), v259, v168, 3);
  sub_10001358C(v465, 0.0, xmmword_1000EC920);
  v169 = sub_100013568(v465);
  v552 = 1;
  *(v4 + 2528) = 0x406CCCCD40666666;
  *(v4 + 2536) = 1053609165;
  *(v4 + 2540) = 1;
  *(v4 + 2541) = v557;
  *(v4 + 2543) = v558;
  *(v4 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v169.n128_f32[0]), v323, v169.n128_u64[0], 1), v301, v169, 2), v399, v169, 3);
  *(v4 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v170.f32[0]), v323, *v170.f32, 1), v301, v170, 2), v399, v170, 3);
  *(v4 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v171.f32[0]), v323, *v171.f32, 1), v301, v171, 2), v399, v171, 3);
  *(v4 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v172.f32[0]), v323, *v172.f32, 1), v301, v172, 2), v399, v172, 3);
  *(v4 + 2608) = xmmword_1000F0460;
  *(v4 + 2624) = 0;
  v173 = v555;
  *(v4 + 2627) = v556;
  *(v4 + 2625) = v173;
  *(v4 + 2628) = 1079613850;
  *(v4 + 2632) = 9;
  *(v4 + 2633) = v553;
  *(v4 + 2635) = v554;
  *(v4 + 2636) = 1065353216;
  *(v4 + 2640) = 0;
  *(v4 + 2648) = 0u;
  *(v4 + 2664) = v552;
  *(v4 + 2665) = 3;
  *(v4 + 2667) = 1;
  *(v4 + 2672) = 0u;
  *(v4 + 2688) = sub_1000556B0;
  *(v4 + 2696) = 0;
  *(v4 + 2704) = 0x3F80000000000000;
  *(v4 + 2720) = xmmword_1000EF5D0;
  *(v4 + 2736) = 5;
  v174 = vmulq_f32(xmmword_10013DCA0, 0);
  v368 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v324 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v174), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v302 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v174, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  __asm { FMOV            V0.4S, #-3.5 }

  v260 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F7851EBu)), _Q0, *algn_10013DCB0), vdupq_n_s32(0x40428F5Cu), xmmword_10013DCC0));
  sub_10001358C(v466, 0.0, xmmword_1000EC910);
  v180 = sub_100013568(v466);
  v400 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v180.n128_f32[0]), v324, v180.n128_u64[0], 1), v302, v180, 2), v260, v180, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v181.f32[0]), v324, *v181.f32, 1), v302, v181, 2), v260, v181, 3);
  v280 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v182.f32[0]), v324, *v182.f32, 1), v302, v182, 2), v260, v182, 3);
  v261 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v183.f32[0]), v324, *v183.f32, 1), v302, v183, 2), v260, v183, 3);
  sub_10001358C(v467, 0.0, xmmword_1000EC8E0);
  v184 = sub_100013568(v467);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v184.n128_f32[0]), v347, v184.n128_u64[0], 1), v280, v184, 2), v261, v184, 3);
  v325 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v185.f32[0]), v347, *v185.f32, 1), v280, v185, 2), v261, v185, 3);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v186.f32[0]), v347, *v186.f32, 1), v280, v186, 2), v261, v186, 3);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v187.f32[0]), v347, *v187.f32, 1), v280, v187, 2), v261, v187, 3);
  sub_10001358C(v468, 0.0, xmmword_1000EC920);
  v188 = sub_100013568(v468);
  v559 = 1;
  *(v4 + 2752) = 0x4089999A40400000;
  *(v4 + 2760) = 1053609165;
  *(v4 + 2764) = 1;
  *(v4 + 2765) = v564;
  *(v4 + 2767) = v565;
  *(v4 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v188.n128_f32[0]), v325, v188.n128_u64[0], 1), v303, v188, 2), v401, v188, 3);
  *(v4 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v189.f32[0]), v325, *v189.f32, 1), v303, v189, 2), v401, v189, 3);
  *(v4 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v190.f32[0]), v325, *v190.f32, 1), v303, v190, 2), v401, v190, 3);
  *(v4 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v191.f32[0]), v325, *v191.f32, 1), v303, v191, 2), v401, v191, 3);
  *(v4 + 2832) = xmmword_1000EC900;
  *(v4 + 2848) = 0;
  v192 = v562;
  *(v4 + 2851) = v563;
  *(v4 + 2849) = v192;
  *(v4 + 2852) = 1066192077;
  *(v4 + 2856) = 9;
  *(v4 + 2857) = v560;
  *(v4 + 2859) = v561;
  *(v4 + 2860) = 1065353216;
  *(v4 + 2864) = 0;
  *(v4 + 2872) = 0u;
  *(v4 + 2888) = v559;
  *(v4 + 2889) = 3;
  *(v4 + 2891) = 1;
  *(v4 + 2896) = 0u;
  *(v4 + 2912) = sub_1000556E0;
  *(v4 + 2920) = 0;
  *(v4 + 2928) = 0x3F80000000000000;
  *(v4 + 2944) = xmmword_1000EF5A0;
  *(v4 + 2960) = 6;
  v193 = vmulq_f32(xmmword_10013DCA0, 0);
  v402 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v348 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v193), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v304 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v193, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v423 = vdupq_n_s32(0xBF8E147B);
  v281 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE23D70A)), vdupq_n_s32(0x3E999999u), *algn_10013DCB0), v423, xmmword_10013DCC0));
  sub_10001358C(v469, 1.5708, xmmword_1000EC910);
  v194 = sub_100013568(v469);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v194.n128_f32[0]), v348, v194.n128_u64[0], 1), v304, v194, 2), v281, v194, 3);
  v370 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v195.f32[0]), v348, *v195.f32, 1), v304, v195, 2), v281, v195, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v196.f32[0]), v348, *v196.f32, 1), v304, v196, 2), v281, v196, 3);
  v282 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v197.f32[0]), v348, *v197.f32, 1), v304, v197, 2), v281, v197, 3);
  sub_10001358C(v470, -3.4034, xmmword_1000EC8E0);
  v198 = sub_100013568(v470);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v198.n128_f32[0]), v370, v198.n128_u64[0], 1), v326, v198, 2), v282, v198, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v199.f32[0]), v370, *v199.f32, 1), v326, v199, 2), v282, v199, 3);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v200.f32[0]), v370, *v200.f32, 1), v326, v200, 2), v282, v200, 3);
  v418 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v201.f32[0]), v370, *v201.f32, 1), v326, v201, 2), v282, v201, 3);
  sub_10001358C(v471, 1.5708, xmmword_1000EC920);
  v202 = sub_100013568(v471);
  v566 = 1;
  *(v4 + 2976) = 0x3FB333333F800000;
  *(v4 + 2984) = 1056964608;
  *(v4 + 2988) = 1;
  *(v4 + 2989) = v571;
  *(v4 + 2991) = v572;
  *(v4 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v202.n128_f32[0]), v349, v202.n128_u64[0], 1), v305, v202, 2), v418, v202, 3);
  *(v4 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v203.f32[0]), v349, *v203.f32, 1), v305, v203, 2), v418, v203, 3);
  *(v4 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v204.f32[0]), v349, *v204.f32, 1), v305, v204, 2), v418, v204, 3);
  *(v4 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v205.f32[0]), v349, *v205.f32, 1), v305, v205, 2), v418, v205, 3);
  *(v4 + 3056) = xmmword_1000F0470;
  *(v4 + 3072) = 0;
  v206 = v569;
  *(v4 + 3075) = v570;
  *(v4 + 3073) = v206;
  *(v4 + 3076) = 1055957975;
  *(v4 + 3080) = 9;
  *(v4 + 3081) = v567;
  *(v4 + 3083) = v568;
  *(v4 + 3084) = 1065353216;
  *(v4 + 3088) = 0;
  *(v4 + 3096) = 0u;
  *(v4 + 3112) = v566;
  *(v4 + 3113) = 2;
  *(v4 + 3115) = 1;
  *(v4 + 3152) = 0;
  *(v4 + 3136) = 0u;
  *(v4 + 3120) = 0u;
  *(v4 + 3156) = 1065353216;
  *(v4 + 3168) = xmmword_1000EF5C0;
  v207 = *algn_10013DCB0;
  v208 = vmulq_f32(xmmword_10013DCA0, 0);
  v209 = xmmword_10013DCC0;
  v210 = xmmword_10013DCD0;
  v211 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF147AE1));
  v404 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v4 + 3184) = 6;
  v350 = vmlaq_f32(vmlaq_f32(vaddq_f32(v207, v208), 0, v209), 0, v210);
  v327 = vmlaq_f32(vaddq_f32(v209, vmlaq_f32(v208, 0, v207)), 0, v210);
  v424 = vaddq_f32(v210, vmlaq_f32(vmlaq_f32(v211, vdupq_n_s32(0xBF266666), v207), v423, v209));
  sub_10001358C(v472, 1.5708, xmmword_1000EC910);
  v212 = sub_100013568(v472);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v213.f32[0]), v350, *v213.f32, 1), v327, v213, 2), v424, v213, 3);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v212.n128_f32[0]), v350, v212.n128_u64[0], 1), v327, v212, 2), v424, v212, 3);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v214.f32[0]), v350, *v214.f32, 1), v327, v214, 2), v424, v214, 3);
  v405 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v215.f32[0]), v350, *v215.f32, 1), v327, v215, 2), v424, v215, 3);
  sub_10001358C(v473, -2.5307, xmmword_1000EC8E0);
  v216 = sub_100013568(v473);
  v428 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v217.f32[0]), v414, *v217.f32, 1), v371, v217, 2), v405, v217, 3);
  v429 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v216.n128_f32[0]), v414, v216.n128_u64[0], 1), v371, v216, 2), v405, v216, 3);
  v425 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v218.f32[0]), v414, *v218.f32, 1), v371, v218, 2), v405, v218, 3);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v219.f32[0]), v414, *v219.f32, 1), v371, v219, 2), v405, v219, 3);
  sub_10001358C(v474, 1.5708, xmmword_1000EC920);
  v220 = sub_100013568(v474);
  v573 = 1;
  *(v4 + 3200) = 0x3FC000003F8CCCCDLL;
  *(v4 + 3208) = 1056964608;
  *(v4 + 3212) = 1;
  *(v4 + 3213) = v578;
  *(v4 + 3215) = v579;
  *(v4 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v220.n128_f32[0]), v428, v220.n128_u64[0], 1), v425, v220, 2), v420, v220, 3);
  *(v4 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v221.f32[0]), v428, *v221.f32, 1), v425, v221, 2), v420, v221, 3);
  *(v4 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v222.f32[0]), v428, *v222.f32, 1), v425, v222, 2), v420, v222, 3);
  *(v4 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v223.f32[0]), v428, *v223.f32, 1), v425, v223, 2), v420, v223, 3);
  *(v4 + 3280) = xmmword_1000F0480;
  *(v4 + 3296) = 0;
  v224 = v576;
  *(v4 + 3299) = v577;
  *(v4 + 3297) = v224;
  *(v4 + 3300) = 1049918177;
  *(v4 + 3304) = 9;
  *(v4 + 3305) = v574;
  *(v4 + 3307) = v575;
  *(v4 + 3308) = 1065353216;
  *(v4 + 3312) = 0;
  *(v4 + 3320) = 0u;
  *(v4 + 3336) = v573;
  *(v4 + 3337) = 2;
  *(v4 + 3339) = 1;
  *(v4 + 3376) = 0;
  *(v4 + 3360) = 0u;
  *(v4 + 3344) = 0u;
  *(v4 + 3380) = 1065353216;
  v225 = sub_1000A0774(v4);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020);
  v226 = swift_allocObject();
  v226[1] = xmmword_1000EC880;
  v226[2] = xmmword_1000F0490;
  v226[3] = xmmword_1000F04A0;
  v227 = swift_allocObject();
  v227[1] = xmmword_1000EC880;
  v227[2] = xmmword_1000F04B0;
  v227[3] = xmmword_1000F04C0;
  v228 = swift_allocObject();
  v228[1] = xmmword_1000EC880;
  v228[2] = xmmword_1000F04D0;
  v228[3] = xmmword_1000F04E0;
  v229 = qword_10013AC20;
  v230 = unk_10013AC28;
  v231 = qword_10013AC30;

  v232 = qword_10013AC50;
  v233 = sub_1000A0A98(_swiftEmptyArrayStorage);
  swift_bridgeObjectRetain_n();
  v234 = sub_1000C1928(v225);

  sub_1000C53DC(v234, v582);
  v235 = sub_1000C199C(v225);

  sub_1000C53DC(v235, v580);
  xmmword_10013B8C0 = v381;
  *algn_10013B8D0 = v380;
  qword_10013B8E0 = v379;
  dword_10013B8E8 = v0;
  xmmword_10013B8F0 = v378;
  unk_10013B900 = v377;
  qword_10013B910 = v1;
  dword_10013B918 = v2;
  xmmword_10013B920 = v376;
  qword_10013B930 = v3;
  xmmword_10013B940 = v375;
  qword_10013B950 = v374;
  unk_10013B958 = v373;
  dword_10013B960 = v372;
  qword_10013B968 = 0;
  unk_10013B970 = v225;
  qword_10013B998 = v583;
  unk_10013B988 = v582[1];
  unk_10013B978 = v582[0];
  xmmword_10013B9A0 = v580[0];
  unk_10013B9B0 = v580[1];
  qword_10013B9C0 = v581;
  qword_10013B9C8 = variable initialization expression of ToriScene.tapTarget;
  qword_10013B9D0 = 0;
  xmmword_10013B9E0 = xmmword_1000F04F0;
  unk_10013B9F0 = xmmword_1000F0500;
  qword_10013BA00 = v226;
  word_10013BA0C = 0;
  dword_10013BA08 = 0;
  xmmword_10013BA10 = xmmword_1000F0510;
  qword_10013BA20 = v227;
  xmmword_10013BA28 = xmmword_1000F0520;
  xmmword_10013BA38 = xmmword_1000F0530;
  qword_10013BA48 = 1060681913;
  unk_10013BA50 = v228;
  xmmword_10013BA58 = xmmword_1000F0540;
  xmmword_10013BA68 = xmmword_1000F0550;
  qword_10013BA78 = 1061866187;
  result = 0.000254672311;
  xmmword_10013BA80 = xmmword_1000F0560;
  qword_10013BA90 = v229;
  unk_10013BA98 = v230;
  qword_10013BAA0 = v231;
  unk_10013BAA8 = v233;
  qword_10013BAB0 = _swiftEmptyArrayStorage;
  unk_10013BAB8 = _swiftEmptyArrayStorage;
  qword_10013BAC0 = v232;
  return result;
}

uint64_t sub_100055388(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.17) * a2) + 0.17;
    *result = COERCE_UNSIGNED_INT(((*result + -0.71) * a2) + 0.71) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.9) * a2) + 3.9) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -5.0) * a2) + 5.0;
    *(result + 108) = ((*(result + 108) + -0.09) * a2) + 0.09;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10005546C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -2.6) * a2) + 2.6;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10005549C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.3) * a2) + 0.3;
    *result = COERCE_UNSIGNED_INT(((*result + -1.8) * a2) + 1.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.36) * a2) + 0.36) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.2) * a2) + 1.2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_100055564(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -1.9) * a2) + 1.9;
  *(a1 + 100) = result;
  return result;
}

float sub_100055594(uint64_t a1, float a2)
{
  *(a1 + 100) = ((*(a1 + 100) + -0.99) * a2) + 0.99;
  result = ((*(a1 + 108) + -0.12) * a2) + 0.12;
  *(a1 + 108) = result;
  return result;
}

float sub_1000555F0(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -4.7) * a2) + 4.7;
  *(a1 + 100) = result;
  return result;
}

float sub_100055620(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -3.2) * a2) + 3.2;
  *(a1 + 100) = result;
  return result;
}

float sub_100055650(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.59) * a2) + 0.59;
  *(a1 + 100) = result;
  return result;
}

float sub_100055680(uint64_t a1, float a2)
{
  result = ((*(a1 + 108) + -0.39) * a2) + 0.39;
  *(a1 + 108) = result;
  return result;
}

float sub_1000556B0(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -1.2) * a2) + 1.2;
  *(a1 + 100) = result;
  return result;
}

float sub_1000556E0(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.56) * a2) + 0.56;
  *(a1 + 100) = result;
  return result;
}

double sub_100055710()
{
  if (qword_10012F560 != -1)
  {
    swift_once();
  }

  v356 = xmmword_100130FE0;
  if (qword_10012F568 != -1)
  {
    swift_once();
  }

  v355 = xmmword_100130FF0;
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v354 = xmmword_10013AAB0;
  v0 = qword_10013AAC0;
  v1 = dword_10013AAEC;
  sub_1000125FC(&qword_100131010);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000EEC30;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v3 = vmulq_f32(xmmword_10013DCA0, 0);
  v383 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v379 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v3), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v357 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v3, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v313 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FBD0E56u)), vdupq_n_s32(0x3FBDF3B6u), *algn_10013DCB0), vdupq_n_s32(0x3DDD2F20u), xmmword_10013DCC0));
  sub_10001358C(v387, 1.2043, xmmword_1000EC910);
  v4 = sub_100013568(v387);
  v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v4.n128_f32[0]), v379, v4.n128_u64[0], 1), v357, v4, 2), v313, v4, 3);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v5.f32[0]), v379, *v5.f32, 1), v357, v5, 2), v313, v5, 3);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v6.f32[0]), v379, *v6.f32, 1), v357, v6, 2), v313, v6, 3);
  v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v7.f32[0]), v379, *v7.f32, 1), v357, v7, 2), v313, v7, 3);
  sub_10001358C(v388, -0.75049, xmmword_1000EC8E0);
  v8 = sub_100013568(v388);
  v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v8.n128_f32[0]), v365, v8.n128_u64[0], 1), v333, v8, 2), v294, v8, 3);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v10.f32[0]), v365, *v10.f32, 1), v333, v10, 2), v294, v10, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v11.f32[0]), v365, *v11.f32, 1), v333, v11, 2), v294, v11, 3);
  v366 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v12.f32[0]), v365, *v12.f32, 1), v333, v12, 2), v294, v12, 3);
  v380 = v9;
  sub_10001358C(v389, 3.1067, xmmword_1000EC920);
  v13 = sub_100013568(v389);
  v421 = 1;
  *(v2 + 64) = 0x406000003FA66666;
  *(v2 + 72) = 0;
  *(v2 + 76) = 1;
  *(v2 + 77) = v426;
  *(v2 + 79) = v427;
  *(v2 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v13.n128_f32[0]), v358, v13.n128_u64[0], 1), v314, v13, 2), v366, v13, 3);
  *(v2 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v14.f32[0]), v358, *v14.f32, 1), v314, v14, 2), v366, v14, 3);
  *(v2 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v15.f32[0]), v358, *v15.f32, 1), v314, v15, 2), v366, v15, 3);
  *(v2 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v16.f32[0]), v358, *v16.f32, 1), v314, v16, 2), v366, v16, 3);
  *(v2 + 144) = xmmword_1000F0570;
  *(v2 + 160) = 0;
  v17 = v424;
  *(v2 + 163) = v425;
  *(v2 + 161) = v17;
  *(v2 + 164) = 1114636288;
  *(v2 + 168) = 3;
  *(v2 + 169) = v422;
  *(v2 + 171) = v423;
  *(v2 + 172) = 1067869798;
  *(v2 + 192) = 0;
  *(v2 + 176) = 0u;
  *(v2 + 200) = v421;
  *(v2 + 201) = 0;
  *(v2 + 203) = 1;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  v18 = xmmword_10013DCA0;
  v19 = *algn_10013DCB0;
  v20 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v2 + 240) = 0;
  *(v2 + 244) = 1065353216;
  v21 = vmulq_f32(v18, vdupq_n_s32(0x3FA7AE14u));
  v22 = v18;
  v23 = xmmword_10013DCC0;
  v24 = xmmword_10013DCD0;
  v359 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v22, 0, v19), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 256) = xmmword_1000EF5A0;
  *(v2 + 272) = 0;
  v295 = vmlaq_f32(vaddq_f32(v23, vmlaq_f32(v20, 0, v19)), 0, v24);
  v315 = vmlaq_f32(vmlaq_f32(vaddq_f32(v19, v20), 0, v23), 0, v24);
  __asm { FMOV            V2.4S, #0.75 }

  v263 = vaddq_f32(v24, vmlaq_f32(vmlaq_f32(v21, _Q2, v19), vdupq_n_s32(0x3E428F5Cu), v23));
  sub_10001358C(v390, -1.9373, xmmword_1000EC910);
  v30 = sub_100013568(v390);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v30.n128_f32[0]), v315, v30.n128_u64[0], 1), v295, v30, 2), v263, v30, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v31.f32[0]), v315, *v31.f32, 1), v295, v31, 2), v263, v31, 3);
  v277 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v32.f32[0]), v315, *v32.f32, 1), v295, v32, 2), v263, v32, 3);
  v264 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v33.f32[0]), v315, *v33.f32, 1), v295, v33, 2), v263, v33, 3);
  sub_10001358C(v391, -2.3911, xmmword_1000EC8E0);
  v34 = sub_100013568(v391);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v35.f32[0]), v334, *v35.f32, 1), v277, v35, 2), v264, v35, 3);
  v296 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v36.f32[0]), v334, *v36.f32, 1), v277, v36, 2), v264, v36, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v34.n128_f32[0]), v334, v34.n128_u64[0], 1), v277, v34, 2), v264, v34, 3);
  v368 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v37.f32[0]), v334, *v37.f32, 1), v277, v37, 2), v264, v37, 3);
  sub_10001358C(v392, -0.034907, xmmword_1000EC920);
  v38 = sub_100013568(v392);
  v428 = 1;
  *(v2 + 288) = 0x3F63D70A3F3D70A4;
  *(v2 + 296) = 1008981770;
  *(v2 + 300) = 1;
  *(v2 + 301) = v433;
  *(v2 + 303) = v434;
  *(v2 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v38.n128_f32[0]), v316, v38.n128_u64[0], 1), v296, v38, 2), v368, v38, 3);
  *(v2 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v39.f32[0]), v316, *v39.f32, 1), v296, v39, 2), v368, v39, 3);
  *(v2 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v40.f32[0]), v316, *v40.f32, 1), v296, v40, 2), v368, v40, 3);
  *(v2 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v41.f32[0]), v316, *v41.f32, 1), v296, v41, 2), v368, v41, 3);
  *(v2 + 368) = xmmword_1000F0580;
  *(v2 + 384) = 1;
  v42 = v431;
  *(v2 + 387) = v432;
  *(v2 + 385) = v42;
  *(v2 + 388) = 1075419546;
  *(v2 + 392) = 11;
  *(v2 + 393) = v429;
  *(v2 + 395) = v430;
  *(v2 + 396) = 1065353216;
  *(v2 + 416) = 0;
  *(v2 + 400) = 0u;
  *(v2 + 424) = v428;
  *(v2 + 425) = 0;
  *(v2 + 427) = 1;
  *(v2 + 432) = 0u;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0;
  *(v2 + 468) = 1065353216;
  *(v2 + 480) = xmmword_1000EF5A0;
  v43 = *algn_10013DCB0;
  v44 = vmulq_f32(xmmword_10013DCA0, 0);
  v45 = xmmword_10013DCC0;
  v46 = xmmword_10013DCD0;
  v47 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE3D70A4));
  v361 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 496) = 2;
  v317 = vmlaq_f32(vmlaq_f32(vaddq_f32(v43, v44), 0, v45), 0, v46);
  v278 = vmlaq_f32(vaddq_f32(v45, vmlaq_f32(v44, 0, v43)), 0, v46);
  v265 = vaddq_f32(v46, vmlaq_f32(vmlaq_f32(v47, 0, v43), vdupq_n_s32(0x3EF8D4FCu), v45));
  sub_10001358C(v393, 4.7124, xmmword_1000EC910);
  v48 = sub_100013568(v393);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v48.n128_f32[0]), v317, v48.n128_u64[0], 1), v278, v48, 2), v265, v48, 3);
  v335 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v49.f32[0]), v317, *v49.f32, 1), v278, v49, 2), v265, v49, 3);
  v297 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v50.f32[0]), v317, *v50.f32, 1), v278, v50, 2), v265, v50, 3);
  v266 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v51.f32[0]), v317, *v51.f32, 1), v278, v51, 2), v265, v51, 3);
  sub_10001358C(v394, 1.0036, xmmword_1000EC8E0);
  v52 = sub_100013568(v394);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v53.f32[0]), v335, *v53.f32, 1), v297, v53, 2), v266, v53, 3);
  v279 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v54.f32[0]), v335, *v54.f32, 1), v297, v54, 2), v266, v54, 3);
  v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v52.n128_f32[0]), v335, v52.n128_u64[0], 1), v297, v52, 2), v266, v52, 3);
  v370 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v55.f32[0]), v335, *v55.f32, 1), v297, v55, 2), v266, v55, 3);
  sub_10001358C(v395, -1.5708, xmmword_1000EC920);
  v56 = sub_100013568(v395);
  v435 = 1;
  *(v2 + 512) = 0x3F8CCCCD3FF33333;
  *(v2 + 520) = 1050253722;
  *(v2 + 524) = 1;
  *(v2 + 525) = v440;
  *(v2 + 527) = v441;
  *(v2 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v56.n128_f32[0]), v318, v56.n128_u64[0], 1), v279, v56, 2), v370, v56, 3);
  *(v2 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v57.f32[0]), v318, *v57.f32, 1), v279, v57, 2), v370, v57, 3);
  *(v2 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v58.f32[0]), v318, *v58.f32, 1), v279, v58, 2), v370, v58, 3);
  *(v2 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v59.f32[0]), v318, *v59.f32, 1), v279, v59, 2), v370, v59, 3);
  *(v2 + 592) = xmmword_1000EC900;
  *(v2 + 608) = 0;
  v60 = v438;
  *(v2 + 611) = v439;
  *(v2 + 609) = v60;
  *(v2 + 612) = 1075000115;
  *(v2 + 616) = 13;
  *(v2 + 617) = v436;
  *(v2 + 619) = v437;
  *(v2 + 620) = 1065353216;
  *(v2 + 640) = 0;
  *(v2 + 624) = 0u;
  *(v2 + 648) = v435;
  *(v2 + 649) = 0;
  *(v2 + 651) = 0;
  *(v2 + 656) = 0u;
  *(v2 + 672) = 0u;
  *(v2 + 688) = 0x4001EB85BE570A3DLL;
  *(v2 + 704) = xmmword_1000EF5A0;
  v61 = *algn_10013DCB0;
  v62 = vmulq_f32(xmmword_10013DCA0, 0);
  v63 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3DC49BA6u));
  v64 = xmmword_10013DCC0;
  v65 = xmmword_10013DCD0;
  v336 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v66 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v62), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 720) = 1;
  v280 = vmlaq_f32(vaddq_f32(v64, vmlaq_f32(v62, 0, v61)), 0, v65);
  v298 = v66;
  v252 = vaddq_f32(v65, vmlaq_f32(vmlaq_f32(v63, vdupq_n_s32(0x3FA74BC7u), v61), vdupq_n_s32(0xBE2E1478), v64));
  sub_10001358C(v396, 4.0143, xmmword_1000EC910);
  v67 = sub_100013568(v396);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v336, v67.n128_f32[0]), v298, v67.n128_u64[0], 1), v280, v67, 2), v252, v67, 3);
  v319 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v336, v68.f32[0]), v298, *v68.f32, 1), v280, v68, 2), v252, v68, 3);
  v267 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v336, v69.f32[0]), v298, *v69.f32, 1), v280, v69, 2), v252, v69, 3);
  v253 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v336, v70.f32[0]), v298, *v70.f32, 1), v280, v70, 2), v252, v70, 3);
  sub_10001358C(v397, -2.3387, xmmword_1000EC8E0);
  v71 = sub_100013568(v397);
  v337 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v71.n128_f32[0]), v319, v71.n128_u64[0], 1), v267, v71, 2), v253, v71, 3);
  v299 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v72.f32[0]), v319, *v72.f32, 1), v267, v72, 2), v253, v72, 3);
  v281 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v73.f32[0]), v319, *v73.f32, 1), v267, v73, 2), v253, v73, 3);
  v364 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v74.f32[0]), v319, *v74.f32, 1), v267, v74, 2), v253, v74, 3);
  sub_10001358C(v398, 0.9704, xmmword_1000EC920);
  v75 = sub_100013568(v398);
  v442 = 1;
  *(v2 + 736) = 0x3FAD70A43FDE353FLL;
  *(v2 + 744) = 1036831949;
  *(v2 + 748) = 1;
  *(v2 + 749) = v447;
  *(v2 + 751) = v448;
  *(v2 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v75.n128_f32[0]), v299, v75.n128_u64[0], 1), v281, v75, 2), v364, v75, 3);
  *(v2 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v76.f32[0]), v299, *v76.f32, 1), v281, v76, 2), v364, v76, 3);
  *(v2 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v77.f32[0]), v299, *v77.f32, 1), v281, v77, 2), v364, v77, 3);
  *(v2 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v78.f32[0]), v299, *v78.f32, 1), v281, v78, 2), v364, v78, 3);
  *(v2 + 816) = xmmword_1000EC900;
  *(v2 + 832) = 0;
  v79 = v445;
  *(v2 + 835) = v446;
  *(v2 + 833) = v79;
  *(v2 + 836) = 1062501089;
  *(v2 + 840) = 13;
  *(v2 + 841) = v443;
  *(v2 + 843) = v444;
  *(v2 + 844) = 1065353216;
  *(v2 + 848) = 0;
  *(v2 + 856) = 0u;
  *(v2 + 872) = v442;
  *(v2 + 873) = 0;
  *(v2 + 875) = 0;
  *(v2 + 912) = 0;
  *(v2 + 880) = 0u;
  *(v2 + 896) = 0u;
  *(v2 + 916) = 1065353216;
  *(v2 + 928) = xmmword_1000EF5C0;
  v80 = *algn_10013DCB0;
  v81 = vmulq_f32(xmmword_10013DCA0, 0);
  v82 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC04EB852));
  v83 = xmmword_10013DCC0;
  v84 = xmmword_10013DCD0;
  v300 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v85 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v81), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 944) = 1;
  v268 = vmlaq_f32(vaddq_f32(v83, vmlaq_f32(v81, 0, v80)), 0, v84);
  v282 = v85;
  v243 = vaddq_f32(v84, vmlaq_f32(vmlaq_f32(v82, vdupq_n_s32(0x4076F9DBu), v80), vdupq_n_s32(0xC0121CAC), v83));
  sub_10001358C(v399, -0.87965, xmmword_1000EC910);
  v86 = sub_100013568(v399);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v300, v87.f32[0]), v282, *v87.f32, 1), v268, v87, 2), v243, v87, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v300, v86.n128_f32[0]), v282, v86.n128_u64[0], 1), v268, v86, 2), v243, v86, 3);
  v254 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v300, v88.f32[0]), v282, *v88.f32, 1), v268, v88, 2), v243, v88, 3);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v300, v89.f32[0]), v282, *v89.f32, 1), v268, v89, 2), v243, v89, 3);
  sub_10001358C(v400, -0.76445, xmmword_1000EC8E0);
  v90 = sub_100013568(v400);
  v449 = 1;
  *(v2 + 960) = 0x3FAF5C293FAE147BLL;
  *(v2 + 968) = 1036831949;
  *(v2 + 972) = 1;
  *(v2 + 973) = v454;
  *(v2 + 975) = v455;
  *(v2 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v90.n128_f32[0]), v320, v90.n128_u64[0], 1), v254, v90, 2), v301, v90, 3);
  *(v2 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v91.f32[0]), v320, *v91.f32, 1), v254, v91, 2), v301, v91, 3);
  *(v2 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v92.f32[0]), v320, *v92.f32, 1), v254, v92, 2), v301, v92, 3);
  *(v2 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v93.f32[0]), v320, *v93.f32, 1), v254, v93, 2), v301, v93, 3);
  *(v2 + 1040) = xmmword_1000EC900;
  *(v2 + 1056) = 0;
  v94 = v452;
  *(v2 + 1059) = v453;
  *(v2 + 1057) = v94;
  *(v2 + 1060) = 1094713344;
  *(v2 + 1064) = 12;
  *(v2 + 1065) = v450;
  *(v2 + 1067) = v451;
  *(v2 + 1068) = 1065353216;
  *(v2 + 1072) = 0;
  *(v2 + 1080) = 0u;
  *(v2 + 1096) = v449;
  *(v2 + 1097) = 0;
  *(v2 + 1099) = 0;
  *(v2 + 1136) = 0;
  *(v2 + 1120) = 0u;
  *(v2 + 1104) = 0u;
  *(v2 + 1140) = 1065353216;
  *(v2 + 1152) = xmmword_1000EF5C0;
  v95 = xmmword_10013DCA0;
  v96 = *algn_10013DCB0;
  v97 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v2 + 1168) = 9;
  v321 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v95, 0, v96), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v269 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v97, 0, v96)), 0, xmmword_10013DCD0);
  v283 = vmlaq_f32(vmlaq_f32(vaddq_f32(v96, v97), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v244 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(v95, vdupq_n_s32(0x3FBC28F5u)), vdupq_n_s32(0x4008F5C2u), v96), vdupq_n_s32(0xBFA147AE), xmmword_10013DCC0));
  sub_10001358C(v401, 1.3265, xmmword_1000EC910);
  v98 = sub_100013568(v401);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v321, v98.n128_f32[0]), v283, v98.n128_u64[0], 1), v269, v98, 2), v244, v98, 3);
  v302 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v321, v99.f32[0]), v283, *v99.f32, 1), v269, v99, 2), v244, v99, 3);
  v255 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v321, v100.f32[0]), v283, *v100.f32, 1), v269, v100, 2), v244, v100, 3);
  v245 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v321, v101.f32[0]), v283, *v101.f32, 1), v269, v101, 2), v244, v101, 3);
  sub_10001358C(v402, -0.83776, xmmword_1000EC8E0);
  v102 = sub_100013568(v402);
  v284 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v103.f32[0]), v302, *v103.f32, 1), v255, v103, 2), v245, v103, 3);
  v270 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v104.f32[0]), v302, *v104.f32, 1), v255, v104, 2), v245, v104, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v102.n128_f32[0]), v302, v102.n128_u64[0], 1), v255, v102, 2), v245, v102, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v105.f32[0]), v302, *v105.f32, 1), v255, v105, 2), v245, v105, 3);
  sub_10001358C(v403, 1.6755, xmmword_1000EC920);
  v106 = sub_100013568(v403);
  v456 = 1;
  *(v2 + 1184) = 0x4019999A40800000;
  *(v2 + 1192) = 1045220557;
  *(v2 + 1196) = 1;
  *(v2 + 1197) = v461;
  *(v2 + 1199) = v462;
  *(v2 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v322, v106.n128_f32[0]), v284, v106.n128_u64[0], 1), v270, v106, 2), v340, v106, 3);
  *(v2 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v322, v107.f32[0]), v284, *v107.f32, 1), v270, v107, 2), v340, v107, 3);
  *(v2 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v322, v108.f32[0]), v284, *v108.f32, 1), v270, v108, 2), v340, v108, 3);
  *(v2 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v322, v109.f32[0]), v284, *v109.f32, 1), v270, v109, 2), v340, v109, 3);
  *(v2 + 1264) = xmmword_1000EC900;
  *(v2 + 1280) = 0;
  v110 = v459;
  *(v2 + 1283) = v460;
  *(v2 + 1281) = v110;
  *(v2 + 1284) = 1092616192;
  *(v2 + 1288) = 6;
  *(v2 + 1289) = v457;
  *(v2 + 1291) = v458;
  *(v2 + 1292) = 1065353216;
  *(v2 + 1296) = 0;
  *(v2 + 1304) = 0u;
  *(v2 + 1320) = v456;
  *(v2 + 1321) = 1;
  *(v2 + 1323) = 1;
  *(v2 + 1360) = 0;
  v111 = *algn_10013DCB0;
  v112 = vmulq_f32(xmmword_10013DCA0, 0);
  __asm { FMOV            V3.4S, #-2.5 }

  v114 = vmulq_f32(xmmword_10013DCA0, _Q3);
  v115 = xmmword_10013DCC0;
  v116 = xmmword_10013DCD0;
  v341 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 1344) = 0u;
  *(v2 + 1328) = 0u;
  v303 = vmlaq_f32(vmlaq_f32(vaddq_f32(v111, v112), 0, v115), 0, v116);
  *(v2 + 1364) = 1065353216;
  *(v2 + 1376) = xmmword_1000EF5A0;
  v285 = vmlaq_f32(vaddq_f32(v115, vmlaq_f32(v112, 0, v111)), 0, v116);
  v246 = vaddq_f32(v116, vmlaq_f32(vmlaq_f32(v114, vdupq_n_s32(0x40354FE0u), v111), vdupq_n_s32(0xC06147AE), v115));
  *(v2 + 1392) = 3;
  sub_10001358C(v404, -0.8587, xmmword_1000EC910);
  v117 = sub_100013568(v404);
  v323 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v117.n128_f32[0]), v303, v117.n128_u64[0], 1), v285, v117, 2), v246, v117, 3);
  v271 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v118.f32[0]), v303, *v118.f32, 1), v285, v118, 2), v246, v118, 3);
  v256 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v119.f32[0]), v303, *v119.f32, 1), v285, v119, 2), v246, v119, 3);
  v247 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v120.f32[0]), v303, *v120.f32, 1), v285, v120, 2), v246, v120, 3);
  sub_10001358C(v405, -0.76445, xmmword_1000EC8E0);
  v121 = sub_100013568(v405);
  v122 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v121.n128_f32[0]), v271, v121.n128_u64[0], 1), v256, v121, 2), v247, v121, 3);
  v304 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v123.f32[0]), v271, *v123.f32, 1), v256, v123, 2), v247, v123, 3);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v124.f32[0]), v271, *v124.f32, 1), v256, v124, 2), v247, v124, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v125.f32[0]), v271, *v125.f32, 1), v256, v125, 2), v247, v125, 3);
  v342 = v122;
  sub_10001358C(v406, 0.015184, xmmword_1000EC920);
  v126 = sub_100013568(v406);
  v463 = 1;
  *(v2 + 1408) = 0x3F8000003FD9999ALL;
  *(v2 + 1416) = 1039516303;
  *(v2 + 1420) = 1;
  *(v2 + 1421) = v468;
  *(v2 + 1423) = v469;
  *(v2 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v126.n128_f32[0]), v304, v126.n128_u64[0], 1), v286, v126, 2), v324, v126, 3);
  *(v2 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v127.f32[0]), v304, *v127.f32, 1), v286, v127, 2), v324, v127, 3);
  *(v2 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v128.f32[0]), v304, *v128.f32, 1), v286, v128, 2), v324, v128, 3);
  *(v2 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v129.f32[0]), v304, *v129.f32, 1), v286, v129, 2), v324, v129, 3);
  *(v2 + 1488) = xmmword_1000EC900;
  *(v2 + 1504) = 0;
  v130 = v466;
  *(v2 + 1507) = v467;
  *(v2 + 1505) = v130;
  *(v2 + 1508) = 1092616192;
  *(v2 + 1512) = 12;
  *(v2 + 1513) = v464;
  *(v2 + 1515) = v465;
  *(v2 + 1516) = 1065353216;
  *(v2 + 1520) = 0;
  *(v2 + 1528) = 0u;
  *(v2 + 1544) = v463;
  *(v2 + 1545) = 1;
  *(v2 + 1547) = 0;
  *(v2 + 1584) = 0;
  *(v2 + 1568) = 0u;
  *(v2 + 1552) = 0u;
  *(v2 + 1588) = 1065353216;
  *(v2 + 1600) = xmmword_1000EF5A0;
  v131 = xmmword_10013DCA0;
  v132 = *algn_10013DCB0;
  v133 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v2 + 1616) = 4;
  v325 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v131, 0, v132), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v272 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v133, 0, v132)), 0, xmmword_10013DCD0);
  v287 = vmlaq_f32(vmlaq_f32(vaddq_f32(v132, v133), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v248 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(v131, vdupq_n_s32(0x3E2B020Cu)), vdupq_n_s32(0x3F378D50u), v132), vdupq_n_s32(0xBE99999A), xmmword_10013DCC0));
  sub_10001358C(v407, 1.5708, xmmword_1000EC910);
  v134 = sub_100013568(v407);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v134.n128_f32[0]), v287, v134.n128_u64[0], 1), v272, v134, 2), v248, v134, 3);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v135.f32[0]), v287, *v135.f32, 1), v272, v135, 2), v248, v135, 3);
  v257 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v136.f32[0]), v287, *v136.f32, 1), v272, v136, 2), v248, v136, 3);
  v249 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v137.f32[0]), v287, *v137.f32, 1), v272, v137, 2), v248, v137, 3);
  sub_10001358C(v408, -0.82903, xmmword_1000EC8E0);
  v138 = sub_100013568(v408);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v139.f32[0]), v305, *v139.f32, 1), v257, v139, 2), v249, v139, 3);
  v273 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v140.f32[0]), v305, *v140.f32, 1), v257, v140, 2), v249, v140, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v138.n128_f32[0]), v305, v138.n128_u64[0], 1), v257, v138, 2), v249, v138, 3);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v141.f32[0]), v305, *v141.f32, 1), v257, v141, 2), v249, v141, 3);
  sub_10001358C(v409, 1.5708, xmmword_1000EC920);
  v142 = sub_100013568(v409);
  v470 = 1;
  *(v2 + 1632) = 0x40A0000040A00000;
  *(v2 + 1640) = 1045220557;
  *(v2 + 1644) = 1;
  *(v2 + 1645) = v475;
  *(v2 + 1647) = v476;
  *(v2 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v326, v142.n128_f32[0]), v288, v142.n128_u64[0], 1), v273, v142, 2), v344, v142, 3);
  *(v2 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v326, v143.f32[0]), v288, *v143.f32, 1), v273, v143, 2), v344, v143, 3);
  *(v2 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v326, v144.f32[0]), v288, *v144.f32, 1), v273, v144, 2), v344, v144, 3);
  *(v2 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v326, v145.f32[0]), v288, *v145.f32, 1), v273, v145, 2), v344, v145, 3);
  *(v2 + 1712) = xmmword_1000EC900;
  *(v2 + 1728) = 0;
  v146 = v473;
  *(v2 + 1731) = v474;
  *(v2 + 1729) = v146;
  *(v2 + 1732) = 1065353216;
  *(v2 + 1736) = 9;
  *(v2 + 1737) = v471;
  *(v2 + 1739) = v472;
  *(v2 + 1740) = 1065353216;
  *(v2 + 1744) = 0;
  *(v2 + 1752) = 0u;
  *(v2 + 1768) = v470;
  *(v2 + 1769) = 1;
  *(v2 + 1771) = 0;
  *(v2 + 1792) = 0u;
  *(v2 + 1776) = 0u;
  *(v2 + 1808) = 0x403B13B2BE051EB8;
  *(v2 + 1824) = xmmword_1000EF630;
  v147 = *algn_10013DCB0;
  v148 = vmulq_f32(xmmword_10013DCA0, 0);
  v149 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC03C28F5));
  v150 = xmmword_10013DCC0;
  v151 = xmmword_10013DCD0;
  v345 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v152 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v148), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 1840) = 9;
  v289 = vmlaq_f32(vaddq_f32(v150, vmlaq_f32(v148, 0, v147)), 0, v151);
  v306 = v152;
  v258 = vaddq_f32(v151, vmlaq_f32(vmlaq_f32(v149, vdupq_n_s32(0x4071EB85u), v147), vdupq_n_s32(0x405E147Bu), v150));
  sub_10001358C(v410, -1.2217, xmmword_1000EC910);
  v153 = sub_100013568(v410);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v153.n128_f32[0]), v306, v153.n128_u64[0], 1), v289, v153, 2), v258, v153, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v154.f32[0]), v306, *v154.f32, 1), v289, v154, 2), v258, v154, 3);
  v274 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v155.f32[0]), v306, *v155.f32, 1), v289, v155, 2), v258, v155, 3);
  v259 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v156.f32[0]), v306, *v156.f32, 1), v289, v156, 2), v258, v156, 3);
  sub_10001358C(v411, -0.68068, xmmword_1000EC8E0);
  v157 = sub_100013568(v411);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v157.n128_f32[0]), v327, v157.n128_u64[0], 1), v274, v157, 2), v259, v157, 3);
  v307 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v158.f32[0]), v327, *v158.f32, 1), v274, v158, 2), v259, v158, 3);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v159.f32[0]), v327, *v159.f32, 1), v274, v159, 2), v259, v159, 3);
  v372 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v160.f32[0]), v327, *v160.f32, 1), v274, v160, 2), v259, v160, 3);
  sub_10001358C(v412, -0.27925, xmmword_1000EC920);
  v161 = sub_100013568(v412);
  v477 = 1;
  *(v2 + 1856) = 0x4070A3D73F28F5C3;
  *(v2 + 1864) = 1014350479;
  *(v2 + 1868) = 1;
  *(v2 + 1869) = v482;
  *(v2 + 1871) = v483;
  *(v2 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v161.n128_f32[0]), v307, v161.n128_u64[0], 1), v290, v161, 2), v372, v161, 3);
  *(v2 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v162.f32[0]), v307, *v162.f32, 1), v290, v162, 2), v372, v162, 3);
  *(v2 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v163.f32[0]), v307, *v163.f32, 1), v290, v163, 2), v372, v163, 3);
  *(v2 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v164.f32[0]), v307, *v164.f32, 1), v290, v164, 2), v372, v164, 3);
  *(v2 + 1936) = xmmword_1000F0590;
  *(v2 + 1952) = 1;
  v165 = v480;
  *(v2 + 1955) = v481;
  *(v2 + 1953) = v165;
  *(v2 + 1956) = 1082130432;
  *(v2 + 1960) = 8;
  *(v2 + 1961) = v478;
  *(v2 + 1963) = v479;
  *(v2 + 1964) = 1067030938;
  *(v2 + 1968) = 0;
  *(v2 + 1976) = 0u;
  *(v2 + 1992) = v477;
  *(v2 + 1993) = 3;
  *(v2 + 1995) = 1;
  *(v2 + 2032) = 0;
  *(v2 + 2016) = 0u;
  *(v2 + 2000) = 0u;
  *(v2 + 2036) = 1065353216;
  *(v2 + 2048) = xmmword_1000EF5A0;
  v166 = *algn_10013DCB0;
  v167 = vmulq_f32(xmmword_10013DCA0, 0);
  v168 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD1EB85u));
  v169 = xmmword_10013DCC0;
  v170 = xmmword_10013DCD0;
  v373 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v171 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v167), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 2064) = 5;
  v328 = vmlaq_f32(vaddq_f32(v169, vmlaq_f32(v167, 0, v166)), 0, v170);
  v347 = v171;
  v308 = vaddq_f32(v170, vmlaq_f32(vmlaq_f32(v168, vdupq_n_s32(0xC00EB852), v166), vdupq_n_s32(0x40047AE1u), v169));
  sub_10001358C(v413, 0.53407, xmmword_1000EC8E0);
  v172 = sub_100013568(v413);
  v484 = 1;
  *(v2 + 2080) = 0x405333334019999ALL;
  *(v2 + 2088) = 1053609165;
  *(v2 + 2092) = 1;
  *(v2 + 2093) = v489;
  *(v2 + 2095) = v490;
  *(v2 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v172.n128_f32[0]), v347, v172.n128_u64[0], 1), v328, v172, 2), v308, v172, 3);
  *(v2 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v173.f32[0]), v347, *v173.f32, 1), v328, v173, 2), v308, v173, 3);
  *(v2 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v174.f32[0]), v347, *v174.f32, 1), v328, v174, 2), v308, v174, 3);
  *(v2 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v175.f32[0]), v347, *v175.f32, 1), v328, v175, 2), v308, v175, 3);
  *(v2 + 2160) = xmmword_1000F05A0;
  *(v2 + 2176) = 1;
  v176 = v487;
  *(v2 + 2179) = v488;
  *(v2 + 2177) = v176;
  *(v2 + 2180) = 1097859072;
  *(v2 + 2184) = 9;
  *(v2 + 2185) = v485;
  *(v2 + 2187) = v486;
  *(v2 + 2188) = 1065353216;
  *(v2 + 2192) = 0;
  *(v2 + 2200) = 0u;
  *(v2 + 2216) = v484;
  *(v2 + 2217) = 3;
  *(v2 + 2219) = 1;
  *(v2 + 2256) = 0;
  *(v2 + 2240) = 0u;
  *(v2 + 2224) = 0u;
  *(v2 + 2260) = 1065353216;
  *(v2 + 2272) = xmmword_1000EF5C0;
  v177 = *algn_10013DCB0;
  v178 = vmulq_f32(xmmword_10013DCA0, 0);
  v179 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFC74BC7));
  v180 = xmmword_10013DCC0;
  v181 = xmmword_10013DCD0;
  v374 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v182 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v178), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 2288) = 5;
  v329 = vmlaq_f32(vaddq_f32(v180, vmlaq_f32(v178, 0, v177)), 0, v181);
  v348 = v182;
  v309 = vaddq_f32(v181, vmlaq_f32(vmlaq_f32(v179, vdupq_n_s32(0x402353F8u), v177), vdupq_n_s32(0x405D4FDFu), v180));
  sub_10001358C(v414, -0.69813, xmmword_1000EC910);
  v183 = sub_100013568(v414);
  v491 = 1;
  *(v2 + 2304) = 0x409CCCCD3FD9999ALL;
  *(v2 + 2312) = 1048576000;
  *(v2 + 2316) = 0;
  *(v2 + 2317) = v496;
  *(v2 + 2319) = v497;
  *(v2 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v183.n128_f32[0]), v348, v183.n128_u64[0], 1), v329, v183, 2), v309, v183, 3);
  *(v2 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v184.f32[0]), v348, *v184.f32, 1), v329, v184, 2), v309, v184, 3);
  *(v2 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v185.f32[0]), v348, *v185.f32, 1), v329, v185, 2), v309, v185, 3);
  *(v2 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v186.f32[0]), v348, *v186.f32, 1), v329, v186, 2), v309, v186, 3);
  *(v2 + 2384) = xmmword_1000F05B0;
  *(v2 + 2400) = 1;
  v187 = v494;
  *(v2 + 2403) = v495;
  *(v2 + 2401) = v187;
  *(v2 + 2404) = 1100480512;
  *(v2 + 2408) = 9;
  *(v2 + 2409) = v492;
  *(v2 + 2411) = v493;
  *(v2 + 2412) = 1065353216;
  *(v2 + 2416) = 0;
  *(v2 + 2424) = 0u;
  *(v2 + 2440) = v491;
  *(v2 + 2441) = 3;
  *(v2 + 2443) = 1;
  *(v2 + 2480) = 0;
  *(v2 + 2464) = 0u;
  *(v2 + 2448) = 0u;
  *(v2 + 2484) = 1065353216;
  *(v2 + 2496) = xmmword_1000EF5A0;
  v188 = *algn_10013DCB0;
  v189 = vmulq_f32(xmmword_10013DCA0, 0);
  v190 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE6B851E));
  v191 = xmmword_10013DCC0;
  v192 = xmmword_10013DCD0;
  v330 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v291 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v189), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 2512) = 6;
  v260 = vmlaq_f32(vaddq_f32(v191, vmlaq_f32(v189, 0, v188)), 0, v192);
  v375 = vdupq_n_s32(0xBF8E147B);
  v250 = vaddq_f32(v192, vmlaq_f32(vmlaq_f32(v190, vdupq_n_s32(0x3F0CCCCDu), v188), v375, v191));
  sub_10001358C(v415, 1.5708, xmmword_1000EC910);
  v193 = sub_100013568(v415);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v330, v193.n128_f32[0]), v291, v193.n128_u64[0], 1), v260, v193, 2), v250, v193, 3);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v330, v194.f32[0]), v291, *v194.f32, 1), v260, v194, 2), v250, v194, 3);
  v275 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v330, v195.f32[0]), v291, *v195.f32, 1), v260, v195, 2), v250, v195, 3);
  v251 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v330, v196.f32[0]), v291, *v196.f32, 1), v260, v196, 2), v250, v196, 3);
  sub_10001358C(v416, -3.4034, xmmword_1000EC8E0);
  v197 = sub_100013568(v416);
  v292 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v349, v198.f32[0]), v310, *v198.f32, 1), v275, v198, 2), v251, v198, 3);
  v261 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v349, v199.f32[0]), v310, *v199.f32, 1), v275, v199, 2), v251, v199, 3);
  v331 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v349, v197.n128_f32[0]), v310, v197.n128_u64[0], 1), v275, v197, 2), v251, v197, 3);
  v350 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v349, v200.f32[0]), v310, *v200.f32, 1), v275, v200, 2), v251, v200, 3);
  sub_10001358C(v417, 1.5708, xmmword_1000EC920);
  v201 = sub_100013568(v417);
  v498 = 1;
  *(v2 + 2528) = 0x3FD9999A3FCCCCCDLL;
  *(v2 + 2536) = 1056964608;
  *(v2 + 2540) = 1;
  *(v2 + 2541) = v503;
  *(v2 + 2543) = v504;
  *(v2 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v331, v201.n128_f32[0]), v292, v201.n128_u64[0], 1), v261, v201, 2), v350, v201, 3);
  *(v2 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v331, v202.f32[0]), v292, *v202.f32, 1), v261, v202, 2), v350, v202, 3);
  *(v2 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v331, v203.f32[0]), v292, *v203.f32, 1), v261, v203, 2), v350, v203, 3);
  *(v2 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v331, v204.f32[0]), v292, *v204.f32, 1), v261, v204, 2), v350, v204, 3);
  *(v2 + 2608) = xmmword_1000F02C0;
  *(v2 + 2624) = 0;
  v205 = v501;
  *(v2 + 2627) = v502;
  *(v2 + 2625) = v205;
  *(v2 + 2628) = 1049582633;
  *(v2 + 2632) = 9;
  *(v2 + 2633) = v499;
  *(v2 + 2635) = v500;
  *(v2 + 2636) = 1065353216;
  *(v2 + 2640) = 0;
  *(v2 + 2648) = 0u;
  *(v2 + 2664) = v498;
  *(v2 + 2665) = 2;
  *(v2 + 2667) = 1;
  *(v2 + 2704) = 0;
  *(v2 + 2688) = 0u;
  *(v2 + 2672) = 0u;
  *(v2 + 2708) = 1065353216;
  *(v2 + 2720) = xmmword_1000EF5C0;
  v206 = *algn_10013DCB0;
  v207 = vmulq_f32(xmmword_10013DCA0, 0);
  v208 = xmmword_10013DCC0;
  v209 = xmmword_10013DCD0;
  v210 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBECCCCCC));
  v311 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 2736) = 6;
  v276 = vmlaq_f32(vmlaq_f32(vaddq_f32(v206, v207), 0, v208), 0, v209);
  v262 = vmlaq_f32(vaddq_f32(v208, vmlaq_f32(v207, 0, v206)), 0, v209);
  v376 = vaddq_f32(v209, vmlaq_f32(vmlaq_f32(v210, vdupq_n_s32(0xBF51EB85), v206), v375, v208));
  sub_10001358C(v418, 1.5708, xmmword_1000EC910);
  v211 = sub_100013568(v418);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v311, v212.f32[0]), v276, *v212.f32, 1), v262, v212, 2), v376, v212, 3);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v311, v211.n128_f32[0]), v276, v211.n128_u64[0], 1), v262, v211, 2), v376, v211, 3);
  v293 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v311, v213.f32[0]), v276, *v213.f32, 1), v262, v213, 2), v376, v213, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v311, v214.f32[0]), v276, *v214.f32, 1), v262, v214, 2), v376, v214, 3);
  sub_10001358C(v419, -2.2864, xmmword_1000EC8E0);
  v215 = sub_100013568(v419);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v216.f32[0]), v332, *v216.f32, 1), v293, v216, 2), v312, v216, 3);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v215.n128_f32[0]), v332, v215.n128_u64[0], 1), v293, v215, 2), v312, v215, 3);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v217.f32[0]), v332, *v217.f32, 1), v293, v217, 2), v312, v217, 3);
  v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v218.f32[0]), v332, *v218.f32, 1), v293, v218, 2), v312, v218, 3);
  sub_10001358C(v420, 1.5708, xmmword_1000EC920);
  v219 = sub_100013568(v420);
  v505 = 1;
  *(v2 + 2752) = 0x3F4CCCCD3FEA3D71;
  *(v2 + 2760) = 1065353216;
  *(v2 + 2764) = 1;
  *(v2 + 2765) = v510;
  *(v2 + 2767) = v511;
  *(v2 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v219.n128_f32[0]), v384, v219.n128_u64[0], 1), v377, v219, 2), v352, v219, 3);
  *(v2 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v220.f32[0]), v384, *v220.f32, 1), v377, v220, 2), v352, v220, 3);
  *(v2 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v221.f32[0]), v384, *v221.f32, 1), v377, v221, 2), v352, v221, 3);
  *(v2 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v222.f32[0]), v384, *v222.f32, 1), v377, v222, 2), v352, v222, 3);
  *(v2 + 2832) = xmmword_1000F05C0;
  *(v2 + 2848) = 0;
  v223 = v508;
  *(v2 + 2851) = v509;
  *(v2 + 2849) = v223;
  *(v2 + 2852) = 1050253722;
  *(v2 + 2856) = 9;
  *(v2 + 2857) = v506;
  *(v2 + 2859) = v507;
  *(v2 + 2860) = 1065353216;
  *(v2 + 2864) = 0;
  *(v2 + 2872) = 0u;
  *(v2 + 2888) = v505;
  *(v2 + 2889) = 2;
  *(v2 + 2891) = 1;
  *(v2 + 2928) = 0;
  *(v2 + 2912) = 0u;
  *(v2 + 2896) = 0u;
  *(v2 + 2932) = 1065353216;
  v224 = sub_1000A0774(v2);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020);
  v225 = swift_allocObject();
  v225[1] = xmmword_1000ED250;
  v225[2] = xmmword_1000F05D0;
  v225[3] = xmmword_1000F05E0;
  v225[4] = xmmword_1000F05F0;
  v226 = swift_allocObject();
  v226[1] = xmmword_1000EC880;
  v226[2] = xmmword_1000F0600;
  v226[3] = xmmword_1000F0610;
  v227 = swift_allocObject();
  v227[1] = xmmword_1000EC880;
  v227[2] = xmmword_1000F0620;
  v227[3] = xmmword_1000F0630;
  sub_1000125FC(&qword_100131028);
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_1000EC880;
  *(v228 + 32) = swift_getKeyPath();
  *(v228 + 40) = 1066695393;
  *(v228 + 44) = 0;
  *(v228 + 48) = 1068960317;
  *(v228 + 52) = 0;
  *(v228 + 56) = 0;
  *(v228 + 60) = 1;
  *(v228 + 64) = swift_getKeyPath();
  strcpy((v228 + 72), "ffƿ");
  *(v228 + 80) = -1078439444;
  *(v228 + 84) = 0;
  *(v228 + 88) = 1050253722;
  *(v228 + 92) = 1;
  sub_1000125FC(&qword_100131030);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_1000EC880;
  *(v229 + 32) = swift_getKeyPath();
  v230 = vnegq_f32(xmmword_100130FE0);
  v231 = vtrn2q_s32(xmmword_100130FE0, vtrn1q_s32(xmmword_100130FE0, v230));
  v386 = vdupq_n_s32(0x3CA3CBDBu);
  v382 = vdupq_n_s32(0xBCA3CBDB);
  v232 = vmlaq_f32(vmulq_f32(vextq_s8(xmmword_100130FE0, v230, 8uLL), v386), v382, vextq_s8(v231, v231, 8uLL));
  v233 = vrev64q_s32(xmmword_100130FE0);
  v233.i32[0] = v230.i32[1];
  v233.i32[3] = v230.i32[2];
  v378 = vdupq_n_s32(0x3F7FE5CBu);
  v353 = vdupq_n_s32(0xB9D1AFEE);
  *(v229 + 48) = vaddq_f32(vmlaq_f32(vmulq_f32(xmmword_100130FE0, v378), v353, v233), v232);
  *(v229 + 64) = swift_getKeyPath();
  v234 = vnegq_f32(xmmword_100130FF0);
  v235 = vtrn2q_s32(xmmword_100130FF0, vtrn1q_s32(xmmword_100130FF0, v234));
  v236 = vmlaq_f32(vmulq_f32(vextq_s8(xmmword_100130FF0, v234, 8uLL), v382), v386, vextq_s8(v235, v235, 8uLL));
  v237 = vrev64q_s32(xmmword_100130FF0);
  v237.i32[0] = v234.i32[1];
  v237.i32[3] = v234.i32[2];
  *(v229 + 80) = vaddq_f32(vmlaq_f32(vmulq_f32(xmmword_100130FF0, v378), v353, v237), v236);
  sub_1000125FC(&qword_100131038);
  v238 = swift_allocObject();
  *(v238 + 16) = xmmword_1000ED250;
  *(v238 + 40) = 0;
  *(v238 + 32) = 0;
  *(v238 + 48) = 9;
  *(v238 + 52) = 0;
  *(v238 + 56) = 1;
  *(v238 + 60) = 0;
  *(v238 + 64) = 1;
  *(v238 + 68) = 1036831949;
  *(v238 + 72) = 1;
  *(v238 + 80) = xmmword_1000EF5A0;
  *(v238 + 96) = 0;
  *(v238 + 100) = 0;
  *(v238 + 104) = 1;
  *(v238 + 108) = 0;
  *(v238 + 112) = 1;
  *(v238 + 116) = 1036831949;
  *(v238 + 120) = 1;
  *(v238 + 128) = xmmword_1000EF5C0;
  *(v238 + 144) = 9;
  *(v238 + 148) = 0;
  *(v238 + 152) = 1;
  *(v238 + 156) = 0;
  *(v238 + 160) = 1;
  *(v238 + 164) = 1053273620;
  *(v238 + 168) = 1;
  v386.i64[0] = sub_1000A092C(v238);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131040);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v239 = sub_1000A0A98(_swiftEmptyArrayStorage);
  swift_bridgeObjectRetain_n();
  v240 = sub_1000C1928(v224);

  sub_1000C53DC(v240, v514);
  v241 = sub_1000C199C(v224);

  sub_1000C53DC(v241, v512);
  xmmword_10013BAD0 = xmmword_1000F0640;
  unk_10013BAE0 = v356;
  qword_10013BAF0 = 0x3E27EF9E3FC33333;
  dword_10013BAF8 = 1004888130;
  xmmword_10013BB00 = xmmword_1000F0650;
  unk_10013BB10 = v355;
  qword_10013BB20 = 0x3E8624DD400CBC6ALL;
  dword_10013BB28 = 1004888130;
  xmmword_10013BB30 = v354;
  qword_10013BB40 = v0;
  xmmword_10013BB50 = xmmword_1000F0660;
  qword_10013BB60 = 0x3CA3D70A40266666;
  dword_10013BB68 = 1000593162;
  dword_10013BB6C = v1;
  dword_10013BB70 = 1092565546;
  qword_10013BB78 = 0x3E2E147BBC23D70ALL;
  qword_10013BB80 = v224;
  qword_10013BBA8 = v515;
  unk_10013BB98 = v514[1];
  unk_10013BB88 = v514[0];
  xmmword_10013BBB0 = v512[0];
  unk_10013BBC0 = v512[1];
  qword_10013BBD0 = v513;
  qword_10013BBD8 = sub_100057EAC;
  qword_10013BBE0 = 0;
  xmmword_10013BBF0 = xmmword_1000F0670;
  unk_10013BC00 = xmmword_1000F0680;
  qword_10013BC10 = v225;
  word_10013BC1C = 3;
  dword_10013BC18 = 0;
  xmmword_10013BC20 = xmmword_1000EFB10;
  qword_10013BC30 = v226;
  xmmword_10013BC38 = xmmword_1000F0690;
  xmmword_10013BC48 = xmmword_1000F06A0;
  qword_10013BC58 = 1062589910;
  unk_10013BC60 = v227;
  xmmword_10013BC68 = xmmword_1000F06B0;
  xmmword_10013BC78 = xmmword_1000F06C0;
  qword_10013BC88 = 1063774184;
  xmmword_10013BC90 = xmmword_1000F06D0;
  qword_10013BCA0 = v228;
  unk_10013BCA8 = v229;
  qword_10013BCB0 = v386.i64[0];
  unk_10013BCB8 = v239;
  qword_10013BCC0 = _swiftEmptyArrayStorage;
  unk_10013BCC8 = _swiftEmptyArrayStorage;
  result = 46976199.9;
  qword_10013BCD0 = 0x418666663F000000;
  return result;
}

double sub_100057EAC()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  *v0.i64 = qword_10013AB58();
  *&result = vmulq_f32(v0, vdupq_n_s32(0x3ECCCCCDu)).u64[0];
  return result;
}

double sub_100057F40()
{
  if (qword_10012F5B8 != -1)
  {
    swift_once();
  }

  v457 = unk_10013BAE0;
  v458 = xmmword_10013BAD0;
  v0 = qword_10013BAF0;
  v1 = dword_10013BAF8;
  v455 = unk_10013BB10;
  v456 = xmmword_10013BB00;
  v2 = qword_10013BB20;
  v3 = dword_10013BB28;
  v4 = qword_10013BB40;
  v453 = xmmword_10013BB50;
  v454 = xmmword_10013BB30;
  v451 = *&dword_10013BB68;
  v452 = qword_10013BB60;
  v450 = dword_10013BB70;
  v449 = qword_10013BB78;
  sub_1000125FC(&qword_100131010);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000EF590;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v6 = vdupq_n_s32(0x3FBD70A4u);
  v7 = vmulq_f32(xmmword_10013DCA0, 0);
  v482 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v476 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v7), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v459 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v7, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v410 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v6), v6, *algn_10013DCB0), vdupq_n_s32(0x3DE147AEu), xmmword_10013DCC0));
  sub_10001358C(v491, 1.2043, xmmword_1000EC910);
  v8 = sub_100013568(v491);
  v481 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v482, v8.n128_f32[0]), v476, v8.n128_u64[0], 1), v459, v8, 2), v410, v8, 3);
  v470 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v482, v9.f32[0]), v476, *v9.f32, 1), v459, v9, 2), v410, v9, 3);
  v436 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v482, v10.f32[0]), v476, *v10.f32, 1), v459, v10, 2), v410, v10, 3);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v482, v11.f32[0]), v476, *v11.f32, 1), v459, v11, 2), v410, v11, 3);
  sub_10001358C(v492, -0.75049, xmmword_1000EC8E0);
  v12 = sub_100013568(v492);
  v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v12.n128_f32[0]), v470, v12.n128_u64[0], 1), v436, v12, 2), v385, v12, 3);
  v460 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v14.f32[0]), v470, *v14.f32, 1), v436, v14, 2), v385, v14, 3);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v15.f32[0]), v470, *v15.f32, 1), v436, v15, 2), v385, v15, 3);
  v471 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v16.f32[0]), v470, *v16.f32, 1), v436, v16, 2), v385, v16, 3);
  v477 = v13;
  sub_10001358C(v493, 3.1067, xmmword_1000EC920);
  v17 = sub_100013568(v493);
  v536 = 1;
  *(v5 + 64) = 0x4059999A3FCCCCCDLL;
  *(v5 + 72) = 1039516303;
  *(v5 + 76) = 1;
  *(v5 + 77) = v541;
  *(v5 + 79) = v542;
  *(v5 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v17.n128_f32[0]), v460, v17.n128_u64[0], 1), v411, v17, 2), v471, v17, 3);
  *(v5 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v18.f32[0]), v460, *v18.f32, 1), v411, v18, 2), v471, v18, 3);
  *(v5 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v19.f32[0]), v460, *v19.f32, 1), v411, v19, 2), v471, v19, 3);
  *(v5 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v20.f32[0]), v460, *v20.f32, 1), v411, v20, 2), v471, v20, 3);
  *(v5 + 144) = xmmword_1000EC900;
  *(v5 + 160) = 0;
  v21 = v539;
  *(v5 + 163) = v540;
  *(v5 + 161) = v21;
  *(v5 + 164) = 1104150528;
  *(v5 + 168) = 3;
  *(v5 + 169) = v537;
  *(v5 + 171) = v538;
  *(v5 + 172) = 1059313418;
  *(v5 + 192) = 0;
  *(v5 + 176) = 0u;
  *(v5 + 200) = v536;
  *(v5 + 201) = 0;
  *(v5 + 203) = 1;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  v22 = *algn_10013DCB0;
  v23 = vmulq_f32(xmmword_10013DCA0, 0);
  v24 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEDC28F5));
  v25 = xmmword_10013DCC0;
  v26 = xmmword_10013DCD0;
  v27 = vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0);
  *(v5 + 240) = 0;
  *(v5 + 244) = 1065353216;
  v437 = vmlaq_f32(v27, 0, v26);
  *(v5 + 256) = xmmword_1000EF5A0;
  *(v5 + 272) = 9;
  v363 = vmlaq_f32(vaddq_f32(v25, vmlaq_f32(v23, 0, v22)), 0, v26);
  v386 = vmlaq_f32(vmlaq_f32(vaddq_f32(v22, v23), 0, v25), 0, v26);
  v320 = vaddq_f32(v26, vmlaq_f32(vmlaq_f32(v24, vdupq_n_s32(0xBEA3D70A), v22), vdupq_n_s32(0xBEF0A3D7), v25));
  sub_10001358C(v494, 0.0, xmmword_1000EC910);
  v28 = sub_100013568(v494);
  v472 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v28.n128_f32[0]), v386, v28.n128_u64[0], 1), v363, v28, 2), v320, v28, 3);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v29.f32[0]), v386, *v29.f32, 1), v363, v29, 2), v320, v29, 3);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v30.f32[0]), v386, *v30.f32, 1), v363, v30, 2), v320, v30, 3);
  v321 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v31.f32[0]), v386, *v31.f32, 1), v363, v31, 2), v320, v31, 3);
  sub_10001358C(v495, 0.0, xmmword_1000EC8E0);
  v32 = sub_100013568(v495);
  v438 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v32.n128_f32[0]), v412, v32.n128_u64[0], 1), v342, v32, 2), v321, v32, 3);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v33.f32[0]), v412, *v33.f32, 1), v342, v33, 2), v321, v33, 3);
  v364 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v34.f32[0]), v412, *v34.f32, 1), v342, v34, 2), v321, v34, 3);
  v473 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v35.f32[0]), v412, *v35.f32, 1), v342, v35, 2), v321, v35, 3);
  sub_10001358C(v496, 0.0, xmmword_1000EC920);
  v36 = sub_100013568(v496);
  v543 = 1;
  *(v5 + 288) = 0x3FE666663FE66666;
  *(v5 + 296) = 1050253722;
  *(v5 + 300) = 1;
  *(v5 + 301) = v548;
  *(v5 + 303) = v549;
  *(v5 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v36.n128_f32[0]), v387, v36.n128_u64[0], 1), v364, v36, 2), v473, v36, 3);
  *(v5 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v37.f32[0]), v387, *v37.f32, 1), v364, v37, 2), v473, v37, 3);
  *(v5 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v38.f32[0]), v387, *v38.f32, 1), v364, v38, 2), v473, v38, 3);
  *(v5 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v39.f32[0]), v387, *v39.f32, 1), v364, v39, 2), v473, v39, 3);
  *(v5 + 368) = xmmword_1000F0580;
  *(v5 + 384) = 1;
  v40 = v546;
  *(v5 + 387) = v547;
  *(v5 + 385) = v40;
  *(v5 + 388) = 1082969293;
  *(v5 + 392) = 9;
  *(v5 + 393) = v544;
  *(v5 + 395) = v545;
  *(v5 + 396) = 1065353216;
  *(v5 + 416) = 0;
  *(v5 + 400) = 0u;
  *(v5 + 424) = v543;
  *(v5 + 425) = 0;
  *(v5 + 427) = 0;
  *(v5 + 432) = 0u;
  *(v5 + 448) = 0u;
  *(v5 + 464) = 0;
  *(v5 + 468) = 1065353216;
  *(v5 + 480) = xmmword_1000EF5A0;
  v41 = *algn_10013DCB0;
  v42 = vmulq_f32(xmmword_10013DCA0, 0);
  v43 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF428F5C));
  v44 = xmmword_10013DCC0;
  v45 = xmmword_10013DCD0;
  v413 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v46 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v42), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 496) = 1;
  v343 = vmlaq_f32(vaddq_f32(v44, vmlaq_f32(v42, 0, v41)), 0, v45);
  v365 = v46;
  v306 = vaddq_f32(v45, vmlaq_f32(vmlaq_f32(v43, vdupq_n_s32(0x3F9851ECu), v41), vdupq_n_s32(0xBE947AE0), v44));
  sub_10001358C(v497, 2.0944, xmmword_1000EC910);
  v47 = sub_100013568(v497);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v47.n128_f32[0]), v365, v47.n128_u64[0], 1), v343, v47, 2), v306, v47, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v48.f32[0]), v365, *v48.f32, 1), v343, v48, 2), v306, v48, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v49.f32[0]), v365, *v49.f32, 1), v343, v49, 2), v306, v49, 3);
  v307 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v50.f32[0]), v365, *v50.f32, 1), v343, v50, 2), v306, v50, 3);
  sub_10001358C(v498, -2.6005, xmmword_1000EC8E0);
  v51 = sub_100013568(v498);
  v366 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v52.f32[0]), v388, *v52.f32, 1), v322, v52, 2), v307, v52, 3);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v53.f32[0]), v388, *v53.f32, 1), v322, v53, 2), v307, v53, 3);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v51.n128_f32[0]), v388, v51.n128_u64[0], 1), v322, v51, 2), v307, v51, 3);
  v440 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v54.f32[0]), v388, *v54.f32, 1), v322, v54, 2), v307, v54, 3);
  sub_10001358C(v499, 0.087266, xmmword_1000EC920);
  v55 = sub_100013568(v499);
  v550 = 1;
  *(v5 + 512) = 0x3F1C28F63FD9999ALL;
  *(v5 + 520) = 1041194025;
  *(v5 + 524) = 1;
  *(v5 + 525) = v555;
  *(v5 + 527) = v556;
  *(v5 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v55.n128_f32[0]), v366, v55.n128_u64[0], 1), v344, v55, 2), v440, v55, 3);
  *(v5 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v56.f32[0]), v366, *v56.f32, 1), v344, v56, 2), v440, v56, 3);
  *(v5 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v57.f32[0]), v366, *v57.f32, 1), v344, v57, 2), v440, v57, 3);
  *(v5 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v58.f32[0]), v366, *v58.f32, 1), v344, v58, 2), v440, v58, 3);
  *(v5 + 592) = xmmword_1000F0580;
  *(v5 + 608) = 1;
  v59 = v553;
  *(v5 + 611) = v554;
  *(v5 + 609) = v59;
  *(v5 + 612) = 1072064102;
  *(v5 + 616) = 13;
  *(v5 + 617) = v551;
  *(v5 + 619) = v552;
  *(v5 + 620) = 1065353216;
  *(v5 + 640) = 0;
  *(v5 + 624) = 0u;
  *(v5 + 648) = v550;
  *(v5 + 649) = 0;
  *(v5 + 651) = 0;
  *(v5 + 656) = 0u;
  *(v5 + 672) = 0u;
  *(v5 + 688) = 0;
  *(v5 + 692) = 1065353216;
  *(v5 + 704) = xmmword_1000EF5A0;
  v60 = xmmword_10013DCA0;
  v61 = *algn_10013DCB0;
  v62 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v5 + 720) = 2;
  v415 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v60, 0, v61), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v345 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v62, 0, v61)), 0, xmmword_10013DCD0);
  v367 = vmlaq_f32(vmlaq_f32(vaddq_f32(v61, v62), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v308 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(v60, vdupq_n_s32(0xBD23D70A)), vdupq_n_s32(0xBDB851EC), v61), vdupq_n_s32(0x3F199999u), xmmword_10013DCC0));
  sub_10001358C(v500, 4.7124, xmmword_1000EC910);
  v63 = sub_100013568(v500);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v63.n128_f32[0]), v367, v63.n128_u64[0], 1), v345, v63, 2), v308, v63, 3);
  v389 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v64.f32[0]), v367, *v64.f32, 1), v345, v64, 2), v308, v64, 3);
  v323 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v65.f32[0]), v367, *v65.f32, 1), v345, v65, 2), v308, v65, 3);
  v309 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v66.f32[0]), v367, *v66.f32, 1), v345, v66, 2), v308, v66, 3);
  sub_10001358C(v501, 1.0036, xmmword_1000EC8E0);
  v67 = sub_100013568(v501);
  v368 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v68.f32[0]), v389, *v68.f32, 1), v323, v68, 2), v309, v68, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v69.f32[0]), v389, *v69.f32, 1), v323, v69, 2), v309, v69, 3);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v67.n128_f32[0]), v389, v67.n128_u64[0], 1), v323, v67, 2), v309, v67, 3);
  v442 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v70.f32[0]), v389, *v70.f32, 1), v323, v70, 2), v309, v70, 3);
  sub_10001358C(v502, -1.5708, xmmword_1000EC920);
  v71 = sub_100013568(v502);
  v557 = 1;
  *(v5 + 736) = 0x3E428F5C3F8CCCCDLL;
  *(v5 + 744) = 1050253722;
  *(v5 + 748) = 1;
  *(v5 + 749) = v562;
  *(v5 + 751) = v563;
  *(v5 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v71.n128_f32[0]), v368, v71.n128_u64[0], 1), v346, v71, 2), v442, v71, 3);
  *(v5 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v72.f32[0]), v368, *v72.f32, 1), v346, v72, 2), v442, v72, 3);
  *(v5 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v73.f32[0]), v368, *v73.f32, 1), v346, v73, 2), v442, v73, 3);
  *(v5 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v74.f32[0]), v368, *v74.f32, 1), v346, v74, 2), v442, v74, 3);
  *(v5 + 816) = xmmword_1000EC900;
  *(v5 + 832) = 0;
  v75 = v560;
  *(v5 + 835) = v561;
  *(v5 + 833) = v75;
  *(v5 + 836) = 1093664768;
  *(v5 + 840) = 13;
  *(v5 + 841) = v558;
  *(v5 + 843) = v559;
  *(v5 + 844) = 1065353216;
  *(v5 + 848) = 0;
  *(v5 + 856) = 0u;
  *(v5 + 872) = v557;
  *(v5 + 873) = 0;
  *(v5 + 875) = 0;
  *(v5 + 880) = 0u;
  *(v5 + 896) = 0u;
  *(v5 + 912) = 0x3F7DAC373D656042;
  *(v5 + 928) = xmmword_1000EF5D0;
  v76 = *algn_10013DCB0;
  v77 = vmulq_f32(xmmword_10013DCA0, 0);
  v78 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F4CCCCCu));
  v79 = xmmword_10013DCC0;
  v80 = xmmword_10013DCD0;
  v390 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v81 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v77), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 944) = 1;
  v324 = vmlaq_f32(vaddq_f32(v79, vmlaq_f32(v77, 0, v76)), 0, v80);
  v347 = v81;
  v294 = vaddq_f32(v80, vmlaq_f32(vmlaq_f32(v78, vdupq_n_s32(0x3F35C28Fu), v76), vdupq_n_s32(0xBF75C28F), v79));
  sub_10001358C(v503, 2.8623, xmmword_1000EC910);
  v82 = sub_100013568(v503);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v82.n128_f32[0]), v347, v82.n128_u64[0], 1), v324, v82, 2), v294, v82, 3);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v83.f32[0]), v347, *v83.f32, 1), v324, v83, 2), v294, v83, 3);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v84.f32[0]), v347, *v84.f32, 1), v324, v84, 2), v294, v84, 3);
  v295 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v85.f32[0]), v347, *v85.f32, 1), v324, v85, 2), v294, v85, 3);
  sub_10001358C(v504, -2.3038, xmmword_1000EC8E0);
  v86 = sub_100013568(v504);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v87.f32[0]), v369, *v87.f32, 1), v310, v87, 2), v295, v87, 3);
  v325 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v88.f32[0]), v369, *v88.f32, 1), v310, v88, 2), v295, v88, 3);
  v391 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v86.n128_f32[0]), v369, v86.n128_u64[0], 1), v310, v86, 2), v295, v86, 3);
  v418 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v89.f32[0]), v369, *v89.f32, 1), v310, v89, 2), v295, v89, 3);
  sub_10001358C(v505, 0.71558, xmmword_1000EC920);
  v90 = sub_100013568(v505);
  v564 = 1;
  *(v5 + 960) = 0x3F95C28F3FA66666;
  *(v5 + 968) = 1036831949;
  *(v5 + 972) = 1;
  *(v5 + 973) = v569;
  *(v5 + 975) = v570;
  *(v5 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v90.n128_f32[0]), v348, v90.n128_u64[0], 1), v325, v90, 2), v418, v90, 3);
  *(v5 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v91.f32[0]), v348, *v91.f32, 1), v325, v91, 2), v418, v91, 3);
  *(v5 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v92.f32[0]), v348, *v92.f32, 1), v325, v92, 2), v418, v92, 3);
  *(v5 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v93.f32[0]), v348, *v93.f32, 1), v325, v93, 2), v418, v93, 3);
  *(v5 + 1040) = xmmword_1000F0580;
  *(v5 + 1056) = 1;
  v94 = v567;
  *(v5 + 1059) = v568;
  *(v5 + 1057) = v94;
  *(v5 + 1060) = 1075000115;
  *(v5 + 1064) = 13;
  *(v5 + 1065) = v565;
  *(v5 + 1067) = v566;
  *(v5 + 1068) = 1065353216;
  *(v5 + 1072) = 0;
  *(v5 + 1080) = 0u;
  *(v5 + 1096) = v564;
  *(v5 + 1097) = 0;
  *(v5 + 1099) = 0;
  *(v5 + 1136) = 0;
  v95 = *algn_10013DCB0;
  v96 = vmulq_f32(xmmword_10013DCA0, 0);
  __asm { FMOV            V3.4S, #1.75 }

  v102 = vmulq_f32(xmmword_10013DCA0, _Q3);
  v103 = xmmword_10013DCC0;
  v104 = xmmword_10013DCD0;
  v392 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 1120) = 0u;
  *(v5 + 1104) = 0u;
  v370 = vmlaq_f32(vmlaq_f32(vaddq_f32(v95, v96), 0, v103), 0, v104);
  *(v5 + 1140) = 1065353216;
  v326 = vmlaq_f32(vaddq_f32(v103, vmlaq_f32(v96, 0, v95)), 0, v104);
  *(v5 + 1152) = xmmword_1000EF5C0;
  v296 = vaddq_f32(v104, vmlaq_f32(vmlaq_f32(v102, vdupq_n_s32(0x3FE7AE14u), v95), vdupq_n_s32(0xBFA51EB8), v103));
  *(v5 + 1168) = 9;
  sub_10001358C(v506, 1.309, xmmword_1000EC910);
  v105 = sub_100013568(v506);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v105.n128_f32[0]), v370, v105.n128_u64[0], 1), v326, v105, 2), v296, v105, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v106.f32[0]), v370, *v106.f32, 1), v326, v106, 2), v296, v106, 3);
  v311 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v107.f32[0]), v370, *v107.f32, 1), v326, v107, 2), v296, v107, 3);
  v297 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v108.f32[0]), v370, *v108.f32, 1), v326, v108, 2), v296, v108, 3);
  sub_10001358C(v507, -0.80285, xmmword_1000EC8E0);
  v109 = sub_100013568(v507);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v110.f32[0]), v349, *v110.f32, 1), v311, v110, 2), v297, v110, 3);
  v393 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v109.n128_f32[0]), v349, v109.n128_u64[0], 1), v311, v109, 2), v297, v109, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v111.f32[0]), v349, *v111.f32, 1), v311, v111, 2), v297, v111, 3);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v112.f32[0]), v349, *v112.f32, 1), v311, v112, 2), v297, v112, 3);
  sub_10001358C(v508, 1.6755, xmmword_1000EC920);
  v113 = sub_100013568(v508);
  v571 = 1;
  *(v5 + 1184) = 0x402CCCCD40666666;
  *(v5 + 1192) = 1020054733;
  *(v5 + 1196) = 1;
  *(v5 + 1197) = v576;
  *(v5 + 1199) = v577;
  *(v5 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v113.n128_f32[0]), v371, v113.n128_u64[0], 1), v327, v113, 2), v420, v113, 3);
  *(v5 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v114.f32[0]), v371, *v114.f32, 1), v327, v114, 2), v420, v114, 3);
  *(v5 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v115.f32[0]), v371, *v115.f32, 1), v327, v115, 2), v420, v115, 3);
  *(v5 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v116.f32[0]), v371, *v116.f32, 1), v327, v116, 2), v420, v116, 3);
  *(v5 + 1264) = xmmword_1000EC900;
  *(v5 + 1280) = 0;
  v117 = v574;
  *(v5 + 1283) = v575;
  *(v5 + 1281) = v117;
  *(v5 + 1284) = 1069547520;
  *(v5 + 1288) = 6;
  *(v5 + 1289) = v572;
  *(v5 + 1291) = v573;
  *(v5 + 1292) = 1054615798;
  *(v5 + 1296) = 0;
  *(v5 + 1304) = 0u;
  *(v5 + 1320) = v571;
  *(v5 + 1321) = 1;
  *(v5 + 1323) = 1;
  *(v5 + 1360) = 0;
  v118 = *algn_10013DCB0;
  v119 = vmulq_f32(xmmword_10013DCA0, 0);
  v120 = xmmword_10013DCC0;
  v121 = xmmword_10013DCD0;
  v421 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 1344) = 0u;
  *(v5 + 1328) = 0u;
  v372 = vmlaq_f32(vmlaq_f32(vaddq_f32(v118, v119), 0, v120), 0, v121);
  *(v5 + 1364) = 1065353216;
  v328 = vmlaq_f32(vaddq_f32(v120, vmlaq_f32(v119, 0, v118)), 0, v121);
  *(v5 + 1376) = xmmword_1000EF7D0;
  v298 = vaddq_f32(v121, vmlaq_f32(vmlaq_f32(v119, vdupq_n_s32(0x3E4CCCCCu), v118), vdupq_n_s32(0xC0247AE1), v120));
  *(v5 + 1392) = 9;
  sub_10001358C(v509, 0.0, xmmword_1000EC910);
  v122 = sub_100013568(v509);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v122.n128_f32[0]), v372, v122.n128_u64[0], 1), v328, v122, 2), v298, v122, 3);
  v350 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v123.f32[0]), v372, *v123.f32, 1), v328, v123, 2), v298, v123, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v124.f32[0]), v372, *v124.f32, 1), v328, v124, 2), v298, v124, 3);
  v299 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v125.f32[0]), v372, *v125.f32, 1), v328, v125, 2), v298, v125, 3);
  sub_10001358C(v510, 0.0, xmmword_1000EC8E0);
  v126 = sub_100013568(v510);
  v127 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v126.n128_f32[0]), v350, v126.n128_u64[0], 1), v312, v126, 2), v299, v126, 3);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v128.f32[0]), v350, *v128.f32, 1), v312, v128, 2), v299, v128, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v129.f32[0]), v350, *v129.f32, 1), v312, v129, 2), v299, v129, 3);
  v395 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v130.f32[0]), v350, *v130.f32, 1), v312, v130, 2), v299, v130, 3);
  v422 = v127;
  sub_10001358C(v511, 0.0, xmmword_1000EC920);
  v131 = sub_100013568(v511);
  v578 = 1;
  *(v5 + 1408) = 0x3F59999A3FA66666;
  *(v5 + 1416) = 1041865114;
  *(v5 + 1420) = 1;
  *(v5 + 1421) = v583;
  *(v5 + 1423) = v584;
  *(v5 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v131.n128_f32[0]), v373, v131.n128_u64[0], 1), v329, v131, 2), v395, v131, 3);
  *(v5 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v132.f32[0]), v373, *v132.f32, 1), v329, v132, 2), v395, v132, 3);
  *(v5 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v133.f32[0]), v373, *v133.f32, 1), v329, v133, 2), v395, v133, 3);
  *(v5 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v134.f32[0]), v373, *v134.f32, 1), v329, v134, 2), v395, v134, 3);
  *(v5 + 1488) = xmmword_1000F06E0;
  *(v5 + 1504) = 0;
  v135 = v581;
  *(v5 + 1507) = v582;
  *(v5 + 1505) = v135;
  *(v5 + 1508) = 1069547520;
  *(v5 + 1512) = 9;
  *(v5 + 1513) = v579;
  *(v5 + 1515) = v580;
  *(v5 + 1516) = 1065353216;
  *(v5 + 1520) = 0;
  *(v5 + 1528) = 0u;
  *(v5 + 1544) = v578;
  *(v5 + 1545) = 1;
  *(v5 + 1547) = 1;
  *(v5 + 1584) = 0;
  *(v5 + 1568) = 0u;
  *(v5 + 1552) = 0u;
  *(v5 + 1588) = 1065353216;
  *(v5 + 1600) = xmmword_1000EF5A0;
  v136 = *algn_10013DCB0;
  v137 = vmulq_f32(xmmword_10013DCA0, 0);
  v138 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3EF0A3D7u));
  v139 = xmmword_10013DCC0;
  v140 = xmmword_10013DCD0;
  v396 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v374 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v137), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 1616) = 3;
  v330 = vmlaq_f32(vaddq_f32(v139, vmlaq_f32(v137, 0, v136)), 0, v140);
  v300 = vaddq_f32(v140, vmlaq_f32(vmlaq_f32(v138, vdupq_n_s32(0xBE199999), v136), vdupq_n_s32(0xC02F5C29), v139));
  sub_10001358C(v512, 0.64577, xmmword_1000EC910);
  v141 = sub_100013568(v512);
  v423 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v141.n128_f32[0]), v374, v141.n128_u64[0], 1), v330, v141, 2), v300, v141, 3);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v142.f32[0]), v374, *v142.f32, 1), v330, v142, 2), v300, v142, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v143.f32[0]), v374, *v143.f32, 1), v330, v143, 2), v300, v143, 3);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v144.f32[0]), v374, *v144.f32, 1), v330, v144, 2), v300, v144, 3);
  sub_10001358C(v513, 0.0, xmmword_1000EC8E0);
  v145 = sub_100013568(v513);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v146.f32[0]), v351, *v146.f32, 1), v313, v146, 2), v301, v146, 3);
  v397 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v145.n128_f32[0]), v351, v145.n128_u64[0], 1), v313, v145, 2), v301, v145, 3);
  v331 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v147.f32[0]), v351, *v147.f32, 1), v313, v147, 2), v301, v147, 3);
  v424 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v148.f32[0]), v351, *v148.f32, 1), v313, v148, 2), v301, v148, 3);
  sub_10001358C(v514, 0.0, xmmword_1000EC920);
  v149 = sub_100013568(v514);
  v585 = 1;
  *(v5 + 1632) = 0x3FF333333FCCCCCDLL;
  *(v5 + 1640) = 1053609165;
  *(v5 + 1644) = 1;
  *(v5 + 1645) = v590;
  *(v5 + 1647) = v591;
  *(v5 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v397, v149.n128_f32[0]), v375, v149.n128_u64[0], 1), v331, v149, 2), v424, v149, 3);
  *(v5 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v397, v150.f32[0]), v375, *v150.f32, 1), v331, v150, 2), v424, v150, 3);
  *(v5 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v397, v151.f32[0]), v375, *v151.f32, 1), v331, v151, 2), v424, v151, 3);
  *(v5 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v397, v152.f32[0]), v375, *v152.f32, 1), v331, v152, 2), v424, v152, 3);
  *(v5 + 1712) = xmmword_1000F06F0;
  *(v5 + 1728) = 0;
  v153 = v588;
  *(v5 + 1731) = v589;
  *(v5 + 1729) = v153;
  *(v5 + 1732) = 1075419546;
  *(v5 + 1736) = 9;
  *(v5 + 1737) = v586;
  *(v5 + 1739) = v587;
  *(v5 + 1740) = 1065353216;
  *(v5 + 1744) = 0;
  *(v5 + 1752) = 0u;
  *(v5 + 1768) = v585;
  *(v5 + 1769) = 1;
  *(v5 + 1771) = 0;
  *(v5 + 1808) = 0;
  *(v5 + 1792) = 0u;
  *(v5 + 1776) = 0u;
  *(v5 + 1812) = 1065353216;
  *(v5 + 1824) = xmmword_1000EF5C0;
  v154 = *algn_10013DCB0;
  v155 = vmulq_f32(xmmword_10013DCA0, 0);
  v156 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD99999u));
  v157 = xmmword_10013DCC0;
  v158 = xmmword_10013DCD0;
  v398 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v159 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v155), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 1840) = 3;
  v332 = vmlaq_f32(vaddq_f32(v157, vmlaq_f32(v155, 0, v154)), 0, v158);
  v352 = v159;
  v302 = vaddq_f32(v158, vmlaq_f32(vmlaq_f32(v156, vdupq_n_s32(0xBFCA3D70), v154), vdupq_n_s32(0xBFD1EB85), v157));
  sub_10001358C(v515, 0.64577, xmmword_1000EC910);
  v160 = sub_100013568(v515);
  v425 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v160.n128_f32[0]), v352, v160.n128_u64[0], 1), v332, v160, 2), v302, v160, 3);
  v376 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v161.f32[0]), v352, *v161.f32, 1), v332, v161, 2), v302, v161, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v162.f32[0]), v352, *v162.f32, 1), v332, v162, 2), v302, v162, 3);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v163.f32[0]), v352, *v163.f32, 1), v332, v163, 2), v302, v163, 3);
  sub_10001358C(v516, 0.0, xmmword_1000EC8E0);
  v164 = sub_100013568(v516);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v165.f32[0]), v376, *v165.f32, 1), v314, v165, 2), v303, v165, 3);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v166.f32[0]), v376, *v166.f32, 1), v314, v166, 2), v303, v166, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v164.n128_f32[0]), v376, v164.n128_u64[0], 1), v314, v164, 2), v303, v164, 3);
  v426 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v167.f32[0]), v376, *v167.f32, 1), v314, v167, 2), v303, v167, 3);
  sub_10001358C(v517, 0.0, xmmword_1000EC920);
  v168 = sub_100013568(v517);
  v592 = 1;
  *(v5 + 1856) = 0x3FB3333340466666;
  *(v5 + 1864) = 1049918177;
  *(v5 + 1868) = 1;
  *(v5 + 1869) = v597;
  *(v5 + 1871) = v598;
  *(v5 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v399, v168.n128_f32[0]), v353, v168.n128_u64[0], 1), v333, v168, 2), v426, v168, 3);
  *(v5 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v399, v169.f32[0]), v353, *v169.f32, 1), v333, v169, 2), v426, v169, 3);
  *(v5 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v399, v170.f32[0]), v353, *v170.f32, 1), v333, v170, 2), v426, v170, 3);
  *(v5 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v399, v171.f32[0]), v353, *v171.f32, 1), v333, v171, 2), v426, v171, 3);
  *(v5 + 1936) = xmmword_1000F0700;
  *(v5 + 1952) = 0;
  v172 = v595;
  *(v5 + 1955) = v596;
  *(v5 + 1953) = v172;
  *(v5 + 1956) = 1060320051;
  *(v5 + 1960) = 9;
  *(v5 + 1961) = v593;
  *(v5 + 1963) = v594;
  *(v5 + 1964) = 1065353216;
  *(v5 + 1968) = 0;
  *(v5 + 1976) = 0u;
  *(v5 + 1992) = v592;
  *(v5 + 1993) = 1;
  *(v5 + 1995) = 0;
  *(v5 + 2032) = 0;
  *(v5 + 2016) = 0u;
  *(v5 + 2000) = 0u;
  *(v5 + 2036) = 1065353216;
  *(v5 + 2048) = xmmword_1000EF5C0;
  v173 = *algn_10013DCB0;
  v174 = vmulq_f32(xmmword_10013DCA0, 0);
  v175 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E3851EBu));
  v176 = xmmword_10013DCC0;
  v177 = xmmword_10013DCD0;
  v400 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v178 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v174), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 2064) = 4;
  v334 = vmlaq_f32(vaddq_f32(v176, vmlaq_f32(v174, 0, v173)), 0, v177);
  v354 = v178;
  v304 = vaddq_f32(v177, vmlaq_f32(vmlaq_f32(v175, vdupq_n_s32(0x3F2147AEu), v173), vdupq_n_s32(0xBEEB851E), v176));
  sub_10001358C(v518, 1.5708, xmmword_1000EC910);
  v179 = sub_100013568(v518);
  v427 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v179.n128_f32[0]), v354, v179.n128_u64[0], 1), v334, v179, 2), v304, v179, 3);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v180.f32[0]), v354, *v180.f32, 1), v334, v180, 2), v304, v180, 3);
  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v181.f32[0]), v354, *v181.f32, 1), v334, v181, 2), v304, v181, 3);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v182.f32[0]), v354, *v182.f32, 1), v334, v182, 2), v304, v182, 3);
  sub_10001358C(v519, -0.89012, xmmword_1000EC8E0);
  v183 = sub_100013568(v519);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v184.f32[0]), v377, *v184.f32, 1), v315, v184, 2), v305, v184, 3);
  v335 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v185.f32[0]), v377, *v185.f32, 1), v315, v185, 2), v305, v185, 3);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v183.n128_f32[0]), v377, v183.n128_u64[0], 1), v315, v183, 2), v305, v183, 3);
  v428 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v186.f32[0]), v377, *v186.f32, 1), v315, v186, 2), v305, v186, 3);
  sub_10001358C(v520, 0.0, xmmword_1000EC920);
  v187 = sub_100013568(v520);
  v599 = 1;
  *(v5 + 2080) = 0x3F95C28F3F30A3D7;
  *(v5 + 2088) = 1053609165;
  *(v5 + 2092) = 1;
  *(v5 + 2093) = v604;
  *(v5 + 2095) = v605;
  *(v5 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v187.n128_f32[0]), v355, v187.n128_u64[0], 1), v335, v187, 2), v428, v187, 3);
  *(v5 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v188.f32[0]), v355, *v188.f32, 1), v335, v188, 2), v428, v188, 3);
  *(v5 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v189.f32[0]), v355, *v189.f32, 1), v335, v189, 2), v428, v189, 3);
  *(v5 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v190.f32[0]), v355, *v190.f32, 1), v335, v190, 2), v428, v190, 3);
  *(v5 + 2160) = xmmword_1000EC900;
  *(v5 + 2176) = 0;
  v191 = v602;
  *(v5 + 2179) = v603;
  *(v5 + 2177) = v191;
  *(v5 + 2180) = 1086324736;
  *(v5 + 2184) = 9;
  *(v5 + 2185) = v600;
  *(v5 + 2187) = v601;
  *(v5 + 2188) = 1065353216;
  *(v5 + 2192) = 0;
  *(v5 + 2200) = 0u;
  *(v5 + 2216) = v599;
  *(v5 + 2217) = 1;
  *(v5 + 2219) = 0;
  *(v5 + 2240) = 0u;
  *(v5 + 2224) = 0u;
  *(v5 + 2256) = 0x3ECCCCCCBC15182BLL;
  *(v5 + 2272) = xmmword_1000EF5A0;
  v192 = xmmword_10013DCA0;
  v193 = *algn_10013DCB0;
  v194 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v5 + 2288) = 5;
  v429 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v192, 0, v193), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v356 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v194, 0, v193)), 0, xmmword_10013DCD0);
  v378 = vmlaq_f32(vmlaq_f32(vaddq_f32(v193, v194), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v316 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(v192, vdupq_n_s32(0x3FD1EB85u)), vdupq_n_s32(0xC00EB852), v193), vdupq_n_s32(0x40647AE1u), xmmword_10013DCC0));
  sub_10001358C(v521, 0.0, xmmword_1000EC910);
  v195 = sub_100013568(v521);
  v461 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v195.n128_f32[0]), v378, v195.n128_u64[0], 1), v356, v195, 2), v316, v195, 3);
  v402 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v196.f32[0]), v378, *v196.f32, 1), v356, v196, 2), v316, v196, 3);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v197.f32[0]), v378, *v197.f32, 1), v356, v197, 2), v316, v197, 3);
  v317 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v198.f32[0]), v378, *v198.f32, 1), v356, v198, 2), v316, v198, 3);
  sub_10001358C(v522, 0.54105, xmmword_1000EC8E0);
  v199 = sub_100013568(v522);
  v430 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v199.n128_f32[0]), v402, v199.n128_u64[0], 1), v336, v199, 2), v317, v199, 3);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v200.f32[0]), v402, *v200.f32, 1), v336, v200, 2), v317, v200, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v201.f32[0]), v402, *v201.f32, 1), v336, v201, 2), v317, v201, 3);
  v462 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v202.f32[0]), v402, *v202.f32, 1), v336, v202, 2), v317, v202, 3);
  sub_10001358C(v523, 0.0, xmmword_1000EC920);
  v203 = sub_100013568(v523);
  v606 = 1;
  *(v5 + 2304) = 0x405333333FF33333;
  *(v5 + 2312) = 1053609165;
  *(v5 + 2316) = 1;
  *(v5 + 2317) = v611;
  *(v5 + 2319) = v612;
  *(v5 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v203.n128_f32[0]), v379, v203.n128_u64[0], 1), v357, v203, 2), v462, v203, 3);
  *(v5 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v204.f32[0]), v379, *v204.f32, 1), v357, v204, 2), v462, v204, 3);
  *(v5 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v205.f32[0]), v379, *v205.f32, 1), v357, v205, 2), v462, v205, 3);
  *(v5 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v206.f32[0]), v379, *v206.f32, 1), v357, v206, 2), v462, v206, 3);
  *(v5 + 2384) = xmmword_1000F0710;
  *(v5 + 2400) = 0;
  v207 = v609;
  *(v5 + 2403) = v610;
  *(v5 + 2401) = v207;
  *(v5 + 2404) = 1082130432;
  *(v5 + 2408) = 9;
  *(v5 + 2409) = v607;
  *(v5 + 2411) = v608;
  *(v5 + 2412) = 1065353216;
  *(v5 + 2416) = 0;
  *(v5 + 2424) = 0u;
  *(v5 + 2440) = v606;
  *(v5 + 2441) = 259;
  *(v5 + 2443) = 1;
  *(v5 + 2480) = 0;
  *(v5 + 2464) = 0u;
  *(v5 + 2448) = 0u;
  *(v5 + 2484) = 1065353216;
  *(v5 + 2496) = xmmword_1000EF5C0;
  v208 = *algn_10013DCB0;
  v209 = vmulq_f32(xmmword_10013DCA0, 0);
  v210 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFC147AE));
  v211 = xmmword_10013DCC0;
  v212 = xmmword_10013DCD0;
  v431 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v403 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v209), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 2512) = 5;
  v358 = vmlaq_f32(vaddq_f32(v211, vmlaq_f32(v209, 0, v208)), 0, v212);
  v318 = vaddq_f32(v212, vmlaq_f32(vmlaq_f32(v210, vdupq_n_s32(0x3FDC28F5u), v208), vdupq_n_s32(0x404147AEu), v211));
  sub_10001358C(v524, -0.69813, xmmword_1000EC910);
  v213 = sub_100013568(v524);
  v463 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v213.n128_f32[0]), v403, v213.n128_u64[0], 1), v358, v213, 2), v318, v213, 3);
  v380 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v214.f32[0]), v403, *v214.f32, 1), v358, v214, 2), v318, v214, 3);
  v337 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v215.f32[0]), v403, *v215.f32, 1), v358, v215, 2), v318, v215, 3);
  v319 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v216.f32[0]), v403, *v216.f32, 1), v358, v216, 2), v318, v216, 3);
  sub_10001358C(v525, 0.0, xmmword_1000EC8E0);
  v217 = sub_100013568(v525);
  v404 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v218.f32[0]), v380, *v218.f32, 1), v337, v218, 2), v319, v218, 3);
  v432 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v217.n128_f32[0]), v380, v217.n128_u64[0], 1), v337, v217, 2), v319, v217, 3);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v219.f32[0]), v380, *v219.f32, 1), v337, v219, 2), v319, v219, 3);
  v464 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v220.f32[0]), v380, *v220.f32, 1), v337, v220, 2), v319, v220, 3);
  sub_10001358C(v526, 0.0, xmmword_1000EC920);
  v221 = sub_100013568(v526);
  v613 = 1;
  *(v5 + 2528) = 0x4099999A4039999ALL;
  *(v5 + 2536) = 1056964608;
  *(v5 + 2540) = 0;
  *(v5 + 2541) = v618;
  *(v5 + 2543) = v619;
  *(v5 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v221.n128_f32[0]), v404, v221.n128_u64[0], 1), v359, v221, 2), v464, v221, 3);
  *(v5 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v222.f32[0]), v404, *v222.f32, 1), v359, v222, 2), v464, v222, 3);
  *(v5 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v223.f32[0]), v404, *v223.f32, 1), v359, v223, 2), v464, v223, 3);
  *(v5 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v224.f32[0]), v404, *v224.f32, 1), v359, v224, 2), v464, v224, 3);
  *(v5 + 2608) = xmmword_1000F0720;
  *(v5 + 2624) = 0;
  v225 = v616;
  *(v5 + 2627) = v617;
  *(v5 + 2625) = v225;
  *(v5 + 2628) = 1055286886;
  *(v5 + 2632) = 9;
  *(v5 + 2633) = v614;
  *(v5 + 2635) = v615;
  *(v5 + 2636) = 1065353216;
  *(v5 + 2640) = 0;
  *(v5 + 2648) = 0u;
  *(v5 + 2664) = v613;
  *(v5 + 2665) = 3;
  *(v5 + 2667) = 1;
  *(v5 + 2704) = 0;
  *(v5 + 2688) = 0u;
  *(v5 + 2672) = 0u;
  *(v5 + 2708) = 1065353216;
  *(v5 + 2720) = xmmword_1000EF5D0;
  v226 = *algn_10013DCB0;
  v227 = vmulq_f32(xmmword_10013DCA0, 0);
  v228 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3EC7AE14u));
  v229 = xmmword_10013DCC0;
  v230 = xmmword_10013DCD0;
  v443 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v231 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v227), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 2736) = 5;
  v381 = vmlaq_f32(vaddq_f32(v229, vmlaq_f32(v227, 0, v226)), 0, v230);
  v405 = v231;
  v338 = vaddq_f32(v230, vmlaq_f32(vmlaq_f32(v228, vdupq_n_s32(0xBF63D70A), v226), vdupq_n_s32(0x403F5C29u), v229));
  sub_10001358C(v527, 0.0, xmmword_1000EC910);
  v232 = sub_100013568(v527);
  v465 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v232.n128_f32[0]), v405, v232.n128_u64[0], 1), v381, v232, 2), v338, v232, 3);
  v433 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v233.f32[0]), v405, *v233.f32, 1), v381, v233, 2), v338, v233, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v234.f32[0]), v405, *v234.f32, 1), v381, v234, 2), v338, v234, 3);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v235.f32[0]), v405, *v235.f32, 1), v381, v235, 2), v338, v235, 3);
  sub_10001358C(v528, 0.54105, xmmword_1000EC8E0);
  v236 = sub_100013568(v528);
  v444 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v465, v236.n128_f32[0]), v433, v236.n128_u64[0], 1), v360, v236, 2), v339, v236, 3);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v465, v237.f32[0]), v433, *v237.f32, 1), v360, v237, 2), v339, v237, 3);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v465, v238.f32[0]), v433, *v238.f32, 1), v360, v238, 2), v339, v238, 3);
  v466 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v465, v239.f32[0]), v433, *v239.f32, 1), v360, v239, 2), v339, v239, 3);
  sub_10001358C(v529, -1.5708, xmmword_1000EC920);
  v240 = sub_100013568(v529);
  v620 = 1;
  *(v5 + 2752) = 0x402000003F428F5CLL;
  *(v5 + 2760) = 1056964608;
  *(v5 + 2764) = 0;
  *(v5 + 2765) = v625;
  *(v5 + 2767) = v626;
  *(v5 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v240.n128_f32[0]), v406, v240.n128_u64[0], 1), v382, v240, 2), v466, v240, 3);
  *(v5 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v241.f32[0]), v406, *v241.f32, 1), v382, v241, 2), v466, v241, 3);
  *(v5 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v242.f32[0]), v406, *v242.f32, 1), v382, v242, 2), v466, v242, 3);
  *(v5 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v243.f32[0]), v406, *v243.f32, 1), v382, v243, 2), v466, v243, 3);
  *(v5 + 2832) = xmmword_1000F0730;
  *(v5 + 2848) = 0;
  v244 = v623;
  *(v5 + 2851) = v624;
  *(v5 + 2849) = v244;
  *(v5 + 2852) = 1065353216;
  *(v5 + 2856) = 9;
  *(v5 + 2857) = v621;
  *(v5 + 2859) = v622;
  *(v5 + 2860) = 1065353216;
  *(v5 + 2864) = 0;
  *(v5 + 2872) = 0u;
  *(v5 + 2888) = v620;
  *(v5 + 2889) = 3;
  *(v5 + 2891) = 1;
  *(v5 + 2928) = 0;
  *(v5 + 2912) = 0u;
  *(v5 + 2896) = 0u;
  *(v5 + 2932) = 1065353216;
  *(v5 + 2944) = xmmword_1000EF5A0;
  v245 = *algn_10013DCB0;
  v246 = vmulq_f32(xmmword_10013DCA0, 0);
  v247 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE23D70A));
  v248 = xmmword_10013DCC0;
  v249 = xmmword_10013DCD0;
  v445 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v407 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v246), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 2960) = 6;
  v361 = vmlaq_f32(vaddq_f32(v248, vmlaq_f32(v246, 0, v245)), 0, v249);
  v478 = vdupq_n_s32(0xBF8E147B);
  v340 = vaddq_f32(v249, vmlaq_f32(vmlaq_f32(v247, vdupq_n_s32(0x3E999999u), v245), v478, v248));
  sub_10001358C(v530, 1.5708, xmmword_1000EC910);
  v250 = sub_100013568(v530);
  v467 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v250.n128_f32[0]), v407, v250.n128_u64[0], 1), v361, v250, 2), v340, v250, 3);
  v434 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v251.f32[0]), v407, *v251.f32, 1), v361, v251, 2), v340, v251, 3);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v252.f32[0]), v407, *v252.f32, 1), v361, v252, 2), v340, v252, 3);
  v341 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v253.f32[0]), v407, *v253.f32, 1), v361, v253, 2), v340, v253, 3);
  sub_10001358C(v531, -3.4034, xmmword_1000EC8E0);
  v254 = sub_100013568(v531);
  v446 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v467, v254.n128_f32[0]), v434, v254.n128_u64[0], 1), v383, v254, 2), v341, v254, 3);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v467, v255.f32[0]), v434, *v255.f32, 1), v383, v255, 2), v341, v255, 3);
  v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v467, v256.f32[0]), v434, *v256.f32, 1), v383, v256, 2), v341, v256, 3);
  v468 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v467, v257.f32[0]), v434, *v257.f32, 1), v383, v257, 2), v341, v257, 3);
  sub_10001358C(v532, 1.5708, xmmword_1000EC920);
  v258 = sub_100013568(v532);
  v627 = 1;
  *(v5 + 2976) = 0x3EB333333FD9999ALL;
  *(v5 + 2984) = 1056964608;
  *(v5 + 2988) = 1;
  *(v5 + 2989) = v632;
  *(v5 + 2991) = v633;
  *(v5 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v258.n128_f32[0]), v408, v258.n128_u64[0], 1), v362, v258, 2), v468, v258, 3);
  *(v5 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v259.f32[0]), v408, *v259.f32, 1), v362, v259, 2), v468, v259, 3);
  *(v5 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v260.f32[0]), v408, *v260.f32, 1), v362, v260, 2), v468, v260, 3);
  *(v5 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v261.f32[0]), v408, *v261.f32, 1), v362, v261, 2), v468, v261, 3);
  *(v5 + 3056) = xmmword_1000F0740;
  *(v5 + 3072) = 0;
  v262 = v630;
  *(v5 + 3075) = v631;
  *(v5 + 3073) = v262;
  *(v5 + 3076) = 1060655596;
  *(v5 + 3080) = 9;
  *(v5 + 3081) = v628;
  *(v5 + 3083) = v629;
  *(v5 + 3084) = 1065353216;
  *(v5 + 3088) = 0;
  *(v5 + 3096) = 0u;
  *(v5 + 3112) = v627;
  *(v5 + 3113) = 2;
  *(v5 + 3115) = 1;
  *(v5 + 3152) = 0;
  *(v5 + 3136) = 0u;
  *(v5 + 3120) = 0u;
  *(v5 + 3156) = 1065353216;
  *(v5 + 3168) = xmmword_1000EF5C0;
  v263 = *algn_10013DCB0;
  v264 = vmulq_f32(xmmword_10013DCA0, 0);
  v265 = xmmword_10013DCC0;
  v266 = xmmword_10013DCD0;
  v267 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF599999));
  v447 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 3184) = 6;
  v409 = vmlaq_f32(vmlaq_f32(vaddq_f32(v263, v264), 0, v265), 0, v266);
  v384 = vmlaq_f32(vaddq_f32(v265, vmlaq_f32(v264, 0, v263)), 0, v266);
  v479 = vaddq_f32(v266, vmlaq_f32(vmlaq_f32(v267, vdupq_n_s32(0xBF451EB8), v263), v478, v265));
  sub_10001358C(v533, 1.5708, xmmword_1000EC910);
  v268 = sub_100013568(v533);
  v469 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v269.f32[0]), v409, *v269.f32, 1), v384, v269, 2), v479, v269, 3);
  v474 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v268.n128_f32[0]), v409, v268.n128_u64[0], 1), v384, v268, 2), v479, v268, 3);
  v435 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v270.f32[0]), v409, *v270.f32, 1), v384, v270, 2), v479, v270, 3);
  v448 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v271.f32[0]), v409, *v271.f32, 1), v384, v271, 2), v479, v271, 3);
  sub_10001358C(v534, -2.5307, xmmword_1000EC8E0);
  v272 = sub_100013568(v534);
  v483 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v273.f32[0]), v469, *v273.f32, 1), v435, v273, 2), v448, v273, 3);
  v485 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v272.n128_f32[0]), v469, v272.n128_u64[0], 1), v435, v272, 2), v448, v272, 3);
  v480 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v274.f32[0]), v469, *v274.f32, 1), v435, v274, 2), v448, v274, 3);
  v475 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v275.f32[0]), v469, *v275.f32, 1), v435, v275, 2), v448, v275, 3);
  sub_10001358C(v535, 1.5708, xmmword_1000EC920);
  v276 = sub_100013568(v535);
  v634 = 1;
  *(v5 + 3200) = 0x3F4CCCCD40000000;
  *(v5 + 3208) = 1056964608;
  *(v5 + 3212) = 1;
  *(v5 + 3213) = v639;
  *(v5 + 3215) = v640;
  *(v5 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v276.n128_f32[0]), v483, v276.n128_u64[0], 1), v480, v276, 2), v475, v276, 3);
  *(v5 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v277.f32[0]), v483, *v277.f32, 1), v480, v277, 2), v475, v277, 3);
  *(v5 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v278.f32[0]), v483, *v278.f32, 1), v480, v278, 2), v475, v278, 3);
  *(v5 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v279.f32[0]), v483, *v279.f32, 1), v480, v279, 2), v475, v279, 3);
  *(v5 + 3280) = xmmword_1000F0750;
  *(v5 + 3296) = 0;
  v280 = v637;
  *(v5 + 3299) = v638;
  *(v5 + 3297) = v280;
  *(v5 + 3300) = 1063507722;
  *(v5 + 3304) = 9;
  *(v5 + 3305) = v635;
  *(v5 + 3307) = v636;
  *(v5 + 3308) = 1065353216;
  *(v5 + 3312) = 0;
  *(v5 + 3320) = 0u;
  *(v5 + 3336) = v634;
  *(v5 + 3337) = 2;
  *(v5 + 3339) = 1;
  *(v5 + 3376) = 0;
  *(v5 + 3360) = 0u;
  *(v5 + 3344) = 0u;
  *(v5 + 3380) = 1065353216;
  v281 = sub_1000A0774(v5);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020);
  v282 = swift_allocObject();
  v282[1] = xmmword_1000ED250;
  v282[2] = xmmword_1000F0760;
  v282[3] = xmmword_1000F0770;
  v282[4] = xmmword_1000F0780;
  v283 = swift_allocObject();
  v283[1] = xmmword_1000EC880;
  v283[2] = xmmword_1000F0790;
  v283[3] = xmmword_1000F07A0;
  v284 = swift_allocObject();
  v284[1] = xmmword_1000EC880;
  v284[2] = xmmword_1000F07B0;
  v284[3] = xmmword_1000F07C0;
  if (qword_10012F570 != -1)
  {
    swift_once();
  }

  v486 = *(&xmmword_100131000 + 1);
  v484 = xmmword_100131000;
  v285 = qword_10013BCA0;
  v286 = unk_10013BCA8;
  v287 = qword_10013BCB0;

  v288 = qword_10013BCD0;
  v289 = sub_1000A0A98(_swiftEmptyArrayStorage);
  swift_bridgeObjectRetain_n();
  v290 = sub_1000C1928(v281);

  sub_1000C53DC(v290, v489);
  v291 = sub_1000C199C(v281);

  sub_1000C53DC(v291, v487);
  xmmword_10013BCE0 = v458;
  *algn_10013BCF0 = v457;
  qword_10013BD00 = v0;
  dword_10013BD08 = v1;
  xmmword_10013BD10 = v456;
  unk_10013BD20 = v455;
  qword_10013BD30 = v2;
  dword_10013BD38 = v3;
  xmmword_10013BD40 = v454;
  qword_10013BD50 = v4;
  xmmword_10013BD60 = v453;
  qword_10013BD70 = v452;
  unk_10013BD78 = v451;
  dword_10013BD80 = v450;
  qword_10013BD88 = v449;
  qword_10013BD90 = v281;
  qword_10013BDB8 = v490;
  unk_10013BDA8 = v489[1];
  unk_10013BD98 = v489[0];
  xmmword_10013BDC0 = v487[0];
  unk_10013BDD0 = v487[1];
  qword_10013BDE0 = v488;
  qword_10013BDE8 = variable initialization expression of ToriScene.tapTarget;
  qword_10013BDF0 = 0;
  xmmword_10013BE00 = xmmword_1000F07D0;
  unk_10013BE10 = xmmword_1000F07E0;
  qword_10013BE20 = v282;
  word_10013BE2C = 1;
  dword_10013BE28 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  xmmword_10013BE30 = _Q0;
  qword_10013BE40 = v283;
  xmmword_10013BE48 = xmmword_1000F07F0;
  xmmword_10013BE58 = xmmword_1000F0800;
  qword_10013BE68 = 1059695018;
  unk_10013BE70 = v284;
  xmmword_10013BE78 = xmmword_1000F0810;
  qword_10013BE88 = 0;
  unk_10013BE90 = v484;
  qword_10013BE98 = v486;
  result = 0.0000000134110482;
  xmmword_10013BEA0 = xmmword_1000F0820;
  qword_10013BEB0 = v285;
  unk_10013BEB8 = v286;
  qword_10013BEC0 = v287;
  unk_10013BEC8 = v289;
  qword_10013BED0 = _swiftEmptyArrayStorage;
  unk_10013BED8 = _swiftEmptyArrayStorage;
  qword_10013BEE0 = v288;
  return result;
}