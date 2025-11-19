double sub_1000792D0()
{
  if (qword_10012F5C8 != -1)
  {
    swift_once();
  }

  v397 = unk_10013BF00;
  v398 = xmmword_10013BEF0;
  v0 = qword_10013BF10;
  v1 = dword_10013BF18;
  v395 = unk_10013BF30;
  v396 = xmmword_10013BF20;
  v2 = qword_10013BF40;
  v3 = dword_10013BF48;
  v4 = qword_10013BF60;
  v393 = xmmword_10013BF70;
  v394 = xmmword_10013BF50;
  v391 = unk_10013BF88;
  v392 = qword_10013BF80;
  v390 = dword_10013BF90;
  v389 = qword_10013BF98;
  sub_1000125FC(&qword_100131010);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000EEC30;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v6 = vmulq_f32(xmmword_10013DCA0, 0);
  v413 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v410 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v6), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v399 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v6, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v352 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x40151EB8u)), vdupq_n_s32(0x3FD47AE1u), *algn_10013DCB0), vdupq_n_s32(0xBD8F5C29), xmmword_10013DCC0));
  sub_10001358C(v417, 4.4331, xmmword_1000EC910);
  v7 = sub_100013568(v417);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v7.n128_f32[0]), v410, v7.n128_u64[0], 1), v399, v7, 2), v352, v7, 3);
  v405 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v8.f32[0]), v410, *v8.f32, 1), v399, v8, 2), v352, v8, 3);
  v376 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v9.f32[0]), v410, *v9.f32, 1), v399, v9, 2), v352, v9, 3);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v10.f32[0]), v410, *v10.f32, 1), v399, v10, 2), v352, v10, 3);
  sub_10001358C(v418, -2.4784, xmmword_1000EC8E0);
  v11 = sub_100013568(v418);
  v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v11.n128_f32[0]), v405, v11.n128_u64[0], 1), v376, v11, 2), v332, v11, 3);
  v400 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v13.f32[0]), v405, *v13.f32, 1), v376, v13, 2), v332, v13, 3);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v14.f32[0]), v405, *v14.f32, 1), v376, v14, 2), v332, v14, 3);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v15.f32[0]), v405, *v15.f32, 1), v376, v15, 2), v332, v15, 3);
  v411 = v12;
  sub_10001358C(v419, -0.40143, xmmword_1000EC920);
  v16 = sub_100013568(v419);
  v457 = 0;
  *(v5 + 64) = 0x4020A3D73F428F5CLL;
  *(v5 + 72) = 999948917;
  *(v5 + 76) = 1;
  *(v5 + 77) = v462;
  *(v5 + 79) = v463;
  *(v5 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v16.n128_f32[0]), v400, v16.n128_u64[0], 1), v353, v16, 2), v406, v16, 3);
  *(v5 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v17.f32[0]), v400, *v17.f32, 1), v353, v17, 2), v406, v17, 3);
  *(v5 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v18.f32[0]), v400, *v18.f32, 1), v353, v18, 2), v406, v18, 3);
  *(v5 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v19.f32[0]), v400, *v19.f32, 1), v353, v19, 2), v406, v19, 3);
  *(v5 + 144) = xmmword_1000EC900;
  *(v5 + 160) = 0;
  v20 = v460;
  *(v5 + 163) = v461;
  *(v5 + 161) = v20;
  *(v5 + 164) = 1114636288;
  *(v5 + 168) = 2;
  *(v5 + 169) = v458;
  *(v5 + 171) = v459;
  *(v5 + 172) = 1052602532;
  *(v5 + 176) = xmmword_1000F16B0;
  *(v5 + 192) = 0x3F2E147B3D5D2F1BLL;
  *(v5 + 200) = v457;
  *(v5 + 201) = 0;
  *(v5 + 203) = 1;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  v21 = *algn_10013DCB0;
  v22 = vmulq_f32(xmmword_10013DCA0, 0);
  v23 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FF5C28Fu));
  v24 = xmmword_10013DCC0;
  v25 = xmmword_10013DCD0;
  v377 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 240) = 0;
  *(v5 + 244) = 1065353216;
  v354 = vmlaq_f32(vmlaq_f32(vaddq_f32(v21, v22), 0, v24), 0, v25);
  *(v5 + 256) = xmmword_1000EF5A0;
  v314 = vmlaq_f32(vaddq_f32(v24, vmlaq_f32(v22, 0, v21)), 0, v25);
  v275 = vaddq_f32(v25, vmlaq_f32(vmlaq_f32(v23, vdupq_n_s32(0x3FFC28F5u), v21), vdupq_n_s32(0x3E428F5Cu), v24));
  *(v5 + 272) = 1;
  sub_10001358C(v420, 4.3284, xmmword_1000EC910);
  v26 = sub_100013568(v420);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377, v26.n128_f32[0]), v354, v26.n128_u64[0], 1), v314, v26, 2), v275, v26, 3);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377, v27.f32[0]), v354, *v27.f32, 1), v314, v27, 2), v275, v27, 3);
  v295 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377, v28.f32[0]), v354, *v28.f32, 1), v314, v28, 2), v275, v28, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377, v29.f32[0]), v354, *v29.f32, 1), v314, v29, 2), v275, v29, 3);
  sub_10001358C(v421, -2.6005, xmmword_1000EC8E0);
  v30 = sub_100013568(v421);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v31.f32[0]), v333, *v31.f32, 1), v295, v31, 2), v276, v31, 3);
  v378 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v30.n128_f32[0]), v333, v30.n128_u64[0], 1), v295, v30, 2), v276, v30, 3);
  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v32.f32[0]), v333, *v32.f32, 1), v295, v32, 2), v276, v32, 3);
  v402 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v33.f32[0]), v333, *v33.f32, 1), v295, v33, 2), v276, v33, 3);
  sub_10001358C(v422, 0.087266, xmmword_1000EC920);
  v34 = sub_100013568(v422);
  v464 = 1;
  *(v5 + 288) = 0x408000003F4CCCCDLL;
  *(v5 + 296) = 1036831949;
  *(v5 + 300) = 1;
  *(v5 + 301) = v469;
  *(v5 + 303) = v470;
  *(v5 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v34.n128_f32[0]), v355, v34.n128_u64[0], 1), v315, v34, 2), v402, v34, 3);
  *(v5 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v35.f32[0]), v355, *v35.f32, 1), v315, v35, 2), v402, v35, 3);
  *(v5 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v36.f32[0]), v355, *v36.f32, 1), v315, v36, 2), v402, v36, 3);
  *(v5 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v37.f32[0]), v355, *v37.f32, 1), v315, v37, 2), v402, v37, 3);
  *(v5 + 368) = xmmword_1000EC900;
  *(v5 + 384) = 0;
  v38 = v467;
  *(v5 + 387) = v468;
  *(v5 + 385) = v38;
  *(v5 + 388) = 1088421888;
  *(v5 + 392) = 10;
  *(v5 + 393) = v465;
  *(v5 + 395) = v466;
  *(v5 + 396) = 1065353216;
  *(v5 + 416) = 0;
  *(v5 + 400) = 0u;
  *(v5 + 424) = v464;
  *(v5 + 425) = 0;
  *(v5 + 427) = 0;
  *(v5 + 432) = 0u;
  *(v5 + 448) = 0u;
  *(v5 + 464) = 0;
  *(v5 + 468) = 1065353216;
  *(v5 + 480) = xmmword_1000EF5C0;
  v39 = *algn_10013DCB0;
  v40 = vmulq_f32(xmmword_10013DCA0, 0);
  v41 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FB0A3D7u));
  v42 = xmmword_10013DCC0;
  v43 = xmmword_10013DCD0;
  v334 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v44 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v40), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 496) = 1;
  v277 = vmlaq_f32(vaddq_f32(v42, vmlaq_f32(v40, 0, v39)), 0, v43);
  v296 = v44;
  v379 = vdupq_n_s32(0xBF07AE14);
  v250 = vaddq_f32(v43, vmlaq_f32(vmlaq_f32(v41, v379, v39), vdupq_n_s32(0x3E570A3Du), v42));
  sub_10001358C(v423, -0.47124, xmmword_1000EC910);
  v45 = sub_100013568(v423);
  v356 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v334, v45.n128_f32[0]), v296, v45.n128_u64[0], 1), v277, v45, 2), v250, v45, 3);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v334, v46.f32[0]), v296, *v46.f32, 1), v277, v46, 2), v250, v46, 3);
  v261 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v334, v47.f32[0]), v296, *v47.f32, 1), v277, v47, 2), v250, v47, 3);
  v251 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v334, v48.f32[0]), v296, *v48.f32, 1), v277, v48, 2), v250, v48, 3);
  sub_10001358C(v424, 0.29671, xmmword_1000EC8E0);
  v49 = sub_100013568(v424);
  v297 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v356, v50.f32[0]), v316, *v50.f32, 1), v261, v50, 2), v251, v50, 3);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v356, v51.f32[0]), v316, *v51.f32, 1), v261, v51, 2), v251, v51, 3);
  v335 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v356, v49.n128_f32[0]), v316, v49.n128_u64[0], 1), v261, v49, 2), v251, v49, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v356, v52.f32[0]), v316, *v52.f32, 1), v261, v52, 2), v251, v52, 3);
  sub_10001358C(v425, -2.2166, xmmword_1000EC920);
  v53 = sub_100013568(v425);
  v471 = 1;
  *(v5 + 512) = 0x3F99999A407147AELL;
  *(v5 + 520) = 1036831949;
  *(v5 + 524) = 1;
  *(v5 + 525) = v476;
  *(v5 + 527) = v477;
  *(v5 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v335, v53.n128_f32[0]), v297, v53.n128_u64[0], 1), v278, v53, 2), v357, v53, 3);
  *(v5 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v335, v54.f32[0]), v297, *v54.f32, 1), v278, v54, 2), v357, v54, 3);
  *(v5 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v335, v55.f32[0]), v297, *v55.f32, 1), v278, v55, 2), v357, v55, 3);
  *(v5 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v335, v56.f32[0]), v297, *v56.f32, 1), v278, v56, 2), v357, v56, 3);
  *(v5 + 592) = xmmword_1000EC900;
  *(v5 + 608) = 0;
  v57 = v474;
  *(v5 + 611) = v475;
  *(v5 + 609) = v57;
  *(v5 + 612) = 1077516698;
  *(v5 + 616) = 10;
  *(v5 + 617) = v472;
  *(v5 + 619) = v473;
  *(v5 + 620) = 1065353216;
  *(v5 + 640) = 0;
  *(v5 + 624) = 0u;
  *(v5 + 648) = v471;
  *(v5 + 649) = 0;
  *(v5 + 651) = 1;
  *(v5 + 656) = 0u;
  *(v5 + 672) = 0u;
  *(v5 + 688) = 0;
  *(v5 + 692) = 1065353216;
  *(v5 + 704) = xmmword_1000EF5A0;
  v58 = xmmword_10013DCA0;
  v59 = *algn_10013DCB0;
  v60 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v5 + 720) = 2;
  v336 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v58, 0, v59), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v279 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v60, 0, v59)), 0, xmmword_10013DCD0);
  v298 = vmlaq_f32(vmlaq_f32(vaddq_f32(v59, v60), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v252 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(v58, vdupq_n_s32(0x3EEB851Eu)), vdupq_n_s32(0xBE3851EB), v59), vdupq_n_s32(0x3ED1EB85u), xmmword_10013DCC0));
  sub_10001358C(v426, 4.7124, xmmword_1000EC910);
  v61 = sub_100013568(v426);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v336, v61.n128_f32[0]), v298, v61.n128_u64[0], 1), v279, v61, 2), v252, v61, 3);
  v317 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v336, v62.f32[0]), v298, *v62.f32, 1), v279, v62, 2), v252, v62, 3);
  v262 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v336, v63.f32[0]), v298, *v63.f32, 1), v279, v63, 2), v252, v63, 3);
  v253 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v336, v64.f32[0]), v298, *v64.f32, 1), v279, v64, 2), v252, v64, 3);
  sub_10001358C(v427, 1.0036, xmmword_1000EC8E0);
  v65 = sub_100013568(v427);
  v299 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v358, v66.f32[0]), v317, *v66.f32, 1), v262, v66, 2), v253, v66, 3);
  v280 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v358, v67.f32[0]), v317, *v67.f32, 1), v262, v67, 2), v253, v67, 3);
  v337 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v358, v65.n128_f32[0]), v317, v65.n128_u64[0], 1), v262, v65, 2), v253, v65, 3);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v358, v68.f32[0]), v317, *v68.f32, 1), v262, v68, 2), v253, v68, 3);
  sub_10001358C(v428, -1.5708, xmmword_1000EC920);
  v69 = sub_100013568(v428);
  v478 = 1;
  *(v5 + 736) = 0x3F2B851F3FD851ECLL;
  *(v5 + 744) = 1050253722;
  *(v5 + 748) = 1;
  *(v5 + 749) = v483;
  *(v5 + 751) = v484;
  *(v5 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v69.n128_f32[0]), v299, v69.n128_u64[0], 1), v280, v69, 2), v359, v69, 3);
  *(v5 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v70.f32[0]), v299, *v70.f32, 1), v280, v70, 2), v359, v70, 3);
  *(v5 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v71.f32[0]), v299, *v71.f32, 1), v280, v71, 2), v359, v71, 3);
  *(v5 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v72.f32[0]), v299, *v72.f32, 1), v280, v72, 2), v359, v72, 3);
  *(v5 + 816) = xmmword_1000EC900;
  *(v5 + 832) = 0;
  v73 = v481;
  *(v5 + 835) = v482;
  *(v5 + 833) = v73;
  *(v5 + 836) = 1090519040;
  *(v5 + 840) = 13;
  *(v5 + 841) = v479;
  *(v5 + 843) = v480;
  *(v5 + 844) = 1065353216;
  *(v5 + 848) = 0;
  *(v5 + 856) = 0u;
  *(v5 + 872) = v478;
  *(v5 + 873) = 0;
  *(v5 + 875) = 0;
  *(v5 + 912) = 0;
  *(v5 + 880) = 0u;
  *(v5 + 896) = 0u;
  *(v5 + 916) = 1065353216;
  *(v5 + 928) = xmmword_1000EF5C0;
  v74 = xmmword_10013DCA0;
  v75 = *algn_10013DCB0;
  v76 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v5 + 944) = 9;
  v338 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v74, 0, v75), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v281 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v76, 0, v75)), 0, xmmword_10013DCD0);
  v300 = vmlaq_f32(vmlaq_f32(vaddq_f32(v75, v76), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v254 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(v74, vdupq_n_s32(0x403A3D70u)), vdupq_n_s32(0x3FD70A3Du), v75), vdupq_n_s32(0xBF9EB852), xmmword_10013DCC0));
  sub_10001358C(v429, 4.3633, xmmword_1000EC910);
  v77 = sub_100013568(v429);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v77.n128_f32[0]), v300, v77.n128_u64[0], 1), v281, v77, 2), v254, v77, 3);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v78.f32[0]), v300, *v78.f32, 1), v281, v78, 2), v254, v78, 3);
  v263 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v79.f32[0]), v300, *v79.f32, 1), v281, v79, 2), v254, v79, 3);
  v255 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v80.f32[0]), v300, *v80.f32, 1), v281, v80, 2), v254, v80, 3);
  sub_10001358C(v430, -2.5831, xmmword_1000EC8E0);
  v81 = sub_100013568(v430);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v82.f32[0]), v318, *v82.f32, 1), v263, v82, 2), v255, v82, 3);
  v282 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v83.f32[0]), v318, *v83.f32, 1), v263, v83, 2), v255, v83, 3);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v81.n128_f32[0]), v318, v81.n128_u64[0], 1), v263, v81, 2), v255, v81, 3);
  v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v84.f32[0]), v318, *v84.f32, 1), v263, v84, 2), v255, v84, 3);
  sub_10001358C(v431, -0.43633, xmmword_1000EC920);
  v85 = sub_100013568(v431);
  v485 = 0;
  *(v5 + 960) = 0x4079999A3F8CCCCDLL;
  *(v5 + 968) = 1044549468;
  *(v5 + 972) = 1;
  *(v5 + 973) = v490;
  *(v5 + 975) = v491;
  *(v5 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v85.n128_f32[0]), v301, v85.n128_u64[0], 1), v282, v85, 2), v361, v85, 3);
  *(v5 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v86.f32[0]), v301, *v86.f32, 1), v282, v86, 2), v361, v86, 3);
  *(v5 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v87.f32[0]), v301, *v87.f32, 1), v282, v87, 2), v361, v87, 3);
  *(v5 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v88.f32[0]), v301, *v88.f32, 1), v282, v88, 2), v361, v88, 3);
  *(v5 + 1040) = xmmword_1000EC900;
  *(v5 + 1056) = 0;
  v89 = v488;
  *(v5 + 1059) = v489;
  *(v5 + 1057) = v89;
  *(v5 + 1060) = 1090728755;
  *(v5 + 1064) = 2;
  *(v5 + 1065) = v486;
  *(v5 + 1067) = v487;
  *(v5 + 1068) = 1057971241;
  *(v5 + 1072) = xmmword_1000F16C0;
  *(v5 + 1088) = 0x3F8000003F4CCCCDLL;
  *(v5 + 1096) = v485;
  *(v5 + 1097) = 1;
  *(v5 + 1099) = 1;
  *(v5 + 1104) = 0u;
  *(v5 + 1120) = 0u;
  *(v5 + 1136) = 0;
  *(v5 + 1140) = 1065353216;
  v90 = xmmword_10013DCA0;
  v91 = *algn_10013DCB0;
  v92 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v5 + 1152) = xmmword_1000EF5A0;
  v93 = xmmword_10013DCC0;
  v94 = xmmword_10013DCD0;
  v340 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v90, 0, v91), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 1168) = 3;
  v302 = vmlaq_f32(vmlaq_f32(vaddq_f32(v91, v92), 0, v93), 0, v94);
  v283 = vmlaq_f32(vaddq_f32(v93, vmlaq_f32(v92, 0, v91)), 0, v94);
  v95 = vmlaq_f32(vmulq_f32(v90, vdupq_n_s32(0xBFFAE147)), vdupq_n_s32(0x40399999u), v91);
  v90.i64[0] = 0xC0000000C0000000;
  v90.i64[1] = 0xC0000000C0000000;
  v256 = vaddq_f32(v94, vmlaq_f32(v95, v90, v93));
  sub_10001358C(v432, -0.71558, xmmword_1000EC910);
  v96 = sub_100013568(v432);
  v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v96.n128_f32[0]), v302, v96.n128_u64[0], 1), v283, v96, 2), v256, v96, 3);
  v319 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v97.f32[0]), v302, *v97.f32, 1), v283, v97, 2), v256, v97, 3);
  v264 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v98.f32[0]), v302, *v98.f32, 1), v283, v98, 2), v256, v98, 3);
  v257 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v99.f32[0]), v302, *v99.f32, 1), v283, v99, 2), v256, v99, 3);
  sub_10001358C(v433, -0.73304, xmmword_1000EC8E0);
  v100 = sub_100013568(v433);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v101.f32[0]), v319, *v101.f32, 1), v264, v101, 2), v257, v101, 3);
  v284 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v102.f32[0]), v319, *v102.f32, 1), v264, v102, 2), v257, v102, 3);
  v341 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v100.n128_f32[0]), v319, v100.n128_u64[0], 1), v264, v100, 2), v257, v100, 3);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v103.f32[0]), v319, *v103.f32, 1), v264, v103, 2), v257, v103, 3);
  sub_10001358C(v434, 0.12217, xmmword_1000EC920);
  v104 = sub_100013568(v434);
  v492 = 1;
  *(v5 + 1184) = 0x3E570A3D3FE66666;
  *(v5 + 1192) = 1036026642;
  *(v5 + 1196) = 1;
  *(v5 + 1197) = v497;
  *(v5 + 1199) = v498;
  *(v5 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v104.n128_f32[0]), v303, v104.n128_u64[0], 1), v284, v104, 2), v363, v104, 3);
  *(v5 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v105.f32[0]), v303, *v105.f32, 1), v284, v105, 2), v363, v105, 3);
  *(v5 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v106.f32[0]), v303, *v106.f32, 1), v284, v106, 2), v363, v106, 3);
  *(v5 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v107.f32[0]), v303, *v107.f32, 1), v284, v107, 2), v363, v107, 3);
  *(v5 + 1264) = xmmword_1000F16D0;
  *(v5 + 1280) = 0;
  v108 = v495;
  *(v5 + 1283) = v496;
  *(v5 + 1281) = v108;
  *(v5 + 1284) = 1099956224;
  *(v5 + 1288) = 13;
  *(v5 + 1289) = v493;
  *(v5 + 1291) = v494;
  *(v5 + 1292) = 1065353216;
  *(v5 + 1296) = 0;
  *(v5 + 1304) = 0u;
  *(v5 + 1320) = v492;
  *(v5 + 1321) = 1;
  *(v5 + 1323) = 0;
  *(v5 + 1360) = 0;
  *(v5 + 1344) = 0u;
  *(v5 + 1328) = 0u;
  *(v5 + 1364) = 1065353216;
  *(v5 + 1376) = xmmword_1000EF5C0;
  v109 = *algn_10013DCB0;
  v110 = vmulq_f32(xmmword_10013DCA0, 0);
  v111 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3DCCCCCCu));
  v112 = xmmword_10013DCC0;
  v113 = xmmword_10013DCD0;
  v364 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v320 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v110), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 1392) = 3;
  v285 = vmlaq_f32(vaddq_f32(v112, vmlaq_f32(v110, 0, v109)), 0, v113);
  v258 = vaddq_f32(v113, vmlaq_f32(vmlaq_f32(v111, vdupq_n_s32(0x3EF0A3D7u), v109), vdupq_n_s32(0xBFEE147B), v112));
  sub_10001358C(v435, 0.43633, xmmword_1000EC910);
  v114 = sub_100013568(v435);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v114.n128_f32[0]), v320, v114.n128_u64[0], 1), v285, v114, 2), v258, v114, 3);
  v304 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v115.f32[0]), v320, *v115.f32, 1), v285, v115, 2), v258, v115, 3);
  v265 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v116.f32[0]), v320, *v116.f32, 1), v285, v116, 2), v258, v116, 3);
  v259 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v117.f32[0]), v320, *v117.f32, 1), v285, v117, 2), v258, v117, 3);
  sub_10001358C(v436, -0.43633, xmmword_1000EC8E0);
  v118 = sub_100013568(v436);
  v119 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v118.n128_f32[0]), v304, v118.n128_u64[0], 1), v265, v118, 2), v259, v118, 3);
  v321 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v120.f32[0]), v304, *v120.f32, 1), v265, v120, 2), v259, v120, 3);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v121.f32[0]), v304, *v121.f32, 1), v265, v121, 2), v259, v121, 3);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v122.f32[0]), v304, *v122.f32, 1), v265, v122, 2), v259, v122, 3);
  v365 = v119;
  sub_10001358C(v437, 0.59341, xmmword_1000EC920);
  v123 = sub_100013568(v437);
  v499 = 1;
  *(v5 + 1408) = 0x3EF0A3D73EF0A3D7;
  *(v5 + 1416) = 1056293519;
  *(v5 + 1420) = 1;
  *(v5 + 1421) = v504;
  *(v5 + 1423) = v505;
  *(v5 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v123.n128_f32[0]), v321, v123.n128_u64[0], 1), v286, v123, 2), v343, v123, 3);
  *(v5 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v124.f32[0]), v321, *v124.f32, 1), v286, v124, 2), v343, v124, 3);
  *(v5 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v125.f32[0]), v321, *v125.f32, 1), v286, v125, 2), v343, v125, 3);
  *(v5 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v126.f32[0]), v321, *v126.f32, 1), v286, v126, 2), v343, v126, 3);
  *(v5 + 1488) = xmmword_1000F16E0;
  *(v5 + 1504) = 0;
  v127 = v502;
  *(v5 + 1507) = v503;
  *(v5 + 1505) = v127;
  *(v5 + 1508) = 1086953882;
  *(v5 + 1512) = 9;
  *(v5 + 1513) = v500;
  *(v5 + 1515) = v501;
  *(v5 + 1516) = 1065353216;
  *(v5 + 1520) = 0;
  *(v5 + 1528) = 0u;
  *(v5 + 1544) = v499;
  *(v5 + 1545) = 1;
  *(v5 + 1547) = 0;
  *(v5 + 1584) = 0;
  *(v5 + 1568) = 0u;
  *(v5 + 1552) = 0u;
  *(v5 + 1588) = 1065353216;
  *(v5 + 1600) = xmmword_1000EF5A0;
  v128 = *algn_10013DCB0;
  v129 = vmulq_f32(xmmword_10013DCA0, 0);
  v130 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E8F5C29u));
  v131 = xmmword_10013DCC0;
  v132 = xmmword_10013DCD0;
  v322 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v133 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v129), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 1616) = 4;
  v266 = vmlaq_f32(vaddq_f32(v131, vmlaq_f32(v129, 0, v128)), 0, v132);
  v287 = v133;
  v248 = vaddq_f32(v132, vmlaq_f32(vmlaq_f32(v130, vdupq_n_s32(0x3CF5C28Fu), v128), vdupq_n_s32(0xBE8A3D70), v131));
  sub_10001358C(v438, 1.5708, xmmword_1000EC910);
  v134 = sub_100013568(v438);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v322, v134.n128_f32[0]), v287, v134.n128_u64[0], 1), v266, v134, 2), v248, v134, 3);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v322, v135.f32[0]), v287, *v135.f32, 1), v266, v135, 2), v248, v135, 3);
  v260 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v322, v136.f32[0]), v287, *v136.f32, 1), v266, v136, 2), v248, v136, 3);
  v249 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v322, v137.f32[0]), v287, *v137.f32, 1), v266, v137, 2), v248, v137, 3);
  sub_10001358C(v439, -0.76794, xmmword_1000EC8E0);
  v138 = sub_100013568(v439);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v139.f32[0]), v305, *v139.f32, 1), v260, v139, 2), v249, v139, 3);
  v267 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v140.f32[0]), v305, *v140.f32, 1), v260, v140, 2), v249, v140, 3);
  v323 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v138.n128_f32[0]), v305, v138.n128_u64[0], 1), v260, v138, 2), v249, v138, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v141.f32[0]), v305, *v141.f32, 1), v260, v141, 2), v249, v141, 3);
  sub_10001358C(v440, 1.5708, xmmword_1000EC920);
  v142 = sub_100013568(v440);
  v506 = 1;
  *(v5 + 1632) = 0x3EB33333400CCCCDLL;
  *(v5 + 1640) = 1056964608;
  *(v5 + 1644) = 1;
  *(v5 + 1645) = v511;
  *(v5 + 1647) = v512;
  *(v5 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v142.n128_f32[0]), v288, v142.n128_u64[0], 1), v267, v142, 2), v345, v142, 3);
  *(v5 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v143.f32[0]), v288, *v143.f32, 1), v267, v143, 2), v345, v143, 3);
  *(v5 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v144.f32[0]), v288, *v144.f32, 1), v267, v144, 2), v345, v144, 3);
  *(v5 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v145.f32[0]), v288, *v145.f32, 1), v267, v145, 2), v345, v145, 3);
  *(v5 + 1712) = xmmword_1000F16E0;
  *(v5 + 1728) = 0;
  v146 = v509;
  *(v5 + 1731) = v510;
  *(v5 + 1729) = v146;
  *(v5 + 1732) = 1095761920;
  *(v5 + 1736) = 9;
  *(v5 + 1737) = v507;
  *(v5 + 1739) = v508;
  *(v5 + 1740) = 1065353216;
  *(v5 + 1744) = 0;
  *(v5 + 1752) = 0u;
  *(v5 + 1768) = v506;
  *(v5 + 1769) = 1;
  *(v5 + 1771) = 0;
  *(v5 + 1792) = 0u;
  *(v5 + 1776) = 0u;
  *(v5 + 1808) = 0x3F0A0B073E99999ALL;
  *(v5 + 1824) = xmmword_1000EF5C0;
  *(v5 + 1840) = 4;
  v147 = vmulq_f32(xmmword_10013DCA0, 0);
  v346 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v306 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v147), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v289 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v147, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v380 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3DB851EBu)), vdupq_n_s32(0x3F3851EBu), *algn_10013DCB0), v379, xmmword_10013DCC0));
  sub_10001358C(v441, 0.43633, xmmword_1000EC910);
  v148 = sub_100013568(v441);
  v366 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v148.n128_f32[0]), v306, v148.n128_u64[0], 1), v289, v148, 2), v380, v148, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v149.f32[0]), v306, *v149.f32, 1), v289, v149, 2), v380, v149, 3);
  v268 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v150.f32[0]), v306, *v150.f32, 1), v289, v150, 2), v380, v150, 3);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v151.f32[0]), v306, *v151.f32, 1), v289, v151, 2), v380, v151, 3);
  sub_10001358C(v442, -0.43633, xmmword_1000EC8E0);
  v152 = sub_100013568(v442);
  v153 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v152.n128_f32[0]), v324, v152.n128_u64[0], 1), v268, v152, 2), v290, v152, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v154.f32[0]), v324, *v154.f32, 1), v268, v154, 2), v290, v154, 3);
  v307 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v155.f32[0]), v324, *v155.f32, 1), v268, v155, 2), v290, v155, 3);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v156.f32[0]), v324, *v156.f32, 1), v268, v156, 2), v290, v156, 3);
  v381 = v153;
  sub_10001358C(v443, 0.61087, xmmword_1000EC920);
  v157 = sub_100013568(v443);
  v513 = 1;
  *(v5 + 1856) = 0x3F7333333FB33333;
  *(v5 + 1864) = 1045220557;
  *(v5 + 1868) = 1;
  *(v5 + 1869) = v518;
  *(v5 + 1871) = v519;
  *(v5 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v157.n128_f32[0]), v347, v157.n128_u64[0], 1), v307, v157, 2), v367, v157, 3);
  *(v5 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v158.f32[0]), v347, *v158.f32, 1), v307, v158, 2), v367, v158, 3);
  *(v5 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v159.f32[0]), v347, *v159.f32, 1), v307, v159, 2), v367, v159, 3);
  *(v5 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v160.f32[0]), v347, *v160.f32, 1), v307, v160, 2), v367, v160, 3);
  *(v5 + 1936) = xmmword_1000EC900;
  *(v5 + 1952) = 0;
  v161 = v516;
  *(v5 + 1955) = v517;
  *(v5 + 1953) = v161;
  *(v5 + 1956) = 1078355558;
  *(v5 + 1960) = 9;
  *(v5 + 1961) = v514;
  *(v5 + 1963) = v515;
  *(v5 + 1964) = 1065353216;
  *(v5 + 1968) = 0;
  *(v5 + 1976) = 0u;
  *(v5 + 1992) = v513;
  *(v5 + 1993) = 1;
  *(v5 + 1995) = 1;
  *(v5 + 2032) = 0;
  *(v5 + 2016) = 0u;
  *(v5 + 2000) = 0u;
  *(v5 + 2036) = 1065353216;
  *(v5 + 2048) = xmmword_1000EF630;
  v162 = *algn_10013DCB0;
  v163 = vmulq_f32(xmmword_10013DCA0, 0);
  v164 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FCA3D70u));
  v165 = xmmword_10013DCC0;
  v166 = xmmword_10013DCD0;
  v368 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v167 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v163), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 2064) = 9;
  v308 = vmlaq_f32(vaddq_f32(v165, vmlaq_f32(v163, 0, v162)), 0, v166);
  v325 = v167;
  v269 = vaddq_f32(v166, vmlaq_f32(vmlaq_f32(v164, vdupq_n_s32(0x3F3D70A4u), v162), vdupq_n_s32(0x400851EBu), v165));
  sub_10001358C(v444, 0.64577, xmmword_1000EC910);
  v168 = sub_100013568(v444);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v168.n128_f32[0]), v325, v168.n128_u64[0], 1), v308, v168, 2), v269, v168, 3);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v169.f32[0]), v325, *v169.f32, 1), v308, v169, 2), v269, v169, 3);
  v291 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v170.f32[0]), v325, *v170.f32, 1), v308, v170, 2), v269, v170, 3);
  v270 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v171.f32[0]), v325, *v171.f32, 1), v308, v171, 2), v269, v171, 3);
  sub_10001358C(v445, -0.41888, xmmword_1000EC8E0);
  v172 = sub_100013568(v445);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v173.f32[0]), v348, *v173.f32, 1), v291, v173, 2), v270, v173, 3);
  v309 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v174.f32[0]), v348, *v174.f32, 1), v291, v174, 2), v270, v174, 3);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v172.n128_f32[0]), v348, v172.n128_u64[0], 1), v291, v172, 2), v270, v172, 3);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v175.f32[0]), v348, *v175.f32, 1), v291, v175, 2), v270, v175, 3);
  sub_10001358C(v446, 2.4609, xmmword_1000EC920);
  v176 = sub_100013568(v446);
  v520 = 1;
  *(v5 + 2080) = 0x4079999A4039999ALL;
  *(v5 + 2088) = 1036831949;
  *(v5 + 2092) = 1;
  *(v5 + 2093) = v525;
  *(v5 + 2095) = v526;
  *(v5 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v176.n128_f32[0]), v326, v176.n128_u64[0], 1), v309, v176, 2), v383, v176, 3);
  *(v5 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v177.f32[0]), v326, *v177.f32, 1), v309, v177, 2), v383, v177, 3);
  *(v5 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v178.f32[0]), v326, *v178.f32, 1), v309, v178, 2), v383, v178, 3);
  *(v5 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v179.f32[0]), v326, *v179.f32, 1), v309, v179, 2), v383, v179, 3);
  *(v5 + 2160) = xmmword_1000F0050;
  *(v5 + 2176) = 1;
  v180 = v523;
  *(v5 + 2179) = v524;
  *(v5 + 2177) = v180;
  *(v5 + 2180) = 1090519040;
  *(v5 + 2184) = 8;
  *(v5 + 2185) = v521;
  *(v5 + 2187) = v522;
  *(v5 + 2188) = 1062836634;
  *(v5 + 2192) = 0;
  *(v5 + 2200) = 0u;
  *(v5 + 2216) = v520;
  *(v5 + 2217) = 3;
  *(v5 + 2219) = 1;
  *(v5 + 2256) = 0;
  *(v5 + 2240) = 0u;
  *(v5 + 2224) = 0u;
  *(v5 + 2260) = 1046059418;
  v181 = xmmword_10013DCA0;
  v182 = *algn_10013DCB0;
  v183 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v5 + 2272) = xmmword_1000EF5A0;
  v184 = xmmword_10013DCC0;
  v185 = xmmword_10013DCD0;
  v370 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v181, 0, v182), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 2288) = 5;
  v327 = vmlaq_f32(vmlaq_f32(vaddq_f32(v182, v183), 0, v184), 0, v185);
  v292 = vmlaq_f32(vaddq_f32(v184, vmlaq_f32(v183, 0, v182)), 0, v185);
  v186 = vmlaq_f32(vmulq_f32(v181, vdupq_n_s32(0x3FD1EB85u)), vdupq_n_s32(0xC011EB85), v182);
  v181.i64[0] = 0x4000000040000000;
  v181.i64[1] = 0x4000000040000000;
  v271 = vaddq_f32(v185, vmlaq_f32(v186, v181, v184));
  sub_10001358C(v447, 0.0, xmmword_1000EC910);
  v187 = sub_100013568(v447);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v187.n128_f32[0]), v327, v187.n128_u64[0], 1), v292, v187, 2), v271, v187, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v188.f32[0]), v327, *v188.f32, 1), v292, v188, 2), v271, v188, 3);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v189.f32[0]), v327, *v189.f32, 1), v292, v189, 2), v271, v189, 3);
  v272 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v190.f32[0]), v327, *v190.f32, 1), v292, v190, 2), v271, v190, 3);
  sub_10001358C(v448, 0.54105, xmmword_1000EC8E0);
  v191 = sub_100013568(v448);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v192.f32[0]), v349, *v192.f32, 1), v310, v192, 2), v272, v192, 3);
  v293 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v193.f32[0]), v349, *v193.f32, 1), v310, v193, 2), v272, v193, 3);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v191.n128_f32[0]), v349, v191.n128_u64[0], 1), v310, v191, 2), v272, v191, 3);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v194.f32[0]), v349, *v194.f32, 1), v310, v194, 2), v272, v194, 3);
  sub_10001358C(v449, 0.0, xmmword_1000EC920);
  v195 = sub_100013568(v449);
  v527 = 1;
  *(v5 + 2304) = 0x4096666640266666;
  *(v5 + 2312) = 1056964608;
  *(v5 + 2316) = 1;
  *(v5 + 2317) = v532;
  *(v5 + 2319) = v533;
  *(v5 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v195.n128_f32[0]), v328, v195.n128_u64[0], 1), v293, v195, 2), v385, v195, 3);
  *(v5 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v196.f32[0]), v328, *v196.f32, 1), v293, v196, 2), v385, v196, 3);
  *(v5 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v197.f32[0]), v328, *v197.f32, 1), v293, v197, 2), v385, v197, 3);
  *(v5 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v198.f32[0]), v328, *v198.f32, 1), v293, v198, 2), v385, v198, 3);
  *(v5 + 2384) = xmmword_1000F16F0;
  *(v5 + 2400) = 1;
  v199 = v530;
  *(v5 + 2403) = v531;
  *(v5 + 2401) = v199;
  *(v5 + 2404) = 1089260749;
  *(v5 + 2408) = 9;
  *(v5 + 2409) = v528;
  *(v5 + 2411) = v529;
  *(v5 + 2412) = 1065353216;
  *(v5 + 2416) = 0;
  *(v5 + 2424) = 0u;
  *(v5 + 2440) = v527;
  *(v5 + 2441) = 3;
  *(v5 + 2443) = 1;
  *(v5 + 2480) = 0;
  *(v5 + 2464) = 0u;
  *(v5 + 2448) = 0u;
  *(v5 + 2484) = 1065353216;
  *(v5 + 2496) = xmmword_1000EF5A0;
  v200 = *algn_10013DCB0;
  v201 = vmulq_f32(xmmword_10013DCA0, 0);
  v202 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3EE147AEu));
  v203 = xmmword_10013DCC0;
  v204 = xmmword_10013DCD0;
  v372 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v205 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v201), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v5 + 2512) = 6;
  v311 = vmlaq_f32(vaddq_f32(v203, vmlaq_f32(v201, 0, v200)), 0, v204);
  v329 = v205;
  v407 = vdupq_n_s32(0xBF8E147B);
  v273 = vaddq_f32(v204, vmlaq_f32(vmlaq_f32(v202, vdupq_n_s32(0xBDCCCCCC), v200), v407, v203));
  sub_10001358C(v450, 1.5708, xmmword_1000EC910);
  v206 = sub_100013568(v450);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v206.n128_f32[0]), v329, v206.n128_u64[0], 1), v311, v206, 2), v273, v206, 3);
  v350 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v207.f32[0]), v329, *v207.f32, 1), v311, v207, 2), v273, v207, 3);
  v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v208.f32[0]), v329, *v208.f32, 1), v311, v208, 2), v273, v208, 3);
  v274 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v209.f32[0]), v329, *v209.f32, 1), v311, v209, 2), v273, v209, 3);
  sub_10001358C(v451, -1.9722, xmmword_1000EC8E0);
  v210 = sub_100013568(v451);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v211.f32[0]), v350, *v211.f32, 1), v294, v211, 2), v274, v211, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v212.f32[0]), v350, *v212.f32, 1), v294, v212, 2), v274, v212, 3);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v210.n128_f32[0]), v350, v210.n128_u64[0], 1), v294, v210, 2), v274, v210, 3);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v213.f32[0]), v350, *v213.f32, 1), v294, v213, 2), v274, v213, 3);
  sub_10001358C(v452, 1.5708, xmmword_1000EC920);
  v214 = sub_100013568(v452);
  v534 = 1;
  *(v5 + 2528) = 0x3EB333333EB33333;
  *(v5 + 2536) = 1056964608;
  *(v5 + 2540) = 1;
  *(v5 + 2541) = v539;
  *(v5 + 2543) = v540;
  *(v5 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v214.n128_f32[0]), v330, v214.n128_u64[0], 1), v312, v214, 2), v387, v214, 3);
  *(v5 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v215.f32[0]), v330, *v215.f32, 1), v312, v215, 2), v387, v215, 3);
  *(v5 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v216.f32[0]), v330, *v216.f32, 1), v312, v216, 2), v387, v216, 3);
  *(v5 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v217.f32[0]), v330, *v217.f32, 1), v312, v217, 2), v387, v217, 3);
  *(v5 + 2608) = xmmword_1000EC900;
  *(v5 + 2624) = 0;
  v218 = v537;
  *(v5 + 2627) = v538;
  *(v5 + 2625) = v218;
  *(v5 + 2628) = 1059481190;
  *(v5 + 2632) = 13;
  *(v5 + 2633) = v535;
  *(v5 + 2635) = v536;
  *(v5 + 2636) = 1065353216;
  *(v5 + 2640) = 0;
  *(v5 + 2648) = 0u;
  *(v5 + 2664) = v534;
  *(v5 + 2665) = 2;
  *(v5 + 2667) = 1;
  *(v5 + 2704) = 0;
  *(v5 + 2688) = 0u;
  *(v5 + 2672) = 0u;
  *(v5 + 2708) = 1065353216;
  *(v5 + 2720) = xmmword_1000EF5C0;
  *(v5 + 2736) = 6;
  v219 = vmulq_f32(xmmword_10013DCA0, 0);
  v374 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v351 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v219), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v331 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v219, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v408 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEC28F5C)), vdupq_n_s32(0xBE999999), *algn_10013DCB0), v407, xmmword_10013DCC0));
  sub_10001358C(v453, -3.002, xmmword_1000EC910);
  v220 = sub_100013568(v453);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v220.n128_f32[0]), v351, v220.n128_u64[0], 1), v331, v220, 2), v408, v220, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v221.f32[0]), v351, *v221.f32, 1), v331, v221, 2), v408, v221, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v222.f32[0]), v351, *v222.f32, 1), v331, v222, 2), v408, v222, 3);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v223.f32[0]), v351, *v223.f32, 1), v331, v223, 2), v408, v223, 3);
  sub_10001358C(v454, -1.4835, xmmword_1000EC8E0);
  v224 = sub_100013568(v454);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v225.f32[0]), v388, *v225.f32, 1), v313, v225, 2), v375, v225, 3);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v224.n128_f32[0]), v388, v224.n128_u64[0], 1), v313, v224, 2), v375, v224, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v226.f32[0]), v388, *v226.f32, 1), v313, v226, 2), v375, v226, 3);
  v404 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v227.f32[0]), v388, *v227.f32, 1), v313, v227, 2), v375, v227, 3);
  sub_10001358C(v455, -2.9845, xmmword_1000EC920);
  v228 = sub_100013568(v455);
  v541 = 1;
  *(v5 + 2752) = 0x3E2E147B3EF5C28FLL;
  *(v5 + 2760) = 1036831949;
  *(v5 + 2764) = 1;
  *(v5 + 2765) = v546;
  *(v5 + 2767) = v547;
  *(v5 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v228.n128_f32[0]), v414, v228.n128_u64[0], 1), v409, v228, 2), v404, v228, 3);
  *(v5 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v229.f32[0]), v414, *v229.f32, 1), v409, v229, 2), v404, v229, 3);
  *(v5 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v230.f32[0]), v414, *v230.f32, 1), v409, v230, 2), v404, v230, 3);
  *(v5 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v231.f32[0]), v414, *v231.f32, 1), v409, v231, 2), v404, v231, 3);
  *(v5 + 2832) = xmmword_1000EC900;
  *(v5 + 2848) = 0;
  v232 = v544;
  *(v5 + 2851) = v545;
  *(v5 + 2849) = v232;
  *(v5 + 2852) = 1061997773;
  *(v5 + 2856) = 13;
  *(v5 + 2857) = v542;
  *(v5 + 2859) = v543;
  *(v5 + 2860) = 1065353216;
  *(v5 + 2864) = 0;
  *(v5 + 2872) = 0u;
  *(v5 + 2888) = v541;
  *(v5 + 2889) = 2;
  *(v5 + 2891) = 1;
  *(v5 + 2928) = 0;
  *(v5 + 2912) = 0u;
  *(v5 + 2896) = 0u;
  *(v5 + 2932) = 1065353216;
  v233 = sub_1000A0774(v5);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (qword_10012F618 != -1)
  {
    swift_once();
  }

  v234 = qword_10013D4A0;
  v415 = qword_10013D498;
  sub_1000125FC(&qword_100131020);
  v235 = swift_allocObject();
  v235[1] = xmmword_1000EC880;
  v235[2] = xmmword_1000F1700;
  v235[3] = xmmword_1000F1710;
  v236 = swift_allocObject();
  v236[1] = xmmword_1000EC880;
  v236[2] = xmmword_1000F1720;
  v236[3] = xmmword_1000F1730;
  v237 = swift_allocObject();
  v237[1] = xmmword_1000EC880;
  v237[2] = xmmword_1000F1740;
  v237[3] = xmmword_1000F1750;
  v238 = qword_10013C0C0;
  v239 = *algn_10013C0C8;
  v240 = xmmword_10013C0D0;

  v241 = qword_10013C0F0;
  v242 = sub_1000A0A98(_swiftEmptyArrayStorage);
  v548.i64[0] = v238;
  v548.i64[1] = v239;
  v549.i64[0] = v240;
  v549.i64[1] = v242;
  v550.i64[0] = _swiftEmptyArrayStorage;
  v550.i64[1] = _swiftEmptyArrayStorage;
  v551 = v241;
  v455[3] = v548;
  v455[4] = v549;
  v455[5] = v550;
  v456 = v241;
  v243 = sub_1000A0A98(&off_10011F208);
  sub_1000047C4(&unk_10011F228, &qword_100131048);
  v244 = sub_1000A092C(_swiftEmptyArrayStorage);
  sub_1000BA704(v244, v243, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v552);

  sub_100081544(&v548);
  swift_bridgeObjectRetain_n();
  v245 = sub_1000C1928(v233);

  sub_1000C53DC(v245, v556);
  v246 = sub_1000C199C(v233);

  sub_1000C53DC(v246, v554);
  xmmword_10013D5A0 = v398;
  *algn_10013D5B0 = v397;
  qword_10013D5C0 = v0;
  dword_10013D5C8 = v1;
  xmmword_10013D5D0 = v396;
  unk_10013D5E0 = v395;
  qword_10013D5F0 = v2;
  dword_10013D5F8 = v3;
  xmmword_10013D600 = v394;
  qword_10013D610 = v4;
  xmmword_10013D620 = v393;
  qword_10013D630 = v392;
  unk_10013D638 = v391;
  dword_10013D640 = v390;
  qword_10013D648 = v389;
  qword_10013D650 = v233;
  qword_10013D678 = v557;
  unk_10013D668 = v556[1];
  unk_10013D658 = v556[0];
  xmmword_10013D680 = v554[0];
  unk_10013D690 = v554[1];
  qword_10013D6A0 = v555;
  unk_10013D6A8 = v415;
  qword_10013D6B0 = v234;
  xmmword_10013D6C0 = xmmword_1000F1760;
  unk_10013D6D0 = xmmword_1000F1770;
  qword_10013D6E0 = v235;
  word_10013D6EC = 260;
  dword_10013D6E8 = 1064388153;
  xmmword_10013D6F0 = xmmword_1000F1780;
  qword_10013D700 = v236;
  xmmword_10013D708 = xmmword_1000F1790;
  xmmword_10013D718 = xmmword_1000F17A0;
  qword_10013D728 = 1062326738;
  unk_10013D730 = v237;
  xmmword_10013D738 = xmmword_1000F17B0;
  xmmword_10013D748 = xmmword_1000F17C0;
  qword_10013D758 = 1062326738;
  result = 0.0000506232971;
  qword_10013D7A0 = v553;
  xmmword_10013D780 = v552[1];
  unk_10013D790 = v552[2];
  xmmword_10013D760 = xmmword_1000F17D0;
  unk_10013D770 = v552[0];
  return result;
}

