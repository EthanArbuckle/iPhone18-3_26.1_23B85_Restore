unint64_t jpc::PearlUtils::getBinForCoor(jpc::PearlUtils *this, double a2, unint64_t a3)
{
  if (a3 < a2)
  {
    a2 = a3;
  }

  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  return (ceil(a2 * this / a3) + -1.0);
}

double jpc::PearlUtils::upscaleCoordinatesRG(float64x2_t *a1, float a2)
{
  __asm { FMOV            V2.2D, #0.5 }

  v7 = vaddq_f64(*a1, _Q2);
  __asm
  {
    FMOV            V2.2D, #2.0
    FMOV            V3.2D, #7.0
  }

  *&result = *&vdivq_f64(vmlaq_f64(_Q3, _Q2, v7), vdupq_lane_s64(COERCE__INT64(a2), 0));
  return result;
}

double jpc::PearlUtils::downscaleCoordinatesRG(float64x2_t *a1, float a2)
{
  __asm { FMOV            V2.2D, #-7.0 }

  v7 = vmlaq_n_f64(_Q2, *a1, a2);
  __asm
  {
    FMOV            V0.2D, #0.5
    FMOV            V1.2D, #-0.5
  }

  *&result = *&vaddq_f64(vmulq_f64(v7, _Q0), _Q1);
  return result;
}

double jpc::PearlUtils::upscaleCoordinatesRGS(float64x2_t *a1, float a2)
{
  __asm { FMOV            V2.2D, #0.5 }

  v7 = vaddq_f64(*a1, _Q2);
  *&result = *&vdivq_f64(vaddq_f64(v7, v7), vdupq_lane_s64(COERCE__INT64(a2), 0));
  return result;
}

double jpc::PearlUtils::downscaleCoordinatesRGS(float64x2_t *a1, float a2)
{
  __asm { FMOV            V1.2D, #0.5 }

  v7 = vmulq_f64(vmulq_n_f64(*a1, a2), _Q1);
  __asm { FMOV            V1.2D, #-0.5 }

  *&result = *&vaddq_f64(v7, _Q1);
  return result;
}

float jpc::PearlUtils::pceRgDyToDy(jpc::PearlUtils *this, unsigned int a2, float a3, float a4)
{
  if (a2 < 0x3FFF)
  {
    return (vcvts_n_f32_s32((this << 19) >> 19, 5uLL) + a3) - a4;
  }

  else
  {
    return nanf(0);
  }
}

id jpc::doubleBufferToFloatNSDataWithBuffer(jpc *this, unint64_t a2)
{
  if ((a2 & 7) != 0)
  {
    __assert_rtn("doubleBufferToFloatNSDataWithBuffer", "JPC_PearlUtils.mm", 140, "srcLengthBytes % sizeof(double) == 0");
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a2 >> 1];
  v5 = [v4 mutableBytes];
  if (a2)
  {
    v6 = a2 >> 3;
    if (a2 <= 0x3F)
    {
      v7 = 0;
LABEL_8:
      v15 = v6 - v7;
      v16 = (v5 + 4 * v7);
      v17 = (this + 8 * v7);
      do
      {
        v18 = *v17++;
        v19 = v18;
        *v16++ = v19;
        --v15;
      }

      while (v15);
      goto LABEL_10;
    }

    v7 = v6 & 0x1FFFFFFFFFFFFFF8;
    v8 = (v5 + 16);
    v9 = (this + 32);
    v10 = v6 & 0x1FFFFFFFFFFFFFF8;
    do
    {
      v12 = v9[-2];
      v11 = v9[-1];
      v14 = *v9;
      v13 = v9[1];
      v9 += 4;
      v8[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v12), v11);
      *v8 = vcvt_hight_f32_f64(vcvt_f32_f64(v14), v13);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    if (v6 != v7)
    {
      goto LABEL_8;
    }
  }

LABEL_10:

  return v4;
}

id jpc::PearlUtils::getIrCameraCalibration(jpc::PearlUtils *this, PCECalibCameraIntrinsics *a2)
{
  LOWORD(v3) = *(this + 2128);
  LOWORD(v2) = *(this + 2129);
  v5 = *this;
  v6 = *(this + 1) / *this;
  v7 = *(this + 2);
  v8 = v7 / *this;
  *&v6 = v6;
  *&v7 = v8;
  v9 = *(this + 3) / *this;
  *&v5 = v9;
  [MEMORY[0x277CED040] createIntrinsicsMatrixWithEFL:v6 principalPointX:v7 principalPointY:v5];
  v87 = v11;
  v88 = v10;
  v86 = v12;
  v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:1024];
  v14 = [v13 mutableBytes];
  v15 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 132)), *(this + 133));
  *v14 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 130)), *(this + 131));
  *(v14 + 16) = v15;
  v16 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 136)), *(this + 137));
  *(v14 + 32) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 134)), *(this + 135));
  *(v14 + 48) = v16;
  v17 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 140)), *(this + 141));
  *(v14 + 64) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 138)), *(this + 139));
  *(v14 + 80) = v17;
  v18 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 144)), *(this + 145));
  *(v14 + 96) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 142)), *(this + 143));
  *(v14 + 112) = v18;
  v19 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 148)), *(this + 149));
  *(v14 + 128) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 146)), *(this + 147));
  *(v14 + 144) = v19;
  v20 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 152)), *(this + 153));
  *(v14 + 160) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 150)), *(this + 151));
  *(v14 + 176) = v20;
  v21 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 156)), *(this + 157));
  *(v14 + 192) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 154)), *(this + 155));
  *(v14 + 208) = v21;
  v22 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 160)), *(this + 161));
  *(v14 + 224) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 158)), *(this + 159));
  *(v14 + 240) = v22;
  v23 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 164)), *(this + 165));
  *(v14 + 256) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 162)), *(this + 163));
  *(v14 + 272) = v23;
  v24 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 168)), *(this + 169));
  *(v14 + 288) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 166)), *(this + 167));
  *(v14 + 304) = v24;
  v25 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 172)), *(this + 173));
  *(v14 + 320) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 170)), *(this + 171));
  *(v14 + 336) = v25;
  v26 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 176)), *(this + 177));
  *(v14 + 352) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 174)), *(this + 175));
  *(v14 + 368) = v26;
  v27 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 180)), *(this + 181));
  *(v14 + 384) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 178)), *(this + 179));
  *(v14 + 400) = v27;
  v28 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 184)), *(this + 185));
  *(v14 + 416) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 182)), *(this + 183));
  *(v14 + 432) = v28;
  v29 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 188)), *(this + 189));
  *(v14 + 448) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 186)), *(this + 187));
  *(v14 + 464) = v29;
  v30 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 192)), *(this + 193));
  *(v14 + 480) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 190)), *(this + 191));
  *(v14 + 496) = v30;
  v31 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 196)), *(this + 197));
  *(v14 + 512) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 194)), *(this + 195));
  *(v14 + 528) = v31;
  v32 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 200)), *(this + 201));
  *(v14 + 544) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 198)), *(this + 199));
  *(v14 + 560) = v32;
  v33 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 204)), *(this + 205));
  *(v14 + 576) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 202)), *(this + 203));
  *(v14 + 592) = v33;
  v34 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 208)), *(this + 209));
  *(v14 + 608) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 206)), *(this + 207));
  *(v14 + 624) = v34;
  v35 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 212)), *(this + 213));
  *(v14 + 640) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 210)), *(this + 211));
  *(v14 + 656) = v35;
  v36 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 216)), *(this + 217));
  *(v14 + 672) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 214)), *(this + 215));
  *(v14 + 688) = v36;
  v37 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 220)), *(this + 221));
  *(v14 + 704) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 218)), *(this + 219));
  *(v14 + 720) = v37;
  v38 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 224)), *(this + 225));
  *(v14 + 736) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 222)), *(this + 223));
  *(v14 + 752) = v38;
  v39 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 228)), *(this + 229));
  *(v14 + 768) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 226)), *(this + 227));
  *(v14 + 784) = v39;
  v40 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 232)), *(this + 233));
  *(v14 + 800) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 230)), *(this + 231));
  *(v14 + 816) = v40;
  v41 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 236)), *(this + 237));
  *(v14 + 832) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 234)), *(this + 235));
  *(v14 + 848) = v41;
  v42 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 240)), *(this + 241));
  *(v14 + 864) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 238)), *(this + 239));
  *(v14 + 880) = v42;
  v43 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 244)), *(this + 245));
  *(v14 + 896) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 242)), *(this + 243));
  *(v14 + 912) = v43;
  v44 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 248)), *(this + 249));
  *(v14 + 928) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 246)), *(this + 247));
  *(v14 + 944) = v44;
  v45 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 252)), *(this + 253));
  *(v14 + 960) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 250)), *(this + 251));
  *(v14 + 976) = v45;
  v46 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 256)), *(this + 257));
  *(v14 + 992) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 254)), *(this + 255));
  *(v14 + 1008) = v46;
  v47 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:1024];
  v48 = [v47 mutableBytes];
  v49 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 4)), *(this + 5));
  *v48 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 2)), *(this + 3));
  *(v48 + 16) = v49;
  v50 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 8)), *(this + 9));
  *(v48 + 32) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 6)), *(this + 7));
  *(v48 + 48) = v50;
  v51 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 12)), *(this + 13));
  *(v48 + 64) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 10)), *(this + 11));
  *(v48 + 80) = v51;
  v52 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 16)), *(this + 17));
  *(v48 + 96) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 14)), *(this + 15));
  *(v48 + 112) = v52;
  v53 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 20)), *(this + 21));
  *(v48 + 128) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 18)), *(this + 19));
  *(v48 + 144) = v53;
  v54 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 24)), *(this + 25));
  *(v48 + 160) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 22)), *(this + 23));
  *(v48 + 176) = v54;
  v55 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 28)), *(this + 29));
  *(v48 + 192) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 26)), *(this + 27));
  *(v48 + 208) = v55;
  v56 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 32)), *(this + 33));
  *(v48 + 224) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 30)), *(this + 31));
  *(v48 + 240) = v56;
  v57 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 36)), *(this + 37));
  *(v48 + 256) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 34)), *(this + 35));
  *(v48 + 272) = v57;
  v58 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 40)), *(this + 41));
  *(v48 + 288) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 38)), *(this + 39));
  *(v48 + 304) = v58;
  v59 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 44)), *(this + 45));
  *(v48 + 320) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 42)), *(this + 43));
  *(v48 + 336) = v59;
  v60 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 48)), *(this + 49));
  *(v48 + 352) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 46)), *(this + 47));
  *(v48 + 368) = v60;
  v61 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 52)), *(this + 53));
  *(v48 + 384) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 50)), *(this + 51));
  *(v48 + 400) = v61;
  v62 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 56)), *(this + 57));
  *(v48 + 416) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 54)), *(this + 55));
  *(v48 + 432) = v62;
  v63 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 60)), *(this + 61));
  *(v48 + 448) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 58)), *(this + 59));
  *(v48 + 464) = v63;
  v64 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 64)), *(this + 65));
  *(v48 + 480) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 62)), *(this + 63));
  *(v48 + 496) = v64;
  v65 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 68)), *(this + 69));
  *(v48 + 512) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 66)), *(this + 67));
  *(v48 + 528) = v65;
  v66 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 72)), *(this + 73));
  *(v48 + 544) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 70)), *(this + 71));
  *(v48 + 560) = v66;
  v67 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 76)), *(this + 77));
  *(v48 + 576) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 74)), *(this + 75));
  *(v48 + 592) = v67;
  v68 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 80)), *(this + 81));
  *(v48 + 608) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 78)), *(this + 79));
  *(v48 + 624) = v68;
  v69 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 84)), *(this + 85));
  *(v48 + 640) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 82)), *(this + 83));
  *(v48 + 656) = v69;
  v70 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 88)), *(this + 89));
  *(v48 + 672) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 86)), *(this + 87));
  *(v48 + 688) = v70;
  v71 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 92)), *(this + 93));
  *(v48 + 704) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 90)), *(this + 91));
  *(v48 + 720) = v71;
  v72 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 96)), *(this + 97));
  *(v48 + 736) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 94)), *(this + 95));
  *(v48 + 752) = v72;
  v73 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 100)), *(this + 101));
  *(v48 + 768) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 98)), *(this + 99));
  *(v48 + 784) = v73;
  v74 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 104)), *(this + 105));
  *(v48 + 800) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 102)), *(this + 103));
  *(v48 + 816) = v74;
  v75 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 108)), *(this + 109));
  *(v48 + 832) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 106)), *(this + 107));
  *(v48 + 848) = v75;
  v76 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 112)), *(this + 113));
  *(v48 + 864) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 110)), *(this + 111));
  *(v48 + 880) = v76;
  v77 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 116)), *(this + 117));
  *(v48 + 896) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 114)), *(this + 115));
  *(v48 + 912) = v77;
  v78 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 120)), *(this + 121));
  *(v48 + 928) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 118)), *(this + 119));
  *(v48 + 944) = v78;
  v79 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 124)), *(this + 125));
  *(v48 + 960) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 122)), *(this + 123));
  *(v48 + 976) = v79;
  v80 = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 128)), *(this + 129));
  *(v48 + 992) = vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 126)), *(this + 127));
  *(v48 + 1008) = v80;
  v81 = [objc_alloc(MEMORY[0x277CED0C8]) initWithDistortionCenter:v13 distortedRadii:v47 undistortedRadii:{v8, v9}];
  v82 = objc_alloc(MEMORY[0x277CED040]);
  *&v83 = *this;
  v84 = [v82 initWithIntrinsics:v81 cameraToPlatformTransform:v88 pixelSize:v87 referenceDimensions:v86 distortionModel:{0.0, 0.0, 0.0, 0.0, v83, v3, v2}];

  return v84;
}

char *std::vector<jpc::IIFABlock::IFAPearlJasperCorrespondence>::__assign_with_size[abi:ne200100]<jpc::IIFABlock::IFAPearlJasperCorrespondence*,jpc::IIFABlock::IFAPearlJasperCorrespondence*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x492492492492492)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x249249249249249)
      {
        v11 = 0x492492492492492;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x492492492492492)
      {
        operator new();
      }
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - result) >> 3) >= a4)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

char *std::vector<jpc::IIFABlock::IFAPearlCorrespondence>::__assign_with_size[abi:ne200100]<jpc::IIFABlock::IFAPearlCorrespondence*,jpc::IIFABlock::IFAPearlCorrespondence*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 4) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x555555555555555)
      {
        operator new();
      }
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 4) >= a4)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

