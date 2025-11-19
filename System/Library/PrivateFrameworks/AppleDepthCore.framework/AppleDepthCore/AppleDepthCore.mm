void calculateOffsetsForLength(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (InitAttributes(void)::once[0] != -1)
  {
    dispatch_once(InitAttributes(void)::once, &__block_literal_global_1543);
  }

  v6 = 0;
  v7 = (ATTRIBUTES_INFO + 8);
  v8 = 120;
  do
  {
    v9 = v8 / *v7 * *v7;
    if (v8 != v9)
    {
      v8 = *v7 + v9;
    }

    a2[v6] = v8;
    v8 += *(v7 - 1) * a1;
    ++v6;
    v7 += 2;
  }

  while (v6 != 11);
  *a3 = v8;
}

uLong ___ZL14crc32ForFolderP8NSString_block_invoke(uint64_t a1, const Bytef *a2, int a3, uInt len)
{
  result = crc32(*(*(*(a1 + 32) + 8) + 24), a2, len);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

float ADReprojectionOptimizations::backProjectUndistortedPixels(unint64_t a1, uint64_t a2, float32x4_t *a3, float *a4, float a5, double a6, double a7)
{
  *&v8 = *&a7;
  *&v9 = *(&a7 + 1);
  v10 = 1.0 / a5;
  v11 = 1.0 / *(&a6 + 1);
  v12 = 0;
  if ((a1 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v13 = vdupq_lane_s64(v8, 0);
    v14 = vdupq_lane_s64(v9, 0);
    v15 = (a2 + 32);
    v16 = a3;
    v17 = a4;
    do
    {
      v18 = *v16++;
      v19 = v18;
      v20 = vcvtq_f64_f32(*v18.f32);
      v21 = vcvt_hight_f64_f32(v18);
      v22 = v15 - 4;
      v35 = vld2q_f64(v22);
      v36 = vld2q_f64(v15);
      v23 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vsubq_f64(v35.val[0], v13), vmulq_n_f64(v20, v10))), vmulq_f64(vmulq_n_f64(v21, v10), vsubq_f64(v36.val[0], v13)));
      v24 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vsubq_f64(v35.val[1], v14), vmulq_n_f64(v20, v11))), vmulq_f64(vmulq_n_f64(v21, v11), vsubq_f64(v36.val[1], v14)));
      vst4q_f32(v17, *(&v7 - 3));
      v17 += 16;
      v12 += 4;
      v15 += 8;
    }

    while (v12 < (a1 & 0xFFFFFFFFFFFFFFFCLL));
  }

  v25 = a1 - v12;
  if (a1 > v12)
  {
    v26 = &a4[4 * v12];
    f32 = a3[v12 / 4].f32;
    v28 = (a2 + 16 * v12 + 8);
    do
    {
      v29 = v10 * ((*(v28 - 1) - *&v8) * *f32);
      v30 = *v26;
      *v26 = v29;
      v31 = *v28;
      v28 += 2;
      v32 = *f32;
      v26[2] = *(&v30 + 2);
      *&v30 = v29;
      v33 = v11 * ((v31 - *&v9) * v32);
      *(&v30 + 1) = v33;
      *v26 = v30;
      *&v31 = *f32++;
      v26[2] = *&v31;
      *v26 = v30;
      v26 += 4;
      --v25;
    }

    while (v25);
  }

  return *&v10;
}

unint64_t ADReprojectionOptimizations::projectPoints(unint64_t result, const float *a2, float64x2_t *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v6 = 0;
  v7 = result & 0xFFFFFFFFFFFFFFF8;
  if ((result & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v8 = vdupq_lane_s32(*a4.f32, 0);
    v9 = vdupq_lane_s32(*a5.f32, 1);
    v10 = vdupq_lane_s32(*a6.f32, 0);
    v11 = vdupq_lane_s32(*a6.f32, 1);
    v12.i64[0] = 0x7F0000007FLL;
    v12.i64[1] = 0x7F0000007FLL;
    v13 = vnegq_f32(v12);
    v14 = a2;
    do
    {
      v15 = v14;
      v29 = vld4q_f32(v15);
      v15 += 16;
      v16 = vbslq_s8(vclezq_f32(v29.val[2]), v13, v29.val[2]);
      v30 = vld4q_f32(v15);
      v17 = vbslq_s8(vclezq_f32(v30.val[2]), v13, v30.val[2]);
      v18 = vmlaq_f32(v10, vdivq_f32(v8, v16), v29.val[0]);
      v19 = vmlaq_f32(v11, vdivq_f32(v9, v16), v29.val[1]);
      v29.val[0] = vmlaq_f32(v10, vdivq_f32(v8, v17), v30.val[0]);
      v29.val[1] = vmlaq_f32(v11, vdivq_f32(v9, v17), v30.val[1]);
      v29.val[2] = vcvtq_f64_f32(*v18.f32);
      v29.val[3] = vcvtq_f64_f32(*v19.f32);
      v20 = a3;
      v21 = vcvt_hight_f64_f32(v18);
      v30.val[0] = vcvt_hight_f64_f32(v19);
      vst2q_f64(v20, *v29.val[2].f32);
      v20 += 4;
      vst2q_f64(v20, *v30.val[0].f32);
      v29.val[2] = vcvtq_f64_f32(*v29.val[0].f32);
      v29.val[3] = vcvtq_f64_f32(*v29.val[1].f32);
      f64 = a3[4].f64;
      v23 = vcvt_hight_f64_f32(v29.val[0]);
      vst2q_f64(f64, *v29.val[2].f32);
      v30.val[0] = vcvt_hight_f64_f32(v29.val[1]);
      v24 = a3[6].f64;
      vst2q_f64(v24, *v30.val[0].f32);
      v6 += 8;
      a3 += 8;
      v14 += 32;
    }

    while (v6 < v7);
    v6 = ((v7 - 1) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v25 = result - v6;
  if (result > v6)
  {
    v26 = &a2[4 * v6];
    do
    {
      v27 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(*v26->f32)), a5, *v26, 1), a6, *v26->f32, 2);
      v28 = 0uLL;
      if (*&v27.i32[2] > 0.0)
      {
        v28 = vcvtq_f64_f32(vdiv_f32(*v27.i8, vdup_laneq_s32(v27, 2)));
      }

      *a3++ = v28;
      v26 += 2;
      --v25;
    }

    while (v25);
  }

  return result;
}

uint64_t ADReprojectionOptimizations::reprojectUndistortedDepthMap(CVPixelBufferRef pixelBuffer, CVPixelBufferRef a2, simd_float3x3 a3, simd_float4x3 a4, __CVBuffer *a5, simd_float3x3 a6)
{
  v43 = *MEMORY[0x277D85DE8];
  if (!pixelBuffer || !a5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v31 = MEMORY[0x277D86220];
      v32 = "illegal nil buffers in reprojection";
LABEL_16:
      _os_log_error_impl(&dword_240463000, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
    }

    return -1;
  }

  v35 = *a3.columns[0].i64;
  v36 = *a3.columns[1].i64;
  v37 = *a3.columns[2].i64;
  if (a2 && CVPixelBufferGetPixelFormatType(a2) != 843264310)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v31 = MEMORY[0x277D86220];
      v32 = "illegal warp map pixel format buffers in reprojection";
      goto LABEL_16;
    }

    return -1;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (PixelFormatType > 1717855599)
  {
    v21 = a6.columns[1];
    v20 = a6.columns[2];
    v22 = a6.columns[0];
    if (PixelFormatType <= 1751410031)
    {
      v23 = a4.columns[3];
      v24 = a4.columns[1];
      v25 = a4.columns[2];
      v26 = v37;
      v27 = a4.columns[0];
      v28 = v35;
      v29 = v36;
      if (PixelFormatType != 1717855600)
      {
        if (PixelFormatType == 1717856627)
        {

          return reprojectUndistortedDepthMapWithInputImmediates<float,1717856627u>(pixelBuffer, a2, a5, v15, v16, v17, v18, v19, v35, v36, v37, a4.columns[0], a4.columns[1], a4.columns[2], a4.columns[3], *a6.columns, *&a6.columns[1], *&a6.columns[2]);
        }

        goto LABEL_36;
      }

      goto LABEL_30;
    }

    v23 = a4.columns[3];
    v24 = a4.columns[1];
    v25 = a4.columns[2];
    v26 = v37;
    v27 = a4.columns[0];
    v28 = v35;
    v29 = v36;
    if (PixelFormatType != 1751410032)
    {
      if (PixelFormatType == 1751411059)
      {

        return reprojectUndistortedDepthMapWithInputImmediates<half,1751411059u>(pixelBuffer, a2, a5, v15, v16, v17, v18, v19, v35, v36, v37, a4.columns[0], a4.columns[1], a4.columns[2], a4.columns[3], *a6.columns, *&a6.columns[1], *&a6.columns[2]);
      }

LABEL_36:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v33 = CVPixelBufferGetPixelFormatType(pixelBuffer);
        PixelBufferUtils::pixelFormatAsString(v33, buf);
        v34 = v40 >= 0 ? buf : *buf;
        *v41 = 136315138;
        v42 = v34;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "illegal input pixel format in reprojection: %s", v41, 0xCu);
        if (v40 < 0)
        {
          operator delete(*buf);
        }
      }

      return -22950;
    }

    goto LABEL_27;
  }

  v23 = a4.columns[3];
  v24 = a4.columns[1];
  v25 = a4.columns[2];
  v26 = v37;
  v27 = a4.columns[0];
  v28 = v35;
  v29 = v36;
  v21 = a6.columns[1];
  v20 = a6.columns[2];
  v22 = a6.columns[0];
  if (PixelFormatType != 825437747)
  {
    if (PixelFormatType == 1278226534)
    {
LABEL_30:

      return reprojectUndistortedDepthMapWithInputImmediates<float,1717855600u>(pixelBuffer, a2, a5, v15, v16, v17, v18, v19, v28, v29, v26, v27, v24, v25, v23, v22, v21, v20);
    }

    if (PixelFormatType != 1278226536)
    {
      goto LABEL_36;
    }

LABEL_27:

    return reprojectUndistortedDepthMapWithInputImmediates<half,1751410032u>(pixelBuffer, a2, a5, v15, v16, v17, v18, v19, v28, v29, v26, v27, v24, v25, v23, v22, v21, v20);
  }

  return reprojectUndistortedDepthMapWithInputImmediates<unsigned short,825437747u>(pixelBuffer, a2, a5, v15, v16, v17, v18, v19, v35, v36, v37, a4.columns[0], a4.columns[1], a4.columns[2], a4.columns[3], *a6.columns, *&a6.columns[1], *&a6.columns[2]);
}

uint64_t reprojectUndistortedDepthMapWithInputImmediates<float,1717855600u>(__CVBuffer *a1, __CVBuffer *a2, CVPixelBufferRef pixelBuffer, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, float32x4_t a12, float32x4_t a13, int32x4_t a14, int32x4_t a15, __int128 a16, __int128 a17, __int128 a18)
{
  v1538 = SHIDWORD(a10);
  v1564 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v1341 = a2;
  if (!a2)
  {
    if (PixelFormatType <= 1717855599)
    {
      if (PixelFormatType == 825437747)
      {
        Height = CVPixelBufferGetHeight(a1);
        Width = CVPixelBufferGetWidth(a1);
        v1141 = CVPixelBufferGetHeight(pixelBuffer);
        v1142 = CVPixelBufferGetWidth(pixelBuffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        memset(&v1562, 0, sizeof(v1562));
        v1144 = MEMORY[0x277CBF3A0];
        v1286 = a1;
        PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(pixelBuffer, *v1144, &buf);
        v1146 = BytesPerRow >> 1;
        data = buf.data;
        if (v1146 * v1141)
        {
          memset_pattern16(buf.data, &unk_2404C86B0, 2 * v1146 * v1141);
        }

        v1289 = buf.height;
        v1149 = a14;
        v1148 = a15;
        v1151 = a12;
        v1150 = a13;
        v1153 = *&a18;
        v1152 = *&a11;
        v1154 = *&a16;
        if (Height)
        {
          v1155 = 0;
          v1156.i32[1] = v1538;
          v1157.i32[1] = HIDWORD(a9);
          v1158 = 1.0 / *&a9;
          v1159 = 1.0 / *&v1538;
          v1160 = Width & 0xFFFFFFFFFFFFFFF0;
          v1161 = 0.5;
          *v1145.i32 = 0.5 - *(&a11 + 1);
          v1162 = vdupq_lane_s32(v1145, 0);
          *v1145.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
          *v1156.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
          *v1157.i32 = (1.0 / *&v1538) * a13.f32[0];
          v1163 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
          v1421 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
          v1411 = (1.0 / *&a9) * a12.f32[0];
          v1344 = v1562.data;
          rowBytes = v1562.rowBytes;
          v1310 = vdupq_lane_s32(*a14.i8, 0);
          v1313 = vdupq_lane_s32(v1157, 0);
          v1305 = vdupq_lane_s32(*a14.i8, 1);
          v1307 = vdupq_lane_s32(v1156, 0);
          v1301 = vdupq_laneq_s32(a14, 2);
          v1303 = vdupq_lane_s32(v1145, 0);
          v1164 = vdupq_laneq_s32(a15, 2);
          v1165 = vdupq_lane_s32(*a15.i8, 0);
          v1166 = vdupq_lane_s32(*a15.i8, 1);
          v1167 = vdupq_n_s32(v1142);
          v1300 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
          v1391 = vdupq_n_s32(LODWORD(buf.height) * v1146 - 2);
          v1168 = v1142;
          v1169 = v1141;
          v1294 = (((Width & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v1170 = vdupq_lane_s32(*&a16, 0);
          v1171 = *(&a17 + 1);
          v1332 = Width;
          v1326 = v1146;
          v1321 = 1.0 / *&a9;
          v1461 = vdupq_n_s32(v1141);
          v1471 = vdupq_n_s32(v1146);
          v1298 = v1142;
          v1296 = v1141;
          v1441 = v1170;
          v1451 = vdupq_lane_s32(*&a18, 1);
          v1431 = vdupq_lane_s32(*&a17, 1);
          v1401 = vdupq_lane_s32(*&a18, 0);
          do
          {
            v1172 = &v1344[v1155 * rowBytes];
            if (v1160)
            {
              v1381 = v1155;
              v1173 = 0;
              v1501 = vmlaq_f32(v1310, v1313, v1162);
              v1491 = vmlaq_f32(v1305, v1307, v1162);
              v1371 = v1162;
              v1481 = vmlaq_f32(v1301, v1303, v1162);
              v1174 = v1300;
              v1175.i64[0] = 0x4100000041000000;
              v1175.i64[1] = 0x4100000041000000;
              do
              {
                v1560 = v1173;
                v1176 = vdupq_n_s32(0x447A0000u);
                v1177 = vmulq_f32(*v1172, v1176);
                v1178 = vmulq_f32(v1172[1], v1176);
                __asm { FMOV            V0.4S, #4.0 }

                v1180 = vaddq_f32(v1174, _Q0);
                v1181 = vaddq_f32(v1174, v1175);
                v1182 = vmulq_f32(v1172[2], v1176);
                __asm { FMOV            V0.4S, #12.0 }

                v1184 = vaddq_f32(v1174, _Q0);
                v1185 = vmulq_f32(v1172[3], v1176);
                v1186 = vmlaq_f32(v1164, vmlaq_n_f32(v1481, v1174, v1163), v1177);
                v1187 = vmlaq_f32(v1164, vmlaq_n_f32(v1481, v1180, v1163), v1178);
                v1188 = vmlaq_f32(v1164, vmlaq_n_f32(v1481, v1181, v1163), v1182);
                v1189 = vmlaq_f32(v1164, vmlaq_n_f32(v1481, v1184, v1163), v1185);
                v1549 = vcgtzq_f32(v1177);
                v1190 = vcgtzq_f32(v1178);
                v1191 = vcgtzq_f32(v1182);
                v1192 = vmlaq_f32(v1451, vdivq_f32(v1431, v1186), vmlaq_f32(v1166, vmlaq_n_f32(v1491, v1174, v1421), v1177));
                v1193 = vmlaq_f32(v1401, vdivq_f32(v1170, v1187), vmlaq_f32(v1165, vmlaq_n_f32(v1501, v1180, v1411), v1178));
                v1194 = vmlaq_f32(v1165, vmlaq_n_f32(v1501, v1184, v1411), v1185);
                v1195 = vmlaq_f32(v1166, vmlaq_n_f32(v1491, v1184, v1421), v1185);
                v1196 = vcgtzq_f32(v1185);
                v1197 = vmlaq_f32(v1451, vdivq_f32(v1431, v1187), vmlaq_f32(v1166, vmlaq_n_f32(v1491, v1180, v1421), v1178));
                v1198 = vmlaq_f32(v1401, vdivq_f32(v1170, v1188), vmlaq_f32(v1165, vmlaq_n_f32(v1501, v1181, v1411), v1182));
                v1199 = vornq_s8(vmvnq_s8(vcgezq_f32(v1189)), v1196);
                v1200 = vmlaq_f32(v1451, vdivq_f32(v1431, v1188), vmlaq_f32(v1166, vmlaq_n_f32(v1491, v1181, v1421), v1182));
                v1201 = vcvtmq_s32_f32(vmlaq_f32(v1401, vdivq_f32(v1170, v1186), vmlaq_f32(v1165, vmlaq_n_f32(v1501, v1174, v1411), v1177)));
                v1202 = vcvtmq_s32_f32(v1192);
                v1203 = vcvtmq_s32_f32(v1193);
                v1204 = vcvtmq_s32_f32(v1197);
                v1205 = vcvtmq_s32_f32(v1198);
                v1206 = vcvtmq_s32_f32(v1200);
                v1207 = vcvtmq_s32_f32(vmlaq_f32(v1401, vdivq_f32(v1170, v1189), v1194));
                v1208 = vcvtmq_s32_f32(vmlaq_f32(v1451, vdivq_f32(v1431, v1189), v1195));
                v1209.i64[0] = 0x4100000041000000;
                v1209.i64[1] = 0x4100000041000000;
                v1170 = v1441;
                v1210 = vdupq_n_s32(0x46FFFE00u);
                _Q0.i64[0] = 0x4100000041000000;
                _Q0.i64[1] = 0x4100000041000000;
                v1211 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1204, v1461), vcgeq_s32(v1203, v1167)), vcltzq_s32(vorrq_s8(v1204, v1203))), vornq_s8(vmvnq_s8(vcgezq_f32(v1187)), v1190)), 0x1FuLL)), v1210, vmulq_f32(v1187, _Q0));
                v1190.i64[0] = 0x4100000041000000;
                v1190.i64[1] = 0x4100000041000000;
                v1212 = vmulq_f32(v1188, v1190);
                v1213 = vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1206, v1461), vcgeq_s32(v1205, v1167)), vcltzq_s32(vorrq_s8(v1206, v1205))), vornq_s8(vmvnq_s8(vcgezq_f32(v1188)), v1191)), 0x1FuLL);
                v1175.i64[0] = 0x4100000041000000;
                v1175.i64[1] = 0x4100000041000000;
                v1214 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1208, v1461), vcgeq_s32(v1207, v1167)), vcltzq_s32(vorrq_s8(v1208, v1207))), v1199), 0x1FuLL)), v1210, vmulq_f32(v1189, v1175));
                v1215 = vmlaq_s32(v1205, v1206, v1471);
                v1216 = vmlaq_s32(v1207, v1208, v1471);
                v1217 = vminq_s32(vmaxq_s32(vmlaq_s32(v1201, v1202, v1471), 0), v1391);
                v1218 = vcvtq_s32_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1202, v1461), vcgeq_s32(v1201, v1167)), vcltzq_s32(vorrq_s8(v1202, v1201))), vornq_s8(vmvnq_s8(vcgezq_f32(v1186)), v1549)), 0x1FuLL)), v1210, vmulq_f32(v1186, v1209)));
                v1550 = v1217.u32[1];
                v1537 = v1218.i32[1];
                v1219 = v1217.i64[1];
                v1220 = v1218.i32[2];
                v1221 = v1217.i32[0];
                v1511 = v1218.i32[3];
                v1222 = v1218.i32[0];
                v1223 = vminq_s32(vmaxq_s32(v1216, 0), v1391);
                v1224 = v1223.u32[3];
                v1225 = v1223.u32[1];
                v1226 = v1223.u32[2];
                v1227 = v1223.i32[0];
                v1228 = vcvtq_s32_f32(v1214);
                v1229 = v1228.i32[3];
                v1230 = v1228.i32[1];
                v1231 = v1228.i32[2];
                v1232 = v1228.i32[0];
                v1233 = vminq_s32(vmaxq_s32(v1215, 0), v1391);
                v1234 = vcvtq_s32_f32(vbslq_s8(vcltzq_s32(v1213), v1210, v1212));
                v1235 = v1233.u32[2];
                v1236 = v1233.u32[3];
                v1237 = v1233.u32[1];
                v1238 = v1233.i32[0];
                v1239 = vminq_s32(vmaxq_s32(vmlaq_s32(v1203, v1204, v1471), 0), v1391);
                v1240 = vcvtq_s32_f32(v1211);
                if (v1222 >= data[v1221])
                {
                  LOWORD(v1222) = data[v1221];
                }

                data[v1221] = v1222;
                v1241 = v1240.i32[1];
                v1242 = v1240.i32[2];
                v1243 = v1240.i32[3];
                v1244 = v1240.i32[0];
                __asm { FMOV            V0.4S, #16.0 }

                v1174 = vaddq_f32(v1174, _Q0);
                if (v1241 >= data[v1239.u32[1]])
                {
                  LOWORD(v1241) = data[v1239.u32[1]];
                }

                data[v1239.u32[1]] = v1241;
                v1246 = data[v1235];
                if (v1234.i32[2] < v1246)
                {
                  LOWORD(v1246) = v1234.i16[4];
                }

                data[v1235] = v1246;
                v1247 = data[v1224];
                if (v1229 < v1247)
                {
                  LOWORD(v1247) = v1229;
                }

                data[v1224] = v1247;
                v1248 = data[v1550];
                if (v1537 < v1248)
                {
                  LOWORD(v1248) = v1537;
                }

                data[v1550] = v1248;
                v1249 = data[v1239.u32[2]];
                if (v1242 < v1249)
                {
                  LOWORD(v1249) = v1242;
                }

                data[v1239.u32[2]] = v1249;
                v1250 = data[v1236];
                if (v1234.i32[3] < v1250)
                {
                  LOWORD(v1250) = v1234.i16[6];
                }

                data[v1236] = v1250;
                v1251 = data[v1227];
                if (v1232 < v1251)
                {
                  LOWORD(v1251) = v1232;
                }

                data[v1227] = v1251;
                v1252 = data[v1219];
                if (v1220 < v1252)
                {
                  LOWORD(v1252) = v1220;
                }

                data[v1219] = v1252;
                v1253 = data[v1239.u32[3]];
                if (v1243 < v1253)
                {
                  LOWORD(v1253) = v1243;
                }

                data[v1239.u32[3]] = v1253;
                v1254 = data[v1238];
                if (v1234.i32[0] < v1254)
                {
                  LOWORD(v1254) = v1234.i16[0];
                }

                data[v1238] = v1254;
                v1255 = data[v1225];
                if (v1230 < v1255)
                {
                  LOWORD(v1255) = v1230;
                }

                data[v1225] = v1255;
                v1256 = data[HIDWORD(v1219)];
                if (v1511 < v1256)
                {
                  LOWORD(v1256) = v1511;
                }

                data[HIDWORD(v1219)] = v1256;
                v1257 = data[v1239.u32[0]];
                if (v1244 < v1257)
                {
                  LOWORD(v1257) = v1244;
                }

                data[v1239.u32[0]] = v1257;
                v1258 = data[v1237];
                if (v1234.i32[1] < v1258)
                {
                  LOWORD(v1258) = v1234.i16[2];
                }

                data[v1237] = v1258;
                v1259 = data[v1226];
                if (v1231 < v1259)
                {
                  LOWORD(v1259) = v1231;
                }

                data[v1226] = v1259;
                v1172 += 4;
                v1173 = v1560 + 16;
              }

              while (v1560 + 16 < v1160);
              v1260 = v1294;
              v1149 = a14;
              v1148 = a15;
              v1151 = a12;
              v1150 = a13;
              v1153 = *&a18;
              v1152 = *&a11;
              v1154 = *&a16;
              Width = v1332;
              v1146 = v1326;
              v1155 = v1381;
              v1158 = v1321;
              v1159 = 1.0 / *&v1538;
              v1161 = 0.5;
              v1162 = v1371;
              v1168 = v1298;
              v1169 = v1296;
              v1171 = *(&a17 + 1);
            }

            else
            {
              v1260 = 0;
            }

            if (v1260 < Width)
            {
              do
              {
                v1261 = v1172->f32[0] * 1000.0;
                _Q2 = vaddq_f32(v1148, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v1151, v1158 * (v1261 * ((v1260 + v1161) - v1152))), v1150, v1159 * (((v1155 + v1161) - *(&a11 + 1)) * v1261)), v1149, v1261));
                if (_Q2.f32[2] >= 0.0 && v1261 > 0.0)
                {
                  v1263 = (v1153 + (_Q2.f32[0] * (v1154 / _Q2.f32[2])));
                  if ((v1263 & 0x80000000) == 0 && v1168 > v1263)
                  {
                    _S3 = v1171 / _Q2.f32[2];
                    __asm { FMLA            S4, S3, V2.S[1] }

                    v1266 = _S4;
                    if ((_S4 & 0x80000000) == 0 && v1169 > v1266)
                    {
                      v1267 = v1146 * v1266;
                      v1268 = vcvts_n_s32_f32(_Q2.f32[2], 3uLL);
                      v1269 = &data[v1267];
                      if ((v1269[v1263] - 1) >= v1268)
                      {
                        v1269[v1263] = v1268;
                      }
                    }
                  }
                }

                ++v1260;
                v1172 = (v1172 + 4);
              }

              while (Width != v1260);
            }

            ++v1155;
            __asm { FMOV            V0.4S, #1.0 }

            v1162 = vaddq_f32(v1162, _Q0);
          }

          while (v1155 != Height);
        }

        v721 = v1286;
        if (v1289)
        {
          v1271 = 0;
          v1272 = *&buf.width;
          v1273 = buf.width >> 4;
          v1274 = buf.data;
          v1275 = buf.height;
          if (buf.width >> 4 <= 1)
          {
            v1273 = 1;
          }

          if (buf.height <= 1)
          {
            v1275 = 1;
          }

          v1276 = buf.width & 0xFFFFFFF0;
          do
          {
            v1277 = &v1274[*(&v1272 + 1) * v1271];
            v1278 = v1273;
            if (v1272 >= 0x10)
            {
              do
              {
                v1279 = v1277[2];
                v1280 = v1277[3];
                v1281 = vbic_s8(v1277[1], vceq_s16(v1277[1], 0x8000800080008000));
                *v1277 = vbic_s8(*v1277, vceq_s16(*v1277, 0x8000800080008000));
                v1277[1] = v1281;
                v1277[2] = vbic_s8(v1279, vceq_s16(v1279, 0x8000800080008000));
                v1277[3] = vbic_s8(v1280, vceq_s16(v1280, 0x8000800080008000));
                v1277 += 4;
                --v1278;
              }

              while (v1278);
            }

            v1282 = v1272 & 0xFFFFFFF0;
            if (v1276 != v1272)
            {
              do
              {
                if (v1277->i16[0] == 0x7FFF)
                {
                  v1277->i16[0] = 0;
                }

                ++v1282;
                v1277 = (v1277 + 2);
              }

              while (v1282 < v1272);
            }

            ++v1271;
          }

          while (v1271 != v1275);
        }

        goto LABEL_389;
      }

      if (PixelFormatType == 1278226534)
      {
        goto LABEL_220;
      }

      if (PixelFormatType != 1278226536)
      {
        goto LABEL_391;
      }
    }

    else
    {
      if (PixelFormatType <= 1751410031)
      {
        if (PixelFormatType != 1717855600)
        {
          if (PixelFormatType == 1717856627)
          {
            v133 = CVPixelBufferGetHeight(a1);
            v134 = CVPixelBufferGetWidth(a1);
            v135 = CVPixelBufferGetHeight(pixelBuffer);
            v136 = CVPixelBufferGetWidth(pixelBuffer);
            v137 = CVPixelBufferGetBytesPerRow(pixelBuffer);
            CVPixelBufferLockBaseAddress(a1, 1uLL);
            CVPixelBufferLockBaseAddress(pixelBuffer, 0);
            memset(&v1562, 0, sizeof(v1562));
            v138 = MEMORY[0x277CBF3A0];
            PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
            memset(&buf, 0, sizeof(buf));
            PixelBufferUtils::asVImageBuffer(pixelBuffer, *v138, &buf);
            v140 = buf.data;
            v139 = buf.height;
            bzero(buf.data, buf.height * buf.rowBytes);
            v145 = a14;
            v144 = a15;
            v147 = a12;
            v146 = a13;
            v149 = *&a18;
            v148 = *&a11;
            v150 = *&a16;
            if (v133)
            {
              v151 = 0;
              v152.i32[1] = v1538;
              v153 = 1.0 / *&a9;
              v154 = 1.0 / *&v1538;
              v155 = 0.5;
              *v141.i32 = 0.5 - *(&a11 + 1);
              v156 = vdupq_lane_s32(v141, 0);
              v157 = v134 & 0xFFFFFFFFFFFFFFF0;
              *v141.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
              *v152.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
              *v142.i32 = (1.0 / *&v1538) * a13.f32[0];
              v158 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
              *&v143 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
              v1383 = vdupq_lane_s32(*a14.i8, 0);
              v1393 = vdupq_lane_s32(v142, 0);
              v1363 = vdupq_lane_s32(*a14.i8, 1);
              v1373 = vdupq_lane_s32(v152, 0);
              v1354 = vdupq_lane_s32(v141, 0);
              v159 = (1.0 / *&a9) * a12.f32[0];
              v1342 = vdupq_laneq_s32(a14, 2);
              v160 = v1562.data;
              v161 = v1562.rowBytes;
              v1334 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
              v162 = vdupq_laneq_s32(a15, 2);
              v163 = vdupq_lane_s32(*a15.i8, 0);
              v164 = vdupq_lane_s32(*a15.i8, 1);
              v1493 = vdupq_n_s32(v136);
              v1473 = vdupq_n_s32(v135);
              v165 = *(&a17 + 1);
              v1413 = 1.0 / *&a9;
              v1403 = 1.0 / *&v1538;
              v1513 = vdupq_n_s32(v139 * (v137 >> 2) - 4);
              v1522 = v158;
              v1503 = vdupq_lane_s32(*&a17, 1);
              v1483 = vdupq_lane_s32(*&a18, 1);
              v1453 = vdupq_lane_s32(*&a18, 0);
              v1463 = vdupq_lane_s32(*&a16, 0);
              v1433 = v159;
              v1443 = vdupq_n_s32(v137 >> 2);
              do
              {
                v166 = &v160[v151 * v161];
                v167 = 0;
                if (v157)
                {
                  v1552 = vmlaq_f32(v1383, v1393, v156);
                  v1541 = vmlaq_f32(v1363, v1373, v156);
                  v168 = v1334;
                  v1423 = v156;
                  v1530 = vmlaq_f32(v1342, v1354, v156);
                  do
                  {
                    v169 = vdupq_n_s32(0x447A0000u);
                    v170 = vmulq_f32(*v166, v169);
                    v171 = vmulq_f32(v166[1], v169);
                    v172 = vmulq_f32(v166[2], v169);
                    __asm { FMOV            V1.4S, #4.0 }

                    v174 = vaddq_f32(v168, _Q1);
                    _Q1.i64[0] = 0x4100000041000000;
                    _Q1.i64[1] = 0x4100000041000000;
                    v175 = vaddq_f32(v168, _Q1);
                    v176 = vmulq_f32(v166[3], v169);
                    __asm { FMOV            V1.4S, #12.0 }

                    v178 = vaddq_f32(v168, _Q1);
                    v179 = vmlaq_f32(v162, vmlaq_n_f32(v1530, v168, v158), v170);
                    v180 = vmlaq_f32(v162, vmlaq_n_f32(v1530, v174, v158), v171);
                    v181 = vmlaq_f32(v162, vmlaq_n_f32(v1530, v175, v158), v172);
                    v182 = vmlaq_f32(v162, vmlaq_n_f32(v1530, v178, v158), v176);
                    v183 = vcgtzq_f32(v170);
                    v184 = v163;
                    v185 = vmlaq_f32(v163, vmlaq_n_f32(v1552, v168, v159), v170);
                    v186 = v143;
                    v187 = vmlaq_f32(v164, vmlaq_n_f32(v1541, v168, *&v143), v170);
                    v188 = vmlaq_f32(v1453, vdivq_f32(v1463, v179), v185);
                    v189 = vmlaq_f32(v1483, vdivq_f32(v1503, v179), v187);
                    v190 = vmlaq_f32(v1453, vdivq_f32(v1463, v180), vmlaq_f32(v184, vmlaq_n_f32(v1552, v174, v159), v171));
                    v191 = vmlaq_f32(v184, vmlaq_n_f32(v1552, v175, v159), v172);
                    v192 = vmlaq_f32(v1483, vdivq_f32(v1503, v180), vmlaq_f32(v164, vmlaq_n_f32(v1541, v174, *&v143), v171));
                    v193 = vandq_s8(vcgezq_f32(v179), v183);
                    v194 = vmlaq_f32(v184, vmlaq_n_f32(v1552, v178, v159), v176);
                    v195 = vandq_s8(vcgezq_f32(v180), vcgtzq_f32(v171));
                    v196 = vmlaq_f32(v164, vmlaq_n_f32(v1541, v178, *&v143), v176);
                    v197 = vandq_s8(vcgezq_f32(v181), vcgtzq_f32(v172));
                    v198 = vmlaq_f32(v1453, vdivq_f32(v1463, v181), v191);
                    v199 = vandq_s8(vcgezq_f32(v182), vcgtzq_f32(v176));
                    v200 = vmlaq_f32(v1483, vdivq_f32(v1503, v181), vmlaq_f32(v164, vmlaq_n_f32(v1541, v175, *&v143), v172));
                    v201 = vdivq_f32(v1463, v182);
                    v202 = vdivq_f32(v1503, v182);
                    v203 = vdivq_f32(v169, v179);
                    v204 = vdivq_f32(v169, v180);
                    v205 = vdivq_f32(v169, v181);
                    v206 = vdivq_f32(v169, v182);
                    v207 = vcvtmq_s32_f32(v188);
                    v208 = vcvtmq_s32_f32(v189);
                    v209 = vcvtmq_s32_f32(v190);
                    v210 = vcvtmq_s32_f32(v192);
                    v211 = vmlaq_f32(v1483, v202, v196);
                    v212 = vcvtmq_s32_f32(v198);
                    v213 = vcvtmq_s32_f32(v200);
                    v214 = vcvtmq_s32_f32(vmlaq_f32(v1453, v201, v194));
                    v215 = vcvtmq_s32_f32(v211);
                    v216 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1473, v208), vcgtq_s32(v1493, v207)), vcgezq_s32(vorrq_s8(v208, v207))), v193);
                    v217 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1473, v210), vcgtq_s32(v1493, v209)), vcgezq_s32(vorrq_s8(v210, v209))), v195);
                    v159 = v1433;
                    v218 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1473, v215), vcgtq_s32(v1493, v214)), vcgezq_s32(vorrq_s8(v215, v214))), v199);
                    v219 = vmlaq_s32(v207, v208, v1443);
                    v143 = v186;
                    v163 = v184;
                    v158 = v1522;
                    v220 = vminq_s32(vmaxq_s32(v219, 0), v1513);
                    v221 = v220.u32[1];
                    v222 = v220.u32[2];
                    v223 = v220.u32[3];
                    v224 = vandq_s8(v203, vcltzq_s32(vshlq_n_s32(v216, 0x1FuLL)));
                    v140[v220.u32[0]] = fmaxf(*v224.i32, v140[v220.u32[0]]);
                    v225 = vminq_s32(vmaxq_s32(vmlaq_s32(v209, v210, v1443), 0), v1513);
                    v226 = vandq_s8(v204, vcltzq_s32(vshlq_n_s32(v217, 0x1FuLL)));
                    v227 = vminq_s32(vmaxq_s32(vmlaq_s32(v212, v213, v1443), 0), v1513);
                    v140[v225.u32[1]] = fmaxf(*&v226.i32[1], v140[v225.u32[1]]);
                    v228 = vandq_s8(v205, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1473, v213), vcgtq_s32(v1493, v212)), vcgezq_s32(vorrq_s8(v213, v212))), v197), 0x1FuLL)));
                    v229 = vminq_s32(vmaxq_s32(vmlaq_s32(v214, v215, v1443), 0), v1513);
                    v140[v227.u32[2]] = fmaxf(*&v228.i32[2], v140[v227.u32[2]]);
                    v230 = vandq_s8(v206, vcltzq_s32(vshlq_n_s32(v218, 0x1FuLL)));
                    v140[v229.u32[3]] = fmaxf(*&v230.i32[3], v140[v229.u32[3]]);
                    v140[v221] = fmaxf(*&v224.i32[1], v140[v221]);
                    v140[v225.u32[2]] = fmaxf(*&v226.i32[2], v140[v225.u32[2]]);
                    v140[v227.u32[3]] = fmaxf(*&v228.i32[3], v140[v227.u32[3]]);
                    v140[v229.u32[0]] = fmaxf(*v230.i32, v140[v229.u32[0]]);
                    v140[v222] = fmaxf(*&v224.i32[2], v140[v222]);
                    v140[v225.u32[3]] = fmaxf(*&v226.i32[3], v140[v225.u32[3]]);
                    v140[v227.u32[0]] = fmaxf(*v228.i32, v140[v227.u32[0]]);
                    v140[v229.u32[1]] = fmaxf(*&v230.i32[1], v140[v229.u32[1]]);
                    v140[v223] = fmaxf(*&v224.i32[3], v140[v223]);
                    v140[v225.u32[0]] = fmaxf(*v226.i32, v140[v225.u32[0]]);
                    v140[v227.u32[1]] = fmaxf(*&v228.i32[1], v140[v227.u32[1]]);
                    v140[v229.u32[2]] = fmaxf(*&v230.i32[2], v140[v229.u32[2]]);
                    __asm { FMOV            V0.4S, #16.0 }

                    v168 = vaddq_f32(v168, _Q0);
                    v166 += 4;
                    v167 += 16;
                  }

                  while (v167 < v157);
                  v167 = (((v134 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
                  v145 = a14;
                  v144 = a15;
                  v147 = a12;
                  v146 = a13;
                  v149 = *&a18;
                  v148 = *&a11;
                  v150 = *&a16;
                  v153 = v1413;
                  v154 = v1403;
                  v155 = 0.5;
                  v156 = v1423;
                  v165 = *(&a17 + 1);
                }

                if (v167 < v134)
                {
                  do
                  {
                    v232 = v166->f32[0] * 1000.0;
                    _Q2 = vaddq_f32(v144, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v147, v153 * (v232 * ((v167 + v155) - v148))), v146, v154 * (((v151 + v155) - *(&a11 + 1)) * v232)), v145, v232));
                    if (_Q2.f32[2] >= 0.0 && v232 > 0.0)
                    {
                      v234 = (v149 + (_Q2.f32[0] * (v150 / _Q2.f32[2])));
                      if ((v234 & 0x80000000) == 0 && v136 > v234)
                      {
                        _S3 = v165 / _Q2.f32[2];
                        __asm { FMLA            S4, S3, V2.S[1] }

                        v237 = _S4;
                        if ((_S4 & 0x80000000) == 0 && v135 > v237)
                        {
                          v238 = 1000.0 / _Q2.f32[2];
                          v239 = &v140[(v137 >> 2) * v237];
                          v240 = v239[v234];
                          if (v240 == 0.0 || v240 < v238)
                          {
                            v239[v234] = v238;
                          }
                        }
                      }
                    }

                    ++v167;
                    v166 = (v166 + 4);
                  }

                  while (v134 != v167);
                }

                ++v151;
                __asm { FMOV            V0.4S, #1.0 }

                v156 = vaddq_f32(v156, _Q0);
              }

              while (v151 != v133);
            }

LABEL_183:
            v721 = a1;
LABEL_389:
            CVPixelBufferUnlockBaseAddress(v721, 1uLL);
            v1139 = pixelBuffer;
            goto LABEL_390;
          }

          goto LABEL_391;
        }

LABEL_220:
        v845 = CVPixelBufferGetHeight(a1);
        v846 = CVPixelBufferGetWidth(a1);
        v847 = CVPixelBufferGetHeight(pixelBuffer);
        v848 = CVPixelBufferGetWidth(pixelBuffer);
        v849 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        memset(&v1562, 0, sizeof(v1562));
        v850 = MEMORY[0x277CBF3A0];
        v851 = a1;
        PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(pixelBuffer, *v850, &buf);
        v856 = v849 >> 2;
        v857 = buf.data;
        if (v856 * v847)
        {
          memset_pattern16(buf.data, &unk_2404C8690, 4 * v856 * v847);
        }

        v858 = buf.height;
        v860 = a14;
        v859 = a15;
        v862 = a12;
        v861 = a13;
        v864 = *&a18;
        v863 = *&a11;
        v865 = *&a16;
        if (v845)
        {
          v866 = 0;
          v867.i32[1] = v1538;
          v868.i32[1] = HIDWORD(a9);
          v869 = 1.0 / *&a9;
          v870 = 1.0 / *&v1538;
          v871 = v846 & 0xFFFFFFFFFFFFFFF0;
          v872 = 0.5;
          *v852.i32 = 0.5 - *(&a11 + 1);
          v873 = vdupq_lane_s32(v852, 0);
          *v852.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
          *v867.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
          *v868.i32 = (1.0 / *&v1538) * a13.f32[0];
          *&v853 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
          *&v854 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
          v1409 = vdupq_lane_s32(*a14.i8, 0);
          v1419 = vdupq_lane_s32(v868, 0);
          v1389 = vdupq_lane_s32(*a14.i8, 1);
          v1399 = vdupq_lane_s32(v867, 0);
          *&v855 = (1.0 / *&a9) * a12.f32[0];
          v1369 = vdupq_laneq_s32(a14, 2);
          v1379 = vdupq_lane_s32(v852, 0);
          v874 = v1562.data;
          v875 = v1562.rowBytes;
          v1359 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
          v876 = vdupq_laneq_s32(a15, 2);
          v877 = vdupq_lane_s32(*a15.i8, 0);
          v878 = vdupq_lane_s32(*a15.i8, 1);
          v879 = vdupq_n_s32(v848);
          v880 = vdupq_n_s32(v847);
          v1479 = vdupq_lane_s32(*&a16, 0);
          v881 = *(&a17 + 1);
          v882.i64[0] = 0x80000000800000;
          v882.i64[1] = 0x80000000800000;
          v1439 = 1.0 / *&a9;
          v1429 = 1.0 / *&v1538;
          v1509 = vdupq_lane_s32(*&a17, 1);
          v1519 = vdupq_n_s32(LODWORD(buf.height) * v856 - 4);
          v1558 = vnegq_f32(v882);
          v1489 = v876;
          v1499 = vdupq_lane_s32(*&a18, 1);
          v1459 = vdupq_n_s32(v856);
          v1469 = vdupq_lane_s32(*&a18, 0);
          do
          {
            v883 = &v874[v866 * v875];
            v884 = 0;
            if (v871)
            {
              v1547 = vmlaq_f32(v1409, v1419, v873);
              v1536 = vmlaq_f32(v1389, v1399, v873);
              v1449 = v873;
              v1528 = vmlaq_f32(v1369, v1379, v873);
              v885 = v1359;
              do
              {
                v886 = vdupq_n_s32(0x447A0000u);
                v887 = vmulq_f32(*v883, v886);
                v888 = vmulq_f32(v883[1], v886);
                v889 = vmulq_f32(v883[2], v886);
                __asm { FMOV            V0.4S, #4.0 }

                v891 = vaddq_f32(v885, _Q0);
                _Q0.i64[0] = 0x4100000041000000;
                _Q0.i64[1] = 0x4100000041000000;
                v892 = vaddq_f32(v885, _Q0);
                v893 = vmulq_f32(v883[3], v886);
                __asm { FMOV            V0.4S, #12.0 }

                v895 = vaddq_f32(v885, _Q0);
                v896 = vmlaq_f32(v876, vmlaq_n_f32(v1528, v885, *&v853), v887);
                v897 = vmlaq_f32(v876, vmlaq_n_f32(v1528, v891, *&v853), v888);
                v898 = vmlaq_f32(v876, vmlaq_n_f32(v1528, v892, *&v853), v889);
                v899 = vmlaq_f32(v876, vmlaq_n_f32(v1528, v895, *&v853), v893);
                v900 = vmlaq_f32(v877, vmlaq_n_f32(v1547, v885, *&v855), v887);
                v901 = v853;
                v902 = vmlaq_f32(v878, vmlaq_n_f32(v1536, v885, *&v854), v887);
                v903 = vornq_s8(vmvnq_s8(vcgezq_f32(v896)), vcgtzq_f32(v887));
                v904 = vornq_s8(vmvnq_s8(vcgezq_f32(v897)), vcgtzq_f32(v888));
                v905 = vornq_s8(vmvnq_s8(vcgezq_f32(v898)), vcgtzq_f32(v889));
                v906 = vmlaq_f32(v877, vmlaq_n_f32(v1547, v892, *&v855), v889);
                v907 = vmlaq_f32(v878, vmlaq_n_f32(v1536, v892, *&v854), v889);
                v908 = vornq_s8(vmvnq_s8(vcgezq_f32(v899)), vcgtzq_f32(v893));
                v909 = vmlaq_f32(v877, vmlaq_n_f32(v1547, v895, *&v855), v893);
                v910 = vmlaq_f32(v878, vmlaq_n_f32(v1536, v895, *&v854), v893);
                v911 = v878;
                v912 = vmlaq_f32(v1469, vdivq_f32(v1479, v896), v900);
                v913 = vmlaq_f32(v1499, vdivq_f32(v1509, v896), v902);
                v914 = vmlaq_f32(v1469, vdivq_f32(v1479, v897), vmlaq_f32(v877, vmlaq_n_f32(v1547, v891, *&v855), v888));
                v915 = vmlaq_f32(v1499, vdivq_f32(v1509, v897), vmlaq_f32(v878, vmlaq_n_f32(v1536, v891, *&v854), v888));
                v916 = vmlaq_f32(v1469, vdivq_f32(v1479, v898), v906);
                v917 = vdivq_f32(v1479, v899);
                v918 = vmlaq_f32(v1499, vdivq_f32(v1509, v898), v907);
                v919 = v880;
                v920 = v879;
                v921 = v877;
                v922 = v855;
                v923 = v854;
                v924 = vdivq_f32(v1509, v899);
                v925 = vdupq_n_s32(0x3A83126Fu);
                v926 = vmulq_f32(v896, v925);
                v927 = vmulq_f32(v897, v925);
                v928 = vmulq_f32(v898, v925);
                v929 = vmulq_f32(v899, v925);
                v930 = vcvtmq_s32_f32(v912);
                v931 = vcvtmq_s32_f32(v913);
                v932 = vcvtmq_s32_f32(v914);
                v933 = vcvtmq_s32_f32(v915);
                v934 = vmlaq_f32(v1469, v917, v909);
                v935 = vmlaq_f32(v1499, v924, v910);
                v854 = v923;
                v855 = v922;
                v877 = v921;
                v879 = v920;
                v880 = v919;
                v936 = vcvtmq_s32_f32(v916);
                v937 = vcvtmq_s32_f32(v918);
                v938 = vcvtmq_s32_f32(v934);
                v939 = vcvtmq_s32_f32(v935);
                v853 = v901;
                v940 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v939, v919), vcgeq_s32(v938, v879)), vcltzq_s32(vorrq_s8(v939, v938))), v908);
                v878 = v911;
                v941 = vmlaq_s32(v938, v939, v1459);
                v876 = v1489;
                v942 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v931, v919), vcgeq_s32(v930, v879)), vcltzq_s32(vorrq_s8(v931, v930))), v903), 0x1FuLL)), v1558, v926);
                v943 = vminq_s32(vmaxq_s32(vmlaq_s32(v930, v931, v1459), 0), v1519);
                v944 = vminq_s32(vmaxq_s32(vmlaq_s32(v932, v933, v1459), 0), v1519);
                v945 = v943.u32[1];
                v946 = v943.u32[2];
                v947 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v933, v919), vcgeq_s32(v932, v879)), vcltzq_s32(vorrq_s8(v933, v932))), v904), 0x1FuLL)), v1558, v927);
                v948 = v943.u32[3];
                v857[v943.u32[0]] = fminf(*v942.i32, v857[v943.u32[0]]);
                v949 = vminq_s32(vmaxq_s32(vmlaq_s32(v936, v937, v1459), 0), v1519);
                v857[v944.u32[1]] = fminf(*&v947.i32[1], v857[v944.u32[1]]);
                v950 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v937, v919), vcgeq_s32(v936, v879)), vcltzq_s32(vorrq_s8(v937, v936))), v905), 0x1FuLL)), v1558, v928);
                v951 = vminq_s32(vmaxq_s32(v941, 0), v1519);
                v857[v949.u32[2]] = fminf(*&v950.i32[2], v857[v949.u32[2]]);
                v952 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v940, 0x1FuLL)), v1558, v929);
                v857[v951.u32[3]] = fminf(*&v952.i32[3], v857[v951.u32[3]]);
                v857[v945] = fminf(*&v942.i32[1], v857[v945]);
                v857[v944.u32[2]] = fminf(*&v947.i32[2], v857[v944.u32[2]]);
                v857[v949.u32[3]] = fminf(*&v950.i32[3], v857[v949.u32[3]]);
                v857[v951.u32[0]] = fminf(*v952.i32, v857[v951.u32[0]]);
                v857[v946] = fminf(*&v942.i32[2], v857[v946]);
                v857[v944.u32[3]] = fminf(*&v947.i32[3], v857[v944.u32[3]]);
                v857[v949.u32[0]] = fminf(*v950.i32, v857[v949.u32[0]]);
                v857[v951.u32[1]] = fminf(*&v952.i32[1], v857[v951.u32[1]]);
                v857[v948] = fminf(*&v942.i32[3], v857[v948]);
                v857[v944.u32[0]] = fminf(*v947.i32, v857[v944.u32[0]]);
                v857[v949.u32[1]] = fminf(*&v950.i32[1], v857[v949.u32[1]]);
                v857[v951.u32[2]] = fminf(*&v952.i32[2], v857[v951.u32[2]]);
                __asm { FMOV            V0.4S, #16.0 }

                v885 = vaddq_f32(v885, _Q0);
                v883 += 4;
                v884 += 16;
              }

              while (v884 < v871);
              v884 = (((v846 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
              v860 = a14;
              v859 = a15;
              v862 = a12;
              v861 = a13;
              v864 = *&a18;
              v863 = *&a11;
              v865 = *&a16;
              v869 = v1439;
              v870 = v1429;
              v872 = 0.5;
              v873 = v1449;
              v881 = *(&a17 + 1);
            }

            if (v884 < v846)
            {
              do
              {
                v954 = v883->f32[0] * 1000.0;
                _Q2 = vaddq_f32(v859, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v862, v869 * (v954 * ((v884 + v872) - v863))), v861, v870 * (((v866 + v872) - *(&a11 + 1)) * v954)), v860, v954));
                if (_Q2.f32[2] >= 0.0 && v954 > 0.0)
                {
                  v956 = (v864 + (_Q2.f32[0] * (v865 / _Q2.f32[2])));
                  if ((v956 & 0x80000000) == 0 && v848 > v956)
                  {
                    _S3 = v881 / _Q2.f32[2];
                    __asm { FMLA            S4, S3, V2.S[1] }

                    v959 = _S4;
                    if ((_S4 & 0x80000000) == 0 && v847 > v959)
                    {
                      v960 = _Q2.f32[2] * 0.001;
                      v961 = &v857[v856 * v959];
                      v962 = v961[v956];
                      if (v962 == 0.0 || v962 > v960)
                      {
                        v961[v956] = v960;
                      }
                    }
                  }
                }

                ++v884;
                v883 = (v883 + 4);
              }

              while (v846 != v884);
            }

            ++v866;
            __asm { FMOV            V0.4S, #1.0 }

            v873 = vaddq_f32(v873, _Q0);
          }

          while (v866 != v845);
        }

        v721 = v851;
        if (v858)
        {
          v965 = 0;
          v966 = *&buf.width;
          v967 = buf.width >> 4;
          v968 = buf.data;
          v969 = buf.height;
          if (buf.width >> 4 <= 1)
          {
            v967 = 1;
          }

          if (buf.height <= 1)
          {
            v969 = 1;
          }

          v970 = buf.width & 0xFFFFFFF0;
          v971.i64[0] = 0x80000000800000;
          v971.i64[1] = 0x80000000800000;
          v972 = vnegq_f32(v971);
          do
          {
            v973 = &v968[*(&v966 + 1) * v965];
            v974 = v967;
            if (v966 >= 0x10)
            {
              do
              {
                v975 = v973[2];
                v976 = v973[3];
                v977 = vbicq_s8(v973[1], vceqq_f32(v973[1], v972));
                *v973 = vbicq_s8(*v973, vceqq_f32(*v973, v972));
                v973[1] = v977;
                v973[2] = vbicq_s8(v975, vceqq_f32(v975, v972));
                v973[3] = vbicq_s8(v976, vceqq_f32(v976, v972));
                v973 += 4;
                --v974;
              }

              while (v974);
            }

            v978 = v966 & 0xFFFFFFF0;
            if (v970 != v966)
            {
              do
              {
                if (v973->f32[0] == 3.4028e38)
                {
                  v973->i32[0] = 0;
                }

                ++v978;
                v973 = (v973 + 4);
              }

              while (v978 < v966);
            }

            ++v965;
          }

          while (v965 != v969);
        }

        goto LABEL_389;
      }

      if (PixelFormatType != 1751410032)
      {
        if (PixelFormatType == 1751411059)
        {
          v610 = CVPixelBufferGetHeight(a1);
          v611 = CVPixelBufferGetWidth(a1);
          v612 = CVPixelBufferGetHeight(pixelBuffer);
          v613 = CVPixelBufferGetWidth(pixelBuffer);
          v614 = CVPixelBufferGetBytesPerRow(pixelBuffer);
          CVPixelBufferLockBaseAddress(a1, 1uLL);
          CVPixelBufferLockBaseAddress(pixelBuffer, 0);
          memset(&v1562, 0, sizeof(v1562));
          v615 = MEMORY[0x277CBF3A0];
          PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
          memset(&buf, 0, sizeof(buf));
          PixelBufferUtils::asVImageBuffer(pixelBuffer, *v615, &buf);
          v617 = buf.data;
          v616 = buf.height;
          bzero(buf.data, buf.height * buf.rowBytes);
          v620 = a14;
          v619 = a15;
          v622 = a12;
          v621 = a13;
          v624 = *&a18;
          v623 = *&a11;
          v625 = *&a16;
          if (v610)
          {
            v626 = 0;
            v627.i32[1] = v1538;
            v628.i32[1] = HIDWORD(a9);
            v629 = 1.0 / *&a9;
            v630 = 1.0 / *&v1538;
            v631 = 0.5;
            *v618.i32 = 0.5 - *(&a11 + 1);
            v632 = vdupq_lane_s32(v618, 0);
            v633 = v611 & 0xFFFFFFFFFFFFFFF0;
            *v618.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
            *v627.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
            *v628.i32 = (1.0 / *&v1538) * a13.f32[0];
            v634 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
            v1377 = vdupq_lane_s32(*a14.i8, 0);
            v1387 = vdupq_lane_s32(v628, 0);
            v1358 = vdupq_lane_s32(*a14.i8, 1);
            v1367 = vdupq_lane_s32(v627, 0);
            v1338 = vdupq_laneq_s32(a14, 2);
            v1343 = vdupq_lane_s32(v618, 0);
            v635 = v1562.data;
            v636 = v1562.rowBytes;
            v1330 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
            v637 = vdupq_laneq_s32(a15, 2);
            v638 = vdupq_n_s32(v613);
            v639 = vdupq_n_s32(v612);
            v640 = vdupq_n_s32(v614 >> 1);
            v641 = *(&a17 + 1);
            v1407 = 1.0 / *&a9;
            v1397 = 1.0 / *&v1538;
            v1517 = (1.0 / *&a9) * a12.f32[0];
            v1526 = vdupq_lane_s32(*&a18, 1);
            v1497 = vdupq_lane_s32(*&a17, 1);
            v1507 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
            v1477 = vdupq_lane_s32(*a15.i8, 0);
            v1487 = vdupq_lane_s32(*&a18, 0);
            v1457 = vdupq_lane_s32(*a15.i8, 1);
            v1467 = vdupq_n_s32(v616 * (v614 >> 1) - 2);
            v1437 = vdupq_lane_s32(*&a16, 0);
            v1447 = v634;
            v1427 = v637;
            do
            {
              v642 = &v635[v626 * v636];
              v643 = 0;
              if (v633)
              {
                v1534 = vmlaq_f32(v1377, v1387, v632);
                v1556 = vmlaq_f32(v1358, v1367, v632);
                v1417 = v632;
                v1545 = vmlaq_f32(v1338, v1343, v632);
                v644 = v1330;
                do
                {
                  v645 = vdupq_n_s32(0x447A0000u);
                  v646 = vmulq_f32(*v642, v645);
                  v647 = vmulq_f32(v642[1], v645);
                  __asm { FMOV            V1.4S, #4.0 }

                  v649 = vaddq_f32(v644, _Q1);
                  v650 = vmulq_f32(v642[2], v645);
                  _Q1.i64[0] = 0x4100000041000000;
                  _Q1.i64[1] = 0x4100000041000000;
                  v651 = vaddq_f32(v644, _Q1);
                  __asm { FMOV            V1.4S, #12.0 }

                  v653 = vaddq_f32(v644, _Q1);
                  v654 = vmulq_f32(v642[3], v645);
                  v655 = vmlaq_f32(v637, vmlaq_n_f32(v1545, v644, v634), v646);
                  v656 = vmlaq_f32(v637, vmlaq_n_f32(v1545, v649, v634), v647);
                  v657 = vmlaq_f32(v637, vmlaq_n_f32(v1545, v651, v634), v650);
                  v658 = vmlaq_f32(v637, vmlaq_n_f32(v1545, v653, v634), v654);
                  v659 = vmlaq_f32(v1477, vmlaq_n_f32(v1534, v644, v1517), v646);
                  v660 = v640;
                  v661 = vmlaq_f32(v1457, vmlaq_n_f32(v1556, v644, v1507), v646);
                  v662 = vandq_s8(vcgezq_f32(v655), vcgtzq_f32(v646));
                  v663 = vmlaq_f32(v1477, vmlaq_n_f32(v1534, v649, v1517), v647);
                  v664 = vandq_s8(vcgezq_f32(v656), vcgtzq_f32(v647));
                  v665 = vmlaq_f32(v1457, vmlaq_n_f32(v1556, v649, v1507), v647);
                  v666 = vmlaq_f32(v1477, vmlaq_n_f32(v1534, v651, v1517), v650);
                  v667 = v639;
                  v668 = v638;
                  v669 = vmlaq_f32(v1457, vmlaq_n_f32(v1556, v651, v1507), v650);
                  v670 = vandq_s8(vcgezq_f32(v657), vcgtzq_f32(v650));
                  v671 = vmlaq_f32(v1477, vmlaq_n_f32(v1534, v653, v1517), v654);
                  v672 = vmlaq_f32(v1457, vmlaq_n_f32(v1556, v653, v1507), v654);
                  v673 = vmlaq_f32(v1487, vdivq_f32(v1437, v655), v659);
                  v674 = vmlaq_f32(v1526, vdivq_f32(v1497, v655), v661);
                  v675 = vmlaq_f32(v1487, vdivq_f32(v1437, v656), v663);
                  v676 = vmlaq_f32(v1526, vdivq_f32(v1497, v656), v665);
                  v677 = vdivq_f32(v1497, v657);
                  v678 = vandq_s8(vcgezq_f32(v658), vcgtzq_f32(v654));
                  v679 = vmlaq_f32(v1487, vdivq_f32(v1437, v657), v666);
                  v680 = vdivq_f32(v1437, v658);
                  v681 = vdivq_f32(v1497, v658);
                  v682 = vdivq_f32(v645, v655);
                  v683 = vdivq_f32(v645, v656);
                  v684 = vdivq_f32(v645, v657);
                  v685 = vdivq_f32(v645, v658);
                  v686 = vcvtmq_s32_f32(v673);
                  v687 = vcvtmq_s32_f32(v674);
                  v688 = vcvtmq_s32_f32(v675);
                  v689 = vcvtmq_s32_f32(v676);
                  v690 = vcvtmq_s32_f32(v679);
                  v691 = vmlaq_f32(v1526, v677, v669);
                  v638 = v668;
                  v639 = v667;
                  v692 = vmlaq_f32(v1487, v680, v671);
                  v693 = vcvtmq_s32_f32(v691);
                  v694 = vmlaq_f32(v1526, v681, v672);
                  v640 = v660;
                  v695 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v667, v687), vcgtq_s32(v638, v686)), vcgezq_s32(vorrq_s8(v687, v686))), v662);
                  v696 = vcvtmq_s32_f32(v692);
                  v697 = vcvtmq_s32_f32(v694);
                  v698 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v667, v689), vcgtq_s32(v638, v688)), vcgezq_s32(vorrq_s8(v689, v688))), v664);
                  v637 = v1427;
                  v699 = vmlaq_s32(v686, v687, v660);
                  v634 = v1447;
                  v700 = vandq_s8(v682, vcltzq_s32(vshlq_n_s32(v695, 0x1FuLL)));
                  v701 = vandq_s8(v684, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v667, v693), vcgtq_s32(v638, v690)), vcgezq_s32(vorrq_s8(v693, v690))), v670), 0x1FuLL)));
                  v702 = vminq_s32(vmaxq_s32(v699, 0), v1467);
                  v703 = vminq_s32(vmaxq_s32(vmlaq_s32(v688, v689, v660), 0), v1467);
                  v704 = vminq_s32(vmaxq_s32(vmlaq_s32(v690, v693, v660), 0), v1467);
                  v705 = vminq_s32(vmaxq_s32(vmlaq_s32(v696, v697, v660), 0), v1467);
                  v706 = v702.u32[1];
                  v707 = vandq_s8(v685, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v667, v697), vcgtq_s32(v638, v696)), vcgezq_s32(vorrq_s8(v697, v696))), v678), 0x1FuLL)));
                  *v678.i8 = vcvt_f16_f32(v700);
                  v617[v702.u32[0]] = fmaxl(*v678.i16, v617[v702.u32[0]]);
                  *v702.i8 = vcvt_f16_f32(vandq_s8(v683, vcltzq_s32(vshlq_n_s32(v698, 0x1FuLL))));
                  v617[v703.u32[1]] = fmaxl(*&v702.i16[1], v617[v703.u32[1]]);
                  *v701.f32 = vcvt_f16_f32(v701);
                  v617[v704.u32[2]] = fmaxl(*&v701.i16[2], v617[v704.u32[2]]);
                  *v683.i8 = vcvt_f16_f32(v707);
                  v617[v705.u32[3]] = fmaxl(*&v683.i16[3], v617[v705.u32[3]]);
                  v617[v706] = fmaxl(*&v678.i16[1], v617[v706]);
                  v617[v703.u32[2]] = fmaxl(*&v702.i16[2], v617[v703.u32[2]]);
                  v617[v704.u32[3]] = fmaxl(*&v701.i16[3], v617[v704.u32[3]]);
                  v617[v705.u32[0]] = fmaxl(*v683.i16, v617[v705.u32[0]]);
                  v617[v702.u32[2]] = fmaxl(*&v678.i16[2], v617[v702.u32[2]]);
                  v617[v703.u32[3]] = fmaxl(*&v702.i16[3], v617[v703.u32[3]]);
                  v617[v704.u32[0]] = fmaxl(*v701.i16, v617[v704.u32[0]]);
                  v617[v705.u32[1]] = fmaxl(*&v683.i16[1], v617[v705.u32[1]]);
                  v617[v702.u32[3]] = fmaxl(*&v678.i16[3], v617[v702.u32[3]]);
                  v617[v703.u32[0]] = fmaxl(*v702.i16, v617[v703.u32[0]]);
                  v617[v704.u32[1]] = fmaxl(*&v701.i16[1], v617[v704.u32[1]]);
                  v617[v705.u32[2]] = fmaxl(*&v683.i16[2], v617[v705.u32[2]]);
                  __asm { FMOV            V0.4S, #16.0 }

                  v644 = vaddq_f32(v644, _Q0);
                  v642 += 4;
                  v643 += 16;
                }

                while (v643 < v633);
                v643 = (((v611 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
                v620 = a14;
                v619 = a15;
                v622 = a12;
                v621 = a13;
                v624 = *&a18;
                v623 = *&a11;
                v625 = *&a16;
                v629 = v1407;
                v630 = v1397;
                v631 = 0.5;
                v632 = v1417;
                v641 = *(&a17 + 1);
              }

              if (v643 < v611)
              {
                do
                {
                  v709 = v642->f32[0] * 1000.0;
                  _Q3 = vaddq_f32(v619, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v622, v629 * (v709 * ((v643 + v631) - v623))), v621, v630 * (((v626 + v631) - *(&a11 + 1)) * v709)), v620, v709));
                  if (_Q3.f32[2] >= 0.0 && v709 > 0.0)
                  {
                    v711 = (v624 + (_Q3.f32[0] * (v625 / _Q3.f32[2])));
                    if ((v711 & 0x80000000) == 0 && v613 > v711)
                    {
                      _S2 = v641 / _Q3.f32[2];
                      __asm { FMLA            S4, S2, V3.S[1] }

                      v714 = _S4;
                      if ((_S4 & 0x80000000) == 0 && v612 > v714)
                      {
                        _S1 = 1000.0 / _Q3.f32[2];
                        v716 = &v617[(v614 >> 1) * v714];
                        __asm
                        {
                          FCVT            H1, S1
                          FCMP            H2, #0
                        }

                        if (_ZF || _H2 < _H1)
                        {
                          v716[v711] = _H1;
                        }
                      }
                    }
                  }

                  ++v643;
                  v642 = (v642 + 4);
                }

                while (v611 != v643);
              }

              ++v626;
              __asm { FMOV            V0.4S, #1.0 }

              v632 = vaddq_f32(v632, _Q0);
            }

            while (v626 != v610);
          }

          goto LABEL_183;
        }

LABEL_391:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_393;
        }

        return -22950;
      }
    }

    v722 = CVPixelBufferGetHeight(a1);
    v723 = CVPixelBufferGetWidth(a1);
    v724 = CVPixelBufferGetHeight(pixelBuffer);
    v725 = CVPixelBufferGetWidth(pixelBuffer);
    v726 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    memset(&v1562, 0, sizeof(v1562));
    v727 = MEMORY[0x277CBF3A0];
    v728 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v727, &buf);
    v730 = v726 >> 1;
    v731 = buf.data;
    if (v730 * v724)
    {
      memset_pattern16(buf.data, &unk_2404C86A0, 2 * v730 * v724);
    }

    v732 = buf.height;
    v734 = a14;
    v733 = a15;
    v736 = a12;
    v735 = a13;
    v738 = *&a18;
    v737 = *&a11;
    v739 = *&a16;
    if (v722)
    {
      v740 = 0;
      v741.i32[1] = v1538;
      v742.i32[1] = HIDWORD(a9);
      v743 = 1.0 / *&a9;
      v744 = 1.0 / *&v1538;
      v745 = v723 & 0xFFFFFFFFFFFFFFF0;
      v746 = 0.5;
      *v729.i32 = 0.5 - *(&a11 + 1);
      v747 = vdupq_lane_s32(v729, 0);
      *v729.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
      *v741.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
      *v742.i32 = (1.0 / *&v1538) * a13.f32[0];
      v748 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v749 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      v750 = (1.0 / *&a9) * a12.f32[0];
      v751 = v1562.data;
      v752 = v1562.rowBytes;
      v1418 = vdupq_lane_s32(*a14.i8, 0);
      v1428 = vdupq_lane_s32(v742, 0);
      v1398 = vdupq_lane_s32(*a14.i8, 1);
      v1408 = vdupq_lane_s32(v741, 0);
      v1378 = vdupq_laneq_s32(a14, 2);
      v1388 = vdupq_lane_s32(v729, 0);
      v753 = vdupq_laneq_s32(a15, 2);
      v754 = vdupq_lane_s32(*a15.i8, 0);
      v755 = vdupq_lane_s32(*a15.i8, 1);
      v756 = vdupq_n_s32(v725);
      v757 = vdupq_n_s32(v724);
      v1368 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v758 = vdupq_n_s32(LODWORD(buf.height) * v730 - 2);
      v759 = *(&a17 + 1);
      v1448 = 1.0 / *&a9;
      v1438 = 1.0 / *&v1538;
      v1518 = vdupq_lane_s32(*&a16, 0);
      v1527 = vdupq_n_s32(v730);
      v1498 = vdupq_lane_s32(*&a18, 0);
      v1508 = vdupq_lane_s32(*&a17, 1);
      v1478 = vdupq_lane_s32(*&a18, 1);
      v1488 = v753;
      v1468 = v748;
      do
      {
        v760 = &v751[v740 * v752];
        v761 = 0;
        if (v745)
        {
          v1557 = vmlaq_f32(v1418, v1428, v747);
          v1546 = vmlaq_f32(v1398, v1408, v747);
          v1458 = v747;
          v1535 = vmlaq_f32(v1378, v1388, v747);
          v762 = v1368;
          do
          {
            v763 = vdupq_n_s32(0x447A0000u);
            v764 = vmulq_f32(*v760, v763);
            v765 = vmulq_f32(v760[1], v763);
            v766 = vmulq_f32(v760[2], v763);
            __asm { FMOV            V1.4S, #4.0 }

            v768 = vaddq_f32(v762, _Q1);
            _Q1.i64[0] = 0x4100000041000000;
            _Q1.i64[1] = 0x4100000041000000;
            v769 = vaddq_f32(v762, _Q1);
            v770 = vmulq_f32(v760[3], v763);
            __asm { FMOV            V3.4S, #12.0 }

            v772 = vaddq_f32(v762, _Q3);
            v773 = vmlaq_f32(v753, vmlaq_n_f32(v1535, v762, v748), v764);
            v774 = vmlaq_f32(v753, vmlaq_n_f32(v1535, v768, v748), v765);
            v775 = vmlaq_f32(v753, vmlaq_n_f32(v1535, v769, v748), v766);
            v776 = vmlaq_f32(v753, vmlaq_n_f32(v1535, v772, v748), v770);
            v777 = v757;
            v778 = vmlaq_f32(v754, vmlaq_n_f32(v1557, v762, v750), v764);
            v779 = vmlaq_f32(v755, vmlaq_n_f32(v1546, v762, v749), v764);
            v780 = vornq_s8(vmvnq_s8(vcgezq_f32(v773)), vcgtzq_f32(v764));
            v781 = vornq_s8(vmvnq_s8(vcgezq_f32(v774)), vcgtzq_f32(v765));
            v782 = vornq_s8(vmvnq_s8(vcgezq_f32(v775)), vcgtzq_f32(v766));
            v783 = vmlaq_f32(v754, vmlaq_n_f32(v1557, v769, v750), v766);
            v784 = vmlaq_f32(v755, vmlaq_n_f32(v1546, v769, v749), v766);
            v785 = vornq_s8(vmvnq_s8(vcgezq_f32(v776)), vcgtzq_f32(v770));
            v786 = vmlaq_f32(v754, vmlaq_n_f32(v1557, v772, v750), v770);
            v787 = vmlaq_f32(v755, vmlaq_n_f32(v1546, v772, v749), v770);
            v788 = vmlaq_f32(v1498, vdivq_f32(v1518, v773), v778);
            v789 = vmlaq_f32(v1478, vdivq_f32(v1508, v773), v779);
            v790 = vmlaq_f32(v1498, vdivq_f32(v1518, v774), vmlaq_f32(v754, vmlaq_n_f32(v1557, v768, v750), v765));
            v791 = vmlaq_f32(v1478, vdivq_f32(v1508, v774), vmlaq_f32(v755, vmlaq_n_f32(v1546, v768, v749), v765));
            v792 = vmlaq_f32(v1498, vdivq_f32(v1518, v775), v783);
            v793 = vmlaq_f32(v1478, vdivq_f32(v1508, v775), v784);
            v794 = vdupq_n_s32(0x3A83126Fu);
            v795 = vmulq_f32(v773, v794);
            v796 = vmulq_f32(v774, v794);
            v797 = vmulq_f32(v775, v794);
            v798 = vmulq_f32(v776, v794);
            v799 = vcvtmq_s32_f32(v788);
            v800 = vcvtmq_s32_f32(v789);
            v801 = vcvtmq_s32_f32(v790);
            v802 = vcvtmq_s32_f32(v791);
            v803 = vmlaq_f32(v1478, vdivq_f32(v1508, v776), v787);
            v757 = v777;
            v804 = vcvtmq_s32_f32(v792);
            v805 = vcvtmq_s32_f32(v793);
            v806 = vcvtmq_s32_f32(vmlaq_f32(v1498, vdivq_f32(v1518, v776), v786));
            v807 = vcvtmq_s32_f32(v803);
            v808 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v807, v777), vcgeq_s32(v806, v756)), vcltzq_s32(vorrq_s8(v807, v806))), v785);
            v809 = vdupq_n_s32(0x477FE000u);
            v810 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v800, v777), vcgeq_s32(v799, v756)), vcltzq_s32(vorrq_s8(v800, v799))), v780), 0x1FuLL)), v809, v795);
            v811 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v802, v777), vcgeq_s32(v801, v756)), vcltzq_s32(vorrq_s8(v802, v801))), v781), 0x1FuLL)), v809, v796);
            v812 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v805, v777), vcgeq_s32(v804, v756)), vcltzq_s32(vorrq_s8(v805, v804))), v782), 0x1FuLL)), v809, v797);
            v813 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v808, 0x1FuLL)), v809, v798);
            v748 = v1468;
            v753 = v1488;
            v814 = vmlaq_s32(v801, v802, v1527);
            v815 = vminq_s32(vmaxq_s32(vmlaq_s32(v799, v800, v1527), 0), v758);
            v816 = vminq_s32(vmaxq_s32(v814, 0), v758);
            v817 = vminq_s32(vmaxq_s32(vmlaq_s32(v804, v805, v1527), 0), v758);
            v818 = vminq_s32(vmaxq_s32(vmlaq_s32(v806, v807, v1527), 0), v758);
            v819 = v815.u32[1];
            *v796.i8 = vcvt_f16_f32(v810);
            v731[v815.u32[0]] = fminl(*v796.i16, v731[v815.u32[0]]);
            *v815.i8 = vcvt_f16_f32(v811);
            v731[v816.u32[1]] = fminl(*&v815.i16[1], v731[v816.u32[1]]);
            *v812.f32 = vcvt_f16_f32(v812);
            v731[v817.u32[2]] = fminl(*&v812.i16[2], v731[v817.u32[2]]);
            *v803.f32 = vcvt_f16_f32(v813);
            v731[v818.u32[3]] = fminl(*&v803.i16[3], v731[v818.u32[3]]);
            v731[v819] = fminl(*&v796.i16[1], v731[v819]);
            v731[v816.u32[2]] = fminl(*&v815.i16[2], v731[v816.u32[2]]);
            v731[v817.u32[3]] = fminl(*&v812.i16[3], v731[v817.u32[3]]);
            v731[v818.u32[0]] = fminl(*v803.i16, v731[v818.u32[0]]);
            v731[v815.u32[2]] = fminl(*&v796.i16[2], v731[v815.u32[2]]);
            v731[v816.u32[3]] = fminl(*&v815.i16[3], v731[v816.u32[3]]);
            v731[v817.u32[0]] = fminl(*v812.i16, v731[v817.u32[0]]);
            v731[v818.u32[1]] = fminl(*&v803.i16[1], v731[v818.u32[1]]);
            v731[v815.u32[3]] = fminl(*&v796.i16[3], v731[v815.u32[3]]);
            v731[v816.u32[0]] = fminl(*v815.i16, v731[v816.u32[0]]);
            v731[v817.u32[1]] = fminl(*&v812.i16[1], v731[v817.u32[1]]);
            v731[v818.u32[2]] = fminl(*&v803.i16[2], v731[v818.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v762 = vaddq_f32(v762, _Q0);
            v760 += 4;
            v761 += 16;
          }

          while (v761 < v745);
          v761 = (((v723 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v734 = a14;
          v733 = a15;
          v736 = a12;
          v735 = a13;
          v738 = *&a18;
          v737 = *&a11;
          v739 = *&a16;
          v743 = v1448;
          v744 = v1438;
          v746 = 0.5;
          v747 = v1458;
          v759 = *(&a17 + 1);
        }

        if (v761 < v723)
        {
          do
          {
            v821 = v760->f32[0] * 1000.0;
            _Q2 = vaddq_f32(v733, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v736, v743 * (v821 * ((v761 + v746) - v737))), v735, v744 * (((v740 + v746) - *(&a11 + 1)) * v821)), v734, v821));
            if (_Q2.f32[2] >= 0.0 && v821 > 0.0)
            {
              v823 = (v738 + (_Q2.f32[0] * (v739 / _Q2.f32[2])));
              if ((v823 & 0x80000000) == 0 && v725 > v823)
              {
                _S3 = v759 / _Q2.f32[2];
                __asm { FMLA            S4, S3, V2.S[1] }

                v826 = _S4;
                if ((_S4 & 0x80000000) == 0 && v724 > v826)
                {
                  _S1 = _Q2.f32[2] * 0.001;
                  v828 = &v731[v730 * v826];
                  __asm
                  {
                    FCVT            H1, S1
                    FCMP            H2, #0
                  }

                  if (_ZF || _H2 > _H1)
                  {
                    v828[v823] = _H1;
                  }
                }
              }
            }

            ++v761;
            v760 = (v760 + 4);
          }

          while (v723 != v761);
        }

        ++v740;
        __asm { FMOV            V0.4S, #1.0 }

        v747 = vaddq_f32(v747, _Q0);
      }

      while (v740 != v722);
    }

    v721 = v728;
    if (v732)
    {
      v833 = 0;
      v834 = *&buf.width;
      v835 = buf.width >> 4;
      v836 = buf.data;
      v837 = buf.height;
      if (buf.width >> 4 <= 1)
      {
        v835 = 1;
      }

      if (buf.height <= 1)
      {
        v837 = 1;
      }

      v838 = buf.width & 0xFFFFFFF0;
      do
      {
        v839 = &v836[*(&v834 + 1) * v833];
        v840 = v835;
        if (v834 >= 0x10)
        {
          do
          {
            v841 = v839[2];
            v842 = v839[3];
            v843 = vbic_s8(v839[1], vceq_f16(v839[1], 0x8400840084008400));
            *v839 = vbic_s8(*v839, vceq_f16(*v839, 0x8400840084008400));
            v839[1] = v843;
            v839[2] = vbic_s8(v841, vceq_f16(v841, 0x8400840084008400));
            v839[3] = vbic_s8(v842, vceq_f16(v842, 0x8400840084008400));
            v839 += 4;
            --v840;
          }

          while (v840);
        }

        v844 = v834 & 0xFFFFFFF0;
        if (v838 != v834)
        {
          do
          {
            if (*v839->i16 == COERCE_SHORT_FLOAT(31743))
            {
              v839->i16[0] = 0;
            }

            ++v844;
            v839 = (v839 + 2);
          }

          while (v844 < v834);
        }

        ++v833;
      }

      while (v833 != v837);
    }

    goto LABEL_389;
  }

  if (PixelFormatType <= 1717855599)
  {
    if (PixelFormatType == 825437747)
    {
      v1325 = CVPixelBufferGetHeight(a1);
      v979 = CVPixelBufferGetWidth(a1);
      v980 = CVPixelBufferGetHeight(pixelBuffer);
      v981 = CVPixelBufferGetWidth(pixelBuffer);
      v982 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      CVPixelBufferLockBaseAddress(a2, 0);
      memset(&v1562, 0, sizeof(v1562));
      v983 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
      memset(&buf, 0, sizeof(buf));
      PixelBufferUtils::asVImageBuffer(pixelBuffer, *v983, &buf);
      PixelBufferUtils::asVImageBuffer(v1341, *v983, &v1561);
      v985 = v982 >> 1;
      v1320 = v1561.data;
      v1316 = v1561.rowBytes;
      v986 = buf.data;
      if (v985 * v980)
      {
        memset_pattern16(buf.data, &unk_2404C86B0, 2 * v985 * v980);
      }

      v987 = buf.height;
      if (v1325)
      {
        v988 = 0;
        v989.i32[1] = v1538;
        v990.i32[1] = HIDWORD(a9);
        v991 = *&a11;
        v992 = 1.0 / *&a9;
        v993 = 1.0 / *&v1538;
        v994 = v979 & 0xFFFFFFFFFFFFFFF0;
        v995 = 0.5;
        *v984.i32 = 0.5 - *(&a11 + 1);
        v996 = vdupq_lane_s32(v984, 0);
        v998 = a13;
        v997 = a14;
        *v984.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
        *v989.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
        *v990.i32 = (1.0 / *&v1538) * a13.f32[0];
        v1297 = vdupq_lane_s32(*a14.i8, 0);
        v1299 = vdupq_lane_s32(v990, 0);
        v1293 = vdupq_lane_s32(*a14.i8, 1);
        v1295 = vdupq_lane_s32(v989, 0);
        v1291 = vdupq_laneq_s32(a14, 2);
        v1292 = vdupq_lane_s32(v984, 0);
        v999 = a12;
        v1000 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
        v1001 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
        v1002 = (1.0 / *&a9) * a12.f32[0];
        v1003 = a15;
        v1004 = __PAIR64__(DWORD1(a17), a16);
        v1005 = vdupq_laneq_s32(a15, 2);
        v1006 = vdupq_lane_s32(*a15.i8, 0);
        v1007 = vdupq_lane_s32(*a15.i8, 1);
        v1290 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
        v1008 = v981;
        v1009 = v980;
        v1287 = (((v979 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
        v1010 = vdupq_lane_s32(*&a16, 0);
        v1011 = a18;
        v1012 = vdupq_lane_s32(*&a18, 1);
        v1312 = v1562.data;
        v1309 = v1562.rowBytes;
        v1360 = vdupq_n_s32(v981);
        v1306 = v979;
        v1304 = v985;
        v1302 = 1.0 / *&a9;
        v1470 = v979 & 0xFFFFFFFFFFFFFFF0;
        v1450 = v1005;
        v1460 = v1000;
        v1430 = vdupq_n_s32(LODWORD(buf.height) * v985 - 2);
        v1440 = v1002;
        v1288 = v981;
        v1410 = vdupq_n_s32(v985);
        v1420 = v1010;
        v1390 = v1006;
        v1400 = vdupq_lane_s32(*&a18, 0);
        v1370 = vdupq_lane_s32(*&a17, 1);
        v1380 = vdupq_n_s32(v980);
        do
        {
          v1013 = &v1312[v1309 * v988];
          v1014 = &v1320[v988 * v1316];
          if (v994)
          {
            v1339 = v988;
            v1015 = 0;
            v1500 = vmlaq_f32(v1297, v1299, v996);
            v1490 = vmlaq_f32(v1293, v1295, v996);
            v1331 = v996;
            v1480 = vmlaq_f32(v1291, v1292, v996);
            v1016 = v1290;
            do
            {
              v1559 = v1015;
              v1017 = vdupq_n_s32(0x447A0000u);
              v1018 = vmulq_f32(*v1013, v1017);
              v1019 = vmulq_f32(v1013[1], v1017);
              v1020 = vmulq_f32(v1013[2], v1017);
              __asm { FMOV            V0.4S, #4.0 }

              v1022 = vaddq_f32(v1016, _Q0);
              _Q0.i64[0] = 0x4100000041000000;
              _Q0.i64[1] = 0x4100000041000000;
              v1023 = vaddq_f32(v1016, _Q0);
              __asm { FMOV            V0.4S, #12.0 }

              v1025 = vaddq_f32(v1016, _Q0);
              v1026 = vmulq_f32(v1013[3], v1017);
              v1027 = vmlaq_f32(v1005, vmlaq_n_f32(v1480, v1016, v1000), v1018);
              v1028 = vmlaq_f32(v1005, vmlaq_n_f32(v1480, v1022, v1000), v1019);
              v1029 = vmlaq_f32(v1005, vmlaq_n_f32(v1480, v1023, v1000), v1020);
              v1030 = vmlaq_f32(v1005, vmlaq_n_f32(v1480, v1025, v1000), v1026);
              v1031 = v1007;
              v1032 = vmlaq_f32(v1007, vmlaq_n_f32(v1490, v1016, v1001), v1018);
              v1033 = vmlaq_f32(v1007, vmlaq_n_f32(v1490, v1022, v1001), v1019);
              v1034 = vmlaq_f32(v1007, vmlaq_n_f32(v1490, v1023, v1001), v1020);
              v1035 = vmlaq_f32(v1006, vmlaq_n_f32(v1500, v1025, v1002), v1026);
              v1036 = vornq_s8(vmvnq_s8(vcgezq_f32(v1027)), vcgtzq_f32(v1018));
              v1037 = vmlaq_f32(v1007, vmlaq_n_f32(v1490, v1025, v1001), v1026);
              v1038 = vornq_s8(vmvnq_s8(vcgezq_f32(v1028)), vcgtzq_f32(v1019));
              v1039 = vmlaq_f32(v1400, vdivq_f32(v1010, v1027), vmlaq_f32(v1006, vmlaq_n_f32(v1500, v1016, v1002), v1018));
              v1040 = vmlaq_f32(v1012, vdivq_f32(v1370, v1027), v1032);
              v1041 = vmlaq_f32(v1400, vdivq_f32(v1010, v1028), vmlaq_f32(v1006, vmlaq_n_f32(v1500, v1022, v1002), v1019));
              v1042 = vornq_s8(vmvnq_s8(vcgezq_f32(v1029)), vcgtzq_f32(v1020));
              v1043 = vmlaq_f32(v1012, vdivq_f32(v1370, v1028), v1033);
              v1044 = vmlaq_f32(v1400, vdivq_f32(v1010, v1029), vmlaq_f32(v1006, vmlaq_n_f32(v1500, v1023, v1002), v1020));
              v1045 = vdivq_f32(v1370, v1030);
              v1046.i64[0] = 0x4100000041000000;
              v1046.i64[1] = 0x4100000041000000;
              v1047 = vmulq_f32(v1027, v1046);
              v1048 = vmulq_f32(v1028, v1046);
              v1049 = vornq_s8(vmvnq_s8(vcgezq_f32(v1030)), vcgtzq_f32(v1026));
              v1050 = vmulq_f32(v1029, v1046);
              v1051 = vmulq_f32(v1030, v1046);
              v1052 = vcvtmq_s32_f32(v1039);
              v1053 = vcvtmq_s32_f32(v1040);
              v1054 = vcvtmq_s32_f32(v1041);
              v1055 = vcvtmq_s32_f32(v1043);
              v1056 = vcvtmq_s32_f32(v1044);
              v1057 = vmlaq_f32(v1400, vdivq_f32(v1010, v1030), v1035);
              v1007 = v1031;
              v1058 = vcvtmq_s32_f32(vmlaq_f32(v1012, vdivq_f32(v1370, v1029), v1034));
              v1059 = vcvtmq_s32_f32(v1057);
              v1060 = vcvtmq_s32_f32(vmlaq_f32(v1012, v1045, v1037));
              v1061 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1053, v1380), vcgeq_s32(v1052, v1360)), vcltzq_s32(vorrq_s8(v1053, v1052))), v1036);
              v1062 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1055, v1380), vcgeq_s32(v1054, v1360)), vcltzq_s32(vorrq_s8(v1055, v1054))), v1038);
              v1063 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1058, v1380), vcgeq_s32(v1056, v1360)), vcltzq_s32(vorrq_s8(v1058, v1056))), v1042);
              v1064 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1060, v1380), vcgeq_s32(v1059, v1360)), vcltzq_s32(vorrq_s8(v1060, v1059))), v1049);
              v1065 = vdupq_n_s32(0x46FFFE00u);
              v1066 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1061, 0x1FuLL)), v1065, v1047);
              v1067 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1062, 0x1FuLL)), v1065, v1048);
              v1068 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1063, 0x1FuLL)), v1065, v1050);
              v1069 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1064, 0x1FuLL)), v1065, v1051);
              *v1065.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1061), 0xFuLL));
              *v1045.f32 = vorr_s8(vmovn_s32(v1052), *v1065.i8);
              *v1049.i8 = vorr_s8(vmovn_s32(v1053), *v1065.i8);
              *v1061.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1062), 0xFuLL));
              v1031.val[0] = vorr_s8(vmovn_s32(v1054), *v1061.i8);
              *v1065.i8 = vorr_s8(vmovn_s32(v1055), *v1061.i8);
              v1070 = v1014;
              vst2_s16(v1070, v1045);
              v1070 += 8;
              *v1063.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1063), 0xFuLL));
              *v1045.f32 = vorr_s8(vmovn_s32(v1056), *v1063.i8);
              *v1049.i8 = vorr_s8(vmovn_s32(v1058), *v1063.i8);
              v1071 = v1014 + 16;
              vst2_s16(v1071, v1045);
              v1006 = v1390;
              v1010 = v1420;
              vst2_s16(v1070, v1031);
              v1002 = v1440;
              v1005 = v1450;
              *v1063.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1064), 0xFuLL));
              *v1064.i8 = vorr_s8(vmovn_s32(v1059), *v1063.i8);
              v1031.val[0] = vorr_s8(vmovn_s32(v1060), *v1063.i8);
              v1072 = v1014 + 24;
              vst2_s16(v1072, *(&v1031 - 8));
              v1000 = v1460;
              v1073 = vmlaq_s32(v1059, v1060, v1410);
              v1074 = vminq_s32(vmaxq_s32(vmlaq_s32(v1052, v1053, v1410), 0), v1430);
              v1548 = v1074.u32[1];
              v1075 = v1074.i64[1];
              v1076 = v1074.i32[0];
              v1077 = vcvtq_s32_f32(v1066);
              v1078 = v1077.i32[1];
              v1079 = v1077.i32[2];
              v1520 = v1077.i32[3];
              v1080 = v1077.i32[0];
              v1081 = vminq_s32(vmaxq_s32(v1073, 0), v1430);
              v1082 = vcvtq_s32_f32(v1069);
              v1083 = v1081.u32[3];
              v1510 = v1081.u32[1];
              v1084 = v1081.u32[2];
              v1085 = v1081.i32[0];
              v1086 = vminq_s32(vmaxq_s32(vmlaq_s32(v1056, v1058, v1410), 0), v1430);
              v1087 = v1086.u32[2];
              v1088 = v1086.u32[3];
              v1089 = v1086.u32[1];
              v1090 = v1086.i32[0];
              v1091 = vcvtq_s32_f32(v1068);
              v1092 = v1091.i32[2];
              v1093 = v1091.i32[3];
              v1094 = v1091.i32[1];
              v1095 = v1091.i32[0];
              v1096 = vminq_s32(vmaxq_s32(vmlaq_s32(v1054, v1055, v1410), 0), v1430);
              v1097 = v986[v1076];
              v1098 = vcvtq_s32_f32(v1067);
              if (v1080 < v1097)
              {
                LOWORD(v1097) = v1080;
              }

              v986[v1076] = v1097;
              v1099 = v1098.i32[1];
              v1100 = v1014;
              v1101 = v1013;
              v1102 = v1098.i32[2];
              v1103 = v1098.i32[3];
              v1104 = v1098.i32[0];
              __asm { FMOV            V0.4S, #16.0 }

              v1016 = vaddq_f32(v1016, _Q0);
              if (v1099 >= v986[v1096.u32[1]])
              {
                LOWORD(v1099) = v986[v1096.u32[1]];
              }

              v986[v1096.u32[1]] = v1099;
              v1106 = v986[v1087];
              if (v1092 < v1106)
              {
                LOWORD(v1106) = v1092;
              }

              v986[v1087] = v1106;
              v1107 = v986[v1083];
              if (v1082.i32[3] < v1107)
              {
                LOWORD(v1107) = v1082.i16[6];
              }

              v986[v1083] = v1107;
              v1108 = v986[v1548];
              if (v1078 < v1108)
              {
                LOWORD(v1108) = v1078;
              }

              v986[v1548] = v1108;
              v1109 = v986[v1096.u32[2]];
              if (v1102 < v1109)
              {
                LOWORD(v1109) = v1102;
              }

              v986[v1096.u32[2]] = v1109;
              v1110 = v986[v1088];
              if (v1093 < v1110)
              {
                LOWORD(v1110) = v1093;
              }

              v986[v1088] = v1110;
              v1111 = v986[v1085];
              if (v1082.i32[0] < v1111)
              {
                LOWORD(v1111) = v1082.i16[0];
              }

              v986[v1085] = v1111;
              v1112 = v986[v1075];
              if (v1079 < v1112)
              {
                LOWORD(v1112) = v1079;
              }

              v986[v1075] = v1112;
              v1113 = v986[v1096.u32[3]];
              if (v1103 < v1113)
              {
                LOWORD(v1113) = v1103;
              }

              v986[v1096.u32[3]] = v1113;
              v1114 = v986[v1090];
              if (v1095 < v1114)
              {
                LOWORD(v1114) = v1095;
              }

              v986[v1090] = v1114;
              v1115 = v986[v1510];
              if (v1082.i32[1] < v1115)
              {
                LOWORD(v1115) = v1082.i16[2];
              }

              v986[v1510] = v1115;
              v1116 = v986[HIDWORD(v1075)];
              if (v1520 < v1116)
              {
                LOWORD(v1116) = v1520;
              }

              v986[HIDWORD(v1075)] = v1116;
              v1117 = v986[v1096.u32[0]];
              if (v1104 < v1117)
              {
                LOWORD(v1117) = v1104;
              }

              v986[v1096.u32[0]] = v1117;
              v994 = v1470;
              v1118 = v986[v1089];
              if (v1094 < v1118)
              {
                LOWORD(v1118) = v1094;
              }

              v986[v1089] = v1118;
              v1119 = v986[v1084];
              if (v1082.i32[2] < v1119)
              {
                LOWORD(v1119) = v1082.i16[4];
              }

              v986[v1084] = v1119;
              v1013 = v1101 + 4;
              v1014 = v1100 + 32;
              v1015 = v1559 + 16;
            }

            while (v1559 + 16 < v1470);
            v1120 = v1287;
            v997 = a14;
            v1003 = a15;
            v999 = a12;
            v998 = a13;
            v1011 = a18;
            v991 = *&a11;
            v1004 = __PAIR64__(DWORD1(a17), a16);
            v979 = v1306;
            v985 = v1304;
            v988 = v1339;
            v992 = v1302;
            v993 = 1.0 / *&v1538;
            v995 = 0.5;
            v996 = v1331;
            v1009 = v980;
            v1008 = v1288;
          }

          else
          {
            v1120 = 0;
          }

          if (v1120 < v979)
          {
            do
            {
              v1121 = v1013->f32[0] * 1000.0;
              v1122 = vaddq_f32(v1003, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v999, v992 * (v1121 * ((v1120 + v995) - v991))), v998, v993 * (((v988 + v995) - *(&a11 + 1)) * v1121)), v997, v1121));
              v1123 = 0xFFFF0000FFFFLL;
              if (*&v1122.i32[2] >= 0.0 && v1121 > 0.0)
              {
                v1124 = vcvt_s32_f32(vmla_f32(v1011, vdiv_f32(v1004, vdup_laneq_s32(v1122, 2)), *v1122.i8));
                if ((v1124.i32[0] & 0x80000000) == 0 && v1008 > v1124.i32[0] && (v1124.i32[1] & 0x80000000) == 0 && v1009 > v1124.i32[1])
                {
                  v1125 = vcvts_n_s32_f32(*&v1122.i32[2], 3uLL);
                  v1126 = &v986[v985 * v1124.i32[1]];
                  if ((v1126[v1124.u32[0]] - 1) >= v1125)
                  {
                    v1126[v1124.u32[0]] = v1125;
                  }

                  v1123 = v1124;
                }
              }

              *v1014 = v1123;
              v1014[1] = WORD2(v1123);
              ++v1120;
              v1013 = (v1013 + 4);
              v1014 += 2;
            }

            while (v979 != v1120);
          }

          ++v988;
          __asm { FMOV            V0.4S, #1.0 }

          v996 = vaddq_f32(v996, _Q0);
        }

        while (v988 != v1325);
        v987 = buf.height;
      }

      v347 = a1;
      if (v987)
      {
        v1128 = 0;
        v1129 = *&buf.width;
        v1130 = buf.data;
        v1131 = buf.width >> 4;
        if (buf.width >> 4 <= 1)
        {
          v1131 = 1;
        }

        v1132 = buf.width & 0xFFFFFFF0;
        do
        {
          v1133 = &v1130[*(&v1129 + 1) * v1128];
          v1134 = v1131;
          if (v1129 >= 0x10)
          {
            do
            {
              v1135 = v1133[2];
              v1136 = v1133[3];
              v1137 = vbic_s8(v1133[1], vceq_s16(v1133[1], 0x8000800080008000));
              *v1133 = vbic_s8(*v1133, vceq_s16(*v1133, 0x8000800080008000));
              v1133[1] = v1137;
              v1133[2] = vbic_s8(v1135, vceq_s16(v1135, 0x8000800080008000));
              v1133[3] = vbic_s8(v1136, vceq_s16(v1136, 0x8000800080008000));
              v1133 += 4;
              --v1134;
            }

            while (v1134);
          }

          v1138 = v1129 & 0xFFFFFFF0;
          if (v1132 != v1129)
          {
            do
            {
              if (v1133->i16[0] == 0x7FFF)
              {
                v1133->i16[0] = 0;
              }

              ++v1138;
              v1133 = (v1133 + 2);
            }

            while (v1138 < v1129);
          }

          ++v1128;
        }

        while (v1128 != v987);
      }

      goto LABEL_321;
    }

    if (PixelFormatType == 1278226534)
    {
      goto LABEL_124;
    }

    if (PixelFormatType != 1278226536)
    {
      goto LABEL_322;
    }

    goto LABEL_88;
  }

  if (PixelFormatType <= 1751410031)
  {
    if (PixelFormatType != 1717855600)
    {
      if (PixelFormatType == 1717856627)
      {
        v21 = CVPixelBufferGetHeight(a1);
        v22 = CVPixelBufferGetWidth(a1);
        v23 = CVPixelBufferGetHeight(pixelBuffer);
        v24 = CVPixelBufferGetWidth(pixelBuffer);
        v25 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        CVPixelBufferLockBaseAddress(a2, 0);
        memset(&v1562, 0, sizeof(v1562));
        v26 = MEMORY[0x277CBF3A0];
        v27 = a1;
        PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(pixelBuffer, *v26, &buf);
        PixelBufferUtils::asVImageBuffer(v1341, *v26, &v1561);
        v28 = v1561.data;
        v29 = v1561.rowBytes;
        v31 = buf.data;
        v30 = buf.height;
        bzero(buf.data, buf.height * buf.rowBytes);
        v35 = a14;
        v34 = a15;
        v37 = a12;
        v36 = a13;
        v39 = a18;
        v38 = *&a11;
        v40.i32[0] = a16;
        if (v21)
        {
          v41 = 0;
          v42.i32[1] = v1538;
          v43 = 1.0 / *&a9;
          v44 = 1.0 / *&v1538;
          v45 = 0.5;
          *v32.i32 = 0.5 - *(&a11 + 1);
          v46 = vdupq_lane_s32(v32, 0);
          v47 = v22 & 0xFFFFFFFFFFFFFFF0;
          *v32.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
          *v42.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
          *v33.i32 = (1.0 / *&v1538) * a13.f32[0];
          v1392 = vdupq_lane_s32(*a14.i8, 0);
          v1402 = vdupq_lane_s32(v33, 0);
          v1372 = vdupq_lane_s32(*a14.i8, 1);
          v1382 = vdupq_lane_s32(v42, 0);
          v1353 = vdupq_laneq_s32(a14, 2);
          v1362 = vdupq_lane_s32(v32, 0);
          v48 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
          v49 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
          v50 = (1.0 / *&a9) * a12.f32[0];
          v1333 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
          v51 = vdupq_laneq_s32(a15, 2);
          v52 = vdupq_lane_s32(*a15.i8, 0);
          v53 = vdupq_lane_s32(*a15.i8, 1);
          v54 = vdupq_n_s32(v24);
          v55 = vdupq_n_s32(v23);
          v56 = vdupq_lane_s32(*&a16, 0);
          v40.i32[1] = DWORD1(a17);
          v57 = v1562.data;
          v58 = v1562.rowBytes;
          v59.i64[0] = 0x4100000041000000;
          v59.i64[1] = 0x4100000041000000;
          v1351 = v40;
          v1422 = 1.0 / *&a9;
          v1412 = 1.0 / *&v1538;
          v1492 = v48;
          v1502 = v51;
          v1472 = vdupq_n_s32(v25 >> 2);
          v1482 = vdupq_n_s32(v30 * (v25 >> 2) - 4);
          v1452 = vdupq_lane_s32(*&a18, 0);
          v1462 = vdupq_lane_s32(*&a17, 1);
          v1442 = vdupq_lane_s32(*&a18, 1);
          do
          {
            v60 = &v57[v58 * v41];
            v61 = &v28[v41 * v29];
            v62 = 0;
            if (v47)
            {
              v1529 = vmlaq_f32(v1392, v1402, v46);
              v1521 = vmlaq_f32(v1372, v1382, v46);
              v1432 = v46;
              v1512 = vmlaq_f32(v1353, v1362, v46);
              v63 = v1333;
              do
              {
                v1551 = v63;
                v64 = vdupq_n_s32(0x447A0000u);
                v65 = vmulq_f32(*v60, v64);
                v66 = vmulq_f32(v60[1], v64);
                __asm { FMOV            V1.4S, #4.0 }

                v71 = vaddq_f32(v63, _Q1);
                v72 = vaddq_f32(v63, v59);
                v73 = vmulq_f32(v60[2], v64);
                __asm { FMOV            V1.4S, #12.0 }

                v75 = vaddq_f32(v63, _Q1);
                v76 = vmulq_f32(v60[3], v64);
                v77 = vmlaq_f32(v51, vmlaq_n_f32(v1512, v63, v48), v65);
                v78 = vmlaq_f32(v51, vmlaq_n_f32(v1512, v71, v48), v66);
                v79 = vmlaq_f32(v51, vmlaq_n_f32(v1512, v72, v48), v73);
                v80 = vmlaq_f32(v51, vmlaq_n_f32(v1512, v75, v48), v76);
                v81 = vmlaq_f32(v52, vmlaq_n_f32(v1529, v63, v50), v65);
                v82 = vmlaq_f32(v53, vmlaq_n_f32(v1521, v63, v49), v65);
                v83 = vornq_s8(vmvnq_s8(vcgezq_f32(v77)), vcgtzq_f32(v65));
                v84 = vmlaq_f32(v52, vmlaq_n_f32(v1529, v72, v50), v73);
                v85 = v54;
                v86 = vmlaq_f32(v53, vmlaq_n_f32(v1521, v72, v49), v73);
                v87 = vornq_s8(vmvnq_s8(vcgezq_f32(v78)), vcgtzq_f32(v66));
                v1540 = v77;
                v88 = vmlaq_f32(v1452, vdivq_f32(v56, v77), v81);
                v89 = vornq_s8(vmvnq_s8(vcgezq_f32(v79)), vcgtzq_f32(v73));
                v90 = vcvtmq_s32_f32(v88);
                v91 = vcvtmq_s32_f32(vmlaq_f32(v1442, vdivq_f32(v1462, v77), v82));
                v92 = vcvtmq_s32_f32(vmlaq_f32(v1452, vdivq_f32(v56, v78), vmlaq_f32(v52, vmlaq_n_f32(v1529, v71, v50), v66)));
                v93 = vcvtmq_s32_f32(vmlaq_f32(v1442, vdivq_f32(v1462, v78), vmlaq_f32(v53, vmlaq_n_f32(v1521, v71, v49), v66)));
                v94 = vcvtmq_s32_f32(vmlaq_f32(v1452, vdivq_f32(v56, v79), v84));
                v95 = vmlaq_f32(v1442, vdivq_f32(v1462, v79), v86);
                v54 = v85;
                v96 = vcvtmq_s32_f32(v95);
                v97 = vcvtmq_s32_f32(vmlaq_f32(v1452, vdivq_f32(v56, v80), vmlaq_f32(v52, vmlaq_n_f32(v1529, v75, v50), v76)));
                v59.i64[0] = 0x4100000041000000;
                v59.i64[1] = 0x4100000041000000;
                v98 = vcvtmq_s32_f32(vmlaq_f32(v1442, vdivq_f32(v1462, v80), vmlaq_f32(v53, vmlaq_n_f32(v1521, v75, v49), v76)));
                v99 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v91, v55), vcgeq_s32(v90, v85)), vcltzq_s32(vorrq_s8(v91, v90))), v83);
                v100 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v93, v55), vcgeq_s32(v92, v85)), vcltzq_s32(vorrq_s8(v93, v92))), v87);
                v101 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v96, v55), vcgeq_s32(v94, v85)), vcltzq_s32(vorrq_s8(v96, v94))), v89);
                *v95.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v99), 0xFuLL));
                v83.val[0] = vorr_s8(vmovn_s32(v90), *v95.f32);
                v102 = vorr_s8(vmovn_s32(v91), *v95.f32);
                v103 = v61;
                vst2_s16(v103, v83);
                v103 += 8;
                v104 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v98, v55), vcgeq_s32(v97, v85)), vcltzq_s32(vorrq_s8(v98, v97))), vornq_s8(vmvnq_s8(vcgezq_f32(v80)), vcgtzq_f32(v76)));
                *v89.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v100), 0xFuLL));
                v83.val[0] = vorr_s8(vmovn_s32(v92), *v89.i8);
                v105 = vorr_s8(vmovn_s32(v93), *v89.i8);
                vst2_s16(v103, v83);
                *v82.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v101), 0xFuLL));
                v83.val[0] = vorr_s8(vmovn_s32(v94), *v82.f32);
                v106 = vorr_s8(vmovn_s32(v96), *v82.f32);
                v107 = v61 + 16;
                vst2_s16(v107, v83);
                *v89.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v104), 0xFuLL));
                v83.val[0] = vorr_s8(vmovn_s32(v97), *v89.i8);
                v108 = vorr_s8(vmovn_s32(v98), *v89.i8);
                v48 = v1492;
                v109 = v61 + 24;
                vst2_s16(v109, v83);
                v110 = vdivq_f32(v64, v79);
                v111 = vdivq_f32(v64, v80);
                v112 = vminq_s32(vmaxq_s32(vmlaq_s32(v90, v91, v1472), 0), v1482);
                v113 = v112.u32[1];
                LODWORD(v109) = v112.i32[2];
                v114 = v112.u32[3];
                v115 = v112.i32[0];
                v116 = vandq_s8(vdivq_f32(v64, v1540), vcgezq_s32(vshlq_n_s32(v99, 0x1FuLL)));
                v51 = v1502;
                v117 = vminq_s32(vmaxq_s32(vmlaq_s32(v92, v93, v1472), 0), v1482);
                v31[v115] = fmaxf(*v116.i32, v31[v115]);
                v118 = vandq_s8(vdivq_f32(v64, v78), vcgezq_s32(vshlq_n_s32(v100, 0x1FuLL)));
                v31[v117.u32[1]] = fmaxf(*&v118.i32[1], v31[v117.u32[1]]);
                v119 = vminq_s32(vmaxq_s32(vmlaq_s32(v94, v96, v1472), 0), v1482);
                v120 = vandq_s8(v110, vcgezq_s32(vshlq_n_s32(v101, 0x1FuLL)));
                v121 = vminq_s32(vmaxq_s32(vmlaq_s32(v97, v98, v1472), 0), v1482);
                v31[v119.u32[2]] = fmaxf(*&v120.i32[2], v31[v119.u32[2]]);
                v122 = vandq_s8(v111, vcgezq_s32(vshlq_n_s32(v104, 0x1FuLL)));
                v31[v121.u32[3]] = fmaxf(*&v122.i32[3], v31[v121.u32[3]]);
                v31[v113] = fmaxf(*&v116.i32[1], v31[v113]);
                v31[v117.u32[2]] = fmaxf(*&v118.i32[2], v31[v117.u32[2]]);
                v31[v119.u32[3]] = fmaxf(*&v120.i32[3], v31[v119.u32[3]]);
                v31[v121.u32[0]] = fmaxf(*v122.i32, v31[v121.u32[0]]);
                v31[v109] = fmaxf(*&v116.i32[2], v31[v109]);
                v31[v117.u32[3]] = fmaxf(*&v118.i32[3], v31[v117.u32[3]]);
                v31[v119.u32[0]] = fmaxf(*v120.i32, v31[v119.u32[0]]);
                v31[v121.u32[1]] = fmaxf(*&v122.i32[1], v31[v121.u32[1]]);
                v31[v114] = fmaxf(*&v116.i32[3], v31[v114]);
                v31[v117.u32[0]] = fmaxf(*v118.i32, v31[v117.u32[0]]);
                v31[v119.u32[1]] = fmaxf(*&v120.i32[1], v31[v119.u32[1]]);
                v31[v121.u32[2]] = fmaxf(*&v122.i32[2], v31[v121.u32[2]]);
                __asm { FMOV            V0.4S, #16.0 }

                v63 = vaddq_f32(v1551, _Q0);
                v60 += 4;
                v61 += 32;
                v62 += 16;
              }

              while (v62 < v47);
              v62 = (((v22 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
              v35 = a14;
              v34 = a15;
              v37 = a12;
              v36 = a13;
              v39 = a18;
              v38 = *&a11;
              v40 = v1351;
              v43 = v1422;
              v44 = v1412;
              v45 = 0.5;
              v46 = v1432;
            }

            if (v62 < v22)
            {
              do
              {
                v124 = v60->f32[0] * 1000.0;
                v125 = vaddq_f32(v34, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v37, v43 * (v124 * ((v62 + v45) - v38))), v36, v44 * (((v41 + v45) - *(&a11 + 1)) * v124)), v35, v124));
                v126 = 0xFFFF0000FFFFLL;
                if (*&v125.i32[2] >= 0.0 && v124 > 0.0)
                {
                  v127 = vcvt_s32_f32(vmla_f32(v39, vdiv_f32(v40, vdup_laneq_s32(v125, 2)), *v125.i8));
                  if ((v127.i32[0] & 0x80000000) == 0 && v24 > v127.i32[0] && (v127.i32[1] & 0x80000000) == 0 && v23 > v127.i32[1])
                  {
                    v128 = 1000.0 / *&v125.i32[2];
                    v129 = &v31[(v25 >> 2) * v127.i32[1]];
                    v130 = v129[v127.u32[0]];
                    if (v130 == 0.0 || v130 < v128)
                    {
                      v129[v127.u32[0]] = v128;
                    }

                    v126 = v127;
                  }
                }

                *v61 = v126;
                v61[1] = WORD2(v126);
                ++v62;
                v60 = (v60 + 4);
                v61 += 2;
              }

              while (v22 != v62);
            }

            ++v41;
            __asm { FMOV            V0.4S, #1.0 }

            v46 = vaddq_f32(v46, _Q0);
          }

          while (v41 != v21);
        }

LABEL_83:
        v347 = v27;
LABEL_321:
        CVPixelBufferUnlockBaseAddress(v347, 1uLL);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        v1139 = v1341;
LABEL_390:
        CVPixelBufferUnlockBaseAddress(v1139, 0);
        return 0;
      }

      goto LABEL_322;
    }

LABEL_124:
    v481 = CVPixelBufferGetHeight(a1);
    v482 = CVPixelBufferGetWidth(a1);
    v483 = CVPixelBufferGetHeight(pixelBuffer);
    v484 = CVPixelBufferGetWidth(pixelBuffer);
    v485 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&v1562, 0, sizeof(v1562));
    v486 = MEMORY[0x277CBF3A0];
    v487 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v486, &buf);
    PixelBufferUtils::asVImageBuffer(v1341, *v486, &v1561);
    v489 = v485 >> 2;
    v490 = v1561.data;
    v491 = v1561.rowBytes;
    v492 = buf.data;
    if (v489 * v483)
    {
      memset_pattern16(buf.data, &unk_2404C8690, 4 * v489 * v483);
    }

    v493 = buf.height;
    if (v481)
    {
      v494 = 0;
      v495.i32[1] = v1538;
      v496.i32[1] = HIDWORD(a9);
      v497 = *&a11;
      v498 = 1.0 / *&a9;
      v499 = 1.0 / *&v1538;
      v500 = v482 & 0xFFFFFFFFFFFFFFF0;
      v501 = 0.5;
      *v488.i32 = 0.5 - *(&a11 + 1);
      v502 = vdupq_lane_s32(v488, 0);
      v504 = a13;
      v503 = a14;
      *v488.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
      *v495.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
      *v496.i32 = (1.0 / *&v1538) * a13.f32[0];
      v1357 = vdupq_lane_s32(*a14.i8, 0);
      v1366 = vdupq_lane_s32(v496, 0);
      v1329 = vdupq_lane_s32(*a14.i8, 1);
      v1337 = vdupq_lane_s32(v495, 0);
      v1319 = vdupq_laneq_s32(a14, 2);
      v1324 = vdupq_lane_s32(v488, 0);
      v505 = a12;
      v506 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v507 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      v508 = (1.0 / *&a9) * a12.f32[0];
      v1315 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v509 = a15;
      v510 = __PAIR64__(DWORD1(a17), a16);
      v511 = vdupq_laneq_s32(a15, 2);
      v512 = vdupq_lane_s32(*a15.i8, 0);
      v513 = vdupq_lane_s32(*a15.i8, 1);
      v1456 = vdupq_n_s32(v483);
      v514 = a18;
      v515 = v1562.data;
      v516 = v1562.rowBytes;
      v517.i64[0] = 0x4100000041000000;
      v517.i64[1] = 0x4100000041000000;
      v518.i64[0] = 0x80000000800000;
      v518.i64[1] = 0x80000000800000;
      v1386 = 1.0 / *&a9;
      v1376 = 1.0 / *&v1538;
      v1506 = vdupq_n_s32(LODWORD(buf.height) * v489 - 4);
      v1516 = v506;
      v1555 = vnegq_f32(v518);
      v1486 = v508;
      v1496 = vdupq_lane_s32(*&a18, 1);
      v1466 = vdupq_n_s32(v489);
      v1476 = vdupq_lane_s32(*&a18, 0);
      v1436 = v507;
      v1446 = vdupq_lane_s32(*&a17, 1);
      v1416 = vdupq_lane_s32(*&a16, 0);
      v1426 = vdupq_n_s32(v484);
      v1406 = v511;
      do
      {
        v519 = &v515[v516 * v494];
        v520 = &v490[v494 * v491];
        v521 = 0;
        if (v500)
        {
          v1544 = vmlaq_f32(v1357, v1366, v502);
          v1533 = vmlaq_f32(v1329, v1337, v502);
          v1396 = v502;
          v1525 = vmlaq_f32(v1319, v1324, v502);
          v522 = v1315;
          do
          {
            v523 = vdupq_n_s32(0x447A0000u);
            v524 = vmulq_f32(*v519, v523);
            v525 = vmulq_f32(v519[1], v523);
            v526 = vmulq_f32(v519[2], v523);
            __asm { FMOV            V0.4S, #4.0 }

            v528 = vaddq_f32(v522, _Q0);
            v529 = vaddq_f32(v522, v517);
            __asm { FMOV            V0.4S, #12.0 }

            v531 = vaddq_f32(v522, _Q0);
            v532 = vmulq_f32(v519[3], v523);
            v533 = vmlaq_f32(v511, vmlaq_n_f32(v1525, v522, v506), v524);
            v534 = vmlaq_f32(v511, vmlaq_n_f32(v1525, v528, v506), v525);
            v535 = vmlaq_f32(v511, vmlaq_n_f32(v1525, v529, v506), v526);
            v536 = vmlaq_f32(v511, vmlaq_n_f32(v1525, v531, v506), v532);
            v537 = vcgtzq_f32(v532);
            v538 = vmlaq_f32(v513, vmlaq_n_f32(v1533, v522, v507), v524);
            v539 = vmlaq_f32(v512, vmlaq_n_f32(v1544, v528, v508), v525);
            v540 = vmlaq_f32(v513, vmlaq_n_f32(v1533, v528, v507), v525);
            v541 = vmlaq_f32(v512, vmlaq_n_f32(v1544, v529, v508), v526);
            v542 = vmlaq_f32(v513, vmlaq_n_f32(v1533, v529, v507), v526);
            v543 = vmlaq_f32(v512, vmlaq_n_f32(v1544, v531, v508), v532);
            v544 = vmlaq_f32(v513, vmlaq_n_f32(v1533, v531, v507), v532);
            v545 = vornq_s8(vmvnq_s8(vcgezq_f32(v534)), vcgtzq_f32(v525));
            v546 = vmlaq_f32(v1476, vdivq_f32(v1416, v534), v539);
            v547 = vornq_s8(vmvnq_s8(vcgezq_f32(v535)), vcgtzq_f32(v526));
            v548 = v513;
            v549 = v512;
            v550 = vcvtmq_s32_f32(vmlaq_f32(v1476, vdivq_f32(v1416, v533), vmlaq_f32(v512, vmlaq_n_f32(v1544, v522, v508), v524)));
            v551 = vcvtmq_s32_f32(vmlaq_f32(v1496, vdivq_f32(v1446, v533), v538));
            v552 = vcvtmq_s32_f32(v546);
            v553 = vcvtmq_s32_f32(vmlaq_f32(v1496, vdivq_f32(v1446, v534), v540));
            v554 = vcvtmq_s32_f32(vmlaq_f32(v1476, vdivq_f32(v1416, v535), v541));
            v555 = vcvtmq_s32_f32(vmlaq_f32(v1496, vdivq_f32(v1446, v535), v542));
            v556 = vcvtmq_s32_f32(vmlaq_f32(v1476, vdivq_f32(v1416, v536), v543));
            v557 = vcvtmq_s32_f32(vmlaq_f32(v1496, vdivq_f32(v1446, v536), v544));
            v558 = vornq_s8(vmvnq_s8(vcgezq_f32(v536)), v537);
            v559 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v551, v1456), vcgeq_s32(v550, v1426)), vcltzq_s32(vorrq_s8(v551, v550))), vornq_s8(vmvnq_s8(vcgezq_f32(v533)), vcgtzq_f32(v524)));
            v560 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v553, v1456), vcgeq_s32(v552, v1426)), vcltzq_s32(vorrq_s8(v553, v552))), v545);
            v561 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v555, v1456), vcgeq_s32(v554, v1426)), vcltzq_s32(vorrq_s8(v555, v554))), v547);
            v562 = vcltz_s16(vshl_n_s16(vmovn_s32(v559), 0xFuLL));
            *v544.f32 = vorr_s8(vmovn_s32(v550), v562);
            v563 = vorr_s8(vmovn_s32(v551), v562);
            v511 = v1406;
            v564 = v520;
            vst2_s16(v564, v544);
            v564 += 8;
            v512 = v549;
            v513 = v548;
            v565 = vcltz_s16(vshl_n_s16(vmovn_s32(v560), 0xFuLL));
            v566 = vorr_s8(vmovn_s32(v552), v565);
            *v544.f32 = vorr_s8(vmovn_s32(v553), v565);
            v567 = vcltz_s16(vshl_n_s16(vmovn_s32(v561), 0xFuLL));
            *v547.i8 = vorr_s8(vmovn_s32(v554), v567);
            *v541.f32 = vorr_s8(vmovn_s32(v555), v567);
            v568 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v557, v1456), vcgeq_s32(v556, v1426)), vcltzq_s32(vorrq_s8(v557, v556))), v558);
            v569 = v520 + 16;
            vst2_s16(v569, *(&v541 - 8));
            vst2_s16(v564, *(&v544 - 8));
            v570 = vcltz_s16(vshl_n_s16(vmovn_s32(v568), 0xFuLL));
            v571 = vorr_s8(vmovn_s32(v556), v570);
            *v544.f32 = vorr_s8(vmovn_s32(v557), v570);
            v572 = v520 + 24;
            vst2_s16(v572, *(&v544 - 8));
            v508 = v1486;
            v507 = v1436;
            v517.i64[0] = 0x4100000041000000;
            v517.i64[1] = 0x4100000041000000;
            v573 = vdupq_n_s32(0x3A83126Fu);
            v574 = vmulq_f32(v533, v573);
            v575 = vmulq_f32(v534, v573);
            v576 = vmulq_f32(v535, v573);
            v577 = vmlaq_s32(v554, v555, v1466);
            v578 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v559, 0x1FuLL)), v1555, v574);
            v579 = vminq_s32(vmaxq_s32(vmlaq_s32(v550, v551, v1466), 0), v1506);
            v580 = vminq_s32(vmaxq_s32(vmlaq_s32(v552, v553, v1466), 0), v1506);
            v581 = v579.u32[1];
            LODWORD(v572) = v579.i32[2];
            v582 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v560, 0x1FuLL)), v1555, v575);
            v506 = v1516;
            LODWORD(v569) = v579.i32[3];
            v492[v579.u32[0]] = fminf(*v578.i32, v492[v579.u32[0]]);
            v583 = vminq_s32(vmaxq_s32(v577, 0), v1506);
            v492[v580.u32[1]] = fminf(*&v582.i32[1], v492[v580.u32[1]]);
            v584 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v561, 0x1FuLL)), v1555, v576);
            v585 = vminq_s32(vmaxq_s32(vmlaq_s32(v556, v557, v1466), 0), v1506);
            v492[v583.u32[2]] = fminf(*&v584.i32[2], v492[v583.u32[2]]);
            v586 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v568, 0x1FuLL)), v1555, vmulq_f32(v536, v573));
            v492[v585.u32[3]] = fminf(*&v586.i32[3], v492[v585.u32[3]]);
            v492[v581] = fminf(*&v578.i32[1], v492[v581]);
            v492[v580.u32[2]] = fminf(*&v582.i32[2], v492[v580.u32[2]]);
            v492[v583.u32[3]] = fminf(*&v584.i32[3], v492[v583.u32[3]]);
            v492[v585.u32[0]] = fminf(*v586.i32, v492[v585.u32[0]]);
            v492[v572] = fminf(*&v578.i32[2], v492[v572]);
            v492[v580.u32[3]] = fminf(*&v582.i32[3], v492[v580.u32[3]]);
            v492[v583.u32[0]] = fminf(*v584.i32, v492[v583.u32[0]]);
            v492[v585.u32[1]] = fminf(*&v586.i32[1], v492[v585.u32[1]]);
            v492[v569] = fminf(*&v578.i32[3], v492[v569]);
            v492[v580.u32[0]] = fminf(*v582.i32, v492[v580.u32[0]]);
            v492[v583.u32[1]] = fminf(*&v584.i32[1], v492[v583.u32[1]]);
            v492[v585.u32[2]] = fminf(*&v586.i32[2], v492[v585.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v522 = vaddq_f32(v522, _Q0);
            v519 += 4;
            v520 += 32;
            v521 += 16;
          }

          while (v521 < v500);
          v521 = (((v482 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v503 = a14;
          v509 = a15;
          v505 = a12;
          v504 = a13;
          v514 = a18;
          v497 = *&a11;
          v510 = __PAIR64__(DWORD1(a17), a16);
          v498 = v1386;
          v499 = v1376;
          v501 = 0.5;
          v502 = v1396;
        }

        if (v521 < v482)
        {
          do
          {
            v588 = v519->f32[0] * 1000.0;
            v589 = vaddq_f32(v509, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v505, v498 * (v588 * ((v521 + v501) - v497))), v504, v499 * (((v494 + v501) - *(&a11 + 1)) * v588)), v503, v588));
            v590 = 0xFFFF0000FFFFLL;
            if (*&v589.i32[2] >= 0.0 && v588 > 0.0)
            {
              v591 = vcvt_s32_f32(vmla_f32(v514, vdiv_f32(v510, vdup_laneq_s32(v589, 2)), *v589.i8));
              if ((v591.i32[0] & 0x80000000) == 0 && v484 > v591.i32[0] && (v591.i32[1] & 0x80000000) == 0 && v483 > v591.i32[1])
              {
                v592 = *&v589.i32[2] * 0.001;
                v593 = &v492[v489 * v591.i32[1]];
                v594 = v593[v591.u32[0]];
                if (v594 == 0.0 || v594 > v592)
                {
                  v593[v591.u32[0]] = v592;
                }

                v590 = v591;
              }
            }

            *v520 = v590;
            v520[1] = WORD2(v590);
            ++v521;
            v519 = (v519 + 4);
            v520 += 2;
          }

          while (v482 != v521);
        }

        ++v494;
        __asm { FMOV            V0.4S, #1.0 }

        v502 = vaddq_f32(v502, _Q0);
      }

      while (v494 != v481);
      v493 = buf.height;
    }

    v347 = v487;
    if (v493)
    {
      v597 = 0;
      v598 = *&buf.width;
      v599 = buf.data;
      v600 = buf.width >> 4;
      if (buf.width >> 4 <= 1)
      {
        v600 = 1;
      }

      v601 = buf.width & 0xFFFFFFF0;
      v602.i64[0] = 0x80000000800000;
      v602.i64[1] = 0x80000000800000;
      v603 = vnegq_f32(v602);
      do
      {
        v604 = &v599[*(&v598 + 1) * v597];
        v605 = v600;
        if (v598 >= 0x10)
        {
          do
          {
            v606 = v604[2];
            v607 = v604[3];
            v608 = vbicq_s8(v604[1], vceqq_f32(v604[1], v603));
            *v604 = vbicq_s8(*v604, vceqq_f32(*v604, v603));
            v604[1] = v608;
            v604[2] = vbicq_s8(v606, vceqq_f32(v606, v603));
            v604[3] = vbicq_s8(v607, vceqq_f32(v607, v603));
            v604 += 4;
            --v605;
          }

          while (v605);
        }

        v609 = v598 & 0xFFFFFFF0;
        if (v601 != v598)
        {
          do
          {
            if (v604->f32[0] == 3.4028e38)
            {
              v604->i32[0] = 0;
            }

            ++v609;
            v604 = (v604 + 4);
          }

          while (v609 < v598);
        }

        ++v597;
      }

      while (v597 != v493);
    }

    goto LABEL_321;
  }

  if (PixelFormatType == 1751410032)
  {
LABEL_88:
    v348 = CVPixelBufferGetHeight(a1);
    v349 = CVPixelBufferGetWidth(a1);
    v350 = CVPixelBufferGetHeight(pixelBuffer);
    v351 = CVPixelBufferGetWidth(pixelBuffer);
    v352 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&v1562, 0, sizeof(v1562));
    v353 = MEMORY[0x277CBF3A0];
    v354 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v353, &buf);
    PixelBufferUtils::asVImageBuffer(v1341, *v353, &v1561);
    v357 = v352 >> 1;
    v358 = v1561.data;
    v359 = v1561.rowBytes;
    v360 = buf.data;
    if (v357 * v350)
    {
      memset_pattern16(buf.data, &unk_2404C86A0, 2 * v357 * v350);
    }

    v361 = buf.height;
    if (v348)
    {
      v362 = 0;
      v363.i32[1] = v1538;
      v364.i32[1] = HIDWORD(a9);
      v365 = *&a11;
      v366 = 1.0 / *&a9;
      v367 = 1.0 / *&v1538;
      v368 = v349 & 0xFFFFFFFFFFFFFFF0;
      v369 = 0.5;
      *v355.i32 = 0.5 - *(&a11 + 1);
      v370 = vdupq_lane_s32(v355, 0);
      v372 = a13;
      v371 = a14;
      *v355.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
      *v363.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
      *v364.i32 = (1.0 / *&v1538) * a13.f32[0];
      v1365 = vdupq_lane_s32(*a14.i8, 0);
      v1375 = vdupq_lane_s32(v364, 0);
      v1356 = vdupq_lane_s32(v363, 0);
      v1328 = vdupq_lane_s32(v355, 0);
      v1336 = vdupq_lane_s32(*a14.i8, 1);
      v1323 = vdupq_laneq_s32(a14, 2);
      v373 = a12;
      v374 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v375 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      *&v356 = (1.0 / *&a9) * a12.f32[0];
      v376 = a15;
      v377 = __PAIR64__(DWORD1(a17), a16);
      v378 = vdupq_laneq_s32(a15, 2);
      v379 = vdupq_lane_s32(*a15.i8, 0);
      v380 = vdupq_lane_s32(*a15.i8, 1);
      v381 = vdupq_n_s32(v351);
      v1435 = vdupq_n_s32(LODWORD(buf.height) * v357 - 2);
      v1318 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v382 = a18;
      v383 = v1562.data;
      v384 = v1562.rowBytes;
      v1395 = 1.0 / *&a9;
      v1385 = 1.0 / *&v1538;
      v1505 = vdupq_n_s32(v357);
      v1515 = v374;
      v1485 = vdupq_lane_s32(*&a18, 1);
      v1495 = v379;
      v1465 = vdupq_lane_s32(*&a17, 1);
      v1475 = v375;
      v1445 = vdupq_lane_s32(*&a16, 0);
      v1455 = v380;
      v1415 = vdupq_n_s32(v350);
      v1425 = vdupq_lane_s32(*&a18, 0);
      do
      {
        v385 = &v383[v384 * v362];
        v386 = &v358[v362 * v359];
        v387 = 0;
        if (v368)
        {
          v1543 = vmlaq_f32(v1365, v1375, v370);
          v1532 = vmlaq_f32(v1336, v1356, v370);
          v1405 = v370;
          v1524 = vmlaq_f32(v1323, v1328, v370);
          v388 = v1318;
          do
          {
            v1554 = v388;
            v389 = v375;
            v390 = v379;
            v391 = vdupq_n_s32(0x447A0000u);
            v392 = vmulq_f32(*v385, v391);
            v393 = vmulq_f32(v385[1], v391);
            v394 = vmulq_f32(v385[2], v391);
            __asm { FMOV            V0.4S, #4.0 }

            v396 = vaddq_f32(v388, _Q0);
            _Q0.i64[0] = 0x4100000041000000;
            _Q0.i64[1] = 0x4100000041000000;
            v397 = vaddq_f32(v388, _Q0);
            __asm { FMOV            V0.4S, #12.0 }

            v399 = vaddq_f32(v388, _Q0);
            v400 = vmulq_f32(v385[3], v391);
            v401 = v378;
            v402 = vmlaq_f32(v378, vmlaq_n_f32(v1524, v1554, v374), v392);
            v403 = vmlaq_f32(v378, vmlaq_n_f32(v1524, v396, v374), v393);
            v404 = vmlaq_f32(v378, vmlaq_n_f32(v1524, v397, v374), v394);
            v405 = vmlaq_f32(v378, vmlaq_n_f32(v1524, v399, v374), v400);
            v406 = vcgtzq_f32(v392);
            v407 = vcgtzq_f32(v394);
            v408 = v356;
            v409 = vmlaq_f32(v390, vmlaq_n_f32(v1543, v1554, *&v356), v392);
            v410 = vmlaq_f32(v380, vmlaq_n_f32(v1532, v1554, v389), v392);
            v411 = vmlaq_f32(v390, vmlaq_n_f32(v1543, v397, *&v356), v394);
            v412 = vmlaq_f32(v380, vmlaq_n_f32(v1532, v397, v389), v394);
            v413 = vmlaq_f32(v1425, vdivq_f32(v1445, v402), v409);
            v414 = vmlaq_f32(v1485, vdivq_f32(v1465, v402), v410);
            v415 = vmlaq_f32(v1425, vdivq_f32(v1445, v403), vmlaq_f32(v390, vmlaq_n_f32(v1543, v396, *&v356), v393));
            v416 = vmlaq_f32(v1485, vdivq_f32(v1465, v403), vmlaq_f32(v380, vmlaq_n_f32(v1532, v396, v389), v393));
            v417 = vmlaq_f32(v390, vmlaq_n_f32(v1543, v399, *&v356), v400);
            v418 = vmlaq_f32(v380, vmlaq_n_f32(v1532, v399, v389), v400);
            v419 = vcgtzq_f32(v400);
            v420 = vmlaq_f32(v1425, vdivq_f32(v1445, v404), v411);
            v421 = vmvnq_s8(vcgezq_f32(v405));
            v422 = vornq_s8(vmvnq_s8(vcgezq_f32(v403)), vcgtzq_f32(v393));
            v423 = vmlaq_f32(v1485, vdivq_f32(v1465, v404), v412);
            v424 = vdivq_f32(v1445, v405);
            v425 = vdupq_n_s32(0x3A83126Fu);
            v426 = vornq_s8(vmvnq_s8(vcgezq_f32(v404)), v407);
            v427 = vdivq_f32(v1465, v405);
            v428 = vmulq_f32(v402, v425);
            v429 = vmulq_f32(v403, v425);
            v430 = vmulq_f32(v404, v425);
            v431 = vmulq_f32(v405, v425);
            v432 = vcvtmq_s32_f32(v413);
            v433 = vcvtmq_s32_f32(v414);
            v434 = vcvtmq_s32_f32(v415);
            v435 = vcvtmq_s32_f32(v416);
            v436 = vcvtmq_s32_f32(v420);
            v437 = vcvtmq_s32_f32(v423);
            v438 = vcvtmq_s32_f32(vmlaq_f32(v1425, v424, v417));
            v439 = vcvtmq_s32_f32(vmlaq_f32(v1485, v427, v418));
            v440 = vornq_s8(v421, v419);
            v441 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v433, v1415), vcgeq_s32(v432, v381)), vcltzq_s32(vorrq_s8(v433, v432))), vornq_s8(vmvnq_s8(vcgezq_f32(v402)), v406));
            *v421.i8 = vmovn_s32(v441);
            v442 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v435, v1415), vcgeq_s32(v434, v381)), vcltzq_s32(vorrq_s8(v435, v434))), v422);
            v443 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v437, v1415), vcgeq_s32(v436, v381)), vcltzq_s32(vorrq_s8(v437, v436))), v426);
            v378 = v401;
            v444 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v439, v1415), vcgeq_s32(v438, v381)), vcltzq_s32(vorrq_s8(v439, v438))), v440);
            v445 = vdupq_n_s32(0x477FE000u);
            v446 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v441, 0x1FuLL)), v445, v428);
            v447 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v442, 0x1FuLL)), v445, v429);
            v448 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v443, 0x1FuLL)), v445, v430);
            v449 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v444, 0x1FuLL)), v445, v431);
            *v445.i8 = vcltz_s16(vshl_n_s16(*v421.i8, 0xFuLL));
            v422.val[0] = vorr_s8(vmovn_s32(v432), *v445.i8);
            *v424.f32 = vorr_s8(vmovn_s32(v433), *v445.i8);
            *v427.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v442), 0xFuLL));
            *v415.f32 = vorr_s8(vmovn_s32(v434), *v427.f32);
            *v445.i8 = vorr_s8(vmovn_s32(v435), *v427.f32);
            v450 = v386;
            vst2_s16(v450, v422);
            v450 += 8;
            v356 = v408;
            v380 = v1455;
            v375 = v1475;
            v379 = v1495;
            vst2_s16(v450, v415);
            v374 = v1515;
            *v431.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v443), 0xFuLL));
            *v443.i8 = vorr_s8(vmovn_s32(v436), *v431.i8);
            *v415.f32 = vorr_s8(vmovn_s32(v437), *v431.i8);
            v451 = v386 + 16;
            vst2_s16(v451, *(&v415 - 8));
            *v427.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v444), 0xFuLL));
            v442.val[0] = vorr_s8(vmovn_s32(v438), *v427.f32);
            *v443.i8 = vorr_s8(vmovn_s32(v439), *v427.f32);
            v452 = v386 + 24;
            vst2_s16(v452, v442);
            v453 = vminq_s32(vmaxq_s32(vmlaq_s32(v432, v433, v1505), 0), v1435);
            v454 = vminq_s32(vmaxq_s32(vmlaq_s32(v434, v435, v1505), 0), v1435);
            v455 = vmaxq_s32(vmlaq_s32(v436, v437, v1505), 0);
            v456 = vmlaq_s32(v438, v439, v1505);
            v457 = vminq_s32(v455, v1435);
            v458 = vminq_s32(vmaxq_s32(v456, 0), v1435);
            v459 = v453.u32[1];
            *v456.i8 = vcvt_f16_f32(v446);
            v360[v453.u32[0]] = fminl(*v456.i16, v360[v453.u32[0]]);
            *v453.i8 = vcvt_f16_f32(v447);
            v360[v454.u32[1]] = fminl(*&v453.i16[1], v360[v454.u32[1]]);
            *v435.i8 = vcvt_f16_f32(v448);
            v360[v457.u32[2]] = fminl(*&v435.i16[2], v360[v457.u32[2]]);
            *v449.f32 = vcvt_f16_f32(v449);
            v360[v458.u32[3]] = fminl(*&v449.i16[3], v360[v458.u32[3]]);
            v360[v459] = fminl(*&v456.i16[1], v360[v459]);
            v360[v454.u32[2]] = fminl(*&v453.i16[2], v360[v454.u32[2]]);
            v360[v457.u32[3]] = fminl(*&v435.i16[3], v360[v457.u32[3]]);
            v360[v458.u32[0]] = fminl(*v449.i16, v360[v458.u32[0]]);
            v360[v453.u32[2]] = fminl(*&v456.i16[2], v360[v453.u32[2]]);
            v360[v454.u32[3]] = fminl(*&v453.i16[3], v360[v454.u32[3]]);
            v360[v457.u32[0]] = fminl(*v435.i16, v360[v457.u32[0]]);
            v360[v458.u32[1]] = fminl(*&v449.i16[1], v360[v458.u32[1]]);
            v360[v453.u32[3]] = fminl(*&v456.i16[3], v360[v453.u32[3]]);
            v360[v454.u32[0]] = fminl(*v453.i16, v360[v454.u32[0]]);
            v360[v457.u32[1]] = fminl(*&v435.i16[1], v360[v457.u32[1]]);
            v360[v458.u32[2]] = fminl(*&v449.i16[2], v360[v458.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v388 = vaddq_f32(v1554, _Q0);
            v385 += 4;
            v386 += 32;
            v387 += 16;
          }

          while (v387 < v368);
          v387 = (((v349 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v371 = a14;
          v376 = a15;
          v373 = a12;
          v372 = a13;
          v382 = a18;
          v365 = *&a11;
          v377 = __PAIR64__(DWORD1(a17), a16);
          v366 = v1395;
          v367 = v1385;
          v369 = 0.5;
          v370 = v1405;
        }

        if (v387 < v349)
        {
          do
          {
            v461 = v385->f32[0] * 1000.0;
            v462 = vaddq_f32(v376, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v373, v366 * (v461 * ((v387 + v369) - v365))), v372, v367 * (((v362 + v369) - *(&a11 + 1)) * v461)), v371, v461));
            v463 = 0xFFFF0000FFFFLL;
            if (*&v462.i32[2] >= 0.0 && v461 > 0.0)
            {
              v464 = vcvt_s32_f32(vmla_f32(v382, vdiv_f32(v377, vdup_laneq_s32(v462, 2)), *v462.i8));
              if ((v464.i32[0] & 0x80000000) == 0 && v351 > v464.i32[0] && (v464.i32[1] & 0x80000000) == 0 && v350 > v464.i32[1])
              {
                _S1 = *&v462.i32[2] * 0.001;
                __asm
                {
                  FCVT            H1, S1
                  FCMP            H3, #0
                }

                if (_ZF)
                {
                  v468 = 0;
                }

                else
                {
                  v468 = _H3 <= _H1;
                }

                if (!v468)
                {
                  v360[v357 * v464.i32[1] + v464.u32[0]] = _H1;
                }

                v463 = v464;
              }
            }

            *v386 = v463;
            v386[1] = WORD2(v463);
            ++v387;
            v385 = (v385 + 4);
            v386 += 2;
          }

          while (v349 != v387);
        }

        ++v362;
        __asm { FMOV            V0.4S, #1.0 }

        v370 = vaddq_f32(v370, _Q0);
      }

      while (v362 != v348);
      v361 = buf.height;
    }

    v347 = v354;
    if (v361)
    {
      v470 = 0;
      v471 = *&buf.width;
      v472 = buf.data;
      v473 = buf.width >> 4;
      if (buf.width >> 4 <= 1)
      {
        v473 = 1;
      }

      v474 = buf.width & 0xFFFFFFF0;
      do
      {
        v475 = &v472[*(&v471 + 1) * v470];
        v476 = v473;
        if (v471 >= 0x10)
        {
          do
          {
            v477 = v475[2];
            v478 = v475[3];
            v479 = vbic_s8(v475[1], vceq_f16(v475[1], 0x8400840084008400));
            *v475 = vbic_s8(*v475, vceq_f16(*v475, 0x8400840084008400));
            v475[1] = v479;
            v475[2] = vbic_s8(v477, vceq_f16(v477, 0x8400840084008400));
            v475[3] = vbic_s8(v478, vceq_f16(v478, 0x8400840084008400));
            v475 += 4;
            --v476;
          }

          while (v476);
        }

        v480 = v471 & 0xFFFFFFF0;
        if (v474 != v471)
        {
          do
          {
            if (*v475->i16 == COERCE_SHORT_FLOAT(31743))
            {
              v475->i16[0] = 0;
            }

            ++v480;
            v475 = (v475 + 2);
          }

          while (v480 < v471);
        }

        ++v470;
      }

      while (v470 != v361);
    }

    goto LABEL_321;
  }

  if (PixelFormatType == 1751411059)
  {
    v243 = CVPixelBufferGetHeight(a1);
    v244 = CVPixelBufferGetWidth(a1);
    v245 = CVPixelBufferGetHeight(pixelBuffer);
    v246 = CVPixelBufferGetWidth(pixelBuffer);
    v247 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&v1562, 0, sizeof(v1562));
    v248 = MEMORY[0x277CBF3A0];
    v27 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v248, &buf);
    PixelBufferUtils::asVImageBuffer(v1341, *v248, &v1561);
    v249 = v1561.data;
    v250 = v1561.rowBytes;
    v252 = buf.data;
    v251 = buf.height;
    bzero(buf.data, buf.height * buf.rowBytes);
    v256 = a14;
    v255 = a15;
    v258 = a12;
    v257 = a13;
    v260 = a18;
    v259 = *&a11;
    v261.i32[0] = a16;
    if (v243)
    {
      v262 = 0;
      v263.i32[1] = v1538;
      v264 = 1.0 / *&a9;
      v265 = 1.0 / *&v1538;
      v266 = 0.5;
      *v253.i32 = 0.5 - *(&a11 + 1);
      v267 = vdupq_lane_s32(v253, 0);
      v268 = v244 & 0xFFFFFFFFFFFFFFF0;
      *v253.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
      *v263.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
      *v254.i32 = (1.0 / *&v1538) * a13.f32[0];
      v1327 = vdupq_lane_s32(*a14.i8, 0);
      v1335 = vdupq_lane_s32(v254, 0);
      v1317 = vdupq_lane_s32(*a14.i8, 1);
      v1322 = vdupq_lane_s32(v263, 0);
      v1311 = vdupq_laneq_s32(a14, 2);
      v1314 = vdupq_lane_s32(v253, 0);
      v269 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v270 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      v1308 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v271 = vdupq_laneq_s32(a15, 2);
      v261.i32[1] = DWORD1(a17);
      v272 = v1562.data;
      v273 = v1562.rowBytes;
      v1352 = v261;
      v1364 = 1.0 / *&a9;
      v1355 = 1.0 / *&v1538;
      v1494 = vdupq_n_s32(v251 * (v247 >> 1) - 2);
      v1504 = v271;
      v1474 = vdupq_n_s32(v247 >> 1);
      v1484 = vdupq_lane_s32(*&a18, 1);
      v1454 = vdupq_lane_s32(*&a17, 1);
      v1464 = vdupq_lane_s32(*&a18, 0);
      v1434 = vdupq_lane_s32(*a15.i8, 0);
      v1444 = v269;
      v1414 = vdupq_n_s32(v245);
      v1424 = vdupq_lane_s32(*&a16, 0);
      v1394 = vdupq_n_s32(v246);
      v1404 = (1.0 / *&a9) * a12.f32[0];
      v1384 = vdupq_lane_s32(*a15.i8, 1);
      do
      {
        v274 = &v272[v273 * v262];
        v275 = &v249[v262 * v250];
        v276 = 0;
        if (v268)
        {
          v1531 = vmlaq_f32(v1327, v1335, v267);
          v1523 = vmlaq_f32(v1317, v1322, v267);
          v1374 = v267;
          v1514 = vmlaq_f32(v1311, v1314, v267);
          v277 = v1308;
          do
          {
            v1553 = v277;
            v278 = vdupq_n_s32(0x447A0000u);
            v279 = vmulq_f32(*v274, v278);
            v280 = vmulq_f32(v274[1], v278);
            __asm { FMOV            V1.4S, #4.0 }

            v282 = vaddq_f32(v277, _Q1);
            v283 = vmulq_f32(v274[2], v278);
            _Q1.i64[0] = 0x4100000041000000;
            _Q1.i64[1] = 0x4100000041000000;
            v284 = vaddq_f32(v277, _Q1);
            __asm { FMOV            V1.4S, #12.0 }

            v286 = vaddq_f32(v277, _Q1);
            v287 = vmulq_f32(v274[3], v278);
            v288 = vmlaq_f32(v271, vmlaq_n_f32(v1514, v277, v269), v279);
            v289 = vmlaq_f32(v271, vmlaq_n_f32(v1514, v282, v269), v280);
            v290 = vmlaq_f32(v271, vmlaq_n_f32(v1514, v284, v269), v283);
            v291 = vmlaq_f32(v271, vmlaq_n_f32(v1514, v286, v269), v287);
            v292 = vmlaq_f32(v1434, vmlaq_n_f32(v1531, v277, v1404), v279);
            v293 = vmlaq_f32(v1384, vmlaq_n_f32(v1523, v277, v270), v279);
            v1542 = v288;
            v294 = vdivq_f32(v1424, v288);
            v295 = vornq_s8(vmvnq_s8(vcgezq_f32(v288)), vcgtzq_f32(v279));
            v296 = vmlaq_f32(v1434, vmlaq_n_f32(v1531, v282, v1404), v280);
            v297 = vmlaq_n_f32(v1523, v282, v270);
            v298 = vdivq_f32(v1454, v288);
            v299 = vornq_s8(vmvnq_s8(vcgezq_f32(v289)), vcgtzq_f32(v280));
            v300 = vmlaq_f32(v1384, v297, v280);
            v301 = vmlaq_f32(v1434, vmlaq_n_f32(v1531, v284, v1404), v283);
            v302 = vmlaq_f32(v1384, vmlaq_n_f32(v1523, v284, v270), v283);
            v303 = vornq_s8(vmvnq_s8(vcgezq_f32(v290)), vcgtzq_f32(v283));
            v304 = vmlaq_f32(v1384, vmlaq_n_f32(v1523, v286, v270), v287);
            v305 = vmlaq_f32(v1484, v298, v293);
            v306 = vornq_s8(vmvnq_s8(vcgezq_f32(v291)), vcgtzq_f32(v287));
            v307 = vmlaq_f32(v1464, vdivq_f32(v1424, v289), v296);
            v308 = vcvtmq_s32_f32(vmlaq_f32(v1464, v294, v292));
            v309 = vcvtmq_s32_f32(v305);
            v310 = vcvtmq_s32_f32(v307);
            v311 = vcvtmq_s32_f32(vmlaq_f32(v1484, vdivq_f32(v1454, v289), v300));
            v312 = vcvtmq_s32_f32(vmlaq_f32(v1464, vdivq_f32(v1424, v290), v301));
            v313 = vcvtmq_s32_f32(vmlaq_f32(v1484, vdivq_f32(v1454, v290), v302));
            v314 = vcvtmq_s32_f32(vmlaq_f32(v1464, vdivq_f32(v1424, v291), vmlaq_f32(v1434, vmlaq_n_f32(v1531, v286, v1404), v287)));
            v315 = vcvtmq_s32_f32(vmlaq_f32(v1484, vdivq_f32(v1454, v291), v304));
            v316 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v309, v1414), vcgeq_s32(v308, v1394)), vcltzq_s32(vorrq_s8(v309, v308))), v295);
            v317 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v311, v1414), vcgeq_s32(v310, v1394)), vcltzq_s32(vorrq_s8(v311, v310))), v299);
            v318 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v313, v1414), vcgeq_s32(v312, v1394)), vcltzq_s32(vorrq_s8(v313, v312))), v303);
            v319 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v315, v1414), vcgeq_s32(v314, v1394)), vcltzq_s32(vorrq_s8(v315, v314))), v306);
            *v292.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v316), 0xFuLL));
            *v302.f32 = vorr_s8(vmovn_s32(v308), *v292.f32);
            v320 = vorr_s8(vmovn_s32(v309), *v292.f32);
            v321 = v275;
            vst2_s16(v321, v302);
            v321 += 8;
            *v292.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v317), 0xFuLL));
            *v303.i8 = vorr_s8(vmovn_s32(v310), *v292.f32);
            *v301.f32 = vorr_s8(vmovn_s32(v311), *v292.f32);
            v322 = vcltz_s16(vshl_n_s16(vmovn_s32(v318), 0xFuLL));
            *v302.f32 = vorr_s8(vmovn_s32(v312), v322);
            v323 = vorr_s8(vmovn_s32(v313), v322);
            v324 = v275 + 16;
            vst2_s16(v324, v302);
            v325 = vcltz_s16(vshl_n_s16(vmovn_s32(v319), 0xFuLL));
            *v302.f32 = vorr_s8(vmovn_s32(v314), v325);
            v326 = vorr_s8(vmovn_s32(v315), v325);
            v269 = v1444;
            v327 = v275 + 24;
            vst2_s16(v327, v302);
            vst2_s16(v321, *(&v301 - 8));
            v271 = v1504;
            v328 = vmlaq_s32(v308, v309, v1474);
            v329 = vmlaq_s32(v314, v315, v1474);
            v330 = vandq_s8(vdivq_f32(v278, v289), vcgezq_s32(vshlq_n_s32(v317, 0x1FuLL)));
            v331 = vandq_s8(vdivq_f32(v278, v290), vcgezq_s32(vshlq_n_s32(v318, 0x1FuLL)));
            v332 = vminq_s32(vmaxq_s32(v328, 0), v1494);
            v333 = vminq_s32(vmaxq_s32(vmlaq_s32(v310, v311, v1474), 0), v1494);
            v334 = vminq_s32(vmaxq_s32(vmlaq_s32(v312, v313, v1474), 0), v1494);
            v335 = vminq_s32(vmaxq_s32(v329, 0), v1494);
            v336 = v332.u32[1];
            *v311.i8 = vcvt_f16_f32(vandq_s8(vdivq_f32(v278, v1542), vcgezq_s32(vshlq_n_s32(v316, 0x1FuLL))));
            v252[v332.u32[0]] = fmaxl(*v311.i16, v252[v332.u32[0]]);
            *v330.f32 = vcvt_f16_f32(v330);
            v252[v333.u32[1]] = fmaxl(*&v330.i16[1], v252[v333.u32[1]]);
            *v331.f32 = vcvt_f16_f32(v331);
            v252[v334.u32[2]] = fmaxl(*&v331.i16[2], v252[v334.u32[2]]);
            *v332.i8 = vcvt_f16_f32(vandq_s8(vdivq_f32(v278, v291), vcgezq_s32(vshlq_n_s32(v319, 0x1FuLL))));
            v252[v335.u32[3]] = fmaxl(*&v332.i16[3], v252[v335.u32[3]]);
            v252[v336] = fmaxl(*&v311.i16[1], v252[v336]);
            v252[v333.u32[2]] = fmaxl(*&v330.i16[2], v252[v333.u32[2]]);
            v252[v334.u32[3]] = fmaxl(*&v331.i16[3], v252[v334.u32[3]]);
            v252[v335.u32[0]] = fmaxl(*v332.i16, v252[v335.u32[0]]);
            v252[v332.u32[2]] = fmaxl(*&v311.i16[2], v252[v332.u32[2]]);
            v252[v333.u32[3]] = fmaxl(*&v330.i16[3], v252[v333.u32[3]]);
            v252[v334.u32[0]] = fmaxl(*v331.i16, v252[v334.u32[0]]);
            v252[v335.u32[1]] = fmaxl(*&v332.i16[1], v252[v335.u32[1]]);
            v252[v332.u32[3]] = fmaxl(*&v311.i16[3], v252[v332.u32[3]]);
            v252[v333.u32[0]] = fmaxl(*v330.i16, v252[v333.u32[0]]);
            v252[v334.u32[1]] = fmaxl(*&v331.i16[1], v252[v334.u32[1]]);
            v252[v335.u32[2]] = fmaxl(*&v332.i16[2], v252[v335.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v277 = vaddq_f32(v1553, _Q0);
            v274 += 4;
            v275 += 32;
            v276 += 16;
          }

          while (v276 < v268);
          v276 = (((v244 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v256 = a14;
          v255 = a15;
          v258 = a12;
          v257 = a13;
          v260 = a18;
          v259 = *&a11;
          v261 = v1352;
          v264 = v1364;
          v265 = v1355;
          v266 = 0.5;
          v267 = v1374;
        }

        if (v276 < v244)
        {
          do
          {
            v338 = v274->f32[0] * 1000.0;
            v339 = vaddq_f32(v255, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v258, v264 * (v338 * ((v276 + v266) - v259))), v257, v265 * (((v262 + v266) - *(&a11 + 1)) * v338)), v256, v338));
            v340 = 0xFFFF0000FFFFLL;
            if (*&v339.i32[2] >= 0.0 && v338 > 0.0)
            {
              v341 = vcvt_s32_f32(vmla_f32(v260, vdiv_f32(v261, vdup_laneq_s32(v339, 2)), *v339.i8));
              if ((v341.i32[0] & 0x80000000) == 0 && v246 > v341.i32[0] && (v341.i32[1] & 0x80000000) == 0 && v245 > v341.i32[1])
              {
                _S1 = 1000.0 / *&v339.i32[2];
                __asm
                {
                  FCVT            H1, S1
                  FCMP            H3, #0
                }

                if (_ZF)
                {
                  v345 = 1;
                }

                else
                {
                  v345 = _H3 < _H1;
                }

                if (v345)
                {
                  v252[(v247 >> 1) * v341.i32[1] + v341.u32[0]] = _H1;
                }

                v340 = v341;
              }
            }

            *v275 = v340;
            v275[1] = WORD2(v340);
            ++v276;
            v274 = (v274 + 4);
            v275 += 2;
          }

          while (v244 != v276);
        }

        ++v262;
        __asm { FMOV            V0.4S, #1.0 }

        v267 = vaddq_f32(v267, _Q0);
      }

      while (v262 != v243);
    }

    goto LABEL_83;
  }

LABEL_322:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
LABEL_393:
    v1284 = CVPixelBufferGetPixelFormatType(pixelBuffer);
    PixelBufferUtils::pixelFormatAsString(v1284, &v1562);
    if ((v1562.width & 0x8000000000000000) == 0)
    {
      v1285 = &v1562;
    }

    else
    {
      v1285 = v1562.data;
    }

    LODWORD(buf.data) = 136315138;
    *(&buf.data + 4) = v1285;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "illegal output pixel format in reprojection: %s", &buf, 0xCu);
    if (SHIBYTE(v1562.width) < 0)
    {
      operator delete(v1562.data);
    }
  }

  return -22950;
}

uint64_t reprojectUndistortedDepthMapWithInputImmediates<half,1751410032u>(__CVBuffer *a1, __CVBuffer *a2, CVPixelBufferRef pixelBuffer, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, float32x4_t a12, float32x4_t a13, int32x4_t a14, int32x4_t a15, __int128 a16, __int128 a17, __int128 a18)
{
  v1549 = SHIDWORD(a10);
  v1575 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v1353 = a2;
  if (!a2)
  {
    if (PixelFormatType <= 1717855599)
    {
      if (PixelFormatType == 825437747)
      {
        Height = CVPixelBufferGetHeight(a1);
        Width = CVPixelBufferGetWidth(a1);
        v1152 = CVPixelBufferGetHeight(pixelBuffer);
        v1153 = CVPixelBufferGetWidth(pixelBuffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        memset(&v1573, 0, sizeof(v1573));
        v1155 = MEMORY[0x277CBF3A0];
        v1299 = a1;
        PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1573);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(pixelBuffer, *v1155, &buf);
        v1157 = BytesPerRow >> 1;
        data = buf.data;
        if (v1157 * v1152)
        {
          memset_pattern16(buf.data, &unk_2404C86B0, 2 * v1157 * v1152);
        }

        v1302 = buf.height;
        v1160 = a14;
        v1159 = a15;
        v1162 = a12;
        v1161 = a13;
        v1164 = *&a18;
        v1163 = *&a11;
        v1165 = *&a16;
        if (Height)
        {
          v1166 = 0;
          v1167.i32[1] = v1549;
          v1168.i32[1] = HIDWORD(a9);
          v1169 = 1.0 / *&a9;
          v1170 = 1.0 / *&v1549;
          v1171 = Width & 0xFFFFFFFFFFFFFFF0;
          v1172 = 0.5;
          *v1156.i32 = 0.5 - *(&a11 + 1);
          v1173 = vdupq_lane_s32(v1156, 0);
          *v1156.i32 = vmuls_lane_f32(1.0 / *&v1549, a13, 2);
          *v1167.i32 = vmuls_lane_f32(1.0 / *&v1549, *a13.f32, 1);
          *v1168.i32 = (1.0 / *&v1549) * a13.f32[0];
          v1174 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
          v1433 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
          v1423 = (1.0 / *&a9) * a12.f32[0];
          v1356 = v1573.data;
          rowBytes = v1573.rowBytes;
          v1323 = vdupq_lane_s32(*a14.i8, 0);
          v1326 = vdupq_lane_s32(v1168, 0);
          v1318 = vdupq_lane_s32(*a14.i8, 1);
          v1320 = vdupq_lane_s32(v1167, 0);
          v1314 = vdupq_laneq_s32(a14, 2);
          v1316 = vdupq_lane_s32(v1156, 0);
          v1175 = vdupq_laneq_s32(a15, 2);
          v1176 = vdupq_lane_s32(*a15.i8, 0);
          v1177 = vdupq_lane_s32(*a15.i8, 1);
          v1178 = vdupq_n_s32(v1153);
          v1313 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
          v1403 = vdupq_n_s32(LODWORD(buf.height) * v1157 - 2);
          v1179 = v1153;
          v1180 = v1152;
          v1307 = (((Width & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v1181 = vdupq_lane_s32(*&a16, 0);
          v1182 = *(&a17 + 1);
          v1344 = Width;
          v1338 = v1157;
          v1333 = 1.0 / *&a9;
          v1472 = vdupq_n_s32(v1152);
          v1482 = vdupq_n_s32(v1157);
          v1311 = v1153;
          v1309 = v1152;
          v1452 = v1181;
          v1462 = vdupq_lane_s32(*&a18, 1);
          v1442 = vdupq_lane_s32(*&a17, 1);
          v1413 = vdupq_lane_s32(*&a18, 0);
          do
          {
            v1183 = &v1356[v1166 * rowBytes];
            if (v1171)
            {
              v1393 = v1166;
              v1184 = 0;
              v1512 = vmlaq_f32(v1323, v1326, v1173);
              v1502 = vmlaq_f32(v1318, v1320, v1173);
              v1383 = v1173;
              v1492 = vmlaq_f32(v1314, v1316, v1173);
              v1185 = v1313;
              v1186.i64[0] = 0x4100000041000000;
              v1186.i64[1] = 0x4100000041000000;
              do
              {
                v1571 = v1184;
                v1187 = vdupq_n_s32(0x447A0000u);
                v1188 = vmulq_f32(vcvtq_f32_f16(*v1183), v1187);
                v1189 = vmulq_f32(vcvtq_f32_f16(v1183[1]), v1187);
                __asm { FMOV            V0.4S, #4.0 }

                v1191 = vaddq_f32(v1185, _Q0);
                v1192 = vaddq_f32(v1185, v1186);
                v1193 = vmulq_f32(vcvtq_f32_f16(v1183[2]), v1187);
                __asm { FMOV            V0.4S, #12.0 }

                v1195 = vaddq_f32(v1185, _Q0);
                v1196 = vmulq_f32(vcvtq_f32_f16(v1183[3]), v1187);
                v1197 = vmlaq_f32(v1175, vmlaq_n_f32(v1492, v1185, v1174), v1188);
                v1198 = vmlaq_f32(v1175, vmlaq_n_f32(v1492, v1191, v1174), v1189);
                v1199 = vmlaq_f32(v1175, vmlaq_n_f32(v1492, v1192, v1174), v1193);
                v1200 = vmlaq_f32(v1175, vmlaq_n_f32(v1492, v1195, v1174), v1196);
                v1560 = vcgtzq_f32(v1188);
                v1201 = vcgtzq_f32(v1189);
                v1202 = vcgtzq_f32(v1193);
                v1203 = vmlaq_f32(v1462, vdivq_f32(v1442, v1197), vmlaq_f32(v1177, vmlaq_n_f32(v1502, v1185, v1433), v1188));
                v1204 = vmlaq_f32(v1413, vdivq_f32(v1181, v1198), vmlaq_f32(v1176, vmlaq_n_f32(v1512, v1191, v1423), v1189));
                v1205 = vmlaq_f32(v1176, vmlaq_n_f32(v1512, v1195, v1423), v1196);
                v1206 = vmlaq_f32(v1177, vmlaq_n_f32(v1502, v1195, v1433), v1196);
                v1207 = vcgtzq_f32(v1196);
                v1208 = vmlaq_f32(v1462, vdivq_f32(v1442, v1198), vmlaq_f32(v1177, vmlaq_n_f32(v1502, v1191, v1433), v1189));
                v1209 = vmlaq_f32(v1413, vdivq_f32(v1181, v1199), vmlaq_f32(v1176, vmlaq_n_f32(v1512, v1192, v1423), v1193));
                v1210 = vornq_s8(vmvnq_s8(vcgezq_f32(v1200)), v1207);
                v1211 = vmlaq_f32(v1462, vdivq_f32(v1442, v1199), vmlaq_f32(v1177, vmlaq_n_f32(v1502, v1192, v1433), v1193));
                v1212 = vcvtmq_s32_f32(vmlaq_f32(v1413, vdivq_f32(v1181, v1197), vmlaq_f32(v1176, vmlaq_n_f32(v1512, v1185, v1423), v1188)));
                v1213 = vcvtmq_s32_f32(v1203);
                v1214 = vcvtmq_s32_f32(v1204);
                v1215 = vcvtmq_s32_f32(v1208);
                v1216 = vcvtmq_s32_f32(v1209);
                v1217 = vcvtmq_s32_f32(v1211);
                v1218 = vcvtmq_s32_f32(vmlaq_f32(v1413, vdivq_f32(v1181, v1200), v1205));
                v1219 = vcvtmq_s32_f32(vmlaq_f32(v1462, vdivq_f32(v1442, v1200), v1206));
                v1220.i64[0] = 0x4100000041000000;
                v1220.i64[1] = 0x4100000041000000;
                v1181 = v1452;
                v1221 = vdupq_n_s32(0x46FFFE00u);
                _Q0.i64[0] = 0x4100000041000000;
                _Q0.i64[1] = 0x4100000041000000;
                v1222 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1215, v1472), vcgeq_s32(v1214, v1178)), vcltzq_s32(vorrq_s8(v1215, v1214))), vornq_s8(vmvnq_s8(vcgezq_f32(v1198)), v1201)), 0x1FuLL)), v1221, vmulq_f32(v1198, _Q0));
                v1201.i64[0] = 0x4100000041000000;
                v1201.i64[1] = 0x4100000041000000;
                v1223 = vmulq_f32(v1199, v1201);
                v1224 = vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1217, v1472), vcgeq_s32(v1216, v1178)), vcltzq_s32(vorrq_s8(v1217, v1216))), vornq_s8(vmvnq_s8(vcgezq_f32(v1199)), v1202)), 0x1FuLL);
                v1186.i64[0] = 0x4100000041000000;
                v1186.i64[1] = 0x4100000041000000;
                v1225 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1219, v1472), vcgeq_s32(v1218, v1178)), vcltzq_s32(vorrq_s8(v1219, v1218))), v1210), 0x1FuLL)), v1221, vmulq_f32(v1200, v1186));
                v1226 = vmlaq_s32(v1216, v1217, v1482);
                v1227 = vmlaq_s32(v1218, v1219, v1482);
                v1228 = vminq_s32(vmaxq_s32(vmlaq_s32(v1212, v1213, v1482), 0), v1403);
                v1229 = vcvtq_s32_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1213, v1472), vcgeq_s32(v1212, v1178)), vcltzq_s32(vorrq_s8(v1213, v1212))), vornq_s8(vmvnq_s8(vcgezq_f32(v1197)), v1560)), 0x1FuLL)), v1221, vmulq_f32(v1197, v1220)));
                v1561 = v1228.u32[1];
                v1548 = v1229.i32[1];
                v1230 = v1228.i64[1];
                v1231 = v1229.i32[2];
                v1232 = v1228.i32[0];
                v1522 = v1229.i32[3];
                v1233 = v1229.i32[0];
                v1234 = vminq_s32(vmaxq_s32(v1227, 0), v1403);
                v1235 = v1234.u32[3];
                v1236 = v1234.u32[1];
                v1237 = v1234.u32[2];
                v1238 = v1234.i32[0];
                v1239 = vcvtq_s32_f32(v1225);
                v1240 = v1239.i32[3];
                v1241 = v1239.i32[1];
                v1242 = v1239.i32[2];
                v1243 = v1239.i32[0];
                v1244 = vminq_s32(vmaxq_s32(v1226, 0), v1403);
                v1245 = vcvtq_s32_f32(vbslq_s8(vcltzq_s32(v1224), v1221, v1223));
                v1246 = v1244.u32[2];
                v1247 = v1244.u32[3];
                v1248 = v1244.u32[1];
                v1249 = v1244.i32[0];
                v1250 = vminq_s32(vmaxq_s32(vmlaq_s32(v1214, v1215, v1482), 0), v1403);
                v1251 = vcvtq_s32_f32(v1222);
                if (v1233 >= data[v1232])
                {
                  LOWORD(v1233) = data[v1232];
                }

                data[v1232] = v1233;
                v1252 = v1251.i32[1];
                v1253 = v1251.i32[2];
                v1254 = v1251.i32[3];
                v1255 = v1251.i32[0];
                __asm { FMOV            V0.4S, #16.0 }

                v1185 = vaddq_f32(v1185, _Q0);
                if (v1252 >= data[v1250.u32[1]])
                {
                  LOWORD(v1252) = data[v1250.u32[1]];
                }

                data[v1250.u32[1]] = v1252;
                v1257 = data[v1246];
                if (v1245.i32[2] < v1257)
                {
                  LOWORD(v1257) = v1245.i16[4];
                }

                data[v1246] = v1257;
                v1258 = data[v1235];
                if (v1240 < v1258)
                {
                  LOWORD(v1258) = v1240;
                }

                data[v1235] = v1258;
                v1259 = data[v1561];
                if (v1548 < v1259)
                {
                  LOWORD(v1259) = v1548;
                }

                data[v1561] = v1259;
                v1260 = data[v1250.u32[2]];
                if (v1253 < v1260)
                {
                  LOWORD(v1260) = v1253;
                }

                data[v1250.u32[2]] = v1260;
                v1261 = data[v1247];
                if (v1245.i32[3] < v1261)
                {
                  LOWORD(v1261) = v1245.i16[6];
                }

                data[v1247] = v1261;
                v1262 = data[v1238];
                if (v1243 < v1262)
                {
                  LOWORD(v1262) = v1243;
                }

                data[v1238] = v1262;
                v1263 = data[v1230];
                if (v1231 < v1263)
                {
                  LOWORD(v1263) = v1231;
                }

                data[v1230] = v1263;
                v1264 = data[v1250.u32[3]];
                if (v1254 < v1264)
                {
                  LOWORD(v1264) = v1254;
                }

                data[v1250.u32[3]] = v1264;
                v1265 = data[v1249];
                if (v1245.i32[0] < v1265)
                {
                  LOWORD(v1265) = v1245.i16[0];
                }

                data[v1249] = v1265;
                v1266 = data[v1236];
                if (v1241 < v1266)
                {
                  LOWORD(v1266) = v1241;
                }

                data[v1236] = v1266;
                v1267 = data[HIDWORD(v1230)];
                if (v1522 < v1267)
                {
                  LOWORD(v1267) = v1522;
                }

                data[HIDWORD(v1230)] = v1267;
                v1268 = data[v1250.u32[0]];
                if (v1255 < v1268)
                {
                  LOWORD(v1268) = v1255;
                }

                data[v1250.u32[0]] = v1268;
                v1269 = data[v1248];
                if (v1245.i32[1] < v1269)
                {
                  LOWORD(v1269) = v1245.i16[2];
                }

                data[v1248] = v1269;
                v1270 = data[v1237];
                if (v1242 < v1270)
                {
                  LOWORD(v1270) = v1242;
                }

                data[v1237] = v1270;
                v1183 += 4;
                v1184 = v1571 + 16;
              }

              while (v1571 + 16 < v1171);
              v1271 = v1307;
              v1160 = a14;
              v1159 = a15;
              v1162 = a12;
              v1161 = a13;
              v1164 = *&a18;
              v1163 = *&a11;
              v1165 = *&a16;
              Width = v1344;
              v1157 = v1338;
              v1166 = v1393;
              v1169 = v1333;
              v1170 = 1.0 / *&v1549;
              v1172 = 0.5;
              v1173 = v1383;
              v1179 = v1311;
              v1180 = v1309;
              v1182 = *(&a17 + 1);
            }

            else
            {
              v1271 = 0;
            }

            if (v1271 < Width)
            {
              do
              {
                _H2 = v1183->i16[0];
                __asm { FCVT            S2, H2 }

                v1274 = _S2 * 1000.0;
                _Q2 = vaddq_f32(v1159, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v1162, v1169 * (((v1271 + v1172) - v1163) * (_S2 * 1000.0))), v1161, v1170 * (((v1166 + v1172) - *(&a11 + 1)) * (_S2 * 1000.0))), v1160, _S2 * 1000.0));
                if (_Q2.f32[2] >= 0.0 && v1274 > 0.0)
                {
                  v1276 = (v1164 + (_Q2.f32[0] * (v1165 / _Q2.f32[2])));
                  if ((v1276 & 0x80000000) == 0 && v1179 > v1276)
                  {
                    _S3 = v1182 / _Q2.f32[2];
                    __asm { FMLA            S4, S3, V2.S[1] }

                    v1279 = _S4;
                    if ((_S4 & 0x80000000) == 0 && v1180 > v1279)
                    {
                      v1280 = v1157 * v1279;
                      v1281 = vcvts_n_s32_f32(_Q2.f32[2], 3uLL);
                      v1282 = &data[v1280];
                      if ((v1282[v1276] - 1) >= v1281)
                      {
                        v1282[v1276] = v1281;
                      }
                    }
                  }
                }

                ++v1271;
                v1183 = (v1183 + 2);
              }

              while (Width != v1271);
            }

            ++v1166;
            __asm { FMOV            V0.4S, #1.0 }

            v1173 = vaddq_f32(v1173, _Q0);
          }

          while (v1166 != Height);
        }

        v727 = v1299;
        if (v1302)
        {
          v1284 = 0;
          v1285 = *&buf.width;
          v1286 = buf.width >> 4;
          v1287 = buf.data;
          v1288 = buf.height;
          if (buf.width >> 4 <= 1)
          {
            v1286 = 1;
          }

          if (buf.height <= 1)
          {
            v1288 = 1;
          }

          v1289 = buf.width & 0xFFFFFFF0;
          do
          {
            v1290 = &v1287[*(&v1285 + 1) * v1284];
            v1291 = v1286;
            if (v1285 >= 0x10)
            {
              do
              {
                v1292 = v1290[2];
                v1293 = v1290[3];
                v1294 = vbic_s8(v1290[1], vceq_s16(v1290[1], 0x8000800080008000));
                *v1290 = vbic_s8(*v1290, vceq_s16(*v1290, 0x8000800080008000));
                v1290[1] = v1294;
                v1290[2] = vbic_s8(v1292, vceq_s16(v1292, 0x8000800080008000));
                v1290[3] = vbic_s8(v1293, vceq_s16(v1293, 0x8000800080008000));
                v1290 += 4;
                --v1291;
              }

              while (v1291);
            }

            v1295 = v1285 & 0xFFFFFFF0;
            if (v1289 != v1285)
            {
              do
              {
                if (v1290->i16[0] == 0x7FFF)
                {
                  v1290->i16[0] = 0;
                }

                ++v1295;
                v1290 = (v1290 + 2);
              }

              while (v1295 < v1285);
            }

            ++v1284;
          }

          while (v1284 != v1288);
        }

        goto LABEL_389;
      }

      if (PixelFormatType == 1278226534)
      {
        goto LABEL_220;
      }

      if (PixelFormatType != 1278226536)
      {
        goto LABEL_391;
      }
    }

    else
    {
      if (PixelFormatType <= 1751410031)
      {
        if (PixelFormatType != 1717855600)
        {
          if (PixelFormatType == 1717856627)
          {
            v135 = CVPixelBufferGetHeight(a1);
            v136 = CVPixelBufferGetWidth(a1);
            v137 = CVPixelBufferGetHeight(pixelBuffer);
            v138 = CVPixelBufferGetWidth(pixelBuffer);
            v139 = CVPixelBufferGetBytesPerRow(pixelBuffer);
            CVPixelBufferLockBaseAddress(a1, 1uLL);
            CVPixelBufferLockBaseAddress(pixelBuffer, 0);
            memset(&v1573, 0, sizeof(v1573));
            v140 = MEMORY[0x277CBF3A0];
            PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1573);
            memset(&buf, 0, sizeof(buf));
            PixelBufferUtils::asVImageBuffer(pixelBuffer, *v140, &buf);
            v142 = buf.data;
            v141 = buf.height;
            bzero(buf.data, buf.height * buf.rowBytes);
            v148 = a14;
            v147 = a15;
            v150 = a12;
            v149 = a13;
            v152 = *&a18;
            v151 = *&a11;
            v153 = *&a16;
            if (v135)
            {
              v154 = 0;
              v155.i32[1] = v1549;
              v156 = 1.0 / *&a9;
              v157 = 1.0 / *&v1549;
              v158 = 0.5;
              *v143.i32 = 0.5 - *(&a11 + 1);
              v159 = vdupq_lane_s32(v143, 0);
              v160 = v136 & 0xFFFFFFFFFFFFFFF0;
              *v143.i32 = vmuls_lane_f32(1.0 / *&v1549, a13, 2);
              *v155.i32 = vmuls_lane_f32(1.0 / *&v1549, *a13.f32, 1);
              *v144.i32 = (1.0 / *&v1549) * a13.f32[0];
              v161 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
              *&v146 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
              v1395 = vdupq_lane_s32(*a14.i8, 0);
              v1405 = vdupq_lane_s32(v144, 0);
              v1375 = vdupq_lane_s32(*a14.i8, 1);
              v1385 = vdupq_lane_s32(v155, 0);
              v1366 = vdupq_lane_s32(v143, 0);
              *&v145 = (1.0 / *&a9) * a12.f32[0];
              v1354 = vdupq_laneq_s32(a14, 2);
              v162 = v1573.data;
              v163 = v1573.rowBytes;
              v1346 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
              v164 = vdupq_laneq_s32(a15, 2);
              v165 = vdupq_lane_s32(*a15.i8, 0);
              v166 = vdupq_lane_s32(*a15.i8, 1);
              v1494 = vdupq_n_s32(v138);
              v1474 = vdupq_n_s32(v137);
              v167 = *(&a17 + 1);
              v1425 = 1.0 / *&a9;
              v1415 = 1.0 / *&v1549;
              v1524 = vdupq_n_s32(v139 >> 2);
              v1533 = v164;
              v1504 = vdupq_lane_s32(*&a18, 1);
              v1514 = vdupq_lane_s32(*&a17, 1);
              v1484 = vdupq_lane_s32(*&a16, 0);
              v1454 = v161;
              v1464 = vdupq_lane_s32(*&a18, 0);
              v1444 = vdupq_n_s32(v141 * (v139 >> 2) - 4);
              do
              {
                v168 = &v162[v154 * v163];
                v169 = 0;
                if (v160)
                {
                  v1563 = vmlaq_f32(v1395, v1405, v159);
                  v1552 = vmlaq_f32(v1375, v1385, v159);
                  v170 = v1346;
                  v1435 = v159;
                  v1541 = vmlaq_f32(v1354, v1366, v159);
                  do
                  {
                    v171 = vdupq_n_s32(0x447A0000u);
                    v172 = vmulq_f32(vcvtq_f32_f16(*v168), v171);
                    v173 = vmulq_f32(vcvtq_f32_f16(v168[1]), v171);
                    v174 = vmulq_f32(vcvtq_f32_f16(v168[2]), v171);
                    __asm { FMOV            V1.4S, #4.0 }

                    v176 = vaddq_f32(v170, _Q1);
                    _Q1.i64[0] = 0x4100000041000000;
                    _Q1.i64[1] = 0x4100000041000000;
                    v177 = vaddq_f32(v170, _Q1);
                    v178 = vmulq_f32(vcvtq_f32_f16(v168[3]), v171);
                    __asm { FMOV            V1.4S, #12.0 }

                    v180 = vaddq_f32(v170, _Q1);
                    v181 = vmlaq_f32(v164, vmlaq_n_f32(v1541, v170, v161), v172);
                    v182 = vmlaq_f32(v164, vmlaq_n_f32(v1541, v176, v161), v173);
                    v183 = vmlaq_f32(v164, vmlaq_n_f32(v1541, v177, v161), v174);
                    v184 = vmlaq_f32(v164, vmlaq_n_f32(v1541, v180, v161), v178);
                    v185 = vcgtzq_f32(v172);
                    v186 = v165;
                    v187 = vmlaq_f32(v165, vmlaq_n_f32(v1563, v170, *&v145), v172);
                    v188 = v146;
                    v189 = v166;
                    v190 = vmlaq_f32(v166, vmlaq_n_f32(v1552, v170, *&v146), v172);
                    v191 = vmlaq_f32(v166, vmlaq_n_f32(v1552, v176, *&v146), v173);
                    v192 = vmlaq_f32(v1464, vdivq_f32(v1484, v181), v187);
                    v193 = vmlaq_f32(v1504, vdivq_f32(v1514, v181), v190);
                    v194 = vmlaq_f32(v1464, vdivq_f32(v1484, v182), vmlaq_f32(v186, vmlaq_n_f32(v1563, v176, *&v145), v173));
                    v195 = vmlaq_f32(v186, vmlaq_n_f32(v1563, v177, *&v145), v174);
                    v196 = vmlaq_f32(v1504, vdivq_f32(v1514, v182), v191);
                    v197 = vandq_s8(vcgezq_f32(v181), v185);
                    v198 = vmlaq_f32(v186, vmlaq_n_f32(v1563, v180, *&v145), v178);
                    v199 = v145;
                    v200 = vandq_s8(vcgezq_f32(v182), vcgtzq_f32(v173));
                    v201 = vmlaq_f32(v189, vmlaq_n_f32(v1552, v180, *&v188), v178);
                    v202 = vandq_s8(vcgezq_f32(v183), vcgtzq_f32(v174));
                    v203 = vmlaq_f32(v1464, vdivq_f32(v1484, v183), v195);
                    v204 = vandq_s8(vcgezq_f32(v184), vcgtzq_f32(v178));
                    v205 = vmlaq_f32(v1504, vdivq_f32(v1514, v183), vmlaq_f32(v189, vmlaq_n_f32(v1552, v177, *&v188), v174));
                    v206 = vdivq_f32(v1484, v184);
                    v207 = vdivq_f32(v1514, v184);
                    v208 = vdivq_f32(v171, v181);
                    v209 = vdivq_f32(v171, v182);
                    v210 = vdivq_f32(v171, v183);
                    v211 = vdivq_f32(v171, v184);
                    v212 = vcvtmq_s32_f32(v192);
                    v213 = vcvtmq_s32_f32(v193);
                    v214 = vcvtmq_s32_f32(v194);
                    v215 = vcvtmq_s32_f32(v196);
                    v216 = vmlaq_f32(v1504, v207, v201);
                    v217 = vcvtmq_s32_f32(v203);
                    v218 = vcvtmq_s32_f32(v205);
                    v219 = vcvtmq_s32_f32(vmlaq_f32(v1464, v206, v198));
                    v220 = vcvtmq_s32_f32(v216);
                    v146 = v188;
                    v165 = v186;
                    v166 = v189;
                    v221 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1474, v215), vcgtq_s32(v1494, v214)), vcgezq_s32(vorrq_s8(v215, v214))), v200);
                    v145 = v199;
                    v161 = v1454;
                    v222 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1474, v220), vcgtq_s32(v1494, v219)), vcgezq_s32(vorrq_s8(v220, v219))), v204);
                    v223 = vmlaq_s32(v214, v215, v1524);
                    v164 = v1533;
                    v224 = vminq_s32(vmaxq_s32(vmlaq_s32(v212, v213, v1524), 0), v1444);
                    v225 = v224.u32[1];
                    v226 = v224.u32[2];
                    v227 = v224.u32[3];
                    v228 = vandq_s8(v208, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1474, v213), vcgtq_s32(v1494, v212)), vcgezq_s32(vorrq_s8(v213, v212))), v197), 0x1FuLL)));
                    v142[v224.u32[0]] = fmaxf(*v228.i32, v142[v224.u32[0]]);
                    v229 = vminq_s32(vmaxq_s32(v223, 0), v1444);
                    v230 = vandq_s8(v209, vcltzq_s32(vshlq_n_s32(v221, 0x1FuLL)));
                    v231 = vminq_s32(vmaxq_s32(vmlaq_s32(v217, v218, v1524), 0), v1444);
                    v142[v229.u32[1]] = fmaxf(*&v230.i32[1], v142[v229.u32[1]]);
                    v232 = vandq_s8(v210, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1474, v218), vcgtq_s32(v1494, v217)), vcgezq_s32(vorrq_s8(v218, v217))), v202), 0x1FuLL)));
                    v233 = vminq_s32(vmaxq_s32(vmlaq_s32(v219, v220, v1524), 0), v1444);
                    v142[v231.u32[2]] = fmaxf(*&v232.i32[2], v142[v231.u32[2]]);
                    v234 = vandq_s8(v211, vcltzq_s32(vshlq_n_s32(v222, 0x1FuLL)));
                    v142[v233.u32[3]] = fmaxf(*&v234.i32[3], v142[v233.u32[3]]);
                    v142[v225] = fmaxf(*&v228.i32[1], v142[v225]);
                    v142[v229.u32[2]] = fmaxf(*&v230.i32[2], v142[v229.u32[2]]);
                    v142[v231.u32[3]] = fmaxf(*&v232.i32[3], v142[v231.u32[3]]);
                    v142[v233.u32[0]] = fmaxf(*v234.i32, v142[v233.u32[0]]);
                    v142[v226] = fmaxf(*&v228.i32[2], v142[v226]);
                    v142[v229.u32[3]] = fmaxf(*&v230.i32[3], v142[v229.u32[3]]);
                    v142[v231.u32[0]] = fmaxf(*v232.i32, v142[v231.u32[0]]);
                    v142[v233.u32[1]] = fmaxf(*&v234.i32[1], v142[v233.u32[1]]);
                    v142[v227] = fmaxf(*&v228.i32[3], v142[v227]);
                    v142[v229.u32[0]] = fmaxf(*v230.i32, v142[v229.u32[0]]);
                    v142[v231.u32[1]] = fmaxf(*&v232.i32[1], v142[v231.u32[1]]);
                    v142[v233.u32[2]] = fmaxf(*&v234.i32[2], v142[v233.u32[2]]);
                    __asm { FMOV            V0.4S, #16.0 }

                    v170 = vaddq_f32(v170, _Q0);
                    v168 += 4;
                    v169 += 16;
                  }

                  while (v169 < v160);
                  v169 = (((v136 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
                  v148 = a14;
                  v147 = a15;
                  v150 = a12;
                  v149 = a13;
                  v152 = *&a18;
                  v151 = *&a11;
                  v153 = *&a16;
                  v156 = v1425;
                  v157 = v1415;
                  v158 = 0.5;
                  v159 = v1435;
                  v167 = *(&a17 + 1);
                }

                if (v169 < v136)
                {
                  do
                  {
                    _H2 = v168->i16[0];
                    __asm { FCVT            S2, H2 }

                    v238 = _S2 * 1000.0;
                    _Q2 = vaddq_f32(v147, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v150, v156 * (((v169 + v158) - v151) * (_S2 * 1000.0))), v149, v157 * (((v154 + v158) - *(&a11 + 1)) * (_S2 * 1000.0))), v148, _S2 * 1000.0));
                    if (_Q2.f32[2] >= 0.0 && v238 > 0.0)
                    {
                      v240 = (v152 + (_Q2.f32[0] * (v153 / _Q2.f32[2])));
                      if ((v240 & 0x80000000) == 0 && v138 > v240)
                      {
                        _S3 = v167 / _Q2.f32[2];
                        __asm { FMLA            S4, S3, V2.S[1] }

                        v243 = _S4;
                        if ((_S4 & 0x80000000) == 0 && v137 > v243)
                        {
                          v244 = 1000.0 / _Q2.f32[2];
                          v245 = &v142[(v139 >> 2) * v243];
                          v246 = v245[v240];
                          if (v246 == 0.0 || v246 < v244)
                          {
                            v245[v240] = v244;
                          }
                        }
                      }
                    }

                    ++v169;
                    v168 = (v168 + 2);
                  }

                  while (v136 != v169);
                }

                ++v154;
                __asm { FMOV            V0.4S, #1.0 }

                v159 = vaddq_f32(v159, _Q0);
              }

              while (v154 != v135);
            }

LABEL_183:
            v727 = a1;
LABEL_389:
            CVPixelBufferUnlockBaseAddress(v727, 1uLL);
            v1150 = pixelBuffer;
            goto LABEL_390;
          }

          goto LABEL_391;
        }

LABEL_220:
        v853 = CVPixelBufferGetHeight(a1);
        v854 = CVPixelBufferGetWidth(a1);
        v855 = CVPixelBufferGetHeight(pixelBuffer);
        v856 = CVPixelBufferGetWidth(pixelBuffer);
        v857 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        memset(&v1573, 0, sizeof(v1573));
        v858 = MEMORY[0x277CBF3A0];
        v859 = a1;
        PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1573);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(pixelBuffer, *v858, &buf);
        v864 = v857 >> 2;
        v865 = buf.data;
        if (v864 * v855)
        {
          memset_pattern16(buf.data, &unk_2404C8690, 4 * v864 * v855);
        }

        v866 = buf.height;
        v868 = a14;
        v867 = a15;
        v870 = a12;
        v869 = a13;
        v872 = *&a18;
        v871 = *&a11;
        v873 = *&a16;
        if (v853)
        {
          v874 = 0;
          v875.i32[1] = v1549;
          v876.i32[1] = HIDWORD(a9);
          v877 = 1.0 / *&a9;
          v878 = 1.0 / *&v1549;
          v879 = v854 & 0xFFFFFFFFFFFFFFF0;
          v880 = 0.5;
          *v860.i32 = 0.5 - *(&a11 + 1);
          v881 = vdupq_lane_s32(v860, 0);
          *v860.i32 = vmuls_lane_f32(1.0 / *&v1549, a13, 2);
          *v875.i32 = vmuls_lane_f32(1.0 / *&v1549, *a13.f32, 1);
          *v876.i32 = (1.0 / *&v1549) * a13.f32[0];
          *&v861 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
          *&v862 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
          v1421 = vdupq_lane_s32(*a14.i8, 0);
          v1431 = vdupq_lane_s32(v876, 0);
          v1401 = vdupq_lane_s32(*a14.i8, 1);
          v1411 = vdupq_lane_s32(v875, 0);
          *&v863 = (1.0 / *&a9) * a12.f32[0];
          v1381 = vdupq_laneq_s32(a14, 2);
          v1391 = vdupq_lane_s32(v860, 0);
          v882 = v1573.data;
          v883 = v1573.rowBytes;
          v1371 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
          v884 = vdupq_laneq_s32(a15, 2);
          v885 = vdupq_lane_s32(*a15.i8, 0);
          v886 = vdupq_lane_s32(*a15.i8, 1);
          v887 = vdupq_n_s32(v856);
          v888 = vdupq_n_s32(v855);
          v1490 = vdupq_lane_s32(*&a16, 0);
          v889 = *(&a17 + 1);
          v890.i64[0] = 0x80000000800000;
          v890.i64[1] = 0x80000000800000;
          v1450 = 1.0 / *&a9;
          v1440 = 1.0 / *&v1549;
          v1520 = vdupq_lane_s32(*&a17, 1);
          v1530 = vdupq_n_s32(LODWORD(buf.height) * v864 - 4);
          v1569 = vnegq_f32(v890);
          v1500 = v884;
          v1510 = vdupq_lane_s32(*&a18, 1);
          v1470 = vdupq_n_s32(v864);
          v1480 = vdupq_lane_s32(*&a18, 0);
          do
          {
            v891 = &v882[v874 * v883];
            v892 = 0;
            if (v879)
            {
              v1558 = vmlaq_f32(v1421, v1431, v881);
              v1547 = vmlaq_f32(v1401, v1411, v881);
              v1460 = v881;
              v1539 = vmlaq_f32(v1381, v1391, v881);
              v893 = v1371;
              do
              {
                v894 = vdupq_n_s32(0x447A0000u);
                v895 = vmulq_f32(vcvtq_f32_f16(*v891), v894);
                v896 = vmulq_f32(vcvtq_f32_f16(v891[1]), v894);
                v897 = vmulq_f32(vcvtq_f32_f16(v891[2]), v894);
                __asm { FMOV            V0.4S, #4.0 }

                v899 = vaddq_f32(v893, _Q0);
                _Q0.i64[0] = 0x4100000041000000;
                _Q0.i64[1] = 0x4100000041000000;
                v900 = vaddq_f32(v893, _Q0);
                v901 = vmulq_f32(vcvtq_f32_f16(v891[3]), v894);
                __asm { FMOV            V0.4S, #12.0 }

                v903 = vaddq_f32(v893, _Q0);
                v904 = vmlaq_f32(v884, vmlaq_n_f32(v1539, v893, *&v861), v895);
                v905 = vmlaq_f32(v884, vmlaq_n_f32(v1539, v899, *&v861), v896);
                v906 = vmlaq_f32(v884, vmlaq_n_f32(v1539, v900, *&v861), v897);
                v907 = vmlaq_f32(v884, vmlaq_n_f32(v1539, v903, *&v861), v901);
                v908 = vmlaq_f32(v885, vmlaq_n_f32(v1558, v893, *&v863), v895);
                v909 = v861;
                v910 = vmlaq_f32(v886, vmlaq_n_f32(v1547, v893, *&v862), v895);
                v911 = vornq_s8(vmvnq_s8(vcgezq_f32(v904)), vcgtzq_f32(v895));
                v912 = vornq_s8(vmvnq_s8(vcgezq_f32(v905)), vcgtzq_f32(v896));
                v913 = vornq_s8(vmvnq_s8(vcgezq_f32(v906)), vcgtzq_f32(v897));
                v914 = vmlaq_f32(v885, vmlaq_n_f32(v1558, v900, *&v863), v897);
                v915 = vmlaq_f32(v886, vmlaq_n_f32(v1547, v900, *&v862), v897);
                v916 = vornq_s8(vmvnq_s8(vcgezq_f32(v907)), vcgtzq_f32(v901));
                v917 = vmlaq_f32(v885, vmlaq_n_f32(v1558, v903, *&v863), v901);
                v918 = vmlaq_f32(v886, vmlaq_n_f32(v1547, v903, *&v862), v901);
                v919 = v886;
                v920 = vmlaq_f32(v1480, vdivq_f32(v1490, v904), v908);
                v921 = vmlaq_f32(v1510, vdivq_f32(v1520, v904), v910);
                v922 = vmlaq_f32(v1480, vdivq_f32(v1490, v905), vmlaq_f32(v885, vmlaq_n_f32(v1558, v899, *&v863), v896));
                v923 = vmlaq_f32(v1510, vdivq_f32(v1520, v905), vmlaq_f32(v886, vmlaq_n_f32(v1547, v899, *&v862), v896));
                v924 = vmlaq_f32(v1480, vdivq_f32(v1490, v906), v914);
                v925 = vdivq_f32(v1490, v907);
                v926 = vmlaq_f32(v1510, vdivq_f32(v1520, v906), v915);
                v927 = v888;
                v928 = v887;
                v929 = v885;
                v930 = v863;
                v931 = v862;
                v932 = vdivq_f32(v1520, v907);
                v933 = vdupq_n_s32(0x3A83126Fu);
                v934 = vmulq_f32(v904, v933);
                v935 = vmulq_f32(v905, v933);
                v936 = vmulq_f32(v906, v933);
                v937 = vmulq_f32(v907, v933);
                v938 = vcvtmq_s32_f32(v920);
                v939 = vcvtmq_s32_f32(v921);
                v940 = vcvtmq_s32_f32(v922);
                v941 = vcvtmq_s32_f32(v923);
                v942 = vmlaq_f32(v1480, v925, v917);
                v943 = vmlaq_f32(v1510, v932, v918);
                v862 = v931;
                v863 = v930;
                v885 = v929;
                v887 = v928;
                v888 = v927;
                v944 = vcvtmq_s32_f32(v924);
                v945 = vcvtmq_s32_f32(v926);
                v946 = vcvtmq_s32_f32(v942);
                v947 = vcvtmq_s32_f32(v943);
                v861 = v909;
                v948 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v947, v927), vcgeq_s32(v946, v887)), vcltzq_s32(vorrq_s8(v947, v946))), v916);
                v886 = v919;
                v949 = vmlaq_s32(v946, v947, v1470);
                v884 = v1500;
                v950 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v939, v927), vcgeq_s32(v938, v887)), vcltzq_s32(vorrq_s8(v939, v938))), v911), 0x1FuLL)), v1569, v934);
                v951 = vminq_s32(vmaxq_s32(vmlaq_s32(v938, v939, v1470), 0), v1530);
                v952 = vminq_s32(vmaxq_s32(vmlaq_s32(v940, v941, v1470), 0), v1530);
                v953 = v951.u32[1];
                v954 = v951.u32[2];
                v955 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v941, v927), vcgeq_s32(v940, v887)), vcltzq_s32(vorrq_s8(v941, v940))), v912), 0x1FuLL)), v1569, v935);
                v956 = v951.u32[3];
                v865[v951.u32[0]] = fminf(*v950.i32, v865[v951.u32[0]]);
                v957 = vminq_s32(vmaxq_s32(vmlaq_s32(v944, v945, v1470), 0), v1530);
                v865[v952.u32[1]] = fminf(*&v955.i32[1], v865[v952.u32[1]]);
                v958 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v945, v927), vcgeq_s32(v944, v887)), vcltzq_s32(vorrq_s8(v945, v944))), v913), 0x1FuLL)), v1569, v936);
                v959 = vminq_s32(vmaxq_s32(v949, 0), v1530);
                v865[v957.u32[2]] = fminf(*&v958.i32[2], v865[v957.u32[2]]);
                v960 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v948, 0x1FuLL)), v1569, v937);
                v865[v959.u32[3]] = fminf(*&v960.i32[3], v865[v959.u32[3]]);
                v865[v953] = fminf(*&v950.i32[1], v865[v953]);
                v865[v952.u32[2]] = fminf(*&v955.i32[2], v865[v952.u32[2]]);
                v865[v957.u32[3]] = fminf(*&v958.i32[3], v865[v957.u32[3]]);
                v865[v959.u32[0]] = fminf(*v960.i32, v865[v959.u32[0]]);
                v865[v954] = fminf(*&v950.i32[2], v865[v954]);
                v865[v952.u32[3]] = fminf(*&v955.i32[3], v865[v952.u32[3]]);
                v865[v957.u32[0]] = fminf(*v958.i32, v865[v957.u32[0]]);
                v865[v959.u32[1]] = fminf(*&v960.i32[1], v865[v959.u32[1]]);
                v865[v956] = fminf(*&v950.i32[3], v865[v956]);
                v865[v952.u32[0]] = fminf(*v955.i32, v865[v952.u32[0]]);
                v865[v957.u32[1]] = fminf(*&v958.i32[1], v865[v957.u32[1]]);
                v865[v959.u32[2]] = fminf(*&v960.i32[2], v865[v959.u32[2]]);
                __asm { FMOV            V0.4S, #16.0 }

                v893 = vaddq_f32(v893, _Q0);
                v891 += 4;
                v892 += 16;
              }

              while (v892 < v879);
              v892 = (((v854 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
              v868 = a14;
              v867 = a15;
              v870 = a12;
              v869 = a13;
              v872 = *&a18;
              v871 = *&a11;
              v873 = *&a16;
              v877 = v1450;
              v878 = v1440;
              v880 = 0.5;
              v881 = v1460;
              v889 = *(&a17 + 1);
            }

            if (v892 < v854)
            {
              do
              {
                _H2 = v891->i16[0];
                __asm { FCVT            S2, H2 }

                v964 = _S2 * 1000.0;
                _Q2 = vaddq_f32(v867, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v870, v877 * (((v892 + v880) - v871) * (_S2 * 1000.0))), v869, v878 * (((v874 + v880) - *(&a11 + 1)) * (_S2 * 1000.0))), v868, _S2 * 1000.0));
                if (_Q2.f32[2] >= 0.0 && v964 > 0.0)
                {
                  v966 = (v872 + (_Q2.f32[0] * (v873 / _Q2.f32[2])));
                  if ((v966 & 0x80000000) == 0 && v856 > v966)
                  {
                    _S3 = v889 / _Q2.f32[2];
                    __asm { FMLA            S4, S3, V2.S[1] }

                    v969 = _S4;
                    if ((_S4 & 0x80000000) == 0 && v855 > v969)
                    {
                      v970 = _Q2.f32[2] * 0.001;
                      v971 = &v865[v864 * v969];
                      v972 = v971[v966];
                      if (v972 == 0.0 || v972 > v970)
                      {
                        v971[v966] = v970;
                      }
                    }
                  }
                }

                ++v892;
                v891 = (v891 + 2);
              }

              while (v854 != v892);
            }

            ++v874;
            __asm { FMOV            V0.4S, #1.0 }

            v881 = vaddq_f32(v881, _Q0);
          }

          while (v874 != v853);
        }

        v727 = v859;
        if (v866)
        {
          v975 = 0;
          v976 = *&buf.width;
          v977 = buf.width >> 4;
          v978 = buf.data;
          v979 = buf.height;
          if (buf.width >> 4 <= 1)
          {
            v977 = 1;
          }

          if (buf.height <= 1)
          {
            v979 = 1;
          }

          v980 = buf.width & 0xFFFFFFF0;
          v981.i64[0] = 0x80000000800000;
          v981.i64[1] = 0x80000000800000;
          v982 = vnegq_f32(v981);
          do
          {
            v983 = &v978[*(&v976 + 1) * v975];
            v984 = v977;
            if (v976 >= 0x10)
            {
              do
              {
                v985 = v983[2];
                v986 = v983[3];
                v987 = vbicq_s8(v983[1], vceqq_f32(v983[1], v982));
                *v983 = vbicq_s8(*v983, vceqq_f32(*v983, v982));
                v983[1] = v987;
                v983[2] = vbicq_s8(v985, vceqq_f32(v985, v982));
                v983[3] = vbicq_s8(v986, vceqq_f32(v986, v982));
                v983 += 4;
                --v984;
              }

              while (v984);
            }

            v988 = v976 & 0xFFFFFFF0;
            if (v980 != v976)
            {
              do
              {
                if (v983->f32[0] == 3.4028e38)
                {
                  v983->i32[0] = 0;
                }

                ++v988;
                v983 = (v983 + 4);
              }

              while (v988 < v976);
            }

            ++v975;
          }

          while (v975 != v979);
        }

        goto LABEL_389;
      }

      if (PixelFormatType != 1751410032)
      {
        if (PixelFormatType == 1751411059)
        {
          v615 = CVPixelBufferGetHeight(a1);
          v616 = CVPixelBufferGetWidth(a1);
          v617 = CVPixelBufferGetHeight(pixelBuffer);
          v618 = CVPixelBufferGetWidth(pixelBuffer);
          v619 = CVPixelBufferGetBytesPerRow(pixelBuffer);
          CVPixelBufferLockBaseAddress(a1, 1uLL);
          CVPixelBufferLockBaseAddress(pixelBuffer, 0);
          memset(&v1573, 0, sizeof(v1573));
          v620 = MEMORY[0x277CBF3A0];
          PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1573);
          memset(&buf, 0, sizeof(buf));
          PixelBufferUtils::asVImageBuffer(pixelBuffer, *v620, &buf);
          v622 = buf.data;
          v621 = buf.height;
          bzero(buf.data, buf.height * buf.rowBytes);
          v625 = a14;
          v624 = a15;
          v627 = a12;
          v626 = a13;
          v629 = *&a18;
          v628 = *&a11;
          v630 = *&a16;
          if (v615)
          {
            v631 = 0;
            v632.i32[1] = v1549;
            v633.i32[1] = HIDWORD(a9);
            v634 = 1.0 / *&a9;
            v635 = 1.0 / *&v1549;
            v636 = 0.5;
            *v623.i32 = 0.5 - *(&a11 + 1);
            v637 = vdupq_lane_s32(v623, 0);
            v638 = v616 & 0xFFFFFFFFFFFFFFF0;
            *v623.i32 = vmuls_lane_f32(1.0 / *&v1549, a13, 2);
            *v632.i32 = vmuls_lane_f32(1.0 / *&v1549, *a13.f32, 1);
            *v633.i32 = (1.0 / *&v1549) * a13.f32[0];
            v639 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
            v1389 = vdupq_lane_s32(*a14.i8, 0);
            v1399 = vdupq_lane_s32(v633, 0);
            v1370 = vdupq_lane_s32(*a14.i8, 1);
            v1379 = vdupq_lane_s32(v632, 0);
            v1350 = vdupq_laneq_s32(a14, 2);
            v1355 = vdupq_lane_s32(v623, 0);
            v640 = v1573.data;
            v641 = v1573.rowBytes;
            v1342 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
            v642 = vdupq_laneq_s32(a15, 2);
            v643 = vdupq_n_s32(v618);
            v644 = vdupq_n_s32(v617);
            v645 = vdupq_n_s32(v619 >> 1);
            v646 = *(&a17 + 1);
            v1419 = 1.0 / *&a9;
            v1409 = 1.0 / *&v1549;
            v1528 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
            v1537 = (1.0 / *&a9) * a12.f32[0];
            v1508 = vdupq_lane_s32(*&a17, 1);
            v1518 = vdupq_lane_s32(*&a18, 1);
            v1488 = vdupq_lane_s32(*a15.i8, 0);
            v1498 = vdupq_lane_s32(*&a18, 0);
            v1468 = vdupq_lane_s32(*a15.i8, 1);
            v1478 = vdupq_n_s32(v621 * (v619 >> 1) - 2);
            v1448 = vdupq_lane_s32(*&a16, 0);
            v1458 = v639;
            v1438 = v642;
            do
            {
              v647 = &v640[v631 * v641];
              v648 = 0;
              if (v638)
              {
                v1545 = vmlaq_f32(v1389, v1399, v637);
                v1567 = vmlaq_f32(v1370, v1379, v637);
                v1429 = v637;
                v1556 = vmlaq_f32(v1350, v1355, v637);
                v649 = v1342;
                do
                {
                  v650 = vdupq_n_s32(0x447A0000u);
                  v651 = vmulq_f32(vcvtq_f32_f16(*v647), v650);
                  v652 = vmulq_f32(vcvtq_f32_f16(v647[1]), v650);
                  __asm { FMOV            V1.4S, #4.0 }

                  v654 = vaddq_f32(v649, _Q1);
                  v655 = vmulq_f32(vcvtq_f32_f16(v647[2]), v650);
                  _Q1.i64[0] = 0x4100000041000000;
                  _Q1.i64[1] = 0x4100000041000000;
                  v656 = vaddq_f32(v649, _Q1);
                  __asm { FMOV            V1.4S, #12.0 }

                  v658 = vaddq_f32(v649, _Q1);
                  v659 = vmulq_f32(vcvtq_f32_f16(v647[3]), v650);
                  v660 = vmlaq_f32(v642, vmlaq_n_f32(v1556, v649, v639), v651);
                  v661 = vmlaq_f32(v642, vmlaq_n_f32(v1556, v654, v639), v652);
                  v662 = vmlaq_f32(v642, vmlaq_n_f32(v1556, v656, v639), v655);
                  v663 = vmlaq_f32(v642, vmlaq_n_f32(v1556, v658, v639), v659);
                  v664 = v645;
                  v665 = v644;
                  v666 = vmlaq_f32(v1488, vmlaq_n_f32(v1545, v649, v1537), v651);
                  v667 = vmlaq_f32(v1468, vmlaq_n_f32(v1567, v649, v1528), v651);
                  v668 = vandq_s8(vcgezq_f32(v660), vcgtzq_f32(v651));
                  v669 = vmlaq_f32(v1488, vmlaq_n_f32(v1545, v654, v1537), v652);
                  v670 = vandq_s8(vcgezq_f32(v661), vcgtzq_f32(v652));
                  v671 = vmlaq_f32(v1468, vmlaq_n_f32(v1567, v654, v1528), v652);
                  v672 = vmlaq_f32(v1488, vmlaq_n_f32(v1545, v656, v1537), v655);
                  v673 = v643;
                  v674 = vmlaq_f32(v1468, vmlaq_n_f32(v1567, v656, v1528), v655);
                  v675 = vandq_s8(vcgezq_f32(v662), vcgtzq_f32(v655));
                  v676 = vmlaq_f32(v1488, vmlaq_n_f32(v1545, v658, v1537), v659);
                  v677 = vmlaq_f32(v1468, vmlaq_n_f32(v1567, v658, v1528), v659);
                  v678 = vmlaq_f32(v1498, vdivq_f32(v1448, v660), v666);
                  v679 = vmlaq_f32(v1518, vdivq_f32(v1508, v660), v667);
                  v680 = vmlaq_f32(v1498, vdivq_f32(v1448, v661), v669);
                  v681 = vmlaq_f32(v1518, vdivq_f32(v1508, v661), v671);
                  v682 = vdivq_f32(v1508, v662);
                  v683 = vandq_s8(vcgezq_f32(v663), vcgtzq_f32(v659));
                  v684 = vmlaq_f32(v1498, vdivq_f32(v1448, v662), v672);
                  v685 = vdivq_f32(v1448, v663);
                  v686 = vdivq_f32(v1508, v663);
                  v687 = vdivq_f32(v650, v660);
                  v688 = vdivq_f32(v650, v661);
                  v689 = vdivq_f32(v650, v662);
                  v690 = vdivq_f32(v650, v663);
                  v691 = vcvtmq_s32_f32(v678);
                  v692 = vcvtmq_s32_f32(v679);
                  v693 = vcvtmq_s32_f32(v680);
                  v694 = vcvtmq_s32_f32(v681);
                  v695 = vcvtmq_s32_f32(v684);
                  v696 = vmlaq_f32(v1518, v682, v674);
                  v643 = v673;
                  v697 = vmlaq_f32(v1498, v685, v676);
                  v698 = vcvtmq_s32_f32(v696);
                  v699 = vmlaq_f32(v1518, v686, v677);
                  v644 = v665;
                  v645 = v664;
                  v700 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v644, v692), vcgtq_s32(v673, v691)), vcgezq_s32(vorrq_s8(v692, v691))), v668);
                  v701 = vcvtmq_s32_f32(v697);
                  v702 = vcvtmq_s32_f32(v699);
                  v703 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v644, v694), vcgtq_s32(v673, v693)), vcgezq_s32(vorrq_s8(v694, v693))), v670);
                  v642 = v1438;
                  v704 = vmlaq_s32(v691, v692, v664);
                  v639 = v1458;
                  v705 = vandq_s8(v687, vcltzq_s32(vshlq_n_s32(v700, 0x1FuLL)));
                  v706 = vandq_s8(v689, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v644, v698), vcgtq_s32(v673, v695)), vcgezq_s32(vorrq_s8(v698, v695))), v675), 0x1FuLL)));
                  v707 = vminq_s32(vmaxq_s32(v704, 0), v1478);
                  v708 = vminq_s32(vmaxq_s32(vmlaq_s32(v693, v694, v664), 0), v1478);
                  v709 = vminq_s32(vmaxq_s32(vmlaq_s32(v695, v698, v664), 0), v1478);
                  v710 = vminq_s32(vmaxq_s32(vmlaq_s32(v701, v702, v664), 0), v1478);
                  v711 = v707.u32[1];
                  v712 = vandq_s8(v690, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v644, v702), vcgtq_s32(v673, v701)), vcgezq_s32(vorrq_s8(v702, v701))), v683), 0x1FuLL)));
                  *v683.i8 = vcvt_f16_f32(v705);
                  v622[v707.u32[0]] = fmaxl(*v683.i16, v622[v707.u32[0]]);
                  *v707.i8 = vcvt_f16_f32(vandq_s8(v688, vcltzq_s32(vshlq_n_s32(v703, 0x1FuLL))));
                  v622[v708.u32[1]] = fmaxl(*&v707.i16[1], v622[v708.u32[1]]);
                  *v706.f32 = vcvt_f16_f32(v706);
                  v622[v709.u32[2]] = fmaxl(*&v706.i16[2], v622[v709.u32[2]]);
                  *v688.i8 = vcvt_f16_f32(v712);
                  v622[v710.u32[3]] = fmaxl(*&v688.i16[3], v622[v710.u32[3]]);
                  v622[v711] = fmaxl(*&v683.i16[1], v622[v711]);
                  v622[v708.u32[2]] = fmaxl(*&v707.i16[2], v622[v708.u32[2]]);
                  v622[v709.u32[3]] = fmaxl(*&v706.i16[3], v622[v709.u32[3]]);
                  v622[v710.u32[0]] = fmaxl(*v688.i16, v622[v710.u32[0]]);
                  v622[v707.u32[2]] = fmaxl(*&v683.i16[2], v622[v707.u32[2]]);
                  v622[v708.u32[3]] = fmaxl(*&v707.i16[3], v622[v708.u32[3]]);
                  v622[v709.u32[0]] = fmaxl(*v706.i16, v622[v709.u32[0]]);
                  v622[v710.u32[1]] = fmaxl(*&v688.i16[1], v622[v710.u32[1]]);
                  v622[v707.u32[3]] = fmaxl(*&v683.i16[3], v622[v707.u32[3]]);
                  v622[v708.u32[0]] = fmaxl(*v707.i16, v622[v708.u32[0]]);
                  v622[v709.u32[1]] = fmaxl(*&v706.i16[1], v622[v709.u32[1]]);
                  v622[v710.u32[2]] = fmaxl(*&v688.i16[2], v622[v710.u32[2]]);
                  __asm { FMOV            V0.4S, #16.0 }

                  v649 = vaddq_f32(v649, _Q0);
                  v647 += 4;
                  v648 += 16;
                }

                while (v648 < v638);
                v648 = (((v616 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
                v625 = a14;
                v624 = a15;
                v627 = a12;
                v626 = a13;
                v629 = *&a18;
                v628 = *&a11;
                v630 = *&a16;
                v634 = v1419;
                v635 = v1409;
                v636 = 0.5;
                v637 = v1429;
                v646 = *(&a17 + 1);
              }

              if (v648 < v616)
              {
                do
                {
                  _H2 = v647->i16[0];
                  __asm { FCVT            S2, H2 }

                  _Q3 = vaddq_f32(v624, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v627, v634 * (((v648 + v636) - v628) * (_S2 * 1000.0))), v626, v635 * (((v631 + v636) - *(&a11 + 1)) * (_S2 * 1000.0))), v625, _S2 * 1000.0));
                  if (_Q3.f32[2] >= 0.0 && (_S2 * 1000.0) > 0.0)
                  {
                    v717 = (v629 + (_Q3.f32[0] * (v630 / _Q3.f32[2])));
                    if ((v717 & 0x80000000) == 0 && v618 > v717)
                    {
                      _S2 = v646 / _Q3.f32[2];
                      __asm { FMLA            S4, S2, V3.S[1] }

                      v720 = _S4;
                      if ((_S4 & 0x80000000) == 0 && v617 > v720)
                      {
                        _S1 = 1000.0 / _Q3.f32[2];
                        v722 = &v622[(v619 >> 1) * v720];
                        __asm
                        {
                          FCVT            H1, S1
                          FCMP            H2, #0
                        }

                        if (_ZF || _H2 < _H1)
                        {
                          v722[v717] = _H1;
                        }
                      }
                    }
                  }

                  ++v648;
                  v647 = (v647 + 2);
                }

                while (v616 != v648);
              }

              ++v631;
              __asm { FMOV            V0.4S, #1.0 }

              v637 = vaddq_f32(v637, _Q0);
            }

            while (v631 != v615);
          }

          goto LABEL_183;
        }

LABEL_391:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_393;
        }

        return -22950;
      }
    }

    v728 = CVPixelBufferGetHeight(a1);
    v729 = CVPixelBufferGetWidth(a1);
    v730 = CVPixelBufferGetHeight(pixelBuffer);
    v731 = CVPixelBufferGetWidth(pixelBuffer);
    v732 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    memset(&v1573, 0, sizeof(v1573));
    v733 = MEMORY[0x277CBF3A0];
    v734 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1573);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v733, &buf);
    v736 = v732 >> 1;
    v737 = buf.data;
    if (v736 * v730)
    {
      memset_pattern16(buf.data, &unk_2404C86A0, 2 * v736 * v730);
    }

    v738 = buf.height;
    v740 = a14;
    v739 = a15;
    v742 = a12;
    v741 = a13;
    v744 = *&a18;
    v743 = *&a11;
    v745 = *&a16;
    if (v728)
    {
      v746 = 0;
      v747.i32[1] = v1549;
      v748.i32[1] = HIDWORD(a9);
      v749 = 1.0 / *&a9;
      v750 = 1.0 / *&v1549;
      v751 = v729 & 0xFFFFFFFFFFFFFFF0;
      v752 = 0.5;
      *v735.i32 = 0.5 - *(&a11 + 1);
      v753 = vdupq_lane_s32(v735, 0);
      *v735.i32 = vmuls_lane_f32(1.0 / *&v1549, a13, 2);
      *v747.i32 = vmuls_lane_f32(1.0 / *&v1549, *a13.f32, 1);
      *v748.i32 = (1.0 / *&v1549) * a13.f32[0];
      v754 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v755 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      v756 = (1.0 / *&a9) * a12.f32[0];
      v757 = v1573.data;
      v758 = v1573.rowBytes;
      v1430 = vdupq_lane_s32(*a14.i8, 0);
      v1439 = vdupq_lane_s32(v748, 0);
      v1410 = vdupq_lane_s32(*a14.i8, 1);
      v1420 = vdupq_lane_s32(v747, 0);
      v1390 = vdupq_laneq_s32(a14, 2);
      v1400 = vdupq_lane_s32(v735, 0);
      v759 = vdupq_laneq_s32(a15, 2);
      v760 = vdupq_lane_s32(*a15.i8, 0);
      v761 = vdupq_lane_s32(*a15.i8, 1);
      v762 = vdupq_n_s32(v731);
      v763 = vdupq_n_s32(v730);
      v1380 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v764 = vdupq_n_s32(LODWORD(buf.height) * v736 - 2);
      v765 = *(&a17 + 1);
      v1459 = 1.0 / *&a9;
      v1449 = 1.0 / *&v1549;
      v1529 = vdupq_lane_s32(*&a16, 0);
      v1538 = vdupq_n_s32(v736);
      v1509 = vdupq_lane_s32(*&a18, 0);
      v1519 = vdupq_lane_s32(*&a17, 1);
      v1489 = vdupq_lane_s32(*&a18, 1);
      v1499 = v759;
      v1479 = v754;
      do
      {
        v766 = &v757[v746 * v758];
        v767 = 0;
        if (v751)
        {
          v1568 = vmlaq_f32(v1430, v1439, v753);
          v1557 = vmlaq_f32(v1410, v1420, v753);
          v1469 = v753;
          v1546 = vmlaq_f32(v1390, v1400, v753);
          v768 = v1380;
          do
          {
            v769 = vdupq_n_s32(0x447A0000u);
            v770 = vmulq_f32(vcvtq_f32_f16(*v766), v769);
            v771 = vmulq_f32(vcvtq_f32_f16(v766[1]), v769);
            v772 = vmulq_f32(vcvtq_f32_f16(v766[2]), v769);
            __asm { FMOV            V1.4S, #4.0 }

            v774 = vaddq_f32(v768, _Q1);
            _Q1.i64[0] = 0x4100000041000000;
            _Q1.i64[1] = 0x4100000041000000;
            v775 = vaddq_f32(v768, _Q1);
            v776 = vmulq_f32(vcvtq_f32_f16(v766[3]), v769);
            __asm { FMOV            V3.4S, #12.0 }

            v778 = vaddq_f32(v768, _Q3);
            v779 = vmlaq_f32(v759, vmlaq_n_f32(v1546, v768, v754), v770);
            v780 = vmlaq_f32(v759, vmlaq_n_f32(v1546, v774, v754), v771);
            v781 = vmlaq_f32(v759, vmlaq_n_f32(v1546, v775, v754), v772);
            v782 = vmlaq_f32(v759, vmlaq_n_f32(v1546, v778, v754), v776);
            v783 = v763;
            v784 = vmlaq_f32(v760, vmlaq_n_f32(v1568, v768, v756), v770);
            v785 = vmlaq_f32(v761, vmlaq_n_f32(v1557, v768, v755), v770);
            v786 = vornq_s8(vmvnq_s8(vcgezq_f32(v779)), vcgtzq_f32(v770));
            v787 = vornq_s8(vmvnq_s8(vcgezq_f32(v780)), vcgtzq_f32(v771));
            v788 = vornq_s8(vmvnq_s8(vcgezq_f32(v781)), vcgtzq_f32(v772));
            v789 = vmlaq_f32(v760, vmlaq_n_f32(v1568, v775, v756), v772);
            v790 = vmlaq_f32(v761, vmlaq_n_f32(v1557, v775, v755), v772);
            v791 = vornq_s8(vmvnq_s8(vcgezq_f32(v782)), vcgtzq_f32(v776));
            v792 = vmlaq_f32(v760, vmlaq_n_f32(v1568, v778, v756), v776);
            v793 = vmlaq_f32(v761, vmlaq_n_f32(v1557, v778, v755), v776);
            v794 = vmlaq_f32(v1509, vdivq_f32(v1529, v779), v784);
            v795 = vmlaq_f32(v1489, vdivq_f32(v1519, v779), v785);
            v796 = vmlaq_f32(v1509, vdivq_f32(v1529, v780), vmlaq_f32(v760, vmlaq_n_f32(v1568, v774, v756), v771));
            v797 = vmlaq_f32(v1489, vdivq_f32(v1519, v780), vmlaq_f32(v761, vmlaq_n_f32(v1557, v774, v755), v771));
            v798 = vmlaq_f32(v1509, vdivq_f32(v1529, v781), v789);
            v799 = vmlaq_f32(v1489, vdivq_f32(v1519, v781), v790);
            v800 = vdupq_n_s32(0x3A83126Fu);
            v801 = vmulq_f32(v779, v800);
            v802 = vmulq_f32(v780, v800);
            v803 = vmulq_f32(v781, v800);
            v804 = vmulq_f32(v782, v800);
            v805 = vcvtmq_s32_f32(v794);
            v806 = vcvtmq_s32_f32(v795);
            v807 = vcvtmq_s32_f32(v796);
            v808 = vcvtmq_s32_f32(v797);
            v809 = vmlaq_f32(v1489, vdivq_f32(v1519, v782), v793);
            v763 = v783;
            v810 = vcvtmq_s32_f32(v798);
            v811 = vcvtmq_s32_f32(v799);
            v812 = vcvtmq_s32_f32(vmlaq_f32(v1509, vdivq_f32(v1529, v782), v792));
            v813 = vcvtmq_s32_f32(v809);
            v814 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v813, v783), vcgeq_s32(v812, v762)), vcltzq_s32(vorrq_s8(v813, v812))), v791);
            v815 = vdupq_n_s32(0x477FE000u);
            v816 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v806, v783), vcgeq_s32(v805, v762)), vcltzq_s32(vorrq_s8(v806, v805))), v786), 0x1FuLL)), v815, v801);
            v817 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v808, v783), vcgeq_s32(v807, v762)), vcltzq_s32(vorrq_s8(v808, v807))), v787), 0x1FuLL)), v815, v802);
            v818 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v811, v783), vcgeq_s32(v810, v762)), vcltzq_s32(vorrq_s8(v811, v810))), v788), 0x1FuLL)), v815, v803);
            v819 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v814, 0x1FuLL)), v815, v804);
            v754 = v1479;
            v759 = v1499;
            v820 = vmlaq_s32(v807, v808, v1538);
            v821 = vminq_s32(vmaxq_s32(vmlaq_s32(v805, v806, v1538), 0), v764);
            v822 = vminq_s32(vmaxq_s32(v820, 0), v764);
            v823 = vminq_s32(vmaxq_s32(vmlaq_s32(v810, v811, v1538), 0), v764);
            v824 = vminq_s32(vmaxq_s32(vmlaq_s32(v812, v813, v1538), 0), v764);
            v825 = v821.u32[1];
            *v802.i8 = vcvt_f16_f32(v816);
            v737[v821.u32[0]] = fminl(*v802.i16, v737[v821.u32[0]]);
            *v821.i8 = vcvt_f16_f32(v817);
            v737[v822.u32[1]] = fminl(*&v821.i16[1], v737[v822.u32[1]]);
            *v818.f32 = vcvt_f16_f32(v818);
            v737[v823.u32[2]] = fminl(*&v818.i16[2], v737[v823.u32[2]]);
            *v809.f32 = vcvt_f16_f32(v819);
            v737[v824.u32[3]] = fminl(*&v809.i16[3], v737[v824.u32[3]]);
            v737[v825] = fminl(*&v802.i16[1], v737[v825]);
            v737[v822.u32[2]] = fminl(*&v821.i16[2], v737[v822.u32[2]]);
            v737[v823.u32[3]] = fminl(*&v818.i16[3], v737[v823.u32[3]]);
            v737[v824.u32[0]] = fminl(*v809.i16, v737[v824.u32[0]]);
            v737[v821.u32[2]] = fminl(*&v802.i16[2], v737[v821.u32[2]]);
            v737[v822.u32[3]] = fminl(*&v821.i16[3], v737[v822.u32[3]]);
            v737[v823.u32[0]] = fminl(*v818.i16, v737[v823.u32[0]]);
            v737[v824.u32[1]] = fminl(*&v809.i16[1], v737[v824.u32[1]]);
            v737[v821.u32[3]] = fminl(*&v802.i16[3], v737[v821.u32[3]]);
            v737[v822.u32[0]] = fminl(*v821.i16, v737[v822.u32[0]]);
            v737[v823.u32[1]] = fminl(*&v818.i16[1], v737[v823.u32[1]]);
            v737[v824.u32[2]] = fminl(*&v809.i16[2], v737[v824.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v768 = vaddq_f32(v768, _Q0);
            v766 += 4;
            v767 += 16;
          }

          while (v767 < v751);
          v767 = (((v729 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v740 = a14;
          v739 = a15;
          v742 = a12;
          v741 = a13;
          v744 = *&a18;
          v743 = *&a11;
          v745 = *&a16;
          v749 = v1459;
          v750 = v1449;
          v752 = 0.5;
          v753 = v1469;
          v765 = *(&a17 + 1);
        }

        if (v767 < v729)
        {
          do
          {
            _H2 = v766->i16[0];
            __asm { FCVT            S2, H2 }

            v829 = _S2 * 1000.0;
            _Q2 = vaddq_f32(v739, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v742, v749 * (((v767 + v752) - v743) * (_S2 * 1000.0))), v741, v750 * (((v746 + v752) - *(&a11 + 1)) * (_S2 * 1000.0))), v740, _S2 * 1000.0));
            if (_Q2.f32[2] >= 0.0 && v829 > 0.0)
            {
              v831 = (v744 + (_Q2.f32[0] * (v745 / _Q2.f32[2])));
              if ((v831 & 0x80000000) == 0 && v731 > v831)
              {
                _S3 = v765 / _Q2.f32[2];
                __asm { FMLA            S4, S3, V2.S[1] }

                v834 = _S4;
                if ((_S4 & 0x80000000) == 0 && v730 > v834)
                {
                  _S1 = _Q2.f32[2] * 0.001;
                  v836 = &v737[v736 * v834];
                  __asm
                  {
                    FCVT            H1, S1
                    FCMP            H2, #0
                  }

                  if (_ZF || _H2 > _H1)
                  {
                    v836[v831] = _H1;
                  }
                }
              }
            }

            ++v767;
            v766 = (v766 + 2);
          }

          while (v729 != v767);
        }

        ++v746;
        __asm { FMOV            V0.4S, #1.0 }

        v753 = vaddq_f32(v753, _Q0);
      }

      while (v746 != v728);
    }

    v727 = v734;
    if (v738)
    {
      v841 = 0;
      v842 = *&buf.width;
      v843 = buf.width >> 4;
      v844 = buf.data;
      v845 = buf.height;
      if (buf.width >> 4 <= 1)
      {
        v843 = 1;
      }

      if (buf.height <= 1)
      {
        v845 = 1;
      }

      v846 = buf.width & 0xFFFFFFF0;
      do
      {
        v847 = &v844[*(&v842 + 1) * v841];
        v848 = v843;
        if (v842 >= 0x10)
        {
          do
          {
            v849 = v847[2];
            v850 = v847[3];
            v851 = vbic_s8(v847[1], vceq_f16(v847[1], 0x8400840084008400));
            *v847 = vbic_s8(*v847, vceq_f16(*v847, 0x8400840084008400));
            v847[1] = v851;
            v847[2] = vbic_s8(v849, vceq_f16(v849, 0x8400840084008400));
            v847[3] = vbic_s8(v850, vceq_f16(v850, 0x8400840084008400));
            v847 += 4;
            --v848;
          }

          while (v848);
        }

        v852 = v842 & 0xFFFFFFF0;
        if (v846 != v842)
        {
          do
          {
            if (*v847->i16 == COERCE_SHORT_FLOAT(31743))
            {
              v847->i16[0] = 0;
            }

            ++v852;
            v847 = (v847 + 2);
          }

          while (v852 < v842);
        }

        ++v841;
      }

      while (v841 != v845);
    }

    goto LABEL_389;
  }

  if (PixelFormatType <= 1717855599)
  {
    if (PixelFormatType == 825437747)
    {
      v1337 = CVPixelBufferGetHeight(a1);
      v989 = CVPixelBufferGetWidth(a1);
      v990 = CVPixelBufferGetHeight(pixelBuffer);
      v991 = CVPixelBufferGetWidth(pixelBuffer);
      v992 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      CVPixelBufferLockBaseAddress(a2, 0);
      memset(&v1573, 0, sizeof(v1573));
      v993 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1573);
      memset(&buf, 0, sizeof(buf));
      PixelBufferUtils::asVImageBuffer(pixelBuffer, *v993, &buf);
      PixelBufferUtils::asVImageBuffer(v1353, *v993, &v1572);
      v995 = v992 >> 1;
      v1332 = v1572.data;
      v1329 = v1572.rowBytes;
      v996 = buf.data;
      if (v995 * v990)
      {
        memset_pattern16(buf.data, &unk_2404C86B0, 2 * v995 * v990);
      }

      v997 = buf.height;
      if (v1337)
      {
        v998 = 0;
        v999.i32[1] = v1549;
        v1000.i32[1] = HIDWORD(a9);
        v1001 = *&a11;
        v1002 = 1.0 / *&a9;
        v1003 = 1.0 / *&v1549;
        v1004 = v989 & 0xFFFFFFFFFFFFFFF0;
        v1005 = 0.5;
        *v994.i32 = 0.5 - *(&a11 + 1);
        v1006 = vdupq_lane_s32(v994, 0);
        v1008 = a13;
        v1007 = a14;
        *v994.i32 = vmuls_lane_f32(1.0 / *&v1549, a13, 2);
        *v999.i32 = vmuls_lane_f32(1.0 / *&v1549, *a13.f32, 1);
        *v1000.i32 = (1.0 / *&v1549) * a13.f32[0];
        v1310 = vdupq_lane_s32(*a14.i8, 0);
        v1312 = vdupq_lane_s32(v1000, 0);
        v1306 = vdupq_lane_s32(*a14.i8, 1);
        v1308 = vdupq_lane_s32(v999, 0);
        v1304 = vdupq_laneq_s32(a14, 2);
        v1305 = vdupq_lane_s32(v994, 0);
        v1009 = a12;
        v1010 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
        v1011 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
        v1012 = (1.0 / *&a9) * a12.f32[0];
        v1013 = a15;
        v1014 = __PAIR64__(DWORD1(a17), a16);
        v1015 = vdupq_laneq_s32(a15, 2);
        v1016 = vdupq_lane_s32(*a15.i8, 0);
        v1017 = vdupq_lane_s32(*a15.i8, 1);
        v1303 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
        v1018 = v991;
        v1019 = v990;
        v1300 = (((v989 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
        v1020 = vdupq_lane_s32(*&a16, 0);
        v1021 = a18;
        v1022 = vdupq_lane_s32(*&a18, 1);
        v1325 = v1573.data;
        v1322 = v1573.rowBytes;
        v1372 = vdupq_n_s32(v991);
        v1319 = v989;
        v1317 = v995;
        v1315 = 1.0 / *&a9;
        v1481 = v989 & 0xFFFFFFFFFFFFFFF0;
        v1461 = v1015;
        v1471 = v1010;
        v1441 = vdupq_n_s32(LODWORD(buf.height) * v995 - 2);
        v1451 = v1012;
        v1301 = v991;
        v1422 = vdupq_n_s32(v995);
        v1432 = v1020;
        v1402 = v1016;
        v1412 = vdupq_lane_s32(*&a18, 0);
        v1382 = vdupq_lane_s32(*&a17, 1);
        v1392 = vdupq_n_s32(v990);
        do
        {
          v1023 = &v1325[v1322 * v998];
          v1024 = &v1332[v998 * v1329];
          if (v1004)
          {
            v1351 = v998;
            v1025 = 0;
            v1511 = vmlaq_f32(v1310, v1312, v1006);
            v1501 = vmlaq_f32(v1306, v1308, v1006);
            v1343 = v1006;
            v1491 = vmlaq_f32(v1304, v1305, v1006);
            v1026 = v1303;
            do
            {
              v1570 = v1025;
              v1027 = vdupq_n_s32(0x447A0000u);
              v1028 = vmulq_f32(vcvtq_f32_f16(*v1023), v1027);
              v1029 = vmulq_f32(vcvtq_f32_f16(v1023[1]), v1027);
              v1030 = vmulq_f32(vcvtq_f32_f16(v1023[2]), v1027);
              __asm { FMOV            V0.4S, #4.0 }

              v1032 = vaddq_f32(v1026, _Q0);
              _Q0.i64[0] = 0x4100000041000000;
              _Q0.i64[1] = 0x4100000041000000;
              v1033 = vaddq_f32(v1026, _Q0);
              __asm { FMOV            V0.4S, #12.0 }

              v1035 = vaddq_f32(v1026, _Q0);
              v1036 = vmulq_f32(vcvtq_f32_f16(v1023[3]), v1027);
              v1037 = vmlaq_f32(v1015, vmlaq_n_f32(v1491, v1026, v1010), v1028);
              v1038 = vmlaq_f32(v1015, vmlaq_n_f32(v1491, v1032, v1010), v1029);
              v1039 = vmlaq_f32(v1015, vmlaq_n_f32(v1491, v1033, v1010), v1030);
              v1040 = vmlaq_f32(v1015, vmlaq_n_f32(v1491, v1035, v1010), v1036);
              v1041 = v1017;
              v1042 = vmlaq_f32(v1017, vmlaq_n_f32(v1501, v1026, v1011), v1028);
              v1043 = vmlaq_f32(v1017, vmlaq_n_f32(v1501, v1032, v1011), v1029);
              v1044 = vmlaq_f32(v1017, vmlaq_n_f32(v1501, v1033, v1011), v1030);
              v1045 = vmlaq_f32(v1016, vmlaq_n_f32(v1511, v1035, v1012), v1036);
              v1046 = vornq_s8(vmvnq_s8(vcgezq_f32(v1037)), vcgtzq_f32(v1028));
              v1047 = vmlaq_f32(v1017, vmlaq_n_f32(v1501, v1035, v1011), v1036);
              v1048 = vornq_s8(vmvnq_s8(vcgezq_f32(v1038)), vcgtzq_f32(v1029));
              v1049 = vmlaq_f32(v1412, vdivq_f32(v1020, v1037), vmlaq_f32(v1016, vmlaq_n_f32(v1511, v1026, v1012), v1028));
              v1050 = vmlaq_f32(v1022, vdivq_f32(v1382, v1037), v1042);
              v1051 = vmlaq_f32(v1412, vdivq_f32(v1020, v1038), vmlaq_f32(v1016, vmlaq_n_f32(v1511, v1032, v1012), v1029));
              v1052 = vornq_s8(vmvnq_s8(vcgezq_f32(v1039)), vcgtzq_f32(v1030));
              v1053 = vmlaq_f32(v1022, vdivq_f32(v1382, v1038), v1043);
              v1054 = vmlaq_f32(v1412, vdivq_f32(v1020, v1039), vmlaq_f32(v1016, vmlaq_n_f32(v1511, v1033, v1012), v1030));
              v1055 = vdivq_f32(v1382, v1040);
              v1056.i64[0] = 0x4100000041000000;
              v1056.i64[1] = 0x4100000041000000;
              v1057 = vmulq_f32(v1037, v1056);
              v1058 = vmulq_f32(v1038, v1056);
              v1059 = vornq_s8(vmvnq_s8(vcgezq_f32(v1040)), vcgtzq_f32(v1036));
              v1060 = vmulq_f32(v1039, v1056);
              v1061 = vmulq_f32(v1040, v1056);
              v1062 = vcvtmq_s32_f32(v1049);
              v1063 = vcvtmq_s32_f32(v1050);
              v1064 = vcvtmq_s32_f32(v1051);
              v1065 = vcvtmq_s32_f32(v1053);
              v1066 = vcvtmq_s32_f32(v1054);
              v1067 = vmlaq_f32(v1412, vdivq_f32(v1020, v1040), v1045);
              v1017 = v1041;
              v1068 = vcvtmq_s32_f32(vmlaq_f32(v1022, vdivq_f32(v1382, v1039), v1044));
              v1069 = vcvtmq_s32_f32(v1067);
              v1070 = vcvtmq_s32_f32(vmlaq_f32(v1022, v1055, v1047));
              v1071 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1063, v1392), vcgeq_s32(v1062, v1372)), vcltzq_s32(vorrq_s8(v1063, v1062))), v1046);
              v1072 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1065, v1392), vcgeq_s32(v1064, v1372)), vcltzq_s32(vorrq_s8(v1065, v1064))), v1048);
              v1073 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1068, v1392), vcgeq_s32(v1066, v1372)), vcltzq_s32(vorrq_s8(v1068, v1066))), v1052);
              v1074 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1070, v1392), vcgeq_s32(v1069, v1372)), vcltzq_s32(vorrq_s8(v1070, v1069))), v1059);
              v1075 = vdupq_n_s32(0x46FFFE00u);
              v1076 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1071, 0x1FuLL)), v1075, v1057);
              v1077 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1072, 0x1FuLL)), v1075, v1058);
              v1078 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1073, 0x1FuLL)), v1075, v1060);
              v1079 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1074, 0x1FuLL)), v1075, v1061);
              *v1075.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1071), 0xFuLL));
              *v1055.f32 = vorr_s8(vmovn_s32(v1062), *v1075.i8);
              *v1059.i8 = vorr_s8(vmovn_s32(v1063), *v1075.i8);
              *v1071.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1072), 0xFuLL));
              v1041.val[0] = vorr_s8(vmovn_s32(v1064), *v1071.i8);
              *v1075.i8 = vorr_s8(vmovn_s32(v1065), *v1071.i8);
              v1080 = v1024;
              vst2_s16(v1080, v1055);
              v1080 += 8;
              *v1073.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1073), 0xFuLL));
              *v1055.f32 = vorr_s8(vmovn_s32(v1066), *v1073.i8);
              *v1059.i8 = vorr_s8(vmovn_s32(v1068), *v1073.i8);
              v1081 = v1024 + 16;
              vst2_s16(v1081, v1055);
              v1016 = v1402;
              v1020 = v1432;
              vst2_s16(v1080, v1041);
              v1012 = v1451;
              v1015 = v1461;
              *v1073.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1074), 0xFuLL));
              *v1074.i8 = vorr_s8(vmovn_s32(v1069), *v1073.i8);
              v1041.val[0] = vorr_s8(vmovn_s32(v1070), *v1073.i8);
              v1082 = v1024 + 24;
              vst2_s16(v1082, *(&v1041 - 8));
              v1010 = v1471;
              v1083 = vmlaq_s32(v1069, v1070, v1422);
              v1084 = vminq_s32(vmaxq_s32(vmlaq_s32(v1062, v1063, v1422), 0), v1441);
              v1559 = v1084.u32[1];
              v1085 = v1084.i64[1];
              v1086 = v1084.i32[0];
              v1087 = vcvtq_s32_f32(v1076);
              v1088 = v1087.i32[1];
              v1089 = v1087.i32[2];
              v1531 = v1087.i32[3];
              v1090 = v1087.i32[0];
              v1091 = vminq_s32(vmaxq_s32(v1083, 0), v1441);
              v1092 = vcvtq_s32_f32(v1079);
              v1093 = v1091.u32[3];
              v1521 = v1091.u32[1];
              v1094 = v1091.u32[2];
              v1095 = v1091.i32[0];
              v1096 = vminq_s32(vmaxq_s32(vmlaq_s32(v1066, v1068, v1422), 0), v1441);
              v1097 = v1096.u32[2];
              v1098 = v1096.u32[3];
              v1099 = v1096.u32[1];
              v1100 = v1096.i32[0];
              v1101 = vcvtq_s32_f32(v1078);
              v1102 = v1101.i32[2];
              v1103 = v1101.i32[3];
              v1104 = v1101.i32[1];
              v1105 = v1101.i32[0];
              v1106 = vminq_s32(vmaxq_s32(vmlaq_s32(v1064, v1065, v1422), 0), v1441);
              v1107 = v996[v1086];
              v1108 = vcvtq_s32_f32(v1077);
              if (v1090 < v1107)
              {
                LOWORD(v1107) = v1090;
              }

              v996[v1086] = v1107;
              v1109 = v1108.i32[1];
              v1110 = v1024;
              v1111 = v1023;
              v1112 = v1108.i32[2];
              v1113 = v1108.i32[3];
              v1114 = v1108.i32[0];
              __asm { FMOV            V0.4S, #16.0 }

              v1026 = vaddq_f32(v1026, _Q0);
              if (v1109 >= v996[v1106.u32[1]])
              {
                LOWORD(v1109) = v996[v1106.u32[1]];
              }

              v996[v1106.u32[1]] = v1109;
              v1116 = v996[v1097];
              if (v1102 < v1116)
              {
                LOWORD(v1116) = v1102;
              }

              v996[v1097] = v1116;
              v1117 = v996[v1093];
              if (v1092.i32[3] < v1117)
              {
                LOWORD(v1117) = v1092.i16[6];
              }

              v996[v1093] = v1117;
              v1118 = v996[v1559];
              if (v1088 < v1118)
              {
                LOWORD(v1118) = v1088;
              }

              v996[v1559] = v1118;
              v1119 = v996[v1106.u32[2]];
              if (v1112 < v1119)
              {
                LOWORD(v1119) = v1112;
              }

              v996[v1106.u32[2]] = v1119;
              v1120 = v996[v1098];
              if (v1103 < v1120)
              {
                LOWORD(v1120) = v1103;
              }

              v996[v1098] = v1120;
              v1121 = v996[v1095];
              if (v1092.i32[0] < v1121)
              {
                LOWORD(v1121) = v1092.i16[0];
              }

              v996[v1095] = v1121;
              v1122 = v996[v1085];
              if (v1089 < v1122)
              {
                LOWORD(v1122) = v1089;
              }

              v996[v1085] = v1122;
              v1123 = v996[v1106.u32[3]];
              if (v1113 < v1123)
              {
                LOWORD(v1123) = v1113;
              }

              v996[v1106.u32[3]] = v1123;
              v1124 = v996[v1100];
              if (v1105 < v1124)
              {
                LOWORD(v1124) = v1105;
              }

              v996[v1100] = v1124;
              v1125 = v996[v1521];
              if (v1092.i32[1] < v1125)
              {
                LOWORD(v1125) = v1092.i16[2];
              }

              v996[v1521] = v1125;
              v1126 = v996[HIDWORD(v1085)];
              if (v1531 < v1126)
              {
                LOWORD(v1126) = v1531;
              }

              v996[HIDWORD(v1085)] = v1126;
              v1127 = v996[v1106.u32[0]];
              if (v1114 < v1127)
              {
                LOWORD(v1127) = v1114;
              }

              v996[v1106.u32[0]] = v1127;
              v1004 = v1481;
              v1128 = v996[v1099];
              if (v1104 < v1128)
              {
                LOWORD(v1128) = v1104;
              }

              v996[v1099] = v1128;
              v1129 = v996[v1094];
              if (v1092.i32[2] < v1129)
              {
                LOWORD(v1129) = v1092.i16[4];
              }

              v996[v1094] = v1129;
              v1023 = v1111 + 4;
              v1024 = v1110 + 32;
              v1025 = v1570 + 16;
            }

            while (v1570 + 16 < v1481);
            v1130 = v1300;
            v1007 = a14;
            v1013 = a15;
            v1009 = a12;
            v1008 = a13;
            v1021 = a18;
            v1001 = *&a11;
            v1014 = __PAIR64__(DWORD1(a17), a16);
            v989 = v1319;
            v995 = v1317;
            v998 = v1351;
            v1002 = v1315;
            v1003 = 1.0 / *&v1549;
            v1005 = 0.5;
            v1006 = v1343;
            v1019 = v990;
            v1018 = v1301;
          }

          else
          {
            v1130 = 0;
          }

          if (v1130 < v989)
          {
            do
            {
              _H2 = v1023->i16[0];
              __asm { FCVT            S2, H2 }

              v1133 = vaddq_f32(v1013, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v1009, v1002 * (((v1130 + v1005) - v1001) * (_S2 * 1000.0))), v1008, v1003 * (((v998 + v1005) - *(&a11 + 1)) * (_S2 * 1000.0))), v1007, _S2 * 1000.0));
              v1134 = 0xFFFF0000FFFFLL;
              if (*&v1133.i32[2] >= 0.0 && (_S2 * 1000.0) > 0.0)
              {
                v1135 = vcvt_s32_f32(vmla_f32(v1021, vdiv_f32(v1014, vdup_laneq_s32(v1133, 2)), *v1133.i8));
                if ((v1135.i32[0] & 0x80000000) == 0 && v1018 > v1135.i32[0] && (v1135.i32[1] & 0x80000000) == 0 && v1019 > v1135.i32[1])
                {
                  v1136 = vcvts_n_s32_f32(*&v1133.i32[2], 3uLL);
                  v1137 = &v996[v995 * v1135.i32[1]];
                  if ((v1137[v1135.u32[0]] - 1) >= v1136)
                  {
                    v1137[v1135.u32[0]] = v1136;
                  }

                  v1134 = v1135;
                }
              }

              *v1024 = v1134;
              v1024[1] = WORD2(v1134);
              ++v1130;
              v1023 = (v1023 + 2);
              v1024 += 2;
            }

            while (v989 != v1130);
          }

          ++v998;
          __asm { FMOV            V0.4S, #1.0 }

          v1006 = vaddq_f32(v1006, _Q0);
        }

        while (v998 != v1337);
        v997 = buf.height;
      }

      v350 = a1;
      if (v997)
      {
        v1139 = 0;
        v1140 = *&buf.width;
        v1141 = buf.data;
        v1142 = buf.width >> 4;
        if (buf.width >> 4 <= 1)
        {
          v1142 = 1;
        }

        v1143 = buf.width & 0xFFFFFFF0;
        do
        {
          v1144 = &v1141[*(&v1140 + 1) * v1139];
          v1145 = v1142;
          if (v1140 >= 0x10)
          {
            do
            {
              v1146 = v1144[2];
              v1147 = v1144[3];
              v1148 = vbic_s8(v1144[1], vceq_s16(v1144[1], 0x8000800080008000));
              *v1144 = vbic_s8(*v1144, vceq_s16(*v1144, 0x8000800080008000));
              v1144[1] = v1148;
              v1144[2] = vbic_s8(v1146, vceq_s16(v1146, 0x8000800080008000));
              v1144[3] = vbic_s8(v1147, vceq_s16(v1147, 0x8000800080008000));
              v1144 += 4;
              --v1145;
            }

            while (v1145);
          }

          v1149 = v1140 & 0xFFFFFFF0;
          if (v1143 != v1140)
          {
            do
            {
              if (v1144->i16[0] == 0x7FFF)
              {
                v1144->i16[0] = 0;
              }

              ++v1149;
              v1144 = (v1144 + 2);
            }

            while (v1149 < v1140);
          }

          ++v1139;
        }

        while (v1139 != v997);
      }

      goto LABEL_321;
    }

    if (PixelFormatType == 1278226534)
    {
      goto LABEL_124;
    }

    if (PixelFormatType != 1278226536)
    {
      goto LABEL_322;
    }

    goto LABEL_88;
  }

  if (PixelFormatType <= 1751410031)
  {
    if (PixelFormatType != 1717855600)
    {
      if (PixelFormatType == 1717856627)
      {
        v21 = CVPixelBufferGetHeight(a1);
        v22 = CVPixelBufferGetWidth(a1);
        v23 = CVPixelBufferGetHeight(pixelBuffer);
        v24 = CVPixelBufferGetWidth(pixelBuffer);
        v25 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        CVPixelBufferLockBaseAddress(a2, 0);
        memset(&v1573, 0, sizeof(v1573));
        v26 = MEMORY[0x277CBF3A0];
        v27 = a1;
        PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1573);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(pixelBuffer, *v26, &buf);
        PixelBufferUtils::asVImageBuffer(v1353, *v26, &v1572);
        v28 = v1572.data;
        v29 = v1572.rowBytes;
        v31 = buf.data;
        v30 = buf.height;
        bzero(buf.data, buf.height * buf.rowBytes);
        v35 = a14;
        v34 = a15;
        v37 = a12;
        v36 = a13;
        v39 = a18;
        v38 = *&a11;
        v40.i32[0] = a16;
        if (v21)
        {
          v41 = 0;
          v42.i32[1] = v1549;
          v43 = 1.0 / *&a9;
          v44 = 1.0 / *&v1549;
          v45 = 0.5;
          *v32.i32 = 0.5 - *(&a11 + 1);
          v46 = vdupq_lane_s32(v32, 0);
          v47 = v22 & 0xFFFFFFFFFFFFFFF0;
          *v32.i32 = vmuls_lane_f32(1.0 / *&v1549, a13, 2);
          *v42.i32 = vmuls_lane_f32(1.0 / *&v1549, *a13.f32, 1);
          *v33.i32 = (1.0 / *&v1549) * a13.f32[0];
          v1404 = vdupq_lane_s32(*a14.i8, 0);
          v1414 = vdupq_lane_s32(v33, 0);
          v1384 = vdupq_lane_s32(*a14.i8, 1);
          v1394 = vdupq_lane_s32(v42, 0);
          v1365 = vdupq_laneq_s32(a14, 2);
          v1374 = vdupq_lane_s32(v32, 0);
          v48 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
          v49 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
          v50 = (1.0 / *&a9) * a12.f32[0];
          v1345 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
          v51 = vdupq_laneq_s32(a15, 2);
          v52 = vdupq_lane_s32(*a15.i8, 0);
          v53 = vdupq_lane_s32(*a15.i8, 1);
          v54 = vdupq_n_s32(v24);
          v55 = vdupq_n_s32(v23);
          v56 = vdupq_lane_s32(*&a16, 0);
          v40.i32[1] = DWORD1(a17);
          v57 = v1573.data;
          v58 = v1573.rowBytes;
          v59.i64[0] = 0x4100000041000000;
          v59.i64[1] = 0x4100000041000000;
          v1363 = v40;
          v1434 = 1.0 / *&a9;
          v1424 = 1.0 / *&v1549;
          v1503 = v48;
          v1513 = v51;
          v1483 = vdupq_n_s32(v25 >> 2);
          v1493 = vdupq_n_s32(v30 * (v25 >> 2) - 4);
          v1463 = vdupq_lane_s32(*&a18, 0);
          v1473 = vdupq_lane_s32(*&a17, 1);
          v1453 = vdupq_lane_s32(*&a18, 1);
          do
          {
            v60 = &v57[v58 * v41];
            v61 = &v28[v41 * v29];
            v62 = 0;
            if (v47)
            {
              v1540 = vmlaq_f32(v1404, v1414, v46);
              v1532 = vmlaq_f32(v1384, v1394, v46);
              v1443 = v46;
              v1523 = vmlaq_f32(v1365, v1374, v46);
              v63 = v1345;
              do
              {
                v1562 = v63;
                v64 = vdupq_n_s32(0x447A0000u);
                v65 = vmulq_f32(vcvtq_f32_f16(*v60), v64);
                v66 = vmulq_f32(vcvtq_f32_f16(v60[1]), v64);
                __asm { FMOV            V1.4S, #4.0 }

                v71 = vaddq_f32(v63, _Q1);
                v72 = vaddq_f32(v63, v59);
                v73 = vmulq_f32(vcvtq_f32_f16(v60[2]), v64);
                __asm { FMOV            V1.4S, #12.0 }

                v75 = vaddq_f32(v1562, _Q1);
                v76 = vmulq_f32(vcvtq_f32_f16(v60[3]), v64);
                v77 = vmlaq_f32(v51, vmlaq_n_f32(v1523, v1562, v48), v65);
                v78 = vmlaq_f32(v51, vmlaq_n_f32(v1523, v71, v48), v66);
                v79 = vmlaq_f32(v51, vmlaq_n_f32(v1523, v72, v48), v73);
                v80 = vmlaq_f32(v51, vmlaq_n_f32(v1523, v75, v48), v76);
                v81 = vmlaq_f32(v52, vmlaq_n_f32(v1540, v1562, v50), v65);
                v82 = vmlaq_f32(v53, vmlaq_n_f32(v1532, v1562, v49), v65);
                v83 = vornq_s8(vmvnq_s8(vcgezq_f32(v77)), vcgtzq_f32(v65));
                v84 = vmlaq_f32(v52, vmlaq_n_f32(v1540, v72, v50), v73);
                v85 = v54;
                v86 = vmlaq_f32(v53, vmlaq_n_f32(v1532, v72, v49), v73);
                v87 = vornq_s8(vmvnq_s8(vcgezq_f32(v78)), vcgtzq_f32(v66));
                v1551 = v77;
                v88 = vmlaq_f32(v1463, vdivq_f32(v56, v77), v81);
                v89 = vornq_s8(vmvnq_s8(vcgezq_f32(v79)), vcgtzq_f32(v73));
                v90 = vcvtmq_s32_f32(v88);
                v91 = vcvtmq_s32_f32(vmlaq_f32(v1453, vdivq_f32(v1473, v77), v82));
                v92 = vcvtmq_s32_f32(vmlaq_f32(v1463, vdivq_f32(v56, v78), vmlaq_f32(v52, vmlaq_n_f32(v1540, v71, v50), v66)));
                v93 = vcvtmq_s32_f32(vmlaq_f32(v1453, vdivq_f32(v1473, v78), vmlaq_f32(v53, vmlaq_n_f32(v1532, v71, v49), v66)));
                v94 = vcvtmq_s32_f32(vmlaq_f32(v1463, vdivq_f32(v56, v79), v84));
                v95 = vmlaq_f32(v1453, vdivq_f32(v1473, v79), v86);
                v54 = v85;
                v96 = vcvtmq_s32_f32(v95);
                v97 = vcvtmq_s32_f32(vmlaq_f32(v1463, vdivq_f32(v56, v80), vmlaq_f32(v52, vmlaq_n_f32(v1540, v75, v50), v76)));
                v59.i64[0] = 0x4100000041000000;
                v59.i64[1] = 0x4100000041000000;
                v98 = vcvtmq_s32_f32(vmlaq_f32(v1453, vdivq_f32(v1473, v80), vmlaq_f32(v53, vmlaq_n_f32(v1532, v75, v49), v76)));
                v99 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v91, v55), vcgeq_s32(v90, v85)), vcltzq_s32(vorrq_s8(v91, v90))), v83);
                v100 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v93, v55), vcgeq_s32(v92, v85)), vcltzq_s32(vorrq_s8(v93, v92))), v87);
                v101 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v96, v55), vcgeq_s32(v94, v85)), vcltzq_s32(vorrq_s8(v96, v94))), v89);
                *v95.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v99), 0xFuLL));
                v83.val[0] = vorr_s8(vmovn_s32(v90), *v95.f32);
                v102 = vorr_s8(vmovn_s32(v91), *v95.f32);
                v103 = v61;
                vst2_s16(v103, v83);
                v103 += 8;
                v104 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v98, v55), vcgeq_s32(v97, v85)), vcltzq_s32(vorrq_s8(v98, v97))), vornq_s8(vmvnq_s8(vcgezq_f32(v80)), vcgtzq_f32(v76)));
                *v89.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v100), 0xFuLL));
                v83.val[0] = vorr_s8(vmovn_s32(v92), *v89.i8);
                v105 = vorr_s8(vmovn_s32(v93), *v89.i8);
                vst2_s16(v103, v83);
                *v82.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v101), 0xFuLL));
                v83.val[0] = vorr_s8(vmovn_s32(v94), *v82.f32);
                v106 = vorr_s8(vmovn_s32(v96), *v82.f32);
                v107 = v61 + 16;
                vst2_s16(v107, v83);
                *v89.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v104), 0xFuLL));
                v83.val[0] = vorr_s8(vmovn_s32(v97), *v89.i8);
                v108 = vorr_s8(vmovn_s32(v98), *v89.i8);
                v48 = v1503;
                v109 = v61 + 24;
                vst2_s16(v109, v83);
                v110 = vdivq_f32(v64, v79);
                v111 = vdivq_f32(v64, v80);
                v112 = vminq_s32(vmaxq_s32(vmlaq_s32(v90, v91, v1483), 0), v1493);
                v113 = v112.u32[1];
                LODWORD(v109) = v112.i32[2];
                v114 = v112.u32[3];
                v115 = v112.i32[0];
                v116 = vandq_s8(vdivq_f32(v64, v1551), vcgezq_s32(vshlq_n_s32(v99, 0x1FuLL)));
                v51 = v1513;
                v117 = vminq_s32(vmaxq_s32(vmlaq_s32(v92, v93, v1483), 0), v1493);
                v31[v115] = fmaxf(*v116.i32, v31[v115]);
                v118 = vandq_s8(vdivq_f32(v64, v78), vcgezq_s32(vshlq_n_s32(v100, 0x1FuLL)));
                v31[v117.u32[1]] = fmaxf(*&v118.i32[1], v31[v117.u32[1]]);
                v119 = vminq_s32(vmaxq_s32(vmlaq_s32(v94, v96, v1483), 0), v1493);
                v120 = vandq_s8(v110, vcgezq_s32(vshlq_n_s32(v101, 0x1FuLL)));
                v121 = vminq_s32(vmaxq_s32(vmlaq_s32(v97, v98, v1483), 0), v1493);
                v31[v119.u32[2]] = fmaxf(*&v120.i32[2], v31[v119.u32[2]]);
                v122 = vandq_s8(v111, vcgezq_s32(vshlq_n_s32(v104, 0x1FuLL)));
                v31[v121.u32[3]] = fmaxf(*&v122.i32[3], v31[v121.u32[3]]);
                v31[v113] = fmaxf(*&v116.i32[1], v31[v113]);
                v31[v117.u32[2]] = fmaxf(*&v118.i32[2], v31[v117.u32[2]]);
                v31[v119.u32[3]] = fmaxf(*&v120.i32[3], v31[v119.u32[3]]);
                v31[v121.u32[0]] = fmaxf(*v122.i32, v31[v121.u32[0]]);
                v31[v109] = fmaxf(*&v116.i32[2], v31[v109]);
                v31[v117.u32[3]] = fmaxf(*&v118.i32[3], v31[v117.u32[3]]);
                v31[v119.u32[0]] = fmaxf(*v120.i32, v31[v119.u32[0]]);
                v31[v121.u32[1]] = fmaxf(*&v122.i32[1], v31[v121.u32[1]]);
                v31[v114] = fmaxf(*&v116.i32[3], v31[v114]);
                v31[v117.u32[0]] = fmaxf(*v118.i32, v31[v117.u32[0]]);
                v31[v119.u32[1]] = fmaxf(*&v120.i32[1], v31[v119.u32[1]]);
                v31[v121.u32[2]] = fmaxf(*&v122.i32[2], v31[v121.u32[2]]);
                __asm { FMOV            V0.4S, #16.0 }

                v63 = vaddq_f32(v1562, _Q0);
                v60 += 4;
                v61 += 32;
                v62 += 16;
              }

              while (v62 < v47);
              v62 = (((v22 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
              v35 = a14;
              v34 = a15;
              v37 = a12;
              v36 = a13;
              v39 = a18;
              v38 = *&a11;
              v40 = v1363;
              v43 = v1434;
              v44 = v1424;
              v45 = 0.5;
              v46 = v1443;
            }

            if (v62 < v22)
            {
              do
              {
                _H2 = v60->i16[0];
                __asm { FCVT            S2, H2 }

                v126 = _S2 * 1000.0;
                v127 = vaddq_f32(v34, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v37, v43 * (((v62 + v45) - v38) * v126)), v36, v44 * (((v41 + v45) - *(&a11 + 1)) * v126)), v35, v126));
                v128 = 0xFFFF0000FFFFLL;
                if (*&v127.i32[2] >= 0.0 && v126 > 0.0)
                {
                  v129 = vcvt_s32_f32(vmla_f32(v39, vdiv_f32(v40, vdup_laneq_s32(v127, 2)), *v127.i8));
                  if ((v129.i32[0] & 0x80000000) == 0 && v24 > v129.i32[0] && (v129.i32[1] & 0x80000000) == 0 && v23 > v129.i32[1])
                  {
                    v130 = 1000.0 / *&v127.i32[2];
                    v131 = &v31[(v25 >> 2) * v129.i32[1]];
                    v132 = v131[v129.u32[0]];
                    if (v132 == 0.0 || v132 < v130)
                    {
                      v131[v129.u32[0]] = v130;
                    }

                    v128 = v129;
                  }
                }

                *v61 = v128;
                v61[1] = WORD2(v128);
                ++v62;
                v60 = (v60 + 2);
                v61 += 2;
              }

              while (v22 != v62);
            }

            ++v41;
            __asm { FMOV            V0.4S, #1.0 }

            v46 = vaddq_f32(v46, _Q0);
          }

          while (v41 != v21);
        }

LABEL_83:
        v350 = v27;
LABEL_321:
        CVPixelBufferUnlockBaseAddress(v350, 1uLL);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        v1150 = v1353;
LABEL_390:
        CVPixelBufferUnlockBaseAddress(v1150, 0);
        return 0;
      }

      goto LABEL_322;
    }

LABEL_124:
    v484 = CVPixelBufferGetHeight(a1);
    v485 = CVPixelBufferGetWidth(a1);
    v486 = CVPixelBufferGetHeight(pixelBuffer);
    v487 = CVPixelBufferGetWidth(pixelBuffer);
    v488 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&v1573, 0, sizeof(v1573));
    v489 = MEMORY[0x277CBF3A0];
    v490 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1573);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v489, &buf);
    PixelBufferUtils::asVImageBuffer(v1353, *v489, &v1572);
    v492 = v488 >> 2;
    v493 = v1572.data;
    v494 = v1572.rowBytes;
    v495 = buf.data;
    if (v492 * v486)
    {
      memset_pattern16(buf.data, &unk_2404C8690, 4 * v492 * v486);
    }

    v496 = buf.height;
    if (v484)
    {
      v497 = 0;
      v498.i32[1] = v1549;
      v499.i32[1] = HIDWORD(a9);
      v500 = *&a11;
      v501 = 1.0 / *&a9;
      v502 = 1.0 / *&v1549;
      v503 = v485 & 0xFFFFFFFFFFFFFFF0;
      v504 = 0.5;
      *v491.i32 = 0.5 - *(&a11 + 1);
      v505 = vdupq_lane_s32(v491, 0);
      v507 = a13;
      v506 = a14;
      *v491.i32 = vmuls_lane_f32(1.0 / *&v1549, a13, 2);
      *v498.i32 = vmuls_lane_f32(1.0 / *&v1549, *a13.f32, 1);
      *v499.i32 = (1.0 / *&v1549) * a13.f32[0];
      v1369 = vdupq_lane_s32(*a14.i8, 0);
      v1378 = vdupq_lane_s32(v499, 0);
      v1341 = vdupq_lane_s32(*a14.i8, 1);
      v1349 = vdupq_lane_s32(v498, 0);
      v1331 = vdupq_laneq_s32(a14, 2);
      v1336 = vdupq_lane_s32(v491, 0);
      v508 = a12;
      v509 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v510 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      v511 = (1.0 / *&a9) * a12.f32[0];
      v1328 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v512 = a15;
      v513 = __PAIR64__(DWORD1(a17), a16);
      v514 = vdupq_laneq_s32(a15, 2);
      v515 = vdupq_lane_s32(*a15.i8, 0);
      v516 = vdupq_lane_s32(*a15.i8, 1);
      v1467 = vdupq_n_s32(v486);
      v517 = a18;
      v518 = v1573.data;
      v519 = v1573.rowBytes;
      v520.i64[0] = 0x4100000041000000;
      v520.i64[1] = 0x4100000041000000;
      v521.i64[0] = 0x80000000800000;
      v521.i64[1] = 0x80000000800000;
      v1398 = 1.0 / *&a9;
      v1388 = 1.0 / *&v1549;
      v1517 = vdupq_n_s32(LODWORD(buf.height) * v492 - 4);
      v1527 = v509;
      v1566 = vnegq_f32(v521);
      v1497 = v511;
      v1507 = vdupq_lane_s32(*&a18, 1);
      v1477 = vdupq_n_s32(v492);
      v1487 = vdupq_lane_s32(*&a18, 0);
      v1447 = v510;
      v1457 = vdupq_lane_s32(*&a17, 1);
      v1428 = vdupq_lane_s32(*&a16, 0);
      v1437 = vdupq_n_s32(v487);
      v1418 = v514;
      do
      {
        v522 = &v518[v519 * v497];
        v523 = &v493[v497 * v494];
        v524 = 0;
        if (v503)
        {
          v1555 = vmlaq_f32(v1369, v1378, v505);
          v1544 = vmlaq_f32(v1341, v1349, v505);
          v1408 = v505;
          v1536 = vmlaq_f32(v1331, v1336, v505);
          v525 = v1328;
          do
          {
            v526 = vdupq_n_s32(0x447A0000u);
            v527 = vmulq_f32(vcvtq_f32_f16(*v522), v526);
            v528 = vmulq_f32(vcvtq_f32_f16(v522[1]), v526);
            v529 = vmulq_f32(vcvtq_f32_f16(v522[2]), v526);
            __asm { FMOV            V0.4S, #4.0 }

            v531 = vaddq_f32(v525, _Q0);
            v532 = vaddq_f32(v525, v520);
            __asm { FMOV            V0.4S, #12.0 }

            v534 = vaddq_f32(v525, _Q0);
            v535 = vmulq_f32(vcvtq_f32_f16(v522[3]), v526);
            v536 = vmlaq_f32(v514, vmlaq_n_f32(v1536, v525, v509), v527);
            v537 = vmlaq_f32(v514, vmlaq_n_f32(v1536, v531, v509), v528);
            v538 = vmlaq_f32(v514, vmlaq_n_f32(v1536, v532, v509), v529);
            v539 = vmlaq_f32(v514, vmlaq_n_f32(v1536, v534, v509), v535);
            v540 = vcgtzq_f32(v535);
            v541 = vmlaq_f32(v516, vmlaq_n_f32(v1544, v525, v510), v527);
            v542 = vmlaq_f32(v515, vmlaq_n_f32(v1555, v531, v511), v528);
            v543 = vmlaq_f32(v516, vmlaq_n_f32(v1544, v531, v510), v528);
            v544 = vmlaq_f32(v515, vmlaq_n_f32(v1555, v532, v511), v529);
            v545 = vmlaq_f32(v516, vmlaq_n_f32(v1544, v532, v510), v529);
            v546 = vmlaq_f32(v515, vmlaq_n_f32(v1555, v534, v511), v535);
            v547 = vmlaq_f32(v516, vmlaq_n_f32(v1544, v534, v510), v535);
            v548 = vornq_s8(vmvnq_s8(vcgezq_f32(v537)), vcgtzq_f32(v528));
            v549 = vmlaq_f32(v1487, vdivq_f32(v1428, v537), v542);
            v550 = vornq_s8(vmvnq_s8(vcgezq_f32(v538)), vcgtzq_f32(v529));
            v551 = v516;
            v552 = v515;
            v553 = vcvtmq_s32_f32(vmlaq_f32(v1487, vdivq_f32(v1428, v536), vmlaq_f32(v515, vmlaq_n_f32(v1555, v525, v511), v527)));
            v554 = vcvtmq_s32_f32(vmlaq_f32(v1507, vdivq_f32(v1457, v536), v541));
            v555 = vcvtmq_s32_f32(v549);
            v556 = vcvtmq_s32_f32(vmlaq_f32(v1507, vdivq_f32(v1457, v537), v543));
            v557 = vcvtmq_s32_f32(vmlaq_f32(v1487, vdivq_f32(v1428, v538), v544));
            v558 = vcvtmq_s32_f32(vmlaq_f32(v1507, vdivq_f32(v1457, v538), v545));
            v559 = vcvtmq_s32_f32(vmlaq_f32(v1487, vdivq_f32(v1428, v539), v546));
            v560 = vcvtmq_s32_f32(vmlaq_f32(v1507, vdivq_f32(v1457, v539), v547));
            v561 = vornq_s8(vmvnq_s8(vcgezq_f32(v539)), v540);
            v562 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v554, v1467), vcgeq_s32(v553, v1437)), vcltzq_s32(vorrq_s8(v554, v553))), vornq_s8(vmvnq_s8(vcgezq_f32(v536)), vcgtzq_f32(v527)));
            v563 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v556, v1467), vcgeq_s32(v555, v1437)), vcltzq_s32(vorrq_s8(v556, v555))), v548);
            v564 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v558, v1467), vcgeq_s32(v557, v1437)), vcltzq_s32(vorrq_s8(v558, v557))), v550);
            v565 = vcltz_s16(vshl_n_s16(vmovn_s32(v562), 0xFuLL));
            *v547.f32 = vorr_s8(vmovn_s32(v553), v565);
            v566 = vorr_s8(vmovn_s32(v554), v565);
            v514 = v1418;
            v567 = v523;
            vst2_s16(v567, v547);
            v567 += 8;
            v515 = v552;
            v516 = v551;
            v568 = vcltz_s16(vshl_n_s16(vmovn_s32(v563), 0xFuLL));
            v569 = vorr_s8(vmovn_s32(v555), v568);
            *v547.f32 = vorr_s8(vmovn_s32(v556), v568);
            v570 = vcltz_s16(vshl_n_s16(vmovn_s32(v564), 0xFuLL));
            *v550.i8 = vorr_s8(vmovn_s32(v557), v570);
            *v544.f32 = vorr_s8(vmovn_s32(v558), v570);
            v571 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v560, v1467), vcgeq_s32(v559, v1437)), vcltzq_s32(vorrq_s8(v560, v559))), v561);
            v572 = v523 + 16;
            vst2_s16(v572, *(&v544 - 8));
            vst2_s16(v567, *(&v547 - 8));
            v573 = vcltz_s16(vshl_n_s16(vmovn_s32(v571), 0xFuLL));
            v574 = vorr_s8(vmovn_s32(v559), v573);
            *v547.f32 = vorr_s8(vmovn_s32(v560), v573);
            v575 = v523 + 24;
            vst2_s16(v575, *(&v547 - 8));
            v511 = v1497;
            v510 = v1447;
            v520.i64[0] = 0x4100000041000000;
            v520.i64[1] = 0x4100000041000000;
            v576 = vdupq_n_s32(0x3A83126Fu);
            v577 = vmulq_f32(v536, v576);
            v578 = vmulq_f32(v537, v576);
            v579 = vmulq_f32(v538, v576);
            v580 = vmlaq_s32(v557, v558, v1477);
            v581 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v562, 0x1FuLL)), v1566, v577);
            v582 = vminq_s32(vmaxq_s32(vmlaq_s32(v553, v554, v1477), 0), v1517);
            v583 = vminq_s32(vmaxq_s32(vmlaq_s32(v555, v556, v1477), 0), v1517);
            v584 = v582.u32[1];
            LODWORD(v575) = v582.i32[2];
            v585 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v563, 0x1FuLL)), v1566, v578);
            v509 = v1527;
            LODWORD(v572) = v582.i32[3];
            v495[v582.u32[0]] = fminf(*v581.i32, v495[v582.u32[0]]);
            v586 = vminq_s32(vmaxq_s32(v580, 0), v1517);
            v495[v583.u32[1]] = fminf(*&v585.i32[1], v495[v583.u32[1]]);
            v587 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v564, 0x1FuLL)), v1566, v579);
            v588 = vminq_s32(vmaxq_s32(vmlaq_s32(v559, v560, v1477), 0), v1517);
            v495[v586.u32[2]] = fminf(*&v587.i32[2], v495[v586.u32[2]]);
            v589 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v571, 0x1FuLL)), v1566, vmulq_f32(v539, v576));
            v495[v588.u32[3]] = fminf(*&v589.i32[3], v495[v588.u32[3]]);
            v495[v584] = fminf(*&v581.i32[1], v495[v584]);
            v495[v583.u32[2]] = fminf(*&v585.i32[2], v495[v583.u32[2]]);
            v495[v586.u32[3]] = fminf(*&v587.i32[3], v495[v586.u32[3]]);
            v495[v588.u32[0]] = fminf(*v589.i32, v495[v588.u32[0]]);
            v495[v575] = fminf(*&v581.i32[2], v495[v575]);
            v495[v583.u32[3]] = fminf(*&v585.i32[3], v495[v583.u32[3]]);
            v495[v586.u32[0]] = fminf(*v587.i32, v495[v586.u32[0]]);
            v495[v588.u32[1]] = fminf(*&v589.i32[1], v495[v588.u32[1]]);
            v495[v572] = fminf(*&v581.i32[3], v495[v572]);
            v495[v583.u32[0]] = fminf(*v585.i32, v495[v583.u32[0]]);
            v495[v586.u32[1]] = fminf(*&v587.i32[1], v495[v586.u32[1]]);
            v495[v588.u32[2]] = fminf(*&v589.i32[2], v495[v588.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v525 = vaddq_f32(v525, _Q0);
            v522 += 4;
            v523 += 32;
            v524 += 16;
          }

          while (v524 < v503);
          v524 = (((v485 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v506 = a14;
          v512 = a15;
          v508 = a12;
          v507 = a13;
          v517 = a18;
          v500 = *&a11;
          v513 = __PAIR64__(DWORD1(a17), a16);
          v501 = v1398;
          v502 = v1388;
          v504 = 0.5;
          v505 = v1408;
        }

        if (v524 < v485)
        {
          do
          {
            _H2 = v522->i16[0];
            __asm { FCVT            S2, H2 }

            v593 = _S2 * 1000.0;
            v594 = vaddq_f32(v512, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v508, v501 * (((v524 + v504) - v500) * v593)), v507, v502 * (((v497 + v504) - *(&a11 + 1)) * v593)), v506, v593));
            v595 = 0xFFFF0000FFFFLL;
            if (*&v594.i32[2] >= 0.0 && v593 > 0.0)
            {
              v596 = vcvt_s32_f32(vmla_f32(v517, vdiv_f32(v513, vdup_laneq_s32(v594, 2)), *v594.i8));
              if ((v596.i32[0] & 0x80000000) == 0 && v487 > v596.i32[0] && (v596.i32[1] & 0x80000000) == 0 && v486 > v596.i32[1])
              {
                v597 = *&v594.i32[2] * 0.001;
                v598 = &v495[v492 * v596.i32[1]];
                v599 = v598[v596.u32[0]];
                if (v599 == 0.0 || v599 > v597)
                {
                  v598[v596.u32[0]] = v597;
                }

                v595 = v596;
              }
            }

            *v523 = v595;
            v523[1] = WORD2(v595);
            ++v524;
            v522 = (v522 + 2);
            v523 += 2;
          }

          while (v485 != v524);
        }

        ++v497;
        __asm { FMOV            V0.4S, #1.0 }

        v505 = vaddq_f32(v505, _Q0);
      }

      while (v497 != v484);
      v496 = buf.height;
    }

    v350 = v490;
    if (v496)
    {
      v602 = 0;
      v603 = *&buf.width;
      v604 = buf.data;
      v605 = buf.width >> 4;
      if (buf.width >> 4 <= 1)
      {
        v605 = 1;
      }

      v606 = buf.width & 0xFFFFFFF0;
      v607.i64[0] = 0x80000000800000;
      v607.i64[1] = 0x80000000800000;
      v608 = vnegq_f32(v607);
      do
      {
        v609 = &v604[*(&v603 + 1) * v602];
        v610 = v605;
        if (v603 >= 0x10)
        {
          do
          {
            v611 = v609[2];
            v612 = v609[3];
            v613 = vbicq_s8(v609[1], vceqq_f32(v609[1], v608));
            *v609 = vbicq_s8(*v609, vceqq_f32(*v609, v608));
            v609[1] = v613;
            v609[2] = vbicq_s8(v611, vceqq_f32(v611, v608));
            v609[3] = vbicq_s8(v612, vceqq_f32(v612, v608));
            v609 += 4;
            --v610;
          }

          while (v610);
        }

        v614 = v603 & 0xFFFFFFF0;
        if (v606 != v603)
        {
          do
          {
            if (v609->f32[0] == 3.4028e38)
            {
              v609->i32[0] = 0;
            }

            ++v614;
            v609 = (v609 + 4);
          }

          while (v614 < v603);
        }

        ++v602;
      }

      while (v602 != v496);
    }

    goto LABEL_321;
  }

  if (PixelFormatType == 1751410032)
  {
LABEL_88:
    v351 = CVPixelBufferGetHeight(a1);
    v352 = CVPixelBufferGetWidth(a1);
    v353 = CVPixelBufferGetHeight(pixelBuffer);
    v354 = CVPixelBufferGetWidth(pixelBuffer);
    v355 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&v1573, 0, sizeof(v1573));
    v356 = MEMORY[0x277CBF3A0];
    v357 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1573);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v356, &buf);
    PixelBufferUtils::asVImageBuffer(v1353, *v356, &v1572);
    v360 = v355 >> 1;
    v361 = v1572.data;
    v362 = v1572.rowBytes;
    v363 = buf.data;
    if (v360 * v353)
    {
      memset_pattern16(buf.data, &unk_2404C86A0, 2 * v360 * v353);
    }

    v364 = buf.height;
    if (v351)
    {
      v365 = 0;
      v366.i32[1] = v1549;
      v367.i32[1] = HIDWORD(a9);
      v368 = *&a11;
      v369 = 1.0 / *&a9;
      v370 = 1.0 / *&v1549;
      v371 = v352 & 0xFFFFFFFFFFFFFFF0;
      v372 = 0.5;
      *v358.i32 = 0.5 - *(&a11 + 1);
      v373 = vdupq_lane_s32(v358, 0);
      v375 = a13;
      v374 = a14;
      *v358.i32 = vmuls_lane_f32(1.0 / *&v1549, a13, 2);
      *v366.i32 = vmuls_lane_f32(1.0 / *&v1549, *a13.f32, 1);
      *v367.i32 = (1.0 / *&v1549) * a13.f32[0];
      v1387 = vdupq_lane_s32(*a14.i8, 0);
      v1397 = vdupq_lane_s32(v367, 0);
      v1368 = vdupq_lane_s32(*a14.i8, 1);
      v1377 = vdupq_lane_s32(v366, 0);
      v1340 = vdupq_laneq_s32(a14, 2);
      v1348 = vdupq_lane_s32(v358, 0);
      v376 = a12;
      v377 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v378 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      *&v359 = (1.0 / *&a9) * a12.f32[0];
      v379 = a15;
      v380 = __PAIR64__(DWORD1(a17), a16);
      v381 = vdupq_laneq_s32(a15, 2);
      v382 = vdupq_lane_s32(*a15.i8, 0);
      v383 = vdupq_lane_s32(*a15.i8, 1);
      v1436 = vdupq_n_s32(v354);
      v384 = vdupq_n_s32(v353);
      v1456 = vdupq_n_s32(LODWORD(buf.height) * v360 - 2);
      v1335 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v385 = a18;
      v386 = v1573.data;
      v387 = v1573.rowBytes;
      v1417 = 1.0 / *&a9;
      v1407 = 1.0 / *&v1549;
      v1516 = vdupq_n_s32(v360);
      v1526 = v377;
      v1496 = vdupq_lane_s32(*&a18, 1);
      v1506 = v382;
      v1476 = vdupq_lane_s32(*&a17, 1);
      v1486 = v378;
      v1466 = vdupq_lane_s32(*&a16, 0);
      v1446 = vdupq_lane_s32(*&a18, 0);
      do
      {
        v388 = &v386[v387 * v365];
        v389 = &v361[v365 * v362];
        v390 = 0;
        if (v371)
        {
          v1554 = vmlaq_f32(v1387, v1397, v373);
          v1543 = vmlaq_f32(v1368, v1377, v373);
          v1427 = v373;
          v1535 = vmlaq_f32(v1340, v1348, v373);
          v391 = v1335;
          do
          {
            v1565 = v391;
            v392 = v382;
            v393 = vdupq_n_s32(0x447A0000u);
            v394 = vmulq_f32(vcvtq_f32_f16(*v388), v393);
            v395 = vmulq_f32(vcvtq_f32_f16(v388[1]), v393);
            v396 = vmulq_f32(vcvtq_f32_f16(v388[2]), v393);
            __asm { FMOV            V0.4S, #4.0 }

            v398 = vaddq_f32(v391, _Q0);
            _Q0.i64[0] = 0x4100000041000000;
            _Q0.i64[1] = 0x4100000041000000;
            v399 = vaddq_f32(v391, _Q0);
            __asm { FMOV            V0.4S, #12.0 }

            v401 = vaddq_f32(v391, _Q0);
            v402 = vmulq_f32(vcvtq_f32_f16(v388[3]), v393);
            v403 = vmlaq_f32(v381, vmlaq_n_f32(v1535, v1565, v377), v394);
            v404 = vmlaq_f32(v381, vmlaq_n_f32(v1535, v398, v377), v395);
            v405 = vmlaq_f32(v381, vmlaq_n_f32(v1535, v399, v377), v396);
            v406 = vmlaq_f32(v381, vmlaq_n_f32(v1535, v401, v377), v402);
            v407 = vcgtzq_f32(v396);
            v408 = v359;
            v409 = v383;
            v410 = vmlaq_f32(v383, vmlaq_n_f32(v1543, v398, v378), v395);
            v411 = vmlaq_f32(v383, vmlaq_n_f32(v1543, v399, v378), v396);
            v412 = vmlaq_f32(v1446, vdivq_f32(v1466, v403), vmlaq_f32(v392, vmlaq_n_f32(v1554, v1565, *&v359), v394));
            v413 = vmlaq_f32(v1496, vdivq_f32(v1476, v403), vmlaq_f32(v383, vmlaq_n_f32(v1543, v1565, v378), v394));
            v414 = vmlaq_f32(v1446, vdivq_f32(v1466, v404), vmlaq_f32(v392, vmlaq_n_f32(v1554, v398, *&v359), v395));
            v415 = vmlaq_f32(v1496, vdivq_f32(v1476, v404), v410);
            v416 = vmlaq_f32(v392, vmlaq_n_f32(v1554, v401, *&v359), v402);
            v417 = vmlaq_f32(v409, vmlaq_n_f32(v1543, v401, v378), v402);
            v418 = vcgtzq_f32(v402);
            v419 = vornq_s8(vmvnq_s8(vcgezq_f32(v403)), vcgtzq_f32(v394));
            v420 = vmlaq_f32(v1446, vdivq_f32(v1466, v405), vmlaq_f32(v392, vmlaq_n_f32(v1554, v399, *&v359), v396));
            v421 = vmvnq_s8(vcgezq_f32(v406));
            v422 = vornq_s8(vmvnq_s8(vcgezq_f32(v404)), vcgtzq_f32(v395));
            v423 = vmlaq_f32(v1496, vdivq_f32(v1476, v405), v411);
            v424 = v409;
            v425 = vdivq_f32(v1466, v406);
            v426 = vdupq_n_s32(0x3A83126Fu);
            v427 = vornq_s8(vmvnq_s8(vcgezq_f32(v405)), v407);
            v428 = vdivq_f32(v1476, v406);
            v429 = vmulq_f32(v403, v426);
            v430 = vmulq_f32(v404, v426);
            v431 = vmulq_f32(v405, v426);
            v432 = vmulq_f32(v406, v426);
            v433 = vcvtmq_s32_f32(v412);
            v434 = vcvtmq_s32_f32(v413);
            v435 = vcvtmq_s32_f32(v414);
            v436 = vcvtmq_s32_f32(v415);
            v437 = vcvtmq_s32_f32(v420);
            v438 = vcvtmq_s32_f32(v423);
            v439 = vcvtmq_s32_f32(vmlaq_f32(v1446, v425, v416));
            v440 = vcvtmq_s32_f32(vmlaq_f32(v1496, v428, v417));
            v441 = vornq_s8(v421, v418);
            v442 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v434, v384), vcgeq_s32(v433, v1436)), vcltzq_s32(vorrq_s8(v434, v433))), v419);
            *v421.i8 = vmovn_s32(v442);
            v443 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v436, v384), vcgeq_s32(v435, v1436)), vcltzq_s32(vorrq_s8(v436, v435))), v422);
            v444 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v438, v384), vcgeq_s32(v437, v1436)), vcltzq_s32(vorrq_s8(v438, v437))), v427);
            v445 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v440, v384), vcgeq_s32(v439, v1436)), vcltzq_s32(vorrq_s8(v440, v439))), v441);
            v446 = vdupq_n_s32(0x477FE000u);
            v447 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v442, 0x1FuLL)), v446, v429);
            v448 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v443, 0x1FuLL)), v446, v430);
            v449 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v444, 0x1FuLL)), v446, v431);
            v450 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v445, 0x1FuLL)), v446, v432);
            *v446.i8 = vcltz_s16(vshl_n_s16(*v421.i8, 0xFuLL));
            *v417.f32 = vorr_s8(vmovn_s32(v433), *v446.i8);
            *v425.f32 = vorr_s8(vmovn_s32(v434), *v446.i8);
            *v428.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v443), 0xFuLL));
            *v414.f32 = vorr_s8(vmovn_s32(v435), *v428.f32);
            *v446.i8 = vorr_s8(vmovn_s32(v436), *v428.f32);
            v451 = v389;
            vst2_s16(v451, v417);
            v451 += 8;
            v359 = v408;
            v383 = v424;
            v378 = v1486;
            v382 = v1506;
            vst2_s16(v451, v414);
            v377 = v1526;
            *v432.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v444), 0xFuLL));
            *v444.i8 = vorr_s8(vmovn_s32(v437), *v432.i8);
            *v414.f32 = vorr_s8(vmovn_s32(v438), *v432.i8);
            v452 = v389 + 16;
            vst2_s16(v452, *(&v414 - 8));
            *v428.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v445), 0xFuLL));
            v443.val[0] = vorr_s8(vmovn_s32(v439), *v428.f32);
            *v444.i8 = vorr_s8(vmovn_s32(v440), *v428.f32);
            v453 = v389 + 24;
            vst2_s16(v453, v443);
            v454 = vminq_s32(vmaxq_s32(vmlaq_s32(v433, v434, v1516), 0), v1456);
            v455 = vminq_s32(vmaxq_s32(vmlaq_s32(v435, v436, v1516), 0), v1456);
            v456 = vmaxq_s32(vmlaq_s32(v437, v438, v1516), 0);
            v457 = vmlaq_s32(v439, v440, v1516);
            v458 = vminq_s32(v456, v1456);
            v459 = vminq_s32(vmaxq_s32(v457, 0), v1456);
            v460 = v454.u32[1];
            *v457.i8 = vcvt_f16_f32(v447);
            v363[v454.u32[0]] = fminl(*v457.i16, v363[v454.u32[0]]);
            *v454.i8 = vcvt_f16_f32(v448);
            v363[v455.u32[1]] = fminl(*&v454.i16[1], v363[v455.u32[1]]);
            *v436.i8 = vcvt_f16_f32(v449);
            v363[v458.u32[2]] = fminl(*&v436.i16[2], v363[v458.u32[2]]);
            *v450.f32 = vcvt_f16_f32(v450);
            v363[v459.u32[3]] = fminl(*&v450.i16[3], v363[v459.u32[3]]);
            v363[v460] = fminl(*&v457.i16[1], v363[v460]);
            v363[v455.u32[2]] = fminl(*&v454.i16[2], v363[v455.u32[2]]);
            v363[v458.u32[3]] = fminl(*&v436.i16[3], v363[v458.u32[3]]);
            v363[v459.u32[0]] = fminl(*v450.i16, v363[v459.u32[0]]);
            v363[v454.u32[2]] = fminl(*&v457.i16[2], v363[v454.u32[2]]);
            v363[v455.u32[3]] = fminl(*&v454.i16[3], v363[v455.u32[3]]);
            v363[v458.u32[0]] = fminl(*v436.i16, v363[v458.u32[0]]);
            v363[v459.u32[1]] = fminl(*&v450.i16[1], v363[v459.u32[1]]);
            v363[v454.u32[3]] = fminl(*&v457.i16[3], v363[v454.u32[3]]);
            v363[v455.u32[0]] = fminl(*v454.i16, v363[v455.u32[0]]);
            v363[v458.u32[1]] = fminl(*&v436.i16[1], v363[v458.u32[1]]);
            v363[v459.u32[2]] = fminl(*&v450.i16[2], v363[v459.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v391 = vaddq_f32(v1565, _Q0);
            v388 += 4;
            v389 += 32;
            v390 += 16;
          }

          while (v390 < v371);
          v390 = (((v352 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v374 = a14;
          v379 = a15;
          v376 = a12;
          v375 = a13;
          v385 = a18;
          v368 = *&a11;
          v380 = __PAIR64__(DWORD1(a17), a16);
          v369 = v1417;
          v370 = v1407;
          v372 = 0.5;
          v373 = v1427;
        }

        if (v390 < v352)
        {
          do
          {
            _H2 = v388->i16[0];
            __asm { FCVT            S2, H2 }

            v464 = _S2 * 1000.0;
            v465 = vaddq_f32(v379, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v376, v369 * (((v390 + v372) - v368) * v464)), v375, v370 * (((v365 + v372) - *(&a11 + 1)) * v464)), v374, v464));
            v466 = 0xFFFF0000FFFFLL;
            if (*&v465.i32[2] >= 0.0 && v464 > 0.0)
            {
              v467 = vcvt_s32_f32(vmla_f32(v385, vdiv_f32(v380, vdup_laneq_s32(v465, 2)), *v465.i8));
              if ((v467.i32[0] & 0x80000000) == 0 && v354 > v467.i32[0] && (v467.i32[1] & 0x80000000) == 0 && v353 > v467.i32[1])
              {
                _S1 = *&v465.i32[2] * 0.001;
                __asm
                {
                  FCVT            H1, S1
                  FCMP            H3, #0
                }

                if (_ZF)
                {
                  v471 = 0;
                }

                else
                {
                  v471 = _H3 <= _H1;
                }

                if (!v471)
                {
                  v363[v360 * v467.i32[1] + v467.u32[0]] = _H1;
                }

                v466 = v467;
              }
            }

            *v389 = v466;
            v389[1] = WORD2(v466);
            ++v390;
            v388 = (v388 + 2);
            v389 += 2;
          }

          while (v352 != v390);
        }

        ++v365;
        __asm { FMOV            V0.4S, #1.0 }

        v373 = vaddq_f32(v373, _Q0);
      }

      while (v365 != v351);
      v364 = buf.height;
    }

    v350 = v357;
    if (v364)
    {
      v473 = 0;
      v474 = *&buf.width;
      v475 = buf.data;
      v476 = buf.width >> 4;
      if (buf.width >> 4 <= 1)
      {
        v476 = 1;
      }

      v477 = buf.width & 0xFFFFFFF0;
      do
      {
        v478 = &v475[*(&v474 + 1) * v473];
        v479 = v476;
        if (v474 >= 0x10)
        {
          do
          {
            v480 = v478[2];
            v481 = v478[3];
            v482 = vbic_s8(v478[1], vceq_f16(v478[1], 0x8400840084008400));
            *v478 = vbic_s8(*v478, vceq_f16(*v478, 0x8400840084008400));
            v478[1] = v482;
            v478[2] = vbic_s8(v480, vceq_f16(v480, 0x8400840084008400));
            v478[3] = vbic_s8(v481, vceq_f16(v481, 0x8400840084008400));
            v478 += 4;
            --v479;
          }

          while (v479);
        }

        v483 = v474 & 0xFFFFFFF0;
        if (v477 != v474)
        {
          do
          {
            if (*v478->i16 == COERCE_SHORT_FLOAT(31743))
            {
              v478->i16[0] = 0;
            }

            ++v483;
            v478 = (v478 + 2);
          }

          while (v483 < v474);
        }

        ++v473;
      }

      while (v473 != v364);
    }

    goto LABEL_321;
  }

  if (PixelFormatType == 1751411059)
  {
    v249 = CVPixelBufferGetHeight(a1);
    v250 = CVPixelBufferGetWidth(a1);
    v251 = CVPixelBufferGetHeight(pixelBuffer);
    v252 = CVPixelBufferGetWidth(pixelBuffer);
    v253 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&v1573, 0, sizeof(v1573));
    v254 = MEMORY[0x277CBF3A0];
    v27 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1573);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v254, &buf);
    PixelBufferUtils::asVImageBuffer(v1353, *v254, &v1572);
    v255 = v1572.data;
    v256 = v1572.rowBytes;
    v258 = buf.data;
    v257 = buf.height;
    bzero(buf.data, buf.height * buf.rowBytes);
    v262 = a14;
    v261 = a15;
    v264 = a12;
    v263 = a13;
    v266 = a18;
    v265 = *&a11;
    v267.i32[0] = a16;
    if (v249)
    {
      v268 = 0;
      v269.i32[1] = v1549;
      v270 = 1.0 / *&a9;
      v271 = 1.0 / *&v1549;
      v272 = 0.5;
      *v259.i32 = 0.5 - *(&a11 + 1);
      v273 = vdupq_lane_s32(v259, 0);
      v274 = v250 & 0xFFFFFFFFFFFFFFF0;
      *v259.i32 = vmuls_lane_f32(1.0 / *&v1549, a13, 2);
      *v269.i32 = vmuls_lane_f32(1.0 / *&v1549, *a13.f32, 1);
      *v260.i32 = (1.0 / *&v1549) * a13.f32[0];
      v1339 = vdupq_lane_s32(*a14.i8, 0);
      v1347 = vdupq_lane_s32(v260, 0);
      v1330 = vdupq_lane_s32(*a14.i8, 1);
      v1334 = vdupq_lane_s32(v269, 0);
      v1324 = vdupq_laneq_s32(a14, 2);
      v1327 = vdupq_lane_s32(v259, 0);
      v275 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v276 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      v1321 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v277 = vdupq_laneq_s32(a15, 2);
      v278 = vdupq_lane_s32(*&a16, 0);
      v267.i32[1] = DWORD1(a17);
      v279 = v1573.data;
      v280 = v1573.rowBytes;
      v1364 = v267;
      v1376 = 1.0 / *&a9;
      v1367 = 1.0 / *&v1549;
      v1505 = vdupq_n_s32(v257 * (v253 >> 1) - 2);
      v1515 = v277;
      v1485 = vdupq_n_s32(v253 >> 1);
      v1495 = vdupq_lane_s32(*&a18, 1);
      v1465 = vdupq_lane_s32(*&a17, 1);
      v1475 = vdupq_lane_s32(*&a18, 0);
      v1445 = vdupq_lane_s32(*a15.i8, 0);
      v1455 = v275;
      v1426 = vdupq_n_s32(v251);
      v1406 = vdupq_n_s32(v252);
      v1416 = (1.0 / *&a9) * a12.f32[0];
      v1396 = vdupq_lane_s32(*a15.i8, 1);
      do
      {
        v281 = &v279[v280 * v268];
        v282 = &v255[v268 * v256];
        v283 = 0;
        if (v274)
        {
          v1542 = vmlaq_f32(v1339, v1347, v273);
          v1534 = vmlaq_f32(v1330, v1334, v273);
          v1386 = v273;
          v1525 = vmlaq_f32(v1324, v1327, v273);
          v284 = v1321;
          do
          {
            v1564 = v284;
            v285 = vdupq_n_s32(0x447A0000u);
            v286 = vmulq_f32(vcvtq_f32_f16(*v281), v285);
            v287 = vmulq_f32(vcvtq_f32_f16(v281[1]), v285);
            __asm { FMOV            V1.4S, #4.0 }

            v289 = vaddq_f32(v284, _Q1);
            v290 = vmulq_f32(vcvtq_f32_f16(v281[2]), v285);
            v291.i64[0] = 0x4100000041000000;
            v291.i64[1] = 0x4100000041000000;
            v292 = vaddq_f32(v284, v291);
            __asm { FMOV            V1.4S, #12.0 }

            v294 = vaddq_f32(v284, _Q1);
            v295 = vmulq_f32(vcvtq_f32_f16(v281[3]), v285);
            v296 = vmlaq_f32(v277, vmlaq_n_f32(v1525, v289, v275), v287);
            v297 = vmlaq_f32(v277, vmlaq_n_f32(v1525, v292, v275), v290);
            v298 = vmlaq_f32(v277, vmlaq_n_f32(v1525, v294, v275), v295);
            v1553 = vmlaq_f32(v277, vmlaq_n_f32(v1525, v284, v275), v286);
            v299 = vornq_s8(vmvnq_s8(vcgezq_f32(v296)), vcgtzq_f32(v287));
            v300 = vmlaq_f32(v1396, vmlaq_n_f32(v1534, v289, v276), v287);
            v301 = vmlaq_f32(v1445, vmlaq_n_f32(v1542, v292, v1416), v290);
            v302 = vmlaq_f32(v1396, vmlaq_n_f32(v1534, v292, v276), v290);
            v303 = vornq_s8(vmvnq_s8(vcgezq_f32(v297)), vcgtzq_f32(v290));
            v304 = vmlaq_f32(v1396, vmlaq_n_f32(v1534, v294, v276), v295);
            v305 = vornq_s8(vmvnq_s8(vcgezq_f32(v298)), vcgtzq_f32(v295));
            v306 = vmlaq_f32(v1475, vdivq_f32(v278, v296), vmlaq_f32(v1445, vmlaq_n_f32(v1542, v289, v1416), v287));
            v307 = vcvtmq_s32_f32(vmlaq_f32(v1475, vdivq_f32(v278, v1553), vmlaq_f32(v1445, vmlaq_n_f32(v1542, v284, v1416), v286)));
            v308 = vcvtmq_s32_f32(vmlaq_f32(v1495, vdivq_f32(v1465, v1553), vmlaq_f32(v1396, vmlaq_n_f32(v1534, v284, v276), v286)));
            v309 = vcvtmq_s32_f32(v306);
            v310 = vcvtmq_s32_f32(vmlaq_f32(v1495, vdivq_f32(v1465, v296), v300));
            v311 = vcvtmq_s32_f32(vmlaq_f32(v1475, vdivq_f32(v278, v297), v301));
            v312 = vcvtmq_s32_f32(vmlaq_f32(v1495, vdivq_f32(v1465, v297), v302));
            v313 = vcvtmq_s32_f32(vmlaq_f32(v1475, vdivq_f32(v278, v298), vmlaq_f32(v1445, vmlaq_n_f32(v1542, v294, v1416), v295)));
            v314 = vcvtmq_s32_f32(vmlaq_f32(v1495, vdivq_f32(v1465, v298), v304));
            v315 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v308, v1426), vcgeq_s32(v307, v1406)), vcltzq_s32(vorrq_s8(v308, v307))), vornq_s8(vmvnq_s8(vcgezq_f32(v1553)), vcgtzq_f32(v286)));
            v316 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v310, v1426), vcgeq_s32(v309, v1406)), vcltzq_s32(vorrq_s8(v310, v309))), v299);
            v317 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v312, v1426), vcgeq_s32(v311, v1406)), vcltzq_s32(vorrq_s8(v312, v311))), v303);
            v318 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v314, v1426), vcgeq_s32(v313, v1406)), vcltzq_s32(vorrq_s8(v314, v313))), v305);
            v319 = vcltz_s16(vshl_n_s16(vmovn_s32(v315), 0xFuLL));
            *v302.f32 = vorr_s8(vmovn_s32(v307), v319);
            v320 = vorr_s8(vmovn_s32(v308), v319);
            v321 = v282;
            vst2_s16(v321, v302);
            v321 += 8;
            v322 = vcltz_s16(vshl_n_s16(vmovn_s32(v316), 0xFuLL));
            *v303.i8 = vorr_s8(vmovn_s32(v309), v322);
            *v301.f32 = vorr_s8(vmovn_s32(v310), v322);
            v323 = vcltz_s16(vshl_n_s16(vmovn_s32(v317), 0xFuLL));
            *v302.f32 = vorr_s8(vmovn_s32(v311), v323);
            v324 = vorr_s8(vmovn_s32(v312), v323);
            v325 = v282 + 16;
            vst2_s16(v325, v302);
            v326 = vcltz_s16(vshl_n_s16(vmovn_s32(v318), 0xFuLL));
            *v302.f32 = vorr_s8(vmovn_s32(v313), v326);
            v327 = vorr_s8(vmovn_s32(v314), v326);
            v275 = v1455;
            v328 = v282 + 24;
            vst2_s16(v328, v302);
            vst2_s16(v321, *(&v301 - 8));
            v277 = v1515;
            v329 = vmlaq_s32(v307, v308, v1485);
            v330 = vmlaq_s32(v313, v314, v1485);
            v331 = vandq_s8(vdivq_f32(v285, v296), vcgezq_s32(vshlq_n_s32(v316, 0x1FuLL)));
            v332 = vandq_s8(vdivq_f32(v285, v297), vcgezq_s32(vshlq_n_s32(v317, 0x1FuLL)));
            v333 = vminq_s32(vmaxq_s32(v329, 0), v1505);
            v334 = vminq_s32(vmaxq_s32(vmlaq_s32(v309, v310, v1485), 0), v1505);
            v335 = vminq_s32(vmaxq_s32(vmlaq_s32(v311, v312, v1485), 0), v1505);
            v336 = vminq_s32(vmaxq_s32(v330, 0), v1505);
            v337 = v333.u32[1];
            *v310.i8 = vcvt_f16_f32(vandq_s8(vdivq_f32(v285, v1553), vcgezq_s32(vshlq_n_s32(v315, 0x1FuLL))));
            v258[v333.u32[0]] = fmaxl(*v310.i16, v258[v333.u32[0]]);
            *v331.f32 = vcvt_f16_f32(v331);
            v258[v334.u32[1]] = fmaxl(*&v331.i16[1], v258[v334.u32[1]]);
            *v332.f32 = vcvt_f16_f32(v332);
            v258[v335.u32[2]] = fmaxl(*&v332.i16[2], v258[v335.u32[2]]);
            *v333.i8 = vcvt_f16_f32(vandq_s8(vdivq_f32(v285, v298), vcgezq_s32(vshlq_n_s32(v318, 0x1FuLL))));
            v258[v336.u32[3]] = fmaxl(*&v333.i16[3], v258[v336.u32[3]]);
            v258[v337] = fmaxl(*&v310.i16[1], v258[v337]);
            v258[v334.u32[2]] = fmaxl(*&v331.i16[2], v258[v334.u32[2]]);
            v258[v335.u32[3]] = fmaxl(*&v332.i16[3], v258[v335.u32[3]]);
            v258[v336.u32[0]] = fmaxl(*v333.i16, v258[v336.u32[0]]);
            v258[v333.u32[2]] = fmaxl(*&v310.i16[2], v258[v333.u32[2]]);
            v258[v334.u32[3]] = fmaxl(*&v331.i16[3], v258[v334.u32[3]]);
            v258[v335.u32[0]] = fmaxl(*v332.i16, v258[v335.u32[0]]);
            v258[v336.u32[1]] = fmaxl(*&v333.i16[1], v258[v336.u32[1]]);
            v258[v333.u32[3]] = fmaxl(*&v310.i16[3], v258[v333.u32[3]]);
            v258[v334.u32[0]] = fmaxl(*v331.i16, v258[v334.u32[0]]);
            v258[v335.u32[1]] = fmaxl(*&v332.i16[1], v258[v335.u32[1]]);
            v258[v336.u32[2]] = fmaxl(*&v333.i16[2], v258[v336.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v284 = vaddq_f32(v1564, _Q0);
            v281 += 4;
            v282 += 32;
            v283 += 16;
          }

          while (v283 < v274);
          v283 = (((v250 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v262 = a14;
          v261 = a15;
          v264 = a12;
          v263 = a13;
          v266 = a18;
          v265 = *&a11;
          v267 = v1364;
          v270 = v1376;
          v271 = v1367;
          v272 = 0.5;
          v273 = v1386;
        }

        if (v283 < v250)
        {
          do
          {
            _H2 = v281->i16[0];
            __asm { FCVT            S2, H2 }

            v341 = _S2 * 1000.0;
            v342 = vaddq_f32(v261, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v264, v270 * (((v283 + v272) - v265) * v341)), v263, v271 * (((v268 + v272) - *(&a11 + 1)) * v341)), v262, v341));
            v343 = 0xFFFF0000FFFFLL;
            if (*&v342.i32[2] >= 0.0 && v341 > 0.0)
            {
              v344 = vcvt_s32_f32(vmla_f32(v266, vdiv_f32(v267, vdup_laneq_s32(v342, 2)), *v342.i8));
              if ((v344.i32[0] & 0x80000000) == 0 && v252 > v344.i32[0] && (v344.i32[1] & 0x80000000) == 0 && v251 > v344.i32[1])
              {
                _S1 = 1000.0 / *&v342.i32[2];
                __asm
                {
                  FCVT            H1, S1
                  FCMP            H3, #0
                }

                if (_ZF)
                {
                  v348 = 1;
                }

                else
                {
                  v348 = _H3 < _H1;
                }

                if (v348)
                {
                  v258[(v253 >> 1) * v344.i32[1] + v344.u32[0]] = _H1;
                }

                v343 = v344;
              }
            }

            *v282 = v343;
            v282[1] = WORD2(v343);
            ++v283;
            v281 = (v281 + 2);
            v282 += 2;
          }

          while (v250 != v283);
        }

        ++v268;
        __asm { FMOV            V0.4S, #1.0 }

        v273 = vaddq_f32(v273, _Q0);
      }

      while (v268 != v249);
    }

    goto LABEL_83;
  }

LABEL_322:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
LABEL_393:
    v1297 = CVPixelBufferGetPixelFormatType(pixelBuffer);
    PixelBufferUtils::pixelFormatAsString(v1297, &v1573);
    if ((v1573.width & 0x8000000000000000) == 0)
    {
      v1298 = &v1573;
    }

    else
    {
      v1298 = v1573.data;
    }

    LODWORD(buf.data) = 136315138;
    *(&buf.data + 4) = v1298;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "illegal output pixel format in reprojection: %s", &buf, 0xCu);
    if (SHIBYTE(v1573.width) < 0)
    {
      operator delete(v1573.data);
    }
  }

  return -22950;
}

uint64_t reprojectUndistortedDepthMapWithInputImmediates<float,1717856627u>(__CVBuffer *a1, __CVBuffer *a2, CVPixelBufferRef pixelBuffer, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, float32x4_t a12, float32x4_t a13, int32x4_t a14, int32x4_t a15, __int128 a16, __int128 a17, __int128 a18)
{
  v1538 = SHIDWORD(a10);
  v1564 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v1341 = a2;
  if (!a2)
  {
    if (PixelFormatType <= 1717855599)
    {
      if (PixelFormatType == 825437747)
      {
        Height = CVPixelBufferGetHeight(a1);
        Width = CVPixelBufferGetWidth(a1);
        v1141 = CVPixelBufferGetHeight(pixelBuffer);
        v1142 = CVPixelBufferGetWidth(pixelBuffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        memset(&v1562, 0, sizeof(v1562));
        v1144 = MEMORY[0x277CBF3A0];
        v1286 = a1;
        PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(pixelBuffer, *v1144, &buf);
        v1146 = BytesPerRow >> 1;
        data = buf.data;
        if (v1146 * v1141)
        {
          memset_pattern16(buf.data, &unk_2404C86B0, 2 * v1146 * v1141);
        }

        v1289 = buf.height;
        v1149 = a14;
        v1148 = a15;
        v1151 = a12;
        v1150 = a13;
        v1153 = *&a18;
        v1152 = *&a11;
        v1154 = *&a16;
        if (Height)
        {
          v1155 = 0;
          v1156.i32[1] = v1538;
          v1157.i32[1] = HIDWORD(a9);
          v1158 = 1.0 / *&a9;
          v1159 = 1.0 / *&v1538;
          v1160 = Width & 0xFFFFFFFFFFFFFFF0;
          v1161 = 0.5;
          *v1145.i32 = 0.5 - *(&a11 + 1);
          v1162 = vdupq_lane_s32(v1145, 0);
          *v1145.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
          *v1156.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
          *v1157.i32 = (1.0 / *&v1538) * a13.f32[0];
          v1163 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
          v1421 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
          v1411 = (1.0 / *&a9) * a12.f32[0];
          v1344 = v1562.data;
          rowBytes = v1562.rowBytes;
          v1310 = vdupq_lane_s32(*a14.i8, 0);
          v1313 = vdupq_lane_s32(v1157, 0);
          v1305 = vdupq_lane_s32(*a14.i8, 1);
          v1307 = vdupq_lane_s32(v1156, 0);
          v1301 = vdupq_laneq_s32(a14, 2);
          v1303 = vdupq_lane_s32(v1145, 0);
          v1164 = vdupq_laneq_s32(a15, 2);
          v1165 = vdupq_lane_s32(*a15.i8, 0);
          v1166 = vdupq_lane_s32(*a15.i8, 1);
          v1167 = vdupq_n_s32(v1142);
          v1300 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
          v1391 = vdupq_n_s32(LODWORD(buf.height) * v1146 - 2);
          v1168 = v1142;
          v1169 = v1141;
          v1294 = (((Width & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v1170 = vdupq_lane_s32(*&a16, 0);
          v1171 = *(&a17 + 1);
          v1332 = Width;
          v1326 = v1146;
          v1321 = 1.0 / *&a9;
          v1461 = vdupq_n_s32(v1141);
          v1471 = vdupq_n_s32(v1146);
          v1298 = v1142;
          v1296 = v1141;
          v1441 = v1170;
          v1451 = vdupq_lane_s32(*&a18, 1);
          v1431 = vdupq_lane_s32(*&a17, 1);
          v1401 = vdupq_lane_s32(*&a18, 0);
          do
          {
            v1172 = &v1344[v1155 * rowBytes];
            if (v1160)
            {
              v1381 = v1155;
              v1173 = 0;
              v1501 = vmlaq_f32(v1310, v1313, v1162);
              v1491 = vmlaq_f32(v1305, v1307, v1162);
              v1371 = v1162;
              v1481 = vmlaq_f32(v1301, v1303, v1162);
              v1174 = v1300;
              v1175.i64[0] = 0x4100000041000000;
              v1175.i64[1] = 0x4100000041000000;
              do
              {
                v1560 = v1173;
                v1176 = vdupq_n_s32(0x447A0000u);
                v1177 = vdivq_f32(v1176, *v1172);
                v1178 = vdivq_f32(v1176, v1172[1]);
                __asm { FMOV            V0.4S, #4.0 }

                v1180 = vaddq_f32(v1174, _Q0);
                v1181 = vaddq_f32(v1174, v1175);
                v1182 = vdivq_f32(v1176, v1172[2]);
                __asm { FMOV            V0.4S, #12.0 }

                v1184 = vaddq_f32(v1174, _Q0);
                v1185 = vdivq_f32(v1176, v1172[3]);
                v1186 = vmlaq_f32(v1164, vmlaq_n_f32(v1481, v1174, v1163), v1177);
                v1187 = vmlaq_f32(v1164, vmlaq_n_f32(v1481, v1180, v1163), v1178);
                v1188 = vmlaq_f32(v1164, vmlaq_n_f32(v1481, v1181, v1163), v1182);
                v1189 = vmlaq_f32(v1164, vmlaq_n_f32(v1481, v1184, v1163), v1185);
                v1549 = vcgtzq_f32(v1177);
                v1190 = vcgtzq_f32(v1178);
                v1191 = vcgtzq_f32(v1182);
                v1192 = vmlaq_f32(v1451, vdivq_f32(v1431, v1186), vmlaq_f32(v1166, vmlaq_n_f32(v1491, v1174, v1421), v1177));
                v1193 = vmlaq_f32(v1401, vdivq_f32(v1170, v1187), vmlaq_f32(v1165, vmlaq_n_f32(v1501, v1180, v1411), v1178));
                v1194 = vmlaq_f32(v1165, vmlaq_n_f32(v1501, v1184, v1411), v1185);
                v1195 = vmlaq_f32(v1166, vmlaq_n_f32(v1491, v1184, v1421), v1185);
                v1196 = vcgtzq_f32(v1185);
                v1197 = vmlaq_f32(v1451, vdivq_f32(v1431, v1187), vmlaq_f32(v1166, vmlaq_n_f32(v1491, v1180, v1421), v1178));
                v1198 = vmlaq_f32(v1401, vdivq_f32(v1170, v1188), vmlaq_f32(v1165, vmlaq_n_f32(v1501, v1181, v1411), v1182));
                v1199 = vornq_s8(vmvnq_s8(vcgezq_f32(v1189)), v1196);
                v1200 = vmlaq_f32(v1451, vdivq_f32(v1431, v1188), vmlaq_f32(v1166, vmlaq_n_f32(v1491, v1181, v1421), v1182));
                v1201 = vcvtmq_s32_f32(vmlaq_f32(v1401, vdivq_f32(v1170, v1186), vmlaq_f32(v1165, vmlaq_n_f32(v1501, v1174, v1411), v1177)));
                v1202 = vcvtmq_s32_f32(v1192);
                v1203 = vcvtmq_s32_f32(v1193);
                v1204 = vcvtmq_s32_f32(v1197);
                v1205 = vcvtmq_s32_f32(v1198);
                v1206 = vcvtmq_s32_f32(v1200);
                v1207 = vcvtmq_s32_f32(vmlaq_f32(v1401, vdivq_f32(v1170, v1189), v1194));
                v1208 = vcvtmq_s32_f32(vmlaq_f32(v1451, vdivq_f32(v1431, v1189), v1195));
                v1209.i64[0] = 0x4100000041000000;
                v1209.i64[1] = 0x4100000041000000;
                v1170 = v1441;
                v1210 = vdupq_n_s32(0x46FFFE00u);
                _Q0.i64[0] = 0x4100000041000000;
                _Q0.i64[1] = 0x4100000041000000;
                v1211 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1204, v1461), vcgeq_s32(v1203, v1167)), vcltzq_s32(vorrq_s8(v1204, v1203))), vornq_s8(vmvnq_s8(vcgezq_f32(v1187)), v1190)), 0x1FuLL)), v1210, vmulq_f32(v1187, _Q0));
                v1190.i64[0] = 0x4100000041000000;
                v1190.i64[1] = 0x4100000041000000;
                v1212 = vmulq_f32(v1188, v1190);
                v1213 = vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1206, v1461), vcgeq_s32(v1205, v1167)), vcltzq_s32(vorrq_s8(v1206, v1205))), vornq_s8(vmvnq_s8(vcgezq_f32(v1188)), v1191)), 0x1FuLL);
                v1175.i64[0] = 0x4100000041000000;
                v1175.i64[1] = 0x4100000041000000;
                v1214 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1208, v1461), vcgeq_s32(v1207, v1167)), vcltzq_s32(vorrq_s8(v1208, v1207))), v1199), 0x1FuLL)), v1210, vmulq_f32(v1189, v1175));
                v1215 = vmlaq_s32(v1205, v1206, v1471);
                v1216 = vmlaq_s32(v1207, v1208, v1471);
                v1217 = vminq_s32(vmaxq_s32(vmlaq_s32(v1201, v1202, v1471), 0), v1391);
                v1218 = vcvtq_s32_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1202, v1461), vcgeq_s32(v1201, v1167)), vcltzq_s32(vorrq_s8(v1202, v1201))), vornq_s8(vmvnq_s8(vcgezq_f32(v1186)), v1549)), 0x1FuLL)), v1210, vmulq_f32(v1186, v1209)));
                v1550 = v1217.u32[1];
                v1537 = v1218.i32[1];
                v1219 = v1217.i64[1];
                v1220 = v1218.i32[2];
                v1221 = v1217.i32[0];
                v1511 = v1218.i32[3];
                v1222 = v1218.i32[0];
                v1223 = vminq_s32(vmaxq_s32(v1216, 0), v1391);
                v1224 = v1223.u32[3];
                v1225 = v1223.u32[1];
                v1226 = v1223.u32[2];
                v1227 = v1223.i32[0];
                v1228 = vcvtq_s32_f32(v1214);
                v1229 = v1228.i32[3];
                v1230 = v1228.i32[1];
                v1231 = v1228.i32[2];
                v1232 = v1228.i32[0];
                v1233 = vminq_s32(vmaxq_s32(v1215, 0), v1391);
                v1234 = vcvtq_s32_f32(vbslq_s8(vcltzq_s32(v1213), v1210, v1212));
                v1235 = v1233.u32[2];
                v1236 = v1233.u32[3];
                v1237 = v1233.u32[1];
                v1238 = v1233.i32[0];
                v1239 = vminq_s32(vmaxq_s32(vmlaq_s32(v1203, v1204, v1471), 0), v1391);
                v1240 = vcvtq_s32_f32(v1211);
                if (v1222 >= data[v1221])
                {
                  LOWORD(v1222) = data[v1221];
                }

                data[v1221] = v1222;
                v1241 = v1240.i32[1];
                v1242 = v1240.i32[2];
                v1243 = v1240.i32[3];
                v1244 = v1240.i32[0];
                __asm { FMOV            V0.4S, #16.0 }

                v1174 = vaddq_f32(v1174, _Q0);
                if (v1241 >= data[v1239.u32[1]])
                {
                  LOWORD(v1241) = data[v1239.u32[1]];
                }

                data[v1239.u32[1]] = v1241;
                v1246 = data[v1235];
                if (v1234.i32[2] < v1246)
                {
                  LOWORD(v1246) = v1234.i16[4];
                }

                data[v1235] = v1246;
                v1247 = data[v1224];
                if (v1229 < v1247)
                {
                  LOWORD(v1247) = v1229;
                }

                data[v1224] = v1247;
                v1248 = data[v1550];
                if (v1537 < v1248)
                {
                  LOWORD(v1248) = v1537;
                }

                data[v1550] = v1248;
                v1249 = data[v1239.u32[2]];
                if (v1242 < v1249)
                {
                  LOWORD(v1249) = v1242;
                }

                data[v1239.u32[2]] = v1249;
                v1250 = data[v1236];
                if (v1234.i32[3] < v1250)
                {
                  LOWORD(v1250) = v1234.i16[6];
                }

                data[v1236] = v1250;
                v1251 = data[v1227];
                if (v1232 < v1251)
                {
                  LOWORD(v1251) = v1232;
                }

                data[v1227] = v1251;
                v1252 = data[v1219];
                if (v1220 < v1252)
                {
                  LOWORD(v1252) = v1220;
                }

                data[v1219] = v1252;
                v1253 = data[v1239.u32[3]];
                if (v1243 < v1253)
                {
                  LOWORD(v1253) = v1243;
                }

                data[v1239.u32[3]] = v1253;
                v1254 = data[v1238];
                if (v1234.i32[0] < v1254)
                {
                  LOWORD(v1254) = v1234.i16[0];
                }

                data[v1238] = v1254;
                v1255 = data[v1225];
                if (v1230 < v1255)
                {
                  LOWORD(v1255) = v1230;
                }

                data[v1225] = v1255;
                v1256 = data[HIDWORD(v1219)];
                if (v1511 < v1256)
                {
                  LOWORD(v1256) = v1511;
                }

                data[HIDWORD(v1219)] = v1256;
                v1257 = data[v1239.u32[0]];
                if (v1244 < v1257)
                {
                  LOWORD(v1257) = v1244;
                }

                data[v1239.u32[0]] = v1257;
                v1258 = data[v1237];
                if (v1234.i32[1] < v1258)
                {
                  LOWORD(v1258) = v1234.i16[2];
                }

                data[v1237] = v1258;
                v1259 = data[v1226];
                if (v1231 < v1259)
                {
                  LOWORD(v1259) = v1231;
                }

                data[v1226] = v1259;
                v1172 += 4;
                v1173 = v1560 + 16;
              }

              while (v1560 + 16 < v1160);
              v1260 = v1294;
              v1149 = a14;
              v1148 = a15;
              v1151 = a12;
              v1150 = a13;
              v1153 = *&a18;
              v1152 = *&a11;
              v1154 = *&a16;
              Width = v1332;
              v1146 = v1326;
              v1155 = v1381;
              v1158 = v1321;
              v1159 = 1.0 / *&v1538;
              v1161 = 0.5;
              v1162 = v1371;
              v1168 = v1298;
              v1169 = v1296;
              v1171 = *(&a17 + 1);
            }

            else
            {
              v1260 = 0;
            }

            if (v1260 < Width)
            {
              do
              {
                v1261 = 1000.0 / v1172->f32[0];
                _Q2 = vaddq_f32(v1148, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v1151, v1158 * (v1261 * ((v1260 + v1161) - v1152))), v1150, v1159 * (((v1155 + v1161) - *(&a11 + 1)) * v1261)), v1149, v1261));
                if (_Q2.f32[2] >= 0.0 && v1261 > 0.0)
                {
                  v1263 = (v1153 + (_Q2.f32[0] * (v1154 / _Q2.f32[2])));
                  if ((v1263 & 0x80000000) == 0 && v1168 > v1263)
                  {
                    _S3 = v1171 / _Q2.f32[2];
                    __asm { FMLA            S4, S3, V2.S[1] }

                    v1266 = _S4;
                    if ((_S4 & 0x80000000) == 0 && v1169 > v1266)
                    {
                      v1267 = v1146 * v1266;
                      v1268 = vcvts_n_s32_f32(_Q2.f32[2], 3uLL);
                      v1269 = &data[v1267];
                      if ((v1269[v1263] - 1) >= v1268)
                      {
                        v1269[v1263] = v1268;
                      }
                    }
                  }
                }

                ++v1260;
                v1172 = (v1172 + 4);
              }

              while (Width != v1260);
            }

            ++v1155;
            __asm { FMOV            V0.4S, #1.0 }

            v1162 = vaddq_f32(v1162, _Q0);
          }

          while (v1155 != Height);
        }

        v721 = v1286;
        if (v1289)
        {
          v1271 = 0;
          v1272 = *&buf.width;
          v1273 = buf.width >> 4;
          v1274 = buf.data;
          v1275 = buf.height;
          if (buf.width >> 4 <= 1)
          {
            v1273 = 1;
          }

          if (buf.height <= 1)
          {
            v1275 = 1;
          }

          v1276 = buf.width & 0xFFFFFFF0;
          do
          {
            v1277 = &v1274[*(&v1272 + 1) * v1271];
            v1278 = v1273;
            if (v1272 >= 0x10)
            {
              do
              {
                v1279 = v1277[2];
                v1280 = v1277[3];
                v1281 = vbic_s8(v1277[1], vceq_s16(v1277[1], 0x8000800080008000));
                *v1277 = vbic_s8(*v1277, vceq_s16(*v1277, 0x8000800080008000));
                v1277[1] = v1281;
                v1277[2] = vbic_s8(v1279, vceq_s16(v1279, 0x8000800080008000));
                v1277[3] = vbic_s8(v1280, vceq_s16(v1280, 0x8000800080008000));
                v1277 += 4;
                --v1278;
              }

              while (v1278);
            }

            v1282 = v1272 & 0xFFFFFFF0;
            if (v1276 != v1272)
            {
              do
              {
                if (v1277->i16[0] == 0x7FFF)
                {
                  v1277->i16[0] = 0;
                }

                ++v1282;
                v1277 = (v1277 + 2);
              }

              while (v1282 < v1272);
            }

            ++v1271;
          }

          while (v1271 != v1275);
        }

        goto LABEL_389;
      }

      if (PixelFormatType == 1278226534)
      {
        goto LABEL_220;
      }

      if (PixelFormatType != 1278226536)
      {
        goto LABEL_391;
      }
    }

    else
    {
      if (PixelFormatType <= 1751410031)
      {
        if (PixelFormatType != 1717855600)
        {
          if (PixelFormatType == 1717856627)
          {
            v133 = CVPixelBufferGetHeight(a1);
            v134 = CVPixelBufferGetWidth(a1);
            v135 = CVPixelBufferGetHeight(pixelBuffer);
            v136 = CVPixelBufferGetWidth(pixelBuffer);
            v137 = CVPixelBufferGetBytesPerRow(pixelBuffer);
            CVPixelBufferLockBaseAddress(a1, 1uLL);
            CVPixelBufferLockBaseAddress(pixelBuffer, 0);
            memset(&v1562, 0, sizeof(v1562));
            v138 = MEMORY[0x277CBF3A0];
            PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
            memset(&buf, 0, sizeof(buf));
            PixelBufferUtils::asVImageBuffer(pixelBuffer, *v138, &buf);
            v140 = buf.data;
            v139 = buf.height;
            bzero(buf.data, buf.height * buf.rowBytes);
            v145 = a14;
            v144 = a15;
            v147 = a12;
            v146 = a13;
            v149 = *&a18;
            v148 = *&a11;
            v150 = *&a16;
            if (v133)
            {
              v151 = 0;
              v152.i32[1] = v1538;
              v153 = 1.0 / *&a9;
              v154 = 1.0 / *&v1538;
              v155 = 0.5;
              *v141.i32 = 0.5 - *(&a11 + 1);
              v156 = vdupq_lane_s32(v141, 0);
              v157 = v134 & 0xFFFFFFFFFFFFFFF0;
              *v141.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
              *v152.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
              *v142.i32 = (1.0 / *&v1538) * a13.f32[0];
              v158 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
              *&v143 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
              v1383 = vdupq_lane_s32(*a14.i8, 0);
              v1393 = vdupq_lane_s32(v142, 0);
              v1363 = vdupq_lane_s32(*a14.i8, 1);
              v1373 = vdupq_lane_s32(v152, 0);
              v1354 = vdupq_lane_s32(v141, 0);
              v159 = (1.0 / *&a9) * a12.f32[0];
              v1342 = vdupq_laneq_s32(a14, 2);
              v160 = v1562.data;
              v161 = v1562.rowBytes;
              v1334 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
              v162 = vdupq_laneq_s32(a15, 2);
              v163 = vdupq_lane_s32(*a15.i8, 0);
              v164 = vdupq_lane_s32(*a15.i8, 1);
              v1493 = vdupq_n_s32(v136);
              v1473 = vdupq_n_s32(v135);
              v165 = *(&a17 + 1);
              v1413 = 1.0 / *&a9;
              v1403 = 1.0 / *&v1538;
              v1513 = vdupq_n_s32(v139 * (v137 >> 2) - 4);
              v1522 = v158;
              v1503 = vdupq_lane_s32(*&a17, 1);
              v1483 = vdupq_lane_s32(*&a18, 1);
              v1453 = vdupq_lane_s32(*&a18, 0);
              v1463 = vdupq_lane_s32(*&a16, 0);
              v1433 = v159;
              v1443 = vdupq_n_s32(v137 >> 2);
              do
              {
                v166 = &v160[v151 * v161];
                v167 = 0;
                if (v157)
                {
                  v1552 = vmlaq_f32(v1383, v1393, v156);
                  v1541 = vmlaq_f32(v1363, v1373, v156);
                  v168 = v1334;
                  v1423 = v156;
                  v1530 = vmlaq_f32(v1342, v1354, v156);
                  do
                  {
                    v169 = vdupq_n_s32(0x447A0000u);
                    v170 = vdivq_f32(v169, *v166);
                    v171 = vdivq_f32(v169, v166[1]);
                    v172 = vdivq_f32(v169, v166[2]);
                    __asm { FMOV            V1.4S, #4.0 }

                    v174 = vaddq_f32(v168, _Q1);
                    _Q1.i64[0] = 0x4100000041000000;
                    _Q1.i64[1] = 0x4100000041000000;
                    v175 = vaddq_f32(v168, _Q1);
                    v176 = vdivq_f32(v169, v166[3]);
                    __asm { FMOV            V1.4S, #12.0 }

                    v178 = vaddq_f32(v168, _Q1);
                    v179 = vmlaq_f32(v162, vmlaq_n_f32(v1530, v168, v158), v170);
                    v180 = vmlaq_f32(v162, vmlaq_n_f32(v1530, v174, v158), v171);
                    v181 = vmlaq_f32(v162, vmlaq_n_f32(v1530, v175, v158), v172);
                    v182 = vmlaq_f32(v162, vmlaq_n_f32(v1530, v178, v158), v176);
                    v183 = vcgtzq_f32(v170);
                    v184 = v163;
                    v185 = vmlaq_f32(v163, vmlaq_n_f32(v1552, v168, v159), v170);
                    v186 = v143;
                    v187 = vmlaq_f32(v164, vmlaq_n_f32(v1541, v168, *&v143), v170);
                    v188 = vmlaq_f32(v1453, vdivq_f32(v1463, v179), v185);
                    v189 = vmlaq_f32(v1483, vdivq_f32(v1503, v179), v187);
                    v190 = vmlaq_f32(v1453, vdivq_f32(v1463, v180), vmlaq_f32(v184, vmlaq_n_f32(v1552, v174, v159), v171));
                    v191 = vmlaq_f32(v184, vmlaq_n_f32(v1552, v175, v159), v172);
                    v192 = vmlaq_f32(v1483, vdivq_f32(v1503, v180), vmlaq_f32(v164, vmlaq_n_f32(v1541, v174, *&v143), v171));
                    v193 = vandq_s8(vcgezq_f32(v179), v183);
                    v194 = vmlaq_f32(v184, vmlaq_n_f32(v1552, v178, v159), v176);
                    v195 = vandq_s8(vcgezq_f32(v180), vcgtzq_f32(v171));
                    v196 = vmlaq_f32(v164, vmlaq_n_f32(v1541, v178, *&v143), v176);
                    v197 = vandq_s8(vcgezq_f32(v181), vcgtzq_f32(v172));
                    v198 = vmlaq_f32(v1453, vdivq_f32(v1463, v181), v191);
                    v199 = vandq_s8(vcgezq_f32(v182), vcgtzq_f32(v176));
                    v200 = vmlaq_f32(v1483, vdivq_f32(v1503, v181), vmlaq_f32(v164, vmlaq_n_f32(v1541, v175, *&v143), v172));
                    v201 = vdivq_f32(v1463, v182);
                    v202 = vdivq_f32(v1503, v182);
                    v203 = vdivq_f32(v169, v179);
                    v204 = vdivq_f32(v169, v180);
                    v205 = vdivq_f32(v169, v181);
                    v206 = vdivq_f32(v169, v182);
                    v207 = vcvtmq_s32_f32(v188);
                    v208 = vcvtmq_s32_f32(v189);
                    v209 = vcvtmq_s32_f32(v190);
                    v210 = vcvtmq_s32_f32(v192);
                    v211 = vmlaq_f32(v1483, v202, v196);
                    v212 = vcvtmq_s32_f32(v198);
                    v213 = vcvtmq_s32_f32(v200);
                    v214 = vcvtmq_s32_f32(vmlaq_f32(v1453, v201, v194));
                    v215 = vcvtmq_s32_f32(v211);
                    v216 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1473, v208), vcgtq_s32(v1493, v207)), vcgezq_s32(vorrq_s8(v208, v207))), v193);
                    v217 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1473, v210), vcgtq_s32(v1493, v209)), vcgezq_s32(vorrq_s8(v210, v209))), v195);
                    v159 = v1433;
                    v218 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1473, v215), vcgtq_s32(v1493, v214)), vcgezq_s32(vorrq_s8(v215, v214))), v199);
                    v219 = vmlaq_s32(v207, v208, v1443);
                    v143 = v186;
                    v163 = v184;
                    v158 = v1522;
                    v220 = vminq_s32(vmaxq_s32(v219, 0), v1513);
                    v221 = v220.u32[1];
                    v222 = v220.u32[2];
                    v223 = v220.u32[3];
                    v224 = vandq_s8(v203, vcltzq_s32(vshlq_n_s32(v216, 0x1FuLL)));
                    v140[v220.u32[0]] = fmaxf(*v224.i32, v140[v220.u32[0]]);
                    v225 = vminq_s32(vmaxq_s32(vmlaq_s32(v209, v210, v1443), 0), v1513);
                    v226 = vandq_s8(v204, vcltzq_s32(vshlq_n_s32(v217, 0x1FuLL)));
                    v227 = vminq_s32(vmaxq_s32(vmlaq_s32(v212, v213, v1443), 0), v1513);
                    v140[v225.u32[1]] = fmaxf(*&v226.i32[1], v140[v225.u32[1]]);
                    v228 = vandq_s8(v205, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1473, v213), vcgtq_s32(v1493, v212)), vcgezq_s32(vorrq_s8(v213, v212))), v197), 0x1FuLL)));
                    v229 = vminq_s32(vmaxq_s32(vmlaq_s32(v214, v215, v1443), 0), v1513);
                    v140[v227.u32[2]] = fmaxf(*&v228.i32[2], v140[v227.u32[2]]);
                    v230 = vandq_s8(v206, vcltzq_s32(vshlq_n_s32(v218, 0x1FuLL)));
                    v140[v229.u32[3]] = fmaxf(*&v230.i32[3], v140[v229.u32[3]]);
                    v140[v221] = fmaxf(*&v224.i32[1], v140[v221]);
                    v140[v225.u32[2]] = fmaxf(*&v226.i32[2], v140[v225.u32[2]]);
                    v140[v227.u32[3]] = fmaxf(*&v228.i32[3], v140[v227.u32[3]]);
                    v140[v229.u32[0]] = fmaxf(*v230.i32, v140[v229.u32[0]]);
                    v140[v222] = fmaxf(*&v224.i32[2], v140[v222]);
                    v140[v225.u32[3]] = fmaxf(*&v226.i32[3], v140[v225.u32[3]]);
                    v140[v227.u32[0]] = fmaxf(*v228.i32, v140[v227.u32[0]]);
                    v140[v229.u32[1]] = fmaxf(*&v230.i32[1], v140[v229.u32[1]]);
                    v140[v223] = fmaxf(*&v224.i32[3], v140[v223]);
                    v140[v225.u32[0]] = fmaxf(*v226.i32, v140[v225.u32[0]]);
                    v140[v227.u32[1]] = fmaxf(*&v228.i32[1], v140[v227.u32[1]]);
                    v140[v229.u32[2]] = fmaxf(*&v230.i32[2], v140[v229.u32[2]]);
                    __asm { FMOV            V0.4S, #16.0 }

                    v168 = vaddq_f32(v168, _Q0);
                    v166 += 4;
                    v167 += 16;
                  }

                  while (v167 < v157);
                  v167 = (((v134 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
                  v145 = a14;
                  v144 = a15;
                  v147 = a12;
                  v146 = a13;
                  v149 = *&a18;
                  v148 = *&a11;
                  v150 = *&a16;
                  v153 = v1413;
                  v154 = v1403;
                  v155 = 0.5;
                  v156 = v1423;
                  v165 = *(&a17 + 1);
                }

                if (v167 < v134)
                {
                  do
                  {
                    v232 = 1000.0 / v166->f32[0];
                    _Q2 = vaddq_f32(v144, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v147, v153 * (v232 * ((v167 + v155) - v148))), v146, v154 * (((v151 + v155) - *(&a11 + 1)) * v232)), v145, v232));
                    if (_Q2.f32[2] >= 0.0 && v232 > 0.0)
                    {
                      v234 = (v149 + (_Q2.f32[0] * (v150 / _Q2.f32[2])));
                      if ((v234 & 0x80000000) == 0 && v136 > v234)
                      {
                        _S3 = v165 / _Q2.f32[2];
                        __asm { FMLA            S4, S3, V2.S[1] }

                        v237 = _S4;
                        if ((_S4 & 0x80000000) == 0 && v135 > v237)
                        {
                          v238 = 1000.0 / _Q2.f32[2];
                          v239 = &v140[(v137 >> 2) * v237];
                          v240 = v239[v234];
                          if (v240 == 0.0 || v240 < v238)
                          {
                            v239[v234] = v238;
                          }
                        }
                      }
                    }

                    ++v167;
                    v166 = (v166 + 4);
                  }

                  while (v134 != v167);
                }

                ++v151;
                __asm { FMOV            V0.4S, #1.0 }

                v156 = vaddq_f32(v156, _Q0);
              }

              while (v151 != v133);
            }

LABEL_183:
            v721 = a1;
LABEL_389:
            CVPixelBufferUnlockBaseAddress(v721, 1uLL);
            v1139 = pixelBuffer;
            goto LABEL_390;
          }

          goto LABEL_391;
        }

LABEL_220:
        v845 = CVPixelBufferGetHeight(a1);
        v846 = CVPixelBufferGetWidth(a1);
        v847 = CVPixelBufferGetHeight(pixelBuffer);
        v848 = CVPixelBufferGetWidth(pixelBuffer);
        v849 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        memset(&v1562, 0, sizeof(v1562));
        v850 = MEMORY[0x277CBF3A0];
        v851 = a1;
        PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(pixelBuffer, *v850, &buf);
        v856 = v849 >> 2;
        v857 = buf.data;
        if (v856 * v847)
        {
          memset_pattern16(buf.data, &unk_2404C8690, 4 * v856 * v847);
        }

        v858 = buf.height;
        v860 = a14;
        v859 = a15;
        v862 = a12;
        v861 = a13;
        v864 = *&a18;
        v863 = *&a11;
        v865 = *&a16;
        if (v845)
        {
          v866 = 0;
          v867.i32[1] = v1538;
          v868.i32[1] = HIDWORD(a9);
          v869 = 1.0 / *&a9;
          v870 = 1.0 / *&v1538;
          v871 = v846 & 0xFFFFFFFFFFFFFFF0;
          v872 = 0.5;
          *v852.i32 = 0.5 - *(&a11 + 1);
          v873 = vdupq_lane_s32(v852, 0);
          *v852.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
          *v867.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
          *v868.i32 = (1.0 / *&v1538) * a13.f32[0];
          *&v853 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
          *&v854 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
          v1409 = vdupq_lane_s32(*a14.i8, 0);
          v1419 = vdupq_lane_s32(v868, 0);
          v1389 = vdupq_lane_s32(*a14.i8, 1);
          v1399 = vdupq_lane_s32(v867, 0);
          *&v855 = (1.0 / *&a9) * a12.f32[0];
          v1369 = vdupq_laneq_s32(a14, 2);
          v1379 = vdupq_lane_s32(v852, 0);
          v874 = v1562.data;
          v875 = v1562.rowBytes;
          v1359 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
          v876 = vdupq_laneq_s32(a15, 2);
          v877 = vdupq_lane_s32(*a15.i8, 0);
          v878 = vdupq_lane_s32(*a15.i8, 1);
          v879 = vdupq_n_s32(v848);
          v880 = vdupq_n_s32(v847);
          v1479 = vdupq_lane_s32(*&a16, 0);
          v881 = *(&a17 + 1);
          v882.i64[0] = 0x80000000800000;
          v882.i64[1] = 0x80000000800000;
          v1439 = 1.0 / *&a9;
          v1429 = 1.0 / *&v1538;
          v1509 = vdupq_lane_s32(*&a17, 1);
          v1519 = vdupq_n_s32(LODWORD(buf.height) * v856 - 4);
          v1558 = vnegq_f32(v882);
          v1489 = v876;
          v1499 = vdupq_lane_s32(*&a18, 1);
          v1459 = vdupq_n_s32(v856);
          v1469 = vdupq_lane_s32(*&a18, 0);
          do
          {
            v883 = &v874[v866 * v875];
            v884 = 0;
            if (v871)
            {
              v1547 = vmlaq_f32(v1409, v1419, v873);
              v1536 = vmlaq_f32(v1389, v1399, v873);
              v1449 = v873;
              v1528 = vmlaq_f32(v1369, v1379, v873);
              v885 = v1359;
              do
              {
                v886 = vdupq_n_s32(0x447A0000u);
                v887 = vdivq_f32(v886, *v883);
                v888 = vdivq_f32(v886, v883[1]);
                v889 = vdivq_f32(v886, v883[2]);
                __asm { FMOV            V0.4S, #4.0 }

                v891 = vaddq_f32(v885, _Q0);
                _Q0.i64[0] = 0x4100000041000000;
                _Q0.i64[1] = 0x4100000041000000;
                v892 = vaddq_f32(v885, _Q0);
                v893 = vdivq_f32(v886, v883[3]);
                __asm { FMOV            V0.4S, #12.0 }

                v895 = vaddq_f32(v885, _Q0);
                v896 = vmlaq_f32(v876, vmlaq_n_f32(v1528, v885, *&v853), v887);
                v897 = vmlaq_f32(v876, vmlaq_n_f32(v1528, v891, *&v853), v888);
                v898 = vmlaq_f32(v876, vmlaq_n_f32(v1528, v892, *&v853), v889);
                v899 = vmlaq_f32(v876, vmlaq_n_f32(v1528, v895, *&v853), v893);
                v900 = vmlaq_f32(v877, vmlaq_n_f32(v1547, v885, *&v855), v887);
                v901 = v853;
                v902 = vmlaq_f32(v878, vmlaq_n_f32(v1536, v885, *&v854), v887);
                v903 = vornq_s8(vmvnq_s8(vcgezq_f32(v896)), vcgtzq_f32(v887));
                v904 = vornq_s8(vmvnq_s8(vcgezq_f32(v897)), vcgtzq_f32(v888));
                v905 = vornq_s8(vmvnq_s8(vcgezq_f32(v898)), vcgtzq_f32(v889));
                v906 = vmlaq_f32(v877, vmlaq_n_f32(v1547, v892, *&v855), v889);
                v907 = vmlaq_f32(v878, vmlaq_n_f32(v1536, v892, *&v854), v889);
                v908 = vornq_s8(vmvnq_s8(vcgezq_f32(v899)), vcgtzq_f32(v893));
                v909 = vmlaq_f32(v877, vmlaq_n_f32(v1547, v895, *&v855), v893);
                v910 = vmlaq_f32(v878, vmlaq_n_f32(v1536, v895, *&v854), v893);
                v911 = v878;
                v912 = vmlaq_f32(v1469, vdivq_f32(v1479, v896), v900);
                v913 = vmlaq_f32(v1499, vdivq_f32(v1509, v896), v902);
                v914 = vmlaq_f32(v1469, vdivq_f32(v1479, v897), vmlaq_f32(v877, vmlaq_n_f32(v1547, v891, *&v855), v888));
                v915 = vmlaq_f32(v1499, vdivq_f32(v1509, v897), vmlaq_f32(v878, vmlaq_n_f32(v1536, v891, *&v854), v888));
                v916 = vmlaq_f32(v1469, vdivq_f32(v1479, v898), v906);
                v917 = vdivq_f32(v1479, v899);
                v918 = vmlaq_f32(v1499, vdivq_f32(v1509, v898), v907);
                v919 = v880;
                v920 = v879;
                v921 = v877;
                v922 = v855;
                v923 = v854;
                v924 = vdivq_f32(v1509, v899);
                v925 = vdupq_n_s32(0x3A83126Fu);
                v926 = vmulq_f32(v896, v925);
                v927 = vmulq_f32(v897, v925);
                v928 = vmulq_f32(v898, v925);
                v929 = vmulq_f32(v899, v925);
                v930 = vcvtmq_s32_f32(v912);
                v931 = vcvtmq_s32_f32(v913);
                v932 = vcvtmq_s32_f32(v914);
                v933 = vcvtmq_s32_f32(v915);
                v934 = vmlaq_f32(v1469, v917, v909);
                v935 = vmlaq_f32(v1499, v924, v910);
                v854 = v923;
                v855 = v922;
                v877 = v921;
                v879 = v920;
                v880 = v919;
                v936 = vcvtmq_s32_f32(v916);
                v937 = vcvtmq_s32_f32(v918);
                v938 = vcvtmq_s32_f32(v934);
                v939 = vcvtmq_s32_f32(v935);
                v853 = v901;
                v940 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v939, v919), vcgeq_s32(v938, v879)), vcltzq_s32(vorrq_s8(v939, v938))), v908);
                v878 = v911;
                v941 = vmlaq_s32(v938, v939, v1459);
                v876 = v1489;
                v942 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v931, v919), vcgeq_s32(v930, v879)), vcltzq_s32(vorrq_s8(v931, v930))), v903), 0x1FuLL)), v1558, v926);
                v943 = vminq_s32(vmaxq_s32(vmlaq_s32(v930, v931, v1459), 0), v1519);
                v944 = vminq_s32(vmaxq_s32(vmlaq_s32(v932, v933, v1459), 0), v1519);
                v945 = v943.u32[1];
                v946 = v943.u32[2];
                v947 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v933, v919), vcgeq_s32(v932, v879)), vcltzq_s32(vorrq_s8(v933, v932))), v904), 0x1FuLL)), v1558, v927);
                v948 = v943.u32[3];
                v857[v943.u32[0]] = fminf(*v942.i32, v857[v943.u32[0]]);
                v949 = vminq_s32(vmaxq_s32(vmlaq_s32(v936, v937, v1459), 0), v1519);
                v857[v944.u32[1]] = fminf(*&v947.i32[1], v857[v944.u32[1]]);
                v950 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v937, v919), vcgeq_s32(v936, v879)), vcltzq_s32(vorrq_s8(v937, v936))), v905), 0x1FuLL)), v1558, v928);
                v951 = vminq_s32(vmaxq_s32(v941, 0), v1519);
                v857[v949.u32[2]] = fminf(*&v950.i32[2], v857[v949.u32[2]]);
                v952 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v940, 0x1FuLL)), v1558, v929);
                v857[v951.u32[3]] = fminf(*&v952.i32[3], v857[v951.u32[3]]);
                v857[v945] = fminf(*&v942.i32[1], v857[v945]);
                v857[v944.u32[2]] = fminf(*&v947.i32[2], v857[v944.u32[2]]);
                v857[v949.u32[3]] = fminf(*&v950.i32[3], v857[v949.u32[3]]);
                v857[v951.u32[0]] = fminf(*v952.i32, v857[v951.u32[0]]);
                v857[v946] = fminf(*&v942.i32[2], v857[v946]);
                v857[v944.u32[3]] = fminf(*&v947.i32[3], v857[v944.u32[3]]);
                v857[v949.u32[0]] = fminf(*v950.i32, v857[v949.u32[0]]);
                v857[v951.u32[1]] = fminf(*&v952.i32[1], v857[v951.u32[1]]);
                v857[v948] = fminf(*&v942.i32[3], v857[v948]);
                v857[v944.u32[0]] = fminf(*v947.i32, v857[v944.u32[0]]);
                v857[v949.u32[1]] = fminf(*&v950.i32[1], v857[v949.u32[1]]);
                v857[v951.u32[2]] = fminf(*&v952.i32[2], v857[v951.u32[2]]);
                __asm { FMOV            V0.4S, #16.0 }

                v885 = vaddq_f32(v885, _Q0);
                v883 += 4;
                v884 += 16;
              }

              while (v884 < v871);
              v884 = (((v846 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
              v860 = a14;
              v859 = a15;
              v862 = a12;
              v861 = a13;
              v864 = *&a18;
              v863 = *&a11;
              v865 = *&a16;
              v869 = v1439;
              v870 = v1429;
              v872 = 0.5;
              v873 = v1449;
              v881 = *(&a17 + 1);
            }

            if (v884 < v846)
            {
              do
              {
                v954 = 1000.0 / v883->f32[0];
                _Q2 = vaddq_f32(v859, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v862, v869 * (v954 * ((v884 + v872) - v863))), v861, v870 * (((v866 + v872) - *(&a11 + 1)) * v954)), v860, v954));
                if (_Q2.f32[2] >= 0.0 && v954 > 0.0)
                {
                  v956 = (v864 + (_Q2.f32[0] * (v865 / _Q2.f32[2])));
                  if ((v956 & 0x80000000) == 0 && v848 > v956)
                  {
                    _S3 = v881 / _Q2.f32[2];
                    __asm { FMLA            S4, S3, V2.S[1] }

                    v959 = _S4;
                    if ((_S4 & 0x80000000) == 0 && v847 > v959)
                    {
                      v960 = _Q2.f32[2] * 0.001;
                      v961 = &v857[v856 * v959];
                      v962 = v961[v956];
                      if (v962 == 0.0 || v962 > v960)
                      {
                        v961[v956] = v960;
                      }
                    }
                  }
                }

                ++v884;
                v883 = (v883 + 4);
              }

              while (v846 != v884);
            }

            ++v866;
            __asm { FMOV            V0.4S, #1.0 }

            v873 = vaddq_f32(v873, _Q0);
          }

          while (v866 != v845);
        }

        v721 = v851;
        if (v858)
        {
          v965 = 0;
          v966 = *&buf.width;
          v967 = buf.width >> 4;
          v968 = buf.data;
          v969 = buf.height;
          if (buf.width >> 4 <= 1)
          {
            v967 = 1;
          }

          if (buf.height <= 1)
          {
            v969 = 1;
          }

          v970 = buf.width & 0xFFFFFFF0;
          v971.i64[0] = 0x80000000800000;
          v971.i64[1] = 0x80000000800000;
          v972 = vnegq_f32(v971);
          do
          {
            v973 = &v968[*(&v966 + 1) * v965];
            v974 = v967;
            if (v966 >= 0x10)
            {
              do
              {
                v975 = v973[2];
                v976 = v973[3];
                v977 = vbicq_s8(v973[1], vceqq_f32(v973[1], v972));
                *v973 = vbicq_s8(*v973, vceqq_f32(*v973, v972));
                v973[1] = v977;
                v973[2] = vbicq_s8(v975, vceqq_f32(v975, v972));
                v973[3] = vbicq_s8(v976, vceqq_f32(v976, v972));
                v973 += 4;
                --v974;
              }

              while (v974);
            }

            v978 = v966 & 0xFFFFFFF0;
            if (v970 != v966)
            {
              do
              {
                if (v973->f32[0] == 3.4028e38)
                {
                  v973->i32[0] = 0;
                }

                ++v978;
                v973 = (v973 + 4);
              }

              while (v978 < v966);
            }

            ++v965;
          }

          while (v965 != v969);
        }

        goto LABEL_389;
      }

      if (PixelFormatType != 1751410032)
      {
        if (PixelFormatType == 1751411059)
        {
          v610 = CVPixelBufferGetHeight(a1);
          v611 = CVPixelBufferGetWidth(a1);
          v612 = CVPixelBufferGetHeight(pixelBuffer);
          v613 = CVPixelBufferGetWidth(pixelBuffer);
          v614 = CVPixelBufferGetBytesPerRow(pixelBuffer);
          CVPixelBufferLockBaseAddress(a1, 1uLL);
          CVPixelBufferLockBaseAddress(pixelBuffer, 0);
          memset(&v1562, 0, sizeof(v1562));
          v615 = MEMORY[0x277CBF3A0];
          PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
          memset(&buf, 0, sizeof(buf));
          PixelBufferUtils::asVImageBuffer(pixelBuffer, *v615, &buf);
          v617 = buf.data;
          v616 = buf.height;
          bzero(buf.data, buf.height * buf.rowBytes);
          v620 = a14;
          v619 = a15;
          v622 = a12;
          v621 = a13;
          v624 = *&a18;
          v623 = *&a11;
          v625 = *&a16;
          if (v610)
          {
            v626 = 0;
            v627.i32[1] = v1538;
            v628.i32[1] = HIDWORD(a9);
            v629 = 1.0 / *&a9;
            v630 = 1.0 / *&v1538;
            v631 = 0.5;
            *v618.i32 = 0.5 - *(&a11 + 1);
            v632 = vdupq_lane_s32(v618, 0);
            v633 = v611 & 0xFFFFFFFFFFFFFFF0;
            *v618.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
            *v627.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
            *v628.i32 = (1.0 / *&v1538) * a13.f32[0];
            v634 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
            v1377 = vdupq_lane_s32(*a14.i8, 0);
            v1387 = vdupq_lane_s32(v628, 0);
            v1358 = vdupq_lane_s32(*a14.i8, 1);
            v1367 = vdupq_lane_s32(v627, 0);
            v1338 = vdupq_laneq_s32(a14, 2);
            v1343 = vdupq_lane_s32(v618, 0);
            v635 = v1562.data;
            v636 = v1562.rowBytes;
            v1330 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
            v637 = vdupq_laneq_s32(a15, 2);
            v638 = vdupq_n_s32(v613);
            v639 = vdupq_n_s32(v612);
            v640 = vdupq_n_s32(v614 >> 1);
            v641 = *(&a17 + 1);
            v1407 = 1.0 / *&a9;
            v1397 = 1.0 / *&v1538;
            v1517 = (1.0 / *&a9) * a12.f32[0];
            v1526 = vdupq_lane_s32(*&a18, 1);
            v1497 = vdupq_lane_s32(*&a17, 1);
            v1507 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
            v1477 = vdupq_lane_s32(*a15.i8, 0);
            v1487 = vdupq_lane_s32(*&a18, 0);
            v1457 = vdupq_lane_s32(*a15.i8, 1);
            v1467 = vdupq_n_s32(v616 * (v614 >> 1) - 2);
            v1437 = vdupq_lane_s32(*&a16, 0);
            v1447 = v634;
            v1427 = v637;
            do
            {
              v642 = &v635[v626 * v636];
              v643 = 0;
              if (v633)
              {
                v1534 = vmlaq_f32(v1377, v1387, v632);
                v1556 = vmlaq_f32(v1358, v1367, v632);
                v1417 = v632;
                v1545 = vmlaq_f32(v1338, v1343, v632);
                v644 = v1330;
                do
                {
                  v645 = vdupq_n_s32(0x447A0000u);
                  v646 = vdivq_f32(v645, *v642);
                  v647 = vdivq_f32(v645, v642[1]);
                  __asm { FMOV            V1.4S, #4.0 }

                  v649 = vaddq_f32(v644, _Q1);
                  v650 = vdivq_f32(v645, v642[2]);
                  _Q1.i64[0] = 0x4100000041000000;
                  _Q1.i64[1] = 0x4100000041000000;
                  v651 = vaddq_f32(v644, _Q1);
                  __asm { FMOV            V1.4S, #12.0 }

                  v653 = vaddq_f32(v644, _Q1);
                  v654 = vdivq_f32(v645, v642[3]);
                  v655 = vmlaq_f32(v637, vmlaq_n_f32(v1545, v644, v634), v646);
                  v656 = vmlaq_f32(v637, vmlaq_n_f32(v1545, v649, v634), v647);
                  v657 = vmlaq_f32(v637, vmlaq_n_f32(v1545, v651, v634), v650);
                  v658 = vmlaq_f32(v637, vmlaq_n_f32(v1545, v653, v634), v654);
                  v659 = vmlaq_f32(v1477, vmlaq_n_f32(v1534, v644, v1517), v646);
                  v660 = v640;
                  v661 = vmlaq_f32(v1457, vmlaq_n_f32(v1556, v644, v1507), v646);
                  v662 = vandq_s8(vcgezq_f32(v655), vcgtzq_f32(v646));
                  v663 = vmlaq_f32(v1477, vmlaq_n_f32(v1534, v649, v1517), v647);
                  v664 = vandq_s8(vcgezq_f32(v656), vcgtzq_f32(v647));
                  v665 = vmlaq_f32(v1457, vmlaq_n_f32(v1556, v649, v1507), v647);
                  v666 = vmlaq_f32(v1477, vmlaq_n_f32(v1534, v651, v1517), v650);
                  v667 = v639;
                  v668 = v638;
                  v669 = vmlaq_f32(v1457, vmlaq_n_f32(v1556, v651, v1507), v650);
                  v670 = vandq_s8(vcgezq_f32(v657), vcgtzq_f32(v650));
                  v671 = vmlaq_f32(v1477, vmlaq_n_f32(v1534, v653, v1517), v654);
                  v672 = vmlaq_f32(v1457, vmlaq_n_f32(v1556, v653, v1507), v654);
                  v673 = vmlaq_f32(v1487, vdivq_f32(v1437, v655), v659);
                  v674 = vmlaq_f32(v1526, vdivq_f32(v1497, v655), v661);
                  v675 = vmlaq_f32(v1487, vdivq_f32(v1437, v656), v663);
                  v676 = vmlaq_f32(v1526, vdivq_f32(v1497, v656), v665);
                  v677 = vdivq_f32(v1497, v657);
                  v678 = vandq_s8(vcgezq_f32(v658), vcgtzq_f32(v654));
                  v679 = vmlaq_f32(v1487, vdivq_f32(v1437, v657), v666);
                  v680 = vdivq_f32(v1437, v658);
                  v681 = vdivq_f32(v1497, v658);
                  v682 = vdivq_f32(v645, v655);
                  v683 = vdivq_f32(v645, v656);
                  v684 = vdivq_f32(v645, v657);
                  v685 = vdivq_f32(v645, v658);
                  v686 = vcvtmq_s32_f32(v673);
                  v687 = vcvtmq_s32_f32(v674);
                  v688 = vcvtmq_s32_f32(v675);
                  v689 = vcvtmq_s32_f32(v676);
                  v690 = vcvtmq_s32_f32(v679);
                  v691 = vmlaq_f32(v1526, v677, v669);
                  v638 = v668;
                  v639 = v667;
                  v692 = vmlaq_f32(v1487, v680, v671);
                  v693 = vcvtmq_s32_f32(v691);
                  v694 = vmlaq_f32(v1526, v681, v672);
                  v640 = v660;
                  v695 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v667, v687), vcgtq_s32(v638, v686)), vcgezq_s32(vorrq_s8(v687, v686))), v662);
                  v696 = vcvtmq_s32_f32(v692);
                  v697 = vcvtmq_s32_f32(v694);
                  v698 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v667, v689), vcgtq_s32(v638, v688)), vcgezq_s32(vorrq_s8(v689, v688))), v664);
                  v637 = v1427;
                  v699 = vmlaq_s32(v686, v687, v660);
                  v634 = v1447;
                  v700 = vandq_s8(v682, vcltzq_s32(vshlq_n_s32(v695, 0x1FuLL)));
                  v701 = vandq_s8(v684, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v667, v693), vcgtq_s32(v638, v690)), vcgezq_s32(vorrq_s8(v693, v690))), v670), 0x1FuLL)));
                  v702 = vminq_s32(vmaxq_s32(v699, 0), v1467);
                  v703 = vminq_s32(vmaxq_s32(vmlaq_s32(v688, v689, v660), 0), v1467);
                  v704 = vminq_s32(vmaxq_s32(vmlaq_s32(v690, v693, v660), 0), v1467);
                  v705 = vminq_s32(vmaxq_s32(vmlaq_s32(v696, v697, v660), 0), v1467);
                  v706 = v702.u32[1];
                  v707 = vandq_s8(v685, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v667, v697), vcgtq_s32(v638, v696)), vcgezq_s32(vorrq_s8(v697, v696))), v678), 0x1FuLL)));
                  *v678.i8 = vcvt_f16_f32(v700);
                  v617[v702.u32[0]] = fmaxl(*v678.i16, v617[v702.u32[0]]);
                  *v702.i8 = vcvt_f16_f32(vandq_s8(v683, vcltzq_s32(vshlq_n_s32(v698, 0x1FuLL))));
                  v617[v703.u32[1]] = fmaxl(*&v702.i16[1], v617[v703.u32[1]]);
                  *v701.f32 = vcvt_f16_f32(v701);
                  v617[v704.u32[2]] = fmaxl(*&v701.i16[2], v617[v704.u32[2]]);
                  *v683.i8 = vcvt_f16_f32(v707);
                  v617[v705.u32[3]] = fmaxl(*&v683.i16[3], v617[v705.u32[3]]);
                  v617[v706] = fmaxl(*&v678.i16[1], v617[v706]);
                  v617[v703.u32[2]] = fmaxl(*&v702.i16[2], v617[v703.u32[2]]);
                  v617[v704.u32[3]] = fmaxl(*&v701.i16[3], v617[v704.u32[3]]);
                  v617[v705.u32[0]] = fmaxl(*v683.i16, v617[v705.u32[0]]);
                  v617[v702.u32[2]] = fmaxl(*&v678.i16[2], v617[v702.u32[2]]);
                  v617[v703.u32[3]] = fmaxl(*&v702.i16[3], v617[v703.u32[3]]);
                  v617[v704.u32[0]] = fmaxl(*v701.i16, v617[v704.u32[0]]);
                  v617[v705.u32[1]] = fmaxl(*&v683.i16[1], v617[v705.u32[1]]);
                  v617[v702.u32[3]] = fmaxl(*&v678.i16[3], v617[v702.u32[3]]);
                  v617[v703.u32[0]] = fmaxl(*v702.i16, v617[v703.u32[0]]);
                  v617[v704.u32[1]] = fmaxl(*&v701.i16[1], v617[v704.u32[1]]);
                  v617[v705.u32[2]] = fmaxl(*&v683.i16[2], v617[v705.u32[2]]);
                  __asm { FMOV            V0.4S, #16.0 }

                  v644 = vaddq_f32(v644, _Q0);
                  v642 += 4;
                  v643 += 16;
                }

                while (v643 < v633);
                v643 = (((v611 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
                v620 = a14;
                v619 = a15;
                v622 = a12;
                v621 = a13;
                v624 = *&a18;
                v623 = *&a11;
                v625 = *&a16;
                v629 = v1407;
                v630 = v1397;
                v631 = 0.5;
                v632 = v1417;
                v641 = *(&a17 + 1);
              }

              if (v643 < v611)
              {
                do
                {
                  v709 = 1000.0 / v642->f32[0];
                  _Q3 = vaddq_f32(v619, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v622, v629 * (v709 * ((v643 + v631) - v623))), v621, v630 * (((v626 + v631) - *(&a11 + 1)) * v709)), v620, v709));
                  if (_Q3.f32[2] >= 0.0 && v709 > 0.0)
                  {
                    v711 = (v624 + (_Q3.f32[0] * (v625 / _Q3.f32[2])));
                    if ((v711 & 0x80000000) == 0 && v613 > v711)
                    {
                      _S2 = v641 / _Q3.f32[2];
                      __asm { FMLA            S4, S2, V3.S[1] }

                      v714 = _S4;
                      if ((_S4 & 0x80000000) == 0 && v612 > v714)
                      {
                        _S1 = 1000.0 / _Q3.f32[2];
                        v716 = &v617[(v614 >> 1) * v714];
                        __asm
                        {
                          FCVT            H1, S1
                          FCMP            H2, #0
                        }

                        if (_ZF || _H2 < _H1)
                        {
                          v716[v711] = _H1;
                        }
                      }
                    }
                  }

                  ++v643;
                  v642 = (v642 + 4);
                }

                while (v611 != v643);
              }

              ++v626;
              __asm { FMOV            V0.4S, #1.0 }

              v632 = vaddq_f32(v632, _Q0);
            }

            while (v626 != v610);
          }

          goto LABEL_183;
        }

LABEL_391:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_393;
        }

        return -22950;
      }
    }

    v722 = CVPixelBufferGetHeight(a1);
    v723 = CVPixelBufferGetWidth(a1);
    v724 = CVPixelBufferGetHeight(pixelBuffer);
    v725 = CVPixelBufferGetWidth(pixelBuffer);
    v726 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    memset(&v1562, 0, sizeof(v1562));
    v727 = MEMORY[0x277CBF3A0];
    v728 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v727, &buf);
    v730 = v726 >> 1;
    v731 = buf.data;
    if (v730 * v724)
    {
      memset_pattern16(buf.data, &unk_2404C86A0, 2 * v730 * v724);
    }

    v732 = buf.height;
    v734 = a14;
    v733 = a15;
    v736 = a12;
    v735 = a13;
    v738 = *&a18;
    v737 = *&a11;
    v739 = *&a16;
    if (v722)
    {
      v740 = 0;
      v741.i32[1] = v1538;
      v742.i32[1] = HIDWORD(a9);
      v743 = 1.0 / *&a9;
      v744 = 1.0 / *&v1538;
      v745 = v723 & 0xFFFFFFFFFFFFFFF0;
      v746 = 0.5;
      *v729.i32 = 0.5 - *(&a11 + 1);
      v747 = vdupq_lane_s32(v729, 0);
      *v729.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
      *v741.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
      *v742.i32 = (1.0 / *&v1538) * a13.f32[0];
      v748 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v749 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      v750 = (1.0 / *&a9) * a12.f32[0];
      v751 = v1562.data;
      v752 = v1562.rowBytes;
      v1418 = vdupq_lane_s32(*a14.i8, 0);
      v1428 = vdupq_lane_s32(v742, 0);
      v1398 = vdupq_lane_s32(*a14.i8, 1);
      v1408 = vdupq_lane_s32(v741, 0);
      v1378 = vdupq_laneq_s32(a14, 2);
      v1388 = vdupq_lane_s32(v729, 0);
      v753 = vdupq_laneq_s32(a15, 2);
      v754 = vdupq_lane_s32(*a15.i8, 0);
      v755 = vdupq_lane_s32(*a15.i8, 1);
      v756 = vdupq_n_s32(v725);
      v757 = vdupq_n_s32(v724);
      v1368 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v758 = vdupq_n_s32(LODWORD(buf.height) * v730 - 2);
      v759 = *(&a17 + 1);
      v1448 = 1.0 / *&a9;
      v1438 = 1.0 / *&v1538;
      v1518 = vdupq_lane_s32(*&a16, 0);
      v1527 = vdupq_n_s32(v730);
      v1498 = vdupq_lane_s32(*&a18, 0);
      v1508 = vdupq_lane_s32(*&a17, 1);
      v1478 = vdupq_lane_s32(*&a18, 1);
      v1488 = v753;
      v1468 = v748;
      do
      {
        v760 = &v751[v740 * v752];
        v761 = 0;
        if (v745)
        {
          v1557 = vmlaq_f32(v1418, v1428, v747);
          v1546 = vmlaq_f32(v1398, v1408, v747);
          v1458 = v747;
          v1535 = vmlaq_f32(v1378, v1388, v747);
          v762 = v1368;
          do
          {
            v763 = vdupq_n_s32(0x447A0000u);
            v764 = vdivq_f32(v763, *v760);
            v765 = vdivq_f32(v763, v760[1]);
            v766 = vdivq_f32(v763, v760[2]);
            __asm { FMOV            V1.4S, #4.0 }

            v768 = vaddq_f32(v762, _Q1);
            _Q1.i64[0] = 0x4100000041000000;
            _Q1.i64[1] = 0x4100000041000000;
            v769 = vaddq_f32(v762, _Q1);
            v770 = vdivq_f32(v763, v760[3]);
            __asm { FMOV            V3.4S, #12.0 }

            v772 = vaddq_f32(v762, _Q3);
            v773 = vmlaq_f32(v753, vmlaq_n_f32(v1535, v762, v748), v764);
            v774 = vmlaq_f32(v753, vmlaq_n_f32(v1535, v768, v748), v765);
            v775 = vmlaq_f32(v753, vmlaq_n_f32(v1535, v769, v748), v766);
            v776 = vmlaq_f32(v753, vmlaq_n_f32(v1535, v772, v748), v770);
            v777 = v757;
            v778 = vmlaq_f32(v754, vmlaq_n_f32(v1557, v762, v750), v764);
            v779 = vmlaq_f32(v755, vmlaq_n_f32(v1546, v762, v749), v764);
            v780 = vornq_s8(vmvnq_s8(vcgezq_f32(v773)), vcgtzq_f32(v764));
            v781 = vornq_s8(vmvnq_s8(vcgezq_f32(v774)), vcgtzq_f32(v765));
            v782 = vornq_s8(vmvnq_s8(vcgezq_f32(v775)), vcgtzq_f32(v766));
            v783 = vmlaq_f32(v754, vmlaq_n_f32(v1557, v769, v750), v766);
            v784 = vmlaq_f32(v755, vmlaq_n_f32(v1546, v769, v749), v766);
            v785 = vornq_s8(vmvnq_s8(vcgezq_f32(v776)), vcgtzq_f32(v770));
            v786 = vmlaq_f32(v754, vmlaq_n_f32(v1557, v772, v750), v770);
            v787 = vmlaq_f32(v755, vmlaq_n_f32(v1546, v772, v749), v770);
            v788 = vmlaq_f32(v1498, vdivq_f32(v1518, v773), v778);
            v789 = vmlaq_f32(v1478, vdivq_f32(v1508, v773), v779);
            v790 = vmlaq_f32(v1498, vdivq_f32(v1518, v774), vmlaq_f32(v754, vmlaq_n_f32(v1557, v768, v750), v765));
            v791 = vmlaq_f32(v1478, vdivq_f32(v1508, v774), vmlaq_f32(v755, vmlaq_n_f32(v1546, v768, v749), v765));
            v792 = vmlaq_f32(v1498, vdivq_f32(v1518, v775), v783);
            v793 = vmlaq_f32(v1478, vdivq_f32(v1508, v775), v784);
            v794 = vdupq_n_s32(0x3A83126Fu);
            v795 = vmulq_f32(v773, v794);
            v796 = vmulq_f32(v774, v794);
            v797 = vmulq_f32(v775, v794);
            v798 = vmulq_f32(v776, v794);
            v799 = vcvtmq_s32_f32(v788);
            v800 = vcvtmq_s32_f32(v789);
            v801 = vcvtmq_s32_f32(v790);
            v802 = vcvtmq_s32_f32(v791);
            v803 = vmlaq_f32(v1478, vdivq_f32(v1508, v776), v787);
            v757 = v777;
            v804 = vcvtmq_s32_f32(v792);
            v805 = vcvtmq_s32_f32(v793);
            v806 = vcvtmq_s32_f32(vmlaq_f32(v1498, vdivq_f32(v1518, v776), v786));
            v807 = vcvtmq_s32_f32(v803);
            v808 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v807, v777), vcgeq_s32(v806, v756)), vcltzq_s32(vorrq_s8(v807, v806))), v785);
            v809 = vdupq_n_s32(0x477FE000u);
            v810 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v800, v777), vcgeq_s32(v799, v756)), vcltzq_s32(vorrq_s8(v800, v799))), v780), 0x1FuLL)), v809, v795);
            v811 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v802, v777), vcgeq_s32(v801, v756)), vcltzq_s32(vorrq_s8(v802, v801))), v781), 0x1FuLL)), v809, v796);
            v812 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v805, v777), vcgeq_s32(v804, v756)), vcltzq_s32(vorrq_s8(v805, v804))), v782), 0x1FuLL)), v809, v797);
            v813 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v808, 0x1FuLL)), v809, v798);
            v748 = v1468;
            v753 = v1488;
            v814 = vmlaq_s32(v801, v802, v1527);
            v815 = vminq_s32(vmaxq_s32(vmlaq_s32(v799, v800, v1527), 0), v758);
            v816 = vminq_s32(vmaxq_s32(v814, 0), v758);
            v817 = vminq_s32(vmaxq_s32(vmlaq_s32(v804, v805, v1527), 0), v758);
            v818 = vminq_s32(vmaxq_s32(vmlaq_s32(v806, v807, v1527), 0), v758);
            v819 = v815.u32[1];
            *v796.i8 = vcvt_f16_f32(v810);
            v731[v815.u32[0]] = fminl(*v796.i16, v731[v815.u32[0]]);
            *v815.i8 = vcvt_f16_f32(v811);
            v731[v816.u32[1]] = fminl(*&v815.i16[1], v731[v816.u32[1]]);
            *v812.f32 = vcvt_f16_f32(v812);
            v731[v817.u32[2]] = fminl(*&v812.i16[2], v731[v817.u32[2]]);
            *v803.f32 = vcvt_f16_f32(v813);
            v731[v818.u32[3]] = fminl(*&v803.i16[3], v731[v818.u32[3]]);
            v731[v819] = fminl(*&v796.i16[1], v731[v819]);
            v731[v816.u32[2]] = fminl(*&v815.i16[2], v731[v816.u32[2]]);
            v731[v817.u32[3]] = fminl(*&v812.i16[3], v731[v817.u32[3]]);
            v731[v818.u32[0]] = fminl(*v803.i16, v731[v818.u32[0]]);
            v731[v815.u32[2]] = fminl(*&v796.i16[2], v731[v815.u32[2]]);
            v731[v816.u32[3]] = fminl(*&v815.i16[3], v731[v816.u32[3]]);
            v731[v817.u32[0]] = fminl(*v812.i16, v731[v817.u32[0]]);
            v731[v818.u32[1]] = fminl(*&v803.i16[1], v731[v818.u32[1]]);
            v731[v815.u32[3]] = fminl(*&v796.i16[3], v731[v815.u32[3]]);
            v731[v816.u32[0]] = fminl(*v815.i16, v731[v816.u32[0]]);
            v731[v817.u32[1]] = fminl(*&v812.i16[1], v731[v817.u32[1]]);
            v731[v818.u32[2]] = fminl(*&v803.i16[2], v731[v818.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v762 = vaddq_f32(v762, _Q0);
            v760 += 4;
            v761 += 16;
          }

          while (v761 < v745);
          v761 = (((v723 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v734 = a14;
          v733 = a15;
          v736 = a12;
          v735 = a13;
          v738 = *&a18;
          v737 = *&a11;
          v739 = *&a16;
          v743 = v1448;
          v744 = v1438;
          v746 = 0.5;
          v747 = v1458;
          v759 = *(&a17 + 1);
        }

        if (v761 < v723)
        {
          do
          {
            v821 = 1000.0 / v760->f32[0];
            _Q2 = vaddq_f32(v733, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v736, v743 * (v821 * ((v761 + v746) - v737))), v735, v744 * (((v740 + v746) - *(&a11 + 1)) * v821)), v734, v821));
            if (_Q2.f32[2] >= 0.0 && v821 > 0.0)
            {
              v823 = (v738 + (_Q2.f32[0] * (v739 / _Q2.f32[2])));
              if ((v823 & 0x80000000) == 0 && v725 > v823)
              {
                _S3 = v759 / _Q2.f32[2];
                __asm { FMLA            S4, S3, V2.S[1] }

                v826 = _S4;
                if ((_S4 & 0x80000000) == 0 && v724 > v826)
                {
                  _S1 = _Q2.f32[2] * 0.001;
                  v828 = &v731[v730 * v826];
                  __asm
                  {
                    FCVT            H1, S1
                    FCMP            H2, #0
                  }

                  if (_ZF || _H2 > _H1)
                  {
                    v828[v823] = _H1;
                  }
                }
              }
            }

            ++v761;
            v760 = (v760 + 4);
          }

          while (v723 != v761);
        }

        ++v740;
        __asm { FMOV            V0.4S, #1.0 }

        v747 = vaddq_f32(v747, _Q0);
      }

      while (v740 != v722);
    }

    v721 = v728;
    if (v732)
    {
      v833 = 0;
      v834 = *&buf.width;
      v835 = buf.width >> 4;
      v836 = buf.data;
      v837 = buf.height;
      if (buf.width >> 4 <= 1)
      {
        v835 = 1;
      }

      if (buf.height <= 1)
      {
        v837 = 1;
      }

      v838 = buf.width & 0xFFFFFFF0;
      do
      {
        v839 = &v836[*(&v834 + 1) * v833];
        v840 = v835;
        if (v834 >= 0x10)
        {
          do
          {
            v841 = v839[2];
            v842 = v839[3];
            v843 = vbic_s8(v839[1], vceq_f16(v839[1], 0x8400840084008400));
            *v839 = vbic_s8(*v839, vceq_f16(*v839, 0x8400840084008400));
            v839[1] = v843;
            v839[2] = vbic_s8(v841, vceq_f16(v841, 0x8400840084008400));
            v839[3] = vbic_s8(v842, vceq_f16(v842, 0x8400840084008400));
            v839 += 4;
            --v840;
          }

          while (v840);
        }

        v844 = v834 & 0xFFFFFFF0;
        if (v838 != v834)
        {
          do
          {
            if (*v839->i16 == COERCE_SHORT_FLOAT(31743))
            {
              v839->i16[0] = 0;
            }

            ++v844;
            v839 = (v839 + 2);
          }

          while (v844 < v834);
        }

        ++v833;
      }

      while (v833 != v837);
    }

    goto LABEL_389;
  }

  if (PixelFormatType <= 1717855599)
  {
    if (PixelFormatType == 825437747)
    {
      v1325 = CVPixelBufferGetHeight(a1);
      v979 = CVPixelBufferGetWidth(a1);
      v980 = CVPixelBufferGetHeight(pixelBuffer);
      v981 = CVPixelBufferGetWidth(pixelBuffer);
      v982 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      CVPixelBufferLockBaseAddress(a2, 0);
      memset(&v1562, 0, sizeof(v1562));
      v983 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
      memset(&buf, 0, sizeof(buf));
      PixelBufferUtils::asVImageBuffer(pixelBuffer, *v983, &buf);
      PixelBufferUtils::asVImageBuffer(v1341, *v983, &v1561);
      v985 = v982 >> 1;
      v1320 = v1561.data;
      v1316 = v1561.rowBytes;
      v986 = buf.data;
      if (v985 * v980)
      {
        memset_pattern16(buf.data, &unk_2404C86B0, 2 * v985 * v980);
      }

      v987 = buf.height;
      if (v1325)
      {
        v988 = 0;
        v989.i32[1] = v1538;
        v990.i32[1] = HIDWORD(a9);
        v991 = *&a11;
        v992 = 1.0 / *&a9;
        v993 = 1.0 / *&v1538;
        v994 = v979 & 0xFFFFFFFFFFFFFFF0;
        v995 = 0.5;
        *v984.i32 = 0.5 - *(&a11 + 1);
        v996 = vdupq_lane_s32(v984, 0);
        v998 = a13;
        v997 = a14;
        *v984.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
        *v989.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
        *v990.i32 = (1.0 / *&v1538) * a13.f32[0];
        v1297 = vdupq_lane_s32(*a14.i8, 0);
        v1299 = vdupq_lane_s32(v990, 0);
        v1293 = vdupq_lane_s32(*a14.i8, 1);
        v1295 = vdupq_lane_s32(v989, 0);
        v1291 = vdupq_laneq_s32(a14, 2);
        v1292 = vdupq_lane_s32(v984, 0);
        v999 = a12;
        v1000 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
        v1001 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
        v1002 = (1.0 / *&a9) * a12.f32[0];
        v1003 = a15;
        v1004 = __PAIR64__(DWORD1(a17), a16);
        v1005 = vdupq_laneq_s32(a15, 2);
        v1006 = vdupq_lane_s32(*a15.i8, 0);
        v1007 = vdupq_lane_s32(*a15.i8, 1);
        v1290 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
        v1008 = v981;
        v1009 = v980;
        v1287 = (((v979 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
        v1010 = vdupq_lane_s32(*&a16, 0);
        v1011 = a18;
        v1012 = vdupq_lane_s32(*&a18, 1);
        v1312 = v1562.data;
        v1309 = v1562.rowBytes;
        v1360 = vdupq_n_s32(v981);
        v1306 = v979;
        v1304 = v985;
        v1302 = 1.0 / *&a9;
        v1470 = v979 & 0xFFFFFFFFFFFFFFF0;
        v1450 = v1005;
        v1460 = v1000;
        v1430 = vdupq_n_s32(LODWORD(buf.height) * v985 - 2);
        v1440 = v1002;
        v1288 = v981;
        v1410 = vdupq_n_s32(v985);
        v1420 = v1010;
        v1390 = v1006;
        v1400 = vdupq_lane_s32(*&a18, 0);
        v1370 = vdupq_lane_s32(*&a17, 1);
        v1380 = vdupq_n_s32(v980);
        do
        {
          v1013 = &v1312[v1309 * v988];
          v1014 = &v1320[v988 * v1316];
          if (v994)
          {
            v1339 = v988;
            v1015 = 0;
            v1500 = vmlaq_f32(v1297, v1299, v996);
            v1490 = vmlaq_f32(v1293, v1295, v996);
            v1331 = v996;
            v1480 = vmlaq_f32(v1291, v1292, v996);
            v1016 = v1290;
            do
            {
              v1559 = v1015;
              v1017 = vdupq_n_s32(0x447A0000u);
              v1018 = vdivq_f32(v1017, *v1013);
              v1019 = vdivq_f32(v1017, v1013[1]);
              v1020 = vdivq_f32(v1017, v1013[2]);
              __asm { FMOV            V0.4S, #4.0 }

              v1022 = vaddq_f32(v1016, _Q0);
              _Q0.i64[0] = 0x4100000041000000;
              _Q0.i64[1] = 0x4100000041000000;
              v1023 = vaddq_f32(v1016, _Q0);
              __asm { FMOV            V0.4S, #12.0 }

              v1025 = vaddq_f32(v1016, _Q0);
              v1026 = vdivq_f32(v1017, v1013[3]);
              v1027 = vmlaq_f32(v1005, vmlaq_n_f32(v1480, v1016, v1000), v1018);
              v1028 = vmlaq_f32(v1005, vmlaq_n_f32(v1480, v1022, v1000), v1019);
              v1029 = vmlaq_f32(v1005, vmlaq_n_f32(v1480, v1023, v1000), v1020);
              v1030 = vmlaq_f32(v1005, vmlaq_n_f32(v1480, v1025, v1000), v1026);
              v1031 = v1007;
              v1032 = vmlaq_f32(v1007, vmlaq_n_f32(v1490, v1016, v1001), v1018);
              v1033 = vmlaq_f32(v1007, vmlaq_n_f32(v1490, v1022, v1001), v1019);
              v1034 = vmlaq_f32(v1007, vmlaq_n_f32(v1490, v1023, v1001), v1020);
              v1035 = vmlaq_f32(v1006, vmlaq_n_f32(v1500, v1025, v1002), v1026);
              v1036 = vornq_s8(vmvnq_s8(vcgezq_f32(v1027)), vcgtzq_f32(v1018));
              v1037 = vmlaq_f32(v1007, vmlaq_n_f32(v1490, v1025, v1001), v1026);
              v1038 = vornq_s8(vmvnq_s8(vcgezq_f32(v1028)), vcgtzq_f32(v1019));
              v1039 = vmlaq_f32(v1400, vdivq_f32(v1010, v1027), vmlaq_f32(v1006, vmlaq_n_f32(v1500, v1016, v1002), v1018));
              v1040 = vmlaq_f32(v1012, vdivq_f32(v1370, v1027), v1032);
              v1041 = vmlaq_f32(v1400, vdivq_f32(v1010, v1028), vmlaq_f32(v1006, vmlaq_n_f32(v1500, v1022, v1002), v1019));
              v1042 = vornq_s8(vmvnq_s8(vcgezq_f32(v1029)), vcgtzq_f32(v1020));
              v1043 = vmlaq_f32(v1012, vdivq_f32(v1370, v1028), v1033);
              v1044 = vmlaq_f32(v1400, vdivq_f32(v1010, v1029), vmlaq_f32(v1006, vmlaq_n_f32(v1500, v1023, v1002), v1020));
              v1045 = vdivq_f32(v1370, v1030);
              v1046.i64[0] = 0x4100000041000000;
              v1046.i64[1] = 0x4100000041000000;
              v1047 = vmulq_f32(v1027, v1046);
              v1048 = vmulq_f32(v1028, v1046);
              v1049 = vornq_s8(vmvnq_s8(vcgezq_f32(v1030)), vcgtzq_f32(v1026));
              v1050 = vmulq_f32(v1029, v1046);
              v1051 = vmulq_f32(v1030, v1046);
              v1052 = vcvtmq_s32_f32(v1039);
              v1053 = vcvtmq_s32_f32(v1040);
              v1054 = vcvtmq_s32_f32(v1041);
              v1055 = vcvtmq_s32_f32(v1043);
              v1056 = vcvtmq_s32_f32(v1044);
              v1057 = vmlaq_f32(v1400, vdivq_f32(v1010, v1030), v1035);
              v1007 = v1031;
              v1058 = vcvtmq_s32_f32(vmlaq_f32(v1012, vdivq_f32(v1370, v1029), v1034));
              v1059 = vcvtmq_s32_f32(v1057);
              v1060 = vcvtmq_s32_f32(vmlaq_f32(v1012, v1045, v1037));
              v1061 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1053, v1380), vcgeq_s32(v1052, v1360)), vcltzq_s32(vorrq_s8(v1053, v1052))), v1036);
              v1062 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1055, v1380), vcgeq_s32(v1054, v1360)), vcltzq_s32(vorrq_s8(v1055, v1054))), v1038);
              v1063 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1058, v1380), vcgeq_s32(v1056, v1360)), vcltzq_s32(vorrq_s8(v1058, v1056))), v1042);
              v1064 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1060, v1380), vcgeq_s32(v1059, v1360)), vcltzq_s32(vorrq_s8(v1060, v1059))), v1049);
              v1065 = vdupq_n_s32(0x46FFFE00u);
              v1066 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1061, 0x1FuLL)), v1065, v1047);
              v1067 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1062, 0x1FuLL)), v1065, v1048);
              v1068 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1063, 0x1FuLL)), v1065, v1050);
              v1069 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1064, 0x1FuLL)), v1065, v1051);
              *v1065.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1061), 0xFuLL));
              *v1045.f32 = vorr_s8(vmovn_s32(v1052), *v1065.i8);
              *v1049.i8 = vorr_s8(vmovn_s32(v1053), *v1065.i8);
              *v1061.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1062), 0xFuLL));
              v1031.val[0] = vorr_s8(vmovn_s32(v1054), *v1061.i8);
              *v1065.i8 = vorr_s8(vmovn_s32(v1055), *v1061.i8);
              v1070 = v1014;
              vst2_s16(v1070, v1045);
              v1070 += 8;
              *v1063.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1063), 0xFuLL));
              *v1045.f32 = vorr_s8(vmovn_s32(v1056), *v1063.i8);
              *v1049.i8 = vorr_s8(vmovn_s32(v1058), *v1063.i8);
              v1071 = v1014 + 16;
              vst2_s16(v1071, v1045);
              v1006 = v1390;
              v1010 = v1420;
              vst2_s16(v1070, v1031);
              v1002 = v1440;
              v1005 = v1450;
              *v1063.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1064), 0xFuLL));
              *v1064.i8 = vorr_s8(vmovn_s32(v1059), *v1063.i8);
              v1031.val[0] = vorr_s8(vmovn_s32(v1060), *v1063.i8);
              v1072 = v1014 + 24;
              vst2_s16(v1072, *(&v1031 - 8));
              v1000 = v1460;
              v1073 = vmlaq_s32(v1059, v1060, v1410);
              v1074 = vminq_s32(vmaxq_s32(vmlaq_s32(v1052, v1053, v1410), 0), v1430);
              v1548 = v1074.u32[1];
              v1075 = v1074.i64[1];
              v1076 = v1074.i32[0];
              v1077 = vcvtq_s32_f32(v1066);
              v1078 = v1077.i32[1];
              v1079 = v1077.i32[2];
              v1520 = v1077.i32[3];
              v1080 = v1077.i32[0];
              v1081 = vminq_s32(vmaxq_s32(v1073, 0), v1430);
              v1082 = vcvtq_s32_f32(v1069);
              v1083 = v1081.u32[3];
              v1510 = v1081.u32[1];
              v1084 = v1081.u32[2];
              v1085 = v1081.i32[0];
              v1086 = vminq_s32(vmaxq_s32(vmlaq_s32(v1056, v1058, v1410), 0), v1430);
              v1087 = v1086.u32[2];
              v1088 = v1086.u32[3];
              v1089 = v1086.u32[1];
              v1090 = v1086.i32[0];
              v1091 = vcvtq_s32_f32(v1068);
              v1092 = v1091.i32[2];
              v1093 = v1091.i32[3];
              v1094 = v1091.i32[1];
              v1095 = v1091.i32[0];
              v1096 = vminq_s32(vmaxq_s32(vmlaq_s32(v1054, v1055, v1410), 0), v1430);
              v1097 = v986[v1076];
              v1098 = vcvtq_s32_f32(v1067);
              if (v1080 < v1097)
              {
                LOWORD(v1097) = v1080;
              }

              v986[v1076] = v1097;
              v1099 = v1098.i32[1];
              v1100 = v1014;
              v1101 = v1013;
              v1102 = v1098.i32[2];
              v1103 = v1098.i32[3];
              v1104 = v1098.i32[0];
              __asm { FMOV            V0.4S, #16.0 }

              v1016 = vaddq_f32(v1016, _Q0);
              if (v1099 >= v986[v1096.u32[1]])
              {
                LOWORD(v1099) = v986[v1096.u32[1]];
              }

              v986[v1096.u32[1]] = v1099;
              v1106 = v986[v1087];
              if (v1092 < v1106)
              {
                LOWORD(v1106) = v1092;
              }

              v986[v1087] = v1106;
              v1107 = v986[v1083];
              if (v1082.i32[3] < v1107)
              {
                LOWORD(v1107) = v1082.i16[6];
              }

              v986[v1083] = v1107;
              v1108 = v986[v1548];
              if (v1078 < v1108)
              {
                LOWORD(v1108) = v1078;
              }

              v986[v1548] = v1108;
              v1109 = v986[v1096.u32[2]];
              if (v1102 < v1109)
              {
                LOWORD(v1109) = v1102;
              }

              v986[v1096.u32[2]] = v1109;
              v1110 = v986[v1088];
              if (v1093 < v1110)
              {
                LOWORD(v1110) = v1093;
              }

              v986[v1088] = v1110;
              v1111 = v986[v1085];
              if (v1082.i32[0] < v1111)
              {
                LOWORD(v1111) = v1082.i16[0];
              }

              v986[v1085] = v1111;
              v1112 = v986[v1075];
              if (v1079 < v1112)
              {
                LOWORD(v1112) = v1079;
              }

              v986[v1075] = v1112;
              v1113 = v986[v1096.u32[3]];
              if (v1103 < v1113)
              {
                LOWORD(v1113) = v1103;
              }

              v986[v1096.u32[3]] = v1113;
              v1114 = v986[v1090];
              if (v1095 < v1114)
              {
                LOWORD(v1114) = v1095;
              }

              v986[v1090] = v1114;
              v1115 = v986[v1510];
              if (v1082.i32[1] < v1115)
              {
                LOWORD(v1115) = v1082.i16[2];
              }

              v986[v1510] = v1115;
              v1116 = v986[HIDWORD(v1075)];
              if (v1520 < v1116)
              {
                LOWORD(v1116) = v1520;
              }

              v986[HIDWORD(v1075)] = v1116;
              v1117 = v986[v1096.u32[0]];
              if (v1104 < v1117)
              {
                LOWORD(v1117) = v1104;
              }

              v986[v1096.u32[0]] = v1117;
              v994 = v1470;
              v1118 = v986[v1089];
              if (v1094 < v1118)
              {
                LOWORD(v1118) = v1094;
              }

              v986[v1089] = v1118;
              v1119 = v986[v1084];
              if (v1082.i32[2] < v1119)
              {
                LOWORD(v1119) = v1082.i16[4];
              }

              v986[v1084] = v1119;
              v1013 = v1101 + 4;
              v1014 = v1100 + 32;
              v1015 = v1559 + 16;
            }

            while (v1559 + 16 < v1470);
            v1120 = v1287;
            v997 = a14;
            v1003 = a15;
            v999 = a12;
            v998 = a13;
            v1011 = a18;
            v991 = *&a11;
            v1004 = __PAIR64__(DWORD1(a17), a16);
            v979 = v1306;
            v985 = v1304;
            v988 = v1339;
            v992 = v1302;
            v993 = 1.0 / *&v1538;
            v995 = 0.5;
            v996 = v1331;
            v1009 = v980;
            v1008 = v1288;
          }

          else
          {
            v1120 = 0;
          }

          if (v1120 < v979)
          {
            do
            {
              v1121 = 1000.0 / v1013->f32[0];
              v1122 = vaddq_f32(v1003, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v999, v992 * (v1121 * ((v1120 + v995) - v991))), v998, v993 * (((v988 + v995) - *(&a11 + 1)) * v1121)), v997, v1121));
              v1123 = 0xFFFF0000FFFFLL;
              if (*&v1122.i32[2] >= 0.0 && v1121 > 0.0)
              {
                v1124 = vcvt_s32_f32(vmla_f32(v1011, vdiv_f32(v1004, vdup_laneq_s32(v1122, 2)), *v1122.i8));
                if ((v1124.i32[0] & 0x80000000) == 0 && v1008 > v1124.i32[0] && (v1124.i32[1] & 0x80000000) == 0 && v1009 > v1124.i32[1])
                {
                  v1125 = vcvts_n_s32_f32(*&v1122.i32[2], 3uLL);
                  v1126 = &v986[v985 * v1124.i32[1]];
                  if ((v1126[v1124.u32[0]] - 1) >= v1125)
                  {
                    v1126[v1124.u32[0]] = v1125;
                  }

                  v1123 = v1124;
                }
              }

              *v1014 = v1123;
              v1014[1] = WORD2(v1123);
              ++v1120;
              v1013 = (v1013 + 4);
              v1014 += 2;
            }

            while (v979 != v1120);
          }

          ++v988;
          __asm { FMOV            V0.4S, #1.0 }

          v996 = vaddq_f32(v996, _Q0);
        }

        while (v988 != v1325);
        v987 = buf.height;
      }

      v347 = a1;
      if (v987)
      {
        v1128 = 0;
        v1129 = *&buf.width;
        v1130 = buf.data;
        v1131 = buf.width >> 4;
        if (buf.width >> 4 <= 1)
        {
          v1131 = 1;
        }

        v1132 = buf.width & 0xFFFFFFF0;
        do
        {
          v1133 = &v1130[*(&v1129 + 1) * v1128];
          v1134 = v1131;
          if (v1129 >= 0x10)
          {
            do
            {
              v1135 = v1133[2];
              v1136 = v1133[3];
              v1137 = vbic_s8(v1133[1], vceq_s16(v1133[1], 0x8000800080008000));
              *v1133 = vbic_s8(*v1133, vceq_s16(*v1133, 0x8000800080008000));
              v1133[1] = v1137;
              v1133[2] = vbic_s8(v1135, vceq_s16(v1135, 0x8000800080008000));
              v1133[3] = vbic_s8(v1136, vceq_s16(v1136, 0x8000800080008000));
              v1133 += 4;
              --v1134;
            }

            while (v1134);
          }

          v1138 = v1129 & 0xFFFFFFF0;
          if (v1132 != v1129)
          {
            do
            {
              if (v1133->i16[0] == 0x7FFF)
              {
                v1133->i16[0] = 0;
              }

              ++v1138;
              v1133 = (v1133 + 2);
            }

            while (v1138 < v1129);
          }

          ++v1128;
        }

        while (v1128 != v987);
      }

      goto LABEL_321;
    }

    if (PixelFormatType == 1278226534)
    {
      goto LABEL_124;
    }

    if (PixelFormatType != 1278226536)
    {
      goto LABEL_322;
    }

    goto LABEL_88;
  }

  if (PixelFormatType <= 1751410031)
  {
    if (PixelFormatType != 1717855600)
    {
      if (PixelFormatType == 1717856627)
      {
        v21 = CVPixelBufferGetHeight(a1);
        v22 = CVPixelBufferGetWidth(a1);
        v23 = CVPixelBufferGetHeight(pixelBuffer);
        v24 = CVPixelBufferGetWidth(pixelBuffer);
        v25 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        CVPixelBufferLockBaseAddress(a2, 0);
        memset(&v1562, 0, sizeof(v1562));
        v26 = MEMORY[0x277CBF3A0];
        v27 = a1;
        PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(pixelBuffer, *v26, &buf);
        PixelBufferUtils::asVImageBuffer(v1341, *v26, &v1561);
        v28 = v1561.data;
        v29 = v1561.rowBytes;
        v31 = buf.data;
        v30 = buf.height;
        bzero(buf.data, buf.height * buf.rowBytes);
        v35 = a14;
        v34 = a15;
        v37 = a12;
        v36 = a13;
        v39 = a18;
        v38 = *&a11;
        v40.i32[0] = a16;
        if (v21)
        {
          v41 = 0;
          v42.i32[1] = v1538;
          v43 = 1.0 / *&a9;
          v44 = 1.0 / *&v1538;
          v45 = 0.5;
          *v32.i32 = 0.5 - *(&a11 + 1);
          v46 = vdupq_lane_s32(v32, 0);
          v47 = v22 & 0xFFFFFFFFFFFFFFF0;
          *v32.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
          *v42.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
          *v33.i32 = (1.0 / *&v1538) * a13.f32[0];
          v1392 = vdupq_lane_s32(*a14.i8, 0);
          v1402 = vdupq_lane_s32(v33, 0);
          v1372 = vdupq_lane_s32(*a14.i8, 1);
          v1382 = vdupq_lane_s32(v42, 0);
          v1353 = vdupq_laneq_s32(a14, 2);
          v1362 = vdupq_lane_s32(v32, 0);
          v48 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
          v49 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
          v50 = (1.0 / *&a9) * a12.f32[0];
          v1333 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
          v51 = vdupq_laneq_s32(a15, 2);
          v52 = vdupq_lane_s32(*a15.i8, 0);
          v53 = vdupq_lane_s32(*a15.i8, 1);
          v54 = vdupq_n_s32(v24);
          v55 = vdupq_n_s32(v23);
          v56 = vdupq_lane_s32(*&a16, 0);
          v40.i32[1] = DWORD1(a17);
          v57 = v1562.data;
          v58 = v1562.rowBytes;
          v59.i64[0] = 0x4100000041000000;
          v59.i64[1] = 0x4100000041000000;
          v1351 = v40;
          v1422 = 1.0 / *&a9;
          v1412 = 1.0 / *&v1538;
          v1492 = v48;
          v1502 = v51;
          v1472 = vdupq_n_s32(v25 >> 2);
          v1482 = vdupq_n_s32(v30 * (v25 >> 2) - 4);
          v1452 = vdupq_lane_s32(*&a18, 0);
          v1462 = vdupq_lane_s32(*&a17, 1);
          v1442 = vdupq_lane_s32(*&a18, 1);
          do
          {
            v60 = &v57[v58 * v41];
            v61 = &v28[v41 * v29];
            v62 = 0;
            if (v47)
            {
              v1529 = vmlaq_f32(v1392, v1402, v46);
              v1521 = vmlaq_f32(v1372, v1382, v46);
              v1432 = v46;
              v1512 = vmlaq_f32(v1353, v1362, v46);
              v63 = v1333;
              do
              {
                v1551 = v63;
                v64 = vdupq_n_s32(0x447A0000u);
                v65 = vdivq_f32(v64, *v60);
                v66 = vdivq_f32(v64, v60[1]);
                __asm { FMOV            V1.4S, #4.0 }

                v71 = vaddq_f32(v63, _Q1);
                v72 = vaddq_f32(v63, v59);
                v73 = vdivq_f32(v64, v60[2]);
                __asm { FMOV            V1.4S, #12.0 }

                v75 = vaddq_f32(v63, _Q1);
                v76 = vdivq_f32(v64, v60[3]);
                v77 = vmlaq_f32(v51, vmlaq_n_f32(v1512, v63, v48), v65);
                v78 = vmlaq_f32(v51, vmlaq_n_f32(v1512, v71, v48), v66);
                v79 = vmlaq_f32(v51, vmlaq_n_f32(v1512, v72, v48), v73);
                v80 = vmlaq_f32(v51, vmlaq_n_f32(v1512, v75, v48), v76);
                v81 = vmlaq_f32(v52, vmlaq_n_f32(v1529, v63, v50), v65);
                v82 = vmlaq_f32(v53, vmlaq_n_f32(v1521, v63, v49), v65);
                v83 = vornq_s8(vmvnq_s8(vcgezq_f32(v77)), vcgtzq_f32(v65));
                v84 = vmlaq_f32(v52, vmlaq_n_f32(v1529, v72, v50), v73);
                v85 = v54;
                v86 = vmlaq_f32(v53, vmlaq_n_f32(v1521, v72, v49), v73);
                v87 = vornq_s8(vmvnq_s8(vcgezq_f32(v78)), vcgtzq_f32(v66));
                v1540 = v77;
                v88 = vmlaq_f32(v1452, vdivq_f32(v56, v77), v81);
                v89 = vornq_s8(vmvnq_s8(vcgezq_f32(v79)), vcgtzq_f32(v73));
                v90 = vcvtmq_s32_f32(v88);
                v91 = vcvtmq_s32_f32(vmlaq_f32(v1442, vdivq_f32(v1462, v77), v82));
                v92 = vcvtmq_s32_f32(vmlaq_f32(v1452, vdivq_f32(v56, v78), vmlaq_f32(v52, vmlaq_n_f32(v1529, v71, v50), v66)));
                v93 = vcvtmq_s32_f32(vmlaq_f32(v1442, vdivq_f32(v1462, v78), vmlaq_f32(v53, vmlaq_n_f32(v1521, v71, v49), v66)));
                v94 = vcvtmq_s32_f32(vmlaq_f32(v1452, vdivq_f32(v56, v79), v84));
                v95 = vmlaq_f32(v1442, vdivq_f32(v1462, v79), v86);
                v54 = v85;
                v96 = vcvtmq_s32_f32(v95);
                v97 = vcvtmq_s32_f32(vmlaq_f32(v1452, vdivq_f32(v56, v80), vmlaq_f32(v52, vmlaq_n_f32(v1529, v75, v50), v76)));
                v59.i64[0] = 0x4100000041000000;
                v59.i64[1] = 0x4100000041000000;
                v98 = vcvtmq_s32_f32(vmlaq_f32(v1442, vdivq_f32(v1462, v80), vmlaq_f32(v53, vmlaq_n_f32(v1521, v75, v49), v76)));
                v99 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v91, v55), vcgeq_s32(v90, v85)), vcltzq_s32(vorrq_s8(v91, v90))), v83);
                v100 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v93, v55), vcgeq_s32(v92, v85)), vcltzq_s32(vorrq_s8(v93, v92))), v87);
                v101 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v96, v55), vcgeq_s32(v94, v85)), vcltzq_s32(vorrq_s8(v96, v94))), v89);
                *v95.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v99), 0xFuLL));
                v83.val[0] = vorr_s8(vmovn_s32(v90), *v95.f32);
                v102 = vorr_s8(vmovn_s32(v91), *v95.f32);
                v103 = v61;
                vst2_s16(v103, v83);
                v103 += 8;
                v104 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v98, v55), vcgeq_s32(v97, v85)), vcltzq_s32(vorrq_s8(v98, v97))), vornq_s8(vmvnq_s8(vcgezq_f32(v80)), vcgtzq_f32(v76)));
                *v89.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v100), 0xFuLL));
                v83.val[0] = vorr_s8(vmovn_s32(v92), *v89.i8);
                v105 = vorr_s8(vmovn_s32(v93), *v89.i8);
                vst2_s16(v103, v83);
                *v82.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v101), 0xFuLL));
                v83.val[0] = vorr_s8(vmovn_s32(v94), *v82.f32);
                v106 = vorr_s8(vmovn_s32(v96), *v82.f32);
                v107 = v61 + 16;
                vst2_s16(v107, v83);
                *v89.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v104), 0xFuLL));
                v83.val[0] = vorr_s8(vmovn_s32(v97), *v89.i8);
                v108 = vorr_s8(vmovn_s32(v98), *v89.i8);
                v48 = v1492;
                v109 = v61 + 24;
                vst2_s16(v109, v83);
                v110 = vdivq_f32(v64, v79);
                v111 = vdivq_f32(v64, v80);
                v112 = vminq_s32(vmaxq_s32(vmlaq_s32(v90, v91, v1472), 0), v1482);
                v113 = v112.u32[1];
                LODWORD(v109) = v112.i32[2];
                v114 = v112.u32[3];
                v115 = v112.i32[0];
                v116 = vandq_s8(vdivq_f32(v64, v1540), vcgezq_s32(vshlq_n_s32(v99, 0x1FuLL)));
                v51 = v1502;
                v117 = vminq_s32(vmaxq_s32(vmlaq_s32(v92, v93, v1472), 0), v1482);
                v31[v115] = fmaxf(*v116.i32, v31[v115]);
                v118 = vandq_s8(vdivq_f32(v64, v78), vcgezq_s32(vshlq_n_s32(v100, 0x1FuLL)));
                v31[v117.u32[1]] = fmaxf(*&v118.i32[1], v31[v117.u32[1]]);
                v119 = vminq_s32(vmaxq_s32(vmlaq_s32(v94, v96, v1472), 0), v1482);
                v120 = vandq_s8(v110, vcgezq_s32(vshlq_n_s32(v101, 0x1FuLL)));
                v121 = vminq_s32(vmaxq_s32(vmlaq_s32(v97, v98, v1472), 0), v1482);
                v31[v119.u32[2]] = fmaxf(*&v120.i32[2], v31[v119.u32[2]]);
                v122 = vandq_s8(v111, vcgezq_s32(vshlq_n_s32(v104, 0x1FuLL)));
                v31[v121.u32[3]] = fmaxf(*&v122.i32[3], v31[v121.u32[3]]);
                v31[v113] = fmaxf(*&v116.i32[1], v31[v113]);
                v31[v117.u32[2]] = fmaxf(*&v118.i32[2], v31[v117.u32[2]]);
                v31[v119.u32[3]] = fmaxf(*&v120.i32[3], v31[v119.u32[3]]);
                v31[v121.u32[0]] = fmaxf(*v122.i32, v31[v121.u32[0]]);
                v31[v109] = fmaxf(*&v116.i32[2], v31[v109]);
                v31[v117.u32[3]] = fmaxf(*&v118.i32[3], v31[v117.u32[3]]);
                v31[v119.u32[0]] = fmaxf(*v120.i32, v31[v119.u32[0]]);
                v31[v121.u32[1]] = fmaxf(*&v122.i32[1], v31[v121.u32[1]]);
                v31[v114] = fmaxf(*&v116.i32[3], v31[v114]);
                v31[v117.u32[0]] = fmaxf(*v118.i32, v31[v117.u32[0]]);
                v31[v119.u32[1]] = fmaxf(*&v120.i32[1], v31[v119.u32[1]]);
                v31[v121.u32[2]] = fmaxf(*&v122.i32[2], v31[v121.u32[2]]);
                __asm { FMOV            V0.4S, #16.0 }

                v63 = vaddq_f32(v1551, _Q0);
                v60 += 4;
                v61 += 32;
                v62 += 16;
              }

              while (v62 < v47);
              v62 = (((v22 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
              v35 = a14;
              v34 = a15;
              v37 = a12;
              v36 = a13;
              v39 = a18;
              v38 = *&a11;
              v40 = v1351;
              v43 = v1422;
              v44 = v1412;
              v45 = 0.5;
              v46 = v1432;
            }

            if (v62 < v22)
            {
              do
              {
                v124 = 1000.0 / v60->f32[0];
                v125 = vaddq_f32(v34, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v37, v43 * (v124 * ((v62 + v45) - v38))), v36, v44 * (((v41 + v45) - *(&a11 + 1)) * v124)), v35, v124));
                v126 = 0xFFFF0000FFFFLL;
                if (*&v125.i32[2] >= 0.0 && v124 > 0.0)
                {
                  v127 = vcvt_s32_f32(vmla_f32(v39, vdiv_f32(v40, vdup_laneq_s32(v125, 2)), *v125.i8));
                  if ((v127.i32[0] & 0x80000000) == 0 && v24 > v127.i32[0] && (v127.i32[1] & 0x80000000) == 0 && v23 > v127.i32[1])
                  {
                    v128 = 1000.0 / *&v125.i32[2];
                    v129 = &v31[(v25 >> 2) * v127.i32[1]];
                    v130 = v129[v127.u32[0]];
                    if (v130 == 0.0 || v130 < v128)
                    {
                      v129[v127.u32[0]] = v128;
                    }

                    v126 = v127;
                  }
                }

                *v61 = v126;
                v61[1] = WORD2(v126);
                ++v62;
                v60 = (v60 + 4);
                v61 += 2;
              }

              while (v22 != v62);
            }

            ++v41;
            __asm { FMOV            V0.4S, #1.0 }

            v46 = vaddq_f32(v46, _Q0);
          }

          while (v41 != v21);
        }

LABEL_83:
        v347 = v27;
LABEL_321:
        CVPixelBufferUnlockBaseAddress(v347, 1uLL);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        v1139 = v1341;
LABEL_390:
        CVPixelBufferUnlockBaseAddress(v1139, 0);
        return 0;
      }

      goto LABEL_322;
    }

LABEL_124:
    v481 = CVPixelBufferGetHeight(a1);
    v482 = CVPixelBufferGetWidth(a1);
    v483 = CVPixelBufferGetHeight(pixelBuffer);
    v484 = CVPixelBufferGetWidth(pixelBuffer);
    v485 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&v1562, 0, sizeof(v1562));
    v486 = MEMORY[0x277CBF3A0];
    v487 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v486, &buf);
    PixelBufferUtils::asVImageBuffer(v1341, *v486, &v1561);
    v489 = v485 >> 2;
    v490 = v1561.data;
    v491 = v1561.rowBytes;
    v492 = buf.data;
    if (v489 * v483)
    {
      memset_pattern16(buf.data, &unk_2404C8690, 4 * v489 * v483);
    }

    v493 = buf.height;
    if (v481)
    {
      v494 = 0;
      v495.i32[1] = v1538;
      v496.i32[1] = HIDWORD(a9);
      v497 = *&a11;
      v498 = 1.0 / *&a9;
      v499 = 1.0 / *&v1538;
      v500 = v482 & 0xFFFFFFFFFFFFFFF0;
      v501 = 0.5;
      *v488.i32 = 0.5 - *(&a11 + 1);
      v502 = vdupq_lane_s32(v488, 0);
      v504 = a13;
      v503 = a14;
      *v488.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
      *v495.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
      *v496.i32 = (1.0 / *&v1538) * a13.f32[0];
      v1357 = vdupq_lane_s32(*a14.i8, 0);
      v1366 = vdupq_lane_s32(v496, 0);
      v1329 = vdupq_lane_s32(*a14.i8, 1);
      v1337 = vdupq_lane_s32(v495, 0);
      v1319 = vdupq_laneq_s32(a14, 2);
      v1324 = vdupq_lane_s32(v488, 0);
      v505 = a12;
      v506 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v507 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      v508 = (1.0 / *&a9) * a12.f32[0];
      v1315 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v509 = a15;
      v510 = __PAIR64__(DWORD1(a17), a16);
      v511 = vdupq_laneq_s32(a15, 2);
      v512 = vdupq_lane_s32(*a15.i8, 0);
      v513 = vdupq_lane_s32(*a15.i8, 1);
      v1456 = vdupq_n_s32(v483);
      v514 = a18;
      v515 = v1562.data;
      v516 = v1562.rowBytes;
      v517.i64[0] = 0x4100000041000000;
      v517.i64[1] = 0x4100000041000000;
      v518.i64[0] = 0x80000000800000;
      v518.i64[1] = 0x80000000800000;
      v1386 = 1.0 / *&a9;
      v1376 = 1.0 / *&v1538;
      v1506 = vdupq_n_s32(LODWORD(buf.height) * v489 - 4);
      v1516 = v506;
      v1555 = vnegq_f32(v518);
      v1486 = v508;
      v1496 = vdupq_lane_s32(*&a18, 1);
      v1466 = vdupq_n_s32(v489);
      v1476 = vdupq_lane_s32(*&a18, 0);
      v1436 = v507;
      v1446 = vdupq_lane_s32(*&a17, 1);
      v1416 = vdupq_lane_s32(*&a16, 0);
      v1426 = vdupq_n_s32(v484);
      v1406 = v511;
      do
      {
        v519 = &v515[v516 * v494];
        v520 = &v490[v494 * v491];
        v521 = 0;
        if (v500)
        {
          v1544 = vmlaq_f32(v1357, v1366, v502);
          v1533 = vmlaq_f32(v1329, v1337, v502);
          v1396 = v502;
          v1525 = vmlaq_f32(v1319, v1324, v502);
          v522 = v1315;
          do
          {
            v523 = vdupq_n_s32(0x447A0000u);
            v524 = vdivq_f32(v523, *v519);
            v525 = vdivq_f32(v523, v519[1]);
            v526 = vdivq_f32(v523, v519[2]);
            __asm { FMOV            V0.4S, #4.0 }

            v528 = vaddq_f32(v522, _Q0);
            v529 = vaddq_f32(v522, v517);
            __asm { FMOV            V0.4S, #12.0 }

            v531 = vaddq_f32(v522, _Q0);
            v532 = vdivq_f32(v523, v519[3]);
            v533 = vmlaq_f32(v511, vmlaq_n_f32(v1525, v522, v506), v524);
            v534 = vmlaq_f32(v511, vmlaq_n_f32(v1525, v528, v506), v525);
            v535 = vmlaq_f32(v511, vmlaq_n_f32(v1525, v529, v506), v526);
            v536 = vmlaq_f32(v511, vmlaq_n_f32(v1525, v531, v506), v532);
            v537 = vcgtzq_f32(v532);
            v538 = vmlaq_f32(v513, vmlaq_n_f32(v1533, v522, v507), v524);
            v539 = vmlaq_f32(v512, vmlaq_n_f32(v1544, v528, v508), v525);
            v540 = vmlaq_f32(v513, vmlaq_n_f32(v1533, v528, v507), v525);
            v541 = vmlaq_f32(v512, vmlaq_n_f32(v1544, v529, v508), v526);
            v542 = vmlaq_f32(v513, vmlaq_n_f32(v1533, v529, v507), v526);
            v543 = vmlaq_f32(v512, vmlaq_n_f32(v1544, v531, v508), v532);
            v544 = vmlaq_f32(v513, vmlaq_n_f32(v1533, v531, v507), v532);
            v545 = vornq_s8(vmvnq_s8(vcgezq_f32(v534)), vcgtzq_f32(v525));
            v546 = vmlaq_f32(v1476, vdivq_f32(v1416, v534), v539);
            v547 = vornq_s8(vmvnq_s8(vcgezq_f32(v535)), vcgtzq_f32(v526));
            v548 = v513;
            v549 = v512;
            v550 = vcvtmq_s32_f32(vmlaq_f32(v1476, vdivq_f32(v1416, v533), vmlaq_f32(v512, vmlaq_n_f32(v1544, v522, v508), v524)));
            v551 = vcvtmq_s32_f32(vmlaq_f32(v1496, vdivq_f32(v1446, v533), v538));
            v552 = vcvtmq_s32_f32(v546);
            v553 = vcvtmq_s32_f32(vmlaq_f32(v1496, vdivq_f32(v1446, v534), v540));
            v554 = vcvtmq_s32_f32(vmlaq_f32(v1476, vdivq_f32(v1416, v535), v541));
            v555 = vcvtmq_s32_f32(vmlaq_f32(v1496, vdivq_f32(v1446, v535), v542));
            v556 = vcvtmq_s32_f32(vmlaq_f32(v1476, vdivq_f32(v1416, v536), v543));
            v557 = vcvtmq_s32_f32(vmlaq_f32(v1496, vdivq_f32(v1446, v536), v544));
            v558 = vornq_s8(vmvnq_s8(vcgezq_f32(v536)), v537);
            v559 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v551, v1456), vcgeq_s32(v550, v1426)), vcltzq_s32(vorrq_s8(v551, v550))), vornq_s8(vmvnq_s8(vcgezq_f32(v533)), vcgtzq_f32(v524)));
            v560 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v553, v1456), vcgeq_s32(v552, v1426)), vcltzq_s32(vorrq_s8(v553, v552))), v545);
            v561 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v555, v1456), vcgeq_s32(v554, v1426)), vcltzq_s32(vorrq_s8(v555, v554))), v547);
            v562 = vcltz_s16(vshl_n_s16(vmovn_s32(v559), 0xFuLL));
            *v544.f32 = vorr_s8(vmovn_s32(v550), v562);
            v563 = vorr_s8(vmovn_s32(v551), v562);
            v511 = v1406;
            v564 = v520;
            vst2_s16(v564, v544);
            v564 += 8;
            v512 = v549;
            v513 = v548;
            v565 = vcltz_s16(vshl_n_s16(vmovn_s32(v560), 0xFuLL));
            v566 = vorr_s8(vmovn_s32(v552), v565);
            *v544.f32 = vorr_s8(vmovn_s32(v553), v565);
            v567 = vcltz_s16(vshl_n_s16(vmovn_s32(v561), 0xFuLL));
            *v547.i8 = vorr_s8(vmovn_s32(v554), v567);
            *v541.f32 = vorr_s8(vmovn_s32(v555), v567);
            v568 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v557, v1456), vcgeq_s32(v556, v1426)), vcltzq_s32(vorrq_s8(v557, v556))), v558);
            v569 = v520 + 16;
            vst2_s16(v569, *(&v541 - 8));
            vst2_s16(v564, *(&v544 - 8));
            v570 = vcltz_s16(vshl_n_s16(vmovn_s32(v568), 0xFuLL));
            v571 = vorr_s8(vmovn_s32(v556), v570);
            *v544.f32 = vorr_s8(vmovn_s32(v557), v570);
            v572 = v520 + 24;
            vst2_s16(v572, *(&v544 - 8));
            v508 = v1486;
            v507 = v1436;
            v517.i64[0] = 0x4100000041000000;
            v517.i64[1] = 0x4100000041000000;
            v573 = vdupq_n_s32(0x3A83126Fu);
            v574 = vmulq_f32(v533, v573);
            v575 = vmulq_f32(v534, v573);
            v576 = vmulq_f32(v535, v573);
            v577 = vmlaq_s32(v554, v555, v1466);
            v578 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v559, 0x1FuLL)), v1555, v574);
            v579 = vminq_s32(vmaxq_s32(vmlaq_s32(v550, v551, v1466), 0), v1506);
            v580 = vminq_s32(vmaxq_s32(vmlaq_s32(v552, v553, v1466), 0), v1506);
            v581 = v579.u32[1];
            LODWORD(v572) = v579.i32[2];
            v582 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v560, 0x1FuLL)), v1555, v575);
            v506 = v1516;
            LODWORD(v569) = v579.i32[3];
            v492[v579.u32[0]] = fminf(*v578.i32, v492[v579.u32[0]]);
            v583 = vminq_s32(vmaxq_s32(v577, 0), v1506);
            v492[v580.u32[1]] = fminf(*&v582.i32[1], v492[v580.u32[1]]);
            v584 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v561, 0x1FuLL)), v1555, v576);
            v585 = vminq_s32(vmaxq_s32(vmlaq_s32(v556, v557, v1466), 0), v1506);
            v492[v583.u32[2]] = fminf(*&v584.i32[2], v492[v583.u32[2]]);
            v586 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v568, 0x1FuLL)), v1555, vmulq_f32(v536, v573));
            v492[v585.u32[3]] = fminf(*&v586.i32[3], v492[v585.u32[3]]);
            v492[v581] = fminf(*&v578.i32[1], v492[v581]);
            v492[v580.u32[2]] = fminf(*&v582.i32[2], v492[v580.u32[2]]);
            v492[v583.u32[3]] = fminf(*&v584.i32[3], v492[v583.u32[3]]);
            v492[v585.u32[0]] = fminf(*v586.i32, v492[v585.u32[0]]);
            v492[v572] = fminf(*&v578.i32[2], v492[v572]);
            v492[v580.u32[3]] = fminf(*&v582.i32[3], v492[v580.u32[3]]);
            v492[v583.u32[0]] = fminf(*v584.i32, v492[v583.u32[0]]);
            v492[v585.u32[1]] = fminf(*&v586.i32[1], v492[v585.u32[1]]);
            v492[v569] = fminf(*&v578.i32[3], v492[v569]);
            v492[v580.u32[0]] = fminf(*v582.i32, v492[v580.u32[0]]);
            v492[v583.u32[1]] = fminf(*&v584.i32[1], v492[v583.u32[1]]);
            v492[v585.u32[2]] = fminf(*&v586.i32[2], v492[v585.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v522 = vaddq_f32(v522, _Q0);
            v519 += 4;
            v520 += 32;
            v521 += 16;
          }

          while (v521 < v500);
          v521 = (((v482 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v503 = a14;
          v509 = a15;
          v505 = a12;
          v504 = a13;
          v514 = a18;
          v497 = *&a11;
          v510 = __PAIR64__(DWORD1(a17), a16);
          v498 = v1386;
          v499 = v1376;
          v501 = 0.5;
          v502 = v1396;
        }

        if (v521 < v482)
        {
          do
          {
            v588 = 1000.0 / v519->f32[0];
            v589 = vaddq_f32(v509, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v505, v498 * (v588 * ((v521 + v501) - v497))), v504, v499 * (((v494 + v501) - *(&a11 + 1)) * v588)), v503, v588));
            v590 = 0xFFFF0000FFFFLL;
            if (*&v589.i32[2] >= 0.0 && v588 > 0.0)
            {
              v591 = vcvt_s32_f32(vmla_f32(v514, vdiv_f32(v510, vdup_laneq_s32(v589, 2)), *v589.i8));
              if ((v591.i32[0] & 0x80000000) == 0 && v484 > v591.i32[0] && (v591.i32[1] & 0x80000000) == 0 && v483 > v591.i32[1])
              {
                v592 = *&v589.i32[2] * 0.001;
                v593 = &v492[v489 * v591.i32[1]];
                v594 = v593[v591.u32[0]];
                if (v594 == 0.0 || v594 > v592)
                {
                  v593[v591.u32[0]] = v592;
                }

                v590 = v591;
              }
            }

            *v520 = v590;
            v520[1] = WORD2(v590);
            ++v521;
            v519 = (v519 + 4);
            v520 += 2;
          }

          while (v482 != v521);
        }

        ++v494;
        __asm { FMOV            V0.4S, #1.0 }

        v502 = vaddq_f32(v502, _Q0);
      }

      while (v494 != v481);
      v493 = buf.height;
    }

    v347 = v487;
    if (v493)
    {
      v597 = 0;
      v598 = *&buf.width;
      v599 = buf.data;
      v600 = buf.width >> 4;
      if (buf.width >> 4 <= 1)
      {
        v600 = 1;
      }

      v601 = buf.width & 0xFFFFFFF0;
      v602.i64[0] = 0x80000000800000;
      v602.i64[1] = 0x80000000800000;
      v603 = vnegq_f32(v602);
      do
      {
        v604 = &v599[*(&v598 + 1) * v597];
        v605 = v600;
        if (v598 >= 0x10)
        {
          do
          {
            v606 = v604[2];
            v607 = v604[3];
            v608 = vbicq_s8(v604[1], vceqq_f32(v604[1], v603));
            *v604 = vbicq_s8(*v604, vceqq_f32(*v604, v603));
            v604[1] = v608;
            v604[2] = vbicq_s8(v606, vceqq_f32(v606, v603));
            v604[3] = vbicq_s8(v607, vceqq_f32(v607, v603));
            v604 += 4;
            --v605;
          }

          while (v605);
        }

        v609 = v598 & 0xFFFFFFF0;
        if (v601 != v598)
        {
          do
          {
            if (v604->f32[0] == 3.4028e38)
            {
              v604->i32[0] = 0;
            }

            ++v609;
            v604 = (v604 + 4);
          }

          while (v609 < v598);
        }

        ++v597;
      }

      while (v597 != v493);
    }

    goto LABEL_321;
  }

  if (PixelFormatType == 1751410032)
  {
LABEL_88:
    v348 = CVPixelBufferGetHeight(a1);
    v349 = CVPixelBufferGetWidth(a1);
    v350 = CVPixelBufferGetHeight(pixelBuffer);
    v351 = CVPixelBufferGetWidth(pixelBuffer);
    v352 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&v1562, 0, sizeof(v1562));
    v353 = MEMORY[0x277CBF3A0];
    v354 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v353, &buf);
    PixelBufferUtils::asVImageBuffer(v1341, *v353, &v1561);
    v357 = v352 >> 1;
    v358 = v1561.data;
    v359 = v1561.rowBytes;
    v360 = buf.data;
    if (v357 * v350)
    {
      memset_pattern16(buf.data, &unk_2404C86A0, 2 * v357 * v350);
    }

    v361 = buf.height;
    if (v348)
    {
      v362 = 0;
      v363.i32[1] = v1538;
      v364.i32[1] = HIDWORD(a9);
      v365 = *&a11;
      v366 = 1.0 / *&a9;
      v367 = 1.0 / *&v1538;
      v368 = v349 & 0xFFFFFFFFFFFFFFF0;
      v369 = 0.5;
      *v355.i32 = 0.5 - *(&a11 + 1);
      v370 = vdupq_lane_s32(v355, 0);
      v372 = a13;
      v371 = a14;
      *v355.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
      *v363.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
      *v364.i32 = (1.0 / *&v1538) * a13.f32[0];
      v1365 = vdupq_lane_s32(*a14.i8, 0);
      v1375 = vdupq_lane_s32(v364, 0);
      v1356 = vdupq_lane_s32(v363, 0);
      v1328 = vdupq_lane_s32(v355, 0);
      v1336 = vdupq_lane_s32(*a14.i8, 1);
      v1323 = vdupq_laneq_s32(a14, 2);
      v373 = a12;
      v374 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v375 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      *&v356 = (1.0 / *&a9) * a12.f32[0];
      v376 = a15;
      v377 = __PAIR64__(DWORD1(a17), a16);
      v378 = vdupq_laneq_s32(a15, 2);
      v379 = vdupq_lane_s32(*a15.i8, 0);
      v380 = vdupq_lane_s32(*a15.i8, 1);
      v381 = vdupq_n_s32(v351);
      v1435 = vdupq_n_s32(LODWORD(buf.height) * v357 - 2);
      v1318 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v382 = a18;
      v383 = v1562.data;
      v384 = v1562.rowBytes;
      v1395 = 1.0 / *&a9;
      v1385 = 1.0 / *&v1538;
      v1505 = vdupq_n_s32(v357);
      v1515 = v374;
      v1485 = vdupq_lane_s32(*&a18, 1);
      v1495 = v379;
      v1465 = vdupq_lane_s32(*&a17, 1);
      v1475 = v375;
      v1445 = vdupq_lane_s32(*&a16, 0);
      v1455 = v380;
      v1415 = vdupq_n_s32(v350);
      v1425 = vdupq_lane_s32(*&a18, 0);
      do
      {
        v385 = &v383[v384 * v362];
        v386 = &v358[v362 * v359];
        v387 = 0;
        if (v368)
        {
          v1543 = vmlaq_f32(v1365, v1375, v370);
          v1532 = vmlaq_f32(v1336, v1356, v370);
          v1405 = v370;
          v1524 = vmlaq_f32(v1323, v1328, v370);
          v388 = v1318;
          do
          {
            v1554 = v388;
            v389 = v375;
            v390 = v379;
            v391 = vdupq_n_s32(0x447A0000u);
            v392 = vdivq_f32(v391, *v385);
            v393 = vdivq_f32(v391, v385[1]);
            v394 = vdivq_f32(v391, v385[2]);
            __asm { FMOV            V0.4S, #4.0 }

            v396 = vaddq_f32(v388, _Q0);
            _Q0.i64[0] = 0x4100000041000000;
            _Q0.i64[1] = 0x4100000041000000;
            v397 = vaddq_f32(v388, _Q0);
            __asm { FMOV            V0.4S, #12.0 }

            v399 = vaddq_f32(v388, _Q0);
            v400 = vdivq_f32(v391, v385[3]);
            v401 = v378;
            v402 = vmlaq_f32(v378, vmlaq_n_f32(v1524, v1554, v374), v392);
            v403 = vmlaq_f32(v378, vmlaq_n_f32(v1524, v396, v374), v393);
            v404 = vmlaq_f32(v378, vmlaq_n_f32(v1524, v397, v374), v394);
            v405 = vmlaq_f32(v378, vmlaq_n_f32(v1524, v399, v374), v400);
            v406 = vcgtzq_f32(v392);
            v407 = vcgtzq_f32(v394);
            v408 = v356;
            v409 = vmlaq_f32(v390, vmlaq_n_f32(v1543, v1554, *&v356), v392);
            v410 = vmlaq_f32(v380, vmlaq_n_f32(v1532, v1554, v389), v392);
            v411 = vmlaq_f32(v390, vmlaq_n_f32(v1543, v397, *&v356), v394);
            v412 = vmlaq_f32(v380, vmlaq_n_f32(v1532, v397, v389), v394);
            v413 = vmlaq_f32(v1425, vdivq_f32(v1445, v402), v409);
            v414 = vmlaq_f32(v1485, vdivq_f32(v1465, v402), v410);
            v415 = vmlaq_f32(v1425, vdivq_f32(v1445, v403), vmlaq_f32(v390, vmlaq_n_f32(v1543, v396, *&v356), v393));
            v416 = vmlaq_f32(v1485, vdivq_f32(v1465, v403), vmlaq_f32(v380, vmlaq_n_f32(v1532, v396, v389), v393));
            v417 = vmlaq_f32(v390, vmlaq_n_f32(v1543, v399, *&v356), v400);
            v418 = vmlaq_f32(v380, vmlaq_n_f32(v1532, v399, v389), v400);
            v419 = vcgtzq_f32(v400);
            v420 = vmlaq_f32(v1425, vdivq_f32(v1445, v404), v411);
            v421 = vmvnq_s8(vcgezq_f32(v405));
            v422 = vornq_s8(vmvnq_s8(vcgezq_f32(v403)), vcgtzq_f32(v393));
            v423 = vmlaq_f32(v1485, vdivq_f32(v1465, v404), v412);
            v424 = vdivq_f32(v1445, v405);
            v425 = vdupq_n_s32(0x3A83126Fu);
            v426 = vornq_s8(vmvnq_s8(vcgezq_f32(v404)), v407);
            v427 = vdivq_f32(v1465, v405);
            v428 = vmulq_f32(v402, v425);
            v429 = vmulq_f32(v403, v425);
            v430 = vmulq_f32(v404, v425);
            v431 = vmulq_f32(v405, v425);
            v432 = vcvtmq_s32_f32(v413);
            v433 = vcvtmq_s32_f32(v414);
            v434 = vcvtmq_s32_f32(v415);
            v435 = vcvtmq_s32_f32(v416);
            v436 = vcvtmq_s32_f32(v420);
            v437 = vcvtmq_s32_f32(v423);
            v438 = vcvtmq_s32_f32(vmlaq_f32(v1425, v424, v417));
            v439 = vcvtmq_s32_f32(vmlaq_f32(v1485, v427, v418));
            v440 = vornq_s8(v421, v419);
            v441 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v433, v1415), vcgeq_s32(v432, v381)), vcltzq_s32(vorrq_s8(v433, v432))), vornq_s8(vmvnq_s8(vcgezq_f32(v402)), v406));
            *v421.i8 = vmovn_s32(v441);
            v442 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v435, v1415), vcgeq_s32(v434, v381)), vcltzq_s32(vorrq_s8(v435, v434))), v422);
            v443 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v437, v1415), vcgeq_s32(v436, v381)), vcltzq_s32(vorrq_s8(v437, v436))), v426);
            v378 = v401;
            v444 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v439, v1415), vcgeq_s32(v438, v381)), vcltzq_s32(vorrq_s8(v439, v438))), v440);
            v445 = vdupq_n_s32(0x477FE000u);
            v446 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v441, 0x1FuLL)), v445, v428);
            v447 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v442, 0x1FuLL)), v445, v429);
            v448 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v443, 0x1FuLL)), v445, v430);
            v449 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v444, 0x1FuLL)), v445, v431);
            *v445.i8 = vcltz_s16(vshl_n_s16(*v421.i8, 0xFuLL));
            v422.val[0] = vorr_s8(vmovn_s32(v432), *v445.i8);
            *v424.f32 = vorr_s8(vmovn_s32(v433), *v445.i8);
            *v427.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v442), 0xFuLL));
            *v415.f32 = vorr_s8(vmovn_s32(v434), *v427.f32);
            *v445.i8 = vorr_s8(vmovn_s32(v435), *v427.f32);
            v450 = v386;
            vst2_s16(v450, v422);
            v450 += 8;
            v356 = v408;
            v380 = v1455;
            v375 = v1475;
            v379 = v1495;
            vst2_s16(v450, v415);
            v374 = v1515;
            *v431.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v443), 0xFuLL));
            *v443.i8 = vorr_s8(vmovn_s32(v436), *v431.i8);
            *v415.f32 = vorr_s8(vmovn_s32(v437), *v431.i8);
            v451 = v386 + 16;
            vst2_s16(v451, *(&v415 - 8));
            *v427.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v444), 0xFuLL));
            v442.val[0] = vorr_s8(vmovn_s32(v438), *v427.f32);
            *v443.i8 = vorr_s8(vmovn_s32(v439), *v427.f32);
            v452 = v386 + 24;
            vst2_s16(v452, v442);
            v453 = vminq_s32(vmaxq_s32(vmlaq_s32(v432, v433, v1505), 0), v1435);
            v454 = vminq_s32(vmaxq_s32(vmlaq_s32(v434, v435, v1505), 0), v1435);
            v455 = vmaxq_s32(vmlaq_s32(v436, v437, v1505), 0);
            v456 = vmlaq_s32(v438, v439, v1505);
            v457 = vminq_s32(v455, v1435);
            v458 = vminq_s32(vmaxq_s32(v456, 0), v1435);
            v459 = v453.u32[1];
            *v456.i8 = vcvt_f16_f32(v446);
            v360[v453.u32[0]] = fminl(*v456.i16, v360[v453.u32[0]]);
            *v453.i8 = vcvt_f16_f32(v447);
            v360[v454.u32[1]] = fminl(*&v453.i16[1], v360[v454.u32[1]]);
            *v435.i8 = vcvt_f16_f32(v448);
            v360[v457.u32[2]] = fminl(*&v435.i16[2], v360[v457.u32[2]]);
            *v449.f32 = vcvt_f16_f32(v449);
            v360[v458.u32[3]] = fminl(*&v449.i16[3], v360[v458.u32[3]]);
            v360[v459] = fminl(*&v456.i16[1], v360[v459]);
            v360[v454.u32[2]] = fminl(*&v453.i16[2], v360[v454.u32[2]]);
            v360[v457.u32[3]] = fminl(*&v435.i16[3], v360[v457.u32[3]]);
            v360[v458.u32[0]] = fminl(*v449.i16, v360[v458.u32[0]]);
            v360[v453.u32[2]] = fminl(*&v456.i16[2], v360[v453.u32[2]]);
            v360[v454.u32[3]] = fminl(*&v453.i16[3], v360[v454.u32[3]]);
            v360[v457.u32[0]] = fminl(*v435.i16, v360[v457.u32[0]]);
            v360[v458.u32[1]] = fminl(*&v449.i16[1], v360[v458.u32[1]]);
            v360[v453.u32[3]] = fminl(*&v456.i16[3], v360[v453.u32[3]]);
            v360[v454.u32[0]] = fminl(*v453.i16, v360[v454.u32[0]]);
            v360[v457.u32[1]] = fminl(*&v435.i16[1], v360[v457.u32[1]]);
            v360[v458.u32[2]] = fminl(*&v449.i16[2], v360[v458.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v388 = vaddq_f32(v1554, _Q0);
            v385 += 4;
            v386 += 32;
            v387 += 16;
          }

          while (v387 < v368);
          v387 = (((v349 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v371 = a14;
          v376 = a15;
          v373 = a12;
          v372 = a13;
          v382 = a18;
          v365 = *&a11;
          v377 = __PAIR64__(DWORD1(a17), a16);
          v366 = v1395;
          v367 = v1385;
          v369 = 0.5;
          v370 = v1405;
        }

        if (v387 < v349)
        {
          do
          {
            v461 = 1000.0 / v385->f32[0];
            v462 = vaddq_f32(v376, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v373, v366 * (v461 * ((v387 + v369) - v365))), v372, v367 * (((v362 + v369) - *(&a11 + 1)) * v461)), v371, v461));
            v463 = 0xFFFF0000FFFFLL;
            if (*&v462.i32[2] >= 0.0 && v461 > 0.0)
            {
              v464 = vcvt_s32_f32(vmla_f32(v382, vdiv_f32(v377, vdup_laneq_s32(v462, 2)), *v462.i8));
              if ((v464.i32[0] & 0x80000000) == 0 && v351 > v464.i32[0] && (v464.i32[1] & 0x80000000) == 0 && v350 > v464.i32[1])
              {
                _S1 = *&v462.i32[2] * 0.001;
                __asm
                {
                  FCVT            H1, S1
                  FCMP            H3, #0
                }

                if (_ZF)
                {
                  v468 = 0;
                }

                else
                {
                  v468 = _H3 <= _H1;
                }

                if (!v468)
                {
                  v360[v357 * v464.i32[1] + v464.u32[0]] = _H1;
                }

                v463 = v464;
              }
            }

            *v386 = v463;
            v386[1] = WORD2(v463);
            ++v387;
            v385 = (v385 + 4);
            v386 += 2;
          }

          while (v349 != v387);
        }

        ++v362;
        __asm { FMOV            V0.4S, #1.0 }

        v370 = vaddq_f32(v370, _Q0);
      }

      while (v362 != v348);
      v361 = buf.height;
    }

    v347 = v354;
    if (v361)
    {
      v470 = 0;
      v471 = *&buf.width;
      v472 = buf.data;
      v473 = buf.width >> 4;
      if (buf.width >> 4 <= 1)
      {
        v473 = 1;
      }

      v474 = buf.width & 0xFFFFFFF0;
      do
      {
        v475 = &v472[*(&v471 + 1) * v470];
        v476 = v473;
        if (v471 >= 0x10)
        {
          do
          {
            v477 = v475[2];
            v478 = v475[3];
            v479 = vbic_s8(v475[1], vceq_f16(v475[1], 0x8400840084008400));
            *v475 = vbic_s8(*v475, vceq_f16(*v475, 0x8400840084008400));
            v475[1] = v479;
            v475[2] = vbic_s8(v477, vceq_f16(v477, 0x8400840084008400));
            v475[3] = vbic_s8(v478, vceq_f16(v478, 0x8400840084008400));
            v475 += 4;
            --v476;
          }

          while (v476);
        }

        v480 = v471 & 0xFFFFFFF0;
        if (v474 != v471)
        {
          do
          {
            if (*v475->i16 == COERCE_SHORT_FLOAT(31743))
            {
              v475->i16[0] = 0;
            }

            ++v480;
            v475 = (v475 + 2);
          }

          while (v480 < v471);
        }

        ++v470;
      }

      while (v470 != v361);
    }

    goto LABEL_321;
  }

  if (PixelFormatType == 1751411059)
  {
    v243 = CVPixelBufferGetHeight(a1);
    v244 = CVPixelBufferGetWidth(a1);
    v245 = CVPixelBufferGetHeight(pixelBuffer);
    v246 = CVPixelBufferGetWidth(pixelBuffer);
    v247 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&v1562, 0, sizeof(v1562));
    v248 = MEMORY[0x277CBF3A0];
    v27 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1562);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v248, &buf);
    PixelBufferUtils::asVImageBuffer(v1341, *v248, &v1561);
    v249 = v1561.data;
    v250 = v1561.rowBytes;
    v252 = buf.data;
    v251 = buf.height;
    bzero(buf.data, buf.height * buf.rowBytes);
    v256 = a14;
    v255 = a15;
    v258 = a12;
    v257 = a13;
    v260 = a18;
    v259 = *&a11;
    v261.i32[0] = a16;
    if (v243)
    {
      v262 = 0;
      v263.i32[1] = v1538;
      v264 = 1.0 / *&a9;
      v265 = 1.0 / *&v1538;
      v266 = 0.5;
      *v253.i32 = 0.5 - *(&a11 + 1);
      v267 = vdupq_lane_s32(v253, 0);
      v268 = v244 & 0xFFFFFFFFFFFFFFF0;
      *v253.i32 = vmuls_lane_f32(1.0 / *&v1538, a13, 2);
      *v263.i32 = vmuls_lane_f32(1.0 / *&v1538, *a13.f32, 1);
      *v254.i32 = (1.0 / *&v1538) * a13.f32[0];
      v1327 = vdupq_lane_s32(*a14.i8, 0);
      v1335 = vdupq_lane_s32(v254, 0);
      v1317 = vdupq_lane_s32(*a14.i8, 1);
      v1322 = vdupq_lane_s32(v263, 0);
      v1311 = vdupq_laneq_s32(a14, 2);
      v1314 = vdupq_lane_s32(v253, 0);
      v269 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v270 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      v1308 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v271 = vdupq_laneq_s32(a15, 2);
      v261.i32[1] = DWORD1(a17);
      v272 = v1562.data;
      v273 = v1562.rowBytes;
      v1352 = v261;
      v1364 = 1.0 / *&a9;
      v1355 = 1.0 / *&v1538;
      v1494 = vdupq_n_s32(v251 * (v247 >> 1) - 2);
      v1504 = v271;
      v1474 = vdupq_n_s32(v247 >> 1);
      v1484 = vdupq_lane_s32(*&a18, 1);
      v1454 = vdupq_lane_s32(*&a17, 1);
      v1464 = vdupq_lane_s32(*&a18, 0);
      v1434 = vdupq_lane_s32(*a15.i8, 0);
      v1444 = v269;
      v1414 = vdupq_n_s32(v245);
      v1424 = vdupq_lane_s32(*&a16, 0);
      v1394 = vdupq_n_s32(v246);
      v1404 = (1.0 / *&a9) * a12.f32[0];
      v1384 = vdupq_lane_s32(*a15.i8, 1);
      do
      {
        v274 = &v272[v273 * v262];
        v275 = &v249[v262 * v250];
        v276 = 0;
        if (v268)
        {
          v1531 = vmlaq_f32(v1327, v1335, v267);
          v1523 = vmlaq_f32(v1317, v1322, v267);
          v1374 = v267;
          v1514 = vmlaq_f32(v1311, v1314, v267);
          v277 = v1308;
          do
          {
            v1553 = v277;
            v278 = vdupq_n_s32(0x447A0000u);
            v279 = vdivq_f32(v278, *v274);
            v280 = vdivq_f32(v278, v274[1]);
            __asm { FMOV            V1.4S, #4.0 }

            v282 = vaddq_f32(v277, _Q1);
            v283 = vdivq_f32(v278, v274[2]);
            _Q1.i64[0] = 0x4100000041000000;
            _Q1.i64[1] = 0x4100000041000000;
            v284 = vaddq_f32(v277, _Q1);
            __asm { FMOV            V1.4S, #12.0 }

            v286 = vaddq_f32(v277, _Q1);
            v287 = vdivq_f32(v278, v274[3]);
            v288 = vmlaq_f32(v271, vmlaq_n_f32(v1514, v277, v269), v279);
            v289 = vmlaq_f32(v271, vmlaq_n_f32(v1514, v282, v269), v280);
            v290 = vmlaq_f32(v271, vmlaq_n_f32(v1514, v284, v269), v283);
            v291 = vmlaq_f32(v271, vmlaq_n_f32(v1514, v286, v269), v287);
            v292 = vmlaq_f32(v1434, vmlaq_n_f32(v1531, v277, v1404), v279);
            v293 = vmlaq_f32(v1384, vmlaq_n_f32(v1523, v277, v270), v279);
            v1542 = v288;
            v294 = vdivq_f32(v1424, v288);
            v295 = vornq_s8(vmvnq_s8(vcgezq_f32(v288)), vcgtzq_f32(v279));
            v296 = vmlaq_f32(v1434, vmlaq_n_f32(v1531, v282, v1404), v280);
            v297 = vmlaq_n_f32(v1523, v282, v270);
            v298 = vdivq_f32(v1454, v288);
            v299 = vornq_s8(vmvnq_s8(vcgezq_f32(v289)), vcgtzq_f32(v280));
            v300 = vmlaq_f32(v1384, v297, v280);
            v301 = vmlaq_f32(v1434, vmlaq_n_f32(v1531, v284, v1404), v283);
            v302 = vmlaq_f32(v1384, vmlaq_n_f32(v1523, v284, v270), v283);
            v303 = vornq_s8(vmvnq_s8(vcgezq_f32(v290)), vcgtzq_f32(v283));
            v304 = vmlaq_f32(v1384, vmlaq_n_f32(v1523, v286, v270), v287);
            v305 = vmlaq_f32(v1484, v298, v293);
            v306 = vornq_s8(vmvnq_s8(vcgezq_f32(v291)), vcgtzq_f32(v287));
            v307 = vmlaq_f32(v1464, vdivq_f32(v1424, v289), v296);
            v308 = vcvtmq_s32_f32(vmlaq_f32(v1464, v294, v292));
            v309 = vcvtmq_s32_f32(v305);
            v310 = vcvtmq_s32_f32(v307);
            v311 = vcvtmq_s32_f32(vmlaq_f32(v1484, vdivq_f32(v1454, v289), v300));
            v312 = vcvtmq_s32_f32(vmlaq_f32(v1464, vdivq_f32(v1424, v290), v301));
            v313 = vcvtmq_s32_f32(vmlaq_f32(v1484, vdivq_f32(v1454, v290), v302));
            v314 = vcvtmq_s32_f32(vmlaq_f32(v1464, vdivq_f32(v1424, v291), vmlaq_f32(v1434, vmlaq_n_f32(v1531, v286, v1404), v287)));
            v315 = vcvtmq_s32_f32(vmlaq_f32(v1484, vdivq_f32(v1454, v291), v304));
            v316 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v309, v1414), vcgeq_s32(v308, v1394)), vcltzq_s32(vorrq_s8(v309, v308))), v295);
            v317 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v311, v1414), vcgeq_s32(v310, v1394)), vcltzq_s32(vorrq_s8(v311, v310))), v299);
            v318 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v313, v1414), vcgeq_s32(v312, v1394)), vcltzq_s32(vorrq_s8(v313, v312))), v303);
            v319 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v315, v1414), vcgeq_s32(v314, v1394)), vcltzq_s32(vorrq_s8(v315, v314))), v306);
            *v292.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v316), 0xFuLL));
            *v302.f32 = vorr_s8(vmovn_s32(v308), *v292.f32);
            v320 = vorr_s8(vmovn_s32(v309), *v292.f32);
            v321 = v275;
            vst2_s16(v321, v302);
            v321 += 8;
            *v292.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v317), 0xFuLL));
            *v303.i8 = vorr_s8(vmovn_s32(v310), *v292.f32);
            *v301.f32 = vorr_s8(vmovn_s32(v311), *v292.f32);
            v322 = vcltz_s16(vshl_n_s16(vmovn_s32(v318), 0xFuLL));
            *v302.f32 = vorr_s8(vmovn_s32(v312), v322);
            v323 = vorr_s8(vmovn_s32(v313), v322);
            v324 = v275 + 16;
            vst2_s16(v324, v302);
            v325 = vcltz_s16(vshl_n_s16(vmovn_s32(v319), 0xFuLL));
            *v302.f32 = vorr_s8(vmovn_s32(v314), v325);
            v326 = vorr_s8(vmovn_s32(v315), v325);
            v269 = v1444;
            v327 = v275 + 24;
            vst2_s16(v327, v302);
            vst2_s16(v321, *(&v301 - 8));
            v271 = v1504;
            v328 = vmlaq_s32(v308, v309, v1474);
            v329 = vmlaq_s32(v314, v315, v1474);
            v330 = vandq_s8(vdivq_f32(v278, v289), vcgezq_s32(vshlq_n_s32(v317, 0x1FuLL)));
            v331 = vandq_s8(vdivq_f32(v278, v290), vcgezq_s32(vshlq_n_s32(v318, 0x1FuLL)));
            v332 = vminq_s32(vmaxq_s32(v328, 0), v1494);
            v333 = vminq_s32(vmaxq_s32(vmlaq_s32(v310, v311, v1474), 0), v1494);
            v334 = vminq_s32(vmaxq_s32(vmlaq_s32(v312, v313, v1474), 0), v1494);
            v335 = vminq_s32(vmaxq_s32(v329, 0), v1494);
            v336 = v332.u32[1];
            *v311.i8 = vcvt_f16_f32(vandq_s8(vdivq_f32(v278, v1542), vcgezq_s32(vshlq_n_s32(v316, 0x1FuLL))));
            v252[v332.u32[0]] = fmaxl(*v311.i16, v252[v332.u32[0]]);
            *v330.f32 = vcvt_f16_f32(v330);
            v252[v333.u32[1]] = fmaxl(*&v330.i16[1], v252[v333.u32[1]]);
            *v331.f32 = vcvt_f16_f32(v331);
            v252[v334.u32[2]] = fmaxl(*&v331.i16[2], v252[v334.u32[2]]);
            *v332.i8 = vcvt_f16_f32(vandq_s8(vdivq_f32(v278, v291), vcgezq_s32(vshlq_n_s32(v319, 0x1FuLL))));
            v252[v335.u32[3]] = fmaxl(*&v332.i16[3], v252[v335.u32[3]]);
            v252[v336] = fmaxl(*&v311.i16[1], v252[v336]);
            v252[v333.u32[2]] = fmaxl(*&v330.i16[2], v252[v333.u32[2]]);
            v252[v334.u32[3]] = fmaxl(*&v331.i16[3], v252[v334.u32[3]]);
            v252[v335.u32[0]] = fmaxl(*v332.i16, v252[v335.u32[0]]);
            v252[v332.u32[2]] = fmaxl(*&v311.i16[2], v252[v332.u32[2]]);
            v252[v333.u32[3]] = fmaxl(*&v330.i16[3], v252[v333.u32[3]]);
            v252[v334.u32[0]] = fmaxl(*v331.i16, v252[v334.u32[0]]);
            v252[v335.u32[1]] = fmaxl(*&v332.i16[1], v252[v335.u32[1]]);
            v252[v332.u32[3]] = fmaxl(*&v311.i16[3], v252[v332.u32[3]]);
            v252[v333.u32[0]] = fmaxl(*v330.i16, v252[v333.u32[0]]);
            v252[v334.u32[1]] = fmaxl(*&v331.i16[1], v252[v334.u32[1]]);
            v252[v335.u32[2]] = fmaxl(*&v332.i16[2], v252[v335.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v277 = vaddq_f32(v1553, _Q0);
            v274 += 4;
            v275 += 32;
            v276 += 16;
          }

          while (v276 < v268);
          v276 = (((v244 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v256 = a14;
          v255 = a15;
          v258 = a12;
          v257 = a13;
          v260 = a18;
          v259 = *&a11;
          v261 = v1352;
          v264 = v1364;
          v265 = v1355;
          v266 = 0.5;
          v267 = v1374;
        }

        if (v276 < v244)
        {
          do
          {
            v338 = 1000.0 / v274->f32[0];
            v339 = vaddq_f32(v255, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v258, v264 * (v338 * ((v276 + v266) - v259))), v257, v265 * (((v262 + v266) - *(&a11 + 1)) * v338)), v256, v338));
            v340 = 0xFFFF0000FFFFLL;
            if (*&v339.i32[2] >= 0.0 && v338 > 0.0)
            {
              v341 = vcvt_s32_f32(vmla_f32(v260, vdiv_f32(v261, vdup_laneq_s32(v339, 2)), *v339.i8));
              if ((v341.i32[0] & 0x80000000) == 0 && v246 > v341.i32[0] && (v341.i32[1] & 0x80000000) == 0 && v245 > v341.i32[1])
              {
                _S1 = 1000.0 / *&v339.i32[2];
                __asm
                {
                  FCVT            H1, S1
                  FCMP            H3, #0
                }

                if (_ZF)
                {
                  v345 = 1;
                }

                else
                {
                  v345 = _H3 < _H1;
                }

                if (v345)
                {
                  v252[(v247 >> 1) * v341.i32[1] + v341.u32[0]] = _H1;
                }

                v340 = v341;
              }
            }

            *v275 = v340;
            v275[1] = WORD2(v340);
            ++v276;
            v274 = (v274 + 4);
            v275 += 2;
          }

          while (v244 != v276);
        }

        ++v262;
        __asm { FMOV            V0.4S, #1.0 }

        v267 = vaddq_f32(v267, _Q0);
      }

      while (v262 != v243);
    }

    goto LABEL_83;
  }

LABEL_322:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
LABEL_393:
    v1284 = CVPixelBufferGetPixelFormatType(pixelBuffer);
    PixelBufferUtils::pixelFormatAsString(v1284, &v1562);
    if ((v1562.width & 0x8000000000000000) == 0)
    {
      v1285 = &v1562;
    }

    else
    {
      v1285 = v1562.data;
    }

    LODWORD(buf.data) = 136315138;
    *(&buf.data + 4) = v1285;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "illegal output pixel format in reprojection: %s", &buf, 0xCu);
    if (SHIBYTE(v1562.width) < 0)
    {
      operator delete(v1562.data);
    }
  }

  return -22950;
}