double sub_10007BAEC()
{
  if (qword_10012F5B8 != -1)
  {
    swift_once();
  }

  v427 = unk_10013BAE0;
  v428 = xmmword_10013BAD0;
  v0 = qword_10013BAF0;
  v1 = dword_10013BAF8;
  v425 = unk_10013BB10;
  v426 = xmmword_10013BB00;
  v2 = qword_10013BB20;
  v424 = dword_10013BB28;
  v423 = xmmword_10013BB30;
  v422 = qword_10013BB40;
  v421 = xmmword_10013BB50;
  v419 = *&dword_10013BB68;
  v420 = qword_10013BB60;
  v418 = dword_10013BB70;
  v417 = qword_10013BB78;
  sub_1000125FC(&qword_100131010);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000F13F0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v4 = vmulq_f32(xmmword_10013DCA0, 0);
  v445 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v441 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v4), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v429 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v4, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v377 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0C9EB85)), vdupq_n_s32(0xC0928F5C), *algn_10013DCB0), vdupq_n_s32(0xC05EB852), xmmword_10013DCC0));
  sub_10001358C(v450, 2.1118, xmmword_1000EC910);
  v5 = sub_100013568(v450);
  v449 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v5.n128_f32[0]), v441, v5.n128_u64[0], 1), v429, v5, 2), v377, v5, 3);
  v437 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v6.f32[0]), v441, *v6.f32, 1), v429, v6, 2), v377, v6, 3);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v7.f32[0]), v441, *v7.f32, 1), v429, v7, 2), v377, v7, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v8.f32[0]), v441, *v8.f32, 1), v429, v8, 2), v377, v8, 3);
  sub_10001358C(v451, -3.6303, xmmword_1000EC8E0);
  v9 = sub_100013568(v451);
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v9.n128_f32[0]), v437, v9.n128_u64[0], 1), v403, v9, 2), v357, v9, 3);
  v430 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v11.f32[0]), v437, *v11.f32, 1), v403, v11, 2), v357, v11, 3);
  v378 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v12.f32[0]), v437, *v12.f32, 1), v403, v12, 2), v357, v12, 3);
  v438 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v13.f32[0]), v437, *v13.f32, 1), v403, v13, 2), v357, v13, 3);
  v442 = v10;
  sub_10001358C(v452, -0.61087, xmmword_1000EC920);
  v14 = sub_100013568(v452);
  v493 = 0;
  *(v3 + 64) = 0x404CCCCD409CCCCDLL;
  *(v3 + 72) = 1045220557;
  *(v3 + 76) = 1;
  *(v3 + 77) = v498;
  *(v3 + 79) = v499;
  *(v3 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v14.n128_f32[0]), v430, v14.n128_u64[0], 1), v378, v14, 2), v438, v14, 3);
  *(v3 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v15.f32[0]), v430, *v15.f32, 1), v378, v15, 2), v438, v15, 3);
  *(v3 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v16.f32[0]), v430, *v16.f32, 1), v378, v16, 2), v438, v16, 3);
  *(v3 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v17.f32[0]), v430, *v17.f32, 1), v378, v17, 2), v438, v17, 3);
  *(v3 + 144) = xmmword_1000EC900;
  *(v3 + 160) = 0;
  v18 = v496;
  *(v3 + 163) = v497;
  *(v3 + 161) = v18;
  *(v3 + 164) = 1099169792;
  *(v3 + 168) = 1;
  *(v3 + 169) = v494;
  *(v3 + 171) = v495;
  *(v3 + 172) = 1062836634;
  *(v3 + 176) = xmmword_1000F17E0;
  *(v3 + 192) = 0x3EB333333F051EB8;
  *(v3 + 200) = v493;
  *(v3 + 201) = 0;
  *(v3 + 203) = 1;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  v19 = *algn_10013DCB0;
  v20 = vmulq_f32(xmmword_10013DCA0, 0);
  v21 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F851EB8u));
  v22 = xmmword_10013DCC0;
  v23 = xmmword_10013DCD0;
  v443 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v3 + 240) = 0;
  *(v3 + 244) = 1065353216;
  v379 = vmlaq_f32(vmlaq_f32(vaddq_f32(v19, v20), 0, v22), 0, v23);
  *(v3 + 256) = xmmword_1000EF5C0;
  v336 = vmlaq_f32(vaddq_f32(v22, vmlaq_f32(v20, 0, v19)), 0, v23);
  v295 = vaddq_f32(v23, vmlaq_f32(vmlaq_f32(v21, vdupq_n_s32(0x3F35C28Fu), v19), vdupq_n_s32(0x3EE66666u), v22));
  *(v3 + 272) = 1;
  sub_10001358C(v453, 0.0, xmmword_1000EC910);
  v24 = sub_100013568(v453);
  v404 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v24.n128_f32[0]), v379, v24.n128_u64[0], 1), v336, v24, 2), v295, v24, 3);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v25.f32[0]), v379, *v25.f32, 1), v336, v25, 2), v295, v25, 3);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v26.f32[0]), v379, *v26.f32, 1), v336, v26, 2), v295, v26, 3);
  v296 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v27.f32[0]), v379, *v27.f32, 1), v336, v27, 2), v295, v27, 3);
  sub_10001358C(v454, 0.0, xmmword_1000EC8E0);
  v28 = sub_100013568(v454);
  v444 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v28.n128_f32[0]), v358, v28.n128_u64[0], 1), v316, v28, 2), v296, v28, 3);
  v380 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v29.f32[0]), v358, *v29.f32, 1), v316, v29, 2), v296, v29, 3);
  v337 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v30.f32[0]), v358, *v30.f32, 1), v316, v30, 2), v296, v30, 3);
  v405 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v31.f32[0]), v358, *v31.f32, 1), v316, v31, 2), v296, v31, 3);
  sub_10001358C(v455, -0.75049, xmmword_1000EC920);
  v32 = sub_100013568(v455);
  v500 = 1;
  *(v3 + 288) = 0x3EB333333FC00000;
  *(v3 + 296) = 1056964608;
  *(v3 + 300) = 1;
  *(v3 + 301) = v505;
  *(v3 + 303) = v506;
  *(v3 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v32.n128_f32[0]), v380, v32.n128_u64[0], 1), v337, v32, 2), v405, v32, 3);
  *(v3 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v33.f32[0]), v380, *v33.f32, 1), v337, v33, 2), v405, v33, 3);
  *(v3 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v34.f32[0]), v380, *v34.f32, 1), v337, v34, 2), v405, v34, 3);
  *(v3 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v35.f32[0]), v380, *v35.f32, 1), v337, v35, 2), v405, v35, 3);
  *(v3 + 368) = xmmword_1000F17F0;
  *(v3 + 384) = 0;
  v36 = v503;
  *(v3 + 387) = v504;
  *(v3 + 385) = v36;
  *(v3 + 388) = 1070386381;
  *(v3 + 392) = 10;
  *(v3 + 393) = v501;
  *(v3 + 395) = v502;
  *(v3 + 396) = 1065353216;
  *(v3 + 416) = 0;
  *(v3 + 400) = 0u;
  *(v3 + 424) = v500;
  *(v3 + 425) = 0;
  *(v3 + 427) = 1;
  *(v3 + 432) = 0u;
  *(v3 + 448) = 0u;
  *(v3 + 464) = 0;
  v37 = *algn_10013DCB0;
  v38 = vmulq_f32(xmmword_10013DCA0, 0);
  v39 = xmmword_10013DCC0;
  v40 = xmmword_10013DCD0;
  v41 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F1EB852u));
  v42 = vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0);
  *(v3 + 468) = 1065353216;
  v359 = vmlaq_f32(v42, 0, v40);
  *(v3 + 480) = xmmword_1000EF5A0;
  *(v3 + 496) = 2;
  v297 = vmlaq_f32(vaddq_f32(v39, vmlaq_f32(v38, 0, v37)), 0, v40);
  v317 = vmlaq_f32(vmlaq_f32(vaddq_f32(v37, v38), 0, v39), 0, v40);
  v271 = vaddq_f32(v40, vmlaq_f32(vmlaq_f32(v41, vdupq_n_s32(0xBEB851EB), v37), vdupq_n_s32(0x3F0F5C29u), v39));
  sub_10001358C(v456, 6.2483, xmmword_1000EC910);
  v43 = sub_100013568(v456);
  v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v43.n128_f32[0]), v317, v43.n128_u64[0], 1), v297, v43, 2), v271, v43, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v44.f32[0]), v317, *v44.f32, 1), v297, v44, 2), v271, v44, 3);
  v282 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v45.f32[0]), v317, *v45.f32, 1), v297, v45, 2), v271, v45, 3);
  v272 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v46.f32[0]), v317, *v46.f32, 1), v297, v46, 2), v271, v46, 3);
  sub_10001358C(v457, 0.68068, xmmword_1000EC8E0);
  v47 = sub_100013568(v457);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v48.f32[0]), v338, *v48.f32, 1), v282, v48, 2), v272, v48, 3);
  v298 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v49.f32[0]), v338, *v49.f32, 1), v282, v49, 2), v272, v49, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v47.n128_f32[0]), v338, v47.n128_u64[0], 1), v282, v47, 2), v272, v47, 3);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v50.f32[0]), v338, *v50.f32, 1), v282, v50, 2), v272, v50, 3);
  sub_10001358C(v458, -2.8274, xmmword_1000EC920);
  v51 = sub_100013568(v458);
  v507 = 1;
  *(v3 + 512) = 0x3F1C28F63FA66666;
  *(v3 + 520) = 1056964608;
  *(v3 + 524) = 1;
  *(v3 + 525) = v512;
  *(v3 + 527) = v513;
  *(v3 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v51.n128_f32[0]), v318, v51.n128_u64[0], 1), v298, v51, 2), v382, v51, 3);
  *(v3 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v52.f32[0]), v318, *v52.f32, 1), v298, v52, 2), v382, v52, 3);
  *(v3 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v53.f32[0]), v318, *v53.f32, 1), v298, v53, 2), v382, v53, 3);
  *(v3 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v54.f32[0]), v318, *v54.f32, 1), v298, v54, 2), v382, v54, 3);
  *(v3 + 592) = xmmword_1000EC900;
  *(v3 + 608) = 0;
  v55 = v510;
  *(v3 + 611) = v511;
  *(v3 + 609) = v55;
  *(v3 + 612) = 1091987046;
  *(v3 + 616) = 13;
  *(v3 + 617) = v508;
  *(v3 + 619) = v509;
  *(v3 + 620) = 1065353216;
  *(v3 + 640) = 0;
  *(v3 + 624) = 0u;
  *(v3 + 648) = v507;
  *(v3 + 649) = 0;
  *(v3 + 651) = 1;
  *(v3 + 656) = 0u;
  *(v3 + 672) = 0u;
  *(v3 + 688) = 0x3F8CCCCDBD1FBE77;
  *(v3 + 704) = xmmword_1000EF5C0;
  *(v3 + 720) = 2;
  v56 = vdupq_n_s32(0x3F199999u);
  v57 = vmulq_f32(xmmword_10013DCA0, 0);
  v361 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v319 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v57), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v299 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v57, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v273 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v56), vdupq_n_s32(0xBED1EB85), *algn_10013DCB0), v56, xmmword_10013DCC0));
  sub_10001358C(v459, 6.2483, xmmword_1000EC910);
  v58 = sub_100013568(v459);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v58.n128_f32[0]), v319, v58.n128_u64[0], 1), v299, v58, 2), v273, v58, 3);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v59.f32[0]), v319, *v59.f32, 1), v299, v59, 2), v273, v59, 3);
  v283 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v60.f32[0]), v319, *v60.f32, 1), v299, v60, 2), v273, v60, 3);
  v274 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v61.f32[0]), v319, *v61.f32, 1), v299, v61, 2), v273, v61, 3);
  sub_10001358C(v460, 0.68068, xmmword_1000EC8E0);
  v62 = sub_100013568(v460);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v63.f32[0]), v339, *v63.f32, 1), v283, v63, 2), v274, v63, 3);
  v300 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v64.f32[0]), v339, *v64.f32, 1), v283, v64, 2), v274, v64, 3);
  v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v62.n128_f32[0]), v339, v62.n128_u64[0], 1), v283, v62, 2), v274, v62, 3);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v65.f32[0]), v339, *v65.f32, 1), v283, v65, 2), v274, v65, 3);
  sub_10001358C(v461, -2.8274, xmmword_1000EC920);
  v66 = sub_100013568(v461);
  v514 = 1;
  *(v3 + 736) = 0x3F0CCCCD3FB33333;
  *(v3 + 744) = 1050589266;
  *(v3 + 748) = 1;
  *(v3 + 749) = v519;
  *(v3 + 751) = v520;
  *(v3 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v66.n128_f32[0]), v320, v66.n128_u64[0], 1), v300, v66, 2), v384, v66, 3);
  *(v3 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v67.f32[0]), v320, *v67.f32, 1), v300, v67, 2), v384, v67, 3);
  *(v3 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v68.f32[0]), v320, *v68.f32, 1), v300, v68, 2), v384, v68, 3);
  *(v3 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v69.f32[0]), v320, *v69.f32, 1), v300, v69, 2), v384, v69, 3);
  *(v3 + 816) = xmmword_1000F17F0;
  *(v3 + 832) = 0;
  v70 = v517;
  *(v3 + 835) = v518;
  *(v3 + 833) = v70;
  *(v3 + 836) = 1104674816;
  *(v3 + 840) = 13;
  *(v3 + 841) = v515;
  *(v3 + 843) = v516;
  *(v3 + 844) = 1065353216;
  *(v3 + 848) = 0;
  *(v3 + 856) = 0u;
  *(v3 + 872) = v514;
  *(v3 + 873) = 0;
  *(v3 + 875) = 1;
  *(v3 + 880) = 0u;
  *(v3 + 896) = 0u;
  *(v3 + 912) = 0x3F8000003C1D4952;
  *(v3 + 928) = xmmword_1000EF5C0;
  v71 = xmmword_10013DCA0;
  v72 = *algn_10013DCB0;
  v73 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v3 + 944) = 9;
  v385 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v71, 0, v72), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v321 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v73, 0, v72)), 0, xmmword_10013DCD0);
  v340 = vmlaq_f32(vmlaq_f32(vaddq_f32(v72, v73), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v284 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(v71, vdupq_n_s32(0x3F2B851Eu)), vdupq_n_s32(0x3F266666u), v72), vdupq_n_s32(0xC091EB85), xmmword_10013DCC0));
  sub_10001358C(v462, 0.24435, xmmword_1000EC910);
  v74 = sub_100013568(v462);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v74.n128_f32[0]), v340, v74.n128_u64[0], 1), v321, v74, 2), v284, v74, 3);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v75.f32[0]), v340, *v75.f32, 1), v321, v75, 2), v284, v75, 3);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v76.f32[0]), v340, *v76.f32, 1), v321, v76, 2), v284, v76, 3);
  v285 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v77.f32[0]), v340, *v77.f32, 1), v321, v77, 2), v284, v77, 3);
  sub_10001358C(v463, -0.24435, xmmword_1000EC8E0);
  v78 = sub_100013568(v463);
  v341 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v79.f32[0]), v363, *v79.f32, 1), v301, v79, 2), v285, v79, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v80.f32[0]), v363, *v80.f32, 1), v301, v80, 2), v285, v80, 3);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v78.n128_f32[0]), v363, v78.n128_u64[0], 1), v301, v78, 2), v285, v78, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v81.f32[0]), v363, *v81.f32, 1), v301, v81, 2), v285, v81, 3);
  sub_10001358C(v464, -3.8921, xmmword_1000EC920);
  v82 = sub_100013568(v464);
  v521 = 0;
  *(v3 + 960) = 0x4059999A4089999ALL;
  *(v3 + 968) = 1045220557;
  *(v3 + 972) = 1;
  *(v3 + 973) = v526;
  *(v3 + 975) = v527;
  *(v3 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v82.n128_f32[0]), v341, v82.n128_u64[0], 1), v322, v82, 2), v407, v82, 3);
  *(v3 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v83.f32[0]), v341, *v83.f32, 1), v322, v83, 2), v407, v83, 3);
  *(v3 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v84.f32[0]), v341, *v84.f32, 1), v322, v84, 2), v407, v84, 3);
  *(v3 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v85.f32[0]), v341, *v85.f32, 1), v322, v85, 2), v407, v85, 3);
  *(v3 + 1040) = xmmword_1000F1800;
  *(v3 + 1056) = 0;
  v86 = v524;
  *(v3 + 1059) = v525;
  *(v3 + 1057) = v86;
  *(v3 + 1060) = 1068708659;
  *(v3 + 1064) = 1;
  *(v3 + 1065) = v522;
  *(v3 + 1067) = v523;
  *(v3 + 1068) = 1059816735;
  *(v3 + 1072) = xmmword_1000F1810;
  *(v3 + 1088) = 0x3F3851EC3F11EB85;
  *(v3 + 1096) = v521;
  *(v3 + 1097) = 1;
  *(v3 + 1099) = 1;
  *(v3 + 1104) = 0u;
  v87 = xmmword_10013DCA0;
  v88 = *algn_10013DCB0;
  v89 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v3 + 1120) = 0u;
  v90 = xmmword_10013DCC0;
  v91 = xmmword_10013DCD0;
  v364 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v87, 0, v88), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v3 + 1136) = 0;
  *(v3 + 1140) = 1065353216;
  v342 = vmlaq_f32(vmlaq_f32(vaddq_f32(v88, v89), 0, v90), 0, v91);
  *(v3 + 1152) = xmmword_1000EF7D0;
  v302 = vmlaq_f32(vaddq_f32(v90, vmlaq_f32(v89, 0, v88)), 0, v91);
  v275 = vaddq_f32(v91, vmlaq_f32(vmlaq_f32(vmulq_f32(v87, vdupq_n_s32(0x3EC7AE14u)), vdupq_n_s32(0x3EC28F5Cu), v88), vdupq_n_s32(0xBF95C28F), v90));
  *(v3 + 1168) = 9;
  sub_10001358C(v465, 0.33161, xmmword_1000EC910);
  v92 = sub_100013568(v465);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v92.n128_f32[0]), v342, v92.n128_u64[0], 1), v302, v92, 2), v275, v92, 3);
  v323 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v93.f32[0]), v342, *v93.f32, 1), v302, v93, 2), v275, v93, 3);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v94.f32[0]), v342, *v94.f32, 1), v302, v94, 2), v275, v94, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v95.f32[0]), v342, *v95.f32, 1), v302, v95, 2), v275, v95, 3);
  sub_10001358C(v466, -0.31416, xmmword_1000EC8E0);
  v96 = sub_100013568(v466);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v97.f32[0]), v323, *v97.f32, 1), v286, v97, 2), v276, v97, 3);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v96.n128_f32[0]), v323, v96.n128_u64[0], 1), v286, v96, 2), v276, v96, 3);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v98.f32[0]), v323, *v98.f32, 1), v286, v98, 2), v276, v98, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v99.f32[0]), v323, *v99.f32, 1), v286, v99, 2), v276, v99, 3);
  sub_10001358C(v467, -0.73304, xmmword_1000EC920);
  v100 = sub_100013568(v467);
  v528 = 1;
  *(v3 + 1184) = 0x3FD9999A3EEB851FLL;
  *(v3 + 1192) = 1048911544;
  *(v3 + 1196) = 1;
  *(v3 + 1197) = v533;
  *(v3 + 1199) = v534;
  *(v3 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v100.n128_f32[0]), v343, v100.n128_u64[0], 1), v303, v100, 2), v388, v100, 3);
  *(v3 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v101.f32[0]), v343, *v101.f32, 1), v303, v101, 2), v388, v101, 3);
  *(v3 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v102.f32[0]), v343, *v102.f32, 1), v303, v102, 2), v388, v102, 3);
  *(v3 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v103.f32[0]), v343, *v103.f32, 1), v303, v103, 2), v388, v103, 3);
  *(v3 + 1264) = xmmword_1000F1820;
  *(v3 + 1280) = 0;
  v104 = v531;
  *(v3 + 1283) = v532;
  *(v3 + 1281) = v104;
  *(v3 + 1284) = 1092616192;
  *(v3 + 1288) = 9;
  *(v3 + 1289) = v529;
  *(v3 + 1291) = v530;
  *(v3 + 1292) = 1065353216;
  *(v3 + 1296) = 0;
  *(v3 + 1304) = 0u;
  *(v3 + 1320) = v528;
  *(v3 + 1321) = 1;
  *(v3 + 1323) = 1;
  *(v3 + 1360) = 0;
  *(v3 + 1344) = 0u;
  *(v3 + 1328) = 0u;
  *(v3 + 1364) = 1065353216;
  *(v3 + 1376) = xmmword_1000EF5A0;
  v105 = *algn_10013DCB0;
  v106 = vmulq_f32(xmmword_10013DCA0, 0);
  v107 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3D75C28Fu));
  v108 = xmmword_10013DCC0;
  v109 = xmmword_10013DCD0;
  v366 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v110 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v106), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v3 + 1392) = 3;
  v304 = vmlaq_f32(vaddq_f32(v108, vmlaq_f32(v106, 0, v105)), 0, v109);
  v324 = v110;
  v277 = vaddq_f32(v109, vmlaq_f32(vmlaq_f32(v107, vdupq_n_s32(0xBD23D70A), v105), vdupq_n_s32(0xBF1C28F6), v108));
  sub_10001358C(v468, 0.19199, xmmword_1000EC910);
  v111 = sub_100013568(v468);
  v389 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v111.n128_f32[0]), v324, v111.n128_u64[0], 1), v304, v111, 2), v277, v111, 3);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v112.f32[0]), v324, *v112.f32, 1), v304, v112, 2), v277, v112, 3);
  v287 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v113.f32[0]), v324, *v113.f32, 1), v304, v113, 2), v277, v113, 3);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v114.f32[0]), v324, *v114.f32, 1), v304, v114, 2), v277, v114, 3);
  sub_10001358C(v469, -0.19199, xmmword_1000EC8E0);
  v115 = sub_100013568(v469);
  v325 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v116.f32[0]), v344, *v116.f32, 1), v287, v116, 2), v278, v116, 3);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v117.f32[0]), v344, *v117.f32, 1), v287, v117, 2), v278, v117, 3);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v115.n128_f32[0]), v344, v115.n128_u64[0], 1), v287, v115, 2), v278, v115, 3);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v118.f32[0]), v344, *v118.f32, 1), v287, v118, 2), v278, v118, 3);
  sub_10001358C(v470, -0.76794, xmmword_1000EC920);
  v119 = sub_100013568(v470);
  v535 = 1;
  *(v3 + 1408) = 0x40000000400CCCCDLL;
  *(v3 + 1416) = 1056964608;
  *(v3 + 1420) = 1;
  *(v3 + 1421) = v540;
  *(v3 + 1423) = v541;
  *(v3 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v119.n128_f32[0]), v325, v119.n128_u64[0], 1), v305, v119, 2), v390, v119, 3);
  *(v3 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v120.f32[0]), v325, *v120.f32, 1), v305, v120, 2), v390, v120, 3);
  *(v3 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v121.f32[0]), v325, *v121.f32, 1), v305, v121, 2), v390, v121, 3);
  *(v3 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v122.f32[0]), v325, *v122.f32, 1), v305, v122, 2), v390, v122, 3);
  *(v3 + 1488) = xmmword_1000F1830;
  *(v3 + 1504) = 0;
  v123 = v538;
  *(v3 + 1507) = v539;
  *(v3 + 1505) = v123;
  *(v3 + 1508) = 1063339950;
  *(v3 + 1512) = 10;
  *(v3 + 1513) = v536;
  *(v3 + 1515) = v537;
  *(v3 + 1516) = 1065353216;
  *(v3 + 1520) = 0;
  *(v3 + 1528) = 0u;
  *(v3 + 1544) = v535;
  *(v3 + 1545) = 1;
  *(v3 + 1547) = 1;
  *(v3 + 1584) = 0;
  *(v3 + 1568) = 0u;
  *(v3 + 1552) = 0u;
  *(v3 + 1588) = 1065353216;
  *(v3 + 1600) = xmmword_1000EF5C0;
  v124 = *algn_10013DCB0;
  v125 = vmulq_f32(xmmword_10013DCA0, 0);
  v126 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F11EB85u));
  v127 = xmmword_10013DCC0;
  v128 = xmmword_10013DCD0;
  v368 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v129 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v125), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v3 + 1616) = 3;
  v306 = vmlaq_f32(vaddq_f32(v127, vmlaq_f32(v125, 0, v124)), 0, v128);
  v326 = v129;
  v279 = vaddq_f32(v128, vmlaq_f32(vmlaq_f32(v126, vdupq_n_s32(0x3F028F5Cu), v124), vdupq_n_s32(0xBF170A3D), v127));
  sub_10001358C(v471, 0.43633, xmmword_1000EC910);
  v130 = sub_100013568(v471);
  v391 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v130.n128_f32[0]), v326, v130.n128_u64[0], 1), v306, v130, 2), v279, v130, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v131.f32[0]), v326, *v131.f32, 1), v306, v131, 2), v279, v131, 3);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v132.f32[0]), v326, *v132.f32, 1), v306, v132, 2), v279, v132, 3);
  v280 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v133.f32[0]), v326, *v133.f32, 1), v306, v133, 2), v279, v133, 3);
  sub_10001358C(v472, -0.40143, xmmword_1000EC8E0);
  v134 = sub_100013568(v472);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v135.f32[0]), v345, *v135.f32, 1), v288, v135, 2), v280, v135, 3);
  v307 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v136.f32[0]), v345, *v136.f32, 1), v288, v136, 2), v280, v136, 3);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v134.n128_f32[0]), v345, v134.n128_u64[0], 1), v288, v134, 2), v280, v134, 3);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v137.f32[0]), v345, *v137.f32, 1), v288, v137, 2), v280, v137, 3);
  sub_10001358C(v473, -0.69813, xmmword_1000EC920);
  v138 = sub_100013568(v473);
  v542 = 1;
  *(v3 + 1632) = 0x4033333340833333;
  *(v3 + 1640) = 1039516303;
  *(v3 + 1644) = 1;
  *(v3 + 1645) = v547;
  *(v3 + 1647) = v548;
  *(v3 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v138.n128_f32[0]), v327, v138.n128_u64[0], 1), v307, v138, 2), v392, v138, 3);
  *(v3 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v139.f32[0]), v327, *v139.f32, 1), v307, v139, 2), v392, v139, 3);
  *(v3 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v140.f32[0]), v327, *v140.f32, 1), v307, v140, 2), v392, v140, 3);
  *(v3 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v141.f32[0]), v327, *v141.f32, 1), v307, v141, 2), v392, v141, 3);
  *(v3 + 1712) = xmmword_1000F1840;
  *(v3 + 1728) = 0;
  v142 = v545;
  *(v3 + 1731) = v546;
  *(v3 + 1729) = v142;
  *(v3 + 1732) = 1066192077;
  *(v3 + 1736) = 9;
  *(v3 + 1737) = v543;
  *(v3 + 1739) = v544;
  *(v3 + 1740) = 1065353216;
  *(v3 + 1744) = 0;
  *(v3 + 1752) = 0u;
  *(v3 + 1768) = v542;
  *(v3 + 1769) = 1;
  *(v3 + 1771) = 0;
  *(v3 + 1808) = 0;
  *(v3 + 1792) = 0u;
  *(v3 + 1776) = 0u;
  v143 = *algn_10013DCB0;
  v144 = vmulq_f32(xmmword_10013DCA0, 0);
  v145 = xmmword_10013DCC0;
  v146 = xmmword_10013DCD0;
  v147 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBCF5C28F));
  v148 = vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0);
  *(v3 + 1812) = 1065353216;
  v346 = vmlaq_f32(v148, 0, v146);
  *(v3 + 1824) = xmmword_1000EF5D0;
  *(v3 + 1840) = 3;
  v289 = vmlaq_f32(vaddq_f32(v145, vmlaq_f32(v144, 0, v143)), 0, v146);
  v308 = vmlaq_f32(vmlaq_f32(vaddq_f32(v143, v144), 0, v145), 0, v146);
  v269 = vaddq_f32(v146, vmlaq_f32(vmlaq_f32(v147, vdupq_n_s32(0x3F8F5C29u), v143), vdupq_n_s32(0xBF199999), v145));
  sub_10001358C(v474, 0.24435, xmmword_1000EC910);
  v149 = sub_100013568(v474);
  v370 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v149.n128_f32[0]), v308, v149.n128_u64[0], 1), v289, v149, 2), v269, v149, 3);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v150.f32[0]), v308, *v150.f32, 1), v289, v150, 2), v269, v150, 3);
  v281 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v151.f32[0]), v308, *v151.f32, 1), v289, v151, 2), v269, v151, 3);
  v270 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v152.f32[0]), v308, *v152.f32, 1), v289, v152, 2), v269, v152, 3);
  sub_10001358C(v475, -0.24435, xmmword_1000EC8E0);
  v153 = sub_100013568(v475);
  v309 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v154.f32[0]), v328, *v154.f32, 1), v281, v154, 2), v270, v154, 3);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v155.f32[0]), v328, *v155.f32, 1), v281, v155, 2), v270, v155, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v153.n128_f32[0]), v328, v153.n128_u64[0], 1), v281, v153, 2), v270, v153, 3);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v156.f32[0]), v328, *v156.f32, 1), v281, v156, 2), v270, v156, 3);
  sub_10001358C(v476, -0.75049, xmmword_1000EC920);
  v157 = sub_100013568(v476);
  v549 = 1;
  *(v3 + 1856) = 0x3EE147AE404CCCCDLL;
  *(v3 + 1864) = 1052938076;
  *(v3 + 1868) = 1;
  *(v3 + 1869) = v554;
  *(v3 + 1871) = v555;
  *(v3 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v157.n128_f32[0]), v309, v157.n128_u64[0], 1), v290, v157, 2), v371, v157, 3);
  *(v3 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v158.f32[0]), v309, *v158.f32, 1), v290, v158, 2), v371, v158, 3);
  *(v3 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v159.f32[0]), v309, *v159.f32, 1), v290, v159, 2), v371, v159, 3);
  *(v3 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v160.f32[0]), v309, *v160.f32, 1), v290, v160, 2), v371, v160, 3);
  *(v3 + 1936) = xmmword_1000F1840;
  *(v3 + 1952) = 0;
  v161 = v552;
  *(v3 + 1955) = v553;
  *(v3 + 1953) = v161;
  *(v3 + 1956) = 1072064102;
  *(v3 + 1960) = 10;
  *(v3 + 1961) = v550;
  *(v3 + 1963) = v551;
  *(v3 + 1964) = 1065353216;
  *(v3 + 1968) = 0;
  *(v3 + 1976) = 0u;
  *(v3 + 1992) = v549;
  *(v3 + 1993) = 1;
  *(v3 + 1995) = 1;
  *(v3 + 2032) = 0;
  *(v3 + 2016) = 0u;
  *(v3 + 2000) = 0u;
  *(v3 + 2036) = 1065353216;
  *(v3 + 2048) = xmmword_1000EF7D0;
  v162 = xmmword_10013DCA0;
  v163 = *algn_10013DCB0;
  v164 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v3 + 2064) = 3;
  v393 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v162, 0, v163), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v329 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v164, 0, v163)), 0, xmmword_10013DCD0);
  v348 = vmlaq_f32(vmlaq_f32(vaddq_f32(v163, v164), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v291 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(v162, vdupq_n_s32(0x3F7D70A3u)), vdupq_n_s32(0xBFDEB852), v163), vdupq_n_s32(0xBEF0A3D7), xmmword_10013DCC0));
  sub_10001358C(v477, 3.9619, xmmword_1000EC910);
  v165 = sub_100013568(v477);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v165.n128_f32[0]), v348, v165.n128_u64[0], 1), v329, v165, 2), v291, v165, 3);
  v372 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v166.f32[0]), v348, *v166.f32, 1), v329, v166, 2), v291, v166, 3);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v167.f32[0]), v348, *v167.f32, 1), v329, v167, 2), v291, v167, 3);
  v292 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v168.f32[0]), v348, *v168.f32, 1), v329, v168, 2), v291, v168, 3);
  sub_10001358C(v478, -3.3859, xmmword_1000EC8E0);
  v169 = sub_100013568(v478);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v170.f32[0]), v372, *v170.f32, 1), v310, v170, 2), v292, v170, 3);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v171.f32[0]), v372, *v171.f32, 1), v310, v171, 2), v292, v171, 3);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v169.n128_f32[0]), v372, v169.n128_u64[0], 1), v310, v169, 2), v292, v169, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v172.f32[0]), v372, *v172.f32, 1), v310, v172, 2), v292, v172, 3);
  sub_10001358C(v479, 1.7279, xmmword_1000EC920);
  v173 = sub_100013568(v479);
  v556 = 1;
  *(v3 + 2080) = 0x3EE147AE40533333;
  *(v3 + 2088) = 1048911544;
  *(v3 + 2092) = 1;
  *(v3 + 2093) = v561;
  *(v3 + 2095) = v562;
  *(v3 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v173.n128_f32[0]), v349, v173.n128_u64[0], 1), v330, v173, 2), v409, v173, 3);
  *(v3 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v174.f32[0]), v349, *v174.f32, 1), v330, v174, 2), v409, v174, 3);
  *(v3 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v175.f32[0]), v349, *v175.f32, 1), v330, v175, 2), v409, v175, 3);
  *(v3 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v176.f32[0]), v349, *v176.f32, 1), v330, v176, 2), v409, v176, 3);
  *(v3 + 2160) = xmmword_1000F1850;
  *(v3 + 2176) = 0;
  v177 = v559;
  *(v3 + 2179) = v560;
  *(v3 + 2177) = v177;
  *(v3 + 2180) = 1083808154;
  *(v3 + 2184) = 9;
  *(v3 + 2185) = v557;
  *(v3 + 2187) = v558;
  *(v3 + 2188) = 1065353216;
  *(v3 + 2192) = 0;
  *(v3 + 2200) = 0u;
  *(v3 + 2216) = v556;
  *(v3 + 2217) = 1;
  *(v3 + 2219) = 0;
  *(v3 + 2256) = 0;
  *(v3 + 2240) = 0u;
  *(v3 + 2224) = 0u;
  *(v3 + 2260) = 1065353216;
  *(v3 + 2272) = xmmword_1000EF5A0;
  v178 = *algn_10013DCB0;
  v179 = vmulq_f32(xmmword_10013DCA0, 0);
  v180 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E4CCCCCu));
  v181 = xmmword_10013DCC0;
  v182 = xmmword_10013DCD0;
  v395 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v183 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v179), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v3 + 2288) = 4;
  v331 = vmlaq_f32(vaddq_f32(v181, vmlaq_f32(v179, 0, v178)), 0, v182);
  v350 = v183;
  v293 = vaddq_f32(v182, vmlaq_f32(vmlaq_f32(v180, vdupq_n_s32(0x3D8F5C29u), v178), vdupq_n_s32(0xBEB33333), v181));
  sub_10001358C(v480, 0.55851, xmmword_1000EC910);
  v184 = sub_100013568(v480);
  v410 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v395, v184.n128_f32[0]), v350, v184.n128_u64[0], 1), v331, v184, 2), v293, v184, 3);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v395, v185.f32[0]), v350, *v185.f32, 1), v331, v185, 2), v293, v185, 3);
  v311 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v395, v186.f32[0]), v350, *v186.f32, 1), v331, v186, 2), v293, v186, 3);
  v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v395, v187.f32[0]), v350, *v187.f32, 1), v331, v187, 2), v293, v187, 3);
  sub_10001358C(v481, -0.48869, xmmword_1000EC8E0);
  v188 = sub_100013568(v481);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v189.f32[0]), v373, *v189.f32, 1), v311, v189, 2), v294, v189, 3);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v190.f32[0]), v373, *v190.f32, 1), v311, v190, 2), v294, v190, 3);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v188.n128_f32[0]), v373, v188.n128_u64[0], 1), v311, v188, 2), v294, v188, 3);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v191.f32[0]), v373, *v191.f32, 1), v311, v191, 2), v294, v191, 3);
  sub_10001358C(v482, 0.92502, xmmword_1000EC920);
  v192 = sub_100013568(v482);
  v563 = 1;
  *(v3 + 2304) = 0x3F8000004019999ALL;
  *(v3 + 2312) = 1055622431;
  *(v3 + 2316) = 1;
  *(v3 + 2317) = v568;
  *(v3 + 2319) = v569;
  *(v3 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v192.n128_f32[0]), v351, v192.n128_u64[0], 1), v332, v192, 2), v411, v192, 3);
  *(v3 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v193.f32[0]), v351, *v193.f32, 1), v332, v193, 2), v411, v193, 3);
  *(v3 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v194.f32[0]), v351, *v194.f32, 1), v332, v194, 2), v411, v194, 3);
  *(v3 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v195.f32[0]), v351, *v195.f32, 1), v332, v195, 2), v411, v195, 3);
  *(v3 + 2384) = xmmword_1000EC900;
  *(v3 + 2400) = 0;
  v196 = v566;
  *(v3 + 2403) = v567;
  *(v3 + 2401) = v196;
  *(v3 + 2404) = 0x40000000;
  *(v3 + 2408) = 9;
  *(v3 + 2409) = v564;
  *(v3 + 2411) = v565;
  *(v3 + 2412) = 1065353216;
  *(v3 + 2416) = 0;
  *(v3 + 2424) = 0u;
  *(v3 + 2440) = v563;
  *(v3 + 2441) = 1;
  *(v3 + 2443) = 1;
  *(v3 + 2464) = 0u;
  *(v3 + 2448) = 0u;
  *(v3 + 2480) = 0x3F06E9793E947AE1;
  *(v3 + 2496) = xmmword_1000EF630;
  v197 = *algn_10013DCB0;
  v198 = vmulq_f32(xmmword_10013DCA0, 0);
  v199 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F6E147Bu));
  v200 = xmmword_10013DCC0;
  v201 = xmmword_10013DCD0;
  v431 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v397 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v198), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v3 + 2512) = 9;
  v352 = vmlaq_f32(vaddq_f32(v200, vmlaq_f32(v198, 0, v197)), 0, v201);
  v312 = vaddq_f32(v201, vmlaq_f32(vmlaq_f32(v199, vdupq_n_s32(0x3FE28F5Cu), v197), vdupq_n_s32(0x4031EB85u), v200));
  sub_10001358C(v483, 0.89012, xmmword_1000EC910);
  v202 = sub_100013568(v483);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v202.n128_f32[0]), v397, v202.n128_u64[0], 1), v352, v202, 2), v312, v202, 3);
  v374 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v203.f32[0]), v397, *v203.f32, 1), v352, v203, 2), v312, v203, 3);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v204.f32[0]), v397, *v204.f32, 1), v352, v204, 2), v312, v204, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v205.f32[0]), v397, *v205.f32, 1), v352, v205, 2), v312, v205, 3);
  sub_10001358C(v484, -0.61087, xmmword_1000EC8E0);
  v206 = sub_100013568(v484);
  v432 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v206.n128_f32[0]), v374, v206.n128_u64[0], 1), v333, v206, 2), v313, v206, 3);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v207.f32[0]), v374, *v207.f32, 1), v333, v207, 2), v313, v207, 3);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v208.f32[0]), v374, *v208.f32, 1), v333, v208, 2), v313, v208, 3);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v209.f32[0]), v374, *v209.f32, 1), v333, v209, 2), v313, v209, 3);
  sub_10001358C(v485, -0.38397, xmmword_1000EC920);
  v210 = sub_100013568(v485);
  v570 = 1;
  *(v3 + 2528) = 0x4089999A40066666;
  *(v3 + 2536) = 1036831949;
  *(v3 + 2540) = 1;
  *(v3 + 2541) = v575;
  *(v3 + 2543) = v576;
  *(v3 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v210.n128_f32[0]), v398, v210.n128_u64[0], 1), v353, v210, 2), v413, v210, 3);
  *(v3 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v211.f32[0]), v398, *v211.f32, 1), v353, v211, 2), v413, v211, 3);
  *(v3 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v212.f32[0]), v398, *v212.f32, 1), v353, v212, 2), v413, v212, 3);
  *(v3 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v213.f32[0]), v398, *v213.f32, 1), v353, v213, 2), v413, v213, 3);
  *(v3 + 2608) = xmmword_1000F1860;
  *(v3 + 2624) = 0;
  v214 = v573;
  *(v3 + 2627) = v574;
  *(v3 + 2625) = v214;
  *(v3 + 2628) = 1067030938;
  *(v3 + 2632) = 8;
  *(v3 + 2633) = v571;
  *(v3 + 2635) = v572;
  *(v3 + 2636) = 1057467924;
  *(v3 + 2640) = 0;
  *(v3 + 2648) = 0u;
  *(v3 + 2664) = v570;
  *(v3 + 2665) = 3;
  *(v3 + 2667) = 1;
  *(v3 + 2704) = 0;
  *(v3 + 2688) = 0u;
  *(v3 + 2672) = 0u;
  *(v3 + 2708) = 1065353216;
  *(v3 + 2720) = xmmword_1000EF5A0;
  v215 = *algn_10013DCB0;
  v216 = vmulq_f32(xmmword_10013DCA0, 0);
  v217 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD47AE1u));
  v218 = xmmword_10013DCC0;
  v219 = xmmword_10013DCD0;
  v433 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v399 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v216), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v3 + 2736) = 5;
  v354 = vmlaq_f32(vaddq_f32(v218, vmlaq_f32(v216, 0, v215)), 0, v219);
  v314 = vaddq_f32(v219, vmlaq_f32(vmlaq_f32(v217, vdupq_n_s32(0xC01C28F6), v215), vdupq_n_s32(0x4007AE14u), v218));
  sub_10001358C(v486, -0.017453, xmmword_1000EC910);
  v220 = sub_100013568(v486);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v220.n128_f32[0]), v399, v220.n128_u64[0], 1), v354, v220, 2), v314, v220, 3);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v221.f32[0]), v399, *v221.f32, 1), v354, v221, 2), v314, v221, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v222.f32[0]), v399, *v222.f32, 1), v354, v222, 2), v314, v222, 3);
  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v223.f32[0]), v399, *v223.f32, 1), v354, v223, 2), v314, v223, 3);
  sub_10001358C(v487, 0.24435, xmmword_1000EC8E0);
  v224 = sub_100013568(v487);
  v434 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v224.n128_f32[0]), v375, v224.n128_u64[0], 1), v334, v224, 2), v315, v224, 3);
  v400 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v225.f32[0]), v375, *v225.f32, 1), v334, v225, 2), v315, v225, 3);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v226.f32[0]), v375, *v226.f32, 1), v334, v226, 2), v315, v226, 3);
  v415 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v227.f32[0]), v375, *v227.f32, 1), v334, v227, 2), v315, v227, 3);
  sub_10001358C(v488, -0.087266, xmmword_1000EC920);
  v228 = sub_100013568(v488);
  v577 = 1;
  *(v3 + 2752) = 0x4039999A400CCCCDLL;
  *(v3 + 2760) = 1053609165;
  *(v3 + 2764) = 1;
  *(v3 + 2765) = v582;
  *(v3 + 2767) = v583;
  *(v3 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v228.n128_f32[0]), v400, v228.n128_u64[0], 1), v355, v228, 2), v415, v228, 3);
  *(v3 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v229.f32[0]), v400, *v229.f32, 1), v355, v229, 2), v415, v229, 3);
  *(v3 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v230.f32[0]), v400, *v230.f32, 1), v355, v230, 2), v415, v230, 3);
  *(v3 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v231.f32[0]), v400, *v231.f32, 1), v355, v231, 2), v415, v231, 3);
  *(v3 + 2832) = xmmword_1000F1870;
  *(v3 + 2848) = 0;
  v232 = v580;
  *(v3 + 2851) = v581;
  *(v3 + 2849) = v232;
  *(v3 + 2852) = 1101004800;
  *(v3 + 2856) = 9;
  *(v3 + 2857) = v578;
  *(v3 + 2859) = v579;
  *(v3 + 2860) = 1065353216;
  *(v3 + 2864) = 0;
  *(v3 + 2872) = 0u;
  *(v3 + 2888) = v577;
  *(v3 + 2889) = 3;
  *(v3 + 2891) = 1;
  *(v3 + 2928) = 0;
  *(v3 + 2912) = 0u;
  *(v3 + 2896) = 0u;
  *(v3 + 2932) = 1065353216;
  *(v3 + 2944) = xmmword_1000EF5C0;
  v233 = *algn_10013DCB0;
  v234 = vmulq_f32(xmmword_10013DCA0, 0);
  v235 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBECCCCCC));
  v236 = xmmword_10013DCC0;
  v237 = xmmword_10013DCD0;
  v439 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v238 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v234), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v3 + 2960) = 6;
  v376 = vmlaq_f32(vaddq_f32(v236, vmlaq_f32(v234, 0, v233)), 0, v237);
  v401 = v238;
  v335 = vaddq_f32(v237, vmlaq_f32(vmlaq_f32(v235, vdupq_n_s32(0xBF51EB85), v233), vdupq_n_s32(0xBF8E147B), v236));
  sub_10001358C(v489, 1.5708, xmmword_1000EC910);
  v239 = sub_100013568(v489);
  v435 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v239.n128_f32[0]), v401, v239.n128_u64[0], 1), v376, v239, 2), v335, v239, 3);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v240.f32[0]), v401, *v240.f32, 1), v376, v240, 2), v335, v240, 3);
  v356 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v241.f32[0]), v401, *v241.f32, 1), v376, v241, 2), v335, v241, 3);
  v402 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v242.f32[0]), v401, *v242.f32, 1), v376, v242, 2), v335, v242, 3);
  sub_10001358C(v490, -2.2864, xmmword_1000EC8E0);
  v243 = sub_100013568(v490);
  v446 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v244.f32[0]), v416, *v244.f32, 1), v356, v244, 2), v402, v244, 3);
  v447 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v243.n128_f32[0]), v416, v243.n128_u64[0], 1), v356, v243, 2), v402, v243, 3);
  v440 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v245.f32[0]), v416, *v245.f32, 1), v356, v245, 2), v402, v245, 3);
  v436 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v246.f32[0]), v416, *v246.f32, 1), v356, v246, 2), v402, v246, 3);
  sub_10001358C(v491, 1.5708, xmmword_1000EC920);
  v247 = sub_100013568(v491);
  v584 = 1;
  *(v3 + 2976) = 0x3F4CCCCD3F800000;
  *(v3 + 2984) = 1065353216;
  *(v3 + 2988) = 1;
  *(v3 + 2989) = v589;
  *(v3 + 2991) = v590;
  *(v3 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v247.n128_f32[0]), v446, v247.n128_u64[0], 1), v440, v247, 2), v436, v247, 3);
  *(v3 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v248.f32[0]), v446, *v248.f32, 1), v440, v248, 2), v436, v248, 3);
  *(v3 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v249.f32[0]), v446, *v249.f32, 1), v440, v249, 2), v436, v249, 3);
  *(v3 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v250.f32[0]), v446, *v250.f32, 1), v440, v250, 2), v436, v250, 3);
  *(v3 + 3056) = xmmword_1000F02C0;
  *(v3 + 3072) = 0;
  v251 = v587;
  *(v3 + 3075) = v588;
  *(v3 + 3073) = v251;
  *(v3 + 3076) = 1064346583;
  *(v3 + 3080) = 13;
  *(v3 + 3081) = v585;
  *(v3 + 3083) = v586;
  *(v3 + 3084) = 1065353216;
  *(v3 + 3088) = 0;
  *(v3 + 3096) = 0u;
  *(v3 + 3112) = v584;
  *(v3 + 3113) = 2;
  *(v3 + 3115) = 1;
  *(v3 + 3152) = 0;
  *(v3 + 3136) = 0u;
  *(v3 + 3120) = 0u;
  *(v3 + 3156) = 1065353216;
  v252 = sub_1000A0774(v3);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (qword_10012F5A8 != -1)
  {
    swift_once();
  }

  v253 = qword_10013B7C0;
  v448 = qword_10013B7B8;
  sub_1000125FC(&qword_100131020);
  v254 = swift_allocObject();
  v254[1] = xmmword_1000ED250;
  v254[2] = xmmword_1000F1880;
  v254[3] = xmmword_1000F1890;
  v254[4] = xmmword_1000F18A0;
  v255 = swift_allocObject();
  v255[1] = xmmword_1000EC880;
  v255[2] = xmmword_1000F18B0;
  v255[3] = xmmword_1000F18C0;
  v256 = swift_allocObject();
  v256[1] = xmmword_1000EC880;
  v256[2] = xmmword_1000F18D0;
  v256[3] = xmmword_1000F18E0;
  v257 = qword_10013BCA0;
  v258 = unk_10013BCA8;
  v259 = qword_10013BCB0;

  v260 = qword_10013BCD0;
  v261 = sub_1000A0A98(_swiftEmptyArrayStorage);
  v591.i64[0] = v257;
  v591.i64[1] = v258;
  v592.i64[0] = v259;
  v592.i64[1] = v261;
  v593.i64[0] = _swiftEmptyArrayStorage;
  v593.i64[1] = _swiftEmptyArrayStorage;
  v594 = v260;
  v491[3] = v591;
  v491[4] = v592;
  v491[5] = v593;
  v492 = v260;
  sub_1000125FC(&qword_100131038);
  v262 = swift_allocObject();
  *(v262 + 16) = xmmword_1000EC870;
  *(v262 + 32) = xmmword_1000EF5A0;
  v263 = v262 + 32;
  *(v262 + 48) = 3;
  *(v262 + 52) = 0;
  *(v262 + 56) = 1;
  *(v262 + 60) = 0;
  *(v262 + 64) = 1;
  *(v262 + 68) = 1045220557;
  *(v262 + 72) = 1;
  v264 = sub_1000A092C(v262);
  swift_setDeallocating();
  sub_1000047C4(v263, &qword_100131040);
  swift_deallocClassInstance();
  v265 = sub_1000A0A98(_swiftEmptyArrayStorage);
  sub_1000BA704(v264, v265, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v595);

  sub_100081544(&v591);
  swift_bridgeObjectRetain_n();
  v266 = sub_1000C1928(v252);

  sub_1000C53DC(v266, v599);
  v267 = sub_1000C199C(v252);

  sub_1000C53DC(v267, v597);
  xmmword_10013D7B0 = v428;
  unk_10013D7C0 = v427;
  qword_10013D7D0 = v0;
  dword_10013D7D8 = v1;
  xmmword_10013D7E0 = v426;
  unk_10013D7F0 = v425;
  qword_10013D800 = v2;
  dword_10013D808 = v424;
  xmmword_10013D810 = v423;
  qword_10013D820 = v422;
  xmmword_10013D830 = v421;
  qword_10013D840 = v420;
  unk_10013D848 = v419;
  dword_10013D850 = v418;
  qword_10013D858 = v417;
  qword_10013D860 = v252;
  qword_10013D888 = v600;
  unk_10013D878 = v599[1];
  unk_10013D868 = v599[0];
  xmmword_10013D890 = v597[0];
  unk_10013D8A0 = v597[1];
  qword_10013D8B0 = v598;
  qword_10013D8B8 = v448;
  qword_10013D8C0 = v253;
  xmmword_10013D8D0 = xmmword_1000F18F0;
  unk_10013D8E0 = xmmword_1000F1900;
  qword_10013D8F0 = v254;
  word_10013D8FC = 2;
  dword_10013D8F8 = 1047025301;
  xmmword_10013D900 = xmmword_1000EFD70;
  qword_10013D910 = v255;
  xmmword_10013D918 = xmmword_1000EC920;
  xmmword_10013D928 = xmmword_1000F1910;
  qword_10013D938 = 1057918607;
  unk_10013D940 = v256;
  xmmword_10013D948 = xmmword_1000F1920;
  xmmword_10013D958 = xmmword_1000F1930;
  qword_10013D968 = 1056767229;
  result = 0.0000000115410987;
  qword_10013D9B0 = v596;
  xmmword_10013D990 = v595[1];
  unk_10013D9A0 = v595[2];
  xmmword_10013D970 = xmmword_1000F1940;
  unk_10013D980 = v595[0];
  return result;
}