void sub_2403D8F5C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_2403DA9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, ...)
{
  va_start(va, a14);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403DB390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403DBAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADPearlColorInFieldCalibrationExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2403DBBC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403DC058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void GMC_ConstrainWorldPoints(uint64_t a1)
{
  if (*(a1 + 20))
  {
    operator new[]();
  }

  operator new[]();
}

void sub_2403DCAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a49)
  {
    if (a51 == 1)
    {
      MEMORY[0x245CBFC90]();
    }
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef PixelBufferUtils::copyAttachment(CVBufferRef buffer, const __CFString *a2, CVAttachmentMode *a3, CVAttachmentMode *a4)
{
  result = 0;
  if (buffer && a2)
  {
    result = CVBufferGetAttachment(buffer, a2, a3);
    if (result)
    {
      v6 = result;
      CFRetain(result);
      return v6;
    }
  }

  return result;
}

__CVBuffer *PixelBufferUtils::copyAttachments(__CVBuffer *this, __CVBuffer *a2, CVAttachmentMode a3)
{
  if (this)
  {
    this = CVBufferGetAttachments(this, a2);
    if (this)
    {
      v3 = this;
      CFRetain(this);
      return v3;
    }
  }

  return this;
}

unint64_t PixelBufferUtils::pixelFormatAsString@<X0>(unint64_t this@<X0>, char *a2@<X8>)
{
  if (this == 32)
  {
    a2[23] = 4;
    v3 = 1111970369;
    goto LABEL_5;
  }

  if (this == 24)
  {
    a2[23] = 4;
    v3 = 1196569650;
LABEL_5:
    *a2 = v3;
    a2[4] = 0;
    return this;
  }

  __s[0] = BYTE3(this);
  __s[1] = BYTE2(this);
  __s[2] = BYTE1(this);
  v20 = this;
  __s[3] = this;
  __s[4] = 0;
  this = strlen(__s);
  if (this > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = this;
  if (this >= 0x17)
  {
    operator new();
  }

  a2[23] = this;
  if (this)
  {
    this = memcpy(a2, __s, this);
  }

  a2[v4] = 0;
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (*v5 <= 31)
  {
    v34[6] = 0;
    v6 = MEMORY[0x277D82890] + 104;
    v34[0] = MEMORY[0x277D82890] + 104;
    v7 = MEMORY[0x277D82890] + 64;
    v25 = MEMORY[0x277D82890] + 64;
    v8 = MEMORY[0x277D82818];
    v9 = *(MEMORY[0x277D82818] + 24);
    *__s = *(MEMORY[0x277D82818] + 16);
    *&__s[*(*__s - 24)] = v9;
    v24 = 0;
    v10 = &__s[*(*__s - 24)];
    std::ios_base::init(v10, &v26);
    v11 = MEMORY[0x277D82890] + 24;
    v10[1].__vftable = 0;
    v10[1].__fmtflags_ = -1;
    v12 = v8[5];
    v25 = v8[4];
    *(&v25 + *(v25 - 24)) = v12;
    *__s = v8[1];
    *&__s[*(*__s - 24)] = v8[6];
    v34[0] = v6;
    *__s = v11;
    v13 = MEMORY[0x277D82868] + 16;
    v25 = v7;
    v26 = MEMORY[0x277D82868] + 16;
    MEMORY[0x245CBFBF0](&v27);
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v14 = MEMORY[0x277D82878] + 16;
    v26 = MEMORY[0x277D82878] + 16;
    *__p = 0u;
    v32 = 0u;
    v33 = 24;
    std::stringbuf::__init_buf_ptrs[abi:ne200100](&v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "0x", 2);
    *(&v25 + *(v25 - 24) + 8) = *(&v25 + *(v25 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x245CBFB60](&v25, v20);
    if ((v33 & 0x10) != 0)
    {
      v16 = *(&v32 + 1);
      if (*(&v32 + 1) < v30)
      {
        *(&v32 + 1) = v30;
        v16 = v30;
      }

      v17 = &v29 + 1;
    }

    else
    {
      if ((v33 & 8) == 0)
      {
        v15 = 0;
        HIBYTE(v22) = 0;
LABEL_30:
        *(&__dst + v15) = 0;
        if (a2[23] < 0)
        {
          operator delete(*a2);
        }

        *a2 = __dst;
        *(a2 + 2) = v22;
        *__s = *v8;
        v19 = v8[9];
        *&__s[*(*__s - 24)] = v8[8];
        v25 = v19;
        v26 = v14;
        if (SBYTE7(v32) < 0)
        {
          operator delete(__p[0]);
        }

        v26 = v13;
        std::locale::~locale(&v27);
        std::iostream::~basic_iostream();
        return MEMORY[0x245CBFC40](v34);
      }

      v17 = &v28;
      v16 = v29;
    }

    v18 = *v17;
    v15 = v16 - *v17;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v22) = v16 - *v17;
    if (v15)
    {
      memmove(&__dst, v18, v15);
    }

    goto LABEL_30;
  }

  return this;
}

void sub_2403DD2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v34 + 4);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBFC40](a13);
  if (a12 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t PixelBufferUtils::pixelFormatFromString(PixelBufferUtils *this, const char *a2)
{
  if (!strcmp(this, "24RG"))
  {
    return 24;
  }

  if (!strcmp(this, "ARGB"))
  {
    return 32;
  }

  return bswap32(*this);
}

unint64_t PixelBufferUtils::pixelFormatAsFileExtension@<X0>(PixelBufferUtils *this@<X0>, uint64_t a2@<X8>)
{
  result = PixelBufferUtils::pixelFormatAsString(this, a2);
  v4 = *(a2 + 23);
  v5 = v4;
  v6 = *a2;
  v7 = *(a2 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v4 & 0x80u) == 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  if (!v9)
  {
    goto LABEL_69;
  }

  v10 = v8;
  if (v9 < 8)
  {
LABEL_139:
    v32 = &v8[v9];
    do
    {
      if (*v10 == 47)
      {
        *v10 = 58;
      }

      ++v10;
    }

    while (v10 != v32);
    goto LABEL_68;
  }

  if (v9 < 0x10)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFF0;
  v16 = v8 + 7;
  v17.i64[0] = 0x2F2F2F2F2F2F2F2FLL;
  v17.i64[1] = 0x2F2F2F2F2F2F2F2FLL;
  v18 = v9 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v19 = vceqq_s8(*(v16 - 7), v17);
    if (v19.i8[0])
    {
      *(v16 - 7) = 58;
      if ((v19.i8[1] & 1) == 0)
      {
LABEL_36:
        if ((v19.i8[2] & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_53;
      }
    }

    else if ((v19.i8[1] & 1) == 0)
    {
      goto LABEL_36;
    }

    *(v16 - 6) = 58;
    if ((v19.i8[2] & 1) == 0)
    {
LABEL_37:
      if ((v19.i8[3] & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(v16 - 5) = 58;
    if ((v19.i8[3] & 1) == 0)
    {
LABEL_38:
      if ((v19.i8[4] & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(v16 - 4) = 58;
    if ((v19.i8[4] & 1) == 0)
    {
LABEL_39:
      if ((v19.i8[5] & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(v16 - 3) = 58;
    if ((v19.i8[5] & 1) == 0)
    {
LABEL_40:
      if ((v19.i8[6] & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(v16 - 2) = 58;
    if ((v19.i8[6] & 1) == 0)
    {
LABEL_41:
      if ((v19.i8[7] & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(v16 - 1) = 58;
    if ((v19.i8[7] & 1) == 0)
    {
LABEL_42:
      if ((v19.i8[8] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

LABEL_58:
    *v16 = 58;
    if ((v19.i8[8] & 1) == 0)
    {
LABEL_43:
      if ((v19.i8[9] & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

LABEL_59:
    v16[1] = 58;
    if ((v19.i8[9] & 1) == 0)
    {
LABEL_44:
      if ((v19.i8[10] & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }

LABEL_60:
    v16[2] = 58;
    if ((v19.i8[10] & 1) == 0)
    {
LABEL_45:
      if ((v19.i8[11] & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }

LABEL_61:
    v16[3] = 58;
    if ((v19.i8[11] & 1) == 0)
    {
LABEL_46:
      if ((v19.i8[12] & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_63;
    }

LABEL_62:
    v16[4] = 58;
    if ((v19.i8[12] & 1) == 0)
    {
LABEL_47:
      if ((v19.i8[13] & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }

LABEL_63:
    v16[5] = 58;
    if ((v19.i8[13] & 1) == 0)
    {
LABEL_48:
      if (v19.i8[14])
      {
        goto LABEL_65;
      }

      goto LABEL_49;
    }

LABEL_64:
    v16[6] = 58;
    if (v19.i8[14])
    {
LABEL_65:
      v16[7] = 58;
      if ((v19.i8[15] & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_66;
    }

LABEL_49:
    if ((v19.i8[15] & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_66:
    v16[8] = 58;
LABEL_33:
    v16 += 16;
    v18 -= 16;
  }

  while (v18);
  if (v9 == v11)
  {
    goto LABEL_68;
  }

  if ((v9 & 8) == 0)
  {
    v10 = &v8[v11];
    goto LABEL_139;
  }

LABEL_11:
  v12 = v9 & 0xFFFFFFFFFFFFFFF8;
  v13 = v11 - (v9 & 0xFFFFFFFFFFFFFFF8);
  v14 = &v8[v11 + 3];
  while (2)
  {
    v15 = vceq_s8(*(v14 - 3), 0x2F2F2F2F2F2F2F2FLL);
    if (v15.i8[0])
    {
      *(v14 - 3) = 58;
      if (v15.i8[1])
      {
        goto LABEL_23;
      }

LABEL_15:
      if ((v15.i8[2] & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_24:
      *(v14 - 1) = 58;
      if (v15.i8[3])
      {
        goto LABEL_25;
      }

LABEL_17:
      if ((v15.i8[4] & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:
      v14[1] = 58;
      if (v15.i8[5])
      {
        goto LABEL_27;
      }

LABEL_19:
      if ((v15.i8[6] & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_28:
      v14[3] = 58;
      if (v15.i8[7])
      {
LABEL_29:
        v14[4] = 58;
      }
    }

    else
    {
      if ((v15.i8[1] & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      *(v14 - 2) = 58;
      if (v15.i8[2])
      {
        goto LABEL_24;
      }

LABEL_16:
      if ((v15.i8[3] & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_25:
      *v14 = 58;
      if (v15.i8[4])
      {
        goto LABEL_26;
      }

LABEL_18:
      if ((v15.i8[5] & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_27:
      v14[2] = 58;
      if (v15.i8[6])
      {
        goto LABEL_28;
      }

LABEL_20:
      if (v15.i8[7])
      {
        goto LABEL_29;
      }
    }

    v14 += 8;
    v13 += 8;
    if (v13)
    {
      continue;
    }

    break;
  }

  if (v9 != v12)
  {
    v10 = &v8[v12];
    goto LABEL_139;
  }

LABEL_68:
  v4 = *(a2 + 23);
  v6 = *a2;
  v7 = *(a2 + 8);
  v5 = *(a2 + 23);
LABEL_69:
  if (v5 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = v6;
  }

  if (v5 >= 0)
  {
    v21 = v4;
  }

  else
  {
    v21 = v7;
  }

  if (!v21)
  {
    return result;
  }

  v22 = v20;
  if (v21 < 8)
  {
LABEL_145:
    v33 = &v20[v21];
    do
    {
      if (*v22 == 46)
      {
        *v22 = 95;
      }

      ++v22;
    }

    while (v22 != v33);
    return result;
  }

  if (v21 < 0x10)
  {
    v23 = 0;
    goto LABEL_79;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFF0;
  v28 = v20 + 7;
  v29.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
  v29.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
  v30 = v21 & 0xFFFFFFFFFFFFFFF0;
  while (2)
  {
    v31 = vceqq_s8(*(v28 - 7), v29);
    if (v31.i8[0])
    {
      *(v28 - 7) = 95;
      if (v31.i8[1])
      {
        goto LABEL_120;
      }

LABEL_104:
      if ((v31.i8[2] & 1) == 0)
      {
        goto LABEL_105;
      }

LABEL_121:
      *(v28 - 5) = 95;
      if (v31.i8[3])
      {
        goto LABEL_122;
      }

LABEL_106:
      if ((v31.i8[4] & 1) == 0)
      {
        goto LABEL_107;
      }

LABEL_123:
      *(v28 - 3) = 95;
      if (v31.i8[5])
      {
        goto LABEL_124;
      }

LABEL_108:
      if ((v31.i8[6] & 1) == 0)
      {
        goto LABEL_109;
      }

LABEL_125:
      *(v28 - 1) = 95;
      if (v31.i8[7])
      {
        goto LABEL_126;
      }

LABEL_110:
      if ((v31.i8[8] & 1) == 0)
      {
        goto LABEL_111;
      }

LABEL_127:
      v28[1] = 95;
      if (v31.i8[9])
      {
        goto LABEL_128;
      }

LABEL_112:
      if ((v31.i8[10] & 1) == 0)
      {
        goto LABEL_113;
      }

LABEL_129:
      v28[3] = 95;
      if (v31.i8[11])
      {
        goto LABEL_130;
      }

LABEL_114:
      if ((v31.i8[12] & 1) == 0)
      {
        goto LABEL_115;
      }

LABEL_131:
      v28[5] = 95;
      if (v31.i8[13])
      {
        goto LABEL_132;
      }

LABEL_116:
      if ((v31.i8[14] & 1) == 0)
      {
        goto LABEL_117;
      }

LABEL_133:
      v28[7] = 95;
      if (v31.i8[15])
      {
LABEL_134:
        v28[8] = 95;
      }
    }

    else
    {
      if ((v31.i8[1] & 1) == 0)
      {
        goto LABEL_104;
      }

LABEL_120:
      *(v28 - 6) = 95;
      if (v31.i8[2])
      {
        goto LABEL_121;
      }

LABEL_105:
      if ((v31.i8[3] & 1) == 0)
      {
        goto LABEL_106;
      }

LABEL_122:
      *(v28 - 4) = 95;
      if (v31.i8[4])
      {
        goto LABEL_123;
      }

LABEL_107:
      if ((v31.i8[5] & 1) == 0)
      {
        goto LABEL_108;
      }

LABEL_124:
      *(v28 - 2) = 95;
      if (v31.i8[6])
      {
        goto LABEL_125;
      }

LABEL_109:
      if ((v31.i8[7] & 1) == 0)
      {
        goto LABEL_110;
      }

LABEL_126:
      *v28 = 95;
      if (v31.i8[8])
      {
        goto LABEL_127;
      }

LABEL_111:
      if ((v31.i8[9] & 1) == 0)
      {
        goto LABEL_112;
      }

LABEL_128:
      v28[2] = 95;
      if (v31.i8[10])
      {
        goto LABEL_129;
      }

LABEL_113:
      if ((v31.i8[11] & 1) == 0)
      {
        goto LABEL_114;
      }

LABEL_130:
      v28[4] = 95;
      if (v31.i8[12])
      {
        goto LABEL_131;
      }

LABEL_115:
      if ((v31.i8[13] & 1) == 0)
      {
        goto LABEL_116;
      }

LABEL_132:
      v28[6] = 95;
      if (v31.i8[14])
      {
        goto LABEL_133;
      }

LABEL_117:
      if (v31.i8[15])
      {
        goto LABEL_134;
      }
    }

    v28 += 16;
    v30 -= 16;
    if (v30)
    {
      continue;
    }

    break;
  }

  if (v21 == v23)
  {
    return result;
  }

  if ((v21 & 8) == 0)
  {
    v22 = &v20[v23];
    goto LABEL_145;
  }

LABEL_79:
  v24 = v21 & 0xFFFFFFFFFFFFFFF8;
  v25 = v23 - (v21 & 0xFFFFFFFFFFFFFFF8);
  v26 = &v20[v23 + 3];
  while (2)
  {
    v27 = vceq_s8(*(v26 - 3), 0x2E2E2E2E2E2E2E2ELL);
    if (v27.i8[0])
    {
      *(v26 - 3) = 95;
      if (v27.i8[1])
      {
        goto LABEL_91;
      }

LABEL_83:
      if ((v27.i8[2] & 1) == 0)
      {
        goto LABEL_84;
      }

LABEL_92:
      *(v26 - 1) = 95;
      if (v27.i8[3])
      {
        goto LABEL_93;
      }

LABEL_85:
      if ((v27.i8[4] & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_94:
      v26[1] = 95;
      if (v27.i8[5])
      {
        goto LABEL_95;
      }

LABEL_87:
      if ((v27.i8[6] & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_96:
      v26[3] = 95;
      if (v27.i8[7])
      {
LABEL_97:
        v26[4] = 95;
      }
    }

    else
    {
      if ((v27.i8[1] & 1) == 0)
      {
        goto LABEL_83;
      }

LABEL_91:
      *(v26 - 2) = 95;
      if (v27.i8[2])
      {
        goto LABEL_92;
      }

LABEL_84:
      if ((v27.i8[3] & 1) == 0)
      {
        goto LABEL_85;
      }

LABEL_93:
      *v26 = 95;
      if (v27.i8[4])
      {
        goto LABEL_94;
      }

LABEL_86:
      if ((v27.i8[5] & 1) == 0)
      {
        goto LABEL_87;
      }

LABEL_95:
      v26[2] = 95;
      if (v27.i8[6])
      {
        goto LABEL_96;
      }

LABEL_88:
      if (v27.i8[7])
      {
        goto LABEL_97;
      }
    }

    v26 += 8;
    v25 += 8;
    if (v25)
    {
      continue;
    }

    break;
  }

  if (v21 != v24)
  {
    v22 = &v20[v24];
    goto LABEL_145;
  }

  return result;
}

uint64_t PixelBufferUtils::pixelFormatFromFileExtension(PixelBufferUtils *this, const char *a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  if (([v2 isEqualToString:&stru_285231EA0] & 1) != 0 || objc_msgSend(v2, "length") != 4)
  {
    v6 = 0;
  }

  else
  {
    v3 = [v2 stringByReplacingOccurrencesOfString:@":" withString:@"/"];

    v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"."];

    v2 = v4;
    v5 = [v4 UTF8String];
    if (!strcmp(v5, "24RG"))
    {
      v6 = 24;
    }

    else if (!strcmp(v5, "ARGB"))
    {
      v6 = 32;
    }

    else
    {
      v6 = bswap32(*v5);
    }
  }

  return v6;
}

CVPixelBufferRef PixelBufferUtils::createPixelBufferNoCopy(PixelBufferUtils *this, __CVBuffer *a2, CGRect a3)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3))
  {
    width = CVPixelBufferGetWidth(this);
    height = CVPixelBufferGetHeight(this);
    x = 0.0;
    y = 0.0;
  }

  else
  {
    if (CVPixelBufferGetPlaneCount(this) >= 2)
    {
      NSLog(&cfstr_SDErrorCroppin.isa, "createPixelBufferNoCopy", 185);
      return 0;
    }

    if (x < 0.0 || x + width > CVPixelBufferGetWidth(this) || y < 0.0 || y + height > CVPixelBufferGetHeight(this))
    {
      NSLog(&cfstr_SDErrorCropOri.isa, "createPixelBufferNoCopy", 191, *&x, *&y, *&width, *&height);
      return 0;
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v10 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0);
  v11 = PixelBufferUtils::pixelSizeForPixelFormat(a2, 0);
  if (v11 != v10)
  {
    NSLog(&cfstr_SDErrorChangin.isa, "createPixelBufferNoCopy", 200, v10, v11);
    return 0;
  }

  v16 = 0;
  CVPixelBufferRetain(this);
  CVPixelBufferLockBaseAddress(this, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  v14 = CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], width, height, a2, &BaseAddress[BytesPerRow * y + v10 * x], BytesPerRow, pixelBufferDeallocator, this, 0, &v16);
  CVPixelBufferUnlockBaseAddress(this, 1uLL);
  if (v14)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  return PixelBufferUtils::createPixelBufferNoCopy(this, PixelFormatType, *&v9);
}

unint64_t PixelBufferUtils::pixelSizeForPixelFormat(PixelBufferUtils *this, uint64_t a2)
{
  if (this > 1278226535)
  {
    if (this <= 1717855599)
    {
      if (this <= 1380410944)
      {
        if (this != 1278226536)
        {
          if (this != 1380401729)
          {
            goto LABEL_40;
          }

          return 4;
        }

        return 2;
      }

      if (this == 1380410945)
      {
        return 16;
      }

      if (this == 1380411457)
      {
        return 8;
      }

      v4 = 1647392359;
    }

    else if (this > 1751411058)
    {
      if (this == 1751411059)
      {
        return 2;
      }

      if (this == 1919365990)
      {
        return 4;
      }

      v4 = 1932996149;
    }

    else
    {
      if (this == 1717855600 || this == 1717856627)
      {
        return 4;
      }

      v4 = 1751410032;
    }

LABEL_33:
    if (this != v4)
    {
      goto LABEL_40;
    }

    return 2;
  }

  if (this <= 875704437)
  {
    if (this > 825437746)
    {
      if (this != 825437747)
      {
        if (this != 843264104)
        {
          v3 = 875704422;
          goto LABEL_16;
        }

        return 4;
      }

      return 2;
    }

    if (this == 32)
    {
      return 4;
    }

    v4 = 825306677;
    goto LABEL_33;
  }

  if (this > 1094862673)
  {
    if (this != 1094862674 && this != 1111970369)
    {
      if (this == 1278226488)
      {
        return 1;
      }

      goto LABEL_40;
    }

    return 4;
  }

  if (this == 875704438 || this == 875836518)
  {
    goto LABEL_17;
  }

  v3 = 875836534;
LABEL_16:
  if (this == v3)
  {
LABEL_17:
    if (a2)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

LABEL_40:
  v7 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (PixelBufferUtils::planeCountForPixelFormat(this))
  {
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
    v9 = [v8 objectAtIndexedSubscript:a2];

    v7 = v9;
  }

  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4ED0]];
  v11 = v10;
  if (v10)
  {
    [v10 floatValue];
    v13 = vcvtps_u32_f32(v12 * 0.125);

    return v13;
  }

  else
  {

    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v16 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "pixelSizeForPixelFormat", 569, this, v14);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

void sub_2403DE0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void PixelBufferUtils::asVImageBuffer(PixelBufferUtils *this@<X0>, __CVBuffer *a2@<X1>, CGRect a3@<0:D0, 8:D1, 16:D2, 24:D3>, vImage_Buffer *a4@<X8>)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(this, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(this, a2);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(this, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(this, a2);
  if (!BaseAddressOfPlane)
  {
    NSLog(&cfstr_SDErrorAsvimag.isa, "asVImageBuffer", 287);
    BytesPerRowOfPlane = 0;
    WidthOfPlane = 0;
    HeightOfPlane = 0;
  }

  v16[0] = BaseAddressOfPlane;
  v16[1] = HeightOfPlane;
  v16[2] = WidthOfPlane;
  v16[3] = BytesPerRowOfPlane;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  cropVImageBuffer(a4, v16, v17, PixelFormatType, a2);
}

void cropVImageBuffer(vImage_Buffer *a1, uint64_t a2, CGRect a3, PixelBufferUtils *a4, uint64_t a5)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = *(a2 + 16);
  *&a1->data = *a2;
  *&a1->width = v13;
  *&v13 = y;
  if (!CGRectIsEmpty(a3))
  {
    v14 = PixelBufferUtils::verticalSubsamplingForPixelFormat(a4, a5);
    v15 = PixelBufferUtils::horizontalSubsamplingForPixelFormat(a4, a5);
    v16 = PixelBufferUtils::pixelSizeForPixelFormat(a4, a5);
    v17 = *(a2 + 24);
    v19 = *a2;
    v18 = *(a2 + 8);
    v20 = vcvtpd_u64_f64(width / v15);
    v21 = (*a2 + v17 * (y / v14) + x / v15 * v16);
    v22 = vcvtpd_u64_f64(height / v14);
    a1->height = v22;
    a1->width = v20;
    a1->data = v21;
    v23 = v19 + v18 * v17;
    v24 = v21 < v19 || v21 >= v23;
    if (v24 || (width >= v20 ? (v25 = height < v22) : (v25 = 1), v25))
    {
      NSLog(&cfstr_SDErrorCropOri_0.isa, "cropVImageBuffer", 262, *&x, *&y, *&width, *&height, *(a2 + 16) * v15, v18 * v14);
      *&a1->data = 0u;
      *&a1->width = 0u;
    }
  }
}

uint64_t PixelBufferUtils::verticalSubsamplingForPixelFormat(PixelBufferUtils *this, uint64_t a2)
{
  result = 1;
  if (this > 1380401728)
  {
    if (this > 1717856626)
    {
      if (this <= 1751411058)
      {
        if (this == 1717856627)
        {
          return result;
        }

        v5 = 1751410032;
      }

      else
      {
        if (this == 1751411059 || this == 1919365990)
        {
          return result;
        }

        v5 = 1932996149;
      }
    }

    else if (this <= 1380411456)
    {
      if (this == 1380401729)
      {
        return result;
      }

      v5 = 1380410945;
    }

    else
    {
      if (this == 1380411457 || this == 1647392359)
      {
        return result;
      }

      v5 = 1717855600;
    }
  }

  else if (this > 875704437)
  {
    if (this <= 1111970368)
    {
      if (this == 875704438)
      {
        goto LABEL_35;
      }

      v5 = 1094862674;
    }

    else
    {
      if (this == 1111970369 || this == 1278226488)
      {
        return result;
      }

      v5 = 1278226536;
    }
  }

  else
  {
    if (this > 825437746)
    {
      if (this == 825437747 || this == 843264104)
      {
        return result;
      }

      if (this != 875704422)
      {
        goto LABEL_30;
      }

LABEL_35:
      if (a2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    if (this == 32)
    {
      return result;
    }

    v5 = 825306677;
  }

  if (this == v5)
  {
    return result;
  }

LABEL_30:
  v6 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (v6)
  {
    v7 = v6;
    if (PixelBufferUtils::planeCountForPixelFormat(this))
    {
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
      v9 = [v8 objectAtIndexedSubscript:a2];

      v7 = v9;
    }

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F78]];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 intValue];
    }

    else
    {
      v12 = 1;
    }

    return v12;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v15 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "verticalSubsamplingForPixelFormat", 521, this, v13);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

void sub_2403DE67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PixelBufferUtils::horizontalSubsamplingForPixelFormat(PixelBufferUtils *this, uint64_t a2)
{
  result = 1;
  if (this > 1380401728)
  {
    if (this > 1717856626)
    {
      if (this <= 1751411058)
      {
        if (this == 1717856627)
        {
          return result;
        }

        v5 = 1751410032;
      }

      else
      {
        if (this == 1751411059 || this == 1919365990)
        {
          return result;
        }

        v5 = 1932996149;
      }
    }

    else if (this <= 1380411456)
    {
      if (this == 1380401729)
      {
        return result;
      }

      v5 = 1380410945;
    }

    else
    {
      if (this == 1380411457 || this == 1647392359)
      {
        return result;
      }

      v5 = 1717855600;
    }
  }

  else if (this > 875704437)
  {
    if (this <= 1111970368)
    {
      if (this == 875704438)
      {
        goto LABEL_35;
      }

      v5 = 1094862674;
    }

    else
    {
      if (this == 1111970369 || this == 1278226488)
      {
        return result;
      }

      v5 = 1278226536;
    }
  }

  else
  {
    if (this > 825437746)
    {
      if (this == 825437747 || this == 843264104)
      {
        return result;
      }

      if (this != 875704422)
      {
        goto LABEL_30;
      }

LABEL_35:
      if (a2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    if (this == 32)
    {
      return result;
    }

    v5 = 825306677;
  }

  if (this == v5)
  {
    return result;
  }

LABEL_30:
  v6 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (v6)
  {
    v7 = v6;
    if (PixelBufferUtils::planeCountForPixelFormat(this))
    {
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
      v9 = [v8 objectAtIndexedSubscript:a2];

      v7 = v9;
    }

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F60]];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 intValue];
    }

    else
    {
      v12 = 1;
    }

    return v12;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v15 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "horizontalSubsamplingForPixelFormat", 474, this, v13);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

void sub_2403DE988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PixelBufferUtils::asVImageBuffer(PixelBufferUtils *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, vImage_Buffer *a3@<X8>)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  v11 = CVPixelBufferGetHeight(this);
  v12 = CVPixelBufferGetWidth(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  if (!BaseAddress)
  {
    NSLog(&cfstr_SDErrorAsvimag.isa, "asVImageBuffer", 305);
    BytesPerRow = 0;
    v12 = 0;
    v11 = 0;
  }

  v15[0] = BaseAddress;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = BytesPerRow;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  cropVImageBuffer(a3, v15, v16, PixelFormatType, 0);
}

CVPixelBufferRef PixelBufferUtils::createPixelBuffer(size_t width, size_t height, OSType pixelFormatType, int a4)
{
  BufferAttributes = 0;
  pixelBufferOut = 0;
  v8 = *MEMORY[0x277CBECE8];
  if (a4)
  {
    BufferAttributes = getBufferAttributes();
  }

  if (CVPixelBufferCreate(v8, width, height, pixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

uint64_t getBufferAttributes(void)
{
  v3[2] = *MEMORY[0x277D85DE8];
  {
    v1 = *MEMORY[0x277CC4D60];
    v2[0] = *MEMORY[0x277CC4DE8];
    v2[1] = v1;
    v3[0] = MEMORY[0x277CBEC10];
    v3[1] = &unk_28524A950;
    getBufferAttributes(void)::bufAttr = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  }

  return getBufferAttributes(void)::bufAttr;
}

CVPixelBufferRef PixelBufferUtils::createPixelBufferWithSameSizeAndFormat(PixelBufferUtils *this, __CVBuffer *a2)
{
  v2 = a2;
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  BufferAttributes = 0;
  pixelBufferOut = 0;
  v8 = *MEMORY[0x277CBECE8];
  if (v2)
  {
    BufferAttributes = getBufferAttributes();
  }

  if (CVPixelBufferCreate(v8, Width, Height, PixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

CVPixelBufferRef PixelBufferUtils::createPixelBufferWithSameSize(PixelBufferUtils *this, __CVBuffer *a2, int a3)
{
  v4 = a2;
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  BufferAttributes = 0;
  pixelBufferOut = 0;
  v9 = *MEMORY[0x277CBECE8];
  if (a3)
  {
    BufferAttributes = getBufferAttributes();
  }

  if (CVPixelBufferCreate(v9, Width, Height, v4, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

CVPixelBufferRef PixelBufferUtils::createPixelBuffer(OSType pixelFormatType, CGSize a2, int a3)
{
  height = a2.height;
  width = a2.width;
  BufferAttributes = 0;
  pixelBufferOut = 0;
  v7 = *MEMORY[0x277CBECE8];
  if (a3)
  {
    BufferAttributes = getBufferAttributes();
  }

  if (CVPixelBufferCreate(v7, width, height, pixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

BOOL PixelBufferUtils::isPixelFormatCompressed(PixelBufferUtils *this)
{
  v2 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v3 = 0;
  v4 = *MEMORY[0x277CC4F70];
  v5 = *MEMORY[0x277CC4F18];
  while (v3 < PixelBufferUtils::planeCountForPixelFormat(this))
  {
    v6 = [v2 objectForKeyedSubscript:v4];
    v7 = [v6 objectAtIndexedSubscript:v3];

    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = v8;
    if (v8 && [v8 intValue])
    {

      v10 = 1;
      goto LABEL_10;
    }

    ++v3;
  }

  v11 = [v2 objectForKeyedSubscript:v5];
  v7 = v11;
  if (v11)
  {
    v10 = [v11 intValue] != 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_10:

  return v10;
}

PixelBufferUtils *PixelBufferUtils::uncompressedEquivalentForPixelFormat(PixelBufferUtils *this)
{
  v2 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CC4F50]];
  v4 = v3;
  if (v3)
  {
    this = [v3 unsignedIntValue];
  }

  else if (PixelBufferUtils::isPixelFormatCompressed(this))
  {
    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "uncompressedEquivalentForPixelFormat", 694, this, v5);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    this = 0;
  }

  return this;
}

void sub_2403DF024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL PixelBufferUtils::isSameDimensionAndFormat(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer *a3)
{
  Width = CVPixelBufferGetWidth(this);
  if (Width != CVPixelBufferGetWidth(a2))
  {
    return 0;
  }

  Height = CVPixelBufferGetHeight(this);
  if (Height != CVPixelBufferGetHeight(a2))
  {
    return 0;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  return PixelFormatType == CVPixelBufferGetPixelFormatType(a2);
}

__CVBuffer *PixelBufferUtils::createRotatedPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, int a3)
{
  if (!this)
  {
    return 0;
  }

  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if ((a2 & 0xFFFFFFFD) == 1)
  {
    v9 = Height;
  }

  else
  {
    v9 = Width;
  }

  if ((a2 & 0xFFFFFFFD) != 1)
  {
    Width = Height;
  }

  pixelBufferOut = 0;
  v10 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v10, v9, Width, PixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    v12 = 0;
  }

  else
  {
    v12 = pixelBufferOut;
  }

  if (PixelBufferUtils::rotatePixelBuffer(this, v12, a2, a3))
  {
    CVPixelBufferRelease(v12);
    return 0;
  }

  return v12;
}

uint64_t PixelBufferUtils::rotatePixelBuffer(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, __CVBuffer *a3, int a4)
{
  backColor[2] = *MEMORY[0x277D85DE8];
  result = 0xFFFFFFFFLL;
  if (pixelBuffer && a2)
  {
    v8 = a3;
    v9 = a3 & 0xFFFFFFFD;
    Width = CVPixelBufferGetWidth(pixelBuffer);
    if (v9 == 1)
    {
      if (Width != CVPixelBufferGetHeight(a2) || (Height = CVPixelBufferGetHeight(pixelBuffer), Height != CVPixelBufferGetWidth(a2)))
      {
LABEL_15:
        NSLog(&cfstr_SDErrorInvalid.isa, "rotatePixelBuffer", 993);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (Width != CVPixelBufferGetWidth(a2))
      {
        goto LABEL_15;
      }

      v12 = CVPixelBufferGetHeight(pixelBuffer);
      if (v12 != CVPixelBufferGetHeight(a2))
      {
        goto LABEL_15;
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    if (a4)
    {
      if (PixelFormatType <= 1717856626)
      {
        if (PixelFormatType > 1380410944)
        {
          if (PixelFormatType == 1380410945)
          {
            goto LABEL_26;
          }

          v14 = 1380411457;
        }

        else
        {
          if (PixelFormatType == 825306677)
          {
            goto LABEL_26;
          }

          v14 = 825437747;
        }
      }

      else if (PixelFormatType <= 1919365989)
      {
        if (PixelFormatType == 1717856627)
        {
          goto LABEL_26;
        }

        v14 = 1751411059;
      }

      else
      {
        if (PixelFormatType == 1919365990 || PixelFormatType == 1919365992)
        {
          goto LABEL_26;
        }

        v14 = 1932996149;
      }

      if (PixelFormatType != v14)
      {
        src.data = 0;
        if (VTImageRotationSessionCreate())
        {
          MEMORY[0x245CBF880](src.data);
          CFRelease(src.data);
          NSLog(&cfstr_SDErrorUnableT_2.isa, "createVTRotationSession", 916);
          v22 = MEMORY[0x245CBF890](0, pixelBuffer, a2);
        }

        else
        {
          v22 = MEMORY[0x245CBF890](src.data, pixelBuffer, a2);
        }

        if (!v22)
        {
          return 0;
        }

        NSLog(&cfstr_SDErrorVtimage.isa, "rotatePixelBufferVT", 956);
        return 0xFFFFFFFFLL;
      }
    }

LABEL_26:
    v15 = v9 == 1;
    v16 = CVPixelBufferGetPixelFormatType(pixelBuffer);
    CVPixelBufferLockBaseAddress(a2, 0);
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    memset(&src, 0, sizeof(src));
    v17 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *MEMORY[0x277CBF3A0], &src);
    memset(&dest, 0, sizeof(dest));
    PixelBufferUtils::asVImageBuffer(a2, *v17, &dest);
    if (v15)
    {
      if (src.width != dest.height || src.height != dest.width)
      {
LABEL_39:
        CVPixelBufferUnlockBaseAddress(a2, 0);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
        return 0xFFFFFFFFLL;
      }
    }

    else if (src.width != dest.width || src.height != dest.height)
    {
      goto LABEL_39;
    }

    backColor[0] = 0;
    backColor[1] = 0;
    if (v16 > 1380401728)
    {
      v18 = v8;
      if (v16 <= 1717856626)
      {
        if (v16 <= 1380411456)
        {
          if (v16 != 1380401729)
          {
            if (v16 != 1380410945)
            {
              goto LABEL_89;
            }

            v21 = vImageRotate90_ARGBFFFF(&src, &dest, v8, backColor, 0);
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        if (v16 == 1380411457)
        {
          v21 = vImageRotate90_ARGB16U(&src, &dest, v8, backColor, 0);
          goto LABEL_74;
        }

        if (v16 == 1647392359)
        {
          goto LABEL_69;
        }

        if (v16 != 1717855600)
        {
          goto LABEL_89;
        }

        goto LABEL_65;
      }

      if (v16 > 1919365989)
      {
        if (v16 == 1919365990)
        {
          PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *v17, &__p);
          src = __p;
          PixelBufferUtils::asVImageBuffer(a2, 0, *v17, &__p);
          dest = __p;
          v20 = vImageRotate90_PlanarF(&src, &dest, v8, 0.0, 0);
          if (v20)
          {
            goto LABEL_75;
          }

          PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, *v17, &__p);
          src = __p;
          PixelBufferUtils::asVImageBuffer(a2, 1, *v17, &__p);
          dest = __p;
          v20 = vImageRotate90_PlanarF(&src, &dest, v8, 0.0, 0);
          if (v20)
          {
            goto LABEL_75;
          }

          PixelBufferUtils::asVImageBuffer(pixelBuffer, 2, *v17, &__p);
          src = __p;
          PixelBufferUtils::asVImageBuffer(a2, 2, *v17, &__p);
          dest = __p;
          v21 = vImageRotate90_PlanarF(&src, &dest, v8, 0.0, 0);
          goto LABEL_74;
        }

        if (v16 == 1919365992)
        {
          PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *v17, &__p);
          src = __p;
          PixelBufferUtils::asVImageBuffer(a2, 0, *v17, &__p);
          dest = __p;
          v20 = vImageRotate90_Planar16F(&src, &dest, v8, 0, 0);
          if (v20)
          {
            goto LABEL_75;
          }

          PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, *v17, &__p);
          src = __p;
          PixelBufferUtils::asVImageBuffer(a2, 1, *v17, &__p);
          dest = __p;
          v20 = vImageRotate90_Planar16F(&src, &dest, v8, 0, 0);
          if (v20)
          {
            goto LABEL_75;
          }

          PixelBufferUtils::asVImageBuffer(pixelBuffer, 2, *v17, &__p);
          src = __p;
          PixelBufferUtils::asVImageBuffer(a2, 2, *v17, &__p);
          dest = __p;
          v21 = vImageRotate90_Planar16F(&src, &dest, v8, 0, 0);
          goto LABEL_74;
        }

        v18 = v8;
        if (v16 != 1932996149)
        {
          goto LABEL_89;
        }

        goto LABEL_69;
      }

      if (v16 == 1717856627)
      {
LABEL_65:
        v21 = vImageRotate90_PlanarF(&src, &dest, v18, 0.0, 0);
        goto LABEL_74;
      }

      if (v16 != 1751410032)
      {
        v19 = 1751411059;
        goto LABEL_68;
      }
    }

    else
    {
      v18 = v8;
      if (v16 > 875704437)
      {
        if (v16 <= 1278226487)
        {
          if (v16 != 875704438)
          {
            if (v16 != 1094862674 && v16 != 1111970369)
            {
LABEL_89:
              PixelBufferUtils::pixelFormatAsString(v16, &__p);
              if ((__p.width & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.data;
              }

              NSLog(&cfstr_SDErrorPixelFo.isa, "rotatePixelBufferVImage", 879, v16, p_p);
              if (SHIBYTE(__p.width) < 0)
              {
                operator delete(__p.data);
              }

              v20 = -21773;
              goto LABEL_75;
            }

            goto LABEL_73;
          }

          goto LABEL_49;
        }

        if (v16 == 1278226488)
        {
          v21 = vImageRotate90_Planar8(&src, &dest, v8, 0, 0);
          goto LABEL_74;
        }

        if (v16 != 1278226534)
        {
          v19 = 1278226536;
LABEL_68:
          if (v16 != v19)
          {
            goto LABEL_89;
          }

          goto LABEL_69;
        }

        goto LABEL_65;
      }

      if (v16 <= 825437746)
      {
        if (v16 == 32)
        {
LABEL_73:
          v21 = vImageRotate90_ARGB8888(&src, &dest, v18, backColor, 0);
          goto LABEL_74;
        }

        v19 = 825306677;
        goto LABEL_68;
      }

      if (v16 != 825437747)
      {
        if (v16 == 843264104)
        {
          v21 = vImageRotate90_CbCr16F(&src, &dest, v8, backColor, 0);
          goto LABEL_74;
        }

        if (v16 != 875704422)
        {
          goto LABEL_89;
        }

LABEL_49:
        PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *v17, &src);
        PixelBufferUtils::asVImageBuffer(a2, 0, *v17, &dest);
        v20 = vImageRotate90_Planar8(&src, &dest, v8, 0, 0);
        if (v20)
        {
LABEL_75:
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          CVPixelBufferUnlockBaseAddress(a2, 0);
          return v20 != 0;
        }

        PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, *v17, &__p);
        src = __p;
        PixelBufferUtils::asVImageBuffer(a2, 1, *v17, &__p);
        dest = __p;
        v21 = vImageRotate90_Planar16U(&src, &dest, v8, 0, 0);
LABEL_74:
        v20 = v21;
        goto LABEL_75;
      }
    }

LABEL_69:
    v21 = vImageRotate90_Planar16U(&src, &dest, v18, 0, 0);
    goto LABEL_74;
  }

  return result;
}

void sub_2403DFB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__CVBuffer *PixelBufferUtils::createCroppedAndScaledPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, CGRect a3, CGSize a4)
{
  height = a4.height;
  width = a4.width;
  v7 = a3.size.height;
  v8 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    v8 = CVPixelBufferGetWidth(this);
    v7 = CVPixelBufferGetHeight(this);
    x = 0.0;
    y = 0.0;
  }

  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    width = v8;
    height = v7;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  pixelBufferOut = 0;
  v13 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v13, width, height, PixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    v15 = 0;
  }

  else
  {
    v15 = pixelBufferOut;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = v8;
  v18.size.height = v7;
  if (PixelBufferUtils::cropAndScalePixelBuffer(this, v15, a2, v18, *MEMORY[0x277CBF3A0]))
  {
    CVPixelBufferRelease(v15);
    return 0;
  }

  return v15;
}

uint64_t PixelBufferUtils::cropAndScalePixelBuffer(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, __CVBuffer *a3, CGRect a4, CGRect a5)
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v8 = a4.size.height;
  v9 = a4.size.width;
  v10 = a4.origin.y;
  v11 = a4.origin.x;
  if (!a3)
  {
    goto LABEL_17;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (PixelFormatType <= 1751410031)
  {
    if (PixelFormatType > 1717855599)
    {
      if (PixelFormatType == 1717855600 || PixelFormatType == 1717856627)
      {
        goto LABEL_17;
      }
    }

    else if (PixelFormatType == 825306677 || PixelFormatType == 825437747)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (PixelFormatType > 1919365989)
    {
      if (PixelFormatType != 1919365990 && PixelFormatType != 1919365992 && PixelFormatType != 1932996149)
      {
        goto LABEL_47;
      }

LABEL_17:
      v15 = CVPixelBufferGetWidth(pixelBuffer);
      v16 = CVPixelBufferGetHeight(pixelBuffer);
      v17 = CVPixelBufferGetWidth(a2);
      v18 = CVPixelBufferGetHeight(a2);
      v61.origin.x = v11;
      v61.origin.y = v10;
      v61.size.width = v9;
      v61.size.height = v8;
      IsEmpty = CGRectIsEmpty(v61);
      v20 = v16;
      if (IsEmpty)
      {
        v11 = 0.0;
        v10 = 0.0;
        v9 = v15;
      }

      else
      {
        v20 = v8;
      }

      rect = v20;
      v62.origin.x = x;
      v62.origin.y = y;
      v62.size.width = width;
      v62.size.height = height;
      v21 = CGRectIsEmpty(v62);
      if (v21)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = x;
      }

      if (v21)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = y;
      }

      v50 = v23;
      if (v21)
      {
        v24 = v17;
      }

      else
      {
        v24 = width;
      }

      v51 = v24;
      v52 = v22;
      if (v21)
      {
        v25 = v18;
      }

      else
      {
        v25 = height;
      }

      v63.origin.x = v11;
      v63.origin.y = v10;
      v63.size.width = v9;
      v63.size.height = rect;
      v64 = CGRectIntegral(v63);
      if (v64.origin.x < 0.0 || v64.origin.y < 0.0 || (v64.origin.x + v64.size.width <= v15 ? (v26 = v64.origin.y + v64.size.height <= v16) : (v26 = 0), !v26))
      {
        NSLog(&cfstr_SDErrorCropOri.isa, "cropAndScalePixelBufferVImage", 1059, *&v64.origin.x, *&v64.origin.y, *&v64.size.width, *&v64.size.height);
        return 0xFFFFFFFFLL;
      }

      if (v52 < 0.0 || v50 < 0.0 || (v52 + v51 <= v17 ? (v28 = v50 + v25 <= v18) : (v28 = 0), !v28))
      {
        NSLog(&cfstr_SDErrorDestrec.isa, "cropAndScalePixelBufferVImage", 1065, *&v52, *&v50, *&v51, *&v25);
        return 0xFFFFFFFFLL;
      }

      v31 = v64.size.height;
      v32 = v64.size.width;
      v33 = v64.origin.y;
      v34 = v64.origin.x;
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      memset(&v60, 0, sizeof(v60));
      v66.origin.x = v34;
      v66.origin.y = v33;
      v66.size.width = v32;
      v66.size.height = v31;
      PixelBufferUtils::asVImageBuffer(pixelBuffer, v66, &v60);
      memset(&v59, 0, sizeof(v59));
      v67.origin.x = v52;
      v67.origin.y = v50;
      v67.size.width = v51;
      v67.size.height = v25;
      PixelBufferUtils::asVImageBuffer(a2, v67, &v59);
      v35 = CVPixelBufferGetPixelFormatType(pixelBuffer);
      v36 = v35;
      if (v35 <= 1380401728)
      {
        if (v35 > 875836517)
        {
          v37 = v32;
          v38 = v31;
          v39 = v34;
          v40 = v33;
          if (v35 <= 1111970368)
          {
            if (v35 != 875836518 && v35 != 875836534)
            {
              if (v35 != 1094862674)
              {
                goto LABEL_101;
              }

              goto LABEL_92;
            }

LABEL_68:
            memset(&src, 0, sizeof(src));
            PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *&v39, &src);
            memset(&dest, 0, sizeof(dest));
            v68.origin.x = v52;
            v68.origin.y = v50;
            v68.size.width = v51;
            v68.size.height = v25;
            PixelBufferUtils::asVImageBuffer(a2, 0, v68, &dest);
            v42 = vImageScale_Planar8(&src, &dest, 0, 0);
            if (!v42)
            {
              memset(&v56, 0, sizeof(v56));
              v69.origin.x = v34;
              v69.origin.y = v33;
              v69.size.width = v32;
              v69.size.height = v31;
              PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, v69, &v56);
              memset(&v55, 0, sizeof(v55));
              v70.origin.x = v52;
              v70.origin.y = v50;
              v70.size.width = v51;
              v70.size.height = v25;
              PixelBufferUtils::asVImageBuffer(a2, 1, v70, &v55);
              v42 = vImageScale_CbCr8(&v56, &v55, 0, 0);
            }

            goto LABEL_107;
          }

          if (v35 != 1111970369)
          {
            if (v35 != 1278226534)
            {
              v41 = 1278226536;
LABEL_78:
              if (v35 == v41)
              {
                goto LABEL_79;
              }

LABEL_101:
              PixelBufferUtils::pixelFormatAsString(v35, &src);
              if ((src.width & 0x8000000000000000) == 0)
              {
                p_src = &src;
              }

              else
              {
                p_src = src.data;
              }

              NSLog(&cfstr_SDErrorPixelFo.isa, "cropAndScalePixelBufferVImage", 1156, v36, p_src);
              if (SHIBYTE(src.width) < 0)
              {
                operator delete(src.data);
              }

              v42 = -21778;
              goto LABEL_107;
            }

            goto LABEL_83;
          }

LABEL_92:
          v42 = vImageScale_ARGB8888(&v60, &v59, 0, 0);
          goto LABEL_107;
        }

        v37 = v32;
        v38 = v31;
        v39 = v34;
        v40 = v33;
        if (v35 > 825437746)
        {
          if (v35 != 825437747)
          {
            if (v35 == 875704422 || v35 == 875704438)
            {
              goto LABEL_68;
            }

            goto LABEL_101;
          }

          goto LABEL_87;
        }

        if (v35 == 32)
        {
          goto LABEL_92;
        }

        v47 = 825306677;
LABEL_86:
        if (v35 != v47)
        {
          goto LABEL_101;
        }

        goto LABEL_87;
      }

      if (v35 <= 1717856626)
      {
        if (v35 <= 1380411456)
        {
          if (v35 != 1380401729)
          {
            if (v35 == 1380410945)
            {
              v42 = vImageScale_ARGBFFFF(&v60, &v59, 0, 0);
              goto LABEL_107;
            }

            goto LABEL_101;
          }

          goto LABEL_92;
        }

        if (v35 == 1380411457)
        {
          v42 = vImageScale_ARGB16F(&v60, &v59, 0, 0);
          goto LABEL_107;
        }

        if (v35 != 1647392359)
        {
          if (v35 != 1717855600)
          {
            goto LABEL_101;
          }

          goto LABEL_83;
        }

LABEL_87:
        vImageScale_NearestNeighbor<unsigned short>(&v60, &v59);
        goto LABEL_88;
      }

      if (v35 <= 1919365989)
      {
        if (v35 != 1717856627)
        {
          if (v35 == 1751410032)
          {
LABEL_79:
            vImageScale_NearestNeighbor<half>(&v60, &v59);
LABEL_88:
            v42 = 0;
LABEL_107:
            CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
            CVPixelBufferUnlockBaseAddress(a2, 0);
            return v42 != 0;
          }

          v41 = 1751411059;
          goto LABEL_78;
        }

LABEL_83:
        vImageScale_NearestNeighbor<float>(&v60, &v59);
        goto LABEL_88;
      }

      if (v35 == 1919365990)
      {
        v76.origin.x = v34;
        v76.origin.y = v33;
        v76.size.width = v32;
        v76.size.height = v31;
        PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, v76, &src);
        v60 = src;
        v77.origin.x = v52;
        v77.origin.y = v50;
        v77.size.width = v51;
        v77.size.height = v25;
        PixelBufferUtils::asVImageBuffer(a2, 0, v77, &src);
        v59 = src;
        v48 = vImageScale_PlanarF(&v60, &v59, 0, 0);
        if (!v48)
        {
          v78.origin.x = v34;
          v78.origin.y = v33;
          v78.size.width = v32;
          v78.size.height = v31;
          PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, v78, &src);
          v60 = src;
          v79.origin.x = v52;
          v79.origin.y = v50;
          v79.size.width = v51;
          v79.size.height = v25;
          PixelBufferUtils::asVImageBuffer(a2, 1, v79, &src);
          v59 = src;
          v48 = vImageScale_PlanarF(&v60, &v59, 0, 0);
          if (!v48)
          {
            v80.origin.x = v34;
            v80.origin.y = v33;
            v80.size.width = v32;
            v80.size.height = v31;
            PixelBufferUtils::asVImageBuffer(pixelBuffer, 2, v80, &src);
            v60 = src;
            v81.origin.x = v52;
            v81.origin.y = v50;
            v81.size.width = v51;
            v81.size.height = v25;
            PixelBufferUtils::asVImageBuffer(a2, 2, v81, &src);
            v59 = src;
            v48 = vImageScale_PlanarF(&v60, &v59, 0, 0);
          }
        }
      }

      else
      {
        v43 = v32;
        v44 = v31;
        v45 = v34;
        v46 = v33;
        if (v35 != 1919365992)
        {
          v47 = 1932996149;
          goto LABEL_86;
        }

        PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *&v45, &src);
        v60 = src;
        v71.origin.x = v52;
        v71.origin.y = v50;
        v71.size.width = v51;
        v71.size.height = v25;
        PixelBufferUtils::asVImageBuffer(a2, 0, v71, &src);
        v59 = src;
        v48 = vImageScale_Planar16F(&v60, &v59, 0, 0);
        if (!v48)
        {
          v72.origin.x = v34;
          v72.origin.y = v33;
          v72.size.width = v32;
          v72.size.height = v31;
          PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, v72, &src);
          v60 = src;
          v73.origin.x = v52;
          v73.origin.y = v50;
          v73.size.width = v51;
          v73.size.height = v25;
          PixelBufferUtils::asVImageBuffer(a2, 1, v73, &src);
          v59 = src;
          v48 = vImageScale_Planar16F(&v60, &v59, 0, 0);
          if (!v48)
          {
            v74.origin.x = v34;
            v74.origin.y = v33;
            v74.size.width = v32;
            v74.size.height = v31;
            PixelBufferUtils::asVImageBuffer(pixelBuffer, 2, v74, &src);
            v60 = src;
            v75.origin.x = v52;
            v75.origin.y = v50;
            v75.size.width = v51;
            v75.size.height = v25;
            PixelBufferUtils::asVImageBuffer(a2, 2, v75, &src);
            v59 = src;
            v42 = vImageScale_Planar16F(&v60, &v59, 0, 0);
            goto LABEL_107;
          }
        }
      }

      v42 = v48;
      goto LABEL_107;
    }

    if (PixelFormatType == 1751410032 || PixelFormatType == 1751411059)
    {
      goto LABEL_17;
    }
  }

LABEL_47:
  v65.origin.x = v11;
  v65.origin.y = v10;
  v65.size.width = v9;
  v65.size.height = v8;
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  VTTransferSession = createVTTransferSession(v65, v82);
  v30 = VTPixelTransferSessionTransferImage(VTTransferSession, pixelBuffer, a2);
  if (VTTransferSession)
  {
    VTPixelTransferSessionInvalidate(VTTransferSession);
    CFRelease(VTTransferSession);
  }

  if (v30)
  {
    NSLog(&cfstr_SDErrorVtpixel.isa, "cropAndScalePixelBufferVT", 1221);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void sub_2403E0644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

VTPixelTransferSessionRef createVTTransferSession(CGRect a1, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  v6 = a1.size.height;
  v7 = a1.size.width;
  v8 = a1.origin.y;
  v9 = a1.origin.x;
  pixelTransferSessionOut = 0;
  v10 = VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
  v15.origin.x = v9;
  v15.origin.y = v8;
  v15.size.width = v7;
  v15.size.height = v6;
  if (!CGRectIsEmpty(v15))
  {
    v16.origin.x = v9;
    v16.origin.y = v8;
    v16.size.width = v7;
    v16.size.height = v6;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v16);
    v10 |= VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE28B8], DictionaryRepresentation);
    CFRelease(DictionaryRepresentation);
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (!CGRectIsEmpty(v17))
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v12 = CGRectCreateDictionaryRepresentation(v18);
    v10 |= VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE2868], v12);
    CFRelease(v12);
  }

  result = pixelTransferSessionOut;
  if (v10)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
    NSLog(&cfstr_SDErrorUnableT_1.isa, "createVTTransferSession", 1192);
    return 0;
  }

  return result;
}

uint64_t *vImageScale_NearestNeighbor<float>(uint64_t *result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = a2[2];
    if (v3)
    {
      v4 = 0;
      v5 = *result;
      v6 = result[3];
      v7 = result[2];
      v8 = result[1] / v2;
      v9 = *a2;
      v10 = a2[3];
      do
      {
        for (i = 0; i != v3; ++i)
        {
          *(v9 + 4 * i) = *(v5 + v6 * (v8 * v4) + 4 * ((v7 / v3) * i));
        }

        ++v4;
        v9 += v10;
      }

      while (v4 != v2);
    }
  }

  return result;
}

uint64_t *vImageScale_NearestNeighbor<unsigned short>(uint64_t *result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = a2[2];
    if (v3)
    {
      v4 = 0;
      v5 = *result;
      v6 = result[3];
      v7 = result[2];
      v8 = result[1] / v2;
      v9 = *a2;
      v10 = a2[3];
      do
      {
        for (i = 0; i != v3; ++i)
        {
          *(v9 + 2 * i) = *(v5 + v6 * (v8 * v4) + 2 * ((v7 / v3) * i));
        }

        ++v4;
        v9 += v10;
      }

      while (v4 != v2);
    }
  }

  return result;
}

uint64_t *vImageScale_NearestNeighbor<half>(uint64_t *result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = a2[2];
    if (v3)
    {
      v4 = 0;
      v5 = *result;
      v6 = result[3];
      v7 = result[2];
      v8 = result[1] / v2;
      v9 = *a2;
      v10 = a2[3];
      do
      {
        for (i = 0; i != v3; ++i)
        {
          *(v9 + 2 * i) = *(v5 + v6 * (v8 * v4) + 2 * ((v7 / v3) * i));
        }

        ++v4;
        v9 += v10;
      }

      while (v4 != v2);
    }
  }

  return result;
}

__CVBuffer *PixelBufferUtils::createConvertedPixelBufferFormat(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer *a3)
{
  v4 = a2;
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  pixelBufferOut = 0;
  v8 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v8, Width, Height, v4, BufferAttributes, &pixelBufferOut))
  {
    v10 = 0;
  }

  else
  {
    v10 = pixelBufferOut;
  }

  if (PixelBufferUtils::convertPixelBufferFormat(this, v10, a3))
  {
    CVPixelBufferRelease(v10);
    return 0;
  }

  return v10;
}

uint64_t PixelBufferUtils::convertPixelBufferFormat(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, __CVBuffer *a3)
{
  result = 0xFFFFFFFFLL;
  if (!pixelBuffer || !a2)
  {
    return result;
  }

  v6 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v8 = CVPixelBufferGetPixelFormatType(a2);
  v10 = v8;
  if (v6)
  {
    if (PixelFormatType <= 1751410031)
    {
      if (PixelFormatType > 1717855599)
      {
        if (PixelFormatType == 1717855600)
        {
          goto LABEL_17;
        }

        v11 = 1717856627;
      }

      else
      {
        if (PixelFormatType == 825306677)
        {
          goto LABEL_17;
        }

        v11 = 825437747;
      }
    }

    else if (PixelFormatType <= 1919365989)
    {
      if (PixelFormatType == 1751410032)
      {
        goto LABEL_17;
      }

      v11 = 1751411059;
    }

    else
    {
      if (PixelFormatType == 1919365990 || PixelFormatType == 1919365992)
      {
        goto LABEL_17;
      }

      v11 = 1932996149;
    }

    if (PixelFormatType == v11)
    {
      goto LABEL_17;
    }

    if (v8 <= 1751410031)
    {
      if (v8 > 1717855599)
      {
        if (v8 == 1717855600)
        {
          goto LABEL_17;
        }

        v31 = 1717856627;
      }

      else
      {
        if (v8 == 825306677)
        {
          goto LABEL_17;
        }

        v31 = 825437747;
      }
    }

    else if (v8 <= 1919365989)
    {
      if (v8 == 1751410032)
      {
        goto LABEL_17;
      }

      v31 = 1751411059;
    }

    else
    {
      if (v8 == 1919365990 || v8 == 1919365992)
      {
        goto LABEL_17;
      }

      v31 = 1932996149;
    }

    if (v8 != v31)
    {
      v114 = **&MEMORY[0x277CBF3A0];
      v115.origin.x = *MEMORY[0x277CBF3A0];
      v115.origin.y = v114.origin.y;
      v115.size.width = v114.size.width;
      v115.size.height = v114.size.height;
      VTTransferSession = createVTTransferSession(*MEMORY[0x277CBF3A0], v115);
      v51 = VTPixelTransferSessionTransferImage(VTTransferSession, pixelBuffer, a2);
      if (VTTransferSession)
      {
        VTPixelTransferSessionInvalidate(VTTransferSession);
        CFRelease(VTTransferSession);
      }

      if (!v51)
      {
        return 0;
      }

      NSLog(&cfstr_SDErrorVtpixel.isa, "cropAndScalePixelBufferVT", 1221);
      return 0xFFFFFFFFLL;
    }
  }

LABEL_17:
  if (PixelFormatType == v8)
  {
    v12 = CVPixelBufferGetPixelFormatType(pixelBuffer);
    if (v12 == CVPixelBufferGetPixelFormatType(a2))
    {
      v13 = *MEMORY[0x277CBF348];
      v14 = *(MEMORY[0x277CBF348] + 8);
      v15 = *MEMORY[0x277CBF3A0];
      v16 = *(MEMORY[0x277CBF3A0] + 8);
      v17 = *(MEMORY[0x277CBF3A0] + 16);
      v18 = *(MEMORY[0x277CBF3A0] + 24);

      return copyPixelBufferVImage(a2, *&v13, pixelBuffer, *&v15);
    }

    return 0xFFFFFFFFLL;
  }

  v19 = 1;
  if (PixelFormatType <= 1751410031)
  {
    if (PixelFormatType != 1717855600)
    {
      if (PixelFormatType != 1717856627)
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

LABEL_30:
    v19 = v8 != 1751411059 && v8 != 1717856627;
    goto LABEL_36;
  }

  if (PixelFormatType == 1751410032)
  {
    goto LABEL_30;
  }

  if (PixelFormatType != 1751411059)
  {
    goto LABEL_36;
  }

LABEL_28:
  v19 = 0;
  if (v8 != 1717855600)
  {
    v19 = v8 != 1751410032;
  }

LABEL_36:
  if (PixelFormatType > 1380401728)
  {
    if (PixelFormatType <= 1717856626)
    {
      if (PixelFormatType > 1380411456)
      {
        if (PixelFormatType != 1380411457)
        {
          if (PixelFormatType != 1647392359)
          {
            if (PixelFormatType != 1717855600)
            {
              goto LABEL_146;
            }

            goto LABEL_92;
          }

LABEL_58:
          v22 = CVPixelBufferGetPixelFormatType(a2);
          CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
          CVPixelBufferLockBaseAddress(a2, 0);
          memset(&src, 0, sizeof(src));
          v23 = MEMORY[0x277CBF3A0];
          PixelBufferUtils::asVImageBuffer(pixelBuffer, *MEMORY[0x277CBF3A0], &src);
          memset(&dest, 0, sizeof(dest));
          PixelBufferUtils::asVImageBuffer(a2, *v23, &dest);
          if (v22 == 1278226536 || v22 == 1751410032)
          {
            width = src.width;
            if (src.width == dest.width)
            {
              height = src.height;
              if (src.height == dest.height)
              {
                data = src.data;
                if (src.data)
                {
                  v38 = dest.data;
                  if (dest.data)
                  {
                    if (src.height && src.width)
                    {
                      rowBytes = src.rowBytes;
                      v40 = dest.rowBytes;
                      if (src.width > 3)
                      {
                        v61 = src.width & 0xFFFFFFFFFFFFFFFCLL;
                        if (src.width > 0xF)
                        {
                          v66 = src.width & 0xFFFFFFFFFFFFFFF0;
                          if (src.width == (src.width & 0xFFFFFFFFFFFFFFF0))
                          {
                            v67 = 0;
                            v68 = (dest.data + 16);
                            v69 = (src.data + 16);
                            v70 = vdupq_n_s32(0x3903126Fu);
                            do
                            {
                              v71 = v69;
                              v72 = v68;
                              v73 = width;
                              do
                              {
                                v74 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(0, v70, vcvtq_f32_u32(vmovl_u16(*v71)))), vmlaq_f32(0, v70, vcvtq_f32_u32(vmovl_high_u16(*v71->i8))));
                                v72[-1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(0, v70, vcvtq_f32_u32(vmovl_u16(v71[-2])))), vmlaq_f32(0, v70, vcvtq_f32_u32(vmovl_high_u16(*v71[-2].i8))));
                                *v72 = v74;
                                v72 += 2;
                                v71 += 4;
                                v73 -= 16;
                              }

                              while (v73);
                              v25 = 0;
                              ++v67;
                              v68 = (v68 + v40);
                              v69 = (v69 + rowBytes);
                            }

                            while (v67 != height);
                          }

                          else
                          {
                            v87 = 0;
                            v88 = (dest.data + 16);
                            v89 = (src.data + 16);
                            v90 = (2 * src.width) & 0xFFFFFFFFFFFFFFE0;
                            v91 = (dest.data + v90);
                            v92 = (src.data + v90);
                            v93 = vdupq_n_s32(0x3903126Fu);
                            do
                            {
                              v94 = v89;
                              v95 = v88;
                              v96 = width & 0xFFFFFFFFFFFFFFF0;
                              do
                              {
                                v97 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(0, v93, vcvtq_f32_u32(vmovl_u16(*v94)))), vmlaq_f32(0, v93, vcvtq_f32_u32(vmovl_high_u16(*v94->i8))));
                                v95[-1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(0, v93, vcvtq_f32_u32(vmovl_u16(v94[-2])))), vmlaq_f32(0, v93, vcvtq_f32_u32(vmovl_high_u16(*v94[-2].i8))));
                                *v95 = v97;
                                v95 += 2;
                                v94 += 4;
                                v96 -= 16;
                              }

                              while (v96);
                              v98 = width & 0xFFFFFFFFFFFFFFF0;
                              if ((width & 0xC) == 0)
                              {
                                goto LABEL_272;
                              }

                              v99 = v92;
                              v100 = v91;
                              v101 = v61 - v66;
                              do
                              {
                                v102 = *v99++;
                                *v100++ = vcvt_f16_f32(vmlaq_f32(0, v93, vcvtq_f32_u32(vmovl_u16(v102))));
                                v101 -= 4;
                              }

                              while (v101);
                              v98 = width & 0xFFFFFFFFFFFFFFFCLL;
                              if (width != v61)
                              {
LABEL_272:
                                v103 = width - v98;
                                v104 = 2 * v98;
                                v105 = &v38[2 * v98];
                                v106 = &data[v104];
                                do
                                {
                                  v107 = *v106;
                                  v106 += 2;
                                  _S2 = (v107 * 0.000125) + 0.0;
                                  __asm { FCVT            H2, S2 }

                                  *v105 = LOWORD(_S2);
                                  v105 += 2;
                                  --v103;
                                }

                                while (v103);
                              }

                              v25 = 0;
                              ++v87;
                              v88 = (v88 + v40);
                              v89 = (v89 + rowBytes);
                              v91 = (v91 + v40);
                              v92 = (v92 + rowBytes);
                              v38 += v40;
                              data += rowBytes;
                            }

                            while (v87 != height);
                          }
                        }

                        else
                        {
                          v62 = src.width - v61;
                          if (src.width == v61)
                          {
                            v63 = (dest.data + 16);
                            v64 = (src.data + 16);
                            v65 = vdupq_n_s32(0x3903126Fu);
                            do
                            {
                              v63[-2] = vcvt_f16_f32(vmlaq_f32(0, v65, vcvtq_f32_u32(vmovl_u16(v64[-2]))));
                              if (width != 4)
                              {
                                v63[-1] = vcvt_f16_f32(vmlaq_f32(0, v65, vcvtq_f32_u32(vmovl_u16(v64[-1]))));
                                if (width != 8)
                                {
                                  *v63 = vcvt_f16_f32(vmlaq_f32(0, v65, vcvtq_f32_u32(vmovl_u16(*v64))));
                                }
                              }

                              v25 = 0;
                              v63 = (v63 + v40);
                              v64 = (v64 + rowBytes);
                              --height;
                            }

                            while (height);
                          }

                          else
                          {
                            v75 = 0;
                            v76 = (2 * src.width) & 0xFFFFFFFFFFFFFFF8;
                            v77 = dest.data + v76;
                            v78 = src.data + v76;
                            v79 = vdupq_n_s32(0x3903126Fu);
                            do
                            {
                              v80 = &data[v75 * rowBytes];
                              v81 = &v38[v75 * v40];
                              *v81 = vcvt_f16_f32(vmlaq_f32(0, v79, vcvtq_f32_u32(vmovl_u16(*v80))));
                              if (v61 != 4)
                              {
                                v81[1] = vcvt_f16_f32(vmlaq_f32(0, v79, vcvtq_f32_u32(vmovl_u16(v80[1]))));
                                if (v61 != 8)
                                {
                                  v81[2] = vcvt_f16_f32(vmlaq_f32(0, v79, vcvtq_f32_u32(vmovl_u16(v80[2]))));
                                }
                              }

                              v82 = v78;
                              v83 = v77;
                              v84 = v62;
                              do
                              {
                                v85 = *v82++;
                                _S3 = (v85 * 0.000125) + 0.0;
                                __asm { FCVT            H3, S3 }

                                *v83++ = LOWORD(_S3);
                                --v84;
                              }

                              while (v84);
                              v25 = 0;
                              ++v75;
                              v77 += v40;
                              v78 += rowBytes;
                            }

                            while (v75 != height);
                          }
                        }
                      }

                      else
                      {
                        v41 = dest.data + 4;
                        v42 = src.data + 4;
                        do
                        {
                          LOWORD(_S2) = *(v42 - 2);
                          _S2 = (LODWORD(_S2) * 0.000125) + 0.0;
                          __asm { FCVT            H2, S2 }

                          *(v41 - 2) = LOWORD(_S2);
                          if (width != 1)
                          {
                            LOWORD(_S2) = *(v42 - 1);
                            _S2 = (LODWORD(_S2) * 0.000125) + 0.0;
                            __asm { FCVT            H2, S2 }

                            *(v41 - 1) = LOWORD(_S2);
                            if (width != 2)
                            {
                              LOWORD(_S2) = *v42;
                              _S2 = (LODWORD(_S2) * 0.000125) + 0.0;
                              __asm { FCVT            H2, S2 }

                              *v41 = LOWORD(_S2);
                            }
                          }

                          v25 = 0;
                          v41 = (v41 + v40);
                          v42 = (v42 + rowBytes);
                          --height;
                        }

                        while (height);
                      }
                    }

                    else
                    {
                      v25 = 0;
                    }

                    goto LABEL_185;
                  }
                }
              }
            }
          }

          else
          {
            if (v22 == 1717855600)
            {
              if (vImageConvert_16UToF(&src, &dest, 0.0, 0.000125, 0))
              {
                v25 = 0xFFFFFFFFLL;
              }

              else
              {
                v25 = 0;
              }

              goto LABEL_185;
            }

            PixelBufferUtils::pixelFormatAsString(v22, __p);
            if (v110 >= 0)
            {
              v48 = __p;
            }

            else
            {
              v48 = __p[0];
            }

            NSLog(&cfstr_SDErrorPixelFo.isa, "convertfp13_3ToDepthMeters", 1813, v22, v48);
            if (v110 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v25 = 0xFFFFFFFFLL;
LABEL_185:
          v49 = v25;
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          CVPixelBufferUnlockBaseAddress(a2, 0);
          return v49;
        }

        goto LABEL_76;
      }

      if (PixelFormatType != 1380401729)
      {
        v27 = 1380410945;
LABEL_75:
        if (PixelFormatType == v27)
        {
          goto LABEL_76;
        }

LABEL_146:
        PixelBufferUtils::pixelFormatAsString(PixelFormatType, &src);
        if ((src.width & 0x8000000000000000) == 0)
        {
          p_src = &src;
        }

        else
        {
          p_src = src.data;
        }

        NSLog(&cfstr_SDErrorPixelFo.isa, "convertPixelBufferFormat", 2330, PixelFormatType, p_src);
        goto LABEL_237;
      }

      goto LABEL_76;
    }

    if (PixelFormatType > 1751411058)
    {
      if (PixelFormatType != 1751411059)
      {
        if (PixelFormatType == 1919365990)
        {

          return convertRGBPlanarFloat(pixelBuffer, a2);
        }

        if (PixelFormatType == 1919365992)
        {

          return convertRGBPlanarHalf(pixelBuffer, a2);
        }

        goto LABEL_146;
      }

LABEL_88:
      if (v8 <= 1717856626)
      {
        if (v8 == 1278226534)
        {
          goto LABEL_110;
        }

        v30 = 25968;
      }

      else
      {
        if (v8 == 1751411059 || v8 == 1751410032)
        {
          v32 = &__block_literal_global_224;
          goto LABEL_138;
        }

        v30 = 26995;
      }

      if (v8 != (v30 | 0x66640000))
      {
        goto LABEL_176;
      }

LABEL_110:
      result = convertFloat16ToFloat32(pixelBuffer, a2);
      if (result != 0 || v19)
      {
        return result;
      }

      v33 = &__block_literal_global_222;
LABEL_112:
      PixelBufferUtils::forEveryPixel(a2, v33, -1);
      return 0;
    }

    if (PixelFormatType != 1717856627)
    {
      v21 = 1751410032;
LABEL_87:
      if (PixelFormatType != v21)
      {
        goto LABEL_146;
      }

      goto LABEL_88;
    }

    goto LABEL_92;
  }

  if (PixelFormatType <= 1094862673)
  {
    if (PixelFormatType <= 875704421)
    {
      if (PixelFormatType != 32)
      {
        if (PixelFormatType == 825437747)
        {
          goto LABEL_58;
        }

        goto LABEL_146;
      }

      goto LABEL_76;
    }

    if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
    {
      goto LABEL_146;
    }

    if (v8 > 1380401728)
    {
      if (v8 <= 1380411456)
      {
        if (v8 == 1380401729)
        {
          goto LABEL_208;
        }

        v34 = 26177;
      }

      else
      {
        if (v8 == 1919365992)
        {

          return createRGBPlanarHalfFromBuffer(pixelBuffer, a2);
        }

        if (v8 == 1919365990)
        {

          return createRGBPlanarFloatFromBuffer(pixelBuffer, a2);
        }

        v34 = 26689;
      }

      v26 = v34 | 0x52470000;
LABEL_207:
      if (v8 == v26)
      {
        goto LABEL_208;
      }

LABEL_229:
      PixelBufferUtils::pixelFormatAsString(v8, &src);
      if ((src.width & 0x8000000000000000) == 0)
      {
        v59 = &src;
      }

      else
      {
        v59 = src.data;
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convertPixelBufferFormat", 2258, v10, v59);
      goto LABEL_237;
    }

    if (v8 <= 875704437)
    {
      if (v8 == 32)
      {
        goto LABEL_208;
      }

      if (v8 != 875704422)
      {
        goto LABEL_229;
      }
    }

    else if (v8 != 875704438)
    {
      if (v8 != 1094862674)
      {
        v26 = 1111970369;
        goto LABEL_207;
      }

LABEL_208:

      return createBGRAPermutesFromYUV(pixelBuffer, v8, a2);
    }

    NSLog(&cfstr_WarningIncorre.isa);
    v53 = *MEMORY[0x277CBF348];
    v54 = *(MEMORY[0x277CBF348] + 8);
    v55 = *MEMORY[0x277CBF3A0];
    v56 = *(MEMORY[0x277CBF3A0] + 8);
    v57 = *(MEMORY[0x277CBF3A0] + 16);
    v58 = *(MEMORY[0x277CBF3A0] + 24);

    return copyPixelBufferMultiPlane(a2, *&v53, pixelBuffer, *&v55);
  }

  if (PixelFormatType > 1278226487)
  {
    if (PixelFormatType == 1278226488)
    {
      if (v8 > 1380401728)
      {
        if (v8 == 1380401729 || v8 == 1380411457)
        {
          goto LABEL_176;
        }

        v43 = 1380410945;
      }

      else
      {
        if (v8 == 32 || v8 == 1094862674)
        {
          goto LABEL_176;
        }

        v43 = 1111970369;
      }

      if (v8 == v43)
      {
        goto LABEL_176;
      }

      PixelBufferUtils::pixelFormatAsString(v8, &src);
      if ((src.width & 0x8000000000000000) == 0)
      {
        v60 = &src;
      }

      else
      {
        v60 = src.data;
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convertPixelBufferFormat", 2323, v10, v60);
      goto LABEL_237;
    }

    if (PixelFormatType != 1278226534)
    {
      v21 = 1278226536;
      goto LABEL_87;
    }

LABEL_92:
    if (v8 > 1717856626)
    {
      if (v8 != 1717856627)
      {
        if (v8 != 1751411059 && v8 != 1751410032)
        {
          goto LABEL_176;
        }

        goto LABEL_105;
      }

LABEL_104:
      v32 = &__block_literal_global_220;
LABEL_138:
      PixelBufferUtils::forEveryPixel(pixelBuffer, a2, v32, 0xFFFFFFFFuLL);
      return 0;
    }

    if (v8 == 1278226536)
    {
LABEL_105:
      result = convertFloat32ToFloat16(pixelBuffer, a2);
      if (result != 0 || v19)
      {
        return result;
      }

      v33 = &__block_literal_global_9430;
      goto LABEL_112;
    }

    if (v8 == 1717855600)
    {
      goto LABEL_104;
    }

LABEL_176:

    return convertGrayscaleAsColor(pixelBuffer, v8, a2);
  }

  if (PixelFormatType != 1094862674)
  {
    v27 = 1111970369;
    goto LABEL_75;
  }

LABEL_76:
  if (v8 > 1380401728)
  {
    if (v8 <= 1380411456)
    {
      if (v8 == 1380401729)
      {
        goto LABEL_122;
      }

      v29 = 26177;
    }

    else
    {
      if (v8 == 1919365992)
      {
        if (PixelFormatType == 1380410945)
        {

          return convert4ChannelToPlanar<float,half>(pixelBuffer, a2);
        }

        else if (PixelFormatType == 1380411457)
        {

          return convert4ChannelToPlanar<half,half>(pixelBuffer, a2);
        }

        else
        {

          return convert4ChannelToPlanar<unsigned char,half>(pixelBuffer, a2);
        }
      }

      if (v8 == 1919365990)
      {
        if (PixelFormatType == 1380410945)
        {

          return convert4ChannelToPlanar<float,float>(pixelBuffer, a2);
        }

        else if (PixelFormatType == 1380411457)
        {

          return convert4ChannelToPlanar<half,float>(pixelBuffer, a2);
        }

        else
        {

          return convert4ChannelToPlanar<unsigned char,float>(pixelBuffer, a2);
        }
      }

      v29 = 26689;
    }

    v28 = v29 | 0x52470000;
LABEL_121:
    if (v8 == v28)
    {
      goto LABEL_122;
    }

    goto LABEL_167;
  }

  if (v8 <= 875704437)
  {
    if (v8 == 32)
    {
      goto LABEL_122;
    }

    if (v8 != 875704422)
    {
LABEL_167:
      if (!PixelBufferUtils::planeCountForPixelFormat(v8) && PixelBufferUtils::componentsPerPixelForPixelFormat(v10, 0) == 1)
      {

        return convertColorToGrayscale(pixelBuffer, a2);
      }

      PixelBufferUtils::pixelFormatAsString(v10, &src);
      if ((src.width & 0x8000000000000000) == 0)
      {
        v52 = &src;
      }

      else
      {
        v52 = src.data;
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convertPixelBufferFormat", 2219, v10, v52);
LABEL_237:
      if (SHIBYTE(src.width) < 0)
      {
        operator delete(src.data);
      }

      return 0xFFFFFFFFLL;
    }
  }

  else if (v8 != 875704438)
  {
    if (v8 != 1094862674)
    {
      v28 = 1111970369;
      goto LABEL_121;
    }

LABEL_122:

    return convert4ChannelFormats(pixelBuffer, v8, a2);
  }

  return YUVFromBGRAPermutes(pixelBuffer, a2, v9);
}

void sub_2403E1C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 57) < 0)
  {
    operator delete(*(v19 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t copyPixelBufferVImage(__CVBuffer *a1, CGPoint a2, __CVBuffer *a3, CGRect a4)
{
  if (a1 == a3)
  {
    return 0;
  }

  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a2.y;
  v10 = a2.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a1))
  {
    return 0xFFFFFFFFLL;
  }

  if (!CVPixelBufferGetPlaneCount(a3))
  {
    v20 = CVPixelBufferGetPixelFormatType(a3);
    CVPixelBufferLockBaseAddress(a1, 0);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    memset(&src, 0, sizeof(src));
    v21 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &src);
    memset(&dest, 0, sizeof(dest));
    PixelBufferUtils::asVImageBuffer(a1, *v21, &dest);
    v22 = PixelBufferUtils::pixelSizeForPixelFormat(v20, 0);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    IsEmpty = CGRectIsEmpty(v33);
    v24 = src.width;
    if (IsEmpty)
    {
      v25 = src.height;
    }

    else
    {
      if (x >= src.width || y >= src.height)
      {
        goto LABEL_29;
      }

      if (width > src.width || height > src.height)
      {
        goto LABEL_29;
      }

      v24 = width;
      v25 = height;
      src.data = src.data + src.rowBytes * y + v22 * x;
      src.height = height;
      src.width = width;
    }

    v26 = v24;
    v27 = v25;
    v34.origin.x = v10;
    v34.origin.y = v9;
    v34.size.width = v24;
    v34.size.height = v25;
    if (CGRectIsEmpty(v34))
    {
LABEL_11:
      vImageCopyBuffer(&src, &dest, v22, 0);
      CVPixelBufferUnlockBaseAddress(a1, 0);
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
      return 0;
    }

    if (v10 < dest.width && v9 < dest.height && v26 <= dest.width && v27 <= dest.height)
    {
      dest.data = dest.data + dest.rowBytes * v9 + v22 * v10;
      dest.height = v27;
      dest.width = v26;
      goto LABEL_11;
    }

LABEL_29:
    NSLog(&cfstr_SDErrorRegionI.isa, "updateVImageBufferToRegion", 2037);
    return 0xFFFFFFFFLL;
  }

  v13 = v10;
  v14 = v9;
  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;

  return copyPixelBufferMultiPlane(a1, *&v13, a3, *&v15);
}

uint64_t convert4ChannelFormats(__CVBuffer *a1, int a2, __CVBuffer *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = RGBA_FORMAT_MAP();
  LODWORD(v86.data) = a2;
  HIDWORD(v86.data) = PixelFormatType;
  src.data = &v86;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v86.data);
  v9 = v8[3];
  v10 = *(v8 + 8);
  CVPixelBufferLockBaseAddress(a3, 0);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  memset(&src, 0, sizeof(src));
  v11 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &src);
  memset(&v86, 0, sizeof(v86));
  PixelBufferUtils::asVImageBuffer(a3, *v11, &v86);
  maxFloat = xmmword_2404070B0;
  minFloat[0] = 0;
  minFloat[1] = 0;
  v13 = -1;
  if (v10 > 3)
  {
    if (v10 > 5)
    {
      if (v10 == 6)
      {
        height = src.height;
        if (src.height != v86.height)
        {
          goto LABEL_60;
        }

        width = src.width;
        if (src.width != v86.width)
        {
          goto LABEL_60;
        }

        if (!src.height || !src.width)
        {
          goto LABEL_59;
        }

        v72 = 0;
        rowBytes = v86.rowBytes;
        data = src.data;
        v75 = src.rowBytes;
        v76 = v86.data;
        do
        {
          v77 = &data[v72 * v75];
          v78 = width;
          v79 = &v76[v72 * rowBytes];
          do
          {
            _H0 = *v77;
            __asm { FCVT            S0, H0 }

            *&v79[4 * *v9] = _S0;
            LOWORD(_S0) = *(v77 + 1);
            __asm { FCVT            S0, H0 }

            *&v79[4 * v9[1]] = _S0;
            LOWORD(_S0) = *(v77 + 2);
            __asm { FCVT            S0, H0 }

            *&v79[4 * v9[2]] = _S0;
            LOWORD(_S0) = *(v77 + 3);
            __asm { FCVT            S0, H0 }

            *&v79[4 * v9[3]] = _S0;
            v77 += 8;
            v79 += 16;
            --v78;
          }

          while (v78);
          v13 = 0;
          ++v72;
        }

        while (v72 != height);
      }

      else
      {
        if (v10 != 7)
        {
          goto LABEL_60;
        }

        v46 = src.height;
        if (*&src.height != *&v86.height)
        {
          goto LABEL_60;
        }

        if (!src.height || !src.width)
        {
          goto LABEL_59;
        }

        v47 = 0;
        v48 = 1;
        do
        {
          if (v48)
          {
            v49 = 0;
            v50 = v86.data + v86.rowBytes * v47;
            v51 = (src.data + src.rowBytes * v47);
            do
            {
              _H0 = *v51;
              __asm { FCVT            S0, H0 }

              v50[*v9] = (_S0 * 255.0);
              LOWORD(_S0) = v51[1];
              __asm { FCVT            S0, H0 }

              v50[v9[1]] = (_S0 * 255.0);
              LOWORD(_S0) = v51[2];
              __asm { FCVT            S0, H0 }

              v50[v9[2]] = (_S0 * 255.0);
              LOWORD(_S0) = v51[3];
              __asm { FCVT            S0, H0 }

              v50[v9[3]] = (_S0 * 255.0);
              ++v49;
              v51 += 4;
              v50 += 4;
              v48 = src.width;
            }

            while (v49 < src.width);
            v46 = src.height;
          }

          v13 = 0;
          ++v47;
        }

        while (v47 < v46);
      }
    }

    else
    {
      if (v10 == 4)
      {
        v45 = vImagePermuteChannels_ARGBFFFF(&src, &v86, v9, 0);
        goto LABEL_40;
      }

      v27 = src.height;
      if (src.height != v86.height)
      {
        goto LABEL_60;
      }

      v28 = src.width;
      if (src.width != v86.width)
      {
        goto LABEL_60;
      }

      if (!src.height || !src.width)
      {
        goto LABEL_59;
      }

      v29 = 0;
      v31 = v86.rowBytes;
      v30 = src.data;
      v32 = src.rowBytes;
      v33 = v86.data;
      do
      {
        v34 = &v30[v29 * v32];
        v35 = v28;
        v36 = &v33[v29 * v31];
        do
        {
          _S0 = *v34;
          __asm { FCVT            H0, S0 }

          *&v36[2 * *v9] = _S0;
          _S0 = *(v34 + 1);
          __asm { FCVT            H0, S0 }

          *&v36[2 * v9[1]] = _S0;
          _S0 = *(v34 + 2);
          __asm { FCVT            H0, S0 }

          *&v36[2 * v9[2]] = _S0;
          _S0 = *(v34 + 3);
          __asm { FCVT            H0, S0 }

          *&v36[2 * v9[3]] = _S0;
          v34 += 16;
          v36 += 8;
          --v35;
        }

        while (v35);
        v13 = 0;
        ++v29;
      }

      while (v29 != v27);
    }
  }

  else
  {
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_60;
        }

        v14 = src.height;
        if (src.height != v86.height)
        {
          goto LABEL_60;
        }

        v15 = src.width;
        if (src.width != v86.width)
        {
          goto LABEL_60;
        }

        if (src.height && src.width)
        {
          v16 = 0;
          v18 = v86.rowBytes;
          v17 = src.data;
          v19 = src.rowBytes;
          v20 = v86.data;
          do
          {
            v21 = &v17[v16 * v19];
            v22 = v15;
            v23 = &v20[v16 * v18];
            do
            {
              LOBYTE(_S1) = *v21;
              *&v24 = LODWORD(_S1) * 0.0039216;
              *&v23[4 * *v9] = *&v24;
              LOBYTE(v24) = v21[1];
              *&v25 = v24 * 0.0039216;
              *&v23[4 * v9[1]] = *&v25;
              LOBYTE(v25) = v21[2];
              *&v26 = v25 * 0.0039216;
              *&v23[4 * v9[2]] = *&v26;
              LOBYTE(v26) = v21[3];
              _S1 = v26 * 0.0039216;
              *&v23[4 * v9[3]] = _S1;
              v21 += 4;
              v23 += 16;
              --v22;
            }

            while (v22);
            v13 = 0;
            ++v16;
          }

          while (v16 != v14);
          goto LABEL_60;
        }

LABEL_59:
        v13 = 0;
        goto LABEL_60;
      }

      v45 = vImagePermuteChannels_ARGB8888(&src, &v86, v9, 0);
LABEL_40:
      v13 = v45;
      goto LABEL_60;
    }

    if (v10 != 2)
    {
      v45 = vImageConvert_ARGBFFFFtoARGB8888_dithered(&src, &v86, &maxFloat, minFloat, 0, v9, 0);
      goto LABEL_40;
    }

    v57 = src.height;
    if (src.height != v86.height)
    {
      goto LABEL_60;
    }

    v58 = src.width;
    if (src.width != v86.width)
    {
      goto LABEL_60;
    }

    if (!src.height || !src.width)
    {
      goto LABEL_59;
    }

    v59 = 0;
    v61 = v86.rowBytes;
    v60 = src.data;
    v62 = src.rowBytes;
    v63 = v86.data;
    do
    {
      v64 = &v60[v59 * v62];
      v65 = v58;
      v66 = &v63[v59 * v61];
      do
      {
        LOBYTE(_S1) = *v64;
        *&_S1 = LODWORD(_S1) * 0.0039216;
        __asm { FCVT            H1, S1 }

        *&v66[2 * *v9] = _S1;
        LOBYTE(_S1) = v64[1];
        *&_S1 = _S1 * 0.0039216;
        __asm { FCVT            H1, S1 }

        *&v66[2 * v9[1]] = _S1;
        LOBYTE(_S1) = v64[2];
        *&_S1 = _S1 * 0.0039216;
        __asm { FCVT            H1, S1 }

        *&v66[2 * v9[2]] = _S1;
        LOBYTE(_S1) = v64[3];
        _S1 = _S1 * 0.0039216;
        __asm { FCVT            H1, S1 }

        *&v66[2 * v9[3]] = LOWORD(_S1);
        v64 += 4;
        v66 += 8;
        --v65;
      }

      while (v65);
      v13 = 0;
      ++v59;
    }

    while (v59 != v57);
  }

LABEL_60:
  CVPixelBufferUnlockBaseAddress(a3, 0);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  if (v13)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL YUVFromBGRAPermutes(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType == 1380411457 || (v6 = PixelFormatType, PixelFormatType == 1380410945))
  {
    v6 = 1111970369;
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    pixelBufferOut.data = 0;
    v9 = *MEMORY[0x277CBECE8];
    BufferAttributes = getBufferAttributes();
    if (CVPixelBufferCreate(v9, Width, Height, 0x42475241u, BufferAttributes, &pixelBufferOut))
    {
      data = 0;
    }

    else
    {
      data = pixelBufferOut.data;
    }

    v12 = convert4ChannelFormats(a1, 1111970369, data);
  }

  else
  {
    v12 = 0;
    data = a1;
  }

  v13 = RGBA_FORMAT_MAP();
  destYp.data = ((v6 << 32) | 0x20);
  pixelBufferOut.data = &destYp;
  v14 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v13, destYp.data)[3];
  CVPixelBufferLockBaseAddress(a2, 0);
  CVPixelBufferLockBaseAddress(data, 1uLL);
  memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
  v15 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(data, *MEMORY[0x277CBF3A0], &pixelBufferOut);
  memset(&destYp, 0, sizeof(destYp));
  PixelBufferUtils::asVImageBuffer(a2, 0, *v15, &destYp);
  memset(&destCbCr, 0, sizeof(destCbCr));
  PixelBufferUtils::asVImageBuffer(a2, 1, *v15, &destCbCr);
  if ((YUVFromBGRAPermutes(__CVBuffer *,unsigned int,__CVBuffer *)::isConvesionInfoDefined & 1) == 0)
  {
    v18 = *ymmword_240407E24;
    v12 = vImageConvert_ARGBToYpCbCr_GenerateConversion(*MEMORY[0x277CB86D0], &v18, &YUVFromBGRAPermutes(__CVBuffer *,unsigned int,__CVBuffer *)::conversionInfo, kvImageARGB8888, kvImage420Yp8_CbCr8, 0);
    YUVFromBGRAPermutes(__CVBuffer *,unsigned int,__CVBuffer *)::isConvesionInfoDefined = 1;
  }

  if (v12)
  {
    v16 = 1;
  }

  else
  {
    v16 = vImageConvert_ARGB8888To420Yp8_CbCr8(&pixelBufferOut, &destYp, &destCbCr, &YUVFromBGRAPermutes(__CVBuffer *,unsigned int,__CVBuffer *)::conversionInfo, v14, 0) != 0;
  }

  CVPixelBufferUnlockBaseAddress(data, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  if (CVPixelBufferGetPixelFormatType(a1) == 1380410945)
  {
    CVPixelBufferRelease(data);
  }

  return v16;
}

uint64_t convert4ChannelToPlanar<half,float>(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v81.data) = v5;
      HIDWORD(v81.data) = PixelFormatType;
      __p.data = &v81;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v81.data);
      v9 = v8[3];
      v10 = *(v8 + 8) - 1;
      v11 = 1.0;
      if (v10 <= 6)
      {
        v11 = flt_240407E44[v10];
      }

      v79 = v11;
      memset(&__p, 0, sizeof(__p));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &__p);
      v82 = 0;
      v14 = *v9;
      if (v6 <= v14)
      {
        rowBytes = 0;
        data = &v82;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v14, *v12, &v81);
        data = v81.data;
        rowBytes = v81.rowBytes;
      }

      pixelBuffer = a1;
      v20 = v9[1];
      if (v6 <= v20)
      {
        v22 = 0;
        v21 = &v82;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v20, *v12, &v81);
        v21 = v81.data;
        v22 = v81.rowBytes;
      }

      v23 = v9[2];
      if (v6 <= v23)
      {
        v25 = 0;
        v24 = &v82;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v23, *v12, &v81);
        v24 = v81.data;
        v25 = v81.rowBytes;
      }

      v26 = v9[3];
      if (v6 <= v26)
      {
        v28 = 0;
        v27 = &v82;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v26, *v12, &v81);
        v27 = v81.data;
        v28 = v81.rowBytes;
      }

      height = __p.height;
      if (__p.height)
      {
        width = __p.width;
        if (__p.width)
        {
          v31 = 0;
          v32 = __p.width & 0xFFFFFFFFFFFFFFFELL;
          v33 = __p.data;
          v34 = __p.rowBytes;
          v35 = (__p.data + 8);
          v36 = (__p.data + 10);
          v37 = (__p.data + 12);
          v38 = (__p.data + 14);
          v39 = v27;
          v40 = v24;
          v41 = v21;
          v42 = data;
          while (1)
          {
            if (&data->i8[rowBytes * v31] == &v82)
            {
              goto LABEL_41;
            }

            if (width == 1)
            {
              break;
            }

            v44 = v35;
            v45 = v42;
            v46 = width & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v13.i16[0] = *(v44 - 4);
              v13.i16[1] = *v44;
              v13 = vmul_n_f32(*&vcvtq_f32_f16(v13), v79);
              *v45++ = v13;
              v44 += 8;
              v46 -= 2;
            }

            while (v46);
            v43 = width & 0xFFFFFFFFFFFFFFFELL;
            if (width != v32)
            {
              goto LABEL_39;
            }

LABEL_41:
            if (&v21->i8[v22 * v31] == &v82)
            {
              goto LABEL_49;
            }

            if (width == 1)
            {
              v55 = 0;
LABEL_47:
              v59 = width - v55;
              v60 = 4 * v55;
              do
              {
                _H0 = *&v33[2 * v60 + 2];
                __asm { FCVT            S0, H0 }

                *&v41->i32[v60 / 4] = v79 * _S0;
                v60 += 4;
                --v59;
              }

              while (v59);
              goto LABEL_49;
            }

            v56 = v36;
            v57 = v41;
            v58 = width & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v13.i16[0] = *(v56 - 4);
              v13.i16[1] = *v56;
              v13 = vmul_n_f32(*&vcvtq_f32_f16(v13), v79);
              *v57++ = v13;
              v56 += 8;
              v58 -= 2;
            }

            while (v58);
            v55 = width & 0xFFFFFFFFFFFFFFFELL;
            if (width != v32)
            {
              goto LABEL_47;
            }

LABEL_49:
            if (&v24->i8[v25 * v31] == &v82)
            {
              goto LABEL_57;
            }

            if (width == 1)
            {
              v63 = 0;
LABEL_55:
              v67 = width - v63;
              v68 = 4 * v63;
              do
              {
                _H0 = *&v33[2 * v68 + 4];
                __asm { FCVT            S0, H0 }

                *&v40->i32[v68 / 4] = v79 * _S0;
                v68 += 4;
                --v67;
              }

              while (v67);
              goto LABEL_57;
            }

            v64 = v37;
            v65 = v40;
            v66 = width & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v13.i16[0] = *(v64 - 4);
              v13.i16[1] = *v64;
              v13 = vmul_n_f32(*&vcvtq_f32_f16(v13), v79);
              *v65++ = v13;
              v64 += 8;
              v66 -= 2;
            }

            while (v66);
            v63 = width & 0xFFFFFFFFFFFFFFFELL;
            if (width != v32)
            {
              goto LABEL_55;
            }

LABEL_57:
            if (&v27->i8[v28 * v31] != &v82)
            {
              if (width == 1)
              {
                v71 = 0;
              }

              else
              {
                v72 = v38;
                v73 = v39;
                v74 = width & 0xFFFFFFFFFFFFFFFELL;
                do
                {
                  v13.i16[0] = *(v72 - 4);
                  v13.i16[1] = *v72;
                  v13 = vmul_n_f32(*&vcvtq_f32_f16(v13), v79);
                  *v73++ = v13;
                  v72 += 8;
                  v74 -= 2;
                }

                while (v74);
                v71 = width & 0xFFFFFFFFFFFFFFFELL;
                if (width == v32)
                {
                  goto LABEL_32;
                }
              }

              v75 = width - v71;
              v76 = 4 * v71;
              do
              {
                _H0 = *&v33[2 * v76 + 6];
                __asm { FCVT            S0, H0 }

                *&v39->i32[v76 / 4] = v79 * _S0;
                v76 += 4;
                --v75;
              }

              while (v75);
            }

LABEL_32:
            ++v31;
            v42 = (v42 + rowBytes);
            v35 = (v35 + v34);
            v33 += v34;
            v41 = (v41 + v22);
            v36 = (v36 + v34);
            v40 = (v40 + v25);
            v37 = (v37 + v34);
            v39 = (v39 + v28);
            v38 = (v38 + v34);
            if (v31 == height)
            {
              goto LABEL_66;
            }
          }

          v43 = 0;
LABEL_39:
          v47 = width - v43;
          v48 = 4 * v43;
          do
          {
            _H0 = *&v33[2 * v48];
            __asm { FCVT            S0, H0 }

            *&v42->i32[v48 / 4] = v79 * _S0;
            v48 += 4;
            --v47;
          }

          while (v47);
          goto LABEL_41;
        }
      }

LABEL_66:
      CVPixelBufferUnlockBaseAddress(a2, 0);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      return 0;
    }

    else
    {
      PixelBufferUtils::pixelFormatAsString(v5, &__p);
      if ((__p.width & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.data;
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1376, v5, p_p);
      if (SHIBYTE(__p.width) < 0)
      {
        operator delete(__p.data);
      }

      return 4294967294;
    }
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1370, PixelFormatType, v17);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_2403E2C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<float,float>(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v51.data) = v5;
      HIDWORD(v51.data) = PixelFormatType;
      __p.data = &v51;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v51.data);
      v9 = v8[3];
      v10 = *(v8 + 8) - 1;
      v11 = 1.0;
      if (v10 <= 6)
      {
        v11 = flt_240407E44[v10];
      }

      memset(&__p, 0, sizeof(__p));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &__p);
      v52 = 0;
      v13 = *v9;
      if (v6 <= v13)
      {
        rowBytes = 0;
        data = &v52;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v13, *v12, &v51);
        data = v51.data;
        rowBytes = v51.rowBytes;
      }

      pixelBuffer = a1;
      v19 = v9[1];
      if (v6 <= v19)
      {
        v21 = 0;
        v20 = &v52;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v19, *v12, &v51);
        v20 = v51.data;
        v21 = v51.rowBytes;
      }

      v22 = v9[2];
      if (v6 <= v22)
      {
        v24 = 0;
        v23 = &v52;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v22, *v12, &v51);
        v23 = v51.data;
        v24 = v51.rowBytes;
      }

      v25 = v9[3];
      if (v6 <= v25)
      {
        v27 = 0;
        v26 = &v52;
        height = __p.height;
        if (!__p.height)
        {
LABEL_46:
          CVPixelBufferUnlockBaseAddress(a2, 0);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          return 0;
        }
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v25, *v12, &v51);
        v26 = v51.data;
        v27 = v51.rowBytes;
        height = __p.height;
        if (!__p.height)
        {
          goto LABEL_46;
        }
      }

      width = __p.width;
      if (__p.width)
      {
        v30 = 0;
        v31 = __p.data;
        v32 = __p.rowBytes;
        v33 = v26;
        v34 = v23;
        v35 = v20;
        v36 = data;
        do
        {
          if ((data + rowBytes * v30) != &v52)
          {
            v37 = v31;
            v38 = v36;
            v39 = width;
            do
            {
              v40 = *v37;
              v37 += 4;
              *v38++ = v11 * v40;
              --v39;
            }

            while (v39);
          }

          if ((v20 + v21 * v30) != &v52)
          {
            v41 = 1;
            v42 = v35;
            v43 = width;
            do
            {
              *v42++ = v11 * v31[v41];
              v41 += 4;
              --v43;
            }

            while (v43);
          }

          if ((v23 + v24 * v30) != &v52)
          {
            v44 = 2;
            v45 = v34;
            v46 = width;
            do
            {
              *v45++ = v11 * v31[v44];
              v44 += 4;
              --v46;
            }

            while (v46);
          }

          if ((v26 + v27 * v30) != &v52)
          {
            v47 = 3;
            v48 = v33;
            v49 = width;
            do
            {
              *v48++ = v11 * v31[v47];
              v47 += 4;
              --v49;
            }

            while (v49);
          }

          ++v30;
          v36 = (v36 + rowBytes);
          v31 = (v31 + v32);
          v35 = (v35 + v21);
          v34 = (v34 + v24);
          v33 = (v33 + v27);
        }

        while (v30 != height);
      }

      goto LABEL_46;
    }

    PixelBufferUtils::pixelFormatAsString(v5, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1376, v5, p_p);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 4294967294;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1370, PixelFormatType, v16);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_2403E3030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<unsigned char,float>(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v52.data) = v5;
      HIDWORD(v52.data) = PixelFormatType;
      __p.data = &v52;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v52.data);
      v9 = v8[3];
      v10 = *(v8 + 8) - 1;
      v11 = 1.0;
      if (v10 <= 6)
      {
        v11 = flt_240407E44[v10];
      }

      memset(&__p, 0, sizeof(__p));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &__p);
      v53 = 0;
      v14 = *v9;
      if (v6 <= v14)
      {
        rowBytes = 0;
        data = &v53;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v14, *v12, &v52);
        data = v52.data;
        rowBytes = v52.rowBytes;
      }

      pixelBuffer = a1;
      v20 = v9[1];
      if (v6 <= v20)
      {
        v22 = 0;
        v21 = &v53;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v20, *v12, &v52);
        v21 = v52.data;
        v22 = v52.rowBytes;
      }

      v23 = v9[2];
      if (v6 <= v23)
      {
        v25 = 0;
        v24 = &v53;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v23, *v12, &v52);
        v24 = v52.data;
        v25 = v52.rowBytes;
      }

      v26 = v9[3];
      if (v6 <= v26)
      {
        v28 = 0;
        v27 = &v53;
        height = __p.height;
        if (!__p.height)
        {
LABEL_46:
          CVPixelBufferUnlockBaseAddress(a2, 0);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          return 0;
        }
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v26, *v12, &v52);
        v27 = v52.data;
        v28 = v52.rowBytes;
        height = __p.height;
        if (!__p.height)
        {
          goto LABEL_46;
        }
      }

      width = __p.width;
      if (__p.width)
      {
        v31 = 0;
        v32 = __p.data;
        v33 = __p.rowBytes;
        v34 = v27;
        v35 = v24;
        v36 = v21;
        v37 = data;
        do
        {
          if ((data + rowBytes * v31) != &v53)
          {
            v38 = v32;
            v39 = v37;
            v40 = width;
            do
            {
              v41 = *v38;
              v38 += 4;
              v13 = v11 * v41;
              *v39++ = v13;
              --v40;
            }

            while (v40);
          }

          if ((v21 + v22 * v31) != &v53)
          {
            v42 = 1;
            v43 = v36;
            v44 = width;
            do
            {
              LOBYTE(v13) = v32[v42];
              v13 = v11 * LODWORD(v13);
              *v43++ = v13;
              v42 += 4;
              --v44;
            }

            while (v44);
          }

          if ((v24 + v25 * v31) != &v53)
          {
            v45 = 2;
            v46 = v35;
            v47 = width;
            do
            {
              LOBYTE(v13) = v32[v45];
              v13 = v11 * LODWORD(v13);
              *v46++ = v13;
              v45 += 4;
              --v47;
            }

            while (v47);
          }

          if ((v27 + v28 * v31) != &v53)
          {
            v48 = 3;
            v49 = v34;
            v50 = width;
            do
            {
              LOBYTE(v13) = v32[v48];
              v13 = v11 * LODWORD(v13);
              *v49++ = v13;
              v48 += 4;
              --v50;
            }

            while (v50);
          }

          ++v31;
          v37 = (v37 + rowBytes);
          v32 += v33;
          v36 = (v36 + v22);
          v35 = (v35 + v25);
          v34 = (v34 + v28);
        }

        while (v31 != height);
      }

      goto LABEL_46;
    }

    PixelBufferUtils::pixelFormatAsString(v5, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1376, v5, p_p);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 4294967294;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1370, PixelFormatType, v17);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_2403E3428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<half,half>(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v67.data) = v5;
      HIDWORD(v67.data) = PixelFormatType;
      __p.data = &v67;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v67.data);
      v9 = v8[3];
      v10 = *(v8 + 8) - 1;
      v11 = 1.0;
      if (v10 <= 6)
      {
        v11 = flt_240407E44[v10];
      }

      memset(&__p, 0, sizeof(__p));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &__p);
      v68 = 0;
      v13 = *v9;
      if (v6 <= v13)
      {
        rowBytes = 0;
        data = &v68;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v13, *v12, &v67);
        data = v67.data;
        rowBytes = v67.rowBytes;
      }

      pixelBuffer = a1;
      v19 = v9[1];
      if (v6 <= v19)
      {
        v21 = 0;
        v20 = &v68;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v19, *v12, &v67);
        v20 = v67.data;
        v21 = v67.rowBytes;
      }

      v22 = v9[2];
      if (v6 <= v22)
      {
        v24 = 0;
        v23 = &v68;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v22, *v12, &v67);
        v23 = v67.data;
        v24 = v67.rowBytes;
      }

      v25 = v9[3];
      if (v6 <= v25)
      {
        v27 = 0;
        v26 = &v68;
        height = __p.height;
        if (!__p.height)
        {
LABEL_46:
          CVPixelBufferUnlockBaseAddress(a2, 0);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          return 0;
        }
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v25, *v12, &v67);
        v26 = v67.data;
        v27 = v67.rowBytes;
        height = __p.height;
        if (!__p.height)
        {
          goto LABEL_46;
        }
      }

      width = __p.width;
      if (__p.width)
      {
        v30 = 0;
        v31 = __p.data;
        v32 = __p.rowBytes;
        v33 = v26;
        v34 = v23;
        v35 = v20;
        v36 = data;
        do
        {
          if ((data + rowBytes * v30) != &v68)
          {
            v37 = v31;
            v38 = v36;
            v39 = width;
            do
            {
              v40 = *v37;
              v37 += 4;
              _H0 = v40;
              __asm { FCVT            S0, H0 }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v38++ = LOWORD(_S0);
              --v39;
            }

            while (v39);
          }

          if ((v20 + v21 * v30) != &v68)
          {
            v48 = 2;
            v49 = v35;
            v50 = width;
            do
            {
              _H0 = *&v31[v48];
              __asm { FCVT            S0, H0 }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v49++ = LOWORD(_S0);
              v48 += 8;
              --v50;
            }

            while (v50);
          }

          if ((v23 + v24 * v30) != &v68)
          {
            v54 = 4;
            v55 = v34;
            v56 = width;
            do
            {
              _H0 = *&v31[v54];
              __asm { FCVT            S0, H0 }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v55++ = LOWORD(_S0);
              v54 += 8;
              --v56;
            }

            while (v56);
          }

          if ((v26 + v27 * v30) != &v68)
          {
            v60 = 6;
            v61 = v33;
            v62 = width;
            do
            {
              _H0 = *&v31[v60];
              __asm { FCVT            S0, H0 }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v61++ = LOWORD(_S0);
              v60 += 8;
              --v62;
            }

            while (v62);
          }

          ++v30;
          v36 = (v36 + rowBytes);
          v31 += v32;
          v35 = (v35 + v21);
          v34 = (v34 + v24);
          v33 = (v33 + v27);
        }

        while (v30 != height);
      }

      goto LABEL_46;
    }

    PixelBufferUtils::pixelFormatAsString(v5, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1376, v5, p_p);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 4294967294;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1370, PixelFormatType, v16);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_2403E3834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<float,half>(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v120.data) = v5;
      HIDWORD(v120.data) = PixelFormatType;
      __p.data = &v120;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v120.data);
      v9 = v8[3];
      v10 = *(v8 + 8) - 1;
      v11 = 1.0;
      if (v10 <= 6)
      {
        v11 = flt_240407E44[v10];
      }

      memset(&__p, 0, sizeof(__p));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &__p);
      v121 = 0;
      v13 = *v9;
      if (v6 <= v13)
      {
        rowBytes = 0;
        data = &v121;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v13, *v12, &v120);
        data = v120.data;
        rowBytes = v120.rowBytes;
      }

      v18 = v9[1];
      if (v6 <= v18)
      {
        v19 = 0;
        v118 = &v121;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v18, *v12, &v120);
        v118 = v120.data;
        v19 = v120.rowBytes;
      }

      v20 = v9[2];
      if (v6 <= v20)
      {
        v22 = 0;
        v21 = &v121;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v20, *v12, &v120);
        v21 = v120.data;
        v22 = v120.rowBytes;
      }

      v23 = v9[3];
      pixelBuffer = a2;
      if (v6 <= v23)
      {
        v25 = 0;
        v24 = &v121;
        height = __p.height;
        if (!__p.height)
        {
          goto LABEL_66;
        }
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v23, *v12, &v120);
        v24 = v120.data;
        v25 = v120.rowBytes;
        height = __p.height;
        if (!__p.height)
        {
          goto LABEL_66;
        }
      }

      width = __p.width;
      if (__p.width)
      {
        v28 = 0;
        v29 = __p.width & 0xFFFFFFFFFFFFFFFELL;
        v31 = v118;
        v30 = data;
        v32 = data + 1;
        v33 = __p.data;
        v34 = __p.rowBytes;
        v35 = __p.data + 16;
        v36 = __p.data + 20;
        v37 = v118 + 1;
        v38 = __p.data + 24;
        v39 = v21 + 1;
        v40 = __p.data + 28;
        v41 = v24 + 1;
        v42 = v24;
        v43 = v21;
        while (1)
        {
          if ((data + rowBytes * v28) == &v121)
          {
            goto LABEL_41;
          }

          if (width == 1)
          {
            break;
          }

          v45 = v35;
          v46 = v32;
          v47 = width & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            _S0 = *(v45 - 4);
            v49 = *v45;
            v45 += 8;
            _S1 = v49;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
              FCVT            S0, H0
              FCVT            S1, H1
            }

            _S0 = v11 * _S0;
            _S1 = v11 * _S1;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
            }

            *(v46 - 1) = LOWORD(_S0);
            *v46 = LOWORD(_S1);
            v46 += 2;
            v47 -= 2;
          }

          while (v47);
          v44 = width & 0xFFFFFFFFFFFFFFFELL;
          if (width != v29)
          {
            goto LABEL_39;
          }