double sub_10007E698()
{
  if (qword_10012F5C8 != -1)
  {
    swift_once();
  }

  v461 = unk_10013BF00;
  v462 = xmmword_10013BEF0;
  v0 = qword_10013BF10;
  v1 = dword_10013BF18;
  v459 = unk_10013BF30;
  v460 = xmmword_10013BF20;
  v2 = qword_10013BF40;
  v3 = dword_10013BF48;
  v458 = xmmword_10013BF50;
  v457 = qword_10013BF60;
  v456 = xmmword_10013BF70;
  v454 = unk_10013BF88;
  v455 = qword_10013BF80;
  v453 = dword_10013BF90;
  v452 = qword_10013BF98;
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
  v481 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v476 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v5), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v463 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v5, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v415 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0C9EB85)), vdupq_n_s32(0xC0928F5C), *algn_10013DCB0), vdupq_n_s32(0xC05EB852), xmmword_10013DCC0));
  sub_10001358C(v485, 2.1118, xmmword_1000EC910);
  v6 = sub_100013568(v485);
  v480 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v6.n128_f32[0]), v476, v6.n128_u64[0], 1), v463, v6, 2), v415, v6, 3);
  v472 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v7.f32[0]), v476, *v7.f32, 1), v463, v7, 2), v415, v7, 3);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v8.f32[0]), v476, *v8.f32, 1), v463, v8, 2), v415, v8, 3);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v9.f32[0]), v476, *v9.f32, 1), v463, v9, 2), v415, v9, 3);
  sub_10001358C(v486, -3.6303, xmmword_1000EC8E0);
  v10 = sub_100013568(v486);
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v480, v10.n128_f32[0]), v472, v10.n128_u64[0], 1), v439, v10, 2), v392, v10, 3);
  v464 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v480, v12.f32[0]), v472, *v12.f32, 1), v439, v12, 2), v392, v12, 3);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v480, v13.f32[0]), v472, *v13.f32, 1), v439, v13, 2), v392, v13, 3);
  v473 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v480, v14.f32[0]), v472, *v14.f32, 1), v439, v14, 2), v392, v14, 3);
  v477 = v11;
  sub_10001358C(v487, -0.61087, xmmword_1000EC920);
  v15 = sub_100013568(v487);
  v531 = 0;
  *(v4 + 64) = 0x40466666406CCCCDLL;
  *(v4 + 72) = 1004888130;
  *(v4 + 76) = 1;
  *(v4 + 77) = v536;
  *(v4 + 79) = v537;
  *(v4 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v15.n128_f32[0]), v464, v15.n128_u64[0], 1), v416, v15, 2), v473, v15, 3);
  *(v4 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v16.f32[0]), v464, *v16.f32, 1), v416, v16, 2), v473, v16, 3);
  *(v4 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v17.f32[0]), v464, *v17.f32, 1), v416, v17, 2), v473, v17, 3);
  *(v4 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v18.f32[0]), v464, *v18.f32, 1), v416, v18, 2), v473, v18, 3);
  *(v4 + 144) = xmmword_1000EC900;
  *(v4 + 160) = 0;
  v19 = v534;
  *(v4 + 163) = v535;
  *(v4 + 161) = v19;
  *(v4 + 164) = 0x40000000;
  *(v4 + 168) = 1;
  *(v4 + 169) = v532;
  *(v4 + 171) = v533;
  *(v4 + 172) = 1059648963;
  *(v4 + 176) = xmmword_1000F1950;
  *(v4 + 192) = 0x3F3851EC3E0F5C29;
  *(v4 + 200) = v531;
  *(v4 + 201) = 0;
  *(v4 + 203) = 1;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  v20 = *algn_10013DCB0;
  v21 = vmulq_f32(xmmword_10013DCA0, 0);
  v22 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F851EB8u));
  v23 = xmmword_10013DCC0;
  v24 = xmmword_10013DCD0;
  v478 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v4 + 240) = 0;
  *(v4 + 244) = 1065353216;
  v417 = vmlaq_f32(vmlaq_f32(vaddq_f32(v20, v21), 0, v23), 0, v24);
  *(v4 + 256) = xmmword_1000EF5C0;
  v370 = vmlaq_f32(vaddq_f32(v23, vmlaq_f32(v21, 0, v20)), 0, v24);
  v328 = vaddq_f32(v24, vmlaq_f32(vmlaq_f32(v22, vdupq_n_s32(0x3F35C28Fu), v20), vdupq_n_s32(0x3EE66666u), v23));
  *(v4 + 272) = 1;
  sub_10001358C(v488, 0.0, xmmword_1000EC910);
  v25 = sub_100013568(v488);
  v440 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v478, v25.n128_f32[0]), v417, v25.n128_u64[0], 1), v370, v25, 2), v328, v25, 3);
  v393 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v478, v26.f32[0]), v417, *v26.f32, 1), v370, v26, 2), v328, v26, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v478, v27.f32[0]), v417, *v27.f32, 1), v370, v27, 2), v328, v27, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v478, v28.f32[0]), v417, *v28.f32, 1), v370, v28, 2), v328, v28, 3);
  sub_10001358C(v489, 0.0, xmmword_1000EC8E0);
  v29 = sub_100013568(v489);
  v479 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v29.n128_f32[0]), v393, v29.n128_u64[0], 1), v345, v29, 2), v329, v29, 3);
  v418 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v30.f32[0]), v393, *v30.f32, 1), v345, v30, 2), v329, v30, 3);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v31.f32[0]), v393, *v31.f32, 1), v345, v31, 2), v329, v31, 3);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v32.f32[0]), v393, *v32.f32, 1), v345, v32, 2), v329, v32, 3);
  sub_10001358C(v490, -0.75049, xmmword_1000EC920);
  v33 = sub_100013568(v490);
  v538 = 1;
  *(v4 + 288) = 0x3EAE147B3FA66666;
  *(v4 + 296) = 1056964608;
  *(v4 + 300) = 1;
  *(v4 + 301) = v543;
  *(v4 + 303) = v544;
  *(v4 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v33.n128_f32[0]), v418, v33.n128_u64[0], 1), v371, v33, 2), v441, v33, 3);
  *(v4 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v34.f32[0]), v418, *v34.f32, 1), v371, v34, 2), v441, v34, 3);
  *(v4 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v35.f32[0]), v418, *v35.f32, 1), v371, v35, 2), v441, v35, 3);
  *(v4 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v36.f32[0]), v418, *v36.f32, 1), v371, v36, 2), v441, v36, 3);
  *(v4 + 368) = xmmword_1000F1960;
  *(v4 + 384) = 0;
  v37 = v541;
  *(v4 + 387) = v542;
  *(v4 + 385) = v37;
  *(v4 + 388) = 1077936128;
  *(v4 + 392) = 10;
  *(v4 + 393) = v539;
  *(v4 + 395) = v540;
  *(v4 + 396) = 1065353216;
  *(v4 + 416) = 0;
  *(v4 + 400) = 0u;
  *(v4 + 424) = v538;
  *(v4 + 425) = 0;
  *(v4 + 427) = 1;
  *(v4 + 432) = 0u;
  *(v4 + 448) = 0u;
  *(v4 + 464) = 0;
  *(v4 + 468) = 1065353216;
  v38 = *algn_10013DCB0;
  v39 = vmulq_f32(xmmword_10013DCA0, 0);
  v40 = vdupq_n_s32(0x3F0F5C29u);
  v41 = vmulq_f32(xmmword_10013DCA0, v40);
  v42 = xmmword_10013DCC0;
  v43 = xmmword_10013DCD0;
  v419 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v4 + 480) = xmmword_1000EF5A0;
  *(v4 + 496) = 2;
  v372 = vmlaq_f32(vmlaq_f32(vaddq_f32(v38, v39), 0, v42), 0, v43);
  v346 = vmlaq_f32(vaddq_f32(v42, vmlaq_f32(v39, 0, v38)), 0, v43);
  v305 = vaddq_f32(v43, vmlaq_f32(vmlaq_f32(v41, vdupq_n_s32(0xBED1EB85), v38), v40, v42));
  sub_10001358C(v491, 5.9865, xmmword_1000EC910);
  v44 = sub_100013568(v491);
  v442 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v44.n128_f32[0]), v372, v44.n128_u64[0], 1), v346, v44, 2), v305, v44, 3);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v45.f32[0]), v372, *v45.f32, 1), v346, v45, 2), v305, v45, 3);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v46.f32[0]), v372, *v46.f32, 1), v346, v46, 2), v305, v46, 3);
  v306 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v47.f32[0]), v372, *v47.f32, 1), v346, v47, 2), v305, v47, 3);
  sub_10001358C(v492, 0.83776, xmmword_1000EC8E0);
  v48 = sub_100013568(v492);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v49.f32[0]), v394, *v49.f32, 1), v330, v49, 2), v306, v49, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v50.f32[0]), v394, *v50.f32, 1), v330, v50, 2), v306, v50, 3);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v48.n128_f32[0]), v394, v48.n128_u64[0], 1), v330, v48, 2), v306, v48, 3);
  v443 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v51.f32[0]), v394, *v51.f32, 1), v330, v51, 2), v306, v51, 3);
  sub_10001358C(v493, -2.6704, xmmword_1000EC920);
  v52 = sub_100013568(v493);
  v545 = 1;
  *(v4 + 512) = 0x3EF0A3D73FCCCCCDLL;
  *(v4 + 520) = 1045891645;
  *(v4 + 524) = 1;
  *(v4 + 525) = v550;
  *(v4 + 527) = v551;
  *(v4 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v52.n128_f32[0]), v373, v52.n128_u64[0], 1), v347, v52, 2), v443, v52, 3);
  *(v4 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v53.f32[0]), v373, *v53.f32, 1), v347, v53, 2), v443, v53, 3);
  *(v4 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v54.f32[0]), v373, *v54.f32, 1), v347, v54, 2), v443, v54, 3);
  *(v4 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v55.f32[0]), v373, *v55.f32, 1), v347, v55, 2), v443, v55, 3);
  *(v4 + 592) = xmmword_1000F17F0;
  *(v4 + 608) = 0;
  v56 = v548;
  *(v4 + 611) = v549;
  *(v4 + 609) = v56;
  *(v4 + 612) = 1091043328;
  *(v4 + 616) = 13;
  *(v4 + 617) = v546;
  *(v4 + 619) = v547;
  *(v4 + 620) = 1065353216;
  *(v4 + 640) = 0;
  *(v4 + 624) = 0u;
  *(v4 + 648) = v545;
  *(v4 + 649) = 0;
  *(v4 + 651) = 1;
  *(v4 + 656) = 0u;
  *(v4 + 672) = 0u;
  *(v4 + 688) = 0x3F8F0F0FBC343958;
  *(v4 + 704) = xmmword_1000EF5C0;
  v57 = *algn_10013DCB0;
  v58 = vmulq_f32(xmmword_10013DCA0, 0);
  v59 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F0CCCCDu));
  v60 = xmmword_10013DCC0;
  v61 = xmmword_10013DCD0;
  v421 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v62 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v58), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v4 + 720) = 2;
  v348 = vmlaq_f32(vaddq_f32(v60, vmlaq_f32(v58, 0, v57)), 0, v61);
  v374 = v62;
  v307 = vaddq_f32(v61, vmlaq_f32(vmlaq_f32(v59, vdupq_n_s32(0xBE947AE1), v57), vdupq_n_s32(0x3EC7AE14u), v60));
  sub_10001358C(v494, 6.2657, xmmword_1000EC910);
  v63 = sub_100013568(v494);
  v444 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v63.n128_f32[0]), v374, v63.n128_u64[0], 1), v348, v63, 2), v307, v63, 3);
  v395 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v64.f32[0]), v374, *v64.f32, 1), v348, v64, 2), v307, v64, 3);
  v331 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v65.f32[0]), v374, *v65.f32, 1), v348, v65, 2), v307, v65, 3);
  v308 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v66.f32[0]), v374, *v66.f32, 1), v348, v66, 2), v307, v66, 3);
  sub_10001358C(v495, 0.2618, xmmword_1000EC8E0);
  v67 = sub_100013568(v495);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v68.f32[0]), v395, *v68.f32, 1), v331, v68, 2), v308, v68, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v69.f32[0]), v395, *v69.f32, 1), v331, v69, 2), v308, v69, 3);
  v422 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v67.n128_f32[0]), v395, v67.n128_u64[0], 1), v331, v67, 2), v308, v67, 3);
  v445 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v70.f32[0]), v395, *v70.f32, 1), v331, v70, 2), v308, v70, 3);
  sub_10001358C(v496, -2.6704, xmmword_1000EC920);
  v71 = sub_100013568(v496);
  v552 = 1;
  *(v4 + 736) = 0x3DCCCCCD3FA66666;
  *(v4 + 744) = 1051595899;
  *(v4 + 748) = 1;
  *(v4 + 749) = v557;
  *(v4 + 751) = v558;
  *(v4 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v71.n128_f32[0]), v375, v71.n128_u64[0], 1), v349, v71, 2), v445, v71, 3);
  *(v4 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v72.f32[0]), v375, *v72.f32, 1), v349, v72, 2), v445, v72, 3);
  *(v4 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v73.f32[0]), v375, *v73.f32, 1), v349, v73, 2), v445, v73, 3);
  *(v4 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v74.f32[0]), v375, *v74.f32, 1), v349, v74, 2), v445, v74, 3);
  *(v4 + 816) = xmmword_1000EC900;
  *(v4 + 832) = 0;
  v75 = v555;
  *(v4 + 835) = v556;
  *(v4 + 833) = v75;
  *(v4 + 836) = 1098907648;
  *(v4 + 840) = 13;
  *(v4 + 841) = v553;
  *(v4 + 843) = v554;
  *(v4 + 844) = 1065353216;
  *(v4 + 848) = 0;
  *(v4 + 856) = 0u;
  *(v4 + 872) = v552;
  *(v4 + 873) = 0;
  *(v4 + 875) = 1;
  *(v4 + 912) = 0;
  *(v4 + 880) = 0u;
  *(v4 + 896) = 0u;
  *(v4 + 916) = 1065353216;
  *(v4 + 928) = xmmword_1000EF5C0;
  v76 = xmmword_10013DCA0;
  v77 = *algn_10013DCB0;
  v78 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v4 + 944) = 9;
  v423 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v76, 0, v77), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v350 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v78, 0, v77)), 0, xmmword_10013DCD0);
  v376 = vmlaq_f32(vmlaq_f32(vaddq_f32(v77, v78), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v309 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(v76, vdupq_n_s32(0x3F028F5Cu)), vdupq_n_s32(0x3E0F5C29u), v77), vdupq_n_s32(0xC003D70A), xmmword_10013DCC0));
  sub_10001358C(v497, 0.24435, xmmword_1000EC910);
  v79 = sub_100013568(v497);
  v446 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v79.n128_f32[0]), v376, v79.n128_u64[0], 1), v350, v79, 2), v309, v79, 3);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v80.f32[0]), v376, *v80.f32, 1), v350, v80, 2), v309, v80, 3);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v81.f32[0]), v376, *v81.f32, 1), v350, v81, 2), v309, v81, 3);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v82.f32[0]), v376, *v82.f32, 1), v350, v82, 2), v309, v82, 3);
  sub_10001358C(v498, -0.24435, xmmword_1000EC8E0);
  v83 = sub_100013568(v498);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v84.f32[0]), v396, *v84.f32, 1), v332, v84, 2), v310, v84, 3);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v85.f32[0]), v396, *v85.f32, 1), v332, v85, 2), v310, v85, 3);
  v424 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v83.n128_f32[0]), v396, v83.n128_u64[0], 1), v332, v83, 2), v310, v83, 3);
  v447 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v86.f32[0]), v396, *v86.f32, 1), v332, v86, 2), v310, v86, 3);
  sub_10001358C(v499, -3.7699, xmmword_1000EC920);
  v87 = sub_100013568(v499);
  v559 = 0;
  *(v4 + 960) = 0x4019999A400CCCCDLL;
  *(v4 + 968) = 1056964608;
  *(v4 + 972) = 1;
  *(v4 + 973) = v564;
  *(v4 + 975) = v565;
  *(v4 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v87.n128_f32[0]), v377, v87.n128_u64[0], 1), v351, v87, 2), v447, v87, 3);
  *(v4 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v88.f32[0]), v377, *v88.f32, 1), v351, v88, 2), v447, v88, 3);
  *(v4 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v89.f32[0]), v377, *v89.f32, 1), v351, v89, 2), v447, v89, 3);
  *(v4 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v90.f32[0]), v377, *v90.f32, 1), v351, v90, 2), v447, v90, 3);
  *(v4 + 1040) = xmmword_1000F1970;
  *(v4 + 1056) = 0;
  v91 = v562;
  *(v4 + 1059) = v563;
  *(v4 + 1057) = v91;
  *(v4 + 1060) = 1080033280;
  *(v4 + 1064) = 1;
  *(v4 + 1065) = v560;
  *(v4 + 1067) = v561;
  *(v4 + 1068) = 1057132380;
  *(v4 + 1072) = xmmword_1000F1980;
  *(v4 + 1088) = 0x3F8000003D71A9FCLL;
  *(v4 + 1096) = v559;
  *(v4 + 1097) = 1;
  *(v4 + 1099) = 1;
  *(v4 + 1104) = 0u;
  *(v4 + 1120) = 0u;
  v92 = *algn_10013DCB0;
  v93 = vmulq_f32(xmmword_10013DCA0, 0);
  v94 = xmmword_10013DCC0;
  v95 = xmmword_10013DCD0;
  v96 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E2E147Bu));
  v97 = vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0);
  *(v4 + 1136) = 0;
  *(v4 + 1140) = 1065353216;
  v425 = vmlaq_f32(v97, 0, v95);
  v397 = vmlaq_f32(vmlaq_f32(vaddq_f32(v92, v93), 0, v94), 0, v95);
  *(v4 + 1152) = xmmword_1000EF5A0;
  *(v4 + 1168) = 3;
  v352 = vmlaq_f32(vaddq_f32(v94, vmlaq_f32(v93, 0, v92)), 0, v95);
  v311 = vaddq_f32(v95, vmlaq_f32(vmlaq_f32(v96, vdupq_n_s32(0x3EA8F5C2u), v92), vdupq_n_s32(0xBF570A3D), v94));
  sub_10001358C(v500, 0.36652, xmmword_1000EC910);
  v98 = sub_100013568(v500);
  v448 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v98.n128_f32[0]), v397, v98.n128_u64[0], 1), v352, v98, 2), v311, v98, 3);
  v378 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v99.f32[0]), v397, *v99.f32, 1), v352, v99, 2), v311, v99, 3);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v100.f32[0]), v397, *v100.f32, 1), v352, v100, 2), v311, v100, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v101.f32[0]), v397, *v101.f32, 1), v352, v101, 2), v311, v101, 3);
  sub_10001358C(v501, -0.34907, xmmword_1000EC8E0);
  v102 = sub_100013568(v501);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v103.f32[0]), v378, *v103.f32, 1), v333, v103, 2), v312, v103, 3);
  v426 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v102.n128_f32[0]), v378, v102.n128_u64[0], 1), v333, v102, 2), v312, v102, 3);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v104.f32[0]), v378, *v104.f32, 1), v333, v104, 2), v312, v104, 3);
  v449 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v105.f32[0]), v378, *v105.f32, 1), v333, v105, 2), v312, v105, 3);
  sub_10001358C(v502, -0.75049, xmmword_1000EC920);
  v106 = sub_100013568(v502);
  v566 = 1;
  *(v4 + 1184) = 0x3FD9999A40000000;
  *(v4 + 1192) = 1056964608;
  *(v4 + 1196) = 1;
  *(v4 + 1197) = v571;
  *(v4 + 1199) = v572;
  *(v4 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v106.n128_f32[0]), v398, v106.n128_u64[0], 1), v353, v106, 2), v449, v106, 3);
  *(v4 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v107.f32[0]), v398, *v107.f32, 1), v353, v107, 2), v449, v107, 3);
  *(v4 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v108.f32[0]), v398, *v108.f32, 1), v353, v108, 2), v449, v108, 3);
  *(v4 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v109.f32[0]), v398, *v109.f32, 1), v353, v109, 2), v449, v109, 3);
  *(v4 + 1264) = xmmword_1000F1990;
  *(v4 + 1280) = 0;
  v110 = v569;
  *(v4 + 1283) = v570;
  *(v4 + 1281) = v110;
  *(v4 + 1284) = 1067030938;
  *(v4 + 1288) = 10;
  *(v4 + 1289) = v567;
  *(v4 + 1291) = v568;
  *(v4 + 1292) = 1065353216;
  *(v4 + 1296) = 0;
  *(v4 + 1304) = 0u;
  *(v4 + 1320) = v566;
  *(v4 + 1321) = 1;
  *(v4 + 1323) = 1;
  *(v4 + 1360) = 0;
  *(v4 + 1344) = 0u;
  *(v4 + 1328) = 0u;
  *(v4 + 1364) = 1065353216;
  *(v4 + 1376) = xmmword_1000EF5C0;
  v111 = *algn_10013DCB0;
  v112 = vmulq_f32(xmmword_10013DCA0, 0);
  v113 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F3851EBu));
  v114 = xmmword_10013DCC0;
  v115 = xmmword_10013DCD0;
  v427 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v116 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v112), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v4 + 1392) = 3;
  v354 = vmlaq_f32(vaddq_f32(v114, vmlaq_f32(v112, 0, v111)), 0, v115);
  v379 = v116;
  v313 = vaddq_f32(v115, vmlaq_f32(vmlaq_f32(v113, vdupq_n_s32(0x3F8147AEu), v111), vdupq_n_s32(0xBFEB851E), v114));
  sub_10001358C(v503, 0.24435, xmmword_1000EC910);
  v117 = sub_100013568(v503);
  v450 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v117.n128_f32[0]), v379, v117.n128_u64[0], 1), v354, v117, 2), v313, v117, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v118.f32[0]), v379, *v118.f32, 1), v354, v118, 2), v313, v118, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v119.f32[0]), v379, *v119.f32, 1), v354, v119, 2), v313, v119, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v120.f32[0]), v379, *v120.f32, 1), v354, v120, 2), v313, v120, 3);
  sub_10001358C(v504, -0.24435, xmmword_1000EC8E0);
  v121 = sub_100013568(v504);
  v380 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v122.f32[0]), v399, *v122.f32, 1), v334, v122, 2), v314, v122, 3);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v123.f32[0]), v399, *v123.f32, 1), v334, v123, 2), v314, v123, 3);
  v428 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v121.n128_f32[0]), v399, v121.n128_u64[0], 1), v334, v121, 2), v314, v121, 3);
  v451 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v124.f32[0]), v399, *v124.f32, 1), v334, v124, 2), v314, v124, 3);
  sub_10001358C(v505, -0.75049, xmmword_1000EC920);
  v125 = sub_100013568(v505);
  v573 = 1;
  *(v4 + 1408) = 0x3F5C28F6400CCCCDLL;
  *(v4 + 1416) = 1046562734;
  *(v4 + 1420) = 1;
  *(v4 + 1421) = v578;
  *(v4 + 1423) = v579;
  *(v4 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v125.n128_f32[0]), v380, v125.n128_u64[0], 1), v355, v125, 2), v451, v125, 3);
  *(v4 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v126.f32[0]), v380, *v126.f32, 1), v355, v126, 2), v451, v126, 3);
  *(v4 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v127.f32[0]), v380, *v127.f32, 1), v355, v127, 2), v451, v127, 3);
  *(v4 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v128.f32[0]), v380, *v128.f32, 1), v355, v128, 2), v451, v128, 3);
  *(v4 + 1488) = xmmword_1000F19A0;
  *(v4 + 1504) = 0;
  v129 = v576;
  *(v4 + 1507) = v577;
  *(v4 + 1505) = v129;
  *(v4 + 1508) = 1080452710;
  *(v4 + 1512) = 9;
  *(v4 + 1513) = v574;
  *(v4 + 1515) = v575;
  *(v4 + 1516) = 1065353216;
  *(v4 + 1520) = 0;
  *(v4 + 1528) = 0u;
  *(v4 + 1544) = v573;
  *(v4 + 1545) = 1;
  *(v4 + 1547) = 0;
  *(v4 + 1584) = 0;
  *(v4 + 1568) = 0u;
  *(v4 + 1552) = 0u;
  v130 = *algn_10013DCB0;
  v131 = vmulq_f32(xmmword_10013DCA0, 0);
  v132 = xmmword_10013DCC0;
  v133 = xmmword_10013DCD0;
  v134 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEF5C28F));
  v135 = vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0);
  *(v4 + 1588) = 1065353216;
  v381 = vmlaq_f32(v135, 0, v133);
  v356 = vmlaq_f32(vmlaq_f32(vaddq_f32(v130, v131), 0, v132), 0, v133);
  *(v4 + 1600) = xmmword_1000EF5D0;
  *(v4 + 1616) = 3;
  v315 = vmlaq_f32(vaddq_f32(v132, vmlaq_f32(v131, 0, v130)), 0, v133);
  v429 = vdupq_n_s32(0x3EF5C28Fu);
  v292 = vaddq_f32(v133, vmlaq_f32(vmlaq_f32(v134, v429, v130), vdupq_n_s32(0xBF1C28F6), v132));
  sub_10001358C(v506, 0.19199, xmmword_1000EC910);
  v136 = sub_100013568(v506);
  v400 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v136.n128_f32[0]), v356, v136.n128_u64[0], 1), v315, v136, 2), v292, v136, 3);
  v335 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v137.f32[0]), v356, *v137.f32, 1), v315, v137, 2), v292, v137, 3);
  v297 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v138.f32[0]), v356, *v138.f32, 1), v315, v138, 2), v292, v138, 3);
  v293 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v139.f32[0]), v356, *v139.f32, 1), v315, v139, 2), v292, v139, 3);
  sub_10001358C(v507, -0.19199, xmmword_1000EC8E0);
  v140 = sub_100013568(v507);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v141.f32[0]), v335, *v141.f32, 1), v297, v141, 2), v293, v141, 3);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v140.n128_f32[0]), v335, v140.n128_u64[0], 1), v297, v140, 2), v293, v140, 3);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v142.f32[0]), v335, *v142.f32, 1), v297, v142, 2), v293, v142, 3);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v143.f32[0]), v335, *v143.f32, 1), v297, v143, 2), v293, v143, 3);
  sub_10001358C(v508, -0.66323, xmmword_1000EC920);
  v144 = sub_100013568(v508);
  v580 = 1;
  *(v4 + 1632) = 0x3F23D70A3FE66666;
  *(v4 + 1640) = 1056964608;
  *(v4 + 1644) = 1;
  *(v4 + 1645) = v585;
  *(v4 + 1647) = v586;
  *(v4 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v144.n128_f32[0]), v357, v144.n128_u64[0], 1), v316, v144, 2), v401, v144, 3);
  *(v4 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v145.f32[0]), v357, *v145.f32, 1), v316, v145, 2), v401, v145, 3);
  *(v4 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v146.f32[0]), v357, *v146.f32, 1), v316, v146, 2), v401, v146, 3);
  *(v4 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v147.f32[0]), v357, *v147.f32, 1), v316, v147, 2), v401, v147, 3);
  *(v4 + 1712) = xmmword_1000F19B0;
  *(v4 + 1728) = 0;
  v148 = v583;
  *(v4 + 1731) = v584;
  *(v4 + 1729) = v148;
  *(v4 + 1732) = 1060320051;
  *(v4 + 1736) = 10;
  *(v4 + 1737) = v581;
  *(v4 + 1739) = v582;
  *(v4 + 1740) = 1065353216;
  *(v4 + 1744) = 0;
  *(v4 + 1752) = 0u;
  *(v4 + 1768) = v580;
  *(v4 + 1769) = 1;
  *(v4 + 1771) = 1;
  *(v4 + 1808) = 0;
  *(v4 + 1792) = 0u;
  *(v4 + 1776) = 0u;
  v149 = *algn_10013DCB0;
  v150 = vmulq_f32(xmmword_10013DCA0, 0);
  v151 = xmmword_10013DCC0;
  v152 = xmmword_10013DCD0;
  v153 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F1EB852u));
  v154 = vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0);
  *(v4 + 1812) = 1065353216;
  v383 = vmlaq_f32(v154, 0, v152);
  *(v4 + 1824) = xmmword_1000EF7D0;
  *(v4 + 1840) = 3;
  v317 = vmlaq_f32(vaddq_f32(v151, vmlaq_f32(v150, 0, v149)), 0, v152);
  v336 = vmlaq_f32(vmlaq_f32(vaddq_f32(v149, v150), 0, v151), 0, v152);
  v294 = vaddq_f32(v152, vmlaq_f32(vmlaq_f32(v153, vdupq_n_s32(0xBF8A3D70), v149), vdupq_n_s32(0xBF6147AE), v151));
  sub_10001358C(v509, 3.9619, xmmword_1000EC910);
  v155 = sub_100013568(v509);
  v402 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v155.n128_f32[0]), v336, v155.n128_u64[0], 1), v317, v155, 2), v294, v155, 3);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v156.f32[0]), v336, *v156.f32, 1), v317, v156, 2), v294, v156, 3);
  v298 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v157.f32[0]), v336, *v157.f32, 1), v317, v157, 2), v294, v157, 3);
  v295 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v158.f32[0]), v336, *v158.f32, 1), v317, v158, 2), v294, v158, 3);
  sub_10001358C(v510, -3.3859, xmmword_1000EC8E0);
  v159 = sub_100013568(v510);
  v337 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v160.f32[0]), v358, *v160.f32, 1), v298, v160, 2), v295, v160, 3);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v161.f32[0]), v358, *v161.f32, 1), v298, v161, 2), v295, v161, 3);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v159.n128_f32[0]), v358, v159.n128_u64[0], 1), v298, v159, 2), v295, v159, 3);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v162.f32[0]), v358, *v162.f32, 1), v298, v162, 2), v295, v162, 3);
  sub_10001358C(v511, 1.7279, xmmword_1000EC920);
  v163 = sub_100013568(v511);
  v587 = 1;
  *(v4 + 1856) = 0x3F0A3D713F99999ALL;
  *(v4 + 1864) = 1044549468;
  *(v4 + 1868) = 1;
  *(v4 + 1869) = v592;
  *(v4 + 1871) = v593;
  *(v4 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v163.n128_f32[0]), v337, v163.n128_u64[0], 1), v318, v163, 2), v403, v163, 3);
  *(v4 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v164.f32[0]), v337, *v164.f32, 1), v318, v164, 2), v403, v164, 3);
  *(v4 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v165.f32[0]), v337, *v165.f32, 1), v318, v165, 2), v403, v165, 3);
  *(v4 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v166.f32[0]), v337, *v166.f32, 1), v318, v166, 2), v403, v166, 3);
  *(v4 + 1936) = xmmword_1000F19C0;
  *(v4 + 1952) = 0;
  v167 = v590;
  *(v4 + 1955) = v591;
  *(v4 + 1953) = v167;
  *(v4 + 1956) = 1082969293;
  *(v4 + 1960) = 9;
  *(v4 + 1961) = v588;
  *(v4 + 1963) = v589;
  *(v4 + 1964) = 1065353216;
  *(v4 + 1968) = 0;
  *(v4 + 1976) = 0u;
  *(v4 + 1992) = v587;
  *(v4 + 1993) = 1;
  *(v4 + 1995) = 0;
  *(v4 + 2032) = 0;
  *(v4 + 2016) = 0u;
  *(v4 + 2000) = 0u;
  *(v4 + 2036) = 1065353216;
  *(v4 + 2048) = xmmword_1000EF5A0;
  v168 = *algn_10013DCB0;
  v169 = vmulq_f32(xmmword_10013DCA0, 0);
  v170 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E199999u));
  v171 = xmmword_10013DCC0;
  v172 = xmmword_10013DCD0;
  v359 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v173 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v169), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v4 + 2064) = 4;
  v299 = vmlaq_f32(vaddq_f32(v171, vmlaq_f32(v169, 0, v168)), 0, v172);
  v319 = v173;
  v404 = vdupq_n_s32(0xBEB33333);
  v290 = vaddq_f32(v172, vmlaq_f32(vmlaq_f32(v170, vdupq_n_s32(0x3E051EB8u), v168), v404, v171));
  sub_10001358C(v512, 0.66323, xmmword_1000EC910);
  v174 = sub_100013568(v512);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v174.n128_f32[0]), v319, v174.n128_u64[0], 1), v299, v174, 2), v290, v174, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v175.f32[0]), v319, *v175.f32, 1), v299, v175, 2), v290, v175, 3);
  v296 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v176.f32[0]), v319, *v176.f32, 1), v299, v176, 2), v290, v176, 3);
  v291 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v177.f32[0]), v319, *v177.f32, 1), v299, v177, 2), v290, v177, 3);
  sub_10001358C(v513, -0.55851, xmmword_1000EC8E0);
  v178 = sub_100013568(v513);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v179.f32[0]), v338, *v179.f32, 1), v296, v179, 2), v291, v179, 3);
  v300 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v180.f32[0]), v338, *v180.f32, 1), v296, v180, 2), v291, v180, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v178.n128_f32[0]), v338, v178.n128_u64[0], 1), v296, v178, 2), v291, v178, 3);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v181.f32[0]), v338, *v181.f32, 1), v296, v181, 2), v291, v181, 3);
  sub_10001358C(v514, 0.97738, xmmword_1000EC920);
  v182 = sub_100013568(v514);
  v594 = 1;
  *(v4 + 2080) = 0x3EF0A3D73FC00000;
  *(v4 + 2088) = 1049247089;
  *(v4 + 2092) = 1;
  *(v4 + 2093) = v599;
  *(v4 + 2095) = v600;
  *(v4 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v182.n128_f32[0]), v320, v182.n128_u64[0], 1), v300, v182, 2), v386, v182, 3);
  *(v4 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v183.f32[0]), v320, *v183.f32, 1), v300, v183, 2), v386, v183, 3);
  *(v4 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v184.f32[0]), v320, *v184.f32, 1), v300, v184, 2), v386, v184, 3);
  *(v4 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v185.f32[0]), v320, *v185.f32, 1), v300, v185, 2), v386, v185, 3);
  *(v4 + 2160) = xmmword_1000EC900;
  *(v4 + 2176) = 0;
  v186 = v597;
  *(v4 + 2179) = v598;
  *(v4 + 2177) = v186;
  *(v4 + 2180) = 1079194419;
  *(v4 + 2184) = 9;
  *(v4 + 2185) = v595;
  *(v4 + 2187) = v596;
  *(v4 + 2188) = 1065353216;
  *(v4 + 2192) = 0;
  *(v4 + 2200) = 0u;
  *(v4 + 2216) = v594;
  *(v4 + 2217) = 1;
  *(v4 + 2219) = 1;
  *(v4 + 2240) = 0u;
  *(v4 + 2224) = 0u;
  *(v4 + 2256) = 0x3F99FCE63E8F5C29;
  *(v4 + 2272) = xmmword_1000EF5C0;
  *(v4 + 2288) = 4;
  v187 = vmulq_f32(xmmword_10013DCA0, 0);
  v361 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v321 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v187), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v301 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v187, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v405 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE8F5C29)), v429, *algn_10013DCB0), v404, xmmword_10013DCC0));
  sub_10001358C(v515, 1.7104, xmmword_1000EC910);
  v188 = sub_100013568(v515);
  v430 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v188.n128_f32[0]), v321, v188.n128_u64[0], 1), v301, v188, 2), v405, v188, 3);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v189.f32[0]), v321, *v189.f32, 1), v301, v189, 2), v405, v189, 3);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v190.f32[0]), v321, *v190.f32, 1), v301, v190, 2), v405, v190, 3);
  v302 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v191.f32[0]), v321, *v191.f32, 1), v301, v191, 2), v405, v191, 3);
  sub_10001358C(v516, -1.1345, xmmword_1000EC8E0);
  v192 = sub_100013568(v516);
  v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v193.f32[0]), v387, *v193.f32, 1), v339, v193, 2), v302, v193, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v194.f32[0]), v387, *v194.f32, 1), v339, v194, 2), v302, v194, 3);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v192.n128_f32[0]), v387, v192.n128_u64[0], 1), v339, v192, 2), v302, v192, 3);
  v431 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v195.f32[0]), v387, *v195.f32, 1), v339, v195, 2), v302, v195, 3);
  sub_10001358C(v517, 1.693, xmmword_1000EC920);
  v196 = sub_100013568(v517);
  v601 = 1;
  *(v4 + 2304) = 0x3F26666640666666;
  *(v4 + 2312) = 1045220557;
  *(v4 + 2316) = 1;
  *(v4 + 2317) = v606;
  *(v4 + 2319) = v607;
  *(v4 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v196.n128_f32[0]), v362, v196.n128_u64[0], 1), v322, v196, 2), v431, v196, 3);
  *(v4 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v197.f32[0]), v362, *v197.f32, 1), v322, v197, 2), v431, v197, 3);
  *(v4 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v198.f32[0]), v362, *v198.f32, 1), v322, v198, 2), v431, v198, 3);
  *(v4 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v199.f32[0]), v362, *v199.f32, 1), v322, v199, 2), v431, v199, 3);
  *(v4 + 2384) = xmmword_1000EC900;
  *(v4 + 2400) = 0;
  v200 = v604;
  *(v4 + 2403) = v605;
  *(v4 + 2401) = v200;
  *(v4 + 2404) = 0x40000000;
  *(v4 + 2408) = 9;
  *(v4 + 2409) = v602;
  *(v4 + 2411) = v603;
  *(v4 + 2412) = 1065353216;
  *(v4 + 2416) = 0;
  *(v4 + 2424) = 0u;
  *(v4 + 2440) = v601;
  *(v4 + 2441) = 1;
  *(v4 + 2443) = 1;
  *(v4 + 2464) = 0u;
  *(v4 + 2448) = 0u;
  *(v4 + 2480) = 0x3F2666673E428F5CLL;
  *(v4 + 2496) = xmmword_1000EF630;
  v201 = *algn_10013DCB0;
  v202 = vmulq_f32(xmmword_10013DCA0, 0);
  v203 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F733333u));
  v204 = xmmword_10013DCC0;
  v205 = xmmword_10013DCD0;
  v465 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v407 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v202), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v4 + 2512) = 9;
  v363 = vmlaq_f32(vaddq_f32(v204, vmlaq_f32(v202, 0, v201)), 0, v205);
  v323 = vaddq_f32(v205, vmlaq_f32(vmlaq_f32(v203, vdupq_n_s32(0x3FE3D70Au), v201), vdupq_n_s32(0x4033D70Au), v204));
  sub_10001358C(v518, 0.89012, xmmword_1000EC910);
  v206 = sub_100013568(v518);
  v432 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v465, v206.n128_f32[0]), v407, v206.n128_u64[0], 1), v363, v206, 2), v323, v206, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v465, v207.f32[0]), v407, *v207.f32, 1), v363, v207, 2), v323, v207, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v465, v208.f32[0]), v407, *v208.f32, 1), v363, v208, 2), v323, v208, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v465, v209.f32[0]), v407, *v209.f32, 1), v363, v209, 2), v323, v209, 3);
  sub_10001358C(v519, -0.61087, xmmword_1000EC8E0);
  v210 = sub_100013568(v519);
  v466 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v210.n128_f32[0]), v388, v210.n128_u64[0], 1), v340, v210, 2), v324, v210, 3);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v211.f32[0]), v388, *v211.f32, 1), v340, v211, 2), v324, v211, 3);
  v364 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v212.f32[0]), v388, *v212.f32, 1), v340, v212, 2), v324, v212, 3);
  v433 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v213.f32[0]), v388, *v213.f32, 1), v340, v213, 2), v324, v213, 3);
  sub_10001358C(v520, -0.38397, xmmword_1000EC920);
  v214 = sub_100013568(v520);
  v608 = 1;
  *(v4 + 2528) = 0x403333333F83D70ALL;
  *(v4 + 2536) = 1025758986;
  *(v4 + 2540) = 1;
  *(v4 + 2541) = v613;
  *(v4 + 2543) = v614;
  *(v4 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v214.n128_f32[0]), v408, v214.n128_u64[0], 1), v364, v214, 2), v433, v214, 3);
  *(v4 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v215.f32[0]), v408, *v215.f32, 1), v364, v215, 2), v433, v215, 3);
  *(v4 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v216.f32[0]), v408, *v216.f32, 1), v364, v216, 2), v433, v216, 3);
  *(v4 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v217.f32[0]), v408, *v217.f32, 1), v364, v217, 2), v433, v217, 3);
  *(v4 + 2608) = xmmword_1000F19D0;
  *(v4 + 2624) = 0;
  v218 = v611;
  *(v4 + 2627) = v612;
  *(v4 + 2625) = v218;
  *(v4 + 2628) = 1067869798;
  *(v4 + 2632) = 8;
  *(v4 + 2633) = v609;
  *(v4 + 2635) = v610;
  *(v4 + 2636) = 1057132380;
  *(v4 + 2640) = 0;
  *(v4 + 2648) = 0u;
  *(v4 + 2664) = v608;
  *(v4 + 2665) = 3;
  *(v4 + 2667) = 1;
  *(v4 + 2704) = 0;
  *(v4 + 2688) = 0u;
  *(v4 + 2672) = 0u;
  *(v4 + 2708) = 1065353216;
  *(v4 + 2720) = xmmword_1000EF5A0;
  v219 = *algn_10013DCB0;
  v220 = vmulq_f32(xmmword_10013DCA0, 0);
  v221 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD47AE1u));
  v222 = xmmword_10013DCC0;
  v223 = xmmword_10013DCD0;
  v467 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v409 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v220), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v4 + 2736) = 5;
  v365 = vmlaq_f32(vaddq_f32(v222, vmlaq_f32(v220, 0, v219)), 0, v223);
  v325 = vaddq_f32(v223, vmlaq_f32(vmlaq_f32(v221, vdupq_n_s32(0xC01C28F6), v219), vdupq_n_s32(0x4007AE14u), v222));
  sub_10001358C(v521, -0.017453, xmmword_1000EC910);
  v224 = sub_100013568(v521);
  v434 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v467, v224.n128_f32[0]), v409, v224.n128_u64[0], 1), v365, v224, 2), v325, v224, 3);
  v389 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v467, v225.f32[0]), v409, *v225.f32, 1), v365, v225, 2), v325, v225, 3);
  v341 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v467, v226.f32[0]), v409, *v226.f32, 1), v365, v226, 2), v325, v226, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v467, v227.f32[0]), v409, *v227.f32, 1), v365, v227, 2), v325, v227, 3);
  sub_10001358C(v522, 0.24435, xmmword_1000EC8E0);
  v228 = sub_100013568(v522);
  v468 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v228.n128_f32[0]), v389, v228.n128_u64[0], 1), v341, v228, 2), v326, v228, 3);
  v410 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v229.f32[0]), v389, *v229.f32, 1), v341, v229, 2), v326, v229, 3);
  v366 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v230.f32[0]), v389, *v230.f32, 1), v341, v230, 2), v326, v230, 3);
  v435 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v434, v231.f32[0]), v389, *v231.f32, 1), v341, v231, 2), v326, v231, 3);
  sub_10001358C(v523, -0.087266, xmmword_1000EC920);
  v232 = sub_100013568(v523);
  v615 = 1;
  *(v4 + 2752) = 0x4053D70A400CCCCDLL;
  *(v4 + 2760) = 1053609165;
  *(v4 + 2764) = 1;
  *(v4 + 2765) = v620;
  *(v4 + 2767) = v621;
  *(v4 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v232.n128_f32[0]), v410, v232.n128_u64[0], 1), v366, v232, 2), v435, v232, 3);
  *(v4 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v233.f32[0]), v410, *v233.f32, 1), v366, v233, 2), v435, v233, 3);
  *(v4 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v234.f32[0]), v410, *v234.f32, 1), v366, v234, 2), v435, v234, 3);
  *(v4 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v235.f32[0]), v410, *v235.f32, 1), v366, v235, 2), v435, v235, 3);
  *(v4 + 2832) = xmmword_1000F19E0;
  *(v4 + 2848) = 0;
  v236 = v618;
  *(v4 + 2851) = v619;
  *(v4 + 2849) = v236;
  *(v4 + 2852) = 1099956224;
  *(v4 + 2856) = 9;
  *(v4 + 2857) = v616;
  *(v4 + 2859) = v617;
  *(v4 + 2860) = 1065353216;
  *(v4 + 2864) = 0;
  *(v4 + 2872) = 0u;
  *(v4 + 2888) = v615;
  *(v4 + 2889) = 3;
  *(v4 + 2891) = 1;
  *(v4 + 2928) = 0;
  *(v4 + 2912) = 0u;
  *(v4 + 2896) = 0u;
  *(v4 + 2932) = 1065353216;
  *(v4 + 2944) = xmmword_1000EF5A0;
  v237 = *algn_10013DCB0;
  v238 = vmulq_f32(xmmword_10013DCA0, 0);
  v239 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBC23D70A));
  v240 = xmmword_10013DCC0;
  v241 = xmmword_10013DCD0;
  v411 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v242 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v238), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v4 + 2960) = 6;
  v342 = vmlaq_f32(vaddq_f32(v240, vmlaq_f32(v238, 0, v237)), 0, v241);
  v367 = v242;
  v469 = vdupq_n_s32(0xBF8E147B);
  v303 = vaddq_f32(v241, vmlaq_f32(vmlaq_f32(v239, vdupq_n_s32(0x3EBD70A4u), v237), v469, v240));
  sub_10001358C(v524, 1.5708, xmmword_1000EC910);
  v243 = sub_100013568(v524);
  v436 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v243.n128_f32[0]), v367, v243.n128_u64[0], 1), v342, v243, 2), v303, v243, 3);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v244.f32[0]), v367, *v244.f32, 1), v342, v244, 2), v303, v244, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v245.f32[0]), v367, *v245.f32, 1), v342, v245, 2), v303, v245, 3);
  v304 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v246.f32[0]), v367, *v246.f32, 1), v342, v246, 2), v303, v246, 3);
  sub_10001358C(v525, -2.0071, xmmword_1000EC8E0);
  v247 = sub_100013568(v525);
  v368 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v248.f32[0]), v390, *v248.f32, 1), v327, v248, 2), v304, v248, 3);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v249.f32[0]), v390, *v249.f32, 1), v327, v249, 2), v304, v249, 3);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v247.n128_f32[0]), v390, v247.n128_u64[0], 1), v327, v247, 2), v304, v247, 3);
  v437 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v250.f32[0]), v390, *v250.f32, 1), v327, v250, 2), v304, v250, 3);
  sub_10001358C(v526, 1.5708, xmmword_1000EC920);
  v251 = sub_100013568(v526);
  v622 = 1;
  *(v4 + 2976) = 0x3EB333333E6B851FLL;
  *(v4 + 2984) = 1056964608;
  *(v4 + 2988) = 1;
  *(v4 + 2989) = v627;
  *(v4 + 2991) = v628;
  *(v4 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v251.n128_f32[0]), v368, v251.n128_u64[0], 1), v343, v251, 2), v437, v251, 3);
  *(v4 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v252.f32[0]), v368, *v252.f32, 1), v343, v252, 2), v437, v252, 3);
  *(v4 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v253.f32[0]), v368, *v253.f32, 1), v343, v253, 2), v437, v253, 3);
  *(v4 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v254.f32[0]), v368, *v254.f32, 1), v343, v254, 2), v437, v254, 3);
  *(v4 + 3056) = xmmword_1000F02C0;
  *(v4 + 3072) = 0;
  v255 = v625;
  *(v4 + 3075) = v626;
  *(v4 + 3073) = v255;
  *(v4 + 3076) = 1059984507;
  *(v4 + 3080) = 13;
  *(v4 + 3081) = v623;
  *(v4 + 3083) = v624;
  *(v4 + 3084) = 1065353216;
  *(v4 + 3088) = 0;
  *(v4 + 3096) = 0u;
  *(v4 + 3112) = v622;
  *(v4 + 3113) = 2;
  *(v4 + 3115) = 1;
  *(v4 + 3152) = 0;
  *(v4 + 3136) = 0u;
  *(v4 + 3120) = 0u;
  *(v4 + 3156) = 1065353216;
  *(v4 + 3168) = xmmword_1000EF5C0;
  v256 = *algn_10013DCB0;
  v257 = vmulq_f32(xmmword_10013DCA0, 0);
  v258 = xmmword_10013DCC0;
  v259 = xmmword_10013DCD0;
  v260 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE75C28F));
  v474 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v4 + 3184) = 6;
  v413 = vmlaq_f32(vmlaq_f32(vaddq_f32(v256, v257), 0, v258), 0, v259);
  v391 = vmlaq_f32(vaddq_f32(v258, vmlaq_f32(v257, 0, v256)), 0, v259);
  v344 = vaddq_f32(v259, vmlaq_f32(vmlaq_f32(v260, vdupq_n_s32(0x3EB851EBu), v256), v469, v258));
  sub_10001358C(v527, 1.6406, xmmword_1000EC910);
  v261 = sub_100013568(v527);
  v470 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v261.n128_f32[0]), v413, v261.n128_u64[0], 1), v391, v261, 2), v344, v261, 3);
  v438 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v262.f32[0]), v413, *v262.f32, 1), v391, v262, 2), v344, v262, 3);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v263.f32[0]), v413, *v263.f32, 1), v391, v263, 2), v344, v263, 3);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v264.f32[0]), v413, *v264.f32, 1), v391, v264, 2), v344, v264, 3);
  sub_10001358C(v528, -2.1642, xmmword_1000EC8E0);
  v265 = sub_100013568(v528);
  v482 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v266.f32[0]), v438, *v266.f32, 1), v369, v266, 2), v414, v266, 3);
  v484 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v265.n128_f32[0]), v438, v265.n128_u64[0], 1), v369, v265, 2), v414, v265, 3);
  v475 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v267.f32[0]), v438, *v267.f32, 1), v369, v267, 2), v414, v267, 3);
  v471 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v268.f32[0]), v438, *v268.f32, 1), v369, v268, 2), v414, v268, 3);
  sub_10001358C(v529, 1.6406, xmmword_1000EC920);
  v269 = sub_100013568(v529);
  v629 = 1;
  *(v4 + 3200) = 0x3F3851EC3EB851ECLL;
  *(v4 + 3208) = 1065353216;
  *(v4 + 3212) = 1;
  *(v4 + 3213) = v634;
  *(v4 + 3215) = v635;
  *(v4 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v269.n128_f32[0]), v482, v269.n128_u64[0], 1), v475, v269, 2), v471, v269, 3);
  *(v4 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v270.f32[0]), v482, *v270.f32, 1), v475, v270, 2), v471, v270, 3);
  *(v4 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v271.f32[0]), v482, *v271.f32, 1), v475, v271, 2), v471, v271, 3);
  *(v4 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v484, v272.f32[0]), v482, *v272.f32, 1), v475, v272, 2), v471, v272, 3);
  *(v4 + 3280) = xmmword_1000F19F0;
  *(v4 + 3296) = 0;
  v273 = v632;
  *(v4 + 3299) = v633;
  *(v4 + 3297) = v273;
  *(v4 + 3300) = 1057635697;
  *(v4 + 3304) = 13;
  *(v4 + 3305) = v630;
  *(v4 + 3307) = v631;
  *(v4 + 3308) = 1065353216;
  *(v4 + 3312) = 0;
  *(v4 + 3320) = 0u;
  *(v4 + 3336) = v629;
  *(v4 + 3337) = 2;
  *(v4 + 3339) = 1;
  *(v4 + 3376) = 0;
  *(v4 + 3360) = 0u;
  *(v4 + 3344) = 0u;
  *(v4 + 3380) = 1065353216;
  v274 = sub_1000A0774(v4);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (qword_10012F628 != -1)
  {
    swift_once();
  }

  v275 = qword_10013D8C0;
  v483 = qword_10013D8B8;
  sub_1000125FC(&qword_100131020);
  v276 = swift_allocObject();
  v276[1] = xmmword_1000EDAA0;
  v276[2] = xmmword_1000F1A00;
  v276[3] = xmmword_1000F1A10;
  v276[4] = xmmword_1000F1A20;
  v276[5] = xmmword_1000F1A30;
  v277 = swift_allocObject();
  v277[1] = xmmword_1000EC880;
  v277[2] = xmmword_1000F1A40;
  v277[3] = xmmword_1000F1A50;
  v278 = swift_allocObject();
  v278[1] = xmmword_1000EC880;
  v278[2] = xmmword_1000F1A60;
  v278[3] = xmmword_1000F1A70;
  v279 = qword_10013C0C0;
  v280 = *algn_10013C0C8;
  v281 = xmmword_10013C0D0;

  v282 = qword_10013C0F0;
  v283 = sub_1000A0A98(_swiftEmptyArrayStorage);
  v636.i64[0] = v279;
  v636.i64[1] = v280;
  v637.i64[0] = v281;
  v637.i64[1] = v283;
  v638.i64[0] = _swiftEmptyArrayStorage;
  v638.i64[1] = _swiftEmptyArrayStorage;
  v639 = v282;
  v529[3] = v636;
  v529[4] = v637;
  v529[5] = v638;
  v530 = v282;
  sub_1000125FC(&qword_100131038);
  v284 = swift_allocObject();
  *(v284 + 16) = xmmword_1000EC880;
  *(v284 + 32) = xmmword_1000EF5A0;
  *(v284 + 48) = 3;
  *(v284 + 52) = 0;
  *(v284 + 56) = 1;
  *(v284 + 60) = 0;
  *(v284 + 64) = 1;
  *(v284 + 68) = 1045220557;
  *(v284 + 72) = 1;
  *(v284 + 80) = xmmword_1000EF5D0;
  *(v284 + 96) = 3;
  *(v284 + 100) = 0;
  *(v284 + 104) = 1;
  *(v284 + 108) = 0;
  *(v284 + 112) = 1;
  *(v284 + 116) = 1045220557;
  *(v284 + 120) = 1;
  v285 = sub_1000A092C(v284);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131040);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v286 = sub_1000A0A98(&off_10011F150);
  sub_1000125FC(&qword_100131048);
  swift_arrayDestroy();
  sub_1000BA704(v285, v286, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v640);

  sub_100081544(&v636);
  swift_bridgeObjectRetain_n();
  v287 = sub_1000C1928(v274);

  sub_1000C53DC(v287, v644);
  v288 = sub_1000C199C(v274);

  sub_1000C53DC(v288, v642);
  xmmword_10013D9C0 = v462;
  *algn_10013D9D0 = v461;
  qword_10013D9E0 = v0;
  dword_10013D9E8 = v1;
  xmmword_10013D9F0 = v460;
  unk_10013DA00 = v459;
  qword_10013DA10 = v2;
  dword_10013DA18 = v3;
  xmmword_10013DA20 = v458;
  qword_10013DA30 = v457;
  xmmword_10013DA40 = v456;
  qword_10013DA50 = v455;
  unk_10013DA58 = v454;
  dword_10013DA60 = v453;
  qword_10013DA68 = v452;
  qword_10013DA70 = v274;
  qword_10013DA98 = v645;
  unk_10013DA88 = v644[1];
  unk_10013DA78 = v644[0];
  xmmword_10013DAA0 = v642[0];
  unk_10013DAB0 = v642[1];
  qword_10013DAC0 = v643;
  unk_10013DAC8 = v483;
  qword_10013DAD0 = v275;
  xmmword_10013DAE0 = xmmword_1000F18F0;
  unk_10013DAF0 = xmmword_1000F1A80;
  qword_10013DB00 = v276;
  word_10013DB0C = 258;
  dword_10013DB08 = 1043511489;
  xmmword_10013DB10 = xmmword_1000EFD70;
  qword_10013DB20 = v277;
  xmmword_10013DB28 = xmmword_1000F1A90;
  xmmword_10013DB38 = xmmword_1000F1AA0;
  qword_10013DB48 = 1057918607;
  unk_10013DB50 = v278;
  xmmword_10013DB58 = xmmword_1000F1AB0;
  xmmword_10013DB68 = xmmword_1000F1AC0;
  qword_10013DB78 = 1060418741;
  result = 0.00000009303001;
  qword_10013DBC0 = v641;
  xmmword_10013DBA0 = v640[1];
  unk_10013DBB0 = v640[2];
  xmmword_10013DB80 = xmmword_1000F1AD0;
  unk_10013DB90 = v640[0];
  return result;
}

unint64_t sub_100081598()
{
  result = qword_100131058;
  if (!qword_100131058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131058);
  }

  return result;
}

uint64_t sub_1000815EC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x800000000000) != 0)
  {
  }

  else
  {
  }
}

uint64_t sub_100081628(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    v1 = 0x63696D616E7964;
    v2 = 0x7974696469756C66;
    v3 = a1;
    goto LABEL_5;
  }

  if (a1 >> 6 == 1)
  {
    v1 = 0x63696D616E7964;
    v2 = 0x2E6563617073;
    v3 = a1 & 0x3F;
LABEL_5:
    v15 = v2;
    v4 = 0xE700000000000000;
    v5 = 0xE300000000000000;
    v6 = 7305076;
    v7 = 0xE500000000000000;
    v8 = 0x6565726874;
    if (v3 != 3)
    {
      v8 = 1920298854;
      v7 = 0xE400000000000000;
    }

    if (v3 != 2)
    {
      v6 = v8;
      v5 = v7;
    }

    if (v3)
    {
      v1 = 6647407;
      v4 = 0xE300000000000000;
    }

    if (v3 <= 1)
    {
      v9._countAndFlagsBits = v1;
    }

    else
    {
      v9._countAndFlagsBits = v6;
    }

    if (v3 <= 1)
    {
      v10 = v4;
    }

    else
    {
      v10 = v5;
    }

    v9._object = v10;
    sub_1000E99A4(v9);

    return v15;
  }

  v12 = 2021144426;
  v13 = 7943268;
  v14 = 7878006;
  if (a1 != 131)
  {
    v14 = 3355236;
  }

  if (a1 != 130)
  {
    v13 = v14;
  }

  if (a1 != 128)
  {
    v12 = 7879012;
  }

  if (a1 <= 0x81u)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