LABEL_41:
          if ((v118 + v19 * v28) == &v121)
          {
            goto LABEL_49;
          }

          if (width == 1)
          {
            v66 = 0;
LABEL_47:
            v77 = width - v66;
            v78 = &v31[v66];
            v79 = (16 * v66) | 4;
            do
            {
              _S0 = *&v33[v79];
              __asm
              {
                FCVT            H0, S0
                FCVT            S0, H0
              }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v78++ = LOWORD(_S0);
              v79 += 16;
              --v77;
            }

            while (v77);
            goto LABEL_49;
          }

          v67 = v37;
          v68 = v36;
          v69 = width & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            _S0 = *(v68 - 4);
            v71 = *v68;
            v68 += 8;
            _S1 = v71;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
              FCVT            S0, H0
              FCVT            S1, H1
            }

            _S0 = v11 * _S0;
            _S1 = v11 * _S1;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
            }

            *(v67 - 1) = LOWORD(_S0);
            *v67 = LOWORD(_S1);
            v67 += 2;
            v69 -= 2;
          }

          while (v69);
          v66 = width & 0xFFFFFFFFFFFFFFFELL;
          if (width != v29)
          {
            goto LABEL_47;
          }

LABEL_49:
          if ((v21 + v22 * v28) == &v121)
          {
            goto LABEL_57;
          }

          if (width == 1)
          {
            v83 = 0;
LABEL_55:
            v94 = width - v83;
            v95 = &v43[v83];
            v96 = (16 * v83) | 8;
            do
            {
              _S0 = *&v33[v96];
              __asm
              {
                FCVT            H0, S0
                FCVT            S0, H0
              }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v95++ = LOWORD(_S0);
              v96 += 16;
              --v94;
            }

            while (v94);
            goto LABEL_57;
          }

          v84 = v39;
          v85 = v38;
          v86 = width & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            _S0 = *(v85 - 4);
            v88 = *v85;
            v85 += 8;
            _S1 = v88;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
              FCVT            S0, H0
              FCVT            S1, H1
            }

            _S0 = v11 * _S0;
            _S1 = v11 * _S1;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
            }

            *(v84 - 1) = LOWORD(_S0);
            *v84 = LOWORD(_S1);
            v84 += 2;
            v86 -= 2;
          }

          while (v86);
          v83 = width & 0xFFFFFFFFFFFFFFFELL;
          if (width != v29)
          {
            goto LABEL_55;
          }