uint64_t WallpaperAppearanceMode.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746867694CLL;
  }

  if (a1 == 1)
  {
    return 1802658116;
  }

  return 0x6974616D6F747541;
}

uint64_t sub_100081818(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1802658116;
  if (v2 != 1)
  {
    v4 = 0x6974616D6F747541;
    v3 = 0xE900000000000063;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746867694CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1802658116;
  if (*a2 != 1)
  {
    v8 = 0x6974616D6F747541;
    v7 = 0xE900000000000063;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746867694CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000E9F74();
  }

  return v11 & 1;
}

Swift::Int sub_100081910()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_1000819AC()
{
  sub_1000E9974();
}

Swift::Int sub_100081A34()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_100081ACC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s22MercuryPosterExtension23WallpaperAppearanceModeO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100081AFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802658116;
  if (v2 != 1)
  {
    v5 = 0x6974616D6F747541;
    v4 = 0xE900000000000063;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746867694CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100081B54()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_100131060);
  v1 = sub_100007488(v0, qword_100131060);
  if (qword_10012F750 != -1)
  {
    swift_once();
  }

  v2 = sub_100007488(v0, qword_10013DDB8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100081C1C()
{
  v0 = sub_1000E9514();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000E98D4();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_opt_self() currentDevice];
  [v2 userInterfaceIdiom];

  sub_1000E98C4();
  sub_1000E9504();
  return sub_1000E9934();
}

uint64_t sub_100081F78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000838E8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100081FB8()
{
  v0 = sub_1000E9514();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000E98D4();
  __chkstk_darwin(v1 - 8);
  sub_1000E98C4();
  sub_1000E9504();
  return sub_1000E9934();
}

Swift::Int sub_1000821FC()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_1000822C4()
{
  sub_1000E9974();
}

Swift::Int sub_100082378()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_10008243C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100083934(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000824A8()
{
  result = sub_1000824C8();
  qword_10013DBD0 = result;
  return result;
}

uint64_t sub_1000824C8()
{
  v5 = _swiftEmptyArrayStorage;
  sub_1000E9DC4();
  v3 = 0;
  sub_10008273C(&v3, &v4);
  sub_1000E9DA4();
  sub_1000E9DD4();
  sub_1000E9DE4();
  sub_1000E9DB4();
  v3 = 2;
  sub_10008273C(&v3, &v4);
  sub_1000E9DA4();
  sub_1000E9DD4();
  sub_1000E9DE4();
  sub_1000E9DB4();
  v3 = 1;
  sub_10008273C(&v3, &v4);
  sub_1000E9DA4();
  sub_1000E9DD4();
  sub_1000E9DE4();
  sub_1000E9DB4();
  v3 = 3;
  sub_10008273C(&v3, &v4);
  sub_1000E9DA4();
  sub_1000E9DD4();
  sub_1000E9DE4();
  sub_1000E9DB4();
  v3 = 4;
  sub_10008273C(&v3, &v4);
  sub_1000E9DA4();
  sub_1000E9DD4();
  sub_1000E9DE4();
  sub_1000E9DB4();
  v0 = v5;
  if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    sub_100012904(0, &qword_1001307C8);

    v1 = sub_1000E9E54();
  }

  else
  {

    sub_1000E9F84();
    sub_100012904(0, &qword_1001307C8);
    v1 = v0;
  }

  return v1;
}

void sub_10008273C(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v2 = *a1;
  strcpy(v34, "fluidity.");
  HIWORD(v34[2]) = 0;
  v34[3] = -385875968;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7305076;
  v6 = 0xE500000000000000;
  v7 = 0x6565726874;
  if (v2 != 3)
  {
    v7 = 1920298854;
    v6 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (v2)
  {
    v8 = 6647407;
  }

  else
  {
    v8 = 0x63696D616E7964;
  }

  if (v2)
  {
    v3 = 0xE300000000000000;
  }

  if (v2 <= 1)
  {
    v9._countAndFlagsBits = v8;
  }

  else
  {
    v9._countAndFlagsBits = v5;
  }

  if (v2 <= 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  v9._object = v10;
  sub_1000E99A4(v9);

  v11 = sub_1000E98E4();

  v12 = [objc_opt_self() mutableDescriptorWithIdentifier:v11];

  sub_1000125FC(&qword_1001303F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000EC860;
  *(v13 + 32) = [objc_opt_self() vibrantMaterialColor];
  sub_100012904(0, &qword_10012FAE0);
  isa = sub_1000E9A74().super.isa;

  [v12 setPreferredTitleColors:isa];

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000EC860;
  v16 = [objc_opt_self() whiteColor];
  v17 = [objc_allocWithZone(PRPosterColor) initWithColor:v16];

  *(v15 + 32) = v17;
  v18 = objc_allocWithZone(PRMutablePosterDescriptorHomeScreenConfiguration);
  v19 = sub_1000E9A74().super.isa;

  v20 = [v18 initWithPreferredSolidColors:v19];

  [v12 setPreferredHomeScreenConfiguration:v20];
  sub_1000125FC(&qword_10012FA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EC870;
  strcpy(v34, "lookIdentifier");
  HIBYTE(v34[3]) = -18;
  sub_1000E9D14();
  if (v2 <= 1)
  {
    if (v2)
    {
      v22 = 0xE300000000000000;
      v23 = 6647407;
    }

    else
    {
      v22 = 0xE700000000000000;
      v23 = 0x63696D616E7964;
    }
  }

  else if (v2 == 2)
  {
    v22 = 0xE300000000000000;
    v23 = 7305076;
  }

  else if (v2 == 3)
  {
    v22 = 0xE500000000000000;
    v23 = 0x6565726874;
  }

  else
  {
    v22 = 0xE400000000000000;
    v23 = 1920298854;
  }

  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v23;
  *(inited + 80) = v22;
  v24 = sub_1000A15FC(inited);
  swift_setDeallocating();
  sub_100085688(inited + 32);
  sub_100031F80(v24);

  v25 = [objc_opt_self() currentDevice];
  [v25 userInterfaceIdiom];

  v26 = sub_1000E98E4();

  [v12 setDisplayNameLocalizationKey:v26];

  v35 = &type metadata for MercuryFeatureFlags;
  v36 = sub_1000259A4();
  LOBYTE(v26) = sub_1000E95D4();
  sub_100012710(v34);
  if ((v26 & 1) == 0)
  {
    if (v2)
    {
      v28 = sub_1000E9F74();

      if (v28)
      {
        v27 = 2;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {

      v27 = 2;
    }

    sub_100032570(v27);
  }

  if (v2)
  {
    v29 = v37;
    v30 = sub_1000E9F74();

    v31 = v30 & 1;
  }

  else
  {

    v31 = 1;
    v29 = v37;
  }

  v32 = [objc_opt_self() defaultLookupInfo];
  v33 = [objc_opt_self() galleryOptionsWithAssetLookupInfo:v32 galleryPresentationStyle:0 galleryDisplayStyle:v31];

  [v12 setPreferredGalleryOptions:v33];
  *v29 = v12;
}

__n128 sub_100082DB0()
{
  v0 = sub_1000E98E4();
  v1 = [objc_opt_self() mutableDescriptorWithIdentifier:v0];

  sub_1000125FC(&qword_1001303F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000EC860;
  *(v2 + 32) = [objc_opt_self() vibrantMaterialColor];
  sub_100012904(0, &qword_10012FAE0);
  isa = sub_1000E9A74().super.isa;

  [v1 setPreferredTitleColors:isa];

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000EC860;
  v5 = [objc_opt_self() whiteColor];
  v6 = [objc_allocWithZone(PRPosterColor) initWithColor:v5];

  *(v4 + 32) = v6;
  v7 = objc_allocWithZone(PRMutablePosterDescriptorHomeScreenConfiguration);
  v8 = sub_1000E9A74().super.isa;

  v9 = [v7 initWithPreferredSolidColors:v8];

  [v1 setPreferredHomeScreenConfiguration:v9];
  v10 = swift_allocObject();
  result = xmmword_1000EC860;
  *(v10 + 16) = xmmword_1000EC860;
  *(v10 + 32) = v1;
  return result;
}

void *sub_100082FC8()
{
  result = sub_100082FE8();
  qword_10013DBE8 = result;
  return result;
}

void *sub_100082FE8()
{
  v3 = _swiftEmptyArrayStorage;
  sub_1000E9DC4();
  v1 = 0;
  sub_1000831E4(&v1, &v2);
  sub_1000E9DA4();
  sub_1000E9DD4();
  sub_1000E9DE4();
  sub_1000E9DB4();
  v1 = 1;
  sub_1000831E4(&v1, &v2);
  sub_1000E9DA4();
  sub_1000E9DD4();
  sub_1000E9DE4();
  sub_1000E9DB4();
  v1 = 2;
  sub_1000831E4(&v1, &v2);
  sub_1000E9DA4();
  sub_1000E9DD4();
  sub_1000E9DE4();
  sub_1000E9DB4();
  v1 = 3;
  sub_1000831E4(&v1, &v2);
  sub_1000E9DA4();
  sub_1000E9DD4();
  sub_1000E9DE4();
  sub_1000E9DB4();
  v1 = 4;
  sub_1000831E4(&v1, &v2);
  sub_1000E9DA4();
  sub_1000E9DD4();
  sub_1000E9DE4();
  sub_1000E9DB4();
  return v3;
}

void sub_1000831E4(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0xE300000000000000;
  v6 = 7305076;
  v7 = 0xE500000000000000;
  v8 = 0x6565726874;
  if (v3 != 3)
  {
    v8 = 1920298854;
    v7 = 0xE400000000000000;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*a1)
  {
    v9 = 6647407;
  }

  else
  {
    v9 = 0x63696D616E7964;
  }

  if (*a1)
  {
    v4 = 0xE300000000000000;
  }

  if (*a1 <= 1u)
  {
    v10._countAndFlagsBits = v9;
  }

  else
  {
    v10._countAndFlagsBits = v6;
  }

  if (v3 <= 1)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  v10._object = v11;
  sub_1000E99A4(v10);

  v12 = sub_1000E98E4();

  v13 = [objc_opt_self() mutableDescriptorWithIdentifier:v12];

  sub_1000125FC(&qword_10012FA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EC870;
  sub_1000E9D14();
  if (v3 <= 1)
  {
    if (v3)
    {
      v15 = 0xE300000000000000;
      v16 = 6647407;
    }

    else
    {
      v15 = 0xE700000000000000;
      v16 = 0x63696D616E7964;
    }
  }

  else if (v3 == 2)
  {
    v15 = 0xE300000000000000;
    v16 = 7305076;
  }

  else if (v3 == 3)
  {
    v15 = 0xE500000000000000;
    v16 = 0x6565726874;
  }

  else
  {
    v15 = 0xE400000000000000;
    v16 = 1920298854;
  }

  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v16;
  *(inited + 80) = v15;
  v17 = sub_1000A15FC(inited);
  swift_setDeallocating();
  sub_100085688(inited + 32);
  sub_100031F80(v17);

  v18 = [objc_allocWithZone(PRPosterRenderingConfiguration) initWithDepthEffectDisabled:0 motionEffectsDisabled:0];
  [v13 setPreferredRenderingConfiguration:v18];

  if (v3)
  {
    v19 = sub_1000E9F74();

    if ((v19 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v20 = [objc_opt_self() defaultLookupInfo];
  v21 = [objc_opt_self() galleryOptionsWithAssetLookupInfo:v20 galleryPresentationStyle:0 galleryDisplayStyle:1];

  [v13 setPreferredGalleryOptions:v21];
LABEL_29:
  if (v3)
  {
    v23 = sub_1000E9F74();

    if (v23)
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {

    v22 = 2;
  }

  sub_100032570(v22);
  *a2 = v13;
}

double sub_1000835F4()
{
  v0 = sub_1000E98E4();
  v1 = [objc_opt_self() mutableDescriptorWithIdentifier:v0];

  sub_1000125FC(&qword_1001303F0);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_1000EC860;
  *(v2 + 32) = v1;
  qword_10013DBF0 = v2;
  return result;
}

double sub_1000836A8()
{
  v0 = sub_1000E98E4();
  v1 = [objc_opt_self() mutableDescriptorWithIdentifier:v0];

  v2 = sub_10009D300();
  v3 = sub_10009D460((v2 << 40) + 0x41726F6C6F63, 0xE600000000000000);
  if (v3 != 4)
  {
    sub_1000125FC(&qword_1001303F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1000EC860;
    v5 = objc_allocWithZone(UIColor);
    v6 = 1.0;
    if (v3 < 3)
    {
      v6 = 0.75;
    }

    v7 = [v5 initWithWhite:v6 alpha:0.0];
    v8 = [objc_allocWithZone(PRPosterColor) initWithColor:v7];

    *(v4 + 32) = v8;
    sub_100012904(0, &qword_10012FAE0);
    isa = sub_1000E9A74().super.isa;

    [v1 setPreferredTitleColors:isa];
  }

  sub_1000125FC(&qword_10012FA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EC870;
  sub_1000E9D14();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = 1;
  v11 = sub_1000A15FC(inited);
  swift_setDeallocating();
  sub_100085688(inited + 32);
  sub_100031F80(v11);

  sub_1000125FC(&qword_1001303F0);
  v12 = swift_allocObject();
  *&result = 1;
  *(v12 + 16) = xmmword_1000EC860;
  *(v12 + 32) = v1;
  return result;
}

uint64_t sub_1000838E8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100119BD8;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100083934(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100119C70;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100083980(uint64_t a1, unint64_t a2)
{
  v31[0] = a1;
  v31[1] = a2;
  sub_1000305CC();
  v4 = sub_1000E9CA4();
  v5 = v4[2];
  if (!v5)
  {

    return 248;
  }

  v7 = v4[4];
  v6 = v4[5];
  if (v5 != 2)
  {
    if (v5 == 1)
    {

      v8 = v7 == 2021144426 && v6 == 0xE400000000000000;
      if (v8 || (sub_1000E9F74() & 1) != 0)
      {

        return 128;
      }

      v17 = v7 == 7943268 && v6 == 0xE300000000000000;
      if (v17 || (sub_1000E9F74() & 1) != 0)
      {

        return 130;
      }

      if (v7 == 7879012 && v6 == 0xE300000000000000 || (sub_1000E9F74() & 1) != 0)
      {

        return 129;
      }

      if (v7 == 7878006 && v6 == 0xE300000000000000 || (sub_1000E9F74() & 1) != 0)
      {

        return 131;
      }

      if (v7 == 3355236 && v6 == 0xE300000000000000)
      {

LABEL_54:

        return 132;
      }

      v30 = sub_1000E9F74();

      if (v30)
      {
        goto LABEL_54;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v10 = v7 == 0x7974696469756C66 && v6 == 0xE800000000000000;
  if (v10 || (v11 = v4, v12 = sub_1000E9F74(), v4 = v11, (v12 & 1) != 0))
  {
    v13 = v4[6];
    v14 = v4[7];
    v11 = v4;

    v15 = sub_1000838E8(v13, v14);
    if (v15 != 5)
    {
      v16 = v15;

      return v16;
    }
  }

  else
  {
  }

  if (v7 == 0x6563617073 && v6 == 0xE500000000000000)
  {

    result = v11;
  }

  else
  {
    v19 = sub_1000E9F74();

    result = v11;
    if ((v19 & 1) == 0)
    {
LABEL_30:

LABEL_31:
      if (qword_10012F750 != -1)
      {
        swift_once();
      }

      v20 = sub_1000E96A4();
      sub_100007488(v20, qword_10013DDB8);

      v21 = sub_1000E9684();
      v22 = sub_1000E9BA4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31[0] = v24;
        *v23 = 136446210;
        v25 = sub_100093A3C(a1, a2, v31);

        *(v23 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "couldn’t parse identifier “%{public}s”, trouble will ensue", v23, 0xCu);
        sub_100012710(v24);
      }

      else
      {
      }

      return 248;
    }
  }

  if (*(result + 16) >= 2uLL)
  {
    v26 = *(result + 48);
    v27 = *(result + 56);

    v28 = sub_100083934(v26, v27);
    if (v28 != 5)
    {
      v29 = v28;

      return v29 | 0x40u;
    }

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t sub_100083E4C(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    return type metadata accessor for FluidityWallpaperRenderer(0);
  }

  if (a1 >> 6 == 1)
  {
    return type metadata accessor for SpaceRenderer();
  }

  if (a1 <= 0x81u)
  {
    if (a1 == 128)
    {
      return type metadata accessor for Pro24WallpaperRenderer();
    }

    else
    {
      return type metadata accessor for ShippouRenderer();
    }
  }

  else if (a1 == 130)
  {
    return type metadata accessor for ToriRenderer();
  }

  else if (a1 == 131)
  {
    return type metadata accessor for FloconRenderer();
  }

  else
  {
    return type metadata accessor for Jurin();
  }
}

uint64_t sub_100083F34(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    v1 = 0x63696D616E7964;
    v2 = a1;
    goto LABEL_5;
  }

  if (a1 >> 6 == 1)
  {
    v1 = 0x63696D616E7964;
    v2 = a1 & 0x3F;
LABEL_5:
    v3 = 7305076;
    v4 = 0x6565726874;
    if (v2 != 3)
    {
      v4 = 1920298854;
    }

    if (v2 != 2)
    {
      v3 = v4;
    }

    if (v2)
    {
      v1 = 6647407;
    }

    if (v2 <= 1)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }

  if (a1 <= 0x81u)
  {
    if (a1 == 128)
    {
      return 0x746C7561666564;
    }

    else
    {
      v14 = sub_100099CF8();
      v15 = 0x65727574616ELL;
      if (v14 != 2)
      {
        v15 = 1702063986;
      }

      v16 = 0x6574696877;
      if (!v14)
      {
        v16 = 0x6B63616C62;
      }

      if (v14 <= 1)
      {
        return v16;
      }

      else
      {
        return v15;
      }
    }
  }

  else
  {
    if (a1 == 130)
    {
      v10 = sub_10009A500();
      if (v10 <= 1)
      {
        if (v10)
        {
          return 0x6574696877;
        }

        else
        {
          return 0x6B63616C62;
        }
      }

      if (v10 == 2)
      {
        return 1802398064;
      }

      v7 = v10 == 3;
      v8 = 0x6E65657267;
      v9 = 1702194274;
LABEL_24:
      if (v7)
      {
        return v8;
      }

      else
      {
        return v9;
      }
    }

    if (a1 == 131)
    {
      v6 = sub_1000AFFF8();
      if (!v6)
      {
        return 0x33305F726F6C6F43;
      }

      v7 = v6 == 1;
      v8 = 0x31305F726F6C6F43;
      v9 = 0x32305F726F6C6F43;
      goto LABEL_24;
    }

    v11 = sub_10009D300();
    v12 = 0x41726F6C6F63;
    v13 = 0x43726F6C6F63;
    if (v11 != 2)
    {
      v13 = 0x44726F6C6F63;
    }

    if (v11)
    {
      v12 = 0x42726F6C6F63;
    }

    if (v11 <= 1)
    {
      return v12;
    }

    else
    {
      return v13;
    }
  }
}

_UNKNOWN **sub_1000841E0(unsigned __int8 a1)
{
  v2 = sub_1000E9514();
  __chkstk_darwin(v2 - 8);
  v4 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E98D4();
  __chkstk_darwin(v5 - 8);
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      v87 = _swiftEmptyArrayStorage;
      sub_1000AA308(0, 5, 0);
      v6 = 0;
      v7 = v87;
      do
      {
        v8 = *(&off_100119E08 + v6 + 32);
        v9 = *&aDynamic_1[8 * v8];
        v10 = qword_1000F23C8[v8];
        v86 = 0;
        v11 = sub_100081FB8();
        v13 = v86;
        v87 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          v83 = v11;
          v18 = v12;
          sub_1000AA308((v14 > 1), v15 + 1, 1);
          v12 = v18;
          v11 = v83;
          v7 = v87;
        }

        ++v6;
        v7[2] = v15 + 1;
        v16 = &v7[8 * v15];
        v16[4] = v9;
        v16[5] = v10;
        v16[6] = 0;
        v16[7] = 0;
        *(v16 + 16) = 0;
        *(v16 + 68) = v13;
        v17 = v84;
        *(v16 + 71) = v85;
        *(v16 + 69) = v17;
        v16[9] = v11;
        v16[10] = v12;
        v16[11] = 0;
      }

      while (v6 != 5);
    }

    else if (a1 <= 0x81u)
    {
      if (a1 == 128)
      {
        return &off_100119D30;
      }

      else
      {
        v87 = _swiftEmptyArrayStorage;
        sub_1000AA308(0, 4, 0);
        v70 = 0;
        v7 = v87;
        do
        {
          v71 = *(&off_100119DB8 + v70 + 32);
          v72 = *&aBlack_3[8 * v71];
          v73 = qword_1000F2330[v71];
          v86 = 0;
          v74 = sub_1000997F8();
          v76 = v86;
          v87 = v7;
          v78 = v7[2];
          v77 = v7[3];
          if (v78 >= v77 >> 1)
          {
            v83 = v74;
            v81 = v75;
            sub_1000AA308((v77 > 1), v78 + 1, 1);
            v75 = v81;
            v74 = v83;
            v7 = v87;
          }

          ++v70;
          v7[2] = v78 + 1;
          v79 = &v7[8 * v78];
          v79[4] = v72;
          v79[5] = v73;
          v79[6] = 0;
          v79[7] = 0;
          *(v79 + 16) = 0;
          *(v79 + 68) = v76;
          v80 = v84;
          *(v79 + 71) = v85;
          *(v79 + 69) = v80;
          v79[9] = v74;
          v79[10] = v75;
          v79[11] = 0;
        }

        while (v70 != 4);
      }
    }

    else if (a1 == 130)
    {
      v87 = _swiftEmptyArrayStorage;
      sub_1000AA308(0, 5, 0);
      v45 = 0;
      v7 = v87;
      do
      {
        v46 = *(&off_100119DE0 + v45 + 32);
        v47 = *&aBlack_2[8 * v46];
        v48 = qword_1000F2378[v46];
        v86 = 0;
        v49 = sub_100099F24();
        v51 = v86;
        v87 = v7;
        v53 = v7[2];
        v52 = v7[3];
        if (v53 >= v52 >> 1)
        {
          v83 = v49;
          v56 = v50;
          sub_1000AA308((v52 > 1), v53 + 1, 1);
          v50 = v56;
          v49 = v83;
          v7 = v87;
        }

        ++v45;
        v7[2] = v53 + 1;
        v54 = &v7[8 * v53];
        v54[4] = v47;
        v54[5] = v48;
        v54[6] = 0;
        v54[7] = 0;
        *(v54 + 16) = 0;
        *(v54 + 68) = v51;
        v55 = v84;
        *(v54 + 71) = v85;
        *(v54 + 69) = v55;
        v54[9] = v49;
        v54[10] = v50;
        v54[11] = 0;
      }

      while (v45 != 5);
    }

    else if (a1 == 131)
    {
      v87 = _swiftEmptyArrayStorage;
      v82[1] = v4;
      sub_1000AA308(0, 3, 0);
      v31 = 0;
      v7 = v87;
      v83 = "FLUIDITY_DISPLAY_NAME_IPAD";
      do
      {
        v32 = *(&off_100119E30 + v31 + 32);
        v86 = 0;
        if (v32)
        {
          if (v32 == 1)
          {
            sub_1000E98C4();
            sub_1000E9504();
            v33 = sub_1000E9934();
            v35 = v34;
            v36 = 0x31305F726F6C6F43;
          }

          else
          {
            sub_1000E98C4();
            sub_1000E9504();
            v33 = sub_1000E9934();
            v35 = v38;
            v36 = 0x32305F726F6C6F43;
          }
        }

        else
        {
          sub_1000E98C4();
          sub_1000E9504();
          v33 = sub_1000E9934();
          v35 = v37;
          v36 = 0x33305F726F6C6F43;
        }

        v39 = v86;
        v87 = v7;
        v41 = v7[2];
        v40 = v7[3];
        if (v41 >= v40 >> 1)
        {
          sub_1000AA308((v40 > 1), v41 + 1, 1);
          v7 = v87;
        }

        ++v31;
        v7[2] = v41 + 1;
        v42 = &v7[8 * v41];
        v42[4] = v36;
        v42[5] = 0xE800000000000000;
        v42[6] = 0;
        v42[7] = 0;
        *(v42 + 16) = 0;
        *(v42 + 68) = v39;
        v43 = v84;
        *(v42 + 71) = v85;
        *(v42 + 69) = v43;
        v42[9] = v33;
        v42[10] = v35;
        v42[11] = 0;
      }

      while (v31 != 3);
    }

    else
    {
      v87 = _swiftEmptyArrayStorage;
      sub_1000AA308(0, 4, 0);
      v57 = 0;
      v7 = v87;
      do
      {
        v86 = 0;
        v58 = *(&off_100119E58 + v57 + 32);
        v59 = dbl_1000F23F0[v58];
        v60 = sub_10009CF9C();
        v62 = v61;
        v63 = [objc_allocWithZone(UIColor) initWithWhite:v59 alpha:0.0];
        v64 = v86;
        v87 = v7;
        v66 = v7[2];
        v65 = v7[3];
        if (v66 >= v65 >> 1)
        {
          v69 = v63;
          sub_1000AA308((v65 > 1), v66 + 1, 1);
          v63 = v69;
          v7 = v87;
        }

        ++v57;
        v7[2] = v66 + 1;
        v67 = &v7[8 * v66];
        v67[4] = (v58 << 40) + 0x41726F6C6F63;
        v67[5] = 0xE600000000000000;
        v67[6] = 0;
        v67[7] = 0;
        *(v67 + 16) = 0;
        *(v67 + 68) = v64;
        v68 = v84;
        *(v67 + 71) = v85;
        *(v67 + 69) = v68;
        v67[9] = v60;
        v67[10] = v62;
        v67[11] = v63;
      }

      while (v57 != 4);
    }
  }

  else
  {
    v87 = _swiftEmptyArrayStorage;
    sub_1000AA308(0, 5, 0);
    v19 = 0;
    v7 = v87;
    do
    {
      v20 = *(&off_100119D90 + v19 + 32);
      v21 = *&aDynamic_1[8 * v20];
      v22 = qword_1000F23C8[v20];
      v86 = 0;
      v23 = sub_100081C1C();
      v25 = v86;
      v87 = v7;
      v27 = v7[2];
      v26 = v7[3];
      if (v27 >= v26 >> 1)
      {
        v83 = v23;
        v30 = v24;
        sub_1000AA308((v26 > 1), v27 + 1, 1);
        v24 = v30;
        v23 = v83;
        v7 = v87;
      }

      ++v19;
      v7[2] = v27 + 1;
      v28 = &v7[8 * v27];
      v28[4] = v21;
      v28[5] = v22;
      v28[6] = 0;
      v28[7] = 0;
      *(v28 + 16) = 0;
      *(v28 + 68) = v25;
      v29 = v84;
      *(v28 + 71) = v85;
      *(v28 + 69) = v29;
      v28[9] = v23;
      v28[10] = v24;
      v28[11] = 0;
    }

    while (v19 != 5);
  }

  return v7;
}

uint64_t _s22MercuryPosterExtension23WallpaperAppearanceModeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100119E80;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100084A54()
{
  result = qword_100131078;
  if (!qword_100131078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131078);
  }

  return result;
}

unint64_t sub_100084ADC()
{
  result = qword_100131080;
  if (!qword_100131080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131080);
  }

  return result;
}

uint64_t sub_100084B30()
{
  v0 = MGGetProductType();
  if (v0 == 3048527336)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0 == 3591055299)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100084B6C()
{
  v0 = MGGetProductType();
  if (v0 == 2795618603)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0 == 330877086)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100084BA8()
{
  v0 = vdupq_n_s64(MGGetProductType());
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_10011F830, v0), vceqq_s64(unk_10011F840, v0)))))
  {
    return 0;
  }

  if (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_10011F870, v0), vceqq_s64(unk_10011F880, v0)), xmmword_1000F1F70)))
  {
    return 1;
  }

  return 2;
}

uint64_t sub_100084C34(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_100084BA8();
  if (v8 == 2)
  {
    return 3;
  }

  v10 = v8;
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  Width = CGRectGetWidth(v12);
  if ((v10 & 1) == 0)
  {
    if (fabs(Width + -1032.0) >= 1.0)
    {
      if (fabs(Width + -1200.0) >= 1.0)
      {
        if (fabs(Width + -774.0) < 1.0)
        {
          return 2;
        }

        return 3;
      }

      return 0;
    }

    return 1;
  }

  if (fabs(Width + -834.0) < 1.0)
  {
    return 1;
  }

  if (fabs(Width + -970.0) >= 1.0)
  {
    return 3;
  }

  return 0;
}

uint64_t sub_100084D50()
{
  v0 = MGGetProductType();
  if (v0 == 574536383)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0 == 851437781)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

id sub_100084D8C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6, char a7)
{

  v14 = sub_100083980(a1, a2);
  if (v14 > 0xF7u)
  {
    if (qword_10012F638 != -1)
    {
      swift_once();
    }

    v15 = sub_1000E96A4();
    sub_100007488(v15, qword_100131060);

    v16 = sub_1000E9684();
    v17 = sub_1000E9BA4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v53 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100093A3C(a1, a2, &v53);
      _os_log_impl(&_mh_execute_header, v16, v17, "Unknown descriptor: %s", v18, 0xCu);
      sub_100012710(v19);
    }

    return 0;
  }

  v21 = v14;
  v22 = sub_100004BBC(a6, a7 & 1, a5);
  if (v21 >> 6)
  {
    if (v21 >> 6 == 1)
    {
      sub_100012904(0, &qword_100131088);
      v23 = 0x41454338453523;
      return sub_100029AC8(v23, 0xE700000000000000);
    }

    if (v21 <= 0x81u)
    {
      if (v21 != 128)
      {
        if (a4)
        {
          v49 = a3;
        }

        else
        {
          v49 = 0;
        }

        if (a4)
        {
          v50 = a4;
        }

        else
        {
          v50 = 0xE000000000000000;
        }

        v51 = sub_100099E60(v49, v50);
        if (v51 <= 1)
        {
          if (v51)
          {
            sub_100012904(0, &qword_100131088);
            v23 = 0x41433243334123;
          }

          else
          {
            sub_100012904(0, &qword_100131088);
            v23 = 0x39444239363823;
          }

          return sub_100029AC8(v23, 0xE700000000000000);
        }

        if (v51 == 2)
        {
          sub_100012904(0, &qword_100131088);
          v23 = 0x38383042304423;
          return sub_100029AC8(v23, 0xE700000000000000);
        }

        if (v51 == 3)
        {
          sub_100012904(0, &qword_100131088);
          v23 = 0x44363238464523;
          return sub_100029AC8(v23, 0xE700000000000000);
        }
      }
    }

    else
    {
      if (v21 != 130)
      {
        if (v21 == 131)
        {
          if (a4)
          {
            v35 = a3;
          }

          else
          {
            v35 = 0;
          }

          if (a4)
          {
            v36 = a4;
          }

          else
          {
            v36 = 0xE000000000000000;
          }

          v37._rawValue = &off_10011F660;
          v54._countAndFlagsBits = v35;
          v54._object = v36;
          v38 = sub_1000E9EC4(v37, v54);

          if (v38 <= 2)
          {
            v39 = *&aEf826d[8 * v38];
LABEL_103:
            sub_100012904(0, &qword_100131088);
            v23 = v39;
            return sub_100029AC8(v23, 0xE700000000000000);
          }
        }

        else
        {
          if (a4)
          {
            v46 = a3;
          }

          else
          {
            v46 = 0;
          }

          if (a4)
          {
            v47 = a4;
          }

          else
          {
            v47 = 0xE000000000000000;
          }

          v48 = sub_10009D460(v46, v47);
          if (v48 <= 1)
          {
            if (v48)
            {
              v39 = 0x46443445374523;
            }

            else
            {
              v39 = 0x38444343414223;
            }

            goto LABEL_103;
          }

          if (v48 == 2)
          {
            v39 = 0x37453745324523;
            goto LABEL_103;
          }

          if (v48 == 3)
          {
            v39 = 0x30423941394223;
            goto LABEL_103;
          }
        }

        return 0;
      }

      if (a4)
      {
        v43 = a3;
      }

      else
      {
        v43 = 0;
      }

      if (a4)
      {
        v44 = a4;
      }

      else
      {
        v44 = 0xE000000000000000;
      }

      v45 = sub_10009A748(v43, v44);
      if (v45 != 5)
      {
        return sub_10009A154(v45);
      }
    }

    return [objc_opt_self() whiteColor];
  }

  v24 = v22;
  if (a4)
  {
    v25 = a3;
  }

  else
  {
    v25 = 0;
  }

  if (a4)
  {
    v26 = a4;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v27 = sub_1000838E8(v25, v26);
  if (v27 != 5)
  {
    v40 = v27;
    v41 = [objc_opt_self() currentDevice];
    v42 = [v41 userInterfaceIdiom];

    if (v42 == 1)
    {
      if (v40 <= 1u)
      {
        if (!v40)
        {
          return [objc_opt_self() whiteColor];
        }

        sub_100012904(0, &qword_100131088);
        if (v24)
        {
          v23 = 0x43464537343823;
          return sub_100029AC8(v23, 0xE700000000000000);
        }

        v52 = 1094924323;
      }

      else
      {
        if (v40 == 2)
        {
          sub_100012904(0, &qword_100131088);
          if (v24)
          {
            v23 = 0x43443738424223;
          }

          else
          {
            v23 = 0x46464541304423;
          }

          return sub_100029AC8(v23, 0xE700000000000000);
        }

        if (v40 != 3)
        {
          sub_100012904(0, &qword_100131088);
          if (v24)
          {
            v23 = 0x34394642413623;
          }

          else
          {
            v23 = 0x33423145323723;
          }

          return sub_100029AC8(v23, 0xE700000000000000);
        }

        sub_100012904(0, &qword_100131088);
        if (v24)
        {
          v23 = 0x31453638423523;
          return sub_100029AC8(v23, 0xE700000000000000);
        }

        v52 = 1144010787;
      }

      v23 = v52 | 0x46463400000000;
      return sub_100029AC8(v23, 0xE700000000000000);
    }

    if (v40 > 1u)
    {
      if (v40 == 2)
      {
        sub_100012904(0, &qword_100131088);
        if (v24)
        {
          v23 = 0x37384343354523;
        }

        else
        {
          v23 = 0x36393345464623;
        }
      }

      else if (v40 == 3)
      {
        sub_100012904(0, &qword_100131088);
        if (v24)
        {
          v23 = 0x43434642323723;
        }

        else
        {
          v23 = 0x46463744353923;
        }
      }

      else
      {
        sub_100012904(0, &qword_100131088);
        if (v24)
        {
          v23 = 0x41424639344423;
        }

        else
        {
          v23 = 0x31443342454523;
        }
      }

      return sub_100029AC8(v23, 0xE700000000000000);
    }

    if (v40)
    {
      sub_100012904(0, &qword_100131088);
      if (v24)
      {
        v23 = 0x44393039394523;
      }

      else
      {
        v23 = 0x32434143464623;
      }

      return sub_100029AC8(v23, 0xE700000000000000);
    }

    return [objc_opt_self() whiteColor];
  }

  if (qword_10012F638 != -1)
  {
    swift_once();
  }

  v28 = sub_1000E96A4();
  sub_100007488(v28, qword_100131060);

  v29 = sub_1000E9684();
  v30 = sub_1000E9BA4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v53 = v32;
    *v31 = 136315138;
    if (a4)
    {
      v33 = a4;
    }

    else
    {
      a3 = 0x676E697373696D28;
      v33 = 0xE900000000000029;
    }

    v34 = sub_100093A3C(a3, v33, &v53);

    *(v31 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "Unknown look in Fluidity: %s", v31, 0xCu);
    sub_100012710(v32);
  }

  return [objc_opt_self() whiteColor];
}

uint64_t sub_100085688(uint64_t a1)
{
  v2 = sub_1000125FC(&qword_10012FA58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DescriptorManager.Identifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for DescriptorManager.Identifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10008584C(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_100085878(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WallpaperCoordinatorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WallpaperCoordinatorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100085A4C()
{
  result = qword_1001310A0;
  if (!qword_1001310A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001310A0);
  }

  return result;
}

uint64_t sub_100085AD0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019048(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100085B28()
{
  result = qword_1001310B8;
  if (!qword_1001310B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001310B8);
  }

  return result;
}

void sub_100085B94(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = &v4[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_drawingHandler];
  *v8 = 0;
  v8[1] = 0;
  v4[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically] = 1;
  v9 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_log;
  v10 = sub_1000E96A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_wantsIndefiniteContinuousRendering] = 0;
  *&v4[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_displayLink] = 0;
  v4[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_linkActive] = 0;
  *&v4[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_continuousRenderingTimer] = 0;
  v11 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_timedRenderingInfo;
  v12 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v30.receiver = v4;
  v30.super_class = type metadata accessor for WallpaperMetalView(0);
  v13 = objc_msgSendSuper2(&v30, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = [v13 layer];
  objc_opt_self();
  v15 = swift_dynamicCastObjCClassUnconditional();
  v16 = [objc_opt_self() displayLinkWithTarget:v13 selector:"displayLinkFired"];
  v17 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_displayLink;
  v18 = *&v13[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_displayLink];
  *&v13[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_displayLink] = v16;
  v19 = v16;

  if (v19)
  {
    *&v20 = sub_1000E9BE4(30.0, 120.0, 0x42700000);
    [v19 setPreferredFrameRateRange:v20];

    v21 = *&v13[v17];
    if (v21)
    {
      [v21 setPaused:1];
      [v15 setDevice:a1];
      [v15 setPixelFormat:a2];
      v22 = [v13 layer];
      sub_1000125FC(&unk_100130D10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000EDAA0;
      *(inited + 32) = 0x73646E756F62;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = [objc_allocWithZone(NSNull) init];
      *(inited + 56) = 0x6E6F697469736F70;
      *(inited + 64) = 0xE800000000000000;
      *(inited + 72) = [objc_allocWithZone(NSNull) init];
      *(inited + 80) = 0x6F50726F68636E61;
      *(inited + 88) = 0xEB00000000746E69;
      *(inited + 96) = [objc_allocWithZone(NSNull) init];
      *(inited + 104) = 0x73746E65746E6F63;
      *(inited + 112) = 0xE800000000000000;
      *(inited + 120) = [objc_allocWithZone(NSNull) init];
      sub_1000A043C(inited);
      swift_setDeallocating();
      sub_1000125FC(&unk_1001311F0);
      swift_arrayDestroy();
      sub_1000125FC(&unk_100130D20);
      isa = sub_1000E9894().super.isa;

      [v22 setActions:isa];

      v25 = [v13 layer];
      [v25 setPosition:{0.0, 0.0}];

      v26 = v13;
      v27 = [v26 layer];
      [v27 setAnchorPoint:{0.0, 0.0}];

      [v15 setColorspace:a3];
      v28 = v14;
      [v15 setAllowsDisplayCompositing:0];
      [v15 setDelegate:v26];

      [v15 setPresentsWithTransaction:1];
      [v15 setPremultiplied:(a4 & 1) == 0];
      [v15 setContentsOpaque:a4 & 1];

      [v26 setOpaque:(a4 & 1) == 0];
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100086108()
{
  result = *&v0[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_displayLink];
  if (result)
  {
    [result invalidate];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for WallpaperMetalView(0);
    return objc_msgSendSuper2(&v2, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100086260(double a1)
{
  v2 = v1;
  v4 = sub_1000E96A4();
  v5 = *(v4 - 8);
  v85 = v4;
  v86 = v5;
  v6 = __chkstk_darwin(v4);
  v79 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v77 = &v76 - v8;
  v9 = sub_1000125FC(&qword_1001311D0);
  v10 = __chkstk_darwin(v9 - 8);
  v82 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v78 = &v76 - v12;
  v13 = sub_1000125FC(&qword_1001311D8);
  v14 = __chkstk_darwin(v13 - 8);
  v83 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = (&v76 - v17);
  __chkstk_darwin(v16);
  v20 = &v76 - v19;
  v21 = sub_1000E94E4();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v76 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v76 - v30;
  __chkstk_darwin(v29);
  v33 = &v76 - v32;
  sub_1000E94D4();
  sub_1000E9464();
  v87 = *(v22 + 8);
  v88 = v22 + 8;
  v87(v31, v21);
  v34 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_timedRenderingInfo;
  swift_beginAccess();
  v89 = v34;
  v90 = v2;
  sub_1000299EC(v2 + v34, v20, &qword_1001311D8);
  v35 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  v81 = *(v35 - 8);
  v36 = *(v81 + 48);
  v37 = v36(v20, 1, v35);
  v84 = v33;
  v80 = v35;
  if (v37)
  {
    v38 = v22;
    sub_1000047C4(v20, &qword_1001311D8);
    v39 = v21;
LABEL_7:
    v47 = v86;
    sub_1000299EC(v90 + v89, v18, &qword_1001311D8);
    v48 = v80;
    v49 = v38;
    if (v36(v18, 1, v80))
    {
      sub_1000047C4(v18, &qword_1001311D8);
    }

    else
    {
      v50 = *v18;
      sub_1000047C4(v18, &qword_1001311D8);
      [v50 invalidate];
    }

    v51 = objc_opt_self();
    v52 = swift_allocObject();
    v53 = v90;
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100087BFC;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000889A4;
    aBlock[3] = &unk_100124BA0;
    v54 = _Block_copy(aBlock);

    v55 = [v51 scheduledTimerWithTimeInterval:0 repeats:v54 block:a1];
    _Block_release(v54);
    v56 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_log;
    swift_beginAccess();
    v57 = v53 + v56;
    v58 = v82;
    sub_1000299EC(v57, v82, &qword_1001311D0);
    v59 = v85;
    if ((*(v47 + 48))(v58, 1, v85))
    {
      sub_1000047C4(v58, &qword_1001311D0);
    }

    else
    {
      (*(v47 + 16))(v79, v58, v59);
      sub_1000047C4(v58, &qword_1001311D0);
      v60 = sub_1000E9684();
      v61 = sub_1000E9B94();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 134349056;
        *(v62 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v60, v61, "beginning timed continuous rendering for %{public}f seconds", v62, 0xCu);
        v47 = v86;
      }

      (*(v47 + 8))(v79, v59);
    }

    v63 = v83;
    v64 = v84;
    (*(v49 + 16))(&v83[*(v48 + 20)], v84, v39);
    *v63 = v55;
    (*(v81 + 56))(v63, 0, 1, v48);
    v66 = v89;
    v65 = v90;
    swift_beginAccess();
    v67 = v55;
    sub_100087B30(v63, v65 + v66);
    swift_endAccess();
    sub_1000871AC();

    sub_1000047C4(v63, &qword_1001311D8);
    return (v87)(v64, v39);
  }

  (*(v22 + 16))(v25, &v20[*(v35 + 20)], v21);
  sub_1000047C4(v20, &qword_1001311D8);
  v38 = v22;
  (*(v22 + 32))(v28, v25, v21);
  v39 = v21;
  if ((sub_1000E9484() & 1) == 0)
  {
    v87(v28, v21);
    goto LABEL_7;
  }

  v40 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_log;
  v41 = v90;
  swift_beginAccess();
  v42 = v78;
  sub_1000299EC(v41 + v40, v78, &qword_1001311D0);
  v43 = v85;
  v44 = v86;
  if ((*(v86 + 48))(v42, 1, v85))
  {
    v45 = v87;
    v87(v28, v21);
    v45(v84, v21);
    return sub_1000047C4(v42, &qword_1001311D0);
  }

  else
  {
    v68 = v21;
    v69 = v77;
    (*(v44 + 16))(v77, v42, v43);
    sub_1000047C4(v42, &qword_1001311D0);
    v70 = sub_1000E9684();
    v71 = sub_1000E9B94();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v84;
    if (v72)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "display link already running and will stop later than requested: not updating timer", v74, 2u);
    }

    (*(v44 + 8))(v69, v43);
    v75 = v87;
    v87(v28, v68);
    return v75(v73, v68);
  }
}

uint64_t sub_100086C1C()
{
  v0 = sub_1000125FC(&qword_1001311D8);
  __chkstk_darwin(v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_timedRenderingInfo;
    swift_beginAccess();
    sub_100087B30(v2, v4 + v6);
    swift_endAccess();
    sub_1000871AC();

    return sub_1000047C4(v2, &qword_1001311D8);
  }

  return result;
}

uint64_t sub_100086D4C()
{
  v1 = sub_1000E96A4();
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v27 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000125FC(&qword_1001311D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_1000125FC(&qword_1001311D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_timedRenderingInfo;
  swift_beginAccess();
  sub_1000299EC(v0 + v16, v11, &qword_1001311D8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000047C4(v11, &qword_1001311D8);
  }

  sub_100087ACC(v11, v15);
  v18 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_log;
  swift_beginAccess();
  sub_1000299EC(v0 + v18, v5, &qword_1001311D0);
  v19 = v28;
  v20 = v29;
  if ((*(v28 + 48))(v5, 1, v29))
  {
    sub_1000047C4(v5, &qword_1001311D0);
  }

  else
  {
    v26 = v0;
    v21 = v27;
    (*(v19 + 16))(v27, v5, v20);
    sub_1000047C4(v5, &qword_1001311D0);
    v22 = sub_1000E9684();
    v23 = sub_1000E9B94();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "intentionally stopping existing timed continuous rendering", v24, 2u);

      (*(v19 + 8))(v27, v20);
    }

    else
    {

      (*(v19 + 8))(v21, v20);
    }

    v0 = v26;
  }

  [*v15 invalidate];
  (*(v13 + 56))(v8, 1, 1, v12);
  swift_beginAccess();
  sub_100087B30(v8, v0 + v16);
  swift_endAccess();
  sub_1000871AC();
  sub_1000047C4(v8, &qword_1001311D8);
  return sub_100087BA0(v15);
}

void sub_1000871AC()
{
  v1 = sub_1000E96A4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v45 - v6;
  v8 = sub_1000125FC(&qword_1001311D0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v45 - v12;
  v14 = sub_1000125FC(&qword_1001311D8);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - v15;
  if (*(v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_wantsIndefiniteContinuousRendering) == 1)
  {
    v17 = (v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_linkActive);
    if (*(v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_linkActive))
    {
      return;
    }

    goto LABEL_6;
  }

  v45 = v5;
  v46 = v11;
  v18 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_timedRenderingInfo;
  swift_beginAccess();
  sub_1000299EC(v0 + v18, v16, &qword_1001311D8);
  v19 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  v20 = (*(*(v19 - 8) + 48))(v16, 1, v19);
  sub_1000047C4(v16, &qword_1001311D8);
  v17 = (v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_linkActive);
  if ((v20 != 1) != *(v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_linkActive))
  {
    if (v20 != 1)
    {
LABEL_6:
      v21 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_log;
      swift_beginAccess();
      sub_1000299EC(v0 + v21, v13, &qword_1001311D0);
      if ((*(v2 + 48))(v13, 1, v1))
      {
        sub_1000047C4(v13, &qword_1001311D0);
      }

      else
      {
        v22 = v0;
        (*(v2 + 16))(v7, v13, v1);
        sub_1000047C4(v13, &qword_1001311D0);
        v23 = sub_1000E9684();
        v24 = sub_1000E9BB4();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "🟢 starting display link", v25, 2u);
        }

        (*(v2 + 8))(v7, v1);
        v0 = v22;
      }

      v26 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_displayLink;
      v27 = *(v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_displayLink);
      if (v27)
      {
        [v27 setPaused:0];
        v28 = *(v0 + v26);
        if (v28)
        {
          v29 = objc_opt_self();
          v30 = v28;
          v31 = [v29 mainRunLoop];
          [v30 addToRunLoop:v31 forMode:NSRunLoopCommonModes];

          *v17 = 1;
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_25;
    }

    v32 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_displayLink;
    v33 = *(v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_displayLink);
    if (!v33)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v34 = objc_opt_self();
    v35 = v33;
    v36 = [v34 mainRunLoop];
    [v35 removeFromRunLoop:v36 forMode:NSRunLoopCommonModes];

    v37 = *(v0 + v32);
    if (!v37)
    {
LABEL_26:
      __break(1u);
      return;
    }

    [v37 setPaused:1];
    v38 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_log;
    swift_beginAccess();
    v39 = v0 + v38;
    v40 = v46;
    sub_1000299EC(v39, v46, &qword_1001311D0);
    if ((*(v2 + 48))(v40, 1, v1))
    {
      sub_1000047C4(v40, &qword_1001311D0);
    }

    else
    {
      v41 = v45;
      (*(v2 + 16))(v45, v40, v1);
      sub_1000047C4(v40, &qword_1001311D0);
      v42 = sub_1000E9684();
      v43 = sub_1000E9BB4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "🛑 stopped display link", v44, 2u);
      }

      (*(v2 + 8))(v41, v1);
    }

    *v17 = 0;
  }
}

void sub_100087878()
{
  sub_10008799C(319, &qword_100131128, &type metadata accessor for Logger);
  if (v0 <= 0x3F)
  {
    sub_10008799C(319, &qword_100131130, type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10008799C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000E9C94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100087A38()
{
  result = sub_100012904(319, &unk_1001311A0);
  if (v1 <= 0x3F)
  {
    result = sub_1000E94E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100087ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100087B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000125FC(&qword_1001311D8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100087BA0(uint64_t a1)
{
  v2 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100087C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100087C1C()
{
  v1 = (v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_drawingHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically) = 1;
  v2 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_log;
  v3 = sub_1000E96A4();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_wantsIndefiniteContinuousRendering) = 0;
  *(v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_displayLink) = 0;
  *(v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_linkActive) = 0;
  *(v0 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_continuousRenderingTimer) = 0;
  v4 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_timedRenderingInfo;
  v5 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  sub_1000E9E44();
  __break(1u);
}

Swift::Void __swiftcall ContinuousRenderingToken.invalidate()()
{
  v1 = v0;
  v2 = sub_1000125FC(&qword_100130A40);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  if (*(v0 + 48))
  {
    if (qword_10012F738 != -1)
    {
      swift_once();
    }

    v5 = sub_1000E96A4();
    sub_100007488(v5, qword_10013DD70);
    v20 = sub_1000E9684();
    v6 = sub_1000E9BA4();
    if (os_log_type_enabled(v20, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v20, v6, "Already invalidated ContinuousRenderingToken is requesting invalidation", v7, 2u);
    }

    v8 = v20;
  }

  else
  {
    if (qword_10012F738 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E96A4();
    sub_100007488(v9, qword_10013DD70);

    v10 = sub_1000E9684();
    v11 = sub_1000E9BB4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_100093A3C(*(v1 + 32), *(v1 + 40), &v21);
      _os_log_impl(&_mh_execute_header, v10, v11, "ContinuousRenderingToken “%{public}s” invalidate", v12, 0xCu);
      sub_100012710(v13);
    }

    *(v1 + 48) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = *(v1 + 24);
      v17 = sub_1000E9B34();
      (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
      sub_1000E9B14();

      swift_unknownObjectRetain();
      v18 = sub_1000E9B04();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      v19[4] = v15;
      v19[5] = v16;
      v19[6] = v1;
      sub_100088390(0, 0, v4, &unk_1000F2550, v19);

      swift_unknownObjectRelease();
    }
  }
}

void *sub_10008808C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000AA368(0, v1, 0);
    v3 = a1 + 48;
    do
    {

      sub_1000125FC(&unk_100132920);
      sub_1000125FC(&qword_100131DE0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_1000AA368((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[3 * v5];
      v6[32] = v8;
      *(v6 + 5) = v9;
      *(v6 + 6) = v10;
      v3 += 24;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1000881C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1000E9E64();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1000AA468(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1000E9D74();
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000AA468((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100032864(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1000AA468((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100032864(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100088390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000125FC(&qword_100130A40);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000299EC(a3, v25 - v10, &qword_100130A40);
  v12 = sub_1000E9B34();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000047C4(v11, &qword_100130A40);
  }

  else
  {
    sub_1000E9B24();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000E9AF4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000E9954() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000047C4(a3, &qword_100130A40);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000047C4(a3, &qword_100130A40);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100088690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000125FC(&qword_100130A40);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000299EC(a3, v25 - v10, &qword_100130A40);
  v12 = sub_1000E9B34();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000047C4(v11, &qword_100130A40);
  }

  else
  {
    sub_1000E9B24();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000E9AF4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000E9954() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000125FC(&qword_100130A50);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1000047C4(a3, &qword_100130A40);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000047C4(a3, &qword_100130A40);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000125FC(&qword_100130A50);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1000889A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Int sub_100088A18()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_100088B10()
{
  sub_1000E9974();
}

Swift::Int sub_100088BF4()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_100088CE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100099518(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100088D18(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656C62;
  v4 = 0x616C696176616E75;
  v5 = 0xD000000000000012;
  v6 = 0x80000001000F65F0;
  v7 = 0x80000001000F6610;
  v8 = 0xD000000000000019;
  if (v2 != 3)
  {
    v8 = 0xD000000000000018;
    v7 = 0x80000001000F6630;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x6146686361747461;
    v3 = 0xEC00000064656C69;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100088DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1000E9B14();
  v6[5] = sub_1000E9B04();
  v8 = sub_1000E9AF4();

  return _swift_task_switch(sub_100088E68, v8, v7);
}

uint64_t sub_100088E68()
{
  v1 = v0[4];
  v2 = v0[3];

  ObjectType = swift_getObjectType();
  (*(v2 + 8))(*(v1 + 32), *(v1 + 40), ObjectType, v2);
  v4 = v0[1];

  return v4();
}

uint64_t ContinuousRenderingToken.deinit()
{
  v1 = v0;
  if ((*(v0 + 48) & 1) == 0)
  {
    if (qword_10012F738 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E96A4();
    sub_100007488(v2, qword_10013DD70);

    v3 = sub_1000E9684();
    v4 = sub_1000E9BA4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_100093A3C(*(v1 + 32), *(v1 + 40), &v8);
      _os_log_impl(&_mh_execute_header, v3, v4, "ContinuousRenderingToken “%{public}s” is being destroyed while active.", v5, 0xCu);
      sub_100012710(v6);
    }
  }

  sub_100093FE4(v1 + 16);

  return v1;
}

uint64_t ContinuousRenderingToken.__deallocating_deinit()
{
  ContinuousRenderingToken.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000890B8(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_significantChangeHandler);
  v5 = *(v2 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_significantChangeHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10000D58C(a1);
  sub_1000056DC(v5);
  if (*(v2 + 104))
  {
    v6 = *(v2 + 112);
    ObjectType = swift_getObjectType();
    v8 = *v4;
    v9 = v4[1];
    v10 = *(v6 + 136);
    swift_unknownObjectRetain();
    sub_10000D58C(v8);
    v10(v8, v9, ObjectType, v6);
    sub_1000056DC(a1);

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_1000056DC(a1);
  }
}

uint64_t sub_1000891CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  v151 = a8;
  v154 = a5;
  v155 = a7;
  v152 = a6;
  *&v156 = a4;
  v213 = a2;
  v150 = *v9;
  v12 = sub_1000125FC(&qword_1001311D0);
  __chkstk_darwin(v12 - 8);
  v14 = v148 - v13;
  *(v9 + 80) = 0;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  *(v9 + 104) = 0;
  sub_100099010(&v199);
  v15 = v210;
  *(v9 + 304) = v209;
  *(v9 + 320) = v15;
  *(v9 + 336) = v211;
  v16 = v212;
  v17 = v206;
  *(v9 + 240) = v205;
  *(v9 + 256) = v17;
  v18 = v208;
  *(v9 + 272) = v207;
  *(v9 + 288) = v18;
  v19 = v202;
  *(v9 + 176) = v201;
  *(v9 + 192) = v19;
  v20 = v204;
  *(v9 + 208) = v203;
  *(v9 + 224) = v20;
  v21 = v200;
  *(v9 + 144) = v199;
  *(v9 + 160) = v21;
  *(v9 + 360) = 0;
  *(v9 + 368) = 0;
  *(v9 + 352) = v16;
  *(v9 + 384) = 0xD000000000000023;
  *(v9 + 392) = 0x80000001000F8480;
  *(v9 + 400) = 0;
  *(v9 + 408) = 0;
  v22 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_lookTransition;
  v23 = type metadata accessor for WallpaperRenderingCoordinator.LookTransitionInfo(0);
  (*(*(v23 - 8) + 56))(v9 + v22, 1, 1, v23);
  *(v9 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_continuousRenderingReasons) = &_swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_solarPreviewer) = 0;
  *(v9 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_solarPreviewContinuousRenderingToken) = 0;
  sub_1000E9444();
  *(v9 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_nextRenderShouldNotifySignificantChange) = 0;
  v24 = &qword_10013D000;
  v25 = (v9 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_significantChangeHandler);
  *v25 = 0;
  v25[1] = 0;
  *(v9 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_lastUpdateWasSnapshot) = 0;
  if (qword_10012F688 != -1)
  {
    swift_once();
    v24 = &qword_10013D000;
  }

  v26 = qword_100131230;
  if (!qword_100131230)
  {
    v61 = v24;

    sub_100098870();
    swift_allocError();
    *v62 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v63 = *(v9 + 320);
    v181[7] = *(v9 + 304);
    v181[8] = v63;
    v181[9] = *(v9 + 336);
    *&v181[10] = *(v9 + 352);
    v64 = *(v9 + 256);
    v181[3] = *(v9 + 240);
    v181[4] = v64;
    v65 = *(v9 + 288);
    v181[5] = *(v9 + 272);
    v181[6] = v65;
    v66 = *(v9 + 192);
    v180 = *(v9 + 176);
    v181[0] = v66;
    v67 = *(v9 + 224);
    v181[1] = *(v9 + 208);
    v181[2] = v67;
    v68 = *(v9 + 160);
    v178 = *(v9 + 144);
    v179 = v68;
    sub_1000047C4(&v178, &qword_100131DA8);

    sub_1000047C4(v9 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_lookTransition, &qword_100131D78);

    v69 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_lastSolarCheckLogDate;
    v70 = sub_1000E94E4();
    (*(*(v70 - 8) + 8))(v9 + v69, v70);
    sub_1000056DC(*(v9 + v61[386]));
    type metadata accessor for WallpaperRenderingCoordinator(0);
    swift_deallocPartialClassInstance();
    return v9;
  }

  v27 = v213;
  *(v9 + 16) = a1;
  *(v9 + 24) = v27;
  v28 = v156;
  *(v9 + 88) = a3;
  *(v9 + 96) = v28;
  *(v9 + 128) = v151;
  *(v9 + 32) = *(v26 + OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D9Resources_device);
  *(v9 + 40) = *(v26 + OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D9Resources_commandQueue);
  v29 = *(v28 + 16);
  v30 = v26;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v148[1] = v30;

  result = v29(a3, v28);
  v149 = v14;
  if (!result)
  {
    result = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
    if (!result)
    {
      goto LABEL_40;
    }
  }

  v32 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_colorSpace;
  *(v9 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_colorSpace) = result;
  v33 = *(v9 + 32);
  v34 = v156;
  v35 = *(v156 + 8);
  swift_unknownObjectRetain();
  v36 = a3;
  v37 = v35(a3, v34);
  v38 = *(v34 + 24);
  v39 = *(v9 + v32);
  v153 = v36;
  LOBYTE(v36) = (v38)(v36, v34) == 2;
  v40 = objc_allocWithZone(type metadata accessor for WallpaperMetalView(0));
  sub_100085B94(v33, v37, v39, v36);
  *(v9 + 48) = v41;
  v42 = qword_10012F678;
  v43 = v41;
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = sub_1000E96A4();
  v45 = sub_100007488(v44, qword_100131200);
  v46 = *(v44 - 8);
  v47 = v149;
  (*(v46 + 16))(v149, v45, v44);
  (*(v46 + 56))(v47, 0, 1, v44);
  v48 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_log;
  swift_beginAccess();
  sub_100099040(v47, v43 + v48, &qword_1001311D0);
  swift_endAccess();

  *(*(v9 + 48) + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically) = 0;
  v49 = [objc_allocWithZone(CALayer) init];
  *(v9 + 56) = v49;
  v50 = qword_10012F550;
  v51 = v49;
  if (v50 != -1)
  {
    swift_once();
  }

  sub_1000125FC(&unk_100130D20);
  isa = sub_1000E9894().super.isa;
  [v51 setActions:isa];

  [*(v9 + 56) setPosition:{0.0, 0.0}];
  [*(v9 + 56) setAnchorPoint:{0.0, 0.0}];
  v53 = *(v9 + 56);
  v54 = sub_1000E98E4();
  [v53 setName:v54];

  v55 = v38();
  if (v55 > 1)
  {
    v56 = v155;
    if (v55 == 2)
    {
      v57 = [objc_allocWithZone(CALayer) init];
      [v57 setAnchorPoint:{0.0, 0.0}];
      v71 = sub_1000E9894().super.isa;
      [v57 setActions:v71];

      [v57 setHidden:1];
      goto LABEL_16;
    }

    v72 = v153;
    *(v9 + 72) = 0;
LABEL_20:
    *(v9 + 64) = 0;
    v73 = v152;
    goto LABEL_21;
  }

  v56 = v155;
  if (v55)
  {
    v74 = [objc_allocWithZone(CALayer) init];
    *(v9 + 72) = v74;
    [v74 setAnchorPoint:{0.0, 0.0}];
    v75 = *(v9 + 72);
    v72 = v153;
    if (v75)
    {
      v76 = v75;
      v77 = sub_1000E9894().super.isa;
      [v76 setActions:v77];
    }

    goto LABEL_20;
  }

  v57 = [objc_allocWithZone(CALayer) init];
  [v57 setAnchorPoint:{0.0, 0.0}];
  v58 = sub_1000E9894().super.isa;
  [v57 setActions:v58];

  [v57 setHidden:1];
  v59 = [objc_allocWithZone(CALayer) init];
  [v59 setAnchorPoint:{0.0, 0.0}];
  v60 = sub_1000E9894().super.isa;
  [v59 setActions:v60];

  [v57 setMask:v59];
LABEL_16:
  *(v9 + 64) = v57;
  *(v9 + 72) = 0;
  v73 = v152;
  v72 = v153;
LABEL_21:
  *(v9 + 360) = v73;
  *(v9 + 368) = v56;

  if (!v56)
  {

    *(v9 + 376) = sub_1000A1858(_swiftEmptyArrayStorage);
    goto LABEL_28;
  }

  v78 = v156;
  v79 = *(v156 + 224);

  v80 = v79(v73, v56, v72, v78);
  *(v9 + 376) = v80;
  if (!*(v80 + 16))
  {

    goto LABEL_28;
  }

  v82 = sub_100096F68(v81, v9);

  swift_beginAccess();
  v83 = *(v9 + 376);
  if (*(v83 + 16))
  {
    v84 = sub_10009F284(v82);
    if (v85)
    {
      v86 = (*(v83 + 56) + 16 * v84);
      v88 = *v86;
      v87 = v86[1];
      swift_endAccess();

      *(v9 + 400) = v88;
      *(v9 + 408) = v87;

      sub_1000125FC(&unk_100131DB0);
      v89 = swift_allocObject();
      v156 = xmmword_1000EC870;
      *(v89 + 16) = xmmword_1000EC870;
      *(v89 + 32) = v73;
      *(v89 + 40) = v56;
      sub_1000125FC(&unk_100132320);
      v90 = swift_allocObject();
      *(v90 + 16) = v156;
      *(v90 + 32) = v73;
      v91 = *(v9 + 376);
      *(v90 + 40) = v56;
      *(v90 + 48) = v91;

      v92 = sub_1000A0670(v90);
      swift_setDeallocating();
      sub_1000047C4(v90 + 32, &unk_100131DC0);
      swift_deallocClassInstance();
      type metadata accessor for SolarEventPreviewer(0);
      v93 = swift_allocObject();
      v94 = sub_100097E04(v89, v92, v93);
      swift_setDeallocating();
      sub_10009881C(v89 + 32);
      swift_deallocClassInstance();
      *(v9 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_solarPreviewer) = v94;

LABEL_28:
      v95 = v154;
      if ([v154 isSnapshot])
      {

        swift_unknownObjectRelease();

        v96 = *(v9 + 320);
        v181[7] = *(v9 + 304);
        v181[8] = v96;
        v181[9] = *(v9 + 336);
        *&v181[10] = *(v9 + 352);
        v97 = *(v9 + 256);
        v181[3] = *(v9 + 240);
        v181[4] = v97;
        v98 = *(v9 + 288);
        v181[5] = *(v9 + 272);
        v181[6] = v98;
        v99 = *(v9 + 192);
        v180 = *(v9 + 176);
        v181[0] = v99;
        v100 = *(v9 + 224);
        v181[1] = *(v9 + 208);
        v181[2] = v100;
        v101 = *(v9 + 160);
        v178 = *(v9 + 144);
        v179 = v101;
        v102 = v210;
        *(v9 + 304) = v209;
        *(v9 + 320) = v102;
        *(v9 + 336) = v211;
        *(v9 + 352) = v212;
        v103 = v206;
        *(v9 + 240) = v205;
        *(v9 + 256) = v103;
        v104 = v208;
        *(v9 + 272) = v207;
        *(v9 + 288) = v104;
        v105 = v202;
        *(v9 + 176) = v201;
        *(v9 + 192) = v105;
        v106 = v204;
        *(v9 + 208) = v203;
        *(v9 + 224) = v106;
        v107 = v200;
        *(v9 + 144) = v199;
        *(v9 + 160) = v107;
        sub_1000047C4(&v178, &qword_100131DA8);
      }

      else
      {
        v108 = swift_unknownObjectRetain();
        sub_100004824(v108, 2u, 0, 0, &v182);
        v109 = &v182 | 0xD;
        if (v56)
        {
          v197 = v185;
          v198[0] = *v186;
          *(v198 + 13) = *&v186[13];
          sub_100007434(&v197);
          v177 = 0;
          v110 = [v95 traitCollection];
          v111 = v110;
          if (v110)
          {
            v112 = [v110 userInterfaceStyle];
          }

          else
          {
            v112 = 0;
          }

          v124 = sub_100004BBC(v112, v111 == 0, v151);
          swift_unknownObjectRelease();

          v114 = 0;
          v122 = 0;
          v118 = 0;
          v121 = v124 & 1;
          v123 = v177;
          v120 = v155;
          v119 = v152;
        }

        else
        {
          *&v156 = &v182 | 0xD;
          LODWORD(v213) = v186[20];
          v113 = *&v186[8];
          v114 = *v186;
          v115 = *(&v185 + 1);
          v116 = v185;
          v117 = v184;
          v118 = *&v186[16];
          swift_unknownObjectRelease();

          v119 = v116;
          v120 = v115;
          v121 = v117;
          v122 = v113;
          v123 = v213;
          v109 = v156;
        }

        *&v157 = v182;
        DWORD2(v157) = v183;
        BYTE12(v157) = v121;
        *(&v157 + 13) = *v109;
        HIBYTE(v157) = *(v109 + 2);
        *&v158 = v119;
        *(&v158 + 1) = v120;
        v213 = v114;
        *&v159 = v114;
        *(&v159 + 1) = v122;
        LODWORD(v156) = v118;
        LODWORD(v160[0]) = v118;
        BYTE4(v160[0]) = v123;
        *(&v160[2] + 5) = v189;
        *(&v160[1] + 5) = v188;
        *(v160 + 5) = v187;
        *(&v160[6] + 5) = v193;
        *(&v160[5] + 5) = v192;
        *(&v160[4] + 5) = v191;
        *(&v160[3] + 5) = v190;
        *(&v160[10] + 1) = *(&v196[3] + 3);
        *(&v160[9] + 5) = *v196;
        *(&v160[8] + 5) = v195;
        *(&v160[7] + 5) = v194;
        v171 = v160[7];
        v172 = v160[8];
        v173 = v160[9];
        v174 = *&v160[10];
        v167 = v160[3];
        v168 = v160[4];
        v169 = v160[5];
        v170 = v160[6];
        v163 = v159;
        v164 = v160[0];
        v165 = v160[1];
        v166 = v160[2];
        v161 = v157;
        v162 = v158;
        v125 = v122;
        v126 = v121;
        v127 = v120;
        v128 = v119;
        _MTLPackedFloat3.init(_:_:_:)(*&v182, *&v119, v196[0]);
        v129 = *(v9 + 320);
        v175[10] = *(v9 + 304);
        v175[11] = v129;
        v175[12] = *(v9 + 336);
        v176 = *(v9 + 352);
        v130 = *(v9 + 256);
        v175[6] = *(v9 + 240);
        v175[7] = v130;
        v131 = *(v9 + 288);
        v175[8] = *(v9 + 272);
        v175[9] = v131;
        v132 = *(v9 + 192);
        v175[2] = *(v9 + 176);
        v175[3] = v132;
        v133 = *(v9 + 224);
        v175[4] = *(v9 + 208);
        v175[5] = v133;
        v134 = *(v9 + 160);
        v175[0] = *(v9 + 144);
        v175[1] = v134;
        v135 = v172;
        *(v9 + 304) = v171;
        *(v9 + 320) = v135;
        *(v9 + 336) = v173;
        *(v9 + 352) = v174;
        v136 = v168;
        *(v9 + 240) = v167;
        *(v9 + 256) = v136;
        v137 = v170;
        *(v9 + 272) = v169;
        *(v9 + 288) = v137;
        v138 = v164;
        *(v9 + 176) = v163;
        *(v9 + 192) = v138;
        v139 = v166;
        *(v9 + 208) = v165;
        *(v9 + 224) = v139;
        v140 = v162;
        *(v9 + 144) = v161;
        *(v9 + 160) = v140;
        sub_100004CBC(&v157, &v178);
        sub_1000047C4(v175, &qword_100131DA8);
        *&v178 = v182;
        DWORD2(v178) = v183;
        BYTE12(v178) = v126;
        *(&v178 + 13) = *v109;
        HIBYTE(v178) = *(v109 + 2);
        *&v179 = v128;
        *(&v179 + 1) = v127;
        *&v180 = v213;
        *(&v180 + 1) = v125;
        LODWORD(v181[0]) = v156;
        BYTE4(v181[0]) = v123;
        *(&v181[2] + 5) = v189;
        *(&v181[1] + 5) = v188;
        *(v181 + 5) = v187;
        *(&v181[6] + 5) = v193;
        *(&v181[5] + 5) = v192;
        *(&v181[4] + 5) = v191;
        *(&v181[3] + 5) = v190;
        *(&v181[10] + 1) = *(&v196[3] + 3);
        *(&v181[9] + 5) = *v196;
        *(&v181[8] + 5) = v195;
        *(&v181[7] + 5) = v194;
        sub_100004D30(&v178);
      }

      v141 = *(v9 + 48);
      v142 = swift_allocObject();
      swift_weakInit();
      v143 = swift_allocObject();
      v144 = v150;
      *(v143 + 16) = v142;
      *(v143 + 24) = v144;
      v145 = &v141[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_drawingHandler];
      v146 = *&v141[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_drawingHandler];
      *v145 = sub_1000056EC;
      v145[1] = v143;
      v147 = v141;

      sub_1000056DC(v146);

      return v9;
    }
  }

  result = swift_endAccess();
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10008A2B0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_solarPreviewContinuousRenderingToken);
  if (v2)
  {
    v3 = qword_10012F738;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_1000E96A4();
    sub_100007488(v4, qword_10013DD70);

    v5 = sub_1000E9684();
    v6 = sub_1000E9BB4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v18[0] = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_100093A3C(*(v2 + 32), *(v2 + 40), v18);
      _os_log_impl(&_mh_execute_header, v5, v6, "ContinuousRenderingToken “%{public}s” invalidate for coordinator shutdown", v7, 0xCu);
      sub_100012710(v8);
    }

    *(v2 + 48) = 1;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v9 = *(v1 + 320);
  v18[10] = *(v1 + 304);
  v18[11] = v9;
  v18[12] = *(v1 + 336);
  v19 = *(v1 + 352);
  v10 = *(v1 + 256);
  v18[6] = *(v1 + 240);
  v18[7] = v10;
  v11 = *(v1 + 288);
  v18[8] = *(v1 + 272);
  v18[9] = v11;
  v12 = *(v1 + 192);
  v18[2] = *(v1 + 176);
  v18[3] = v12;
  v13 = *(v1 + 224);
  v18[4] = *(v1 + 208);
  v18[5] = v13;
  v14 = *(v1 + 160);
  v18[0] = *(v1 + 144);
  v18[1] = v14;
  sub_1000047C4(v18, &qword_100131DA8);

  sub_1000047C4(v1 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_lookTransition, &qword_100131D78);

  v15 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_lastSolarCheckLogDate;
  v16 = sub_1000E94E4();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  sub_1000056DC(*(v1 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_significantChangeHandler));
  return v1;
}

uint64_t sub_10008A598()
{
  sub_10008A2B0();

  return swift_deallocClassInstance();
}

uint64_t sub_10008A5F0(id a1, void *a2)
{
  v4 = v2;
  if (!*(v2 + 104))
  {
    goto LABEL_6;
  }

  if (qword_10012F678 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v7 = sub_1000E96A4();
    sub_100007488(v7, qword_100131200);
    v8 = sub_1000E9684();
    v9 = sub_1000E9BA4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "renderer should be nil at this point — attaching multiple times?", v10, 2u);
    }

LABEL_6:
    [a1 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [a1 window];
    if (!v19 || (v20 = v19, v21 = [v19 screen], v20, !v21))
    {
      v21 = [objc_opt_self() mainScreen];
    }

    [v21 nativeScale];
    v23 = v22;

    v80.origin.x = v12;
    v80.origin.y = v14;
    v80.size.width = v16;
    v80.size.height = v18;
    v24 = ceil(v23 * CGRectGetWidth(v80));
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v24 <= -9.22337204e18)
    {
      goto LABEL_43;
    }

    if (v24 >= 9.22337204e18)
    {
      goto LABEL_44;
    }

    v81.origin.x = v12;
    v81.origin.y = v14;
    v81.size.width = v16;
    v81.size.height = v18;
    v25 = ceil(v23 * CGRectGetHeight(v81));
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_45;
    }

    if (v25 <= -9.22337204e18)
    {
      goto LABEL_46;
    }

    if (v25 < 9.22337204e18)
    {
      break;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  v26 = *(v4 + 48);
  v27 = [v26 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setDrawableSize:{v24, v25}];

  v77 = v26;
  [v26 setBounds:{v12, v14, v16, v18}];
  v28 = *(v4 + 56);
  [v28 setBounds:{v12, v14, v16, v18}];
  v29 = *(v4 + 72);
  [v29 setBounds:{v12, v14, v16, v18}];
  if (v29)
  {
    v30 = sub_1000E98E4();
    [v29 setName:v30];
  }

  v31 = *(v4 + 88);
  v32 = *(*(v4 + 96) + 24);
  v76 = *(v4 + 96);
  if (v32(v31) == 1)
  {
    [v77 setOpaque:0];
    [a2 addSubview:v77];
    v33 = [a2 layer];
    [v33 addSublayer:v28];

    if (v29)
    {
      v34 = v29;
      v35 = [a1 layer];
      [v35 addSublayer:v34];

      goto LABEL_21;
    }
  }

  else
  {
    [a1 addSubview:v77];
    v35 = [a1 layer];
    [v35 addSublayer:v28];
LABEL_21:
  }

  v36 = v76;
  v37 = (v32)(v31, v76);
  if ((v37 | 2) == 3)
  {
    *(v4 + 80) = 0;
  }

  else
  {
    v38 = v37;
    v39 = [objc_opt_self() clearColor];
    [a2 setBackgroundColor:v39];

    v40 = [v77 layer];
    type metadata accessor for FloatingLayerMaskManager();
    v41 = swift_allocObject();
    v42 = [objc_allocWithZone(CAPortalLayer) init];
    *(v41 + 16) = v42;
    *(v41 + 32) = v38;
    v43 = v38;
    v44 = v42;
    [v44 setSourceLayer:v40];
    [v44 setPosition:{v16 * 0.5, v18 * 0.5}];
    [v44 setBounds:{0.0, 0.0, v16, v18}];
    [v44 setAnchorPoint:{0.0, 0.0}];
    v45 = sub_1000E98E4();
    [v44 setName:v45];

    if (v43 == 2)
    {
      *(v41 + 24) = 0;
      sub_1000125FC(&unk_100131D60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000EC870;
      strcpy((inited + 32), "contentsOpaque");
      *(inited + 47) = -18;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 0;
      v47 = v44;
      sub_1000A12F0(inited);
      swift_setDeallocating();
      sub_1000047C4(inited + 32, &qword_100132080);
      isa = sub_1000E9894().super.isa;

      [v47 setOverrides:isa];
    }

    else
    {
      v49 = [objc_allocWithZone(CALayer) init];
      [v49 setPosition:{0.0, 0.0}];
      [v49 setBounds:{0.0, 0.0, v16, v18}];
      v50 = v44;
      [v50 setMask:v49];

      *(v41 + 24) = v49;
    }

    *(v4 + 80) = v41;
    swift_retain_n();

    v51 = [a2 layer];
    [v51 addSublayer:*(v41 + 16)];

    v52 = *(v4 + 64);
    v36 = v76;
    if (v52)
    {
      v53 = v52;
      [v53 setBounds:{v12, v14, v16, v18}];
      v54 = [v53 mask];
      [v54 setBounds:{v12, v14, v16, v18}];

      v55 = [a2 layer];
      [v55 addSublayer:v53];
    }
  }

  if ((*(v36 + 32))(v31, v36))
  {
    v56 = [*(v4 + 40) commandBuffer];
    if (v56)
    {
      v57 = v56;
      v58 = sub_1000E98E4();
      [v57 setLabel:v58];

      swift_unknownObjectRetain();
      goto LABEL_33;
    }

    sub_100098870();
    swift_allocError();
    *v75 = 1;
    return swift_willThrow();
  }

  else
  {
    v57 = 0;
LABEL_33:
    v60 = *(v4 + 24);
    v59 = *(v4 + 32);
    v61 = *(v4 + 16);
    v62 = *(v36 + 208);
    swift_unknownObjectRetain();

    v63 = v62(v59, v61, v60, v24, v25, v57, v31, v36);
    if (!v3)
    {
      *(v4 + 104) = v63;
      *(v4 + 112) = v36;
      swift_unknownObjectRelease();
      if (v57)
      {
        [v57 commit];
      }

      if (*(v4 + 104))
      {
        v64 = *(v4 + 112);
        ObjectType = swift_getObjectType();
        v66 = swift_allocObject();
        swift_weakInit();
        v67 = *(v64 + 160);
        swift_unknownObjectRetain();

        v67(sub_100098FE0, v66, ObjectType, v64);
        swift_unknownObjectRelease();
      }

      v68 = *(v4 + 320);
      v78[10] = *(v4 + 304);
      v78[11] = v68;
      v78[12] = *(v4 + 336);
      v79 = *(v4 + 352);
      v69 = *(v4 + 256);
      v78[6] = *(v4 + 240);
      v78[7] = v69;
      v70 = *(v4 + 288);
      v78[8] = *(v4 + 272);
      v78[9] = v70;
      v71 = *(v4 + 192);
      v78[2] = *(v4 + 176);
      v78[3] = v71;
      v72 = *(v4 + 224);
      v78[4] = *(v4 + 208);
      v78[5] = v72;
      v73 = *(v4 + 160);
      v78[0] = *(v4 + 144);
      v78[1] = v73;
      if (sub_100004D84(v78) != 1)
      {
        *(v77 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically) = 1;
        [v77 setNeedsDisplay];
      }
    }

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_10008B0C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_1000125FC(&qword_100131D78);
  __chkstk_darwin(v10 - 8);
  v12 = &v23[-1] - v11;
  if (qword_10012F678 != -1)
  {
    swift_once();
  }

  v13 = sub_1000E96A4();
  sub_100007488(v13, qword_100131200);

  v14 = sub_1000E9684();
  v15 = sub_1000E9BB4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_100093A3C(a1, a2, v23);
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_100093A3C(a3, a4, v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "beginning look transition “%{public}s” → “%{public}s”", v16, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000E94B4();
  v17 = type metadata accessor for WallpaperRenderingCoordinator.LookTransitionInfo(0);
  *&v12[v17[5]] = 0x3FF0000000000000;
  v18 = &v12[v17[6]];
  *v18 = a1;
  v18[1] = a2;
  v19 = &v12[v17[7]];
  *v19 = a3;
  v19[1] = a4;
  (*(*(v17 - 1) + 56))(v12, 0, 1, v17);
  v20 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_lookTransition;
  swift_beginAccess();

  sub_100099040(v12, v5 + v20, &qword_100131D78);
  swift_endAccess();
  return 0x3FF0000000000000;
}

uint64_t sub_10008B378(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, CGColorSpace *a5)
{
  if (a4 == 115)
  {
    v10 = 8;
  }

  else
  {
    v10 = 4;
  }

  if ((a4 - 70) < 2)
  {
    v32 = a3;
    v11 = 16961;
  }

  else
  {
    if ((a4 - 80) < 2)
    {
      v32 = a3;
      v5 = 1111970369;
      goto LABEL_11;
    }

    if (a4 != 115)
    {
LABEL_17:
      sub_100098870();
      swift_allocError();
      *v29 = 3;
      swift_willThrow();
      return v5;
    }

    v32 = a3;
    v11 = 26689;
  }

  v5 = v11 | 0x52470000u;
LABEL_11:
  sub_1000125FC(&qword_100131D48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EDAA0;
  *(inited + 32) = kIOSurfaceWidth;
  *(inited + 40) = a1;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = kIOSurfaceHeight;
  *(inited + 80) = a2;
  *(inited + 104) = &type metadata for Int;
  *(inited + 112) = kIOSurfaceBytesPerElement;
  *(inited + 120) = v10;
  *(inited + 144) = &type metadata for Int;
  *(inited + 152) = kIOSurfacePixelFormat;
  *(inited + 184) = &type metadata for UInt32;
  *(inited + 160) = v5;
  v13 = kIOSurfaceWidth;
  v14 = kIOSurfaceHeight;
  v15 = kIOSurfaceBytesPerElement;
  v16 = kIOSurfacePixelFormat;
  v17 = sub_1000A1950(inited);
  swift_setDeallocating();
  sub_1000125FC(&unk_100131D50);
  swift_arrayDestroy();
  v18 = CGColorSpaceCopyICCData(a5);
  if (v18)
  {
    v19 = v18;
    type metadata accessor for CFData(0);
    v35 = v20;
    *&v34 = v19;
    sub_100032864(&v34, v33);
    v21 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v17;
    sub_1000B5050(v33, kIOSurfaceICCProfile, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for CFString(0);
  sub_1000990A8(&qword_10012FB80, type metadata accessor for CFString);
  isa = sub_1000E9894().super.isa;

  v24 = IOSurfaceCreate(isa);

  if (!v24)
  {
    goto LABEL_17;
  }

  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 texture2DDescriptorWithPixelFormat:a4 width:a1 height:a2 mipmapped:0];
  [v27 setUsage:4];
  v28 = [v32 newTextureWithDescriptor:v27 iosurface:v26 plane:0];
  if (v28)
  {
    v5 = v28;
  }

  else
  {
    sub_100098870();
    swift_allocError();
    *v30 = 3;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10008B6FC(void *a1, unsigned __int8 a2, void *a3, char a4)
{
  v6 = v4;
  v11 = [a1 pixelFormat];
  v12 = sub_1000130C0(v11);
  if ((v12 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  isa = v12;
  p_name = 8 * v12;
  v14 = sub_1000131E4(v11);
  v60 = p_name;
  v61 = p_name >> 2;
  space = a3;
  bitmapInfo = v14;
  sub_1000E9C54(&v67, p_name >> 2, p_name, space, v14, kCGRenderingIntentDefault);
  if (v68 == 1)
  {
    __break(1u);
  }

  v71[0] = v67;
  v71[1] = v68;
  v72 = v69;
  v73 = v70;
  v15 = [a1 width];
  v16 = [a1 height];
  if (a4)
  {
    v14 = v4;
    p_name = &stru_10012CFF8.name;
    v17 = [a1 iosurface];
    if (v17)
    {
      v18 = v17;
      BytesPerRow = IOSurfaceGetBytesPerRow(v17);

      goto LABEL_9;
    }
  }

  else
  {
    BytesPerRow = v15 * isa;
    if ((v15 * isa) >> 64 == (v15 * isa) >> 63)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  BytesPerRow = v15 * isa;
  if ((v15 * isa) >> 64 != (v15 * isa) >> 63)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_9:
  v20 = [a1 *(p_name + 3056)];
  if (!v20)
  {
    v6 = v14;
LABEL_14:
    if ((BytesPerRow * v16) >> 64 == (BytesPerRow * v16) >> 63)
    {
      dest.data = sub_1000AF880(BytesPerRow * v16);
      dest.height = v23;
      swift_unknownObjectRetain();
      sub_100094D08(&dest, a1, BytesPerRow, v15, v16);
      if (a2 > 1u)
      {
        if (a2 == 2)
        {
          data = dest.data;
          height = dest.height;
          sub_100031E2C(dest.data, dest.height);
          sub_100095180(&data, v16, v15, BytesPerRow);
          sub_100095560(&dest, v16, v15, BytesPerRow);
          v28 = dest.data;
          v29 = dest.height;
          isa = sub_1000E93F4().super.isa;
          v14 = CGDataProviderCreateWithCFData(isa);

          if (!v14)
          {
            sub_100098870();
            swift_allocError();
            *v46 = 3;
            swift_willThrow();
LABEL_52:
            sub_1000190E4(data, height);
            goto LABEL_53;
          }

          v30 = CGImageCreate(v15, v16, v61, v60, BytesPerRow, space, bitmapInfo, v14, 0, 0, kCGRenderingIntentDefault);
          if (v30)
          {
            isa = v30;
            v59 = v29;

            v31 = data;
            v58 = height;
            v32 = sub_1000E93F4().super.isa;
            v33 = CGDataProviderCreateWithCFData(v32);

            if (v33)
            {
              if (CGImageCreate(v15, v16, v61, v60, BytesPerRow, space, bitmapInfo, v33, 0, 0, kCGRenderingIntentDefault))
              {

                sub_1000190E4(v31, v58);
                sub_1000190E4(v28, v59);
                return isa;
              }

              if (qword_10012F738 != -1)
              {
                swift_once();
              }

              v52 = sub_1000E96A4();
              sub_100007488(v52, qword_10013DD70);
              v53 = sub_1000E9684();
              v54 = sub_1000E9BA4();
              if (os_log_type_enabled(v53, v54))
              {
                v55 = swift_slowAlloc();
                *v55 = 0;
                _os_log_impl(&_mh_execute_header, v53, v54, "couldn’t create image from data", v55, 2u);
              }

              sub_100098870();
              swift_allocError();
              *v56 = 3;
              swift_willThrow();
            }

            else
            {
              sub_100098870();
              swift_allocError();
              *v51 = 3;
              swift_willThrow();
            }

            goto LABEL_52;
          }

          if (qword_10012F738 == -1)
          {
LABEL_41:
            v47 = sub_1000E96A4();
            sub_100007488(v47, qword_10013DD70);
            v48 = sub_1000E9684();
            isa = sub_1000E9BA4();
            if (os_log_type_enabled(v48, isa))
            {
              v49 = swift_slowAlloc();
              *v49 = 0;
              _os_log_impl(&_mh_execute_header, v48, isa, "couldn’t create image from data", v49, 2u);
            }

            sub_100098870();
            swift_allocError();
            *v50 = 3;
            swift_willThrow();

            goto LABEL_52;
          }

LABEL_62:
          swift_once();
          goto LABEL_41;
        }
      }

      else if (!a2)
      {
        v25 = dest.data;
        v24 = dest.height;
        isa = sub_1000E93F4().super.isa;
        v6 = CGDataProviderCreateWithCFData(isa);

        if (v6)
        {
          v26 = CGImageCreate(v15, v16, v61, v60, BytesPerRow, space, bitmapInfo, v6, 0, 0, kCGRenderingIntentDefault);
          if (v26)
          {
            isa = v26;

            sub_1000190E4(v25, v24);
            v27 = isa;
            return isa;
          }

LABEL_35:
          if (qword_10012F738 == -1)
          {
LABEL_36:
            v42 = sub_1000E96A4();
            sub_100007488(v42, qword_10013DD70);
            v43 = sub_1000E9684();
            v44 = sub_1000E9BA4();
            if (os_log_type_enabled(v43, v44))
            {
              isa = swift_slowAlloc();
              *isa = 0;
              _os_log_impl(&_mh_execute_header, v43, v44, "couldn’t create image from data", isa, 2u);
            }

            sub_100098870();
            swift_allocError();
            *v45 = 3;
            swift_willThrow();

            goto LABEL_53;
          }

LABEL_59:
          swift_once();
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      v35 = dest.data;
      v34 = dest.height;
      isa = sub_1000E93F4().super.isa;
      v6 = CGDataProviderCreateWithCFData(isa);

      if (v6)
      {
        v36 = CGImageCreate(v15, v16, v61, v60, BytesPerRow, space, bitmapInfo, v6, 0, 0, kCGRenderingIntentDefault);
        if (v36)
        {
          isa = v36;

          sub_1000190E4(v35, v34);
          return isa;
        }

        goto LABEL_35;
      }

LABEL_29:
      sub_100098870();
      swift_allocError();
      *v37 = 3;
      swift_willThrow();
LABEL_53:
      v40 = dest.data;
      v41 = dest.height;
      goto LABEL_54;
    }

    goto LABEL_57;
  }

  isa = v20;
  v21 = v14;
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      return isa;
    }

    IOSurfaceLock(v20, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(isa);
    if ((BytesPerRow * v16) >> 64 == (BytesPerRow * v16) >> 63)
    {
      v14 = BaseAddress;
      data = sub_100098984(BaseAddress, BytesPerRow * v16);
      height = v39;
      if (((v16 | v15) & 0x8000000000000000) == 0)
      {
        dest.data = v14;
        dest.height = v16;
        dest.width = v15;
        dest.rowBytes = BytesPerRow;
        vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &dest, &dest, 1u, 0);
        IOSurfaceUnlock(isa, 0, 0);
        sub_100095960(&data, v16, v15, BytesPerRow, v71);
        if (!v21)
        {
          sub_1000190E4(data, height);
          return isa;
        }

        v40 = data;
        v41 = height;
LABEL_54:
        sub_1000190E4(v40, v41);
        return isa;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_62;
  }

  if (!a2)
  {
    v22 = v20;
  }

  return isa;
}

uint64_t sub_10008BFA8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_continuousRenderingReasons;
  swift_beginAccess();
  v7 = *(v2 + v6);

  v8 = sub_10008C194(a1, a2, v7);

  if (v8)
  {
    if (qword_10012F678 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E96A4();
    sub_100007488(v9, qword_100131200);
    v10 = sub_1000E9684();
    v11 = sub_1000E9BB4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Request for continuous rendering with a reason that already exists. Don't create a new one. The caller needs to work this out.", v12, 2u);
    }

    return 0;
  }

  else
  {
    swift_beginAccess();

    sub_1000C232C(&v17, a1, a2);
    swift_endAccess();

    *(*(v3 + 48) + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_wantsIndefiniteContinuousRendering) = 1;
    sub_1000871AC();
    type metadata accessor for ContinuousRenderingToken();
    v14 = swift_allocObject();

    v16 = sub_100098CD8(v15, a1, a2, v14, &off_100124D20);

    return v16;
  }
}

uint64_t sub_10008C194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000EA024();
  sub_1000E9974();
  v6 = sub_1000EA064();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1000E9F74() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_10008C28C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_continuousRenderingReasons;
  swift_beginAccess();
  v6 = *(*(v2 + v5) + 16);
  swift_beginAccess();
  sub_1000C357C(a1, a2);
  swift_endAccess();

  if (v6)
  {
    if (!*(*(v2 + v5) + 16))
    {
      *(*(v2 + 48) + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_wantsIndefiniteContinuousRendering) = 0;
      sub_1000871AC();
    }
  }
}

uint64_t sub_10008C354(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_1000C1784(v2, v3);
    }

    return 0;
  }

  return !v3;
}

void sub_10008C37C(void *a1, void *a2)
{
  if (*(v2 + 48) == 1)
  {
    v4 = [a1 layer];
    if (!v2[4])
    {
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 addSublayer:?];

    [a2 addSubview:v2[2]];
    v14 = [a2 layer];
    [v14 addSublayer:*v2];
    goto LABEL_8;
  }

  v7 = [objc_opt_self() blackColor];
  [a1 setBackgroundColor:v7];

  v8 = [a1 layer];
  [v8 addSublayer:*v2];

  [a1 addSubview:v2[2]];
  v9 = v2[1];
  if (v9)
  {
    v10 = v9;
    v11 = [a2 layer];
    [v11 addSublayer:v10];
  }

  v12 = v2[5];
  if (v12)
  {
    v13 = v12;
    v14 = [a2 layer];
    [v14 addSublayer:v13];

LABEL_8:
  }
}

void *sub_10008C558(double a1, double a2)
{
  v5 = *v2;
  if (*(v2 + 49))
  {
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    while (v8)
    {
      v11 = v10;
      result = v5;
LABEL_11:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = result[7] + 56 * (v13 | (v11 << 6));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = *(v14 + 32);
      v27 = *(v14 + 40);
      v19 = v15;
      v26 = v16;
      v20 = v17;

      v21 = v18;
      [v20 setFrame:{0.0, 0.0, a1, a2}];
      [v19 setBounds:{0.0, 0.0, a1, a2}];
      [v26 setBounds:{0.0, 0.0, a1, a2}];
      [v21 setBounds:{0.0, 0.0, a1, a2}];
      [v27 setBounds:{0.0, 0.0, a1, a2}];
    }

    result = v5;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v23 = v2[4];
    v22 = v2[5];
    v25 = v2 + 1;
    v24 = v2[1];
    [v25[1] setFrame:{0.0, 0.0, a1, a2}];
    [v5 setBounds:{0.0, 0.0, a1, a2}];
    [v24 setBounds:{0.0, 0.0, a1, a2}];
    [v23 setBounds:{0.0, 0.0, a1, a2}];

    return [v22 setBounds:{0.0, 0.0, a1, a2}];
  }
}

uint64_t sub_10008C858(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_1000E96A4();
  sub_100011C54(v7, a2);
  v8 = sub_100007488(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_100007488(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_10008C920(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void), uint64_t a8, char a9)
{
  v11 = v9;
  *(v9 + 152) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *(v9 + 392) = 0u;
  *(v9 + 408) = 0u;
  *(v9 + 428) = -1;
  *(v9 + 424) = 0;
  *(v9 + 432) = 0u;
  *(v9 + 448) = 0u;
  *(v9 + 464) = 0u;
  *(v9 + 480) = 1;
  *(v9 + 488) = 0x3FF0000000000000;
  *(v9 + 504) = 0;
  *(v9 + 512) = 1;
  *(v9 + 520) = &_swiftEmptySetSingleton;
  *(v9 + 552) = 0;
  *(v9 + 568) = 0;
  *(v9 + 560) = 0;
  *(v9 + 576) = 1;
  v83 = a4;
  if (qword_10012F688 != -1)
  {
LABEL_42:
    v74 = isUniquelyReferenced_nonNull_native;
    v75 = a6;
    swift_once();
    a6 = v75;
    isUniquelyReferenced_nonNull_native = v74;
    a4 = v83;
  }

  v15 = qword_100131230;
  if (!qword_100131230)
  {

    sub_100098870();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_100098A50(*(v11 + 392), *(v11 + 400), *(v11 + 408), *(v11 + 416), *(v11 + 424) | (*(v11 + 428) << 32));

    type metadata accessor for WallpaperEditingCoordinator();
    swift_deallocPartialClassInstance();
    return v11;
  }

  *(v11 + 24) = isUniquelyReferenced_nonNull_native;
  *(v11 + 32) = a2;
  *(v11 + 64) = a3;
  *(v11 + 72) = a4;
  v80 = a6;
  *(v11 + 160) = a6;
  *(v11 + 168) = a7;
  *(v11 + 16) = a8;
  *(v11 + 496) = a9;
  *(v11 + 40) = *(v15 + OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D9Resources_device);
  *(v11 + 48) = *(v15 + OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D9Resources_commandQueue);
  v16 = a7;
  v17 = a8;
  v18 = a4;
  v84 = *(a4 + 16);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v19 = v84(a3, v18);
  v85 = v17;
  v81 = v16;
  if (!v19)
  {
    v19 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
    if (!v19)
    {
      __break(1u);
LABEL_44:
      *&v87[0] = 0;
      *(&v87[0] + 1) = 0xE000000000000000;
      sub_1000E9D64(97);
      v98._countAndFlagsBits = 0x6F66206C65786970;
      v98._object = 0xED00002074616D72;
      sub_1000E99A4(v98);
      v18();
      type metadata accessor for MTLPixelFormat(0);
      sub_1000E9DF4();
      v99._object = 0x80000001000F8510;
      v99._countAndFlagsBits = 0x1000000000000052;
      sub_1000E99A4(v99);
      sub_1000E9E44();
      __break(1u);
      goto LABEL_45;
    }
  }

  *(v11 + 528) = v19;
  v20 = *(v11 + 40);
  v21 = *(v83 + 8);
  swift_unknownObjectRetain();
  v76 = v21;
  v22 = (v21)(a3, v83);
  v78 = *(v83 + 24);
  v23 = *(v11 + 528);
  v24 = v78(a3, v83) == 2;
  v25 = objc_allocWithZone(type metadata accessor for WallpaperMetalView(0));
  sub_100085B94(v20, v22, v23, v24);
  *(v11 + 56) = v26;
  *(v26 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically) = 0;
  v95[0] = v80;
  v95[1] = v81;
  v95[2] = 0;
  v96[0] = 0;
  *(v96 + 5) = 0;

  v27 = swift_unknownObjectRetain();
  sub_100097614(v27, v95, 0.0, 1, v89);
  v28 = v89[11];
  *(v11 + 336) = v89[10];
  *(v11 + 352) = v28;
  *(v11 + 368) = v89[12];
  *(v11 + 384) = v90;
  v29 = v89[7];
  *(v11 + 272) = v89[6];
  *(v11 + 288) = v29;
  v30 = v89[9];
  *(v11 + 304) = v89[8];
  *(v11 + 320) = v30;
  v31 = v89[3];
  *(v11 + 208) = v89[2];
  *(v11 + 224) = v31;
  v32 = v89[5];
  *(v11 + 240) = v89[4];
  *(v11 + 256) = v32;
  v33 = v89[1];
  *(v11 + 176) = v89[0];
  *(v11 + 192) = v33;
  v34 = v78(a3, v83);
  v35 = v34;
  v36 = v85;
  if (!v85)
  {
    sub_1000978B4(v34, 0x6F756E69746E6F63, 0xEA00000000007375, v91);
    v49 = v91[1];
    v50 = v94;
    LOBYTE(v87[0]) = 0;
    *(v11 + 96) = v91[0];
    *(v11 + 104) = v49;
    v51 = v93;
    *(v11 + 112) = v92;
    *(v11 + 128) = v51;
    *(v11 + 144) = v50;
    *(v11 + 536) = sub_1000A0670(_swiftEmptyArrayStorage);
    *(v11 + 544) = 0;

    swift_unknownObjectRelease();

LABEL_39:
    v68 = *(v11 + 56);
    v69 = swift_allocObject();
    swift_weakInit();
    v70 = &v68[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_drawingHandler];
    v71 = *&v68[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_drawingHandler];
    *v70 = sub_100099260;
    v70[1] = v69;
    v72 = v68;

    sub_1000056DC(v71);

    return v11;
  }

  v37 = *(v85 + 16);
  v77 = v11;
  if (v37)
  {
    v97 = _swiftEmptyArrayStorage;

    sub_1000AA348(0, v37, 0);
    v38 = v97;
    v39 = (v85 + 40);
    do
    {
      v41 = *(v39 - 1);
      v40 = *v39;
      swift_bridgeObjectRetain_n();
      sub_1000978B4(v35, v41, v40, v87);
      v97 = v38;
      v43 = v38[2];
      v42 = v38[3];
      if (v43 >= v42 >> 1)
      {
        sub_1000AA348((v42 > 1), v43 + 1, 1);
        v38 = v97;
      }

      v38[2] = v43 + 1;
      v44 = &v38[9 * v43];
      v44[4] = v41;
      v44[5] = v40;
      v45 = v87[0];
      v46 = v87[1];
      v47 = v87[2];
      *(v44 + 96) = v88;
      *(v44 + 4) = v46;
      *(v44 + 5) = v47;
      *(v44 + 3) = v45;
      v39 += 2;
      --v37;
    }

    while (v37);
    v11 = v77;
    v36 = v85;
  }

  else
  {

    v38 = _swiftEmptyArrayStorage;
  }

  a7 = v10;
  if (v38[2])
  {
    sub_1000125FC(&qword_100131E48);
    v52 = sub_1000E9EA4();
  }

  else
  {
    v52 = &_swiftEmptyDictionarySingleton;
  }

  v97 = v52;
  isUniquelyReferenced_nonNull_native = sub_1000963D8(v38, 1, &v97);
  if (!v10)
  {
    *(v11 + 96) = v97;
    *(v11 + 145) = 1;
    a2 = *(v36 + 16);
    if (a2)
    {
      v53 = 0;
      v54 = v83;
      a8 = v83 + 224;
      v55 = v36 + 40;
      v82 = _swiftEmptyArrayStorage;
      v79 = v36 + 40;
      do
      {
        v11 = v55 + 16 * v53;
        v56 = v53;
        while (1)
        {
          if (v56 >= *(v85 + 16))
          {
            __break(1u);
            goto LABEL_42;
          }

          v57 = *(v11 - 8);
          a7 = *v11;
          v53 = v56 + 1;
          v10 = *(v54 + 224);

          v58 = v10(v57, a7);
          if (*(v58 + 16))
          {
            break;
          }

          v11 += 16;
          ++v56;
          if (a2 == v53)
          {
            goto LABEL_33;
          }
        }

        v59 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1000A3414(0, v82[2] + 1, 1, v82);
          v82 = isUniquelyReferenced_nonNull_native;
        }

        v61 = v82[2];
        v60 = v82[3];
        if (v61 >= v60 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1000A3414((v60 > 1), v61 + 1, 1, v82);
          v82 = isUniquelyReferenced_nonNull_native;
        }

        v55 = v79;
        v82[2] = v61 + 1;
        v62 = &v82[3 * v61];
        v62[4] = v57;
        v62[5] = a7;
        v62[6] = v59;
        v54 = v83;
      }

      while (a2 - 1 != v56);
    }

    else
    {
      v82 = _swiftEmptyArrayStorage;
    }

LABEL_33:
    if (v82[2])
    {
      sub_1000125FC(&unk_100131E50);
      v63 = sub_1000E9EA4();
    }

    else
    {
      v63 = &_swiftEmptyDictionarySingleton;
    }

    v11 = v77;
    v18 = v76;
    *&v87[0] = v63;
    sub_100096028(v82, 1, v87, sub_1000B5748, sub_1000B1604);
    v64 = *&v87[0];
    *(v77 + 536) = *&v87[0];
    type metadata accessor for SolarEventPreviewer(0);
    v65 = swift_allocObject();

    v66 = sub_100097E04(v85, v64, v65);

    *(v77 + 544) = v66;
    v67 = v76();
    if ((v67 - 70) <= 0x2D && ((1 << (v67 - 70)) & 0x200000000C03) != 0)
    {

      swift_unknownObjectRelease();

      goto LABEL_39;
    }

    goto LABEL_44;
  }

LABEL_45:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10008D308(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10008F6FC(a1);
  }

  return result;
}

void sub_10008D368(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v159 = a3;
  v138 = a2;
  v10 = sub_1000125FC(&qword_100131CE0);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v128 - v12;
  [a1 bounds];
  *(v4 + 54) = v14;
  *(v4 + 55) = v15;
  *(v4 + 56) = v16;
  *(v4 + 57) = v17;
  if (v4[480])
  {
    v18 = [objc_opt_self() mainScreen];
    [v18 nativeScale];
    v20 = v19;

    v21 = ceil(v20 * CGRectGetWidth(*(v7 + 432)));
    v22 = ceil(v20 * CGRectGetHeight(*(v7 + 432)));
    *(v7 + 58) = v21;
    *(v7 + 59) = v22;
    v7[480] = 0;
    if (*(v7 + 10))
    {
      goto LABEL_37;
    }
  }

  else
  {
    v21 = *(v4 + 58);
    v22 = *(v4 + 59);
    if (*(v4 + 10))
    {
      goto LABEL_37;
    }
  }

  v23 = *(v7 + 9);
  v24 = v23[4];
  v135 = *(v7 + 8);
  v137 = v23;
  if (v24())
  {
    v25 = [*(v7 + 6) commandBuffer];
    if (!v25)
    {
      sub_100098870();
      swift_allocError();
      *v56 = 1;
      swift_willThrow();
      return;
    }

    v26 = v25;
    v27 = sub_1000E98E4();
    [v26 setLabel:v27];

    swift_unknownObjectRetain();
  }

  else
  {
    v26 = 0;
  }

  if (v21 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_79;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_80;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
    goto LABEL_51;
  }

  v139 = a1;
  v140 = v26;
  v133 = v7;
  v134 = v13;
  v141 = a4;
  v29 = *(v7 + 4);
  v28 = *(v7 + 5);
  v30 = *(v7 + 3);
  v31 = v137;
  v32 = v137[26];
  swift_unknownObjectRetain();

  v33 = v30;
  v34 = v140;
  v35 = v135;
  v36 = v32(v28, v33, v29, v21, v22, v140, v135, v31);
  if (v6)
  {
    swift_unknownObjectRelease();
    return;
  }

  v136 = 0;
  v7 = v133;
  *(v133 + 10) = v36;
  *(v7 + 11) = v31;
  swift_unknownObjectRelease();
  if (v34)
  {
    [v34 commit];
  }

  if (*(v7 + 10))
  {
    v37 = *(v7 + 11);
    ObjectType = swift_getObjectType();
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = *(v37 + 160);
    swift_unknownObjectRetain();

    v40(sub_100098C20, v39, ObjectType, v37);
    v31 = v137;
    swift_unknownObjectRelease();
  }

  v41 = *(v7 + 7);
  v42 = [v41 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setDrawableSize:{v21, v22}];

  [v41 setBounds:{*(v7 + 54), *(v7 + 55), *(v7 + 56), *(v7 + 57)}];
  *(v41 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically) = 1;
  v43 = v31[3];
  if (v43(v35, v31) == 1)
  {
    [v41 setOpaque:0];
  }

  v44 = *(v7 + 7);
  v157[0] = *(v7 + 6);
  v157[1] = v44;
  v157[2] = *(v7 + 8);
  v158 = *(v7 + 72);
  v45 = *(v7 + 56);
  v46 = *(v7 + 57);
  sub_100098C50(v157, &v146);
  sub_10008C558(v45, v46);
  sub_1000986DC(v157);
  v47 = v43(v35, v31);
  if ((v47 | 2) == 3)
  {
    v48 = 0;
  }

  else
  {
    v57 = *(v7 + 56);
    v58 = *(v7 + 57);
    v59 = v47;
    v60 = [v41 layer];
    type metadata accessor for FloatingLayerMaskManager();
    v48 = swift_allocObject();
    v61 = [objc_allocWithZone(CAPortalLayer) init];
    *(v48 + 16) = v61;
    *(v48 + 32) = v59;
    v62 = v59;
    v63 = v61;
    [v63 setSourceLayer:v60];
    [v63 setPosition:{v57 * 0.5, v58 * 0.5}];
    [v63 setBounds:{0.0, 0.0, v57, v58}];
    [v63 setAnchorPoint:{0.0, 0.0}];
    v64 = sub_1000E98E4();
    [v63 setName:v64];

    if (v62 == 2)
    {
      *(v48 + 24) = 0;
      v65 = *(v48 + 16);
      sub_1000125FC(&unk_100131D60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000EC870;
      strcpy((inited + 32), "contentsOpaque");
      *(inited + 47) = -18;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 0;
      v67 = v65;
      sub_1000A12F0(inited);
      swift_setDeallocating();
      sub_1000047C4(inited + 32, &qword_100132080);
      isa = sub_1000E9894().super.isa;

      [v67 setOverrides:isa];
    }

    else
    {
      v126 = [objc_allocWithZone(CALayer) init];
      [v126 setPosition:{0.0, 0.0}];
      [v126 setBounds:{0.0, 0.0, v57, v58}];
      v127 = *(v48 + 16);
      [v127 setMask:v126];

      *(v48 + 24) = v126;
    }
  }

  v49 = v136;
  a4 = v141;
  a1 = v139;
  *(v7 + 19) = v48;

  sub_100090660();
  v6 = v49;
  if (v49)
  {
    if (qword_10012F680 != -1)
    {
      swift_once();
    }

    v50 = sub_1000E96A4();
    sub_100007488(v50, qword_100131218);
    swift_errorRetain();
    v51 = sub_1000E9684();
    v52 = sub_1000E9BA4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v55;
      *v54 = v55;
      _os_log_impl(&_mh_execute_header, v51, v52, "failed to start look snapshot generation after attach: %@", v53, 0xCu);
      sub_1000047C4(v54, &qword_10012FA60);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v6 = 0;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v13 = v134;
LABEL_37:
  v149 = *(v7 + 72);
  v69 = *(v7 + 7);
  v146 = *(v7 + 6);
  v147 = v69;
  v148 = *(v7 + 8);
  v70 = v146;
  if ((v149 & 0x100) == 0)
  {
    v139 = a1;
    v141 = a4;
    v134 = v13;
    v136 = v6;
    v129 = v149;
    v78 = *(&v148 + 1);
    v79 = v148;
    v77 = *(&v147 + 1);
    v84 = v147;
    v75 = *(&v146 + 1);
    v85 = *(&v148 + 1);
    v81 = v70;
    v135 = v75;
    v82 = v84;

    v86 = v79;
LABEL_42:
    v140 = v77;
    v130 = v81;
    v131 = v75;
    v150 = v81;
    v151 = v75;
    v137 = v82;
    v152 = v82;
    v153 = v77;
    v132 = v79;
    v133 = v78;
    v154 = v79;
    v155 = v78;
    v156 = v129;
    v87 = [v139 layer];
    *&v144 = 0;
    *(&v144 + 1) = 0xE000000000000000;
    sub_1000E9D64(23);

    *&v144 = 0xD000000000000015;
    *(&v144 + 1) = 0x80000001000F8360;
    v88 = v159;
    v160._countAndFlagsBits = v159;
    v89 = v141;
    v160._object = v141;
    sub_1000E99A4(v160);
    v90 = sub_1000E98E4();

    [v87 setName:v90];

    v91 = v138;
    v92 = [v138 layer];
    *&v144 = 0;
    *(&v144 + 1) = 0xE000000000000000;
    sub_1000E9D64(21);

    *&v144 = 0xD000000000000013;
    *(&v144 + 1) = 0x80000001000F8380;
    v161._countAndFlagsBits = v88;
    v161._object = v89;
    sub_1000E99A4(v161);
    v93 = sub_1000E98E4();

    [v92 setName:v93];

    v94 = v130;
    v95 = v135;
    v96 = v91;
    v97 = v140;
    sub_10008C37C(v139, v96);
    if (!v97[2])
    {
      goto LABEL_48;
    }

    v98 = 232;
    if (v7[272])
    {
      v98 = 240;
    }

    v99 = sub_10009F280(*&v7[v98]);
    if (v100)
    {
      v101 = v97[7] + 32 * v99;
      v102 = *(v101 + 8);
      v103 = *(v101 + 16);
      v104 = *(v101 + 24);
      v135 = *v101;
      v105 = v135;
      sub_10009870C(v103, v104);

      v106 = v105;
      sub_10009870C(v103, v104);
      v139 = v103;
      sub_100098720(v103, v104);
      v130 = v102;
      if (v102)
      {
        type metadata accessor for CGImage(0);
      }

      else
      {
        v107 = sub_100012904(0, &qword_100131D38);
      }

      v143 = v107;
      *&v142 = v106;
      sub_100032864(&v142, &v144);
      sub_100012800(&v144, v145);
      v108 = sub_1000E9F64();
      sub_100012710(&v144);
      v109 = 0;
    }

    else
    {
LABEL_48:

      v104 = 0;
      v139 = 0;
      v135 = 0;
      v108 = 0;
      v109 = 1;
      v130 = 255;
    }

    [v94 setContents:v108];

    swift_unknownObjectRelease();
    if (v131)
    {
      if ((v109 & 1) != 0 || (v115 = v135, sub_10009870C(v139, v104), v115, v104 == 255))
      {
        v117 = 0;
      }

      else
      {
        if (v104)
        {
          type metadata accessor for CGImage(0);
        }

        else
        {
          v116 = sub_100012904(0, &qword_100131D38);
        }

        v143 = v116;
        *&v142 = v139;
        sub_100032864(&v142, &v144);
        sub_100012800(&v144, v145);
        v117 = sub_1000E9F64();
        sub_100012710(&v144);
      }

      [v95 setContents:v117];

      swift_unknownObjectRelease();
    }

    if (*(v7 + 20) == v159 && *(v7 + 21) == v141 || (sub_1000E9F74() & 1) != 0)
    {
      v118 = *(v7 + 7);
      [v137 addSubview:v118];
      [v94 setHidden:1];
      [v95 setHidden:1];
      v119 = *(v7 + 19);
      if (v119)
      {

        v120 = [v138 layer];
        [v120 addSublayer:*(v119 + 16)];
      }

      v121 = *(v7 + 68);
      if (v121 && (*(v121 + 16) != v159 || *(v121 + 24) != v141) && (sub_1000E9F74() & 1) == 0)
      {
        v122 = v141;
        *(v121 + 16) = v159;
        *(v121 + 24) = v122;

        v123 = v134;
        sub_1000E94D4();
        v124 = sub_1000E94E4();
        (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
        v125 = OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D19SolarEventPreviewer_previewStartDate;
        swift_beginAccess();
        sub_100099040(v134, v121 + v125, &qword_100131CE0);
        swift_endAccess();
      }

      sub_100090238();
      [v118 setNeedsDisplay];
    }

    sub_100098C88(v135, v130, v139, v104);

    return;
  }

  if (*(v146 + 16))
  {

    v71 = sub_10009F208(v159, a4);
    if (v72)
    {
      v139 = a1;
      v141 = a4;
      v134 = v13;
      v136 = v6;
      v73 = v70[7] + 56 * v71;
      v74 = *v73;
      v75 = *(v73 + 8);
      v76 = *(v73 + 16);
      v77 = *(v73 + 24);
      v79 = *(v73 + 32);
      v78 = *(v73 + 40);
      v129 = *(v73 + 48);
      v80 = v78;
      v81 = v74;
      v135 = v75;
      v82 = v76;

      v83 = v79;
      sub_1000986DC(&v146);
      goto LABEL_42;
    }

    sub_1000986DC(&v146);
  }

  if (qword_10012F680 != -1)
  {
    goto LABEL_83;
  }

LABEL_51:
  v110 = sub_1000E96A4();
  sub_100007488(v110, qword_100131218);

  v111 = sub_1000E9684();
  v112 = sub_1000E9BA4();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *&v144 = v114;
    *v113 = 136315138;
    *(v113 + 4) = sub_100093A3C(v159, a4, &v144);
    _os_log_impl(&_mh_execute_header, v111, v112, "missing page contents for “%s”!", v113, 0xCu);
    sub_100012710(v114);
  }
}

uint64_t sub_10008E400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v7 = a4(a1, a2);

  return v7;
}

id sub_10008E48C(char a1)
{
  *(v1 + 496) = a1;
  sub_100090660();
  v2 = *(v1 + 56);

  return [v2 setNeedsDisplay];
}

uint64_t sub_10008E624(void *a1, void *a2)
{
  v3 = v2;
  v6 = *(v3 + 168);
  v150[0] = *(v3 + 160);
  v150[1] = v6;
  v150[2] = 0;
  v151[0] = 0;
  *(v151 + 5) = 0;
  v7 = *(v3 + 432);
  v8 = *(v3 + 440);
  v9 = *(v3 + 448);
  v10 = *(v3 + 456);
  swift_unknownObjectRetain();

  v152.origin.x = v7;
  v152.origin.y = v8;
  v152.size.width = v9;
  v152.size.height = v10;
  Height = CGRectGetHeight(v152);
  sub_100097614(a1, v150, Height, 0, v137);
  v133 = v137[0];
  v134 = v137[1];
  v135 = v137[2];
  v12 = v139;
  v136 = v138;
  v13 = *(&v139 + 1);
  v14 = *v140;
  v15 = *&v140[8];
  v16 = *&v140[16];
  v17 = v140[24];
  v132 = v140[24];
  v127 = v143;
  v128 = v144;
  v125 = v141;
  v126 = v142;
  *(v131 + 15) = *&v147[15];
  v130 = v146;
  v131[0] = *v147;
  v129 = v145;
  v86 = a1;
  v99 = *&v140[16];
  if (a2)
  {
    v18 = v139;
    v83 = *&v140[8];
    v87 = v140[24];
    v19 = 232;
    if (*(v3 + 272))
    {
      v19 = 240;
    }

    v20 = *(v3 + v19);
    v21 = a2;
    if ([a1 deviceOrientation] == v20)
    {

      v93 = 0;
      v95 = 0;
      v91 = 0;
      v92 = 0;
      v90 = 0;
      v22 = 255;
LABEL_40:
      v17 = v87;
      v15 = v83;
      v16 = v99;
      v12 = v18;
      goto LABEL_41;
    }

    v85 = v13;
    if (qword_10012F680 != -1)
    {
      swift_once();
    }

    v25 = sub_1000E96A4();
    sub_100007488(v25, qword_100131218);
    swift_unknownObjectRetain();
    v26 = sub_1000E9684();
    v27 = sub_1000E9B94();
    swift_unknownObjectRelease();
    v95 = v20;
    if (!os_log_type_enabled(v26, v27))
    {

LABEL_37:
      v93 = [a1 deviceOrientation];
      v43 = [v21 timingFunction];
      v13 = v85;
      if (!v43)
      {
        v43 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
      }

      Current = CFAbsoluteTimeGetCurrent();
      [v21 delay];
      *&v46 = Current + v45;
      [v21 duration];
      v90 = v47;
      v91 = v46;
      v92 = v43;
      v48 = v43;
      [v21 delay];
      v50 = v49;
      [v21 duration];
      sub_100086260(v50 + v51);

      v22 = 1;
      goto LABEL_40;
    }

    v94 = v14;
    v28 = swift_slowAlloc();
    *&v123[0] = swift_slowAlloc();
    *v28 = 136315394;
    if (v20 > 2)
    {
      if (v20 != 3)
      {
        if (v20 == 4)
        {
          v29 = 0x70616373646E616CLL;
          v30 = 0xED00007466654C65;
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      v29 = 0x70616373646E616CLL;
      v30 = 0xEE00746867695265;
    }

    else
    {
      if (v20 != 1)
      {
        if (v20 == 2)
        {
          v29 = 0xD000000000000012;
          v30 = 0x80000001000F8340;
          goto LABEL_26;
        }

LABEL_23:
        v30 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E75;
        goto LABEL_26;
      }

      v30 = 0xE800000000000000;
      v29 = 0x7469617274726F70;
    }

LABEL_26:
    v38 = sub_100093A3C(v29, v30, v123);

    *(v28 + 4) = v38;
    *(v28 + 12) = 2080;
    v39 = [a1 deviceOrientation];
    if (v39 > 2)
    {
      if (v39 == 3)
      {
        v40 = 0x70616373646E616CLL;
        v41 = 0xEE00746867695265;
        goto LABEL_36;
      }

      if (v39 == 4)
      {
        v40 = 0x70616373646E616CLL;
        v41 = 0xED00007466654C65;
        goto LABEL_36;
      }
    }

    else
    {
      if (v39 == 1)
      {
        v41 = 0xE800000000000000;
        v40 = 0x7469617274726F70;
        goto LABEL_36;
      }

      if (v39 == 2)
      {
        v40 = 0xD000000000000012;
        v41 = 0x80000001000F8340;
LABEL_36:
        v42 = sub_100093A3C(v40, v41, v123);

        *(v28 + 14) = v42;
        _os_log_impl(&_mh_execute_header, v26, v27, "🔄 editor starting orientation transition %s → %s", v28, 0x16u);
        swift_arrayDestroy();

        v14 = v94;
        goto LABEL_37;
      }
    }

    v41 = 0xE700000000000000;
    v40 = 0x6E776F6E6B6E75;
    goto LABEL_36;
  }

  if (*(v3 + 272) == 1)
  {
    v96 = v139;
    v84 = *&v140[8];
    v88 = v140[24];
    v24 = *(v3 + 256);
    v23 = *(v3 + 264);
    if (CFAbsoluteTimeGetCurrent() <= v23 + v24)
    {
      v31 = *(v3 + 232);
      v32 = *(v3 + 240);
      v34 = *(v3 + 248);
      v33 = *(v3 + 256);
      v35 = *(v3 + 264);
      v36 = *(v3 + 272);
      sub_100004DF4(v31, v32, v34, v33, v35, *(v3 + 272));
      v93 = v32;
      v95 = v31;
      v91 = v33;
      v92 = v34;
      v90 = v35;
      v37 = v35;
      v22 = v36;
      sub_100004DF4(v31, v32, v34, v33, v37, v36);
    }

    else
    {
      v93 = 0;
      v95 = 0;
      v91 = 0;
      v92 = 0;
      v90 = 0;
      v22 = 255;
    }

    v17 = v88;
    v15 = v84;
    v12 = v96;
    v16 = v99;
  }

  else
  {
    v93 = 0;
    v95 = 0;
    v91 = 0;
    v92 = 0;
    v90 = 0;
    v22 = 255;
  }

LABEL_41:
  v52 = *(v3 + 56);
  v53 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically;
  v89 = v22;
  if ((v52[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically] & 1) == 0)
  {
    v54 = v15;
    v97 = v12;
    v55 = v17;
    if (qword_10012F680 != -1)
    {
      swift_once();
    }

    v56 = sub_1000E96A4();
    sub_100007488(v56, qword_100131218);
    v57 = sub_1000E9684();
    v58 = sub_1000E9B94();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "▶️ reenabling automatic drawing", v59, 2u);
    }

    v17 = v55;
    v12 = v97;
    v16 = v99;
    v15 = v54;
    v22 = v89;
  }

  v52[v53] = 1;
  if (v22 != 255)
  {
    v148 = v139;
    v149[0] = *v140;
    *(v149 + 9) = *&v140[9];
    sub_100098A80(&v148);
    v17 = v22 & 1;
    v13 = v93;
    v12 = v95;
    v132 = v22 & 1;
    v15 = v91;
    v14 = v92;
    v16 = v90;
  }

  v116 = v133;
  v117 = v134;
  v118 = v135;
  *&v119 = v136;
  *(&v119 + 1) = v12;
  v98 = v12;
  v100 = v16;
  *&v120 = v13;
  *(&v120 + 1) = v14;
  v60 = v14;
  v61 = v15;
  *&v121 = v15;
  *(&v121 + 1) = v16;
  v62 = v17;
  v122[0] = v17;
  *&v122[49] = v144;
  *&v122[33] = v143;
  *&v122[17] = v142;
  *&v122[1] = v141;
  *&v122[112] = *&v147[15];
  *&v122[97] = *v147;
  *&v122[81] = v146;
  *&v122[65] = v145;
  v63 = *(v3 + 192);
  v123[0] = *(v3 + 176);
  v123[1] = v63;
  v64 = *(v3 + 208);
  v65 = *(v3 + 224);
  v66 = *(v3 + 256);
  v123[4] = *(v3 + 240);
  v123[5] = v66;
  v123[2] = v64;
  v123[3] = v65;
  v67 = *(v3 + 272);
  v68 = *(v3 + 288);
  v69 = *(v3 + 320);
  v123[8] = *(v3 + 304);
  v123[9] = v69;
  v123[6] = v67;
  v123[7] = v68;
  v70 = *(v3 + 336);
  v71 = *(v3 + 352);
  v72 = *(v3 + 368);
  v124 = *(v3 + 384);
  v123[11] = v71;
  v123[12] = v72;
  v123[10] = v70;
  v73 = *&v122[80];
  *(v3 + 336) = *&v122[64];
  *(v3 + 352) = v73;
  *(v3 + 368) = *&v122[96];
  *(v3 + 384) = *&v122[112];
  v74 = *&v122[16];
  *(v3 + 272) = *v122;
  *(v3 + 288) = v74;
  v75 = *&v122[48];
  *(v3 + 304) = *&v122[32];
  *(v3 + 320) = v75;
  v76 = v119;
  *(v3 + 208) = v118;
  *(v3 + 224) = v76;
  v77 = v121;
  *(v3 + 240) = v120;
  *(v3 + 256) = v77;
  v78 = v117;
  *(v3 + 176) = v116;
  *(v3 + 192) = v78;
  sub_100004CBC(&v116, v101);
  sub_100004D30(v123);
  v79 = [v86 traitCollection];
  v80 = v79;
  if (v79)
  {
    v81 = [v79 userInterfaceStyle];
  }

  else
  {
    v81 = 0;
  }

  *(v3 + 504) = v81;
  *(v3 + 512) = v80 == 0;
  [v52 setNeedsDisplay];
  sub_100090328();
  sub_100004E7C(v95, v93, v92, v91, v90, v89);
  v101[0] = v133;
  v101[1] = v134;
  v101[2] = v135;
  v102 = v136;
  v103 = v98;
  v104 = v13;
  v105 = v60;
  v106 = v61;
  v107 = v100;
  v108 = v62;
  v112 = v128;
  v111 = v127;
  v110 = v126;
  v109 = v125;
  *&v115[15] = *(v131 + 15);
  *v115 = v131[0];
  v114 = v130;
  v113 = v129;
  return sub_100004D30(v101);
}

void sub_10008EF68(uint64_t a1, uint64_t a2, double a3)
{
  if (!*(v3 + 16))
  {
    v5 = *(v3 + 488);
    if (v5 - a3 <= 0.9)
    {
      v11 = *(v3 + 168);
      v12 = a3;
      v13 = *(v3 + 392);
      v14 = *(v3 + 400);
      v15 = *(v3 + 408);
      v16 = *(v3 + 416);
      v17 = *(v3 + 424) | (*(v3 + 428) << 32);
      *(v3 + 392) = *(v3 + 160);
      *(v3 + 400) = v11;
      *(v3 + 408) = a1;
      *(v3 + 416) = a2;
      *(v3 + 424) = v12;
      *(v3 + 428) = 1;

      sub_100098A50(v13, v14, v15, v16, v17);
      [*(v3 + 56) setNeedsDisplay];
    }

    else
    {
      v6 = v3;
      if (qword_10012F680 != -1)
      {
        swift_once();
      }

      v7 = sub_1000E96A4();
      sub_100007488(v7, qword_100131218);
      v8 = sub_1000E9684();
      v9 = sub_1000E9BA4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134218240;
        *(v10 + 4) = v5;
        *(v10 + 12) = 2048;
        *(v10 + 14) = a3;
        _os_log_impl(&_mh_execute_header, v8, v9, "got a nonsense transition-progress change (%f → %f), ignoring", v10, 0x16u);
      }

      v3 = v6;
    }

    *(v3 + 488) = a3;
  }
}

id sub_10008F110(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000125FC(&qword_100131CE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v70 - v7;
  if (qword_10012F680 != -1)
  {
LABEL_38:
    swift_once();
  }

  v9 = sub_1000E96A4();
  sub_100007488(v9, qword_100131218);

  v10 = sub_1000E9684();
  v11 = sub_1000E9B94();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v86[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100093A3C(a1, a2, v86);
    _os_log_impl(&_mh_execute_header, v10, v11, "finalized transition to %s", v12, 0xCu);
    sub_100012710(v13);
  }

  *(v3 + 160) = a1;
  *(v3 + 168) = a2;

  v14 = *(v3 + 192);
  v15 = *(v3 + 200);
  v16 = *(v3 + 208);
  v17 = *(v3 + 216);
  v18 = *(v3 + 224);
  v19 = *(v3 + 228);
  *(v3 + 192) = a1;
  *(v3 + 200) = a2;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 221) = 0;

  sub_1000127B0(v14, v15, v16, v17, v18, v19);
  v20 = *(v3 + 392);
  v21 = *(v3 + 400);
  v22 = *(v3 + 408);
  v23 = *(v3 + 416);
  v24 = *(v3 + 424) | (*(v3 + 428) << 32);
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 424) = 0;
  *(v3 + 428) = -1;
  sub_100098A50(v20, v21, v22, v23, v24);
  if (*(v3 + 145) != 1)
  {
    goto LABEL_28;
  }

  v25 = *(v3 + 96);
  if (!v25[2])
  {
    goto LABEL_28;
  }

  v26 = v8;
  v27 = *(v3 + 112);
  v85 = *(v3 + 104);
  v28 = *(v3 + 120);
  v29 = *(v3 + 128);
  v30 = *(v3 + 136);
  v31 = a1;
  v32 = *(v3 + 144);
  v33 = v25;

  v84 = v31;
  v34 = sub_10009F208(v31, a2);
  if ((v35 & 1) == 0)
  {
    sub_1000985B8(v33, v85, v27, v28, v29, v30, v32, 1);
    a1 = v84;
    v8 = v26;
LABEL_28:
    v65 = *(v3 + 544);
    if (v65)
    {
LABEL_29:
      v66 = *(v65 + 16) == a1 && *(v65 + 24) == a2;
      if (!v66 && (sub_1000E9F74() & 1) == 0)
      {
        *(v65 + 16) = a1;
        *(v65 + 24) = a2;

        sub_1000E94D4();
        v67 = sub_1000E94E4();
        (*(*(v67 - 8) + 56))(v8, 0, 1, v67);
        v68 = OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D19SolarEventPreviewer_previewStartDate;
        swift_beginAccess();
        sub_100099040(v8, v65 + v68, &qword_100131CE0);
        swift_endAccess();
      }
    }

    goto LABEL_36;
  }

  v76 = v26;
  v77 = a2;
  v78 = v33;
  v36 = v33[7] + 56 * v34;
  v37 = *v36;
  v38 = *(v36 + 8);
  v39 = *(v36 + 16);
  v40 = *(v36 + 24);
  v42 = *(v36 + 32);
  v41 = *(v36 + 40);
  v43 = *(v3 + 56);
  v44 = v41;
  v74 = v37;
  v73 = v38;
  v45 = v39;
  v75 = v40;

  v70 = v42;
  v71 = v45;
  [v45 addSubview:v43];
  v46 = *(v3 + 152);
  if (v46 && v41)
  {
    [v44 addSublayer:*(v46 + 16)];
  }

  v72 = v44;
  v47 = 0;
  v48 = v78;
  a2 = (v78 + 8);
  v49 = 1 << *(v78 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v78[8];
  v8 = ((v49 + 63) >> 6);
  a1 = v84;
  while (v51)
  {
LABEL_19:
    v53 = __clz(__rbit64(v51)) | (v47 << 6);
    v54 = (v48[6] + 16 * v53);
    v55 = *v54;
    v56 = v54[1];
    v57 = v48[7] + 56 * v53;
    v59 = *v57;
    v58 = *(v57 + 8);
    v60 = *(v57 + 16);
    v85 = *(v57 + 24);
    v61 = *(v57 + 40);
    v62 = v55 == v84 && v56 == v77;
    v82 = *(v57 + 32);
    v80 = v60;
    if (v62)
    {
      v83 = 1;
    }

    else
    {
      v83 = sub_1000E9F74();
    }

    v81 = v61;
    v63 = v59;
    v64 = v58;
    v80 = v80;

    v79 = v82;
    v82 = v63;
    [v63 setHidden:v83 & 1];
    if (v58)
    {
      [v64 setHidden:v83 & 1];
    }

    v51 &= v51 - 1;

    a1 = v84;
    v48 = v78;
  }

  while (1)
  {
    v52 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v52 >= v8)
    {
      break;
    }

    v51 = *(a2 + 8 * v52);
    ++v47;
    if (v51)
    {
      v47 = v52;
      goto LABEL_19;
    }
  }

  v8 = v76;
  a2 = v77;
  v65 = *(v3 + 544);
  if (v65)
  {
    goto LABEL_29;
  }

LABEL_36:
  sub_100090238();
  return [*(v3 + 56) setNeedsDisplay];
}

void sub_10008F6FC(void *a1)
{
  if (!*(v1 + 80))
  {
    if (qword_10012F680 != -1)
    {
      swift_once();
    }

    v15 = sub_1000E96A4();
    sub_100007488(v15, qword_100131218);
    osloga = sub_1000E9684();
    v16 = sub_1000E9BA4();
    if (os_log_type_enabled(osloga, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, osloga, v16, "trying to update layer content with no renderer!", v17, 2u);
    }

    return;
  }

  v3 = *(v1 + 88);
  v4 = *(v1 + 48);
  swift_unknownObjectRetain();
  v88 = [v4 commandBuffer];
  if (!v88)
  {

    swift_unknownObjectRelease();
    return;
  }

  v87 = a1;
  v5 = v1 + 424;
  v7 = *(v1 + 392);
  v6 = *(v1 + 400);
  v8 = *(v1 + 408);
  v9 = *(v1 + 416);
  v10 = *(v1 + 424) | (*(v1 + 428) << 32);
  v83 = v3;
  if (*(v1 + 428) != 255)
  {
    v80 = *(v1 + 392);
    v82 = v1 + 424;
    v84 = *(v1 + 424) | (*(v1 + 428) << 32);
    v85 = HIDWORD(v10) & 1;
    v91 = *(v1 + 408);
    oslog = *(v1 + 400);
    v89 = *(v1 + 416);
    v79 = *(v1 + 424);
LABEL_19:
    v18 = *(v1 + 352);
    *&v109[112] = *(v1 + 336);
    *&v109[128] = v18;
    *&v109[144] = *(v1 + 368);
    *&v109[160] = *(v1 + 384);
    v19 = *(v1 + 288);
    *&v109[48] = *(v1 + 272);
    *&v109[64] = v19;
    v20 = *(v1 + 320);
    *&v109[80] = *(v1 + 304);
    *&v109[96] = v20;
    v21 = *(v1 + 224);
    v108 = *(v1 + 208);
    *v109 = v21;
    v22 = *(v1 + 256);
    *&v109[16] = *(v1 + 240);
    *&v109[32] = v22;
    v23 = *(v1 + 192);
    v107[0] = *(v1 + 176);
    v107[1] = v23;
    v24 = *(&v23 + 1);
    v25 = v23;
    v77 = *(&v108 + 1);
    v26 = v108;
    v73 = v109[4];
    v75 = *v109;
    v27 = v6;
    v28 = v8;
    v29 = v9;
    sub_100098A68(v7, v6, v8, v9, v10);
    sub_100098A68(v7, v27, v28, v29, v10);
    sub_100004CBC(v107, v116);
    sub_1000127B0(v25, v24, v26, v77, v75, v73);
    *&v110[197] = *&v109[149];
    *&v110[212] = *&v109[164];
    *v116 = v107[0];
    LOBYTE(v111) = v85;
    *v110 = v107[0];
    v30 = v80;
    *&v110[16] = v80;
    v32 = v91;
    v31 = oslog;
    *&v110[24] = oslog;
    *&v110[32] = v91;
    v33 = v89;
    *&v110[40] = v89;
    *&v110[48] = v79;
    v110[52] = v85;
    *&v110[165] = *&v109[117];
    *&v110[181] = *&v109[133];
    *&v110[101] = *&v109[53];
    *&v110[117] = *&v109[69];
    *&v110[133] = *&v109[85];
    *&v110[149] = *&v109[101];
    *&v110[53] = *&v109[5];
    *&v110[69] = *&v109[21];
    *&v110[85] = *&v109[37];
    *&v116[16] = v80;
    *&v116[24] = oslog;
    *&v116[32] = v91;
    *&v116[40] = v89;
    *&v116[48] = v79;
    v116[52] = v85;
    *&v116[165] = *&v109[117];
    *&v116[181] = *&v109[133];
    *&v116[197] = *&v109[149];
    *&v116[212] = *&v109[164];
    *&v116[101] = *&v109[53];
    *&v116[117] = *&v109[69];
    *&v116[133] = *&v109[85];
    *&v116[149] = *&v109[101];
    *&v116[53] = *&v109[5];
    *&v116[69] = *&v109[21];
    *&v116[85] = *&v109[37];
    sub_100004CBC(v110, &v95);
    sub_100004D30(v116);
    v111 = *v110;
    v112 = *&v110[8];
    v86 = v110[13];
    v105 = *&v110[175];
    v106[0] = *&v110[191];
    *(v106 + 9) = *&v110[200];
    v101 = *&v110[111];
    v102 = *&v110[127];
    v103 = *&v110[143];
    v104 = *&v110[159];
    v97 = *&v110[47];
    v98 = *&v110[63];
    v99 = *&v110[79];
    v100 = *&v110[95];
    v95 = *&v110[15];
    v96 = *&v110[31];
    v5 = v82;
    goto LABEL_20;
  }

  if (*(v1 + 544))
  {
    v82 = v1 + 424;
    v11 = *(v1 + 400);
    v12 = *(v1 + 408);
    v13 = *(v1 + 416);
    sub_100093214(v113);
    v91 = v113[2];
    oslog = v113[1];
    v89 = v113[3];
    LOBYTE(v85) = v115;
    v14 = &_mh_execute_header;
    if (!v115)
    {
      v14 = 0;
    }

    v79 = v114;
    v80 = v113[0];
    v84 = v14 | v114;
    sub_10001997C(v113, v116);
    v9 = v13;
    v8 = v12;
    v6 = v11;
    goto LABEL_19;
  }

  v55 = *(v1 + 352);
  v56 = *(v1 + 368);
  v57 = *(v1 + 336);
  *&v116[144] = *(v1 + 320);
  *&v116[160] = v57;
  *&v116[176] = v55;
  *&v116[192] = v56;
  *&v116[208] = *(v1 + 384);
  v58 = *(v1 + 288);
  v59 = *(v1 + 304);
  v60 = *(v1 + 256);
  *&v116[96] = *(v1 + 272);
  *&v116[112] = v58;
  *&v116[128] = v59;
  v61 = *(v1 + 224);
  *&v116[32] = *(v1 + 208);
  *&v116[48] = v61;
  *&v116[64] = *(v1 + 240);
  *&v116[80] = v60;
  v62 = *(v1 + 192);
  *v116 = *(v1 + 176);
  *&v116[16] = v62;
  v111 = *(v1 + 176);
  v112 = *(v1 + 184);
  v86 = v116[13];
  v63 = *(v1 + 335);
  v64 = *(v1 + 367);
  v105 = *(v1 + 351);
  v106[0] = v64;
  *(v106 + 9) = *(v1 + 376);
  v65 = *(v1 + 271);
  v66 = *(v1 + 303);
  v67 = *(v1 + 319);
  v101 = *(v1 + 287);
  v102 = v66;
  v103 = v67;
  v104 = v63;
  v68 = *(v1 + 207);
  v69 = *(v1 + 239);
  v97 = *(v1 + 223);
  v98 = v69;
  v99 = *(v1 + 255);
  v100 = v65;
  v95 = *(v1 + 191);
  v96 = v68;
  sub_100004CBC(v116, v110);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v84 = 0xFF00000000;
LABEL_20:
  v34 = sub_100004BBC(*(v1 + 504), *(v5 + 88), *(v1 + 496));
  v35 = *(v1 + 152);
  v92 = v32;
  v90 = v33;
  if (!v35)
  {
    v41 = v1;
    if ((*(*(v1 + 72) + 24))() == 1)
    {
      v42 = *(v1 + 128);
      if (*(v1 + 145) != 1)
      {
        v70 = v42;
LABEL_38:
        if (v42)
        {
          v71 = v42;
          v54 = 1;
        }

        else
        {
          v54 = 255;
        }

        goto LABEL_43;
      }

      v43 = v1;
      v44 = *(v1 + 96);
      if (v44[2])
      {
        v45 = *(v41 + 104);
        v46 = *(v43 + 112);
        v47 = *(v43 + 136);
        v74 = *(v43 + 144);
        v48 = *(v43 + 168);
        v76 = *(v43 + 120);
        v78 = *(v43 + 160);

        v81 = v45;
        sub_100098538(v44, v45, v46, v76, v42, v47, v74, 1);
        v49 = sub_10009F208(v78, v48);
        if (v50)
        {
          v51 = *(v44[7] + 56 * v49 + 32);
          v52 = v51;

          sub_1000985B8(v44, v81, v46, v76, v42, v47, v74, 1);
          v42 = v51;
          goto LABEL_38;
        }

        sub_1000985B8(v44, v45, v46, v76, v42, v47, v74, 1);
      }
    }

LABEL_42:
    v42 = 0;
    v54 = 255;
    goto LABEL_43;
  }

  if (*(v35 + 32))
  {
    if (*(v35 + 32) == 1)
    {
      v36 = qword_10012F680;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = sub_1000E96A4();
      sub_100007488(v37, qword_100131218);
      v38 = sub_1000E9684();
      v39 = sub_1000E9BA4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Style is mainRenderTarget but we think we should also be masking", v40, 2u);
      }

      goto LABEL_42;
    }

    v42 = 0;
    v54 = 255;
LABEL_43:
    ObjectType = swift_getObjectType();
    *&v116[159] = v104;
    *&v116[175] = v105;
    *&v116[191] = v106[0];
    *&v116[200] = *(v106 + 9);
    *&v116[95] = v100;
    *&v116[111] = v101;
    *&v116[127] = v102;
    *&v116[143] = v103;
    *&v116[31] = v96;
    *&v116[47] = v97;
    *&v116[63] = v98;
    *&v116[79] = v99;
    *v116 = v111;
    *&v116[8] = v112;
    v116[12] = v34 & 1;
    v116[13] = v86;
    v116[14] = 1;
    *&v116[15] = v95;
    (*(v83 + 216))(v116, [v87 texture], v42, v54, v88, ObjectType);
    sub_100098A50(v30, v31, v92, v90, v84);
    sub_100009DBC(v42, v54);
    swift_unknownObjectRelease();
    [v88 commit];
    [v88 waitUntilScheduled];
    [v87 present];
    sub_100009DBC(v42, v54);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *&v110[159] = v104;
    *&v110[175] = v105;
    *&v110[191] = v106[0];
    *&v110[200] = *(v106 + 9);
    *&v110[95] = v100;
    *&v110[111] = v101;
    *&v110[127] = v102;
    *&v110[143] = v103;
    *&v110[31] = v96;
    *&v110[47] = v97;
    *&v110[63] = v98;
    *&v110[79] = v99;
    *v110 = v111;
    *&v110[8] = v112;
    v110[12] = v34 & 1;
    v110[13] = v86;
    v110[14] = 1;
    *&v110[15] = v95;
    sub_100004D30(v110);
    return;
  }

  v42 = *(v35 + 24);
  if (v42)
  {
    v53 = v42;
    v54 = 1;
    goto LABEL_43;
  }

  __break(1u);
}