LABEL_57:
          if ((v24 + v25 * v28) != &v121)
          {
            if (width == 1)
            {
              v100 = 0;
            }

            else
            {
              v101 = v41;
              v102 = v40;
              v103 = width & 0xFFFFFFFFFFFFFFFELL;
              do
              {
                _S0 = *(v102 - 4);
                v105 = *v102;
                v102 += 8;
                _S1 = v105;
                __asm
                {
                  FCVT            H0, S0
                  FCVT            H1, S1
                  FCVT            S0, H0
                  FCVT            S1, H1
                }

                _S0 = v11 * _S0;
                _S1 = v11 * _S1;
                __asm
                {
                  FCVT            H0, S0
                  FCVT            H1, S1
                }

                *(v101 - 1) = LOWORD(_S0);
                *v101 = LOWORD(_S1);
                v101 += 2;
                v103 -= 2;
              }

              while (v103);
              v100 = width & 0xFFFFFFFFFFFFFFFELL;
              if (width == v29)
              {
                goto LABEL_32;
              }
            }

            v111 = width - v100;
            v112 = &v42[v100];
            v113 = (16 * v100) | 0xC;
            do
            {
              _S0 = *&v33[v113];
              __asm
              {
                FCVT            H0, S0
                FCVT            S0, H0
              }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v112++ = LOWORD(_S0);
              v113 += 16;
              --v111;
            }

            while (v111);
          }

LABEL_32:
          ++v28;
          v32 = (v32 + rowBytes);
          v35 += v34;
          v30 = (v30 + rowBytes);
          v33 += v34;
          v36 += v34;
          v37 = (v37 + v19);
          v31 = (v31 + v19);
          v38 += v34;
          v39 = (v39 + v22);
          v43 = (v43 + v22);
          v40 += v34;
          v41 = (v41 + v25);
          v42 = (v42 + v25);
          if (v28 == height)
          {
            goto LABEL_66;
          }
        }

        v44 = 0;
LABEL_39:
        v59 = width - v44;
        v60 = &v30[v44];
        v61 = &v33[16 * v44];
        do
        {
          v62 = *v61;
          v61 += 16;
          _S0 = v62;
          __asm
          {
            FCVT            H0, S0
            FCVT            S0, H0
          }

          _S0 = v11 * _S0;
          __asm { FCVT            H0, S0 }

          *v60++ = LOWORD(_S0);
          --v59;
        }

        while (v59);
        goto LABEL_41;
      }

LABEL_66:
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      return 0;
    }

    PixelBufferUtils::pixelFormatAsString(v5, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1376, v5, p_p);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 4294967294;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1370, PixelFormatType, v15);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_2403E3E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<unsigned char,half>(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v56.data) = v5;
      HIDWORD(v56.data) = PixelFormatType;
      __p.data = &v56;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v56.data);
      v9 = v8[3];
      v10 = *(v8 + 8) - 1;
      v11 = 1.0;
      if (v10 <= 6)
      {
        v11 = flt_240407E44[v10];
      }

      memset(&__p, 0, sizeof(__p));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &__p);
      _S0 = 0.0;
      v57 = 0;
      v14 = *v9;
      if (v6 <= v14)
      {
        rowBytes = 0;
        data = &v57;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v14, *v12, &v56);
        data = v56.data;
        rowBytes = v56.rowBytes;
      }

      pixelBuffer = a1;
      v20 = v9[1];
      if (v6 <= v20)
      {
        v22 = 0;
        v21 = &v57;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v20, *v12, &v56);
        v21 = v56.data;
        v22 = v56.rowBytes;
      }

      v23 = v9[2];
      if (v6 <= v23)
      {
        v25 = 0;
        v24 = &v57;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v23, *v12, &v56);
        v24 = v56.data;
        v25 = v56.rowBytes;
      }

      v26 = v9[3];
      if (v6 <= v26)
      {
        v28 = 0;
        v27 = &v57;
        height = __p.height;
        if (!__p.height)
        {
LABEL_46:
          CVPixelBufferUnlockBaseAddress(a2, 0);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          return 0;
        }
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v26, *v12, &v56);
        v27 = v56.data;
        v28 = v56.rowBytes;
        height = __p.height;
        if (!__p.height)
        {
          goto LABEL_46;
        }
      }

      width = __p.width;
      if (__p.width)
      {
        v31 = 0;
        v32 = __p.data;
        v33 = __p.rowBytes;
        v34 = v27;
        v35 = v24;
        v36 = v21;
        v37 = data;
        do
        {
          if ((data + rowBytes * v31) != &v57)
          {
            v38 = v32;
            v39 = v37;
            v40 = width;
            do
            {
              v41 = *v38;
              v38 += 4;
              _S0 = v11 * v41;
              __asm { FCVT            H0, S0 }

              *v39++ = LOWORD(_S0);
              --v40;
            }

            while (v40);
          }

          if ((v21 + v22 * v31) != &v57)
          {
            v46 = 1;
            v47 = v36;
            v48 = width;
            do
            {
              LOBYTE(_S0) = v32[v46];
              _S0 = v11 * LODWORD(_S0);
              __asm { FCVT            H0, S0 }

              *v47++ = LOWORD(_S0);
              v46 += 4;
              --v48;
            }

            while (v48);
          }

          if ((v24 + v25 * v31) != &v57)
          {
            v49 = 2;
            v50 = v35;
            v51 = width;
            do
            {
              LOBYTE(_S0) = v32[v49];
              _S0 = v11 * LODWORD(_S0);
              __asm { FCVT            H0, S0 }

              *v50++ = LOWORD(_S0);
              v49 += 4;
              --v51;
            }

            while (v51);
          }

          if ((v27 + v28 * v31) != &v57)
          {
            v52 = 3;
            v53 = v34;
            v54 = width;
            do
            {
              LOBYTE(_S0) = v32[v52];
              _S0 = v11 * LODWORD(_S0);
              __asm { FCVT            H0, S0 }

              *v53++ = LOWORD(_S0);
              v52 += 4;
              --v54;
            }

            while (v54);
          }

          ++v31;
          v37 = (v37 + rowBytes);
          v32 += v33;
          v36 = (v36 + v22);
          v35 = (v35 + v25);
          v34 = (v34 + v28);
        }

        while (v31 != height);
      }

      goto LABEL_46;
    }

    PixelBufferUtils::pixelFormatAsString(v5, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1376, v5, p_p);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 4294967294;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1370, PixelFormatType, v17);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_2403E4260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertColorToGrayscale(__CVBuffer *a1, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  pixelBufferOut.data = 0;
  v6 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v6, Width, Height, 0x34323066u, BufferAttributes, &pixelBufferOut))
  {
    data = 0;
  }

  else
  {
    data = pixelBufferOut.data;
  }

  if (PixelBufferUtils::convertPixelBufferFormat(a1, data, 0, v8))
  {
    CVPixelBufferRelease(data);
    return 0xFFFFFFFFLL;
  }

  if (!data)
  {
    return 0xFFFFFFFFLL;
  }

  CVPixelBufferLockBaseAddress(a2, 0);
  memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
  v11 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a2, 0, *MEMORY[0x277CBF3A0], &pixelBufferOut);
  CVPixelBufferLockBaseAddress(data, 1uLL);
  memset(&src, 0, sizeof(src));
  PixelBufferUtils::asVImageBuffer(data, 0, *v11, &src);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v13 = PixelFormatType;
  if (PixelFormatType > 1278226535)
  {
    if (PixelFormatType != 1278226536 && PixelFormatType != 1647392359)
    {
LABEL_15:
      PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
      if (v18 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convertColorToGrayscale", 2137, v13, v15);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v16 = 1;
      goto LABEL_24;
    }

    v14 = vImageConvert_Planar8toPlanar16F(&src, &pixelBufferOut, 0);
  }

  else
  {
    if (PixelFormatType == 1278226488)
    {
      vImageCopyBuffer(&src, &pixelBufferOut, 1uLL, 0);
    }

    else if (PixelFormatType != 1278226534)
    {
      goto LABEL_15;
    }

    v14 = vImageConvert_Planar8toPlanarF(&src, &pixelBufferOut, 1.0, 0.0, 0);
  }

  v16 = v14 != 0;
LABEL_24:
  CVPixelBufferUnlockBaseAddress(data, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  CVPixelBufferRelease(data);
  return v16;
}

void sub_2403E44BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertRGBPlanarFloat(__CVBuffer *a1, __CVBuffer *a2)
{
  minFloat[2] = *MEMORY[0x277D85DE8];
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    return 0xFFFFFFFFLL;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  memset(&dest, 0, sizeof(dest));
  v4 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a2, *MEMORY[0x277CBF3A0], &dest);
  memset(&blue, 0, sizeof(blue));
  PixelBufferUtils::asVImageBuffer(a1, 0, *v4, &blue);
  memset(&green, 0, sizeof(green));
  PixelBufferUtils::asVImageBuffer(a1, 1, *v4, &green);
  memset(&red, 0, sizeof(red));
  PixelBufferUtils::asVImageBuffer(a1, 2, *v4, &red);
  minFloat[0] = 0;
  minFloat[1] = 0;
  maxFloat = xmmword_2404070B0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelFormatType;
  if (PixelFormatType <= 1111970368)
  {
    if (PixelFormatType == 32)
    {
      v7 = vImageConvert_PlanarFToXRGB8888(0xFFu, &blue, &green, &red, &dest, &maxFloat, minFloat, 0);
      goto LABEL_14;
    }

    if (PixelFormatType == 1094862674)
    {
      v7 = vImageConvert_PlanarFToXRGB8888(0xFFu, &red, &green, &blue, &dest, &maxFloat, minFloat, 0);
      goto LABEL_14;
    }

LABEL_19:
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convertRGBPlanarFloat", 2001, v6, v10);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = -21783;
    goto LABEL_15;
  }

  if (PixelFormatType == 1111970369)
  {
    v7 = vImageConvert_PlanarFToBGRX8888(&red, &green, &blue, 0xFFu, &dest, &maxFloat, minFloat, 0);
    goto LABEL_14;
  }

  if (PixelFormatType == 1380401729)
  {
    v7 = vImageConvert_PlanarFToBGRX8888(&blue, &green, &red, 0xFFu, &dest, &maxFloat, minFloat, 0);
    goto LABEL_14;
  }

  if (PixelFormatType != 1380410945)
  {
    goto LABEL_19;
  }

  v7 = vImageConvert_PlanarFToBGRXFFFF(&blue, &green, &red, 1.0, &dest, 0);
LABEL_14:
  v9 = v7;
LABEL_15:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  if (v9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_2403E47B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertRGBPlanarHalf(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365992)
  {
    return 0xFFFFFFFFLL;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  pixelBufferOut = 0;
  v6 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v6, Width, Height, 0x72673366u, BufferAttributes, &pixelBufferOut))
  {
    v8 = 0;
  }

  else
  {
    v8 = pixelBufferOut;
  }

  v9 = convertFloat16ToFloat32(a1, v8);
  if (!v9)
  {
    v9 = convertRGBPlanarFloat(v8, a2);
  }

  v10 = v9;
  CVPixelBufferRelease(v8);
  return v10;
}

uint64_t createBGRAPermutesFromYUV(CVPixelBufferRef pixelBuffer, int a2, CVPixelBufferRef a3)
{
  v6 = a2 == 1380411457 || a2 == 1380410945;
  data = a3;
  v8 = a2;
  if (v6)
  {
    v8 = 1111970369;
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    pixelBufferOut.data = 0;
    v11 = *MEMORY[0x277CBECE8];
    BufferAttributes = getBufferAttributes();
    if (CVPixelBufferCreate(v11, Width, Height, 0x42475241u, BufferAttributes, &pixelBufferOut))
    {
      data = 0;
    }

    else
    {
      data = pixelBufferOut.data;
    }
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(data, 0);
  memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
  v13 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *MEMORY[0x277CBF3A0], &pixelBufferOut);
  memset(&srcCbCr, 0, sizeof(srcCbCr));
  PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, *v13, &srcCbCr);
  memset(&dest, 0, sizeof(dest));
  PixelBufferUtils::asVImageBuffer(data, *v13, &dest);
  v14 = RGBA_FORMAT_MAP();
  v19 = v8 | 0x2000000000;
  *&v18.Yp_bias = &v19;
  v15 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v14, v19)[3];
  if ((createBGRAPermutesFromYUV(__CVBuffer *,unsigned int,__CVBuffer *)::isConvesionInfoDefined & 1) != 0 || (v18 = *ymmword_240407E24, v16 = vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x277CB86E8], &v18, &createBGRAPermutesFromYUV(__CVBuffer *,unsigned int,__CVBuffer *)::conversionInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0), createBGRAPermutesFromYUV(__CVBuffer *,unsigned int,__CVBuffer *)::isConvesionInfoDefined = 1, !v16))
  {
    v16 = vImageConvert_420Yp8_CbCr8ToARGB8888(&pixelBufferOut, &srcCbCr, &dest, &createBGRAPermutesFromYUV(__CVBuffer *,unsigned int,__CVBuffer *)::conversionInfo, v15, 0xFFu, 0);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(data, 0);
  if (a2 == 1380411457 || a2 == 1380410945)
  {
    v16 = convert4ChannelFormats(data, a2, a3);
    CVPixelBufferRelease(data);
  }

  if (v16)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t createRGBPlanarFloatFromBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  pixelBufferOut.data = 0;
  v6 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v6, Width, Height, 0x52476641u, BufferAttributes, &pixelBufferOut))
  {
    data = 0;
  }

  else
  {
    data = pixelBufferOut.data;
  }

  if (PixelBufferUtils::convertPixelBufferFormat(a1, data, 0, v8))
  {
    CVPixelBufferRelease(data);
    return 0xFFFFFFFFLL;
  }

  else if (data)
  {
    CVPixelBufferLockBaseAddress(data, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
    v11 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(data, *MEMORY[0x277CBF3A0], &pixelBufferOut);
    memset(&destA, 0, sizeof(destA));
    PixelBufferUtils::asVImageBuffer(a2, 0, *v11, &destA);
    memset(&destR, 0, sizeof(destR));
    PixelBufferUtils::asVImageBuffer(a2, 1, *v11, &destR);
    memset(&destG, 0, sizeof(destG));
    PixelBufferUtils::asVImageBuffer(a2, 2, *v11, &destG);
    if (MEMORY[0x245CC04D0](&v14, pixelBufferOut.height, pixelBufferOut.width, 32, 0))
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v13 = vImageConvert_ARGBFFFFtoPlanarF(&pixelBufferOut, &destA, &destR, &destG, &v14, 0);
      free(v14.data);
      if (v13)
      {
        v12 = 0xFFFFFFFFLL;
      }

      else
      {
        v12 = 0;
      }
    }

    CVPixelBufferUnlockBaseAddress(data, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    CVPixelBufferRelease(data);
    return v12;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t createRGBPlanarHalfFromBuffer(__CVBuffer *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  pixelBufferOut = 0;
  v6 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v6, Width, Height, 0x72673366u, BufferAttributes, &pixelBufferOut))
  {
    v8 = 0;
  }

  else
  {
    v8 = pixelBufferOut;
  }

  if (createRGBPlanarFloatFromBuffer(a1, v8))
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = convertFloat32ToFloat16(v8, pixelBuffer);
  }

  CVPixelBufferRelease(v8);
  return v9;
}

uint64_t copyPixelBufferMultiPlane(__CVBuffer *a1, CGPoint a2, __CVBuffer *a3, CGRect a4)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a2.y;
  v10 = a2.x;
  PlaneCount = CVPixelBufferGetPlaneCount(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  if (PlaneCount)
  {
    v14 = 0;
    v15 = MEMORY[0x277CBF3A0];
    do
    {
      v16 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, v14);
      memset(&src, 0, sizeof(src));
      PixelBufferUtils::asVImageBuffer(a3, v14, *v15, &src);
      memset(&dest, 0, sizeof(dest));
      PixelBufferUtils::asVImageBuffer(a1, v14, *v15, &dest);
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      IsEmpty = CGRectIsEmpty(v29);
      v18 = src.width;
      if (IsEmpty)
      {
        v19 = src.height;
      }

      else
      {
        if (x >= src.width || (y < src.height ? (v20 = width <= src.width) : (v20 = 0), v20 ? (v21 = height <= src.height) : (v21 = 0), !v21))
        {
LABEL_26:
          NSLog(&cfstr_SDErrorRegionI.isa, "updateVImageBufferToRegion", 2037);
          return 0xFFFFFFFFLL;
        }

        src.height = height;
        src.width = width;
        src.data = src.data + src.rowBytes * y + v16 * x;
        v19 = height;
        v18 = width;
      }

      v22 = v18;
      v23 = v19;
      v30.origin.x = v10;
      v30.origin.y = v9;
      v30.size.width = v18;
      v30.size.height = v19;
      if (!CGRectIsEmpty(v30))
      {
        if (v10 >= dest.width)
        {
          goto LABEL_26;
        }

        v24 = v9 < dest.height && v22 <= dest.width;
        if (!v24 || v23 > dest.height)
        {
          goto LABEL_26;
        }

        dest.data = dest.data + dest.rowBytes * v9 + v16 * v10;
        dest.height = v23;
        dest.width = v22;
      }

      vImageCopyBuffer(&src, &dest, v16, 0);
      v14 = (v14 + 1);
    }

    while (PlaneCount != v14);
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  return 0;
}

uint64_t convertFloat32ToFloat16(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = PixelBufferUtils::planeCountForPixelFormat(PixelFormatType);
  v6 = CVPixelBufferGetPixelFormatType(a2);
  if (v5 == PixelBufferUtils::planeCountForPixelFormat(v6))
  {
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 0);
    if (v5)
    {
      v7 = 1;
      v8 = MEMORY[0x277CBF3A0];
      do
      {
        memset(&src, 0, sizeof(src));
        PixelBufferUtils::asVImageBuffer(a1, (v7 - 1), *v8, &src);
        memset(&dest, 0, sizeof(dest));
        PixelBufferUtils::asVImageBuffer(a2, (v7 - 1), *v8, &dest);
        v9 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
        if (v7 >= v5)
        {
          break;
        }

        ++v7;
      }

      while (!v9);
    }

    else
    {
      memset(&src, 0, sizeof(src));
      v11 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &src);
      memset(&dest, 0, sizeof(dest));
      PixelBufferUtils::asVImageBuffer(a2, *v11, &dest);
      v9 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
    }

    v12 = v9;
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    return v12 != 0;
  }

  else
  {
    NSLog(&cfstr_SDErrorInputAn.isa, "convertFloat32ToFloat16", 1704);
    return 0xFFFFFFFFLL;
  }
}

void PixelBufferUtils::forEveryPixel(__CVBuffer *a1, void *a2, int a3)
{
  v18 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v6 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, a3);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  if (PlaneCount)
  {
    v8 = 3773;
    v9 = @"%s:%d - ERROR - multiplane pixel buffer with nonmatching plane index";
    if (a3 < 0 || PlaneCount <= a3)
    {
      goto LABEL_7;
    }
  }

  else if (a3 != -1)
  {
    v8 = 3778;
    v9 = @"%s:%d - ERROR - cannot request plane for single-plane image";
LABEL_7:
    NSLog(&v9->isa, "forEveryPixel", v8);
    goto LABEL_18;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  pixelBuffer = a1;
  if (PlaneCount)
  {
    PixelBufferUtils::asVImageBuffer(a1, a3, *MEMORY[0x277CBF3A0], &v19);
  }

  else
  {
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v19);
  }

  data = v19.data;
  height = v19.height;
  width = v19.width;
  rowBytes = v19.rowBytes;
  if (v19.height && v19.width)
  {
    v14 = 0;
    do
    {
      v15 = data;
      v16 = width;
      do
      {
        (v18)[2](v18, v15, PixelFormatType);
        v15 += v6;
        --v16;
      }

      while (v16);
      ++v14;
      data += rowBytes;
    }

    while (v14 != height);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
LABEL_18:
}

void PixelBufferUtils::forEveryPixel(__CVBuffer *a1, __CVBuffer *a2, void *a3, vImagePixelCount a4)
{
  v31 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v9 = CVPixelBufferGetPixelFormatType(a2);
  v10 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0);
  v11 = PixelBufferUtils::pixelSizeForPixelFormat(v9, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  if (PlaneCount != CVPixelBufferGetPlaneCount(a2))
  {
    v13 = 3813;
    v14 = @"%s:%d - ERROR - mismatching planes number in input buffers";
LABEL_7:
    NSLog(&v14->isa, "forEveryPixel", v13);
    goto LABEL_30;
  }

  if (PlaneCount)
  {
    v13 = 3818;
    v14 = @"%s:%d - ERROR - multiplane pixel buffers with nonmatching plane index";
    if ((a4 & 0x80000000) != 0 || PlaneCount <= a4)
    {
      goto LABEL_7;
    }
  }

  else if (a4 != -1)
  {
    NSLog(&cfstr_SDErrorCannotR_0.isa, "forEveryPixel", 3823);
    goto LABEL_30;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  if (PlaneCount)
  {
    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v15 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a1, a4, *MEMORY[0x277CBF3A0], &v32);
    height = v32.height;
    data = v32.data;
    rowBytes = v32.rowBytes;
    width = v32.width;
    PixelBufferUtils::asVImageBuffer(a2, a4, *v15, &v32);
  }

  else
  {
    v16 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v32);
    height = v32.height;
    data = v32.data;
    rowBytes = v32.rowBytes;
    width = v32.width;
    PixelBufferUtils::asVImageBuffer(a2, *v16, &v32);
  }

  v4 = v32.data;
  a4 = v32.height;
  PlaneCount = v32.width;
  v25 = v32.rowBytes;
  if (height != v32.height || width != v32.width)
  {
LABEL_17:
    NSLog(&cfstr_WarningSizesIn.isa);
    if (height >= a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = height;
    }

    v18 = width;
    if (width >= PlaneCount)
    {
      v18 = PlaneCount;
    }

    width = v18;
    height = v17;
  }

  pixelBuffer = a1;
  v24 = a2;
  v19 = data;
  if (height && width)
  {
    for (i = 0; i != height; ++i)
    {
      v30 = v19;
      v21 = v4;
      v22 = width;
      do
      {
        v31[2](v31, v19, PixelFormatType, v21, v9);
        v21 += v11;
        v19 += v10;
        --v22;
      }

      while (v22);
      v4 += v25;
      v19 = &v30[rowBytes];
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  CVPixelBufferUnlockBaseAddress(v24, 0);
LABEL_30:
}

uint64_t convertGrayscaleAsColor(__CVBuffer *a1, unint64_t a2, __CVBuffer *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (a2 > 1380401728)
  {
    if (a2 != 1380401729 && a2 != 1380410945 && a2 != 1380411457)
    {
LABEL_37:
      PixelBufferUtils::pixelFormatAsString(a2, &red);
      if ((red.width & 0x8000000000000000) == 0)
      {
        p_red = &red;
      }

      else
      {
        p_red = red.data;
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convertGrayscaleAsColor", 1580, a2, p_red);
      if ((SHIBYTE(red.width) & 0x80000000) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      data = red.data;
LABEL_62:
      operator delete(data);
      return 0xFFFFFFFFLL;
    }
  }

  else if (a2 != 32 && a2 != 1094862674 && a2 != 1111970369)
  {
    goto LABEL_37;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  memset(&red, 0, sizeof(red));
  v7 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &red);
  memset(&dest, 0, sizeof(dest));
  PixelBufferUtils::asVImageBuffer(a3, *v7, &dest);
  v8 = RGBA_FORMAT_MAP();
  *&maxFloat = a2 | 0x2000000000;
  pixelBufferOut.data = &maxFloat;
  v9 = 0;
  v10 = 0;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v8, maxFloat)[3];
  maxFloat = xmmword_2404070B0;
  minFloat[0] = 0;
  minFloat[1] = 0;
  if (PixelFormatType <= 1717855599)
  {
    if (PixelFormatType == 1278226488)
    {
      if (a2 == 1380411457)
      {
        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        pixelBufferOut.data = 0;
        BufferAttributes = getBufferAttributes();
        if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x52476641u, BufferAttributes, &pixelBufferOut))
        {
          v12 = 0;
        }

        else
        {
          v12 = pixelBufferOut.data;
        }

        CVPixelBufferLockBaseAddress(v12, 0);
        memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
        PixelBufferUtils::asVImageBuffer(v12, *v7, &pixelBufferOut);
        v13 = vImageConvert_Planar8ToBGRXFFFF(&red, &red, &red, 1.0, &pixelBufferOut, &maxFloat, minFloat, 0);
        if (!v13)
        {
          pixelBufferOut.width *= 4;
          v13 = vImageConvert_PlanarFtoPlanar16F(&pixelBufferOut, &dest, 0);
        }

        v9 = 0;
        goto LABEL_48;
      }

      if (a2 == 1380410945)
      {
        v25 = vImageConvert_Planar8ToXRGBFFFF(1.0, &red, &red, &red, &dest, &maxFloat, minFloat, 0);
      }

      else if (*v11 == 3)
      {
        v25 = vImageConvert_Planar8ToBGRX8888(&red, &red, &red, 0xFFu, &dest, 0);
      }

      else
      {
        if (*v11)
        {
          v9 = 0;
          goto LABEL_76;
        }

        v25 = vImageConvert_Planar8ToXRGB8888(0xFFu, &red, &red, &red, &dest, 0);
      }

      v13 = v25;
      v9 = 0;
      goto LABEL_47;
    }

    if (PixelFormatType == 1278226534)
    {
LABEL_26:
      if (a2 == 1380411457)
      {
        v20 = CVPixelBufferGetWidth(a3);
        v21 = CVPixelBufferGetHeight(a3);
        pixelBufferOut.data = 0;
        v22 = getBufferAttributes();
        if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v20, v21, 0x52476641u, v22, &pixelBufferOut))
        {
          v12 = 0;
        }

        else
        {
          v12 = pixelBufferOut.data;
        }

        CVPixelBufferLockBaseAddress(v12, 0);
        memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
        PixelBufferUtils::asVImageBuffer(v12, *v7, &pixelBufferOut);
        v13 = vImageConvert_PlanarFToBGRXFFFF(&red, &red, &red, 1.0, &pixelBufferOut, 0);
        if (!v13)
        {
          pixelBufferOut.width *= 4;
          v13 = vImageConvert_PlanarFtoPlanar16F(&pixelBufferOut, &dest, 0);
        }

        goto LABEL_48;
      }

      if (a2 == 1380410945)
      {
        v19 = vImageConvert_PlanarFToBGRXFFFF(&red, &red, &red, 1.0, &dest, 0);
LABEL_46:
        v13 = v19;
LABEL_47:
        v12 = 0;
LABEL_48:
        v10 = 1;
        goto LABEL_49;
      }

      if (*v11 == 3)
      {
        v19 = vImageConvert_PlanarFToBGRX8888(&red, &red, &red, 0xFFu, &dest, &maxFloat, minFloat, 0);
        goto LABEL_46;
      }

      if (!*v11)
      {
        v19 = vImageConvert_PlanarFToXRGB8888(0xFFu, &red, &red, &red, &dest, &maxFloat, minFloat, 0);
        goto LABEL_46;
      }

LABEL_76:
      v12 = 0;
      v10 = 0;
      v13 = 0;
      goto LABEL_49;
    }

    v14 = 1278226536;
    goto LABEL_19;
  }

  if (PixelFormatType > 1751410031)
  {
    if (PixelFormatType == 1751411059)
    {
LABEL_20:
      v15 = CVPixelBufferGetWidth(a1);
      v16 = CVPixelBufferGetHeight(a1);
      pixelBufferOut.data = 0;
      v17 = getBufferAttributes();
      if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v15, v16, 0x4C303066u, v17, &pixelBufferOut))
      {
        v9 = 0;
      }

      else
      {
        v9 = pixelBufferOut.data;
      }

      if (PixelBufferUtils::convertPixelBufferFormat(a1, v9, 0, v18))
      {
        CVPixelBufferRelease(v9);
        v9 = 0;
      }

      CVPixelBufferLockBaseAddress(v9, 1uLL);
      PixelBufferUtils::asVImageBuffer(v9, *v7, &red);
      goto LABEL_26;
    }

    v14 = 1751410032;
LABEL_19:
    v12 = 0;
    v13 = 0;
    if (PixelFormatType != v14)
    {
      goto LABEL_49;
    }

    goto LABEL_20;
  }

  if (PixelFormatType == 1717855600)
  {
    goto LABEL_26;
  }

  v12 = 0;
  v13 = 0;
  if (PixelFormatType == 1717856627)
  {
    goto LABEL_26;
  }

LABEL_49:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a3, 0);
  if (v9)
  {
    CVPixelBufferUnlockBaseAddress(v9, 1uLL);
    CVPixelBufferRelease(v9);
  }

  if (v12)
  {
    CVPixelBufferUnlockBaseAddress(v12, 0);
    CVPixelBufferRelease(v12);
  }

  if ((v10 & 1) == 0)
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &pixelBufferOut);
    if ((pixelBufferOut.width & 0x8000000000000000) == 0)
    {
      p_pixelBufferOut = &pixelBufferOut;
    }

    else
    {
      p_pixelBufferOut = pixelBufferOut.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convertGrayscaleAsColor", 1692, PixelFormatType, p_pixelBufferOut);
    if ((SHIBYTE(pixelBufferOut.width) & 0x80000000) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    data = pixelBufferOut.data;
    goto LABEL_62;
  }

  if (v13)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_2403E5CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertFloat16ToFloat32(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = PixelBufferUtils::planeCountForPixelFormat(PixelFormatType);
  v6 = CVPixelBufferGetPixelFormatType(a2);
  if (v5 == PixelBufferUtils::planeCountForPixelFormat(v6))
  {
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 0);
    if (v5)
    {
      v7 = 1;
      v8 = MEMORY[0x277CBF3A0];
      do
      {
        memset(&src, 0, sizeof(src));
        PixelBufferUtils::asVImageBuffer(a1, (v7 - 1), *v8, &src);
        memset(&dest, 0, sizeof(dest));
        PixelBufferUtils::asVImageBuffer(a2, (v7 - 1), *v8, &dest);
        v9 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
        if (v7 >= v5)
        {
          break;
        }

        ++v7;
      }

      while (!v9);
    }

    else
    {
      memset(&src, 0, sizeof(src));
      v11 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &src);
      memset(&dest, 0, sizeof(dest));
      PixelBufferUtils::asVImageBuffer(a2, *v11, &dest);
      v9 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
    }

    v12 = v9;
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    return v12 != 0;
  }

  else
  {
    NSLog(&cfstr_SDErrorInputAn.isa, "convertFloat16ToFloat32", 1738);
    return 0xFFFFFFFFLL;
  }
}

__int16 ___ZL23invertPixelBufferValuesIDhEiP10__CVBufferS1__block_invoke@<H0>(uint64_t a1@<X0>, short float *a2@<X1>, uint64_t a3@<X2>, short float *a4@<X3>)
{
  *&result = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *a2;
  *a4 = *&result;
  return result;
}

float ___ZL23invertPixelBufferValuesIfEiP10__CVBuffer_block_invoke(uint64_t a1, float *a2)
{
  result = 1.0 / *a2;
  *a2 = result;
  return result;
}

uint64_t RGBA_FORMAT_MAP(void)
{
  v1 = *MEMORY[0x277D85DE8];
  {
    operator new();
  }

  return RGBA_FORMAT_MAP(void)::result;
}

void sub_2403E63E0(_Unwind_Exception *a1)
{
  MEMORY[0x245CBFCB0](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::unordered_map<unsigned long long,std::pair<unsigned char *,int>>::unordered_map(uint64_t result, unint64_t *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[3 * a3]; i += 3)
    {
      v4 = *i;
      v5 = *(result + 8);
      if (!*&v5)
      {
        goto LABEL_23;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (v4 >= *&v5)
        {
          v7 = v4 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & v4;
      }

      v8 = *(8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_23:
        operator new();
      }

      if (v6.u32[0] < 2uLL)
      {
        while (1)
        {
          v10 = v9[1];
          if (v10 == v4)
          {
            if (v9[2] == v4)
            {
              goto LABEL_24;
            }
          }

          else if ((v10 & (*&v5 - 1)) != v7)
          {
            goto LABEL_23;
          }

          v9 = *v9;
          if (!v9)
          {
            goto LABEL_23;
          }
        }
      }

      while (1)
      {
        v11 = v9[1];
        if (v11 == v4)
        {
          break;
        }

        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }

        if (v11 != v7)
        {
          goto LABEL_23;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      if (v9[2] != v4)
      {
        goto LABEL_18;
      }

LABEL_24:
      ;
    }
  }

  return result;
}

void sub_2403E6BB0(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unordered_set<int>::~unordered_set[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

float ___ZL23invertPixelBufferValuesIfEiP10__CVBufferS1__block_invoke(uint64_t a1, float *a2, uint64_t a3, float *a4)
{
  result = 1.0 / *a2;
  *a4 = result;
  return result;
}

__int16 ___ZL23invertPixelBufferValuesIDhEiP10__CVBuffer_block_invoke@<H0>(uint64_t a1@<X0>, short float *a2@<X1>)
{
  *&result = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *a2;
  *a2 = *&result;
  return result;
}

uint64_t PixelBufferUtils::copyPixelBuffer(PixelBufferUtils *this, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  v3 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(this))
  {
    return 0xFFFFFFFFLL;
  }

  if (v3)
  {
    if (PixelFormatType <= 1751410031)
    {
      if (PixelFormatType > 1717855599)
      {
        if (PixelFormatType != 1717855600)
        {
          v7 = 1717856627;
          goto LABEL_15;
        }
      }

      else if (PixelFormatType != 825306677)
      {
        v7 = 825437747;
        goto LABEL_15;
      }
    }

    else if (PixelFormatType <= 1919365989)
    {
      if (PixelFormatType != 1751410032)
      {
        v7 = 1751411059;
        goto LABEL_15;
      }
    }

    else if (PixelFormatType != 1919365990 && PixelFormatType != 1919365992)
    {
      v7 = 1932996149;
LABEL_15:
      if (PixelFormatType == v7)
      {
        goto LABEL_16;
      }

      v18 = **&MEMORY[0x277CBF3A0];
      v19.origin.x = *MEMORY[0x277CBF3A0];
      v19.origin.y = v18.origin.y;
      v19.size.width = v18.size.width;
      v19.size.height = v18.size.height;
      VTTransferSession = createVTTransferSession(*MEMORY[0x277CBF3A0], v19);
      v16 = VTPixelTransferSessionTransferImage(VTTransferSession, pixelBuffer, this);
      if (VTTransferSession)
      {
        VTPixelTransferSessionInvalidate(VTTransferSession);
        CFRelease(VTTransferSession);
      }

      if (!v16)
      {
        return 0;
      }

      NSLog(&cfstr_SDErrorVtpixel.isa, "cropAndScalePixelBufferVT", 1221);
      return 0xFFFFFFFFLL;
    }
  }

LABEL_16:
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);

  return copyPixelBufferVImage(this, *&v8, pixelBuffer, *&v10);
}

uint64_t PixelBufferUtils::countDifferentPixels(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer *a3, int32x2_t a4, int32x2_t a5)
{
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  v9 = CVPixelBufferGetWidth(a2);
  v10 = CVPixelBufferGetHeight(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  result = -1;
  if (Width == v9 && Height == v10)
  {
    CVPixelBufferLockBaseAddress(this, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    memset(&v580, 0, sizeof(v580));
    v13 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(this, *MEMORY[0x277CBF3A0], &v580);
    memset(&v579, 0, sizeof(v579));
    PixelBufferUtils::asVImageBuffer(a2, *v13, &v579);
    if (PixelFormatType > 1380401728)
    {
      v18 = a5;
      v17 = a4;
      if (PixelFormatType <= 1717856626)
      {
        if (PixelFormatType > 1380411456)
        {
          if (PixelFormatType != 1380411457)
          {
            if (PixelFormatType != 1647392359)
            {
              if (PixelFormatType != 1717855600)
              {
                goto LABEL_224;
              }

              goto LABEL_129;
            }

            goto LABEL_96;
          }

          if (*&v580.height != *&v579.height)
          {
            goto LABEL_311;
          }

          if (v580.height)
          {
            v269 = 4 * v580.width;
            if (4 * v580.width)
            {
              v270 = 0;
              LODWORD(PixelFormatType) = 0;
              if (v269)
              {
                v271 = (v269 - 1) >> 32 == 0;
              }

              else
              {
                v271 = 0;
              }

              v272 = !v271;
              v273 = vdupq_lane_s32(a5, 0);
              v274 = vdupq_lane_s32(a4, 0);
              v275 = 2 * (v269 & 0x1FFFFFFF0);
              v276 = 2 * (v269 & 0x1FFFFFFF8);
              v277 = (v580.data + 16);
              v278 = (v579.data + 16);
              v279 = vdupq_n_s64(0x3B5E392010175EE6uLL);
              v280.i64[0] = 0x100000001;
              v280.i64[1] = 0x100000001;
              data = v579.data;
              v282 = v580.data;
              while (1)
              {
                v283 = (v580.data + v270 * v580.rowBytes);
                v284 = (v579.data + v270 * v579.rowBytes);
                if (v269 < 8 || (v272 & 1) != 0)
                {
                  v285 = 0;
                  goto LABEL_206;
                }

                if (v269 >= 0x10)
                {
                  v312 = PixelFormatType;
                  v313 = 0uLL;
                  v314 = v278;
                  v315 = v277;
                  v316 = v269 & 0x1FFFFFFF0;
                  v317 = 0uLL;
                  v318 = 0uLL;
                  do
                  {
                    v319 = *v315[-2].i8;
                    v320 = v314[-1];
                    v321 = vcvt_hight_f32_f16(v320);
                    v322 = vcvtq_f32_f16(*v320.i8);
                    v323 = vcvt_hight_f32_f16(*v314);
                    v324 = vcvtq_f32_f16(*v314->i8);
                    v325 = vabdq_f32(vcvtq_f32_f16(*v319.i8), v322);
                    v326 = vabdq_f32(vcvt_hight_f32_f16(v319), v321);
                    v327 = vabdq_f32(vcvtq_f32_f16(*v315), v324);
                    v328 = vabdq_f32(vcvt_hight_f32_f16(*v315->i8), v323);
                    v329 = vcgtq_f32(v326, v273);
                    v330 = vcgtq_f32(v325, v273);
                    v331 = vcvt_hight_f64_f32(v325);
                    v332 = vcvt_hight_f64_f32(v326);
                    *v325.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v325.f32), vaddq_f64(vcvtq_f64_f32(*v322.f32), v279)));
                    *v326.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v326.f32), vaddq_f64(vcvtq_f64_f32(*v321.f32), v279)));
                    *&v325.u32[2] = vcvt_f32_f64(vdivq_f64(v331, vaddq_f64(vcvt_hight_f64_f32(v322), v279)));
                    *&v326.u32[2] = vcvt_f32_f64(vdivq_f64(v332, vaddq_f64(vcvt_hight_f64_f32(v321), v279)));
                    *v322.f32 = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v327), vaddq_f64(vcvt_hight_f64_f32(v324), v279)));
                    *v324.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v327.f32), vaddq_f64(vcvtq_f64_f32(*v324.f32), v279)));
                    v324.i64[1] = v322.i64[0];
                    *v321.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v328.f32), vaddq_f64(vcvtq_f64_f32(*v323.f32), v279)));
                    *&v321.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v328), vaddq_f64(vcvt_hight_f64_f32(v323), v279)));
                    *v329.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(v330, v329), vuzp1q_s16(vcgtq_f32(v325, v274), vcgtq_f32(v326, v274))));
                    *v330.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(vcgtq_f32(v327, v273), vcgtq_f32(v328, v273)), vuzp1q_s16(vcgtq_f32(v324, v274), vcgtq_f32(v321, v274))));
                    v313 = vaddq_s32(v313, vandq_s8(vmovl_u16(vzip2_s8(*v329.i8, *v273.f32)), v280));
                    v312 = vaddq_s32(v312, vandq_s8(vmovl_u16(vzip1_s8(*v329.i8, *v273.f32)), v280));
                    v318 = vaddq_s32(v318, vandq_s8(vmovl_u16(vzip2_s8(*v330.i8, *v273.f32)), v280));
                    v317 = vaddq_s32(v317, vandq_s8(vmovl_u16(vzip1_s8(*v330.i8, *v273.f32)), v280));
                    v315 += 4;
                    v314 += 2;
                    v316 -= 16;
                  }

                  while (v316);
                  LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(vaddq_s32(v317, v312), vaddq_s32(v318, v313)));
                  if (v269 == (v269 & 0x1FFFFFFF0))
                  {
                    goto LABEL_202;
                  }

                  if ((v580.width & 2) == 0)
                  {
                    v283 = (v283 + v275);
                    v284 = (v284 + v275);
                    v285 = v269 & 0xFFFFFFF0;
LABEL_206:
                    v286 = v285 + 1;
                    do
                    {
                      _H5 = *v283;
                      __asm { FCVT            S6, H5 }

                      _H5 = *v284;
                      __asm { FCVT            S7, H5 }

                      v291 = vabds_f32(_S6, _S7);
                      if (v291 > *a5.i32)
                      {
                        __asm { FCVT            D5, H5 }

                        *&_D5 = v291 / (_D5 + 1.0e-22);
                        if (*&_D5 > *a4.i32)
                        {
                          LODWORD(PixelFormatType) = PixelFormatType + 1;
                        }
                      }

                      ++v283;
                      ++v284;
                      v44 = v269 > v286++;
                    }

                    while (v44);
                    goto LABEL_202;
                  }

                  v293 = v269 & 0x1FFFFFFF0;
                }

                else
                {
                  v293 = 0;
                }

                v284 = (v284 + v276);
                v294 = 0uLL;
                v295 = PixelFormatType;
                v296 = -8 * ((v580.width >> 1) & 0x3FFFFFFF) + v293;
                v297 = 2 * v293;
                v298 = &v282[2 * v293];
                v299 = &data[v297];
                do
                {
                  v300 = *v298++;
                  v301 = vcvt_hight_f32_f16(v300);
                  v302 = vcvtq_f32_f16(*v300.i8);
                  v303 = *v299++;
                  v304 = vcvt_hight_f32_f16(v303);
                  v305 = vcvtq_f32_f16(*v303.i8);
                  v306 = vabdq_f32(v302, v305);
                  v307 = vabdq_f32(v301, v304);
                  v308 = vcgtq_f32(v307, v273);
                  v309 = vcgtq_f32(v306, v273);
                  v310 = vcvt_hight_f64_f32(v306);
                  v311 = vcvt_hight_f64_f32(v307);
                  *v306.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v306.f32), vaddq_f64(vcvtq_f64_f32(*v305.f32), v279)));
                  *&v306.u32[2] = vcvt_f32_f64(vdivq_f64(v310, vaddq_f64(vcvt_hight_f64_f32(v305), v279)));
                  *v307.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v307.f32), vaddq_f64(vcvtq_f64_f32(*v304.f32), v279)));
                  *&v307.u32[2] = vcvt_f32_f64(vdivq_f64(v311, vaddq_f64(vcvt_hight_f64_f32(v304), v279)));
                  *v306.f32 = vmovn_s16(vandq_s8(vuzp1q_s16(v309, v308), vuzp1q_s16(vcgtq_f32(v306, v274), vcgtq_f32(v307, v274))));
                  v294 = vaddq_s32(v294, vandq_s8(vmovl_u16(vzip2_s8(*v306.f32, *v273.f32)), v280));
                  v295 = vaddq_s32(v295, vandq_s8(vmovl_u16(vzip1_s8(*v306.f32, *v273.f32)), v280));
                  v296 += 8;
                }

                while (v296);
                LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(v295, v294));
                if (v269 != (v269 & 0x1FFFFFFF8))
                {
                  v283 = (v283 + v276);
                  v285 = v269 & 0xFFFFFFF8;
                  goto LABEL_206;
                }

LABEL_202:
                ++v270;
                v277 = (v277 + v580.rowBytes);
                v278 = (v278 + v579.rowBytes);
                v282 += v580.rowBytes;
                data += v579.rowBytes;
                if (v580.height <= v270)
                {
                  goto LABEL_311;
                }
              }
            }
          }

LABEL_229:
          LODWORD(PixelFormatType) = 0;
          goto LABEL_311;
        }

        if (PixelFormatType != 1380401729)
        {
          if (PixelFormatType == 1380410945)
          {
            if (*&v580.height == *&v579.height)
            {
              if (v580.height && 4 * v580.width)
              {
                v94 = 0;
                LODWORD(PixelFormatType) = 0;
                v95 = v580.data;
                v96 = v579.data;
                do
                {
                  v97 = 0;
                  do
                  {
                    v98 = v96[v97];
                    v99 = vabds_f32(v95[v97], v98);
                    if (v99 > *a5.i32)
                    {
                      v100 = v99 / (v98 + 1.0e-22);
                      if (v100 > *a4.i32)
                      {
                        LODWORD(PixelFormatType) = PixelFormatType + 1;
                      }
                    }

                    ++v97;
                  }

                  while (4 * v580.width > v97);
                  ++v94;
                  v96 = (v96 + v579.rowBytes);
                  v95 = (v95 + v580.rowBytes);
                }

                while (v580.height > v94);
                goto LABEL_311;
              }

              goto LABEL_229;
            }

            goto LABEL_311;
          }

LABEL_224:
          PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
          if ((__p.width & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.data;
          }

          NSLog(&cfstr_SDErrorPixelFo.isa, "countDifferentPixels", 2485, PixelFormatType, p_p);
          if (SHIBYTE(__p.width) < 0)
          {
            operator delete(__p.data);
          }

          goto LABEL_229;
        }

        goto LABEL_83;
      }

      if (PixelFormatType > 1751411058)
      {
        if (PixelFormatType != 1751411059)
        {
          if (PixelFormatType != 1919365990)
          {
            if (PixelFormatType != 1919365992)
            {
              goto LABEL_224;
            }

            PixelBufferUtils::asVImageBuffer(this, 0, *v13, &__p);
            PixelBufferUtils::asVImageBuffer(a2, 0, *v13, &__p);
            PixelBufferUtils::asVImageBuffer(this, 1, *v13, &__p);
            PixelBufferUtils::asVImageBuffer(a2, 1, *v13, &__p);
            PixelBufferUtils::asVImageBuffer(this, 2, *v13, &__p);
            v580 = __p;
            PixelBufferUtils::asVImageBuffer(a2, 2, *v13, &__p);
            v579 = __p;
            if (v580.height != __p.height || v580.width != v579.width)
            {
              goto LABEL_311;
            }

            if (!v580.height || !v580.width)
            {
              goto LABEL_229;
            }

            v20 = 0;
            LODWORD(PixelFormatType) = 0;
            if (LODWORD(v580.width))
            {
              _ZF = (v580.width - 1) >> 32 == 0;
            }

            else
            {
              _ZF = 0;
            }

            v22 = !_ZF;
            v23 = vdupq_lane_s32(a5, 0);
            v24 = vdupq_lane_s32(a4, 0);
            v25 = 2 * (v580.width & 0x1FFFFFFF0);
            v26 = 2 * (v580.width & 0x1FFFFFFF8);
            v27 = (v580.data + 16);
            v28 = (v579.data + 16);
            v29 = vdupq_n_s64(0x3B5E392010175EE6uLL);
            v30.i64[0] = 0x100000001;
            v30.i64[1] = 0x100000001;
            v31 = v579.data;
            v32 = v580.data;
            while (1)
            {
              v40 = (v580.data + v20 * v580.rowBytes);
              v41 = (v579.data + v20 * v579.rowBytes);
              if (v580.width < 8 || (v22 & 1) != 0)
              {
                v42 = 0;
                goto LABEL_47;
              }

              if (v580.width >= 0x10)
              {
                v73 = PixelFormatType;
                v74 = 0uLL;
                v75 = v28;
                v76 = v27;
                v77 = v580.width & 0x1FFFFFFF0;
                v78 = 0uLL;
                v79 = 0uLL;
                do
                {
                  v80 = *v76[-2].i8;
                  v81 = v75[-1];
                  v82 = vcvt_hight_f32_f16(v81);
                  v83 = vcvtq_f32_f16(*v81.i8);
                  v84 = vcvt_hight_f32_f16(*v75);
                  v85 = vcvtq_f32_f16(*v75->i8);
                  v86 = vabdq_f32(vcvtq_f32_f16(*v80.i8), v83);
                  v87 = vabdq_f32(vcvt_hight_f32_f16(v80), v82);
                  v88 = vabdq_f32(vcvtq_f32_f16(*v76), v85);
                  v89 = vabdq_f32(vcvt_hight_f32_f16(*v76->i8), v84);
                  v90 = vcgtq_f32(v87, v23);
                  v91 = vcgtq_f32(v86, v23);
                  v92 = vcvt_hight_f64_f32(v86);
                  v93 = vcvt_hight_f64_f32(v87);
                  *v86.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v86.f32), vaddq_f64(vcvtq_f64_f32(*v83.f32), v29)));
                  *v87.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v87.f32), vaddq_f64(vcvtq_f64_f32(*v82.f32), v29)));
                  *&v86.u32[2] = vcvt_f32_f64(vdivq_f64(v92, vaddq_f64(vcvt_hight_f64_f32(v83), v29)));
                  *&v87.u32[2] = vcvt_f32_f64(vdivq_f64(v93, vaddq_f64(vcvt_hight_f64_f32(v82), v29)));
                  *v83.f32 = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v88), vaddq_f64(vcvt_hight_f64_f32(v85), v29)));
                  *v85.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v88.f32), vaddq_f64(vcvtq_f64_f32(*v85.f32), v29)));
                  v85.i64[1] = v83.i64[0];
                  *v82.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v89.f32), vaddq_f64(vcvtq_f64_f32(*v84.f32), v29)));
                  *&v82.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v89), vaddq_f64(vcvt_hight_f64_f32(v84), v29)));
                  *v90.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(v91, v90), vuzp1q_s16(vcgtq_f32(v86, v24), vcgtq_f32(v87, v24))));
                  *v91.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(vcgtq_f32(v88, v23), vcgtq_f32(v89, v23)), vuzp1q_s16(vcgtq_f32(v85, v24), vcgtq_f32(v82, v24))));
                  v74 = vaddq_s32(v74, vandq_s8(vmovl_u16(vzip2_s8(*v90.i8, *v23.f32)), v30));
                  v73 = vaddq_s32(v73, vandq_s8(vmovl_u16(vzip1_s8(*v90.i8, *v23.f32)), v30));
                  v79 = vaddq_s32(v79, vandq_s8(vmovl_u16(vzip2_s8(*v91.i8, *v23.f32)), v30));
                  v78 = vaddq_s32(v78, vandq_s8(vmovl_u16(vzip1_s8(*v91.i8, *v23.f32)), v30));
                  v76 += 4;
                  v75 += 2;
                  v77 -= 16;
                }

                while (v77);
                LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(vaddq_s32(v78, v73), vaddq_s32(v79, v74)));
                if (v580.width == (v580.width & 0x1FFFFFFF0))
                {
                  goto LABEL_43;
                }

                if ((v580.width & 8) == 0)
                {
                  v40 = (v40 + v25);
                  v41 = (v41 + v25);
                  v42 = v580.width & 0xFFFFFFF0;
LABEL_47:
                  v43 = v42 + 1;
                  do
                  {
                    _H5 = *v40;
                    __asm { FCVT            S6, H5 }

                    _H5 = *v41;
                    __asm { FCVT            S7, H5 }

                    v52 = vabds_f32(_S6, _S7);
                    if (v52 > *a5.i32)
                    {
                      __asm { FCVT            D5, H5 }

                      *&_D5 = v52 / (_D5 + 1.0e-22);
                      if (*&_D5 > *a4.i32)
                      {
                        LODWORD(PixelFormatType) = PixelFormatType + 1;
                      }
                    }

                    ++v40;
                    ++v41;
                    v44 = v580.width > v43++;
                  }

                  while (v44);
                  goto LABEL_43;
                }

                v54 = v580.width & 0x1FFFFFFF0;
              }

              else
              {
                v54 = 0;
              }

              v41 = (v41 + v26);
              v55 = 0uLL;
              v56 = PixelFormatType;
              v57 = v54 - (v580.width & 0x1FFFFFFF8);
              v58 = 2 * v54;
              v59 = &v32[2 * v54];
              v60 = &v31[v58];
              do
              {
                v61 = *v59++;
                v62 = vcvt_hight_f32_f16(v61);
                v63 = vcvtq_f32_f16(*v61.i8);
                v64 = *v60++;
                v65 = vcvt_hight_f32_f16(v64);
                v66 = vcvtq_f32_f16(*v64.i8);
                v67 = vabdq_f32(v63, v66);
                v68 = vabdq_f32(v62, v65);
                v69 = vcgtq_f32(v68, v23);
                v70 = vcgtq_f32(v67, v23);
                v71 = vcvt_hight_f64_f32(v67);
                v72 = vcvt_hight_f64_f32(v68);
                *v67.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v67.f32), vaddq_f64(vcvtq_f64_f32(*v66.f32), v29)));
                *&v67.u32[2] = vcvt_f32_f64(vdivq_f64(v71, vaddq_f64(vcvt_hight_f64_f32(v66), v29)));
                *v68.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v68.f32), vaddq_f64(vcvtq_f64_f32(*v65.f32), v29)));
                *&v68.u32[2] = vcvt_f32_f64(vdivq_f64(v72, vaddq_f64(vcvt_hight_f64_f32(v65), v29)));
                *v67.f32 = vmovn_s16(vandq_s8(vuzp1q_s16(v70, v69), vuzp1q_s16(vcgtq_f32(v67, v24), vcgtq_f32(v68, v24))));
                v55 = vaddq_s32(v55, vandq_s8(vmovl_u16(vzip2_s8(*v67.f32, *v23.f32)), v30));
                v56 = vaddq_s32(v56, vandq_s8(vmovl_u16(vzip1_s8(*v67.f32, *v23.f32)), v30));
                v57 += 8;
              }

              while (v57);
              LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(v56, v55));
              if (v580.width != (v580.width & 0x1FFFFFFF8))
              {
                v40 = (v40 + v26);
                v42 = v580.width & 0xFFFFFFF8;
                goto LABEL_47;
              }

LABEL_43:
              ++v20;
              v27 = (v27 + v580.rowBytes);
              v28 = (v28 + v579.rowBytes);
              v32 += v580.rowBytes;
              v31 += v579.rowBytes;
              if (v580.height <= v20)
              {
                goto LABEL_311;
              }
            }
          }

          PixelBufferUtils::asVImageBuffer(this, 0, *v13, &__p);
          PixelBufferUtils::asVImageBuffer(a2, 0, *v13, &__p);
          PixelBufferUtils::asVImageBuffer(this, 1, *v13, &__p);
          PixelBufferUtils::asVImageBuffer(a2, 1, *v13, &__p);
          PixelBufferUtils::asVImageBuffer(this, 2, *v13, &__p);
          v580 = __p;
          PixelBufferUtils::asVImageBuffer(a2, 2, *v13, &__p);
          v579 = __p;
          if (*&v580.height == *&__p.height)
          {
            if (v580.height && v580.width)
            {
              v262 = 0;
              LODWORD(PixelFormatType) = 0;
              v263 = v580.data;
              v264 = v579.data;
              do
              {
                v265 = 0;
                do
                {
                  v266 = v264[v265];
                  v267 = vabds_f32(v263[v265], v266);
                  if (v267 > *a5.i32)
                  {
                    v268 = v267 / (v266 + 1.0e-22);
                    if (v268 > *a4.i32)
                    {
                      LODWORD(PixelFormatType) = PixelFormatType + 1;
                    }
                  }

                  ++v265;
                }

                while (v580.width > v265);
                ++v262;
                v264 = (v264 + v579.rowBytes);
                v263 = (v263 + v580.rowBytes);
              }

              while (v580.height > v262);
              goto LABEL_311;
            }

            goto LABEL_229;
          }

LABEL_311:
          CVPixelBufferUnlockBaseAddress(this, 1uLL);
          CVPixelBufferUnlockBaseAddress(a2, 1uLL);
          return PixelFormatType;
        }

LABEL_96:
        if (v580.height != v579.height || v580.width != v579.width)
        {
          goto LABEL_311;
        }

        if (!v580.height || !v580.width)
        {
          goto LABEL_229;
        }

        v113 = 0;
        LODWORD(PixelFormatType) = 0;
        if (LODWORD(v580.width))
        {
          v114 = (v580.width - 1) >> 32 == 0;
        }

        else
        {
          v114 = 0;
        }

        v115 = !v114;
        v116 = vdupq_lane_s32(v18, 0);
        v117 = vdupq_lane_s32(v17, 0);
        v118 = 2 * (v580.width & 0x1FFFFFFF0);
        v119 = 2 * (v580.width & 0x1FFFFFFF8);
        v120 = (v580.data + 16);
        v121 = (v579.data + 16);
        v122 = vdupq_n_s64(0x3B5E392010175EE6uLL);
        v123.i64[0] = 0x100000001;
        v123.i64[1] = 0x100000001;
        v124 = v579.data;
        v125 = v580.data;
        while (1)
        {
          v126 = (v580.data + v113 * v580.rowBytes);
          v127 = (v579.data + v113 * v579.rowBytes);
          if (v580.width < 8 || (v115 & 1) != 0)
          {
            v128 = 0;
            goto LABEL_111;
          }

          if (v580.width >= 0x10)
          {
            v155 = PixelFormatType;
            v156 = 0uLL;
            v157 = v121;
            v158 = v120;
            v159 = v580.width & 0x1FFFFFFF0;
            v160 = 0uLL;
            v161 = 0uLL;
            do
            {
              v162 = *v158[-2].i8;
              v163 = v157[-1];
              v164 = vcvt_hight_f32_f16(v163);
              v165 = vcvtq_f32_f16(*v163.i8);
              v166 = vcvt_hight_f32_f16(*v157);
              v167 = vcvtq_f32_f16(*v157->i8);
              v168 = vabdq_f32(vcvtq_f32_f16(*v162.i8), v165);
              v169 = vabdq_f32(vcvt_hight_f32_f16(v162), v164);
              v170 = vabdq_f32(vcvtq_f32_f16(*v158), v167);
              v171 = vabdq_f32(vcvt_hight_f32_f16(*v158->i8), v166);
              v172 = vcgtq_f32(v169, v116);
              v173 = vcgtq_f32(v168, v116);
              v174 = vcvt_hight_f64_f32(v168);
              v175 = vcvt_hight_f64_f32(v169);
              *v168.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v168.f32), vaddq_f64(vcvtq_f64_f32(*v165.f32), v122)));
              *v169.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v169.f32), vaddq_f64(vcvtq_f64_f32(*v164.f32), v122)));
              *&v168.u32[2] = vcvt_f32_f64(vdivq_f64(v174, vaddq_f64(vcvt_hight_f64_f32(v165), v122)));
              *&v169.u32[2] = vcvt_f32_f64(vdivq_f64(v175, vaddq_f64(vcvt_hight_f64_f32(v164), v122)));
              *v165.f32 = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v170), vaddq_f64(vcvt_hight_f64_f32(v167), v122)));
              *v167.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v170.f32), vaddq_f64(vcvtq_f64_f32(*v167.f32), v122)));
              v167.i64[1] = v165.i64[0];
              *v164.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v171.f32), vaddq_f64(vcvtq_f64_f32(*v166.f32), v122)));
              *&v164.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v171), vaddq_f64(vcvt_hight_f64_f32(v166), v122)));
              *v172.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(v173, v172), vuzp1q_s16(vcgtq_f32(v168, v117), vcgtq_f32(v169, v117))));
              *v173.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(vcgtq_f32(v170, v116), vcgtq_f32(v171, v116)), vuzp1q_s16(vcgtq_f32(v167, v117), vcgtq_f32(v164, v117))));
              v156 = vaddq_s32(v156, vandq_s8(vmovl_u16(vzip2_s8(*v172.i8, *v116.f32)), v123));
              v155 = vaddq_s32(v155, vandq_s8(vmovl_u16(vzip1_s8(*v172.i8, *v116.f32)), v123));
              v161 = vaddq_s32(v161, vandq_s8(vmovl_u16(vzip2_s8(*v173.i8, *v116.f32)), v123));
              v160 = vaddq_s32(v160, vandq_s8(vmovl_u16(vzip1_s8(*v173.i8, *v116.f32)), v123));
              v158 += 4;
              v157 += 2;
              v159 -= 16;
            }

            while (v159);
            LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(vaddq_s32(v160, v155), vaddq_s32(v161, v156)));
            if (v580.width == (v580.width & 0x1FFFFFFF0))
            {
              goto LABEL_107;
            }

            if ((v580.width & 8) == 0)
            {
              v126 = (v126 + v118);
              v127 = (v127 + v118);
              v128 = v580.width & 0xFFFFFFF0;
LABEL_111:
              v129 = v128 + 1;
              do
              {
                _H5 = *v126;
                __asm { FCVT            S6, H5 }

                _H5 = *v127;
                __asm { FCVT            S7, H5 }

                v134 = vabds_f32(_S6, _S7);
                if (v134 > *v18.i32)
                {
                  __asm { FCVT            D5, H5 }

                  *&_D5 = v134 / (_D5 + 1.0e-22);
                  if (*&_D5 > *v17.i32)
                  {
                    LODWORD(PixelFormatType) = PixelFormatType + 1;
                  }
                }

                ++v126;
                ++v127;
                v44 = v580.width > v129++;
              }

              while (v44);
              goto LABEL_107;
            }

            v136 = v580.width & 0x1FFFFFFF0;
          }

          else
          {
            v136 = 0;
          }

          v127 = (v127 + v119);
          v137 = 0uLL;
          v138 = PixelFormatType;
          v139 = v136 - (v580.width & 0x1FFFFFFF8);
          v140 = 2 * v136;
          v141 = &v125[2 * v136];
          v142 = &v124[v140];
          do
          {
            v143 = *v141++;
            v144 = vcvt_hight_f32_f16(v143);
            v145 = vcvtq_f32_f16(*v143.i8);
            v146 = *v142++;
            v147 = vcvt_hight_f32_f16(v146);
            v148 = vcvtq_f32_f16(*v146.i8);
            v149 = vabdq_f32(v145, v148);
            v150 = vabdq_f32(v144, v147);
            v151 = vcgtq_f32(v150, v116);
            v152 = vcgtq_f32(v149, v116);
            v153 = vcvt_hight_f64_f32(v149);
            v154 = vcvt_hight_f64_f32(v150);
            *v149.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v149.f32), vaddq_f64(vcvtq_f64_f32(*v148.f32), v122)));
            *&v149.u32[2] = vcvt_f32_f64(vdivq_f64(v153, vaddq_f64(vcvt_hight_f64_f32(v148), v122)));
            *v150.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v150.f32), vaddq_f64(vcvtq_f64_f32(*v147.f32), v122)));
            *&v150.u32[2] = vcvt_f32_f64(vdivq_f64(v154, vaddq_f64(vcvt_hight_f64_f32(v147), v122)));
            *v149.f32 = vmovn_s16(vandq_s8(vuzp1q_s16(v152, v151), vuzp1q_s16(vcgtq_f32(v149, v117), vcgtq_f32(v150, v117))));
            v137 = vaddq_s32(v137, vandq_s8(vmovl_u16(vzip2_s8(*v149.f32, *v116.f32)), v123));
            v138 = vaddq_s32(v138, vandq_s8(vmovl_u16(vzip1_s8(*v149.f32, *v116.f32)), v123));
            v139 += 8;
          }

          while (v139);
          LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(v138, v137));
          if (v580.width != (v580.width & 0x1FFFFFFF8))
          {
            v126 = (v126 + v119);
            v128 = v580.width & 0xFFFFFFF8;
            goto LABEL_111;
          }

LABEL_107:
          ++v113;
          v120 = (v120 + v580.rowBytes);
          v121 = (v121 + v579.rowBytes);
          v125 += v580.rowBytes;
          v124 += v579.rowBytes;
          if (v580.height <= v113)
          {
            goto LABEL_311;
          }
        }
      }

      if (PixelFormatType != 1717856627)
      {
        v19 = 1751410032;
LABEL_95:
        if (PixelFormatType != v19)
        {
          goto LABEL_224;
        }

        goto LABEL_96;
      }

      goto LABEL_129;
    }

    v18 = a5;
    v17 = a4;
    if (PixelFormatType > 875704437)
    {
      if (PixelFormatType > 1278226487)
      {
        if (PixelFormatType != 1278226488 && PixelFormatType != 1278226534)
        {
          v19 = 1278226536;
          goto LABEL_95;
        }

LABEL_129:
        if (*&v580.height == *&v579.height)
        {
          if (v580.height && v580.width)
          {
            v176 = 0;
            LODWORD(PixelFormatType) = 0;
            v177 = v580.data;
            v178 = v579.data;
            do
            {
              v179 = 0;
              do
              {
                v180 = v178[v179];
                v181 = vabds_f32(v177[v179], v180);
                if (v181 > *v18.i32)
                {
                  v182 = v181 / (v180 + 1.0e-22);
                  if (v182 > *v17.i32)
                  {
                    LODWORD(PixelFormatType) = PixelFormatType + 1;
                  }
                }

                ++v179;
              }

              while (v580.width > v179);
              ++v176;
              v178 = (v178 + v579.rowBytes);
              v177 = (v177 + v580.rowBytes);
            }

            while (v580.height > v176);
            goto LABEL_311;
          }

          goto LABEL_229;
        }

        goto LABEL_311;
      }

      if (PixelFormatType != 875704438)
      {
        if (PixelFormatType != 1111970369)
        {
          goto LABEL_224;
        }

        goto LABEL_83;
      }

      goto LABEL_139;
    }

    if (PixelFormatType <= 843264103)
    {
      if (PixelFormatType != 32)
      {
        if (PixelFormatType != 843264102)
        {
          goto LABEL_224;
        }

        if (*&v580.height == *&v579.height)
        {
          if (v580.height && 2 * v580.width)
          {
            v33 = 0;
            LODWORD(PixelFormatType) = 0;
            v34 = v580.data;
            v35 = v579.data;
            do
            {
              v36 = 0;
              do
              {
                v37 = v35[v36];
                v38 = vabds_f32(v34[v36], v37);
                if (v38 > *a5.i32)
                {
                  v39 = v38 / (v37 + 1.0e-22);
                  if (v39 > *a4.i32)
                  {
                    LODWORD(PixelFormatType) = PixelFormatType + 1;
                  }
                }

                ++v36;
              }

              while (2 * v580.width > v36);
              ++v33;
              v35 = (v35 + v579.rowBytes);
              v34 = (v34 + v580.rowBytes);
            }

            while (v580.height > v33);
            goto LABEL_311;
          }

          goto LABEL_229;
        }

        goto LABEL_311;
      }

LABEL_83:
      if (*&v580.height != *&v579.height)
      {
        goto LABEL_311;
      }

      if (!v580.height)
      {
        goto LABEL_229;
      }

      v101 = 4 * v580.width;
      if (!(4 * v580.width))
      {
        goto LABEL_229;
      }

      v102 = 0;
      LODWORD(PixelFormatType) = 0;
      if (v101)
      {
        v103 = (v101 - 1) >> 32 == 0;
      }

      else
      {
        v103 = 0;
      }

      v104 = !v103;
      v105 = v101 & 0x1FFFFFFF0;
      v106 = vdupq_lane_s32(v18, 0);
      v107 = vdupq_lane_s32(v17, 0);
      v108 = v101 & 0x1FFFFFFF8;
      v109 = vdupq_n_s64(0x3B5E392010175EE6uLL);
      v110.i64[0] = 0x100000001;
      v110.i64[1] = 0x100000001;
      v111 = v579.data;
      v112 = v580.data;
      while (1)
      {
        v334 = v580.data + v102 * v580.rowBytes;
        v335 = v579.data + v102 * v579.rowBytes;
        if (v101 < 8 || (v104 & 1) != 0)
        {
          v336 = 0;
          goto LABEL_235;
        }

        if (v101 >= 0x10)
        {
          v361 = PixelFormatType;
          v362 = 0uLL;
          v363 = v111;
          v364 = v112;
          v365 = v101 & 0x1FFFFFFF0;
          v15 = 0uLL;
          v366 = 0uLL;
          do
          {
            v367 = *v364++;
            v368 = vqtbl1q_s8(v367, xmmword_240407000);
            v369 = vqtbl1q_s8(v367, xmmword_240407010);
            v370 = vcvtq_f32_u32(vqtbl1q_s8(v367, xmmword_240407030));
            v371 = vcvtq_f32_u32(vqtbl1q_s8(v367, xmmword_240407020));
            v372 = *v363++;
            v373 = vabdq_f32(vcvtq_f32_u32(v368), vcvtq_f32_u32(vqtbl1q_s8(v372, xmmword_240407000)));
            v374 = vabdq_f32(vcvtq_f32_u32(v369), vcvtq_f32_u32(vqtbl1q_s8(v372, xmmword_240407010)));
            v375 = vabdq_f32(v371, vcvtq_f32_u32(vqtbl1q_s8(v372, xmmword_240407020)));
            v376 = vabdq_f32(v370, vcvtq_f32_u32(vqtbl1q_s8(v372, xmmword_240407030)));
            v377 = vcgtq_f32(v374, v106);
            v378 = vcvt_hight_f64_f32(v375);
            v379 = vcvt_hight_f64_f32(v373);
            v380 = vextq_s8(v372, v372, 8uLL).u64[0];
            v381 = vcvtq_f64_f32(*v373.f32);
            v382.i32[0] = v380.u8[4];
            v383 = vcvt_hight_f64_f32(v374);
            v384 = vcvtq_f64_f32(*v374.f32);
            v382.i32[1] = v380.u8[5];
            v385 = vuzp1q_s16(vcgtq_f32(v375, v106), vcgtq_f32(v376, v106));
            v386.i32[0] = v380.u8[6];
            v386.i32[1] = v380.u8[7];
            v387 = vuzp1q_s16(vcgtq_f32(v373, v106), v377);
            v388.i32[0] = v380.u8[0];
            *v377.i8 = vand_s8(v382, 0xFF000000FFLL);
            v388.i32[1] = v380.u8[1];
            v389 = vand_s8(v386, 0xFF000000FFLL);
            v390.i32[0] = v380.u8[2];
            v390.i32[1] = v380.u8[3];
            v391.i64[0] = v377.u32[0];
            v391.i64[1] = v377.u32[1];
            v392 = v391;
            v393 = vand_s8(v388, 0xFF000000FFLL);
            v394 = vand_s8(v390, 0xFF000000FFLL);
            v380.i32[0] = v372.u8[4];
            v391.i64[0] = v389.u32[0];
            v391.i64[1] = v389.u32[1];
            v395 = v391;
            v380.i32[1] = v372.u8[5];
            v396 = vand_s8(v380, 0xFF000000FFLL);
            v391.i64[0] = v393.u32[0];
            v391.i64[1] = v393.u32[1];
            v397 = v391;
            v382.i32[0] = v372.u8[6];
            v391.i64[0] = v394.u32[0];
            v391.i64[1] = v394.u32[1];
            v398 = v391;
            v391.i64[0] = v396.u32[0];
            v391.i64[1] = v396.u32[1];
            v399 = v391;
            v382.i32[1] = v372.u8[7];
            v400 = vand_s8(v382, 0xFF000000FFLL);
            v391.i64[0] = v400.u32[0];
            v391.i64[1] = v400.u32[1];
            v401.i32[0] = v372.u8[0];
            v402 = vcvtq_f64_u64(v391);
            v401.i32[1] = v372.u8[1];
            v403 = vand_s8(v401, 0xFF000000FFLL);
            v391.i64[0] = v403.u32[0];
            v391.i64[1] = v403.u32[1];
            v404.i32[0] = v372.u8[2];
            v405 = vcvtq_f64_u64(v397);
            v406 = vcvtq_f64_u64(v391);
            v404.i32[1] = v372.u8[3];
            v407 = vand_s8(v404, 0xFF000000FFLL);
            v391.i64[0] = v407.u32[0];
            v391.i64[1] = v407.u32[1];
            *v405.f32 = vcvt_f32_f64(vdivq_f64(v381, vaddq_f64(v405, v109)));
            *&v381.f64[0] = vcvt_f32_f64(vdivq_f64(v383, vaddq_f64(vcvtq_f64_u64(v395), v109)));
            *v383.f32 = vcvt_f32_f64(vdivq_f64(v384, vaddq_f64(vcvtq_f64_u64(v392), v109)));
            *&v405.u32[2] = vcvt_f32_f64(vdivq_f64(v379, vaddq_f64(vcvtq_f64_u64(v398), v109)));
            *v375.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v375.f32), vaddq_f64(v406, v109)));
            *&v375.u32[2] = vcvt_f32_f64(vdivq_f64(v378, vaddq_f64(vcvtq_f64_u64(v391), v109)));
            v383.i64[1] = *&v381.f64[0];
            *v369.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v376.f32), vaddq_f64(vcvtq_f64_u64(v399), v109)));
            *&v369.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v376), vaddq_f64(v402, v109)));
            *&v378.f64[0] = vmovn_s16(vandq_s8(v387, vuzp1q_s16(vcgtq_f32(v405, v107), vcgtq_f32(v383, v107))));
            v408 = vmovl_u16(vzip1_s8(*&v378.f64[0], *v106.f32));
            *v385.i8 = vand_s8(vmovn_s16(v385), vmovn_s16(vuzp1q_s16(vcgtq_f32(v375, v107), vcgtq_f32(v369, v107))));
            v16 = vandq_s8(vmovl_u16(vzip2_s8(*&v378.f64[0], *v106.f32)), v110);
            v366 = vaddq_s32(v366, v16);
            v15 = vaddq_s32(v15, vandq_s8(v408, v110));
            v362 = vaddq_s32(v362, vandq_s8(vmovl_u16(vzip2_s8(*v385.i8, *v106.f32)), v110));
            v361 = vaddq_s32(v361, vandq_s8(vmovl_u16(vzip1_s8(*v385.i8, *v106.f32)), v110));
            v365 -= 16;
          }

          while (v365);
          v14 = COERCE_FLOAT(vaddvq_s32(vaddq_s32(vaddq_s32(v361, v15), vaddq_s32(v362, v366))));
          *&PixelFormatType = v14;
          if (v101 == v105)
          {
            v17.i32[0] = a4.i32[0];
            goto LABEL_231;
          }

          v17.i32[0] = a4.i32[0];
          if ((v580.width & 2) == 0)
          {
            v334 += v105;
            v335 += v105;
            v336 = v101 & 0xFFFFFFF0;
LABEL_235:
            v337 = v336 + 1;
            do
            {
              LOBYTE(v14) = *v334;
              v338 = *v335;
              v14 = vabds_f32(LODWORD(v14), v338);
              if (v14 > *v18.i32)
              {
                v14 = v14 / (v338 + 1.0e-22);
                if (v14 > *v17.i32)
                {
                  LODWORD(PixelFormatType) = PixelFormatType + 1;
                }
              }

              ++v334;
              ++v335;
              v44 = v101 > v337++;
            }

            while (v44);
            goto LABEL_231;
          }

          v339 = v101 & 0x1FFFFFFF0;
        }

        else
        {
          v339 = 0;
        }

        v335 += v108;
        v340 = 0uLL;
        v341 = PixelFormatType;
        do
        {
          v15.i64[0] = *(v112->i64 + v339);
          v16.i64[0] = *(v111->i64 + v339);
          v342 = vabdq_f32(vcvtq_f32_u32(vqtbl1q_s8(v15, xmmword_240407020)), vcvtq_f32_u32(vqtbl1q_s8(v16, xmmword_240407020)));
          v343 = vabdq_f32(vcvtq_f32_u32(vqtbl1q_s8(v15, xmmword_240407030)), vcvtq_f32_u32(vqtbl1q_s8(v16, xmmword_240407030)));
          v344 = vcvt_hight_f64_f32(v342);
          v345 = vcvt_hight_f64_f32(v343);
          v346 = vcvtq_f64_f32(*v343.f32);
          v347.i32[0] = v16.u8[4];
          v348 = vuzp1q_s16(vcgtq_f32(v342, v106), vcgtq_f32(v343, v106));
          v347.i32[1] = v16.u8[5];
          v349.i32[0] = v16.u8[6];
          v350 = vand_s8(v347, 0xFF000000FFLL);
          v349.i32[1] = v16.u8[7];
          v351 = vand_s8(v349, 0xFF000000FFLL);
          v352.i64[0] = v350.u32[0];
          v352.i64[1] = v350.u32[1];
          v347.i32[0] = v16.u8[0];
          v353 = vcvtq_f64_u64(v352);
          v352.i64[0] = v351.u32[0];
          v352.i64[1] = v351.u32[1];
          v354 = v352;
          v347.i32[1] = v16.u8[1];
          v355 = vand_s8(v347, 0xFF000000FFLL);
          v352.i64[0] = v355.u32[0];
          v352.i64[1] = v355.u32[1];
          v356.i32[0] = v16.u8[2];
          v357 = v16.u8[3];
          v358 = vcvtq_f64_u64(v352);
          v356.i32[1] = v357;
          v359 = vand_s8(v356, 0xFF000000FFLL);
          v352.i64[0] = v359.u32[0];
          v352.i64[1] = v359.u32[1];
          *v342.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v342.f32), vaddq_f64(v358, v109)));
          *&v342.u32[2] = vcvt_f32_f64(vdivq_f64(v344, vaddq_f64(vcvtq_f64_u64(v352), v109)));
          *v358.f32 = vcvt_f32_f64(vdivq_f64(v346, vaddq_f64(v353, v109)));
          *&v358.u32[2] = vcvt_f32_f64(vdivq_f64(v345, vaddq_f64(vcvtq_f64_u64(v354), v109)));
          v16 = vcgtq_f32(v358, v107);
          *v348.i8 = vmovn_s16(vandq_s8(v348, vuzp1q_s16(vcgtq_f32(v342, v107), v16)));
          v360 = vmovl_u16(vzip1_s8(*v348.i8, *v106.f32));
          v15 = vandq_s8(vmovl_u16(vzip2_s8(*v348.i8, *v106.f32)), v110);
          v340 = vaddq_s32(v340, v15);
          v341 = vaddq_s32(v341, vandq_s8(v360, v110));
          v339 += 8;
        }

        while (v108 != v339);
        v14 = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v341, v340)));
        *&PixelFormatType = v14;
        if (v101 != v108)
        {
          v334 += v108;
          v336 = v101 & 0xFFFFFFF8;
          goto LABEL_235;
        }

LABEL_231:
        ++v102;
        v112 = (v112 + v580.rowBytes);
        v111 = (v111 + v579.rowBytes);
        if (v580.height <= v102)
        {
          goto LABEL_311;
        }
      }
    }

    if (PixelFormatType != 843264104)
    {
      if (PixelFormatType != 875704422)
      {
        goto LABEL_224;
      }

LABEL_139:
      PixelBufferUtils::asVImageBuffer(this, 0, *v13, &v580);
      PixelBufferUtils::asVImageBuffer(a2, 0, *v13, &v579);
      v186 = *a4.i32;
      if (v580.height == v579.height && v580.width == v579.width)
      {
        if (v580.height && v580.width)
        {
          v187 = 0;
          LODWORD(PixelFormatType) = 0;
          if (LODWORD(v580.width))
          {
            v188 = (v580.width - 1) >> 32 == 0;
          }

          else
          {
            v188 = 0;
          }

          v189 = !v188;
          v190 = v580.width & 0x1FFFFFFF0;
          v191 = vdupq_lane_s32(a5, 0);
          v192 = vdupq_lane_s32(a4, 0);
          v193 = v580.width & 0x1FFFFFFF8;
          v194 = vdupq_n_s64(0x3B5E392010175EE6uLL);
          v195.i64[0] = 0x100000001;
          v195.i64[1] = 0x100000001;
          v196 = v579.data;
          v197 = v580.data;
          while (1)
          {
            v409 = v580.data + v187 * v580.rowBytes;
            v410 = v579.data + v187 * v579.rowBytes;
            if (v580.width < 8 || (v189 & 1) != 0)
            {
              v411 = 0;
              goto LABEL_258;
            }

            if (v580.width >= 0x10)
            {
              v436 = PixelFormatType;
              v437 = 0uLL;
              v438 = v196;
              v439 = v197;
              v440 = v580.width & 0x1FFFFFFF0;
              v184 = 0uLL;
              v441 = 0uLL;
              do
              {
                v442 = *v439++;
                v443 = vqtbl1q_s8(v442, xmmword_240407000);
                v444 = vqtbl1q_s8(v442, xmmword_240407010);
                v445 = vcvtq_f32_u32(vqtbl1q_s8(v442, xmmword_240407030));
                v446 = vcvtq_f32_u32(vqtbl1q_s8(v442, xmmword_240407020));
                v447 = *v438++;
                v448 = vabdq_f32(vcvtq_f32_u32(v443), vcvtq_f32_u32(vqtbl1q_s8(v447, xmmword_240407000)));
                v449 = vabdq_f32(vcvtq_f32_u32(v444), vcvtq_f32_u32(vqtbl1q_s8(v447, xmmword_240407010)));
                v450 = vabdq_f32(v446, vcvtq_f32_u32(vqtbl1q_s8(v447, xmmword_240407020)));
                v451 = vabdq_f32(v445, vcvtq_f32_u32(vqtbl1q_s8(v447, xmmword_240407030)));
                v452 = vcgtq_f32(v449, v191);
                v453 = vcvt_hight_f64_f32(v450);
                v454 = vcvt_hight_f64_f32(v448);
                v455 = vextq_s8(v447, v447, 8uLL).u64[0];
                v456 = vcvtq_f64_f32(*v448.f32);
                v457.i32[0] = v455.u8[4];
                v458 = vcvt_hight_f64_f32(v449);
                v459 = vcvtq_f64_f32(*v449.f32);
                v457.i32[1] = v455.u8[5];
                v460 = vuzp1q_s16(vcgtq_f32(v450, v191), vcgtq_f32(v451, v191));
                v461.i32[0] = v455.u8[6];
                v461.i32[1] = v455.u8[7];
                v462 = vuzp1q_s16(vcgtq_f32(v448, v191), v452);
                v463.i32[0] = v455.u8[0];
                *v452.i8 = vand_s8(v457, 0xFF000000FFLL);
                v463.i32[1] = v455.u8[1];
                v464 = vand_s8(v461, 0xFF000000FFLL);
                v465.i32[0] = v455.u8[2];
                v465.i32[1] = v455.u8[3];
                v466.i64[0] = v452.u32[0];
                v466.i64[1] = v452.u32[1];
                v467 = v466;
                v468 = vand_s8(v463, 0xFF000000FFLL);
                v469 = vand_s8(v465, 0xFF000000FFLL);
                v455.i32[0] = v447.u8[4];
                v466.i64[0] = v464.u32[0];
                v466.i64[1] = v464.u32[1];
                v470 = v466;
                v455.i32[1] = v447.u8[5];
                v471 = vand_s8(v455, 0xFF000000FFLL);
                v466.i64[0] = v468.u32[0];
                v466.i64[1] = v468.u32[1];
                v472 = v466;
                v457.i32[0] = v447.u8[6];
                v466.i64[0] = v469.u32[0];
                v466.i64[1] = v469.u32[1];
                v473 = v466;
                v466.i64[0] = v471.u32[0];
                v466.i64[1] = v471.u32[1];
                v474 = v466;
                v457.i32[1] = v447.u8[7];
                v475 = vand_s8(v457, 0xFF000000FFLL);
                v466.i64[0] = v475.u32[0];
                v466.i64[1] = v475.u32[1];
                v476.i32[0] = v447.u8[0];
                v477 = vcvtq_f64_u64(v466);
                v476.i32[1] = v447.u8[1];
                v478 = vand_s8(v476, 0xFF000000FFLL);
                v466.i64[0] = v478.u32[0];
                v466.i64[1] = v478.u32[1];
                v479.i32[0] = v447.u8[2];
                v480 = vcvtq_f64_u64(v472);
                v481 = vcvtq_f64_u64(v466);
                v479.i32[1] = v447.u8[3];
                v482 = vand_s8(v479, 0xFF000000FFLL);
                v466.i64[0] = v482.u32[0];
                v466.i64[1] = v482.u32[1];
                *v480.f32 = vcvt_f32_f64(vdivq_f64(v456, vaddq_f64(v480, v194)));
                *&v456.f64[0] = vcvt_f32_f64(vdivq_f64(v458, vaddq_f64(vcvtq_f64_u64(v470), v194)));
                *v458.f32 = vcvt_f32_f64(vdivq_f64(v459, vaddq_f64(vcvtq_f64_u64(v467), v194)));
                *&v480.u32[2] = vcvt_f32_f64(vdivq_f64(v454, vaddq_f64(vcvtq_f64_u64(v473), v194)));
                *v450.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v450.f32), vaddq_f64(v481, v194)));
                *&v450.u32[2] = vcvt_f32_f64(vdivq_f64(v453, vaddq_f64(vcvtq_f64_u64(v466), v194)));
                v458.i64[1] = *&v456.f64[0];
                *v444.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v451.f32), vaddq_f64(vcvtq_f64_u64(v474), v194)));
                *&v444.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v451), vaddq_f64(v477, v194)));
                *&v453.f64[0] = vmovn_s16(vandq_s8(v462, vuzp1q_s16(vcgtq_f32(v480, v192), vcgtq_f32(v458, v192))));
                v483 = vmovl_u16(vzip1_s8(*&v453.f64[0], *v191.f32));
                *v460.i8 = vand_s8(vmovn_s16(v460), vmovn_s16(vuzp1q_s16(vcgtq_f32(v450, v192), vcgtq_f32(v444, v192))));
                v185 = vandq_s8(vmovl_u16(vzip2_s8(*&v453.f64[0], *v191.f32)), v195);
                v441 = vaddq_s32(v441, v185);
                v184 = vaddq_s32(v184, vandq_s8(v483, v195));
                v437 = vaddq_s32(v437, vandq_s8(vmovl_u16(vzip2_s8(*v460.i8, *v191.f32)), v195));
                v436 = vaddq_s32(v436, vandq_s8(vmovl_u16(vzip1_s8(*v460.i8, *v191.f32)), v195));
                v440 -= 16;
              }

              while (v440);
              v183 = COERCE_FLOAT(vaddvq_s32(vaddq_s32(vaddq_s32(v436, v184), vaddq_s32(v437, v441))));
              *&PixelFormatType = v183;
              if (v580.width == v190)
              {
                v186 = *a4.i32;
                goto LABEL_254;
              }

              v186 = *a4.i32;
              if ((v580.width & 8) == 0)
              {
                v409 += v190;
                v410 += v190;
                v411 = v580.width & 0xFFFFFFF0;
LABEL_258:
                v412 = v411 + 1;
                do
                {
                  LOBYTE(v183) = *v409;
                  v413 = *v410;
                  v183 = vabds_f32(LODWORD(v183), v413);
                  if (v183 > *a5.i32)
                  {
                    v183 = v183 / (v413 + 1.0e-22);
                    if (v183 > v186)
                    {
                      LODWORD(PixelFormatType) = PixelFormatType + 1;
                    }
                  }

                  ++v409;
                  ++v410;
                  v44 = v580.width > v412++;
                }

                while (v44);
                goto LABEL_254;
              }

              v414 = v580.width & 0x1FFFFFFF0;
            }

            else
            {
              v414 = 0;
            }

            v410 += v193;
            v415 = 0uLL;
            v416 = PixelFormatType;
            do
            {
              v184.i64[0] = *(v197->i64 + v414);
              v185.i64[0] = *(v196->i64 + v414);
              v417 = vabdq_f32(vcvtq_f32_u32(vqtbl1q_s8(v184, xmmword_240407020)), vcvtq_f32_u32(vqtbl1q_s8(v185, xmmword_240407020)));
              v418 = vabdq_f32(vcvtq_f32_u32(vqtbl1q_s8(v184, xmmword_240407030)), vcvtq_f32_u32(vqtbl1q_s8(v185, xmmword_240407030)));
              v419 = vcvt_hight_f64_f32(v417);
              v420 = vcvt_hight_f64_f32(v418);
              v421 = vcvtq_f64_f32(*v418.f32);
              v422.i32[0] = v185.u8[4];
              v423 = vuzp1q_s16(vcgtq_f32(v417, v191), vcgtq_f32(v418, v191));
              v422.i32[1] = v185.u8[5];
              v424.i32[0] = v185.u8[6];
              v425 = vand_s8(v422, 0xFF000000FFLL);
              v424.i32[1] = v185.u8[7];
              v426 = vand_s8(v424, 0xFF000000FFLL);
              v427.i64[0] = v425.u32[0];
              v427.i64[1] = v425.u32[1];
              v422.i32[0] = v185.u8[0];
              v428 = vcvtq_f64_u64(v427);
              v427.i64[0] = v426.u32[0];
              v427.i64[1] = v426.u32[1];
              v429 = v427;
              v422.i32[1] = v185.u8[1];
              v430 = vand_s8(v422, 0xFF000000FFLL);
              v427.i64[0] = v430.u32[0];
              v427.i64[1] = v430.u32[1];
              v431.i32[0] = v185.u8[2];
              v432 = v185.u8[3];
              v433 = vcvtq_f64_u64(v427);
              v431.i32[1] = v432;
              v434 = vand_s8(v431, 0xFF000000FFLL);
              v427.i64[0] = v434.u32[0];
              v427.i64[1] = v434.u32[1];
              *v417.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v417.f32), vaddq_f64(v433, v194)));
              *&v417.u32[2] = vcvt_f32_f64(vdivq_f64(v419, vaddq_f64(vcvtq_f64_u64(v427), v194)));
              *v433.f32 = vcvt_f32_f64(vdivq_f64(v421, vaddq_f64(v428, v194)));
              *&v433.u32[2] = vcvt_f32_f64(vdivq_f64(v420, vaddq_f64(vcvtq_f64_u64(v429), v194)));
              v185 = vcgtq_f32(v433, v192);
              *v423.i8 = vmovn_s16(vandq_s8(v423, vuzp1q_s16(vcgtq_f32(v417, v192), v185)));
              v435 = vmovl_u16(vzip1_s8(*v423.i8, *v191.f32));
              v184 = vandq_s8(vmovl_u16(vzip2_s8(*v423.i8, *v191.f32)), v195);
              v415 = vaddq_s32(v415, v184);
              v416 = vaddq_s32(v416, vandq_s8(v435, v195));
              v414 += 8;
            }

            while (v193 != v414);
            v183 = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v416, v415)));
            *&PixelFormatType = v183;
            if (v580.width != v193)
            {
              v409 += v193;
              v411 = v580.width & 0xFFFFFFF8;
              goto LABEL_258;
            }

LABEL_254:
            ++v187;
            v197 = (v197 + v580.rowBytes);
            v196 = (v196 + v579.rowBytes);
            if (v580.height <= v187)
            {
              goto LABEL_277;
            }
          }
        }

        LODWORD(PixelFormatType) = 0;
      }

LABEL_277:
      PixelBufferUtils::asVImageBuffer(this, 1, *v13, &v580);
      PixelBufferUtils::asVImageBuffer(a2, 1, *v13, &v579);
      v488 = *a4.i32;
      if (*&v580.height != *&v579.height)
      {
LABEL_310:
        LODWORD(PixelFormatType) = LODWORD(v484) + PixelFormatType;
        goto LABEL_311;
      }

      if (!v580.height)
      {
        goto LABEL_311;
      }

      v489 = 2 * v580.width;
      if (!(2 * v580.width))
      {
        goto LABEL_311;
      }

      v490 = 0;
      v484 = 0.0;
      if (v489)
      {
        v491 = (v489 - 1) >> 32 == 0;
      }

      else
      {
        v491 = 0;
      }

      v492 = !v491;
      v493 = v489 & 0x1FFFFFFF0;
      v494 = vdupq_lane_s32(a5, 0);
      v495 = vdupq_lane_s32(a4, 0);
      v496 = v489 & 0x1FFFFFFF8;
      v497 = vdupq_n_s64(0x3B5E392010175EE6uLL);
      v498.i64[0] = 0x100000001;
      v498.i64[1] = 0x100000001;
      v499 = v579.data;
      v500 = v580.data;
      while (1)
      {
        v501 = v580.data + v490 * v580.rowBytes;
        v502 = v579.data + v490 * v579.rowBytes;
        if (v489 < 8 || (v492 & 1) != 0)
        {
          v503 = 0;
          goto LABEL_292;
        }

        if (v489 >= 0x10)
        {
          v528 = LODWORD(v484);
          v529 = 0uLL;
          v530 = v499;
          v531 = v500;
          v532 = v489 & 0x1FFFFFFF0;
          v486 = 0uLL;
          v533 = 0uLL;
          do
          {
            v534 = *v531++;
            v535 = vqtbl1q_s8(v534, xmmword_240407000);
            v536 = vqtbl1q_s8(v534, xmmword_240407010);
            v537 = vcvtq_f32_u32(vqtbl1q_s8(v534, xmmword_240407030));
            v538 = vcvtq_f32_u32(vqtbl1q_s8(v534, xmmword_240407020));
            v539 = *v530++;
            v540 = vabdq_f32(vcvtq_f32_u32(v535), vcvtq_f32_u32(vqtbl1q_s8(v539, xmmword_240407000)));
            v541 = vabdq_f32(vcvtq_f32_u32(v536), vcvtq_f32_u32(vqtbl1q_s8(v539, xmmword_240407010)));
            v542 = vabdq_f32(v538, vcvtq_f32_u32(vqtbl1q_s8(v539, xmmword_240407020)));
            v543 = vabdq_f32(v537, vcvtq_f32_u32(vqtbl1q_s8(v539, xmmword_240407030)));
            v544 = vcgtq_f32(v541, v494);
            v545 = vcvt_hight_f64_f32(v542);
            v546 = vcvt_hight_f64_f32(v540);
            v547 = vextq_s8(v539, v539, 8uLL).u64[0];
            v548 = vcvtq_f64_f32(*v540.f32);
            v549.i32[0] = v547.u8[4];
            v550 = vcvt_hight_f64_f32(v541);
            v551 = vcvtq_f64_f32(*v541.f32);
            v549.i32[1] = v547.u8[5];
            v552 = vuzp1q_s16(vcgtq_f32(v542, v494), vcgtq_f32(v543, v494));
            v553.i32[0] = v547.u8[6];
            v553.i32[1] = v547.u8[7];
            v554 = vuzp1q_s16(vcgtq_f32(v540, v494), v544);
            v555.i32[0] = v547.u8[0];
            *v544.i8 = vand_s8(v549, 0xFF000000FFLL);
            v555.i32[1] = v547.u8[1];
            v556 = vand_s8(v553, 0xFF000000FFLL);
            v557.i32[0] = v547.u8[2];
            v557.i32[1] = v547.u8[3];
            v558.i64[0] = v544.u32[0];
            v558.i64[1] = v544.u32[1];
            v559 = v558;
            v560 = vand_s8(v555, 0xFF000000FFLL);
            v561 = vand_s8(v557, 0xFF000000FFLL);
            v547.i32[0] = v539.u8[4];
            v558.i64[0] = v556.u32[0];
            v558.i64[1] = v556.u32[1];
            v562 = v558;
            v547.i32[1] = v539.u8[5];
            v563 = vand_s8(v547, 0xFF000000FFLL);
            v558.i64[0] = v560.u32[0];
            v558.i64[1] = v560.u32[1];
            v564 = v558;
            v549.i32[0] = v539.u8[6];
            v558.i64[0] = v561.u32[0];
            v558.i64[1] = v561.u32[1];
            v565 = v558;
            v558.i64[0] = v563.u32[0];
            v558.i64[1] = v563.u32[1];
            v566 = v558;
            v549.i32[1] = v539.u8[7];
            v567 = vand_s8(v549, 0xFF000000FFLL);
            v558.i64[0] = v567.u32[0];
            v558.i64[1] = v567.u32[1];
            v568.i32[0] = v539.u8[0];
            v569 = vcvtq_f64_u64(v558);
            v568.i32[1] = v539.u8[1];
            v570 = vand_s8(v568, 0xFF000000FFLL);
            v558.i64[0] = v570.u32[0];
            v558.i64[1] = v570.u32[1];
            v571.i32[0] = v539.u8[2];
            v572 = vcvtq_f64_u64(v564);
            v573 = vcvtq_f64_u64(v558);
            v571.i32[1] = v539.u8[3];
            v574 = vand_s8(v571, 0xFF000000FFLL);
            v558.i64[0] = v574.u32[0];
            v558.i64[1] = v574.u32[1];
            *v572.f32 = vcvt_f32_f64(vdivq_f64(v548, vaddq_f64(v572, v497)));
            *&v548.f64[0] = vcvt_f32_f64(vdivq_f64(v550, vaddq_f64(vcvtq_f64_u64(v562), v497)));
            *v550.f32 = vcvt_f32_f64(vdivq_f64(v551, vaddq_f64(vcvtq_f64_u64(v559), v497)));
            *&v572.u32[2] = vcvt_f32_f64(vdivq_f64(v546, vaddq_f64(vcvtq_f64_u64(v565), v497)));
            *v542.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v542.f32), vaddq_f64(v573, v497)));
            *&v542.u32[2] = vcvt_f32_f64(vdivq_f64(v545, vaddq_f64(vcvtq_f64_u64(v558), v497)));
            v550.i64[1] = *&v548.f64[0];
            *v536.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v543.f32), vaddq_f64(vcvtq_f64_u64(v566), v497)));
            *&v536.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v543), vaddq_f64(v569, v497)));
            *&v545.f64[0] = vmovn_s16(vandq_s8(v554, vuzp1q_s16(vcgtq_f32(v572, v495), vcgtq_f32(v550, v495))));
            v575 = vmovl_u16(vzip1_s8(*&v545.f64[0], *v494.f32));
            *v552.i8 = vand_s8(vmovn_s16(v552), vmovn_s16(vuzp1q_s16(vcgtq_f32(v542, v495), vcgtq_f32(v536, v495))));
            v487 = vandq_s8(vmovl_u16(vzip2_s8(*&v545.f64[0], *v494.f32)), v498);
            v533 = vaddq_s32(v533, v487);
            v486 = vaddq_s32(v486, vandq_s8(v575, v498));
            v529 = vaddq_s32(v529, vandq_s8(vmovl_u16(vzip2_s8(*v552.i8, *v494.f32)), v498));
            v528 = vaddq_s32(v528, vandq_s8(vmovl_u16(vzip1_s8(*v552.i8, *v494.f32)), v498));
            v532 -= 16;
          }

          while (v532);
          v485 = COERCE_FLOAT(vaddvq_s32(vaddq_s32(vaddq_s32(v528, v486), vaddq_s32(v529, v533))));
          v484 = v485;
          if (v489 == v493)
          {
            v488 = *a4.i32;
            goto LABEL_288;
          }

          v488 = *a4.i32;
          if ((v580.width & 4) == 0)
          {
            v501 += v493;
            v502 += v493;
            v503 = v489 & 0xFFFFFFF0;
LABEL_292:
            v504 = v503 + 1;
            do
            {
              LOBYTE(v485) = *v501;
              v505 = *v502;
              v485 = vabds_f32(LODWORD(v485), v505);
              if (v485 > *a5.i32)
              {
                v485 = v485 / (v505 + 1.0e-22);
                if (v485 > v488)
                {
                  ++LODWORD(v484);
                }
              }

              ++v501;
              ++v502;
              v44 = v489 > v504++;
            }

            while (v44);
            goto LABEL_288;
          }

          v506 = v489 & 0x1FFFFFFF0;
        }

        else
        {
          v506 = 0;
        }

        v502 += v496;
        v507 = 0uLL;
        v508 = LODWORD(v484);
        do
        {
          v486.i64[0] = *(v500->i64 + v506);
          v487.i64[0] = *(v499->i64 + v506);
          v509 = vabdq_f32(vcvtq_f32_u32(vqtbl1q_s8(v486, xmmword_240407020)), vcvtq_f32_u32(vqtbl1q_s8(v487, xmmword_240407020)));
          v510 = vabdq_f32(vcvtq_f32_u32(vqtbl1q_s8(v486, xmmword_240407030)), vcvtq_f32_u32(vqtbl1q_s8(v487, xmmword_240407030)));
          v511 = vcvt_hight_f64_f32(v509);
          v512 = vcvt_hight_f64_f32(v510);
          v513 = vcvtq_f64_f32(*v510.f32);
          v514.i32[0] = v487.u8[4];
          v515 = vuzp1q_s16(vcgtq_f32(v509, v494), vcgtq_f32(v510, v494));
          v514.i32[1] = v487.u8[5];
          v516.i32[0] = v487.u8[6];
          v517 = vand_s8(v514, 0xFF000000FFLL);
          v516.i32[1] = v487.u8[7];
          v518 = vand_s8(v516, 0xFF000000FFLL);
          v519.i64[0] = v517.u32[0];
          v519.i64[1] = v517.u32[1];
          v514.i32[0] = v487.u8[0];
          v520 = vcvtq_f64_u64(v519);
          v519.i64[0] = v518.u32[0];
          v519.i64[1] = v518.u32[1];
          v521 = v519;
          v514.i32[1] = v487.u8[1];
          v522 = vand_s8(v514, 0xFF000000FFLL);
          v519.i64[0] = v522.u32[0];
          v519.i64[1] = v522.u32[1];
          v523.i32[0] = v487.u8[2];
          v524 = v487.u8[3];
          v525 = vcvtq_f64_u64(v519);
          v523.i32[1] = v524;
          v526 = vand_s8(v523, 0xFF000000FFLL);
          v519.i64[0] = v526.u32[0];
          v519.i64[1] = v526.u32[1];
          *v509.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v509.f32), vaddq_f64(v525, v497)));
          *&v509.u32[2] = vcvt_f32_f64(vdivq_f64(v511, vaddq_f64(vcvtq_f64_u64(v519), v497)));
          *v525.f32 = vcvt_f32_f64(vdivq_f64(v513, vaddq_f64(v520, v497)));
          *&v525.u32[2] = vcvt_f32_f64(vdivq_f64(v512, vaddq_f64(vcvtq_f64_u64(v521), v497)));
          v487 = vcgtq_f32(v525, v495);
          *v515.i8 = vmovn_s16(vandq_s8(v515, vuzp1q_s16(vcgtq_f32(v509, v495), v487)));
          v527 = vmovl_u16(vzip1_s8(*v515.i8, *v494.f32));
          v486 = vandq_s8(vmovl_u16(vzip2_s8(*v515.i8, *v494.f32)), v498);
          v507 = vaddq_s32(v507, v486);
          v508 = vaddq_s32(v508, vandq_s8(v527, v498));
          v506 += 8;
        }

        while (v496 != v506);
        v485 = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v508, v507)));
        v484 = v485;
        if (v489 != v496)
        {
          v501 += v496;
          v503 = v489 & 0xFFFFFFF8;
          goto LABEL_292;
        }

LABEL_288:
        ++v490;
        v500 = (v500 + v580.rowBytes);
        v499 = (v499 + v579.rowBytes);
        if (v580.height <= v490)
        {
          goto LABEL_310;
        }
      }
    }

    if (*&v580.height != *&v579.height)
    {
      goto LABEL_311;
    }

    if (!v580.height)
    {
      goto LABEL_229;
    }

    v198 = 2 * v580.width;
    if (!(2 * v580.width))
    {
      goto LABEL_229;
    }

    v199 = 0;
    LODWORD(PixelFormatType) = 0;
    if (v198)
    {
      v200 = (v198 - 1) >> 32 == 0;
    }

    else
    {
      v200 = 0;
    }

    v201 = !v200;
    v202 = vdupq_lane_s32(a5, 0);
    v203 = vdupq_lane_s32(a4, 0);
    v204 = 2 * (v198 & 0x1FFFFFFF0);
    v205 = 2 * (v198 & 0x1FFFFFFF8);
    v206 = (v580.data + 16);
    v207 = (v579.data + 16);
    v208 = vdupq_n_s64(0x3B5E392010175EE6uLL);
    v209.i64[0] = 0x100000001;
    v209.i64[1] = 0x100000001;
    v210 = v579.data;
    v211 = v580.data;
    while (1)
    {
      v212 = (v580.data + v199 * v580.rowBytes);
      v213 = (v579.data + v199 * v579.rowBytes);
      if (v198 < 8 || (v201 & 1) != 0)
      {
        v214 = 0;
        goto LABEL_164;
      }

      if (v198 >= 0x10)
      {
        v241 = PixelFormatType;
        v242 = 0uLL;
        v243 = v207;
        v244 = v206;
        v245 = v198 & 0x1FFFFFFF0;
        v246 = 0uLL;
        v247 = 0uLL;
        do
        {
          v248 = *v244[-2].i8;
          v249 = v243[-1];
          v250 = vcvt_hight_f32_f16(v249);
          v251 = vcvtq_f32_f16(*v249.i8);
          v252 = vcvt_hight_f32_f16(*v243);
          v253 = vcvtq_f32_f16(*v243->i8);
          v254 = vabdq_f32(vcvtq_f32_f16(*v248.i8), v251);
          v255 = vabdq_f32(vcvt_hight_f32_f16(v248), v250);
          v256 = vabdq_f32(vcvtq_f32_f16(*v244), v253);
          v257 = vabdq_f32(vcvt_hight_f32_f16(*v244->i8), v252);
          v258 = vcgtq_f32(v255, v202);
          v259 = vcgtq_f32(v254, v202);
          v260 = vcvt_hight_f64_f32(v254);
          v261 = vcvt_hight_f64_f32(v255);
          *v254.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v254.f32), vaddq_f64(vcvtq_f64_f32(*v251.f32), v208)));
          *v255.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v255.f32), vaddq_f64(vcvtq_f64_f32(*v250.f32), v208)));
          *&v254.u32[2] = vcvt_f32_f64(vdivq_f64(v260, vaddq_f64(vcvt_hight_f64_f32(v251), v208)));
          *&v255.u32[2] = vcvt_f32_f64(vdivq_f64(v261, vaddq_f64(vcvt_hight_f64_f32(v250), v208)));
          *v251.f32 = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v256), vaddq_f64(vcvt_hight_f64_f32(v253), v208)));
          *v253.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v256.f32), vaddq_f64(vcvtq_f64_f32(*v253.f32), v208)));
          v253.i64[1] = v251.i64[0];
          *v250.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v257.f32), vaddq_f64(vcvtq_f64_f32(*v252.f32), v208)));
          *&v250.u32[2] = vcvt_f32_f64(vdivq_f64(vcvt_hight_f64_f32(v257), vaddq_f64(vcvt_hight_f64_f32(v252), v208)));
          *v258.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(v259, v258), vuzp1q_s16(vcgtq_f32(v254, v203), vcgtq_f32(v255, v203))));
          *v259.i8 = vmovn_s16(vandq_s8(vuzp1q_s16(vcgtq_f32(v256, v202), vcgtq_f32(v257, v202)), vuzp1q_s16(vcgtq_f32(v253, v203), vcgtq_f32(v250, v203))));
          v242 = vaddq_s32(v242, vandq_s8(vmovl_u16(vzip2_s8(*v258.i8, *v202.f32)), v209));
          v241 = vaddq_s32(v241, vandq_s8(vmovl_u16(vzip1_s8(*v258.i8, *v202.f32)), v209));
          v247 = vaddq_s32(v247, vandq_s8(vmovl_u16(vzip2_s8(*v259.i8, *v202.f32)), v209));
          v246 = vaddq_s32(v246, vandq_s8(vmovl_u16(vzip1_s8(*v259.i8, *v202.f32)), v209));
          v244 += 4;
          v243 += 2;
          v245 -= 16;
        }

        while (v245);
        LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(vaddq_s32(v246, v241), vaddq_s32(v247, v242)));
        if (v198 == (v198 & 0x1FFFFFFF0))
        {
          goto LABEL_160;
        }

        if ((v580.width & 4) == 0)
        {
          v212 = (v212 + v204);
          v213 = (v213 + v204);
          v214 = v198 & 0xFFFFFFF0;
LABEL_164:
          v215 = v214 + 1;
          do
          {
            _H5 = *v212;
            __asm { FCVT            S6, H5 }

            _H5 = *v213;
            __asm { FCVT            S7, H5 }

            v220 = vabds_f32(_S6, _S7);
            if (v220 > *a5.i32)
            {
              __asm { FCVT            D5, H5 }

              *&_D5 = v220 / (_D5 + 1.0e-22);
              if (*&_D5 > *a4.i32)
              {
                LODWORD(PixelFormatType) = PixelFormatType + 1;
              }
            }

            ++v212;
            ++v213;
            v44 = v198 > v215++;
          }

          while (v44);
          goto LABEL_160;
        }

        v222 = v198 & 0x1FFFFFFF0;
      }

      else
      {
        v222 = 0;
      }

      v213 = (v213 + v205);
      v223 = 0uLL;
      v224 = PixelFormatType;
      v225 = -8 * (LODWORD(v580.width) >> 2) + v222;
      v226 = 2 * v222;
      v227 = &v211[2 * v222];
      v228 = &v210[v226];
      do
      {
        v229 = *v227++;
        v230 = vcvt_hight_f32_f16(v229);
        v231 = vcvtq_f32_f16(*v229.i8);
        v232 = *v228++;
        v233 = vcvt_hight_f32_f16(v232);
        v234 = vcvtq_f32_f16(*v232.i8);
        v235 = vabdq_f32(v231, v234);
        v236 = vabdq_f32(v230, v233);
        v237 = vcgtq_f32(v236, v202);
        v238 = vcgtq_f32(v235, v202);
        v239 = vcvt_hight_f64_f32(v235);
        v240 = vcvt_hight_f64_f32(v236);
        *v235.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v235.f32), vaddq_f64(vcvtq_f64_f32(*v234.f32), v208)));
        *&v235.u32[2] = vcvt_f32_f64(vdivq_f64(v239, vaddq_f64(vcvt_hight_f64_f32(v234), v208)));
        *v236.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v236.f32), vaddq_f64(vcvtq_f64_f32(*v233.f32), v208)));
        *&v236.u32[2] = vcvt_f32_f64(vdivq_f64(v240, vaddq_f64(vcvt_hight_f64_f32(v233), v208)));
        *v235.f32 = vmovn_s16(vandq_s8(vuzp1q_s16(v238, v237), vuzp1q_s16(vcgtq_f32(v235, v203), vcgtq_f32(v236, v203))));
        v223 = vaddq_s32(v223, vandq_s8(vmovl_u16(vzip2_s8(*v235.f32, *v202.f32)), v209));
        v224 = vaddq_s32(v224, vandq_s8(vmovl_u16(vzip1_s8(*v235.f32, *v202.f32)), v209));
        v225 += 8;
      }

      while (v225);
      LODWORD(PixelFormatType) = vaddvq_s32(vaddq_s32(v224, v223));
      if (v198 != (v198 & 0x1FFFFFFF8))
      {
        v212 = (v212 + v205);
        v214 = v198 & 0xFFFFFFF8;
        goto LABEL_164;
      }

LABEL_160:
      ++v199;
      v206 = (v206 + v580.rowBytes);
      v207 = (v207 + v579.rowBytes);
      v211 += v580.rowBytes;
      v210 += v579.rowBytes;
      if (v580.height <= v199)
      {
        goto LABEL_311;
      }
    }
  }

  return result;
}