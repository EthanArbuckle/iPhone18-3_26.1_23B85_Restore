uint64_t reprojectUndistortedDepthMapWithInputImmediates<half,1751411059u>(__CVBuffer *a1, __CVBuffer *a2, CVPixelBufferRef pixelBuffer, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, float32x4_t a12, float32x4_t a13, int32x4_t a14, int32x4_t a15, __int128 a16, __int128 a17, __int128 a18)
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
                v1188 = vdivq_f32(v1187, vcvtq_f32_f16(*v1183));
                v1189 = vdivq_f32(v1187, vcvtq_f32_f16(v1183[1]));
                __asm { FMOV            V0.4S, #4.0 }

                v1191 = vaddq_f32(v1185, _Q0);
                v1192 = vaddq_f32(v1185, v1186);
                v1193 = vdivq_f32(v1187, vcvtq_f32_f16(v1183[2]));
                __asm { FMOV            V0.4S, #12.0 }

                v1195 = vaddq_f32(v1185, _Q0);
                v1196 = vdivq_f32(v1187, vcvtq_f32_f16(v1183[3]));
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

                v1274 = 1000.0 / _S2;
                _Q2 = vaddq_f32(v1159, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v1162, v1169 * (((v1271 + v1172) - v1163) * (1000.0 / _S2))), v1161, v1170 * (((v1166 + v1172) - *(&a11 + 1)) * (1000.0 / _S2))), v1160, 1000.0 / _S2));
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
                    v172 = vdivq_f32(v171, vcvtq_f32_f16(*v168));
                    v173 = vdivq_f32(v171, vcvtq_f32_f16(v168[1]));
                    v174 = vdivq_f32(v171, vcvtq_f32_f16(v168[2]));
                    __asm { FMOV            V1.4S, #4.0 }

                    v176 = vaddq_f32(v170, _Q1);
                    _Q1.i64[0] = 0x4100000041000000;
                    _Q1.i64[1] = 0x4100000041000000;
                    v177 = vaddq_f32(v170, _Q1);
                    v178 = vdivq_f32(v171, vcvtq_f32_f16(v168[3]));
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

                    v238 = 1000.0 / _S2;
                    _Q2 = vaddq_f32(v147, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v150, v156 * (((v169 + v158) - v151) * (1000.0 / _S2))), v149, v157 * (((v154 + v158) - *(&a11 + 1)) * (1000.0 / _S2))), v148, 1000.0 / _S2));
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
                v895 = vdivq_f32(v894, vcvtq_f32_f16(*v891));
                v896 = vdivq_f32(v894, vcvtq_f32_f16(v891[1]));
                v897 = vdivq_f32(v894, vcvtq_f32_f16(v891[2]));
                __asm { FMOV            V0.4S, #4.0 }

                v899 = vaddq_f32(v893, _Q0);
                _Q0.i64[0] = 0x4100000041000000;
                _Q0.i64[1] = 0x4100000041000000;
                v900 = vaddq_f32(v893, _Q0);
                v901 = vdivq_f32(v894, vcvtq_f32_f16(v891[3]));
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

                v964 = 1000.0 / _S2;
                _Q2 = vaddq_f32(v867, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v870, v877 * (((v892 + v880) - v871) * (1000.0 / _S2))), v869, v878 * (((v874 + v880) - *(&a11 + 1)) * (1000.0 / _S2))), v868, 1000.0 / _S2));
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
                  v651 = vdivq_f32(v650, vcvtq_f32_f16(*v647));
                  v652 = vdivq_f32(v650, vcvtq_f32_f16(v647[1]));
                  __asm { FMOV            V1.4S, #4.0 }

                  v654 = vaddq_f32(v649, _Q1);
                  v655 = vdivq_f32(v650, vcvtq_f32_f16(v647[2]));
                  _Q1.i64[0] = 0x4100000041000000;
                  _Q1.i64[1] = 0x4100000041000000;
                  v656 = vaddq_f32(v649, _Q1);
                  __asm { FMOV            V1.4S, #12.0 }

                  v658 = vaddq_f32(v649, _Q1);
                  v659 = vdivq_f32(v650, vcvtq_f32_f16(v647[3]));
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

                  _Q3 = vaddq_f32(v624, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v627, v634 * (((v648 + v636) - v628) * (1000.0 / _S2))), v626, v635 * (((v631 + v636) - *(&a11 + 1)) * (1000.0 / _S2))), v625, 1000.0 / _S2));
                  if (_Q3.f32[2] >= 0.0 && (1000.0 / _S2) > 0.0)
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
            v770 = vdivq_f32(v769, vcvtq_f32_f16(*v766));
            v771 = vdivq_f32(v769, vcvtq_f32_f16(v766[1]));
            v772 = vdivq_f32(v769, vcvtq_f32_f16(v766[2]));
            __asm { FMOV            V1.4S, #4.0 }

            v774 = vaddq_f32(v768, _Q1);
            _Q1.i64[0] = 0x4100000041000000;
            _Q1.i64[1] = 0x4100000041000000;
            v775 = vaddq_f32(v768, _Q1);
            v776 = vdivq_f32(v769, vcvtq_f32_f16(v766[3]));
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

            v829 = 1000.0 / _S2;
            _Q2 = vaddq_f32(v739, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v742, v749 * (((v767 + v752) - v743) * (1000.0 / _S2))), v741, v750 * (((v746 + v752) - *(&a11 + 1)) * (1000.0 / _S2))), v740, 1000.0 / _S2));
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
              v1028 = vdivq_f32(v1027, vcvtq_f32_f16(*v1023));
              v1029 = vdivq_f32(v1027, vcvtq_f32_f16(v1023[1]));
              v1030 = vdivq_f32(v1027, vcvtq_f32_f16(v1023[2]));
              __asm { FMOV            V0.4S, #4.0 }

              v1032 = vaddq_f32(v1026, _Q0);
              _Q0.i64[0] = 0x4100000041000000;
              _Q0.i64[1] = 0x4100000041000000;
              v1033 = vaddq_f32(v1026, _Q0);
              __asm { FMOV            V0.4S, #12.0 }

              v1035 = vaddq_f32(v1026, _Q0);
              v1036 = vdivq_f32(v1027, vcvtq_f32_f16(v1023[3]));
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

              v1133 = vaddq_f32(v1013, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v1009, v1002 * (((v1130 + v1005) - v1001) * (1000.0 / _S2))), v1008, v1003 * (((v998 + v1005) - *(&a11 + 1)) * (1000.0 / _S2))), v1007, 1000.0 / _S2));
              v1134 = 0xFFFF0000FFFFLL;
              if (*&v1133.i32[2] >= 0.0 && (1000.0 / _S2) > 0.0)
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
                v65 = vdivq_f32(v64, vcvtq_f32_f16(*v60));
                v66 = vdivq_f32(v64, vcvtq_f32_f16(v60[1]));
                __asm { FMOV            V1.4S, #4.0 }

                v71 = vaddq_f32(v63, _Q1);
                v72 = vaddq_f32(v63, v59);
                v73 = vdivq_f32(v64, vcvtq_f32_f16(v60[2]));
                __asm { FMOV            V1.4S, #12.0 }

                v75 = vaddq_f32(v1562, _Q1);
                v76 = vdivq_f32(v64, vcvtq_f32_f16(v60[3]));
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

                v126 = 1000.0 / _S2;
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
            v527 = vdivq_f32(v526, vcvtq_f32_f16(*v522));
            v528 = vdivq_f32(v526, vcvtq_f32_f16(v522[1]));
            v529 = vdivq_f32(v526, vcvtq_f32_f16(v522[2]));
            __asm { FMOV            V0.4S, #4.0 }

            v531 = vaddq_f32(v525, _Q0);
            v532 = vaddq_f32(v525, v520);
            __asm { FMOV            V0.4S, #12.0 }

            v534 = vaddq_f32(v525, _Q0);
            v535 = vdivq_f32(v526, vcvtq_f32_f16(v522[3]));
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

            v593 = 1000.0 / _S2;
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
            v394 = vdivq_f32(v393, vcvtq_f32_f16(*v388));
            v395 = vdivq_f32(v393, vcvtq_f32_f16(v388[1]));
            v396 = vdivq_f32(v393, vcvtq_f32_f16(v388[2]));
            __asm { FMOV            V0.4S, #4.0 }

            v398 = vaddq_f32(v391, _Q0);
            _Q0.i64[0] = 0x4100000041000000;
            _Q0.i64[1] = 0x4100000041000000;
            v399 = vaddq_f32(v391, _Q0);
            __asm { FMOV            V0.4S, #12.0 }

            v401 = vaddq_f32(v391, _Q0);
            v402 = vdivq_f32(v393, vcvtq_f32_f16(v388[3]));
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

            v464 = 1000.0 / _S2;
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
            v286 = vdivq_f32(v285, vcvtq_f32_f16(*v281));
            v287 = vdivq_f32(v285, vcvtq_f32_f16(v281[1]));
            __asm { FMOV            V1.4S, #4.0 }

            v289 = vaddq_f32(v284, _Q1);
            v290 = vdivq_f32(v285, vcvtq_f32_f16(v281[2]));
            v291.i64[0] = 0x4100000041000000;
            v291.i64[1] = 0x4100000041000000;
            v292 = vaddq_f32(v284, v291);
            __asm { FMOV            V1.4S, #12.0 }

            v294 = vaddq_f32(v284, _Q1);
            v295 = vdivq_f32(v285, vcvtq_f32_f16(v281[3]));
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

            v341 = 1000.0 / _S2;
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

uint64_t reprojectUndistortedDepthMapWithInputImmediates<unsigned short,825437747u>(__CVBuffer *a1, __CVBuffer *a2, CVPixelBufferRef pixelBuffer, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, float32x4_t a12, float32x4_t a13, int32x4_t a14, int32x4_t a15, __int128 a16, __int128 a17, __int128 a18)
{
  v1572 = SHIDWORD(a10);
  v1597 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v1384 = a2;
  if (!a2)
  {
    if (PixelFormatType <= 1717855599)
    {
      if (PixelFormatType == 825437747)
      {
        Height = CVPixelBufferGetHeight(a1);
        Width = CVPixelBufferGetWidth(a1);
        v1163 = CVPixelBufferGetHeight(pixelBuffer);
        v1164 = CVPixelBufferGetWidth(pixelBuffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        memset(&v1595, 0, sizeof(v1595));
        v1166 = MEMORY[0x277CBF3A0];
        v1329 = a1;
        PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1595);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(pixelBuffer, *v1166, &buf);
        v1171 = BytesPerRow >> 1;
        data = buf.data;
        if (v1171 * v1163)
        {
          memset_pattern16(buf.data, &unk_2404C86B0, 2 * v1171 * v1163);
        }

        v1332 = buf.height;
        v1174 = a14;
        v1173 = a15;
        v1176 = a12;
        v1175 = a13;
        v1178 = *&a18;
        v1177 = *&a11;
        v1179 = *&a16;
        if (Height)
        {
          v1180 = 0;
          v1181.i32[1] = v1572;
          v1182.i32[1] = HIDWORD(a9);
          v1183 = 1.0 / *&a9;
          v1184 = 1.0 / *&v1572;
          v1185 = Width & 0xFFFFFFFFFFFFFFF0;
          v1186 = 0.5;
          *v1167.i32 = 0.5 - *(&a11 + 1);
          v1187 = vdupq_lane_s32(v1167, 0);
          *v1167.i32 = vmuls_lane_f32(1.0 / *&v1572, a13, 2);
          *v1181.i32 = vmuls_lane_f32(1.0 / *&v1572, *a13.f32, 1);
          *v1182.i32 = (1.0 / *&v1572) * a13.f32[0];
          *&v1168 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
          *&v1169 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
          *&v1170 = (1.0 / *&a9) * a12.f32[0];
          v1383 = v1595.data;
          rowBytes = v1595.rowBytes;
          v1351 = vdupq_lane_s32(*a14.i8, 0);
          v1354 = vdupq_lane_s32(v1182, 0);
          v1347 = vdupq_lane_s32(*a14.i8, 1);
          v1349 = vdupq_lane_s32(v1181, 0);
          v1344 = vdupq_laneq_s32(a14, 2);
          v1345 = vdupq_lane_s32(v1167, 0);
          v1188 = vdupq_laneq_s32(a15, 2);
          v1189 = vdupq_lane_s32(*a15.i8, 0);
          v1190 = vdupq_lane_s32(*a15.i8, 1);
          v1191 = vdupq_n_s32(v1163);
          v1342 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
          v1192 = vdupq_n_s32(v1171);
          v1193 = v1164;
          v1194 = v1163;
          v1336 = (((Width & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v1195 = vdupq_lane_s32(*&a18, 1);
          v1196 = *(&a17 + 1);
          v1197.i64[0] = 0x3E0000003E000000;
          v1197.i64[1] = 0x3E0000003E000000;
          v1370 = Width;
          v1365 = v1171;
          v1361 = 1.0 / *&a9;
          v1485 = vdupq_lane_s32(*&a18, 0);
          v1495 = vdupq_n_s32(LODWORD(buf.height) * v1171 - 2);
          v1340 = v1164;
          v1338 = v1163;
          v1466 = v1189;
          v1476 = v1190;
          v1535 = v1195;
          v1456 = vdupq_lane_s32(*&a16, 0);
          v1427 = v1188;
          v1437 = vdupq_n_s32(v1164);
          v1198 = vdupq_lane_s32(*&a17, 1);
          do
          {
            v1199 = &v1383[v1180 * rowBytes];
            if (v1185)
            {
              v1417 = v1180;
              v1200 = 0;
              v1525 = vmlaq_f32(v1351, v1354, v1187);
              v1515 = vmlaq_f32(v1347, v1349, v1187);
              v1407 = v1187;
              v1505 = vmlaq_f32(v1344, v1345, v1187);
              v1201 = v1342;
              v1202.i64[0] = 0x4100000041000000;
              v1202.i64[1] = 0x4100000041000000;
              do
              {
                v1203 = v1189;
                v1593 = v1200;
                v1204 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v1199)), v1197);
                v1205 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v1199[1])), v1197);
                __asm { FMOV            V2.4S, #4.0 }

                v1207 = vaddq_f32(v1201, _Q2);
                v1208 = vaddq_f32(v1201, v1202);
                v1209 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v1199[2])), v1197);
                __asm { FMOV            V1.4S, #12.0 }

                v1211 = vaddq_f32(v1201, _Q1);
                v1212 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v1199[3])), v1197);
                v1213 = vmlaq_f32(v1188, vmlaq_n_f32(v1505, v1201, *&v1168), v1204);
                v1214 = vmlaq_f32(v1188, vmlaq_n_f32(v1505, v1207, *&v1168), v1205);
                v1215 = vmlaq_f32(v1188, vmlaq_n_f32(v1505, v1208, *&v1168), v1209);
                v1216 = vmlaq_f32(v1188, vmlaq_n_f32(v1505, v1211, *&v1168), v1212);
                v1583 = vcgtzq_f32(v1204);
                v1217 = v1170;
                v1218 = vmlaq_f32(v1203, vmlaq_n_f32(v1525, v1201, *&v1170), v1204);
                v1219 = v1169;
                v1220 = v1168;
                v1221 = vmlaq_f32(v1190, vmlaq_n_f32(v1515, v1201, *&v1169), v1204);
                v1222 = vcgtzq_f32(v1209);
                v1223 = vmlaq_f32(v1190, vmlaq_n_f32(v1515, v1207, *&v1169), v1205);
                v1224 = vmlaq_f32(v1203, vmlaq_n_f32(v1525, v1208, *&v1217), v1209);
                v1225 = vmlaq_f32(v1190, vmlaq_n_f32(v1515, v1208, *&v1169), v1209);
                v1226 = v1191;
                v1227 = vmlaq_f32(v1485, vdivq_f32(v1456, v1213), v1218);
                v1228 = vmlaq_f32(v1535, vdivq_f32(v1198, v1213), v1221);
                v1229 = vmlaq_f32(v1485, vdivq_f32(v1456, v1214), vmlaq_f32(v1203, vmlaq_n_f32(v1525, v1207, *&v1217), v1205));
                v1230 = vmlaq_f32(v1203, vmlaq_n_f32(v1525, v1211, *&v1217), v1212);
                v1231 = vmlaq_f32(v1190, vmlaq_n_f32(v1515, v1211, *&v1169), v1212);
                v1232 = vornq_s8(vmvnq_s8(vcgezq_f32(v1214)), vcgtzq_f32(v1205));
                v1233 = vornq_s8(vmvnq_s8(vcgezq_f32(v1216)), vcgtzq_f32(v1212));
                v1234 = vmlaq_f32(v1535, vdivq_f32(v1198, v1215), v1225);
                v1235 = vcvtmq_s32_f32(v1227);
                v1236 = vcvtmq_s32_f32(v1228);
                v1237 = vcvtmq_s32_f32(v1229);
                v1168 = v1220;
                v1188 = v1427;
                v1238 = vcvtmq_s32_f32(vmlaq_f32(v1535, vdivq_f32(v1198, v1214), v1223));
                v1239 = vcvtmq_s32_f32(vmlaq_f32(v1485, vdivq_f32(v1456, v1215), v1224));
                v1240 = vcvtmq_s32_f32(v1234);
                v1241 = vmlaq_f32(v1485, vdivq_f32(v1456, v1216), v1230);
                v1197.i64[0] = 0x3E0000003E000000;
                v1197.i64[1] = 0x3E0000003E000000;
                v1242 = vcvtmq_s32_f32(v1241);
                v1243 = vcvtmq_s32_f32(vmlaq_f32(v1535, vdivq_f32(v1198, v1216), v1231));
                v1244 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1236, v1226), vcgeq_s32(v1235, v1437)), vcltzq_s32(vorrq_s8(v1236, v1235))), vornq_s8(vmvnq_s8(vcgezq_f32(v1213)), v1583));
                v1191 = v1226;
                v1245 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1240, v1226), vcgeq_s32(v1239, v1437)), vcltzq_s32(vorrq_s8(v1240, v1239))), vornq_s8(vmvnq_s8(vcgezq_f32(v1215)), v1222));
                v1222.i64[0] = 0x4100000041000000;
                v1222.i64[1] = 0x4100000041000000;
                v1246 = vmulq_f32(v1213, v1222);
                v1247 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1243, v1226), vcgeq_s32(v1242, v1437)), vcltzq_s32(vorrq_s8(v1243, v1242))), v1233);
                v1169 = v1219;
                v1170 = v1217;
                v1189 = v1466;
                v1190 = v1476;
                v1248 = vdupq_n_s32(0x46FFFE00u);
                v1249 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1244, 0x1FuLL)), v1248, v1246);
                v1246.i64[0] = 0x4100000041000000;
                v1246.i64[1] = 0x4100000041000000;
                v1250 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1238, v1226), vcgeq_s32(v1237, v1437)), vcltzq_s32(vorrq_s8(v1238, v1237))), v1232), 0x1FuLL)), v1248, vmulq_f32(v1214, v1246));
                v1232.i64[0] = 0x4100000041000000;
                v1232.i64[1] = 0x4100000041000000;
                v1251 = vmulq_f32(v1215, v1232);
                v1252 = vshlq_n_s32(v1245, 0x1FuLL);
                v1202.i64[0] = 0x4100000041000000;
                v1202.i64[1] = 0x4100000041000000;
                v1253 = vmlaq_s32(v1237, v1238, v1192);
                v1254 = vmlaq_s32(v1239, v1240, v1192);
                v1255 = vminq_s32(vmaxq_s32(vmlaq_s32(v1235, v1236, v1192), 0), v1495);
                v1256 = vcvtq_s32_f32(v1249);
                v1571 = v1256.i32[1];
                v1257 = v1256.i32[2];
                v1545 = v1256.i32[3];
                v1258 = v1256.i32[0];
                v1259 = vminq_s32(vmaxq_s32(vmlaq_s32(v1242, v1243, v1192), 0), v1495);
                v1260 = v1259.u32[3];
                v1261 = v1259.u32[1];
                v1262 = v1259.u32[2];
                v1263 = v1259.i32[0];
                v1264 = vcvtq_s32_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(v1247, 0x1FuLL)), v1248, vmulq_f32(v1216, v1202)));
                v1265 = v1264.i32[3];
                v1266 = v1264.i32[1];
                v1267 = v1264.i32[2];
                v1268 = v1264.i32[0];
                v1269 = vminq_s32(vmaxq_s32(v1254, 0), v1495);
                v1270 = vcvtq_s32_f32(vbslq_s8(vcltzq_s32(v1252), v1248, v1251));
                v1271 = v1270.i32[2];
                v1272 = v1270.i32[3];
                v1273 = v1270.i32[1];
                v1274 = v1270.i32[0];
                v1275 = vminq_s32(vmaxq_s32(v1253, 0), v1495);
                v1276 = v1275.u32[1];
                v1277 = v1275.u32[2];
                v1278 = v1275.u32[3];
                v1279 = v1275.i32[0];
                v1280 = vcvtq_s32_f32(v1250);
                v1281 = data[v1255.u32[0]];
                if (v1258 < v1281)
                {
                  LOWORD(v1281) = v1258;
                }

                data[v1255.u32[0]] = v1281;
                v1282 = v1280.i32[1];
                v1283 = v1280.i32[2];
                v1284 = v1280.i32[3];
                v1285 = v1280.i32[0];
                __asm { FMOV            V0.4S, #16.0 }

                v1201 = vaddq_f32(v1201, _Q0);
                if (v1282 >= data[v1276])
                {
                  LOWORD(v1282) = data[v1276];
                }

                data[v1276] = v1282;
                v1287 = data[v1269.u32[2]];
                if (v1271 < v1287)
                {
                  LOWORD(v1287) = v1271;
                }

                data[v1269.u32[2]] = v1287;
                v1288 = data[v1260];
                if (v1265 < v1288)
                {
                  LOWORD(v1288) = v1265;
                }

                data[v1260] = v1288;
                v1289 = data[v1255.u32[1]];
                if (v1571 < v1289)
                {
                  LOWORD(v1289) = v1571;
                }

                data[v1255.u32[1]] = v1289;
                v1290 = data[v1277];
                if (v1283 < v1290)
                {
                  LOWORD(v1290) = v1283;
                }

                data[v1277] = v1290;
                v1291 = data[v1269.u32[3]];
                if (v1272 < v1291)
                {
                  LOWORD(v1291) = v1272;
                }

                data[v1269.u32[3]] = v1291;
                v1292 = data[v1263];
                if (v1268 < v1292)
                {
                  LOWORD(v1292) = v1268;
                }

                data[v1263] = v1292;
                v1293 = data[v1255.u32[2]];
                if (v1257 < v1293)
                {
                  LOWORD(v1293) = v1257;
                }

                data[v1255.u32[2]] = v1293;
                v1294 = data[v1278];
                if (v1284 < v1294)
                {
                  LOWORD(v1294) = v1284;
                }

                data[v1278] = v1294;
                v1295 = data[v1269.u32[0]];
                if (v1274 < v1295)
                {
                  LOWORD(v1295) = v1274;
                }

                data[v1269.u32[0]] = v1295;
                v1296 = data[v1261];
                if (v1266 < v1296)
                {
                  LOWORD(v1296) = v1266;
                }

                data[v1261] = v1296;
                v1297 = data[v1255.u32[3]];
                if (v1545 < v1297)
                {
                  LOWORD(v1297) = v1545;
                }

                data[v1255.u32[3]] = v1297;
                v1298 = data[v1279];
                if (v1285 < v1298)
                {
                  LOWORD(v1298) = v1285;
                }

                data[v1279] = v1298;
                v1299 = data[v1269.u32[1]];
                if (v1273 < v1299)
                {
                  LOWORD(v1299) = v1273;
                }

                data[v1269.u32[1]] = v1299;
                v1300 = data[v1262];
                if (v1267 < v1300)
                {
                  LOWORD(v1300) = v1267;
                }

                data[v1262] = v1300;
                v1199 += 4;
                v1200 = v1593 + 16;
              }

              while (v1593 + 16 < v1185);
              v1301 = v1336;
              v1174 = a14;
              v1173 = a15;
              v1176 = a12;
              v1175 = a13;
              v1178 = *&a18;
              v1177 = *&a11;
              v1179 = *&a16;
              v1187 = v1407;
              Width = v1370;
              v1171 = v1365;
              v1180 = v1417;
              v1183 = v1361;
              v1184 = 1.0 / *&v1572;
              v1186 = 0.5;
              v1193 = v1340;
              v1194 = v1338;
              v1195 = v1535;
              v1196 = *(&a17 + 1);
            }

            else
            {
              v1301 = 0;
            }

            if (v1301 < Width)
            {
              do
              {
                v1302 = vcvts_n_f32_u32(v1199->u16[0], 3uLL);
                _Q2 = vaddq_f32(v1173, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v1176, v1183 * (((v1301 + v1186) - v1177) * v1302)), v1175, v1184 * (((v1180 + v1186) - *(&a11 + 1)) * v1302)), v1174, v1302));
                if (_Q2.f32[2] >= 0.0 && v1302 > 0.0)
                {
                  v1304 = (v1178 + (_Q2.f32[0] * (v1179 / _Q2.f32[2])));
                  if ((v1304 & 0x80000000) == 0 && v1193 > v1304)
                  {
                    _S3 = v1196 / _Q2.f32[2];
                    v1306 = v1195;
                    __asm { FMLA            S4, S3, V2.S[1] }

                    v1308 = _S4;
                    v1195 = v1306;
                    v1197.i64[0] = 0x3E0000003E000000;
                    v1197.i64[1] = 0x3E0000003E000000;
                    if ((v1308 & 0x80000000) == 0 && v1194 > v1308)
                    {
                      v1309 = v1171 * v1308;
                      v1310 = vcvts_n_s32_f32(_Q2.f32[2], 3uLL);
                      v1311 = &data[v1309];
                      if ((v1311[v1304] - 1) >= v1310)
                      {
                        v1311[v1304] = v1310;
                      }
                    }
                  }
                }

                ++v1301;
                v1199 = (v1199 + 2);
              }

              while (Width != v1301);
            }

            ++v1180;
            __asm { FMOV            V0.4S, #1.0 }

            v1187 = vaddq_f32(v1187, _Q0);
          }

          while (v1180 != Height);
        }

        v738 = v1329;
        if (v1332)
        {
          v1313 = 0;
          v1314 = *&buf.width;
          v1315 = buf.width >> 4;
          v1316 = buf.data;
          v1317 = buf.height;
          if (buf.width >> 4 <= 1)
          {
            v1315 = 1;
          }

          if (buf.height <= 1)
          {
            v1317 = 1;
          }

          v1318 = buf.width & 0xFFFFFFF0;
          do
          {
            v1319 = &v1316[*(&v1314 + 1) * v1313];
            v1320 = v1315;
            if (v1314 >= 0x10)
            {
              do
              {
                v1321 = v1319[2];
                v1322 = v1319[3];
                v1323 = vbic_s8(v1319[1], vceq_s16(v1319[1], 0x8000800080008000));
                *v1319 = vbic_s8(*v1319, vceq_s16(*v1319, 0x8000800080008000));
                v1319[1] = v1323;
                v1319[2] = vbic_s8(v1321, vceq_s16(v1321, 0x8000800080008000));
                v1319[3] = vbic_s8(v1322, vceq_s16(v1322, 0x8000800080008000));
                v1319 += 4;
                --v1320;
              }

              while (v1320);
            }

            v1324 = v1314 & 0xFFFFFFF0;
            if (v1318 != v1314)
            {
              do
              {
                if (v1319->i16[0] == 0x7FFF)
                {
                  v1319->i16[0] = 0;
                }

                ++v1324;
                v1319 = (v1319 + 2);
              }

              while (v1324 < v1314);
            }

            ++v1313;
          }

          while (v1313 != v1317);
        }

        goto LABEL_392;
      }

      if (PixelFormatType == 1278226534)
      {
        goto LABEL_222;
      }

      if (PixelFormatType != 1278226536)
      {
        goto LABEL_394;
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
            v132 = CVPixelBufferGetHeight(a1);
            v133 = CVPixelBufferGetWidth(a1);
            v134 = CVPixelBufferGetHeight(pixelBuffer);
            v135 = CVPixelBufferGetWidth(pixelBuffer);
            v136 = CVPixelBufferGetBytesPerRow(pixelBuffer);
            CVPixelBufferLockBaseAddress(a1, 1uLL);
            CVPixelBufferLockBaseAddress(pixelBuffer, 0);
            memset(&v1595, 0, sizeof(v1595));
            v137 = MEMORY[0x277CBF3A0];
            PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1595);
            memset(&buf, 0, sizeof(buf));
            PixelBufferUtils::asVImageBuffer(pixelBuffer, *v137, &buf);
            v139 = buf.data;
            v138 = buf.height;
            bzero(buf.data, buf.height * buf.rowBytes);
            v145 = a14;
            v144 = a15;
            v147 = a12;
            v146 = a13;
            v149 = *&a18;
            v148 = *&a11;
            v150 = *&a16;
            if (v132)
            {
              v151 = 0;
              v152.i32[1] = v1572;
              v153 = 1.0 / *&a9;
              v154 = 1.0 / *&v1572;
              v155 = v133 & 0xFFFFFFFFFFFFFFF0;
              v156 = 0.5;
              *v140.i32 = 0.5 - *(&a11 + 1);
              v157 = vdupq_lane_s32(v140, 0);
              *v140.i32 = vmuls_lane_f32(1.0 / *&v1572, a13, 2);
              *v152.i32 = vmuls_lane_f32(1.0 / *&v1572, *a13.f32, 1);
              *v141.i32 = (1.0 / *&v1572) * a13.f32[0];
              *&v142 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
              v158 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
              *&v143 = (1.0 / *&a9) * a12.f32[0];
              v159 = v1595.data;
              v160 = v1595.rowBytes;
              v1429 = vdupq_lane_s32(*a14.i8, 0);
              v1439 = vdupq_lane_s32(v141, 0);
              v1409 = vdupq_lane_s32(*a14.i8, 1);
              v1419 = vdupq_lane_s32(v152, 0);
              v1399 = vdupq_lane_s32(v140, 0);
              v1385 = vdupq_laneq_s32(a14, 2);
              v161 = vdupq_laneq_s32(a15, 2);
              v162 = vdupq_lane_s32(*a15.i8, 0);
              v163 = vdupq_lane_s32(*a15.i8, 1);
              v164 = vdupq_n_s32(v135);
              v1377 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
              v165 = vdupq_n_s32(v136 >> 2);
              v1497 = vdupq_n_s32(v138 * (v136 >> 2) - 4);
              v166 = *(&a17 + 1);
              v167.i64[0] = 0x3E0000003E000000;
              v167.i64[1] = 0x3E0000003E000000;
              v1458 = 1.0 / *&a9;
              v1448 = 1.0 / *&v1572;
              v1517 = vdupq_lane_s32(*&a16, 0);
              v1527 = vdupq_n_s32(v134);
              v1507 = vdupq_lane_s32(*&a17, 1);
              v1478 = vdupq_lane_s32(*&a18, 1);
              v1487 = vdupq_lane_s32(*&a18, 0);
              do
              {
                v168 = &v159[v151 * v160];
                v169 = 0;
                if (v155)
                {
                  v1556 = vmlaq_f32(v1429, v1439, v157);
                  v1547 = vmlaq_f32(v1409, v1419, v157);
                  v170 = v1377;
                  v1468 = v157;
                  v1537 = vmlaq_f32(v1385, v1399, v157);
                  do
                  {
                    v171 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v168)), v167);
                    v172 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v168[1])), v167);
                    v173 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v168[2])), v167);
                    __asm { FMOV            V0.4S, #4.0 }

                    v175 = vaddq_f32(v170, _Q0);
                    _Q0.i64[0] = 0x4100000041000000;
                    _Q0.i64[1] = 0x4100000041000000;
                    v176 = vaddq_f32(v170, _Q0);
                    __asm { FMOV            V0.4S, #12.0 }

                    v178 = vaddq_f32(v170, _Q0);
                    v179 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v168[3])), v167);
                    v180 = vmlaq_f32(v161, vmlaq_n_f32(v1537, v170, *&v142), v171);
                    v181 = vmlaq_f32(v161, vmlaq_n_f32(v1537, v175, *&v142), v172);
                    v182 = vmlaq_f32(v161, vmlaq_n_f32(v1537, v176, *&v142), v173);
                    v183 = vmlaq_f32(v161, vmlaq_n_f32(v1537, v178, *&v142), v179);
                    v184 = v164;
                    v1575 = vandq_s8(vcgezq_f32(v180), vcgtzq_f32(v171));
                    v185 = v143;
                    v186 = vmlaq_f32(v162, vmlaq_n_f32(v1556, v170, *&v143), v171);
                    v1564 = vandq_s8(vcgezq_f32(v181), vcgtzq_f32(v172));
                    v187 = vmlaq_f32(v163, vmlaq_n_f32(v1547, v170, v158), v171);
                    v188 = vmlaq_f32(v162, vmlaq_n_f32(v1556, v175, *&v143), v172);
                    v189 = vmlaq_f32(v162, vmlaq_n_f32(v1556, v176, *&v143), v173);
                    v190 = vandq_s8(vcgezq_f32(v183), vcgtzq_f32(v179));
                    v191 = vmlaq_f32(v162, vmlaq_n_f32(v1556, v178, *&v143), v179);
                    v192 = v162;
                    v193 = v161;
                    v194 = v142;
                    v195 = vmlaq_f32(v163, vmlaq_n_f32(v1547, v178, v158), v179);
                    v196 = vmlaq_f32(v1478, vdivq_f32(v1507, v180), v187);
                    v197 = vmlaq_f32(v1487, vdivq_f32(v1517, v181), v188);
                    v198 = vmlaq_f32(v1478, vdivq_f32(v1507, v181), vmlaq_f32(v163, vmlaq_n_f32(v1547, v175, v158), v172));
                    v199 = v165;
                    v200 = vmlaq_f32(v1487, vdivq_f32(v1517, v182), v189);
                    v201 = vmlaq_f32(v1478, vdivq_f32(v1507, v182), vmlaq_f32(v163, vmlaq_n_f32(v1547, v176, v158), v173));
                    v202 = vdupq_n_s32(0x447A0000u);
                    v203 = vdivq_f32(v202, v180);
                    v204 = vdivq_f32(v202, v181);
                    v205 = vdivq_f32(v202, v182);
                    v1585 = vdivq_f32(v202, v183);
                    v206 = vcvtmq_s32_f32(vmlaq_f32(v1487, vdivq_f32(v1517, v180), v186));
                    v207 = vcvtmq_s32_f32(v196);
                    v208 = vcvtmq_s32_f32(v197);
                    v209 = vcvtmq_s32_f32(v198);
                    v164 = v184;
                    v210 = vcvtmq_s32_f32(v200);
                    v165 = v199;
                    v211 = vcvtmq_s32_f32(v201);
                    v212 = vcvtmq_s32_f32(vmlaq_f32(v1487, vdivq_f32(v1517, v183), v191));
                    v213 = vcvtmq_s32_f32(vmlaq_f32(v1478, vdivq_f32(v1507, v183), v195));
                    v214 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1527, v207), vcgtq_s32(v184, v206)), vcgezq_s32(vorrq_s8(v207, v206))), v1575);
                    v215 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1527, v211), vcgtq_s32(v184, v210)), vcgezq_s32(vorrq_s8(v211, v210))), vandq_s8(vcgezq_f32(v182), vcgtzq_f32(v173)));
                    v142 = v194;
                    v161 = v193;
                    v162 = v192;
                    v216 = vmlaq_s32(v206, v207, v199);
                    v143 = v185;
                    v217 = vminq_s32(vmaxq_s32(v216, 0), v1497);
                    v218 = vandq_s8(v203, vcltzq_s32(vshlq_n_s32(v214, 0x1FuLL)));
                    v139[v217.u32[0]] = fmaxf(*v218.i32, v139[v217.u32[0]]);
                    v219 = vminq_s32(vmaxq_s32(vmlaq_s32(v208, v209, v199), 0), v1497);
                    v220 = vandq_s8(v204, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1527, v209), vcgtq_s32(v184, v208)), vcgezq_s32(vorrq_s8(v209, v208))), v1564), 0x1FuLL)));
                    v221 = vminq_s32(vmaxq_s32(vmlaq_s32(v210, v211, v199), 0), v1497);
                    v139[v219.u32[1]] = fmaxf(*&v220.i32[1], v139[v219.u32[1]]);
                    v222 = vandq_s8(v205, vcltzq_s32(vshlq_n_s32(v215, 0x1FuLL)));
                    v223 = vminq_s32(vmaxq_s32(vmlaq_s32(v212, v213, v199), 0), v1497);
                    v139[v221.u32[2]] = fmaxf(*&v222.i32[2], v139[v221.u32[2]]);
                    v224 = vandq_s8(v1585, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v1527, v213), vcgtq_s32(v184, v212)), vcgezq_s32(vorrq_s8(v213, v212))), v190), 0x1FuLL)));
                    v139[v223.u32[3]] = fmaxf(*&v224.i32[3], v139[v223.u32[3]]);
                    v139[v217.u32[1]] = fmaxf(*&v218.i32[1], v139[v217.u32[1]]);
                    v139[v219.u32[2]] = fmaxf(*&v220.i32[2], v139[v219.u32[2]]);
                    v139[v221.u32[3]] = fmaxf(*&v222.i32[3], v139[v221.u32[3]]);
                    v139[v223.u32[0]] = fmaxf(*v224.i32, v139[v223.u32[0]]);
                    v139[v217.u32[2]] = fmaxf(*&v218.i32[2], v139[v217.u32[2]]);
                    v139[v219.u32[3]] = fmaxf(*&v220.i32[3], v139[v219.u32[3]]);
                    v139[v221.u32[0]] = fmaxf(*v222.i32, v139[v221.u32[0]]);
                    v139[v223.u32[1]] = fmaxf(*&v224.i32[1], v139[v223.u32[1]]);
                    v139[v217.u32[3]] = fmaxf(*&v218.i32[3], v139[v217.u32[3]]);
                    v139[v219.u32[0]] = fmaxf(*v220.i32, v139[v219.u32[0]]);
                    v139[v221.u32[1]] = fmaxf(*&v222.i32[1], v139[v221.u32[1]]);
                    v218.i32[0] = v224.i32[2];
                    v167.i64[0] = 0x3E0000003E000000;
                    v167.i64[1] = 0x3E0000003E000000;
                    v139[v223.u32[2]] = fmaxf(*v218.i32, v139[v223.u32[2]]);
                    __asm { FMOV            V0.4S, #16.0 }

                    v170 = vaddq_f32(v170, _Q0);
                    v168 += 4;
                    v169 += 16;
                  }

                  while (v169 < v155);
                  v169 = (((v133 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
                  v145 = a14;
                  v144 = a15;
                  v147 = a12;
                  v146 = a13;
                  v149 = *&a18;
                  v148 = *&a11;
                  v150 = *&a16;
                  v153 = v1458;
                  v154 = v1448;
                  v156 = 0.5;
                  v157 = v1468;
                  v166 = *(&a17 + 1);
                }

                if (v169 < v133)
                {
                  do
                  {
                    v226 = vcvts_n_f32_u32(v168->u16[0], 3uLL);
                    _Q2 = vaddq_f32(v144, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v147, v153 * (((v169 + v156) - v148) * v226)), v146, v154 * (((v151 + v156) - *(&a11 + 1)) * v226)), v145, v226));
                    if (_Q2.f32[2] >= 0.0 && v226 > 0.0)
                    {
                      v228 = (v149 + (_Q2.f32[0] * (v150 / _Q2.f32[2])));
                      if ((v228 & 0x80000000) == 0 && v135 > v228)
                      {
                        _S3 = v166 / _Q2.f32[2];
                        __asm { FMLA            S4, S3, V2.S[1] }

                        v231 = _S4;
                        v167.i64[0] = 0x3E0000003E000000;
                        v167.i64[1] = 0x3E0000003E000000;
                        if ((v231 & 0x80000000) == 0 && v134 > v231)
                        {
                          v232 = 1000.0 / _Q2.f32[2];
                          v233 = &v139[(v136 >> 2) * v231];
                          v234 = v233[v228];
                          if (v234 == 0.0 || v234 < v232)
                          {
                            v233[v228] = v232;
                          }
                        }
                      }
                    }

                    ++v169;
                    v168 = (v168 + 2);
                  }

                  while (v133 != v169);
                }

                ++v151;
                __asm { FMOV            V0.4S, #1.0 }

                v157 = vaddq_f32(v157, _Q0);
              }

              while (v151 != v132);
            }

LABEL_185:
            v738 = a1;
LABEL_392:
            CVPixelBufferUnlockBaseAddress(v738, 1uLL);
            v1161 = pixelBuffer;
            goto LABEL_393;
          }

          goto LABEL_394;
        }

LABEL_222:
        v862 = CVPixelBufferGetHeight(a1);
        v863 = CVPixelBufferGetWidth(a1);
        v864 = CVPixelBufferGetHeight(pixelBuffer);
        v865 = CVPixelBufferGetWidth(pixelBuffer);
        v866 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        memset(&v1595, 0, sizeof(v1595));
        v867 = MEMORY[0x277CBF3A0];
        v868 = a1;
        PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1595);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(pixelBuffer, *v867, &buf);
        v870 = v866 >> 2;
        v871 = buf.data;
        if (v870 * v864)
        {
          memset_pattern16(buf.data, &unk_2404C8690, 4 * v870 * v864);
        }

        v872 = buf.height;
        v874 = a14;
        v873 = a15;
        v876 = a12;
        v875 = a13;
        v878 = *&a18;
        v877 = *&a11;
        v879 = *&a16;
        if (v862)
        {
          v880 = 0;
          v881.i32[1] = v1572;
          v882.i32[1] = HIDWORD(a9);
          v883 = 1.0 / *&a9;
          v884 = 1.0 / *&v1572;
          v885 = v863 & 0xFFFFFFFFFFFFFFF0;
          v886 = 0.5;
          *v869.i32 = 0.5 - *(&a11 + 1);
          v887 = vdupq_lane_s32(v869, 0);
          *v869.i32 = vmuls_lane_f32(1.0 / *&v1572, a13, 2);
          *v881.i32 = vmuls_lane_f32(1.0 / *&v1572, *a13.f32, 1);
          *v882.i32 = (1.0 / *&v1572) * a13.f32[0];
          v888 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
          v1483 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
          v1435 = vdupq_lane_s32(*a14.i8, 0);
          v1445 = vdupq_lane_s32(v882, 0);
          v1415 = vdupq_lane_s32(*a14.i8, 1);
          v1425 = vdupq_lane_s32(v881, 0);
          v889 = (1.0 / *&a9) * a12.f32[0];
          v1405 = vdupq_lane_s32(v869, 0);
          v1388 = vdupq_laneq_s32(a14, 2);
          v890 = v1595.data;
          v891 = v1595.rowBytes;
          v1381 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
          v892 = vdupq_laneq_s32(a15, 2);
          v893 = vdupq_lane_s32(*a15.i8, 0);
          v894 = vdupq_lane_s32(*a15.i8, 1);
          v895 = vdupq_n_s32(v865);
          v896 = vdupq_n_s32(v864);
          v897 = vdupq_n_s32(v870);
          v898 = *(&a17 + 1);
          v899.i64[0] = 0x80000000800000;
          v899.i64[1] = 0x80000000800000;
          v1464 = 1.0 / *&a9;
          v1454 = 1.0 / *&v1572;
          v1533 = vdupq_lane_s32(*&a17, 1);
          v1543 = vdupq_n_s32(LODWORD(buf.height) * v870 - 4);
          v1581 = vnegq_f32(v899);
          v1513 = v888;
          v1523 = vdupq_lane_s32(*&a18, 1);
          v1493 = vdupq_lane_s32(*&a18, 0);
          v1503 = vdupq_lane_s32(*&a16, 0);
          do
          {
            v900 = &v890[v880 * v891];
            v901 = 0;
            if (v885)
            {
              v1570 = vmlaq_f32(v1435, v1445, v887);
              v1562 = vmlaq_f32(v1415, v1425, v887);
              v902 = v1381;
              v1474 = v887;
              v1553 = vmlaq_f32(v1388, v1405, v887);
              do
              {
                v903.i64[0] = 0x3E0000003E000000;
                v903.i64[1] = 0x3E0000003E000000;
                v904 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v900)), v903);
                v905 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v900[1])), v903);
                v906 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v900[2])), v903);
                __asm { FMOV            V3.4S, #4.0 }

                v908 = vaddq_f32(v902, _Q3);
                _Q3.i64[0] = 0x4100000041000000;
                _Q3.i64[1] = 0x4100000041000000;
                v909 = vaddq_f32(v902, _Q3);
                v910 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v900[3])), v903);
                __asm { FMOV            V0.4S, #12.0 }

                v912 = vaddq_f32(v902, _Q0);
                v913 = vmlaq_f32(v892, vmlaq_n_f32(v1553, v902, v888), v904);
                v914 = vmlaq_f32(v892, vmlaq_n_f32(v1553, v908, v888), v905);
                v915 = vmlaq_f32(v892, vmlaq_n_f32(v1553, v909, v888), v906);
                v916 = vmlaq_f32(v892, vmlaq_n_f32(v1553, v912, v888), v910);
                v917 = vmlaq_f32(v893, vmlaq_n_f32(v1570, v902, v889), v904);
                v918 = vmlaq_f32(v894, vmlaq_n_f32(v1562, v902, v1483), v904);
                v1591 = vornq_s8(vmvnq_s8(vcgezq_f32(v913)), vcgtzq_f32(v904));
                v919 = vmlaq_f32(v893, vmlaq_n_f32(v1570, v908, v889), v905);
                v920 = v897;
                v921 = v892;
                v922 = vornq_s8(vmvnq_s8(vcgezq_f32(v914)), vcgtzq_f32(v905));
                v923 = vmlaq_f32(v894, vmlaq_n_f32(v1562, v908, v1483), v905);
                v924 = vornq_s8(vmvnq_s8(vcgezq_f32(v915)), vcgtzq_f32(v906));
                v925 = vmlaq_f32(v893, vmlaq_n_f32(v1570, v909, v889), v906);
                v926 = vmlaq_f32(v894, vmlaq_n_f32(v1562, v909, v1483), v906);
                v927 = vornq_s8(vmvnq_s8(vcgezq_f32(v916)), vcgtzq_f32(v910));
                v928 = vmlaq_f32(v893, vmlaq_n_f32(v1570, v912, v889), v910);
                v929 = vmlaq_f32(v894, vmlaq_n_f32(v1562, v912, v1483), v910);
                v930 = vmlaq_f32(v1493, vdivq_f32(v1503, v913), v917);
                v931 = vmlaq_f32(v1523, vdivq_f32(v1533, v913), v918);
                v932 = vmlaq_f32(v1493, vdivq_f32(v1503, v914), v919);
                v933 = vmlaq_f32(v1523, vdivq_f32(v1533, v914), v923);
                v934 = v894;
                v935 = vmlaq_f32(v1493, vdivq_f32(v1503, v915), v925);
                v936 = v896;
                v937 = v895;
                v938 = v893;
                v939 = vdivq_f32(v1503, v916);
                v940 = vmlaq_f32(v1523, vdivq_f32(v1533, v915), v926);
                v941 = vdivq_f32(v1533, v916);
                v942 = vdupq_n_s32(0x3A83126Fu);
                v943 = vmulq_f32(v913, v942);
                v944 = vmulq_f32(v914, v942);
                v945 = vmulq_f32(v915, v942);
                v946 = vmulq_f32(v916, v942);
                v947 = vcvtmq_s32_f32(v930);
                v948 = vcvtmq_s32_f32(v931);
                v949 = vcvtmq_s32_f32(v932);
                v950 = vcvtmq_s32_f32(v933);
                v951 = vmlaq_f32(v1493, v939, v928);
                v893 = v938;
                v895 = v937;
                v896 = v936;
                v952 = vmlaq_f32(v1523, v941, v929);
                v892 = v921;
                v897 = v920;
                v953 = vcvtmq_s32_f32(v935);
                v894 = v934;
                v954 = vcvtmq_s32_f32(v940);
                v955 = vcvtmq_s32_f32(v951);
                v956 = vcvtmq_s32_f32(v952);
                v957 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v950, v936), vcgeq_s32(v949, v895)), vcltzq_s32(vorrq_s8(v950, v949))), v922);
                v958 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v954, v936), vcgeq_s32(v953, v895)), vcltzq_s32(vorrq_s8(v954, v953))), v924);
                v888 = v1513;
                v959 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v956, v936), vcgeq_s32(v955, v895)), vcltzq_s32(vorrq_s8(v956, v955))), v927);
                v960 = vmlaq_s32(v949, v950, v920);
                v961 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v948, v936), vcgeq_s32(v947, v895)), vcltzq_s32(vorrq_s8(v948, v947))), v1591), 0x1FuLL)), v1581, v943);
                v962 = vminq_s32(vmaxq_s32(vmlaq_s32(v947, v948, v920), 0), v1543);
                v963 = vminq_s32(vmaxq_s32(v960, 0), v1543);
                v964 = v962.u32[1];
                v965 = v962.u32[2];
                v966 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v957, 0x1FuLL)), v1581, v944);
                v967 = v962.u32[3];
                v871[v962.u32[0]] = fminf(*v961.i32, v871[v962.u32[0]]);
                v968 = vminq_s32(vmaxq_s32(vmlaq_s32(v953, v954, v920), 0), v1543);
                v871[v963.u32[1]] = fminf(*&v966.i32[1], v871[v963.u32[1]]);
                v969 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v958, 0x1FuLL)), v1581, v945);
                v970 = vminq_s32(vmaxq_s32(vmlaq_s32(v955, v956, v920), 0), v1543);
                v871[v968.u32[2]] = fminf(*&v969.i32[2], v871[v968.u32[2]]);
                v971 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v959, 0x1FuLL)), v1581, v946);
                v871[v970.u32[3]] = fminf(*&v971.i32[3], v871[v970.u32[3]]);
                v871[v964] = fminf(*&v961.i32[1], v871[v964]);
                v871[v963.u32[2]] = fminf(*&v966.i32[2], v871[v963.u32[2]]);
                v871[v968.u32[3]] = fminf(*&v969.i32[3], v871[v968.u32[3]]);
                v871[v970.u32[0]] = fminf(*v971.i32, v871[v970.u32[0]]);
                v871[v965] = fminf(*&v961.i32[2], v871[v965]);
                v871[v963.u32[3]] = fminf(*&v966.i32[3], v871[v963.u32[3]]);
                v871[v968.u32[0]] = fminf(*v969.i32, v871[v968.u32[0]]);
                v871[v970.u32[1]] = fminf(*&v971.i32[1], v871[v970.u32[1]]);
                v871[v967] = fminf(*&v961.i32[3], v871[v967]);
                v871[v963.u32[0]] = fminf(*v966.i32, v871[v963.u32[0]]);
                v871[v968.u32[1]] = fminf(*&v969.i32[1], v871[v968.u32[1]]);
                v871[v970.u32[2]] = fminf(*&v971.i32[2], v871[v970.u32[2]]);
                __asm { FMOV            V0.4S, #16.0 }

                v902 = vaddq_f32(v902, _Q0);
                v900 += 4;
                v901 += 16;
              }

              while (v901 < v885);
              v901 = (((v863 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
              v874 = a14;
              v873 = a15;
              v876 = a12;
              v875 = a13;
              v878 = *&a18;
              v877 = *&a11;
              v879 = *&a16;
              v883 = v1464;
              v884 = v1454;
              v886 = 0.5;
              v887 = v1474;
              v898 = *(&a17 + 1);
            }

            if (v901 < v863)
            {
              do
              {
                v973 = vcvts_n_f32_u32(v900->u16[0], 3uLL);
                _Q2 = vaddq_f32(v873, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v876, v883 * (((v901 + v886) - v877) * v973)), v875, v884 * (((v880 + v886) - *(&a11 + 1)) * v973)), v874, v973));
                if (_Q2.f32[2] >= 0.0 && v973 > 0.0)
                {
                  v975 = (v878 + (_Q2.f32[0] * (v879 / _Q2.f32[2])));
                  if ((v975 & 0x80000000) == 0 && v865 > v975)
                  {
                    _S3 = v898 / _Q2.f32[2];
                    __asm { FMLA            S4, S3, V2.S[1] }

                    v978 = _S4;
                    if ((_S4 & 0x80000000) == 0 && v864 > v978)
                    {
                      v979 = _Q2.f32[2] * 0.001;
                      v980 = &v871[v870 * v978];
                      v981 = v980[v975];
                      if (v981 == 0.0 || v981 > v979)
                      {
                        v980[v975] = v979;
                      }
                    }
                  }
                }

                ++v901;
                v900 = (v900 + 2);
              }

              while (v863 != v901);
            }

            ++v880;
            __asm { FMOV            V0.4S, #1.0 }

            v887 = vaddq_f32(v887, _Q0);
          }

          while (v880 != v862);
        }

        v738 = v868;
        if (v872)
        {
          v984 = 0;
          v985 = *&buf.width;
          v986 = buf.width >> 4;
          v987 = buf.data;
          v988 = buf.height;
          if (buf.width >> 4 <= 1)
          {
            v986 = 1;
          }

          if (buf.height <= 1)
          {
            v988 = 1;
          }

          v989 = buf.width & 0xFFFFFFF0;
          v990.i64[0] = 0x80000000800000;
          v990.i64[1] = 0x80000000800000;
          v991 = vnegq_f32(v990);
          do
          {
            v992 = &v987[*(&v985 + 1) * v984];
            v993 = v986;
            if (v985 >= 0x10)
            {
              do
              {
                v994 = v992[2];
                v995 = v992[3];
                v996 = vbicq_s8(v992[1], vceqq_f32(v992[1], v991));
                *v992 = vbicq_s8(*v992, vceqq_f32(*v992, v991));
                v992[1] = v996;
                v992[2] = vbicq_s8(v994, vceqq_f32(v994, v991));
                v992[3] = vbicq_s8(v995, vceqq_f32(v995, v991));
                v992 += 4;
                --v993;
              }

              while (v993);
            }

            v997 = v985 & 0xFFFFFFF0;
            if (v989 != v985)
            {
              do
              {
                if (v992->f32[0] == 3.4028e38)
                {
                  v992->i32[0] = 0;
                }

                ++v997;
                v992 = (v992 + 4);
              }

              while (v997 < v985);
            }

            ++v984;
          }

          while (v984 != v988);
        }

        goto LABEL_392;
      }

      if (PixelFormatType != 1751410032)
      {
        if (PixelFormatType == 1751411059)
        {
          v613 = CVPixelBufferGetHeight(a1);
          v614 = CVPixelBufferGetWidth(a1);
          v615 = CVPixelBufferGetHeight(pixelBuffer);
          v616 = CVPixelBufferGetWidth(pixelBuffer);
          v617 = CVPixelBufferGetBytesPerRow(pixelBuffer);
          CVPixelBufferLockBaseAddress(a1, 1uLL);
          CVPixelBufferLockBaseAddress(pixelBuffer, 0);
          memset(&v1595, 0, sizeof(v1595));
          v618 = MEMORY[0x277CBF3A0];
          PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1595);
          memset(&buf, 0, sizeof(buf));
          PixelBufferUtils::asVImageBuffer(pixelBuffer, *v618, &buf);
          v620 = buf.data;
          v619 = buf.height;
          bzero(buf.data, buf.height * buf.rowBytes);
          v625 = a14;
          v626 = a15;
          v628 = a12;
          v627 = a13;
          v630 = *&a18;
          v629 = *&a11;
          v631 = *&a16;
          if (v613)
          {
            v632 = 0;
            v633.i32[1] = v1572;
            v634 = 1.0 / *&a9;
            v635 = 1.0 / *&v1572;
            v636 = v614 & 0xFFFFFFFFFFFFFFF0;
            v637 = 0.5;
            *v621.i32 = 0.5 - *(&a11 + 1);
            v638 = vdupq_lane_s32(v621, 0);
            *v621.i32 = vmuls_lane_f32(1.0 / *&v1572, a13, 2);
            *v633.i32 = vmuls_lane_f32(1.0 / *&v1572, *a13.f32, 1);
            *v622.i32 = (1.0 / *&v1572) * a13.f32[0];
            v639 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
            *&v623 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
            *&v624 = (1.0 / *&a9) * a12.f32[0];
            v640 = v1595.data;
            v641 = v1595.rowBytes;
            v1443 = vdupq_lane_s32(*a14.i8, 0);
            v1452 = vdupq_lane_s32(v622, 0);
            v1423 = vdupq_lane_s32(*a14.i8, 1);
            v1433 = vdupq_lane_s32(v633, 0);
            v1403 = vdupq_laneq_s32(a14, 2);
            v1413 = vdupq_lane_s32(v621, 0);
            v642 = vdupq_laneq_s32(a15, 2);
            v643 = vdupq_lane_s32(*a15.i8, 0);
            v644 = vdupq_lane_s32(*a15.i8, 1);
            v645 = vdupq_n_s32(v616);
            v646 = vdupq_n_s32(v615);
            *v1386 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
            v647 = vdupq_lane_s32(*&a16, 0);
            v648 = *(&a17 + 1);
            v1472 = 1.0 / *&a9;
            v1462 = 1.0 / *&v1572;
            v1541 = v639;
            v1551 = vdupq_n_s32(v619 * (v617 >> 1) - 2);
            v1521 = vdupq_lane_s32(*&a18, 0);
            v1531 = vdupq_lane_s32(*&a17, 1);
            v1501 = vdupq_lane_s32(*&a18, 1);
            v1511 = v642;
            v1491 = vdupq_n_s32(v617 >> 1);
            do
            {
              v649 = &v640[v632 * v641];
              v650 = 0;
              if (v636)
              {
                v1579 = vmlaq_f32(v1443, v1452, v638);
                v1568 = vmlaq_f32(v1423, v1433, v638);
                v1481 = v638;
                v1560 = vmlaq_f32(v1403, v1413, v638);
                v651 = *v1386;
                do
                {
                  v652.i64[0] = 0x3E0000003E000000;
                  v652.i64[1] = 0x3E0000003E000000;
                  v653 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v649)), v652);
                  v654 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v649[1])), v652);
                  v655 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v649[2])), v652);
                  __asm { FMOV            V2.4S, #4.0 }

                  v657 = vaddq_f32(v651, _Q2);
                  _Q2.i64[0] = 0x4100000041000000;
                  _Q2.i64[1] = 0x4100000041000000;
                  v658 = vaddq_f32(v651, _Q2);
                  v659 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v649[3])), v652);
                  __asm { FMOV            V1.4S, #12.0 }

                  v661 = vaddq_f32(v651, _Q1);
                  v662 = vmlaq_f32(v642, vmlaq_n_f32(v1560, v651, v639), v653);
                  v663 = vmlaq_f32(v642, vmlaq_n_f32(v1560, v657, v639), v654);
                  v664 = vmlaq_f32(v642, vmlaq_n_f32(v1560, v658, v639), v655);
                  v665 = vmlaq_f32(v642, vmlaq_n_f32(v1560, v661, v639), v659);
                  v666 = v645;
                  v667 = v646;
                  v668 = v624;
                  v669 = v643;
                  v670 = vmlaq_f32(v643, vmlaq_n_f32(v1579, v651, *&v624), v653);
                  v671 = v623;
                  v672 = vmlaq_n_f32(v1568, v651, *&v623);
                  v673 = v644;
                  v674 = vmlaq_f32(v644, v672, v653);
                  v675 = vmlaq_f32(v643, vmlaq_n_f32(v1579, v657, *&v668), v654);
                  v676 = vmlaq_f32(v644, vmlaq_n_f32(v1568, v657, *&v671), v654);
                  v677 = vandq_s8(vcgezq_f32(v662), vcgtzq_f32(v653));
                  v678 = vmlaq_f32(v643, vmlaq_n_f32(v1579, v658, *&v668), v655);
                  v679 = vandq_s8(vcgezq_f32(v663), vcgtzq_f32(v654));
                  v680 = vmlaq_f32(v673, vmlaq_n_f32(v1568, v658, *&v671), v655);
                  v681 = vandq_s8(vcgezq_f32(v664), vcgtzq_f32(v655));
                  v682 = vmlaq_f32(v643, vmlaq_n_f32(v1579, v661, *&v668), v659);
                  v1589 = vandq_s8(vcgezq_f32(v665), vcgtzq_f32(v659));
                  v683 = vmlaq_f32(v673, vmlaq_n_f32(v1568, v661, *&v671), v659);
                  v684 = vmlaq_f32(v1521, vdivq_f32(v647, v662), v670);
                  v685 = vmlaq_f32(v1501, vdivq_f32(v1531, v662), v674);
                  v686 = vmlaq_f32(v1521, vdivq_f32(v647, v663), v675);
                  v687 = vdivq_f32(v1531, v664);
                  v688 = vmlaq_f32(v1501, vdivq_f32(v1531, v663), v676);
                  v689 = vdivq_f32(v647, v665);
                  v690 = vmlaq_f32(v1521, vdivq_f32(v647, v664), v678);
                  v691 = vdivq_f32(v1531, v665);
                  v692 = v673;
                  v693 = v669;
                  v694 = vdupq_n_s32(0x447A0000u);
                  v695 = vdivq_f32(v694, v662);
                  v696 = vdivq_f32(v694, v663);
                  v697 = vdivq_f32(v694, v664);
                  v698 = vdivq_f32(v694, v665);
                  v699 = vcvtmq_s32_f32(v684);
                  v700 = vcvtmq_s32_f32(v685);
                  v701 = vcvtmq_s32_f32(v686);
                  v702 = vcvtmq_s32_f32(v688);
                  v646 = v667;
                  v703 = vcvtmq_s32_f32(v690);
                  v704 = vmlaq_f32(v1501, v687, v680);
                  v645 = v666;
                  v705 = vmlaq_f32(v1521, v689, v682);
                  v706 = vcvtmq_s32_f32(v704);
                  v707 = vmlaq_f32(v1501, v691, v683);
                  v708 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v667, v700), vcgtq_s32(v666, v699)), vcgezq_s32(vorrq_s8(v700, v699))), v677);
                  v709 = vcvtmq_s32_f32(v705);
                  v710 = vcvtmq_s32_f32(v707);
                  v711 = vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v667, v702), vcgtq_s32(v666, v701)), vcgezq_s32(vorrq_s8(v702, v701))), v679);
                  v712 = vmlaq_s32(v699, v700, v1491);
                  v642 = v1511;
                  v713 = vandq_s8(v695, vcltzq_s32(vshlq_n_s32(v708, 0x1FuLL)));
                  v714 = vshlq_n_s32(v711, 0x1FuLL);
                  v639 = v1541;
                  v715 = vandq_s8(v696, vcltzq_s32(v714));
                  v716 = vandq_s8(v697, vcltzq_s32(vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v667, v706), vcgtq_s32(v666, v703)), vcgezq_s32(vorrq_s8(v706, v703))), v681), 0x1FuLL)));
                  v717 = vminq_s32(vmaxq_s32(v712, 0), v1551);
                  v718 = vshlq_n_s32(vandq_s8(vandq_s8(vandq_s8(vcgtq_s32(v667, v710), vcgtq_s32(v666, v709)), vcgezq_s32(vorrq_s8(v710, v709))), v1589), 0x1FuLL);
                  v719 = vminq_s32(vmaxq_s32(vmlaq_s32(v701, v702, v1491), 0), v1551);
                  v720 = vminq_s32(vmaxq_s32(vmlaq_s32(v703, v706, v1491), 0), v1551);
                  v721 = vmaxq_s32(vmlaq_s32(v709, v710, v1491), 0);
                  v623 = v671;
                  v624 = v668;
                  v643 = v693;
                  v644 = v692;
                  v722 = vminq_s32(v721, v1551);
                  v723 = v717.u32[1];
                  v724 = vandq_s8(v698, vcltzq_s32(v718));
                  *v718.i8 = vcvt_f16_f32(v713);
                  v620[v717.u32[0]] = fmaxl(*v718.i16, v620[v717.u32[0]]);
                  *v717.i8 = vcvt_f16_f32(v715);
                  v620[v719.u32[1]] = fmaxl(*&v717.i16[1], v620[v719.u32[1]]);
                  *v721.i8 = vcvt_f16_f32(v716);
                  v620[v720.u32[2]] = fmaxl(*&v721.i16[2], v620[v720.u32[2]]);
                  *v724.f32 = vcvt_f16_f32(v724);
                  v620[v722.u32[3]] = fmaxl(*&v724.i16[3], v620[v722.u32[3]]);
                  v620[v723] = fmaxl(*&v718.i16[1], v620[v723]);
                  v620[v719.u32[2]] = fmaxl(*&v717.i16[2], v620[v719.u32[2]]);
                  v620[v720.u32[3]] = fmaxl(*&v721.i16[3], v620[v720.u32[3]]);
                  v620[v722.u32[0]] = fmaxl(*v724.i16, v620[v722.u32[0]]);
                  v620[v717.u32[2]] = fmaxl(*&v718.i16[2], v620[v717.u32[2]]);
                  v620[v719.u32[3]] = fmaxl(*&v717.i16[3], v620[v719.u32[3]]);
                  v620[v720.u32[0]] = fmaxl(*v721.i16, v620[v720.u32[0]]);
                  v620[v722.u32[1]] = fmaxl(*&v724.i16[1], v620[v722.u32[1]]);
                  v620[v717.u32[3]] = fmaxl(*&v718.i16[3], v620[v717.u32[3]]);
                  v620[v719.u32[0]] = fmaxl(*v717.i16, v620[v719.u32[0]]);
                  v620[v720.u32[1]] = fmaxl(*&v721.i16[1], v620[v720.u32[1]]);
                  v620[v722.u32[2]] = fmaxl(*&v724.i16[2], v620[v722.u32[2]]);
                  __asm { FMOV            V0.4S, #16.0 }

                  v651 = vaddq_f32(v651, _Q0);
                  v649 += 4;
                  v650 += 16;
                }

                while (v650 < v636);
                v650 = (((v614 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
                v625 = a14;
                v626 = a15;
                v628 = a12;
                v627 = a13;
                v630 = *&a18;
                v629 = *&a11;
                v631 = *&a16;
                v634 = v1472;
                v635 = v1462;
                v637 = 0.5;
                v638 = v1481;
                v648 = *(&a17 + 1);
              }

              if (v650 < v614)
              {
                do
                {
                  v726 = vcvts_n_f32_u32(v649->u16[0], 3uLL);
                  _Q2 = vaddq_f32(v626, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v628, v634 * (((v650 + v637) - v629) * v726)), v627, v635 * (((v632 + v637) - *(&a11 + 1)) * v726)), v625, v726));
                  if (_Q2.f32[2] >= 0.0 && v726 > 0.0)
                  {
                    v728 = (v630 + (_Q2.f32[0] * (v631 / _Q2.f32[2])));
                    if ((v728 & 0x80000000) == 0 && v616 > v728)
                    {
                      _S3 = v648 / _Q2.f32[2];
                      __asm { FMLA            S4, S3, V2.S[1] }

                      v731 = _S4;
                      if ((_S4 & 0x80000000) == 0 && v615 > v731)
                      {
                        _S1 = 1000.0 / _Q2.f32[2];
                        v733 = &v620[(v617 >> 1) * v731];
                        __asm
                        {
                          FCVT            H1, S1
                          FCMP            H2, #0
                        }

                        if (_ZF || _H2 < _H1)
                        {
                          v733[v728] = _H1;
                        }
                      }
                    }
                  }

                  ++v650;
                  v649 = (v649 + 2);
                }

                while (v614 != v650);
              }

              ++v632;
              __asm { FMOV            V0.4S, #1.0 }

              v638 = vaddq_f32(v638, _Q0);
            }

            while (v632 != v613);
          }

          goto LABEL_185;
        }

LABEL_394:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_396;
        }

        return -22950;
      }
    }

    v739 = CVPixelBufferGetHeight(a1);
    v740 = CVPixelBufferGetWidth(a1);
    v741 = CVPixelBufferGetHeight(pixelBuffer);
    v742 = CVPixelBufferGetWidth(pixelBuffer);
    v743 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    memset(&v1595, 0, sizeof(v1595));
    v744 = MEMORY[0x277CBF3A0];
    v745 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1595);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v744, &buf);
    v748 = v743 >> 1;
    v749 = buf.data;
    if (v748 * v741)
    {
      memset_pattern16(buf.data, &unk_2404C86A0, 2 * v748 * v741);
    }

    v750 = buf.height;
    v752 = a14;
    v751 = a15;
    v754 = a12;
    v753 = a13;
    v756 = *&a18;
    v755 = *&a11;
    v757 = *&a16;
    if (v739)
    {
      v758 = 0;
      v759.i32[1] = v1572;
      v760.i32[1] = HIDWORD(a9);
      v761 = 1.0 / *&a9;
      v762 = 1.0 / *&v1572;
      v763 = v740 & 0xFFFFFFFFFFFFFFF0;
      v764 = 0.5;
      *v746.i32 = 0.5 - *(&a11 + 1);
      v765 = vdupq_lane_s32(v746, 0);
      *v746.i32 = vmuls_lane_f32(1.0 / *&v1572, a13, 2);
      *v759.i32 = vmuls_lane_f32(1.0 / *&v1572, *a13.f32, 1);
      *v760.i32 = (1.0 / *&v1572) * a13.f32[0];
      *&v747 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v1522 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      v766 = (1.0 / *&a9) * a12.f32[0];
      v767 = v1595.data;
      v768 = v1595.rowBytes;
      v1444 = vdupq_lane_s32(*a14.i8, 0);
      v1453 = vdupq_lane_s32(v760, 0);
      v1424 = vdupq_lane_s32(*a14.i8, 1);
      v1434 = vdupq_lane_s32(v759, 0);
      v1404 = vdupq_laneq_s32(a14, 2);
      v1414 = vdupq_lane_s32(v746, 0);
      v769 = vdupq_laneq_s32(a15, 2);
      v770 = vdupq_lane_s32(*a15.i8, 0);
      v771 = vdupq_lane_s32(*a15.i8, 1);
      v772 = vdupq_n_s32(v742);
      v773 = vdupq_n_s32(v741);
      *v1387 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v774 = *(&a17 + 1);
      v1473 = 1.0 / *&a9;
      v1463 = 1.0 / *&v1572;
      v1552 = vdupq_n_s32(LODWORD(buf.height) * v748 - 2);
      v1561 = v769;
      v1532 = vdupq_lane_s32(*&a17, 1);
      v1542 = vdupq_lane_s32(*&a16, 0);
      v1502 = vdupq_n_s32(v748);
      v1512 = vdupq_lane_s32(*&a18, 0);
      v1492 = vdupq_lane_s32(*&a18, 1);
      do
      {
        v775 = &v767[v758 * v768];
        v776 = 0;
        if (v763)
        {
          v1590 = vmlaq_f32(v1444, v1453, v765);
          v1580 = vmlaq_f32(v1424, v1434, v765);
          v1482 = v765;
          v1569 = vmlaq_f32(v1404, v1414, v765);
          v777 = *v1387;
          do
          {
            v778.i64[0] = 0x3E0000003E000000;
            v778.i64[1] = 0x3E0000003E000000;
            v779 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v775)), v778);
            v780 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v775[1])), v778);
            v781 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v775[2])), v778);
            __asm { FMOV            V2.4S, #4.0 }

            v783 = vaddq_f32(v777, _Q2);
            _Q2.i64[0] = 0x4100000041000000;
            _Q2.i64[1] = 0x4100000041000000;
            v784 = vaddq_f32(v777, _Q2);
            v785 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v775[3])), v778);
            __asm { FMOV            V0.4S, #12.0 }

            v787 = vaddq_f32(v777, _Q0);
            v788 = vmlaq_f32(v769, vmlaq_n_f32(v1569, v777, *&v747), v779);
            v789 = vmlaq_f32(v769, vmlaq_n_f32(v1569, v783, *&v747), v780);
            v790 = vmlaq_f32(v769, vmlaq_n_f32(v1569, v784, *&v747), v781);
            v791 = vmlaq_f32(v769, vmlaq_n_f32(v1569, v787, *&v747), v785);
            v792 = vmlaq_f32(v770, vmlaq_n_f32(v1590, v777, v766), v779);
            v793 = v747;
            v794 = vmlaq_f32(v771, vmlaq_n_f32(v1580, v777, v1522), v779);
            v795 = vornq_s8(vmvnq_s8(vcgezq_f32(v788)), vcgtzq_f32(v779));
            v796 = vmlaq_f32(v770, vmlaq_n_f32(v1590, v783, v766), v780);
            v797 = vornq_s8(vmvnq_s8(vcgezq_f32(v789)), vcgtzq_f32(v780));
            v798 = vmlaq_f32(v771, vmlaq_n_f32(v1580, v783, v1522), v780);
            v799 = vornq_s8(vmvnq_s8(vcgezq_f32(v790)), vcgtzq_f32(v781));
            v800 = vmlaq_f32(v770, vmlaq_n_f32(v1590, v784, v766), v781);
            v801 = vmlaq_f32(v771, vmlaq_n_f32(v1580, v784, v1522), v781);
            v802 = vornq_s8(vmvnq_s8(vcgezq_f32(v791)), vcgtzq_f32(v785));
            v803 = vmlaq_f32(v770, vmlaq_n_f32(v1590, v787, v766), v785);
            v804 = vmlaq_f32(v771, vmlaq_n_f32(v1580, v787, v1522), v785);
            v805 = vmlaq_f32(v1492, vdivq_f32(v1532, v788), v794);
            v806 = vmlaq_f32(v1512, vdivq_f32(v1542, v789), v796);
            v807 = vmlaq_f32(v1492, vdivq_f32(v1532, v789), v798);
            v808 = v771;
            v809 = vmlaq_f32(v1512, vdivq_f32(v1542, v790), v800);
            v810 = vmlaq_f32(v1492, vdivq_f32(v1532, v790), v801);
            v811 = vdupq_n_s32(0x3A83126Fu);
            v812 = vmulq_f32(v788, v811);
            v813 = vmulq_f32(v789, v811);
            v814 = vmulq_f32(v790, v811);
            v815 = vmulq_f32(v791, v811);
            v816 = vcvtmq_s32_f32(vmlaq_f32(v1512, vdivq_f32(v1542, v788), v792));
            v817 = vcvtmq_s32_f32(v805);
            v818 = vcvtmq_s32_f32(v806);
            v819 = vcvtmq_s32_f32(v807);
            v820 = vmlaq_f32(v1512, vdivq_f32(v1542, v791), v803);
            v821 = vcvtmq_s32_f32(v809);
            v771 = v808;
            v822 = vcvtmq_s32_f32(v810);
            v823 = vcvtmq_s32_f32(v820);
            v824 = vcvtmq_s32_f32(vmlaq_f32(v1492, vdivq_f32(v1532, v791), v804));
            v747 = v793;
            v825 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v824, v773), vcgeq_s32(v823, v772)), vcltzq_s32(vorrq_s8(v824, v823))), v802);
            v826 = vdupq_n_s32(0x477FE000u);
            v827 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v817, v773), vcgeq_s32(v816, v772)), vcltzq_s32(vorrq_s8(v817, v816))), v795), 0x1FuLL)), v826, v812);
            v828 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v819, v773), vcgeq_s32(v818, v772)), vcltzq_s32(vorrq_s8(v819, v818))), v797), 0x1FuLL)), v826, v813);
            v829 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v822, v773), vcgeq_s32(v821, v772)), vcltzq_s32(vorrq_s8(v822, v821))), v799), 0x1FuLL)), v826, v814);
            v830 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v825, 0x1FuLL)), v826, v815);
            v831 = vmlaq_s32(v821, v822, v1502);
            v769 = v1561;
            v832 = vminq_s32(vmaxq_s32(vmlaq_s32(v816, v817, v1502), 0), v1552);
            v833 = vminq_s32(vmaxq_s32(vmlaq_s32(v818, v819, v1502), 0), v1552);
            v834 = vminq_s32(vmaxq_s32(v831, 0), v1552);
            v835 = vminq_s32(vmaxq_s32(vmlaq_s32(v823, v824, v1502), 0), v1552);
            v836 = v832.u32[1];
            *v819.i8 = vcvt_f16_f32(v827);
            v749[v832.u32[0]] = fminl(*v819.i16, v749[v832.u32[0]]);
            *v832.i8 = vcvt_f16_f32(v828);
            v749[v833.u32[1]] = fminl(*&v832.i16[1], v749[v833.u32[1]]);
            *v797.i8 = vcvt_f16_f32(v829);
            v749[v834.u32[2]] = fminl(*&v797.i16[2], v749[v834.u32[2]]);
            *v795.i8 = vcvt_f16_f32(v830);
            v749[v835.u32[3]] = fminl(*&v795.i16[3], v749[v835.u32[3]]);
            v749[v836] = fminl(*&v819.i16[1], v749[v836]);
            v749[v833.u32[2]] = fminl(*&v832.i16[2], v749[v833.u32[2]]);
            v749[v834.u32[3]] = fminl(*&v797.i16[3], v749[v834.u32[3]]);
            v749[v835.u32[0]] = fminl(*v795.i16, v749[v835.u32[0]]);
            v749[v832.u32[2]] = fminl(*&v819.i16[2], v749[v832.u32[2]]);
            v749[v833.u32[3]] = fminl(*&v832.i16[3], v749[v833.u32[3]]);
            v749[v834.u32[0]] = fminl(*v797.i16, v749[v834.u32[0]]);
            v749[v835.u32[1]] = fminl(*&v795.i16[1], v749[v835.u32[1]]);
            v749[v832.u32[3]] = fminl(*&v819.i16[3], v749[v832.u32[3]]);
            v749[v833.u32[0]] = fminl(*v832.i16, v749[v833.u32[0]]);
            v749[v834.u32[1]] = fminl(*&v797.i16[1], v749[v834.u32[1]]);
            v749[v835.u32[2]] = fminl(*&v795.i16[2], v749[v835.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v777 = vaddq_f32(v777, _Q0);
            v775 += 4;
            v776 += 16;
          }

          while (v776 < v763);
          v776 = (((v740 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v752 = a14;
          v751 = a15;
          v754 = a12;
          v753 = a13;
          v756 = *&a18;
          v755 = *&a11;
          v757 = *&a16;
          v761 = v1473;
          v762 = v1463;
          v764 = 0.5;
          v765 = v1482;
          v774 = *(&a17 + 1);
        }

        if (v776 < v740)
        {
          do
          {
            v838 = vcvts_n_f32_u32(v775->u16[0], 3uLL);
            _Q2 = vaddq_f32(v751, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v754, v761 * (((v776 + v764) - v755) * v838)), v753, v762 * (((v758 + v764) - *(&a11 + 1)) * v838)), v752, v838));
            if (_Q2.f32[2] >= 0.0 && v838 > 0.0)
            {
              v840 = (v756 + (_Q2.f32[0] * (v757 / _Q2.f32[2])));
              if ((v840 & 0x80000000) == 0 && v742 > v840)
              {
                _S3 = v774 / _Q2.f32[2];
                __asm { FMLA            S4, S3, V2.S[1] }

                v843 = _S4;
                if ((_S4 & 0x80000000) == 0 && v741 > v843)
                {
                  _S1 = _Q2.f32[2] * 0.001;
                  v845 = &v749[v748 * v843];
                  __asm
                  {
                    FCVT            H1, S1
                    FCMP            H2, #0
                  }

                  if (_ZF || _H2 > _H1)
                  {
                    v845[v840] = _H1;
                  }
                }
              }
            }

            ++v776;
            v775 = (v775 + 2);
          }

          while (v740 != v776);
        }

        ++v758;
        __asm { FMOV            V0.4S, #1.0 }

        v765 = vaddq_f32(v765, _Q0);
      }

      while (v758 != v739);
    }

    v738 = v745;
    if (v750)
    {
      v850 = 0;
      v851 = *&buf.width;
      v852 = buf.width >> 4;
      v853 = buf.data;
      v854 = buf.height;
      if (buf.width >> 4 <= 1)
      {
        v852 = 1;
      }

      if (buf.height <= 1)
      {
        v854 = 1;
      }

      v855 = buf.width & 0xFFFFFFF0;
      do
      {
        v856 = &v853[*(&v851 + 1) * v850];
        v857 = v852;
        if (v851 >= 0x10)
        {
          do
          {
            v858 = v856[2];
            v859 = v856[3];
            v860 = vbic_s8(v856[1], vceq_f16(v856[1], 0x8400840084008400));
            *v856 = vbic_s8(*v856, vceq_f16(*v856, 0x8400840084008400));
            v856[1] = v860;
            v856[2] = vbic_s8(v858, vceq_f16(v858, 0x8400840084008400));
            v856[3] = vbic_s8(v859, vceq_f16(v859, 0x8400840084008400));
            v856 += 4;
            --v857;
          }

          while (v857);
        }

        v861 = v851 & 0xFFFFFFF0;
        if (v855 != v851)
        {
          do
          {
            if (*v856->i16 == COERCE_SHORT_FLOAT(31743))
            {
              v856->i16[0] = 0;
            }

            ++v861;
            v856 = (v856 + 2);
          }

          while (v861 < v851);
        }

        ++v850;
      }

      while (v850 != v854);
    }

    goto LABEL_392;
  }

  if (PixelFormatType <= 1717855599)
  {
    if (PixelFormatType == 825437747)
    {
      v1369 = CVPixelBufferGetHeight(a1);
      v998 = CVPixelBufferGetWidth(a1);
      v999 = CVPixelBufferGetHeight(pixelBuffer);
      v1000 = CVPixelBufferGetWidth(pixelBuffer);
      v1001 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      CVPixelBufferLockBaseAddress(a2, 0);
      memset(&v1595, 0, sizeof(v1595));
      v1002 = MEMORY[0x277CBF3A0];
      v1328 = a1;
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1595);
      memset(&buf, 0, sizeof(buf));
      PixelBufferUtils::asVImageBuffer(pixelBuffer, *v1002, &buf);
      PixelBufferUtils::asVImageBuffer(v1384, *v1002, &v1594);
      v1005 = v1001 >> 1;
      v1364 = v1594.data;
      v1360 = v1594.rowBytes;
      v1006 = buf.data;
      if (v1005 * v999)
      {
        memset_pattern16(buf.data, &unk_2404C86B0, 2 * v1005 * v999);
      }

      v1007 = buf.height;
      if (v1369)
      {
        v1008 = 0;
        v1009.i32[1] = v1572;
        v1010.i32[1] = HIDWORD(a9);
        v1011 = *&a11;
        v1012 = 1.0 / *&a9;
        v1013 = 1.0 / *&v1572;
        v1014 = v998 & 0xFFFFFFFFFFFFFFF0;
        v1015 = 0.5;
        *v1003.i32 = 0.5 - *(&a11 + 1);
        v1016 = vdupq_lane_s32(v1003, 0);
        v1018 = a13;
        v1017 = a14;
        *v1003.i32 = vmuls_lane_f32(1.0 / *&v1572, a13, 2);
        *v1009.i32 = vmuls_lane_f32(1.0 / *&v1572, *a13.f32, 1);
        *v1010.i32 = (1.0 / *&v1572) * a13.f32[0];
        v1341 = vdupq_lane_s32(*a14.i8, 0);
        v1343 = vdupq_lane_s32(v1010, 0);
        v1337 = vdupq_lane_s32(*a14.i8, 1);
        v1339 = vdupq_lane_s32(v1009, 0);
        v1334 = vdupq_laneq_s32(a14, 2);
        v1335 = vdupq_lane_s32(v1003, 0);
        v1019 = a12;
        v1020 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
        *&v1004 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
        v1021 = (1.0 / *&a9) * a12.f32[0];
        v1022 = a15;
        v1023 = __PAIR64__(DWORD1(a17), a16);
        v1024 = vdupq_laneq_s32(a15, 2);
        v1025 = vdupq_lane_s32(*a15.i8, 0);
        v1026 = vdupq_lane_s32(*a15.i8, 1);
        v1027 = vdupq_n_s32(v999);
        v1333 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
        v1028 = v1000;
        v1029 = v999;
        v1330 = (((v998 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
        v1030 = a18;
        v1031 = vdupq_lane_s32(*&a18, 1);
        v1357 = v1595.data;
        v1353 = v1595.rowBytes;
        v1032.i64[0] = 0x3E0000003E000000;
        v1032.i64[1] = 0x3E0000003E000000;
        v1033.i64[0] = 0x4100000041000000;
        v1033.i64[1] = 0x4100000041000000;
        v1406 = vdupq_lane_s32(*&a17, 1);
        v1350 = v998;
        v1348 = v1005;
        v1346 = 1.0 / *&a9;
        v1484 = v1024;
        v1494 = v1020;
        v1465 = vdupq_n_s32(LODWORD(buf.height) * v1005 - 2);
        v1475 = v1021;
        v1331 = v999;
        v1446 = v1025;
        v1455 = vdupq_n_s32(v1005);
        v1426 = vdupq_n_s32(v1000);
        v1436 = vdupq_lane_s32(*&a18, 0);
        v1416 = vdupq_lane_s32(*&a16, 0);
        do
        {
          v1034 = &v1357[v1353 * v1008];
          v1035 = &v1364[v1008 * v1360];
          if (v1014)
          {
            v1382 = v1008;
            v1036 = 0;
            v1524 = vmlaq_f32(v1341, v1343, v1016);
            v1514 = vmlaq_f32(v1337, v1339, v1016);
            v1374 = v1016;
            v1504 = vmlaq_f32(v1334, v1335, v1016);
            v1037 = v1333;
            do
            {
              v1592 = v1036;
              v1038 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v1034)), v1032);
              v1039 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v1034[1])), v1032);
              v1040 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v1034[2])), v1032);
              __asm { FMOV            V0.4S, #4.0 }

              v1042 = vaddq_f32(v1037, _Q0);
              v1043 = vaddq_f32(v1037, v1033);
              __asm { FMOV            V0.4S, #12.0 }

              v1045.i64[0] = 0x4100000041000000;
              v1045.i64[1] = 0x4100000041000000;
              v1046 = vaddq_f32(v1037, _Q0);
              v1047 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v1034[3])), v1032);
              v1048 = vmlaq_f32(v1024, vmlaq_n_f32(v1504, v1037, v1020), v1038);
              v1049 = vmlaq_f32(v1024, vmlaq_n_f32(v1504, v1042, v1020), v1039);
              v1050 = vmlaq_f32(v1024, vmlaq_n_f32(v1504, v1043, v1020), v1040);
              v1051 = vmlaq_f32(v1024, vmlaq_n_f32(v1504, v1046, v1020), v1047);
              v1052 = v1027;
              v1053 = vmlaq_f32(v1026, vmlaq_n_f32(v1514, v1043, *&v1004), v1040);
              v1054 = vmlaq_f32(v1025, vmlaq_n_f32(v1524, v1046, v1021), v1047);
              v1055 = vornq_s8(vmvnq_s8(vcgezq_f32(v1048)), vcgtzq_f32(v1038));
              v1056 = vmlaq_f32(v1026, vmlaq_n_f32(v1514, v1046, *&v1004), v1047);
              v1057 = vornq_s8(vmvnq_s8(vcgezq_f32(v1049)), vcgtzq_f32(v1039));
              v1058 = vmlaq_f32(v1436, vdivq_f32(v1416, v1048), vmlaq_f32(v1025, vmlaq_n_f32(v1524, v1037, v1021), v1038));
              v1059 = vmlaq_f32(v1031, vdivq_f32(v1406, v1048), vmlaq_f32(v1026, vmlaq_n_f32(v1514, v1037, *&v1004), v1038));
              v1060 = vmlaq_f32(v1436, vdivq_f32(v1416, v1049), vmlaq_f32(v1025, vmlaq_n_f32(v1524, v1042, v1021), v1039));
              v1061 = vornq_s8(vmvnq_s8(vcgezq_f32(v1050)), vcgtzq_f32(v1040));
              v1062 = vmlaq_f32(v1031, vdivq_f32(v1406, v1049), vmlaq_f32(v1026, vmlaq_n_f32(v1514, v1042, *&v1004), v1039));
              v1063 = vmlaq_f32(v1436, vdivq_f32(v1416, v1050), vmlaq_f32(v1025, vmlaq_n_f32(v1524, v1043, v1021), v1040));
              v1064 = v1026;
              v1065 = v1004;
              v1066 = vdivq_f32(v1416, v1051);
              v1067 = vdivq_f32(v1406, v1051);
              v1068 = vmulq_f32(v1048, v1045);
              v1069 = vmulq_f32(v1049, v1045);
              v1070 = vornq_s8(vmvnq_s8(vcgezq_f32(v1051)), vcgtzq_f32(v1047));
              v1071 = vmulq_f32(v1050, v1045);
              v1072 = vmulq_f32(v1051, v1045);
              v1073 = vcvtmq_s32_f32(v1058);
              v1074 = vcvtmq_s32_f32(v1059);
              v1075 = vcvtmq_s32_f32(v1060);
              v1076 = vcvtmq_s32_f32(v1062);
              v1077 = vcvtmq_s32_f32(v1063);
              v1078 = vmlaq_f32(v1436, v1066, v1054);
              v1027 = v1052;
              v1004 = v1065;
              v1026 = v1064;
              v1079 = vcvtmq_s32_f32(vmlaq_f32(v1031, vdivq_f32(v1406, v1050), v1053));
              v1080 = vcvtmq_s32_f32(v1078);
              v1081 = vcvtmq_s32_f32(vmlaq_f32(v1031, v1067, v1056));
              v1082 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1074, v1052), vcgeq_s32(v1073, v1426)), vcltzq_s32(vorrq_s8(v1074, v1073))), v1055);
              v1083 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1076, v1052), vcgeq_s32(v1075, v1426)), vcltzq_s32(vorrq_s8(v1076, v1075))), v1057);
              v1084 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1079, v1052), vcgeq_s32(v1077, v1426)), vcltzq_s32(vorrq_s8(v1079, v1077))), v1061);
              v1085 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v1081, v1052), vcgeq_s32(v1080, v1426)), vcltzq_s32(vorrq_s8(v1081, v1080))), v1070);
              v1086 = vdupq_n_s32(0x46FFFE00u);
              v1087 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1082, 0x1FuLL)), v1086, v1068);
              v1088 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1083, 0x1FuLL)), v1086, v1069);
              v1089 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1084, 0x1FuLL)), v1086, v1071);
              v1090 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v1085, 0x1FuLL)), v1086, v1072);
              v1032.i64[0] = 0x3E0000003E000000;
              v1032.i64[1] = 0x3E0000003E000000;
              *v1086.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1082), 0xFuLL));
              *v1067.f32 = vorr_s8(vmovn_s32(v1073), *v1086.i8);
              *v1070.i8 = vorr_s8(vmovn_s32(v1074), *v1086.i8);
              *v1082.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1083), 0xFuLL));
              v1091 = vorr_s8(vmovn_s32(v1075), *v1082.i8);
              *v1086.i8 = vorr_s8(vmovn_s32(v1076), *v1082.i8);
              v1092 = v1035;
              vst2_s16(v1092, v1067);
              v1092 += 8;
              *v1084.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1084), 0xFuLL));
              *v1067.f32 = vorr_s8(vmovn_s32(v1077), *v1084.i8);
              *v1070.i8 = vorr_s8(vmovn_s32(v1079), *v1084.i8);
              v1093 = v1035 + 16;
              vst2_s16(v1093, v1067);
              v1025 = v1446;
              v1021 = v1475;
              vst2_s16(v1092, *(&v1086 - 8));
              *v1084.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v1085), 0xFuLL));
              v1085.val[0] = vorr_s8(vmovn_s32(v1080), *v1084.i8);
              v1094 = vorr_s8(vmovn_s32(v1081), *v1084.i8);
              v1095 = v1035 + 24;
              vst2_s16(v1095, v1085);
              v1024 = v1484;
              v1020 = v1494;
              v1096 = vmlaq_s32(v1077, v1079, v1455);
              v1097 = vminq_s32(vmaxq_s32(vmlaq_s32(v1073, v1074, v1455), 0), v1465);
              v1582 = v1097.u32[1];
              v1098 = v1097.i64[1];
              v1099 = v1097.i32[0];
              v1100 = vcvtq_s32_f32(v1087);
              v1101 = v1100.i32[1];
              v1102 = v1100.i32[2];
              v1554 = v1100.i32[3];
              v1103 = v1100.i32[0];
              v1104 = vminq_s32(vmaxq_s32(vmlaq_s32(v1080, v1081, v1455), 0), v1465);
              v1105 = vcvtq_s32_f32(v1090);
              v1106 = v1104.u32[3];
              v1544 = v1104.u32[1];
              v1534 = v1104.u32[2];
              v1107 = v1104.i32[0];
              v1108 = vminq_s32(vmaxq_s32(v1096, 0), v1465);
              v1109 = v1108.u32[2];
              v1110 = v1108.u32[3];
              v1111 = v1108.u32[1];
              v1112 = v1108.i32[0];
              v1113 = vcvtq_s32_f32(v1089);
              v1114 = v1113.i32[2];
              v1115 = v1113.i32[3];
              v1116 = v1113.i32[1];
              v1117 = v1113.i32[0];
              v1118 = vminq_s32(vmaxq_s32(vmlaq_s32(v1075, v1076, v1455), 0), v1465);
              v1119 = v1006[v1099];
              v1120 = vcvtq_s32_f32(v1088);
              v1033.i64[0] = 0x4100000041000000;
              v1033.i64[1] = 0x4100000041000000;
              if (v1103 < v1119)
              {
                LOWORD(v1119) = v1103;
              }

              v1121 = v1118.u32[1];
              v1006[v1099] = v1119;
              v1122 = v1118.u32[2];
              v1123 = v1118.u32[3];
              v1124 = v1034;
              v1125 = v1120.i16[2];
              v1126 = v1118.i32[0];
              __asm { FMOV            V0.4S, #16.0 }

              v1037 = vaddq_f32(v1037, _Q0);
              if (v1120.i32[1] >= v1006[v1121])
              {
                v1125 = v1006[v1121];
              }

              v1006[v1121] = v1125;
              v1128 = v1124;
              if (v1114 >= v1006[v1109])
              {
                LOWORD(v1114) = v1006[v1109];
              }

              v1006[v1109] = v1114;
              v1129 = v1006[v1106];
              if (v1105.i32[3] < v1129)
              {
                LOWORD(v1129) = v1105.i16[6];
              }

              v1006[v1106] = v1129;
              v1130 = v1006[v1582];
              if (v1101 < v1130)
              {
                LOWORD(v1130) = v1101;
              }

              v1006[v1582] = v1130;
              v1131 = v1006[v1122];
              if (v1120.i32[2] < v1131)
              {
                LOWORD(v1131) = v1120.i16[4];
              }

              v1006[v1122] = v1131;
              v1132 = v1006[v1110];
              if (v1115 < v1132)
              {
                LOWORD(v1132) = v1115;
              }

              v1006[v1110] = v1132;
              v1133 = v1006[v1107];
              if (v1105.i32[0] < v1133)
              {
                LOWORD(v1133) = v1105.i16[0];
              }

              v1006[v1107] = v1133;
              v1134 = v1006[v1098];
              if (v1102 < v1134)
              {
                LOWORD(v1134) = v1102;
              }

              v1006[v1098] = v1134;
              v1135 = v1006[v1123];
              if (v1120.i32[3] < v1135)
              {
                LOWORD(v1135) = v1120.i16[6];
              }

              v1006[v1123] = v1135;
              v1136 = v1006[v1112];
              if (v1117 < v1136)
              {
                LOWORD(v1136) = v1117;
              }

              v1006[v1112] = v1136;
              v1137 = v1006[v1544];
              if (v1105.i32[1] < v1137)
              {
                LOWORD(v1137) = v1105.i16[2];
              }

              v1006[v1544] = v1137;
              v1138 = v1006[HIDWORD(v1098)];
              if (v1554 < v1138)
              {
                LOWORD(v1138) = v1554;
              }

              v1006[HIDWORD(v1098)] = v1138;
              v1139 = v1006[v1126];
              if (v1120.i32[0] < v1139)
              {
                LOWORD(v1139) = v1120.i16[0];
              }

              v1006[v1126] = v1139;
              v1140 = v1006[v1111];
              if (v1116 < v1140)
              {
                LOWORD(v1140) = v1116;
              }

              v1006[v1111] = v1140;
              v1141 = v1006[v1534];
              if (v1105.i32[2] < v1141)
              {
                LOWORD(v1141) = v1105.i16[4];
              }

              v1006[v1534] = v1141;
              v1034 = v1128 + 4;
              v1035 += 32;
              v1036 = v1592 + 16;
            }

            while (v1592 + 16 < v1014);
            v1142 = v1330;
            v1017 = a14;
            v1022 = a15;
            v1019 = a12;
            v1018 = a13;
            v1030 = a18;
            v1011 = *&a11;
            v1023 = __PAIR64__(DWORD1(a17), a16);
            v998 = v1350;
            v1005 = v1348;
            v1008 = v1382;
            v1012 = v1346;
            v1013 = 1.0 / *&v1572;
            v1015 = 0.5;
            v1016 = v1374;
            v1028 = v1000;
            v1029 = v1331;
          }

          else
          {
            v1142 = 0;
          }

          if (v1142 < v998)
          {
            do
            {
              v1143 = vcvts_n_f32_u32(v1034->u16[0], 3uLL);
              v1144 = vaddq_f32(v1022, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v1019, v1012 * (((v1142 + v1015) - v1011) * v1143)), v1018, v1013 * (((v1008 + v1015) - *(&a11 + 1)) * v1143)), v1017, v1143));
              v1145 = 0xFFFF0000FFFFLL;
              if (*&v1144.i32[2] >= 0.0 && v1143 > 0.0)
              {
                v1146 = vcvt_s32_f32(vmla_f32(v1030, vdiv_f32(v1023, vdup_laneq_s32(v1144, 2)), *v1144.i8));
                if (v1146.i32[0] < 0)
                {
                  v1033.i64[0] = 0x4100000041000000;
                  v1033.i64[1] = 0x4100000041000000;
                }

                else
                {
                  v1033.i64[0] = 0x4100000041000000;
                  v1033.i64[1] = 0x4100000041000000;
                  if (v1028 > v1146.i32[0] && (v1146.i32[1] & 0x80000000) == 0 && v1029 > v1146.i32[1])
                  {
                    v1147 = vcvts_n_s32_f32(*&v1144.i32[2], 3uLL);
                    v1148 = &v1006[v1005 * v1146.i32[1]];
                    if ((v1148[v1146.u32[0]] - 1) >= v1147)
                    {
                      v1148[v1146.u32[0]] = v1147;
                    }

                    v1145 = v1146;
                  }
                }
              }

              *v1035 = v1145;
              v1035[1] = WORD2(v1145);
              ++v1142;
              v1034 = (v1034 + 2);
              v1035 += 2;
            }

            while (v998 != v1142);
          }

          ++v1008;
          __asm { FMOV            V0.4S, #1.0 }

          v1016 = vaddq_f32(v1016, _Q0);
        }

        while (v1008 != v1369);
        v1007 = buf.height;
      }

      v349 = v1328;
      if (v1007)
      {
        v1150 = 0;
        v1151 = *&buf.width;
        v1152 = buf.data;
        v1153 = buf.width >> 4;
        if (buf.width >> 4 <= 1)
        {
          v1153 = 1;
        }

        v1154 = buf.width & 0xFFFFFFF0;
        do
        {
          v1155 = &v1152[*(&v1151 + 1) * v1150];
          v1156 = v1153;
          if (v1151 >= 0x10)
          {
            do
            {
              v1157 = v1155[2];
              v1158 = v1155[3];
              v1159 = vbic_s8(v1155[1], vceq_s16(v1155[1], 0x8000800080008000));
              *v1155 = vbic_s8(*v1155, vceq_s16(*v1155, 0x8000800080008000));
              v1155[1] = v1159;
              v1155[2] = vbic_s8(v1157, vceq_s16(v1157, 0x8000800080008000));
              v1155[3] = vbic_s8(v1158, vceq_s16(v1158, 0x8000800080008000));
              v1155 += 4;
              --v1156;
            }

            while (v1156);
          }

          v1160 = v1151 & 0xFFFFFFF0;
          if (v1154 != v1151)
          {
            do
            {
              if (v1155->i16[0] == 0x7FFF)
              {
                v1155->i16[0] = 0;
              }

              ++v1160;
              v1155 = (v1155 + 2);
            }

            while (v1160 < v1151);
          }

          ++v1150;
        }

        while (v1150 != v1007);
      }

      goto LABEL_324;
    }

    if (PixelFormatType == 1278226534)
    {
      goto LABEL_126;
    }

    if (PixelFormatType != 1278226536)
    {
      goto LABEL_325;
    }

    goto LABEL_90;
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
        memset(&v1595, 0, sizeof(v1595));
        v26 = MEMORY[0x277CBF3A0];
        v27 = a1;
        PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1595);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(pixelBuffer, *v26, &buf);
        PixelBufferUtils::asVImageBuffer(v1384, *v26, &v1594);
        v28 = v1594.data;
        v29 = v1594.rowBytes;
        v31 = buf.data;
        v30 = buf.height;
        bzero(buf.data, buf.height * buf.rowBytes);
        v36 = a14;
        v35 = a15;
        v38 = a12;
        v37 = a13;
        v40 = a18;
        v39 = *&a11;
        v41.i32[0] = a16;
        if (v21)
        {
          v42 = 0;
          v43.i32[1] = v1572;
          v44 = 1.0 / *&a9;
          v45 = 1.0 / *&v1572;
          v46 = v22 & 0xFFFFFFFFFFFFFFF0;
          v47 = 0.5;
          *v32.i32 = 0.5 - *(&a11 + 1);
          v48 = vdupq_lane_s32(v32, 0);
          *v32.i32 = vmuls_lane_f32(1.0 / *&v1572, a13, 2);
          *v43.i32 = vmuls_lane_f32(1.0 / *&v1572, *a13.f32, 1);
          *v33.i32 = (1.0 / *&v1572) * a13.f32[0];
          v1371 = vdupq_lane_s32(*a14.i8, 0);
          v1376 = vdupq_lane_s32(v33, 0);
          v1362 = vdupq_lane_s32(*a14.i8, 1);
          v1366 = vdupq_lane_s32(v43, 0);
          v1355 = vdupq_laneq_s32(a14, 2);
          v1358 = vdupq_lane_s32(v32, 0);
          v49 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
          v50 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
          *&v34 = (1.0 / *&a9) * a12.f32[0];
          v51 = vdupq_laneq_s32(a15, 2);
          v52 = vdupq_lane_s32(*a15.i8, 0);
          v1477 = vdupq_lane_s32(*a15.i8, 1);
          v1352 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
          v41.i32[1] = DWORD1(a17);
          v53 = v1595.data;
          v54 = v1595.rowBytes;
          v55.i64[0] = 0x3E0000003E000000;
          v55.i64[1] = 0x3E0000003E000000;
          v56.i64[0] = 0x4100000041000000;
          v56.i64[1] = 0x4100000041000000;
          v1396 = v41;
          v1408 = 1.0 / *&a9;
          v1398 = 1.0 / *&v1572;
          v1536 = v49;
          v1546 = v51;
          v1516 = v50;
          v1526 = v52;
          v1496 = vdupq_n_s32(v30 * (v25 >> 2) - 4);
          v1506 = vdupq_n_s32(v25 >> 2);
          v1486 = vdupq_lane_s32(*&a16, 0);
          v1457 = vdupq_n_s32(v23);
          v1467 = vdupq_n_s32(v24);
          v1438 = vdupq_lane_s32(*&a17, 1);
          v1447 = vdupq_lane_s32(*&a18, 0);
          v1428 = vdupq_lane_s32(*&a18, 1);
          do
          {
            v57 = &v53[v54 * v42];
            v58 = &v28[v42 * v29];
            v59 = 0;
            if (v46)
            {
              v1574 = vmlaq_f32(v1371, v1376, v48);
              v1563 = vmlaq_f32(v1362, v1366, v48);
              v1418 = v48;
              v1555 = vmlaq_f32(v1355, v1358, v48);
              v60 = v1352;
              do
              {
                v1584 = v60;
                v61 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v57)), v55);
                v62 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v57[1])), v55);
                v63 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v57[2])), v55);
                __asm { FMOV            V1.4S, #4.0 }

                v68 = vaddq_f32(v60, _Q1);
                v69 = vaddq_f32(v60, v56);
                __asm { FMOV            V1.4S, #12.0 }

                v71 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v57[3])), v55);
                v72 = vaddq_f32(v60, _Q1);
                v73 = vmlaq_f32(v51, vmlaq_n_f32(v1555, v60, v49), v61);
                v74 = vmlaq_f32(v51, vmlaq_n_f32(v1555, v68, v49), v62);
                v75 = vmlaq_f32(v51, vmlaq_n_f32(v1555, v69, v49), v63);
                v76 = vmlaq_f32(v51, vmlaq_n_f32(v1555, v72, v49), v71);
                v77 = vcgtzq_f32(v62);
                v78 = v34;
                v79 = vmlaq_f32(v52, vmlaq_n_f32(v1574, v60, *&v34), v61);
                v80 = vmlaq_f32(v1477, vmlaq_n_f32(v1563, v60, v50), v61);
                v81 = vmlaq_f32(v52, vmlaq_n_f32(v1574, v68, *&v78), v62);
                v82 = vmlaq_f32(v1477, vmlaq_n_f32(v1563, v68, v50), v62);
                v83 = vornq_s8(vmvnq_s8(vcgezq_f32(v73)), vcgtzq_f32(v61));
                v84 = vmlaq_f32(v52, vmlaq_n_f32(v1574, v69, *&v78), v63);
                v85 = vmlaq_f32(v52, vmlaq_n_f32(v1574, v72, *&v78), v71);
                v86 = vmlaq_f32(v1477, vmlaq_n_f32(v1563, v72, v50), v71);
                v87 = vornq_s8(vmvnq_s8(vcgezq_f32(v76)), vcgtzq_f32(v71));
                v88 = vcvtmq_s32_f32(vmlaq_f32(v1447, vdivq_f32(v1486, v73), v79));
                v89 = vcvtmq_s32_f32(vmlaq_f32(v1428, vdivq_f32(v1438, v73), v80));
                v90 = vcvtmq_s32_f32(vmlaq_f32(v1447, vdivq_f32(v1486, v74), v81));
                v91 = vcvtmq_s32_f32(vmlaq_f32(v1428, vdivq_f32(v1438, v74), v82));
                v92 = vcvtmq_s32_f32(vmlaq_f32(v1447, vdivq_f32(v1486, v75), v84));
                v93 = vcvtmq_s32_f32(vmlaq_f32(v1428, vdivq_f32(v1438, v75), vmlaq_f32(v1477, vmlaq_n_f32(v1563, v69, v50), v63)));
                v94 = vcvtmq_s32_f32(vmlaq_f32(v1447, vdivq_f32(v1486, v76), v85));
                v95 = vcvtmq_s32_f32(vmlaq_f32(v1428, vdivq_f32(v1438, v76), v86));
                v96 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v89, v1457), vcgeq_s32(v88, v1467)), vcltzq_s32(vorrq_s8(v89, v88))), v83);
                v97 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v91, v1457), vcgeq_s32(v90, v1467)), vcltzq_s32(vorrq_s8(v91, v90))), vornq_s8(vmvnq_s8(vcgezq_f32(v74)), v77));
                v98 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v93, v1457), vcgeq_s32(v92, v1467)), vcltzq_s32(vorrq_s8(v93, v92))), vornq_s8(vmvnq_s8(vcgezq_f32(v75)), vcgtzq_f32(v63)));
                v99 = vcltz_s16(vshl_n_s16(vmovn_s32(v96), 0xFuLL));
                *v69.f32 = vorr_s8(vmovn_s32(v88), v99);
                *v63.f32 = vorr_s8(vmovn_s32(v89), v99);
                v100 = vcltz_s16(vshl_n_s16(vmovn_s32(v97), 0xFuLL));
                v1599.val[0] = vorr_s8(vmovn_s32(v90), v100);
                v1599.val[1] = vorr_s8(vmovn_s32(v91), v100);
                *v77.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v98), 0xFuLL));
                v1598.val[0] = vorr_s8(vmovn_s32(v92), *v77.i8);
                v1598.val[1] = vorr_s8(vmovn_s32(v93), *v77.i8);
                v101 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v95, v1457), vcgeq_s32(v94, v1467)), vcltzq_s32(vorrq_s8(v95, v94))), v87);
                v102 = v58;
                vst2_s16(v102, *(&v63 - 8));
                v102 += 8;
                v103 = v58 + 16;
                vst2_s16(v103, v1598);
                v34 = v78;
                v50 = v1516;
                v52 = v1526;
                v104 = vcltz_s16(vshl_n_s16(vmovn_s32(v101), 0xFuLL));
                v105 = vorr_s8(vmovn_s32(v94), v104);
                *v69.f32 = vorr_s8(vmovn_s32(v95), v104);
                vst2_s16(v102, v1599);
                v49 = v1536;
                v51 = v1546;
                v106 = v58 + 24;
                vst2_s16(v106, *(&v69 - 8));
                v107 = vdupq_n_s32(0x447A0000u);
                v108 = vdivq_f32(v107, v73);
                v109 = vdivq_f32(v107, v74);
                v110 = vdivq_f32(v107, v76);
                v111 = vmlaq_s32(v90, v91, v1506);
                v55.i64[0] = 0x3E0000003E000000;
                v55.i64[1] = 0x3E0000003E000000;
                v112 = vminq_s32(vmaxq_s32(vmlaq_s32(v88, v89, v1506), 0), v1496);
                v113 = v112.u32[1];
                LODWORD(v106) = v112.i32[2];
                LODWORD(v103) = v112.i32[3];
                v114 = v112.i32[0];
                v115 = vandq_s8(v108, vcgezq_s32(vshlq_n_s32(v96, 0x1FuLL)));
                v116 = vminq_s32(vmaxq_s32(v111, 0), v1496);
                v31[v114] = fmaxf(*v115.i32, v31[v114]);
                v117 = vandq_s8(v109, vcgezq_s32(vshlq_n_s32(v97, 0x1FuLL)));
                v31[v116.u32[1]] = fmaxf(*&v117.i32[1], v31[v116.u32[1]]);
                v118 = vminq_s32(vmaxq_s32(vmlaq_s32(v92, v93, v1506), 0), v1496);
                v119 = vandq_s8(vdivq_f32(v107, v75), vcgezq_s32(vshlq_n_s32(v98, 0x1FuLL)));
                v120 = vminq_s32(vmaxq_s32(vmlaq_s32(v94, v95, v1506), 0), v1496);
                v31[v118.u32[2]] = fmaxf(*&v119.i32[2], v31[v118.u32[2]]);
                v121 = vandq_s8(v110, vcgezq_s32(vshlq_n_s32(v101, 0x1FuLL)));
                v31[v120.u32[3]] = fmaxf(*&v121.i32[3], v31[v120.u32[3]]);
                v31[v113] = fmaxf(*&v115.i32[1], v31[v113]);
                v31[v116.u32[2]] = fmaxf(*&v117.i32[2], v31[v116.u32[2]]);
                v31[v118.u32[3]] = fmaxf(*&v119.i32[3], v31[v118.u32[3]]);
                v31[v120.u32[0]] = fmaxf(*v121.i32, v31[v120.u32[0]]);
                v31[v106] = fmaxf(*&v115.i32[2], v31[v106]);
                v31[v116.u32[3]] = fmaxf(*&v117.i32[3], v31[v116.u32[3]]);
                v31[v118.u32[0]] = fmaxf(*v119.i32, v31[v118.u32[0]]);
                v31[v120.u32[1]] = fmaxf(*&v121.i32[1], v31[v120.u32[1]]);
                v56.i64[0] = 0x4100000041000000;
                v56.i64[1] = 0x4100000041000000;
                v31[v103] = fmaxf(*&v115.i32[3], v31[v103]);
                v31[v116.u32[0]] = fmaxf(*v117.i32, v31[v116.u32[0]]);
                v31[v118.u32[1]] = fmaxf(*&v119.i32[1], v31[v118.u32[1]]);
                v31[v120.u32[2]] = fmaxf(*&v121.i32[2], v31[v120.u32[2]]);
                __asm { FMOV            V0.4S, #16.0 }

                v60 = vaddq_f32(v1584, _Q0);
                v57 += 4;
                v58 += 32;
                v59 += 16;
              }

              while (v59 < v46);
              v59 = (((v22 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
              v36 = a14;
              v35 = a15;
              v38 = a12;
              v37 = a13;
              v40 = a18;
              v39 = *&a11;
              v41 = v1396;
              v44 = v1408;
              v45 = v1398;
              v47 = 0.5;
              v48 = v1418;
            }

            if (v59 < v22)
            {
              do
              {
                v123 = vcvts_n_f32_u32(v57->u16[0], 3uLL);
                v124 = vaddq_f32(v35, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v38, v44 * (((v59 + v47) - v39) * v123)), v37, v45 * (((v42 + v47) - *(&a11 + 1)) * v123)), v36, v123));
                v125 = 0xFFFF0000FFFFLL;
                if (*&v124.i32[2] >= 0.0 && v123 > 0.0)
                {
                  v126 = vcvt_s32_f32(vmla_f32(v40, vdiv_f32(v41, vdup_laneq_s32(v124, 2)), *v124.i8));
                  if (v126.i32[0] < 0)
                  {
                    v56.i64[0] = 0x4100000041000000;
                    v56.i64[1] = 0x4100000041000000;
                  }

                  else
                  {
                    v56.i64[0] = 0x4100000041000000;
                    v56.i64[1] = 0x4100000041000000;
                    if (v24 > v126.i32[0] && (v126.i32[1] & 0x80000000) == 0 && v23 > v126.i32[1])
                    {
                      v127 = 1000.0 / *&v124.i32[2];
                      v128 = &v31[(v25 >> 2) * v126.i32[1]];
                      v129 = v128[v126.u32[0]];
                      if (v129 == 0.0 || v129 < v127)
                      {
                        v128[v126.u32[0]] = v127;
                      }

                      v125 = v126;
                    }
                  }
                }

                *v58 = v125;
                v58[1] = WORD2(v125);
                ++v59;
                v57 = (v57 + 2);
                v58 += 2;
              }

              while (v22 != v59);
            }

            ++v42;
            __asm { FMOV            V0.4S, #1.0 }

            v48 = vaddq_f32(v48, _Q0);
          }

          while (v42 != v21);
        }

LABEL_85:
        v349 = v27;
LABEL_324:
        CVPixelBufferUnlockBaseAddress(v349, 1uLL);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        v1161 = v1384;
LABEL_393:
        CVPixelBufferUnlockBaseAddress(v1161, 0);
        return 0;
      }

      goto LABEL_325;
    }

LABEL_126:
    v487 = CVPixelBufferGetHeight(a1);
    v488 = CVPixelBufferGetWidth(a1);
    v489 = CVPixelBufferGetHeight(pixelBuffer);
    v490 = CVPixelBufferGetWidth(pixelBuffer);
    v491 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&v1595, 0, sizeof(v1595));
    v492 = MEMORY[0x277CBF3A0];
    v493 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1595);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v492, &buf);
    PixelBufferUtils::asVImageBuffer(v1384, *v492, &v1594);
    v495 = v491 >> 2;
    v496 = v1594.data;
    v497 = v1594.rowBytes;
    v498 = buf.data;
    if (v495 * v489)
    {
      memset_pattern16(buf.data, &unk_2404C8690, 4 * v495 * v489);
    }

    v499 = buf.height;
    if (v487)
    {
      v500 = 0;
      v501.i32[1] = v1572;
      v502.i32[1] = HIDWORD(a9);
      v503 = *&a11;
      v504 = 1.0 / *&a9;
      v505 = 1.0 / *&v1572;
      v506 = v488 & 0xFFFFFFFFFFFFFFF0;
      v507 = 0.5;
      *v494.i32 = 0.5 - *(&a11 + 1);
      v508 = vdupq_lane_s32(v494, 0);
      v510 = a13;
      v509 = a14;
      *v494.i32 = vmuls_lane_f32(1.0 / *&v1572, a13, 2);
      *v501.i32 = vmuls_lane_f32(1.0 / *&v1572, *a13.f32, 1);
      *v502.i32 = (1.0 / *&v1572) * a13.f32[0];
      v1402 = vdupq_lane_s32(v502, 0);
      v1373 = vdupq_lane_s32(v501, 0);
      v1380 = vdupq_lane_s32(*a14.i8, 0);
      v1363 = vdupq_lane_s32(v494, 0);
      v1368 = vdupq_lane_s32(*a14.i8, 1);
      v1359 = vdupq_laneq_s32(a14, 2);
      v511 = a12;
      v512 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v513 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      v514 = (1.0 / *&a9) * a12.f32[0];
      v1356 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v515 = a15;
      v516 = __PAIR64__(DWORD1(a17), a16);
      v517 = vdupq_laneq_s32(a15, 2);
      v518 = vdupq_lane_s32(*a15.i8, 0);
      v519 = vdupq_lane_s32(*a15.i8, 1);
      v1490 = vdupq_n_s32(v489);
      v520 = a18;
      v521 = v1595.data;
      v522 = v1595.rowBytes;
      v523.i64[0] = 0x3E0000003E000000;
      v523.i64[1] = 0x3E0000003E000000;
      v524.i64[0] = 0x80000000800000;
      v524.i64[1] = 0x80000000800000;
      v1422 = 1.0 / *&a9;
      v1412 = 1.0 / *&v1572;
      v1540 = vdupq_n_s32(LODWORD(buf.height) * v495 - 4);
      v1550 = v512;
      v1588 = vnegq_f32(v524);
      v1520 = v514;
      v1530 = vdupq_lane_s32(*&a18, 1);
      v1500 = vdupq_n_s32(v495);
      v1510 = vdupq_lane_s32(*&a18, 0);
      v1471 = v513;
      v1480 = vdupq_lane_s32(*&a17, 1);
      v1451 = vdupq_lane_s32(*&a16, 0);
      v1461 = vdupq_n_s32(v490);
      v1442 = v517;
      do
      {
        v525 = &v521[v522 * v500];
        v526 = &v496[v500 * v497];
        v527 = 0;
        if (v506)
        {
          v1578 = vmlaq_f32(v1380, v1402, v508);
          v1567 = vmlaq_f32(v1368, v1373, v508);
          v1432 = v508;
          v1559 = vmlaq_f32(v1359, v1363, v508);
          v528 = v1356;
          do
          {
            v529 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v525)), v523);
            v530 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v525[1])), v523);
            v531 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v525[2])), v523);
            __asm { FMOV            V0.4S, #4.0 }

            v533 = vaddq_f32(v528, _Q0);
            _Q0.i64[0] = 0x4100000041000000;
            _Q0.i64[1] = 0x4100000041000000;
            v534 = vaddq_f32(v528, _Q0);
            __asm { FMOV            V0.4S, #12.0 }

            v536 = vaddq_f32(v528, _Q0);
            v537 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v525[3])), v523);
            v538 = vmlaq_f32(v517, vmlaq_n_f32(v1559, v528, v512), v529);
            v539 = vmlaq_f32(v517, vmlaq_n_f32(v1559, v533, v512), v530);
            v540 = vmlaq_f32(v517, vmlaq_n_f32(v1559, v534, v512), v531);
            v541 = vmlaq_f32(v517, vmlaq_n_f32(v1559, v536, v512), v537);
            v542 = vcgtzq_f32(v537);
            v543 = vmlaq_f32(v519, vmlaq_n_f32(v1567, v528, v513), v529);
            v544 = vmlaq_f32(v519, vmlaq_n_f32(v1567, v533, v513), v530);
            v545 = vmlaq_f32(v518, vmlaq_n_f32(v1578, v534, v514), v531);
            v546 = vmlaq_f32(v519, vmlaq_n_f32(v1567, v534, v513), v531);
            v547 = vmlaq_f32(v518, vmlaq_n_f32(v1578, v536, v514), v537);
            v548 = vmlaq_f32(v519, vmlaq_n_f32(v1567, v536, v513), v537);
            v549 = vornq_s8(vmvnq_s8(vcgezq_f32(v539)), vcgtzq_f32(v530));
            v550 = vmlaq_f32(v1530, vdivq_f32(v1480, v538), v543);
            v551 = vmlaq_f32(v1510, vdivq_f32(v1451, v539), vmlaq_f32(v518, vmlaq_n_f32(v1578, v533, v514), v530));
            v552 = vornq_s8(vmvnq_s8(vcgezq_f32(v540)), vcgtzq_f32(v531));
            v553 = v519;
            v554 = v518;
            v555 = vcvtmq_s32_f32(vmlaq_f32(v1510, vdivq_f32(v1451, v538), vmlaq_f32(v518, vmlaq_n_f32(v1578, v528, v514), v529)));
            v556 = vcvtmq_s32_f32(v550);
            v557 = vcvtmq_s32_f32(v551);
            v558 = vcvtmq_s32_f32(vmlaq_f32(v1530, vdivq_f32(v1480, v539), v544));
            v559 = vcvtmq_s32_f32(vmlaq_f32(v1510, vdivq_f32(v1451, v540), v545));
            v560 = vcvtmq_s32_f32(vmlaq_f32(v1530, vdivq_f32(v1480, v540), v546));
            v561 = vcvtmq_s32_f32(vmlaq_f32(v1510, vdivq_f32(v1451, v541), v547));
            v562 = vcvtmq_s32_f32(vmlaq_f32(v1530, vdivq_f32(v1480, v541), v548));
            v563 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v556, v1490), vcgeq_s32(v555, v1461)), vcltzq_s32(vorrq_s8(v556, v555))), vornq_s8(vmvnq_s8(vcgezq_f32(v538)), vcgtzq_f32(v529)));
            v564 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v558, v1490), vcgeq_s32(v557, v1461)), vcltzq_s32(vorrq_s8(v558, v557))), v549);
            v565 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v560, v1490), vcgeq_s32(v559, v1461)), vcltzq_s32(vorrq_s8(v560, v559))), v552);
            *v550.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v563), 0xFuLL));
            *v548.f32 = vorr_s8(vmovn_s32(v555), *v550.f32);
            v566 = vorr_s8(vmovn_s32(v556), *v550.f32);
            v517 = v1442;
            v567 = v526;
            vst2_s16(v567, v548);
            v567 += 8;
            v518 = v554;
            v519 = v553;
            *v550.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v564), 0xFuLL));
            v568 = vorr_s8(vmovn_s32(v557), *v550.f32);
            *v548.f32 = vorr_s8(vmovn_s32(v558), *v550.f32);
            *v551.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v565), 0xFuLL));
            *v552.i8 = vorr_s8(vmovn_s32(v559), *v551.f32);
            *v545.f32 = vorr_s8(vmovn_s32(v560), *v551.f32);
            v569 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v562, v1490), vcgeq_s32(v561, v1461)), vcltzq_s32(vorrq_s8(v562, v561))), vornq_s8(vmvnq_s8(vcgezq_f32(v541)), v542));
            v570 = v526 + 16;
            vst2_s16(v570, *(&v545 - 8));
            v523.i64[0] = 0x3E0000003E000000;
            v523.i64[1] = 0x3E0000003E000000;
            vst2_s16(v567, *(&v548 - 8));
            *v549.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v569), 0xFuLL));
            v571 = vorr_s8(vmovn_s32(v561), *v549.i8);
            *v548.f32 = vorr_s8(vmovn_s32(v562), *v549.i8);
            v572 = v526 + 24;
            vst2_s16(v572, *(&v548 - 8));
            v514 = v1520;
            v513 = v1471;
            v573 = vdupq_n_s32(0x3A83126Fu);
            v574 = vmulq_f32(v538, v573);
            v575 = vmulq_f32(v539, v573);
            v576 = vmulq_f32(v540, v573);
            v577 = vmulq_f32(v541, v573);
            v578 = vmlaq_s32(v555, v556, v1500);
            v579 = vmlaq_s32(v557, v558, v1500);
            v580 = vmlaq_s32(v559, v560, v1500);
            v581 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v563, 0x1FuLL)), v1588, v574);
            v582 = vminq_s32(vmaxq_s32(v578, 0), v1540);
            v583 = vminq_s32(vmaxq_s32(v579, 0), v1540);
            v584 = v582.u32[1];
            LODWORD(v572) = v582.i32[2];
            v585 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v564, 0x1FuLL)), v1588, v575);
            v512 = v1550;
            LODWORD(v570) = v582.i32[3];
            v498[v582.u32[0]] = fminf(*v581.i32, v498[v582.u32[0]]);
            v586 = vminq_s32(vmaxq_s32(v580, 0), v1540);
            v498[v583.u32[1]] = fminf(*&v585.i32[1], v498[v583.u32[1]]);
            v587 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v565, 0x1FuLL)), v1588, v576);
            v588 = vminq_s32(vmaxq_s32(vmlaq_s32(v561, v562, v1500), 0), v1540);
            v498[v586.u32[2]] = fminf(*&v587.i32[2], v498[v586.u32[2]]);
            v589 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v569, 0x1FuLL)), v1588, v577);
            v498[v588.u32[3]] = fminf(*&v589.i32[3], v498[v588.u32[3]]);
            v498[v584] = fminf(*&v581.i32[1], v498[v584]);
            v498[v583.u32[2]] = fminf(*&v585.i32[2], v498[v583.u32[2]]);
            v498[v586.u32[3]] = fminf(*&v587.i32[3], v498[v586.u32[3]]);
            v498[v588.u32[0]] = fminf(*v589.i32, v498[v588.u32[0]]);
            v498[v572] = fminf(*&v581.i32[2], v498[v572]);
            v498[v583.u32[3]] = fminf(*&v585.i32[3], v498[v583.u32[3]]);
            v498[v586.u32[0]] = fminf(*v587.i32, v498[v586.u32[0]]);
            v498[v588.u32[1]] = fminf(*&v589.i32[1], v498[v588.u32[1]]);
            v498[v570] = fminf(*&v581.i32[3], v498[v570]);
            v498[v583.u32[0]] = fminf(*v585.i32, v498[v583.u32[0]]);
            v498[v586.u32[1]] = fminf(*&v587.i32[1], v498[v586.u32[1]]);
            v498[v588.u32[2]] = fminf(*&v589.i32[2], v498[v588.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v528 = vaddq_f32(v528, _Q0);
            v525 += 4;
            v526 += 32;
            v527 += 16;
          }

          while (v527 < v506);
          v527 = (((v488 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v509 = a14;
          v515 = a15;
          v511 = a12;
          v510 = a13;
          v520 = a18;
          v503 = *&a11;
          v516 = __PAIR64__(DWORD1(a17), a16);
          v504 = v1422;
          v505 = v1412;
          v507 = 0.5;
          v508 = v1432;
        }

        if (v527 < v488)
        {
          do
          {
            v591 = vcvts_n_f32_u32(v525->u16[0], 3uLL);
            v592 = vaddq_f32(v515, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v511, v504 * (((v527 + v507) - v503) * v591)), v510, v505 * (((v500 + v507) - *(&a11 + 1)) * v591)), v509, v591));
            v593 = 0xFFFF0000FFFFLL;
            if (*&v592.i32[2] >= 0.0 && v591 > 0.0)
            {
              v594 = vcvt_s32_f32(vmla_f32(v520, vdiv_f32(v516, vdup_laneq_s32(v592, 2)), *v592.i8));
              if ((v594.i32[0] & 0x80000000) == 0 && v490 > v594.i32[0] && (v594.i32[1] & 0x80000000) == 0 && v489 > v594.i32[1])
              {
                v595 = *&v592.i32[2] * 0.001;
                v596 = &v498[v495 * v594.i32[1]];
                v597 = v596[v594.u32[0]];
                if (v597 == 0.0 || v597 > v595)
                {
                  v596[v594.u32[0]] = v595;
                }

                v593 = v594;
              }
            }

            *v526 = v593;
            v526[1] = WORD2(v593);
            ++v527;
            v525 = (v525 + 2);
            v526 += 2;
          }

          while (v488 != v527);
        }

        ++v500;
        __asm { FMOV            V0.4S, #1.0 }

        v508 = vaddq_f32(v508, _Q0);
      }

      while (v500 != v487);
      v499 = buf.height;
    }

    v349 = v493;
    if (v499)
    {
      v600 = 0;
      v601 = *&buf.width;
      v602 = buf.data;
      v603 = buf.width >> 4;
      if (buf.width >> 4 <= 1)
      {
        v603 = 1;
      }

      v604 = buf.width & 0xFFFFFFF0;
      v605.i64[0] = 0x80000000800000;
      v605.i64[1] = 0x80000000800000;
      v606 = vnegq_f32(v605);
      do
      {
        v607 = &v602[*(&v601 + 1) * v600];
        v608 = v603;
        if (v601 >= 0x10)
        {
          do
          {
            v609 = v607[2];
            v610 = v607[3];
            v611 = vbicq_s8(v607[1], vceqq_f32(v607[1], v606));
            *v607 = vbicq_s8(*v607, vceqq_f32(*v607, v606));
            v607[1] = v611;
            v607[2] = vbicq_s8(v609, vceqq_f32(v609, v606));
            v607[3] = vbicq_s8(v610, vceqq_f32(v610, v606));
            v607 += 4;
            --v608;
          }

          while (v608);
        }

        v612 = v601 & 0xFFFFFFF0;
        if (v604 != v601)
        {
          do
          {
            if (v607->f32[0] == 3.4028e38)
            {
              v607->i32[0] = 0;
            }

            ++v612;
            v607 = (v607 + 4);
          }

          while (v612 < v601);
        }

        ++v600;
      }

      while (v600 != v499);
    }

    goto LABEL_324;
  }

  if (PixelFormatType == 1751410032)
  {
LABEL_90:
    v350 = CVPixelBufferGetHeight(a1);
    v351 = CVPixelBufferGetWidth(a1);
    v352 = CVPixelBufferGetHeight(pixelBuffer);
    v353 = CVPixelBufferGetWidth(pixelBuffer);
    v354 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&v1595, 0, sizeof(v1595));
    v355 = MEMORY[0x277CBF3A0];
    v356 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1595);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v355, &buf);
    PixelBufferUtils::asVImageBuffer(v1384, *v355, &v1594);
    v359 = v354 >> 1;
    v360 = v1594.data;
    v361 = v1594.rowBytes;
    v362 = buf.data;
    if (v359 * v352)
    {
      memset_pattern16(buf.data, &unk_2404C86A0, 2 * v359 * v352);
    }

    v363 = buf.height;
    if (v350)
    {
      v364 = 0;
      v365.i32[1] = v1572;
      v366.i32[1] = HIDWORD(a9);
      v367 = *&a11;
      v368 = 1.0 / *&a9;
      v369 = 1.0 / *&v1572;
      v370 = v351 & 0xFFFFFFFFFFFFFFF0;
      v371 = 0.5;
      *v357.i32 = 0.5 - *(&a11 + 1);
      v372 = vdupq_lane_s32(v357, 0);
      v374 = a13;
      v373 = a14;
      *v357.i32 = vmuls_lane_f32(1.0 / *&v1572, a13, 2);
      *v365.i32 = vmuls_lane_f32(1.0 / *&v1572, *a13.f32, 1);
      *v366.i32 = (1.0 / *&v1572) * a13.f32[0];
      v1421 = vdupq_lane_s32(*a14.i8, 0);
      v1431 = vdupq_lane_s32(v366, 0);
      v1401 = vdupq_lane_s32(*a14.i8, 1);
      v1411 = vdupq_lane_s32(v365, 0);
      v1372 = vdupq_laneq_s32(a14, 2);
      v1379 = vdupq_lane_s32(v357, 0);
      v375 = a12;
      v376 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v377 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      *&v358 = (1.0 / *&a9) * a12.f32[0];
      v378 = a15;
      v379 = __PAIR64__(DWORD1(a17), a16);
      v380 = vdupq_laneq_s32(a15, 2);
      v381 = vdupq_lane_s32(*a15.i8, 0);
      v382 = vdupq_lane_s32(*a15.i8, 1);
      v383 = vdupq_n_s32(v353);
      v384 = vdupq_n_s32(v352);
      v1367 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v385 = vdupq_lane_s32(*&a16, 0);
      v386 = a18;
      v387 = vdupq_lane_s32(*&a18, 1);
      v388 = v1595.data;
      v389 = v1595.rowBytes;
      v1450 = 1.0 / *&a9;
      v1441 = 1.0 / *&v1572;
      v1529 = v380;
      v1539 = v376;
      v1509 = vdupq_n_s32(v359);
      v1519 = v377;
      v1489 = v381;
      v1499 = vdupq_n_s32(LODWORD(buf.height) * v359 - 2);
      v1470 = vdupq_lane_s32(*&a17, 1);
      v1577 = vdupq_lane_s32(*&a18, 0);
      do
      {
        v390 = &v388[v389 * v364];
        v391 = &v360[v364 * v361];
        v392 = 0;
        if (v370)
        {
          v1566 = vmlaq_f32(v1421, v1431, v372);
          v1558 = vmlaq_f32(v1401, v1411, v372);
          v1460 = v372;
          v1549 = vmlaq_f32(v1372, v1379, v372);
          v393 = v1367;
          do
          {
            v1587 = v393;
            v394.i64[0] = 0x3E0000003E000000;
            v394.i64[1] = 0x3E0000003E000000;
            v395 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v390)), v394);
            v396 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v390[1])), v394);
            v397 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v390[2])), v394);
            __asm { FMOV            V0.4S, #4.0 }

            v399 = vaddq_f32(v393, _Q0);
            _Q0.i64[0] = 0x4100000041000000;
            _Q0.i64[1] = 0x4100000041000000;
            v400 = vaddq_f32(v393, _Q0);
            __asm { FMOV            V0.4S, #12.0 }

            v402 = vaddq_f32(v393, _Q0);
            v403 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v390[3])), v394);
            v404 = vmlaq_f32(v380, vmlaq_n_f32(v1549, v393, v376), v395);
            v405 = vmlaq_f32(v380, vmlaq_n_f32(v1549, v399, v376), v396);
            v406 = vmlaq_f32(v380, vmlaq_n_f32(v1549, v400, v376), v397);
            v407 = vmlaq_f32(v380, vmlaq_n_f32(v1549, v402, v376), v403);
            v408 = vcgtzq_f32(v395);
            v409 = vcgtzq_f32(v396);
            v410 = vmlaq_f32(v381, vmlaq_n_f32(v1566, v393, *&v358), v395);
            v411 = vmlaq_f32(v382, vmlaq_n_f32(v1558, v393, v377), v395);
            v412 = vmlaq_f32(v381, vmlaq_n_f32(v1566, v400, *&v358), v397);
            v413 = vmlaq_f32(v382, vmlaq_n_f32(v1558, v400, v377), v397);
            v414 = vmlaq_f32(v1577, vdivq_f32(v385, v404), v410);
            v415 = vmlaq_f32(v387, vdivq_f32(v1470, v404), v411);
            v416 = vmlaq_f32(v1577, vdivq_f32(v385, v405), vmlaq_f32(v381, vmlaq_n_f32(v1566, v399, *&v358), v396));
            v417 = vmlaq_f32(v387, vdivq_f32(v1470, v405), vmlaq_f32(v382, vmlaq_n_f32(v1558, v399, v377), v396));
            v418 = vmlaq_f32(v381, vmlaq_n_f32(v1566, v402, *&v358), v403);
            v419 = vmlaq_f32(v382, vmlaq_n_f32(v1558, v402, v377), v403);
            v420 = vcgtzq_f32(v403);
            v421 = vornq_s8(vmvnq_s8(vcgezq_f32(v404)), v408);
            v422 = vmvnq_s8(vcgezq_f32(v407));
            v423 = v358;
            v424 = vornq_s8(vmvnq_s8(vcgezq_f32(v405)), v409);
            v425 = v384;
            v426 = v383;
            v427 = vmlaq_f32(v387, vdivq_f32(v1470, v406), v413);
            v428 = vdivq_f32(v385, v407);
            v429 = vdupq_n_s32(0x3A83126Fu);
            v430 = v382;
            v431 = vornq_s8(vmvnq_s8(vcgezq_f32(v406)), vcgtzq_f32(v397));
            v432 = vdivq_f32(v1470, v407);
            v433 = vmulq_f32(v404, v429);
            v434 = vmulq_f32(v405, v429);
            v435 = vmulq_f32(v406, v429);
            v436 = vmulq_f32(v407, v429);
            v437 = vcvtmq_s32_f32(v414);
            v438 = vcvtmq_s32_f32(v415);
            v439 = vcvtmq_s32_f32(v416);
            v440 = vcvtmq_s32_f32(v417);
            v441 = vcvtmq_s32_f32(vmlaq_f32(v1577, vdivq_f32(v385, v406), v412));
            v442 = vcvtmq_s32_f32(v427);
            v383 = v426;
            v384 = v425;
            v443 = vcvtmq_s32_f32(vmlaq_f32(v1577, v428, v418));
            v444 = vcvtmq_s32_f32(vmlaq_f32(v387, v432, v419));
            v445 = vornq_s8(v422, v420);
            v446 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v438, v425), vcgeq_s32(v437, v383)), vcltzq_s32(vorrq_s8(v438, v437))), v421);
            v447 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v440, v425), vcgeq_s32(v439, v383)), vcltzq_s32(vorrq_s8(v440, v439))), v424);
            v358 = v423;
            v448 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v442, v425), vcgeq_s32(v441, v383)), vcltzq_s32(vorrq_s8(v442, v441))), v431);
            v449 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v444, v425), vcgeq_s32(v443, v383)), vcltzq_s32(vorrq_s8(v444, v443))), v445);
            v450 = vdupq_n_s32(0x477FE000u);
            v451 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v446, 0x1FuLL)), v450, v433);
            v452 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v447, 0x1FuLL)), v450, v434);
            v453 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v448, 0x1FuLL)), v450, v435);
            v454 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v449, 0x1FuLL)), v450, v436);
            *v450.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v446), 0xFuLL));
            *v428.f32 = vorr_s8(vmovn_s32(v437), *v450.i8);
            *v431.i8 = vorr_s8(vmovn_s32(v438), *v450.i8);
            *v446.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v447), 0xFuLL));
            *v418.f32 = vorr_s8(vmovn_s32(v439), *v446.i8);
            *v450.i8 = vorr_s8(vmovn_s32(v440), *v446.i8);
            v455 = v391;
            vst2_s16(v455, v428);
            v455 += 8;
            v382 = v430;
            v381 = v1489;
            vst2_s16(v455, v418);
            *v446.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v448), 0xFuLL));
            *v418.f32 = vorr_s8(vmovn_s32(v441), *v446.i8);
            *v450.i8 = vorr_s8(vmovn_s32(v442), *v446.i8);
            v456 = v391 + 16;
            vst2_s16(v456, v418);
            v377 = v1519;
            v380 = v1529;
            v376 = v1539;
            *v447.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(v449), 0xFuLL));
            *v415.f32 = vorr_s8(vmovn_s32(v443), *v447.i8);
            *v449.i8 = vorr_s8(vmovn_s32(v444), *v447.i8);
            v457 = v391 + 24;
            vst2_s16(v457, v415);
            v458 = vmlaq_s32(v441, v442, v1509);
            v459 = vminq_s32(vmaxq_s32(vmlaq_s32(v437, v438, v1509), 0), v1499);
            v460 = vminq_s32(vmaxq_s32(vmlaq_s32(v439, v440, v1509), 0), v1499);
            v461 = vmlaq_s32(v443, v444, v1509);
            v462 = vminq_s32(vmaxq_s32(v458, 0), v1499);
            v463 = vminq_s32(vmaxq_s32(v461, 0), v1499);
            v464 = v459.u32[1];
            v465 = v459.i32[0];
            v444.i16[0] = v362[v459.u32[0]];
            *v459.i8 = vcvt_f16_f32(v451);
            *&v362[v465] = fminl(*v459.i16, *v444.i16);
            *v444.i8 = vcvt_f16_f32(v452);
            *&v362[v460.u32[1]] = fminl(*&v444.i16[1], *&v362[v460.u32[1]]);
            *v461.i8 = vcvt_f16_f32(v453);
            *&v362[v462.u32[2]] = fminl(*&v461.i16[2], *&v362[v462.u32[2]]);
            *v439.i8 = vcvt_f16_f32(v454);
            *&v362[v463.u32[3]] = fminl(*&v439.i16[3], *&v362[v463.u32[3]]);
            *&v362[v464] = fminl(*&v459.i16[1], *&v362[v464]);
            *&v362[v460.u32[2]] = fminl(*&v444.i16[2], *&v362[v460.u32[2]]);
            *&v362[v462.u32[3]] = fminl(*&v461.i16[3], *&v362[v462.u32[3]]);
            *&v362[v463.u32[0]] = fminl(*v439.i16, *&v362[v463.u32[0]]);
            *&v362[v459.u32[2]] = fminl(*&v459.i16[2], *&v362[v459.u32[2]]);
            *&v362[v460.u32[3]] = fminl(*&v444.i16[3], *&v362[v460.u32[3]]);
            *&v362[v462.u32[0]] = fminl(*v461.i16, *&v362[v462.u32[0]]);
            *&v362[v463.u32[1]] = fminl(*&v439.i16[1], *&v362[v463.u32[1]]);
            *&v362[v459.u32[3]] = fminl(*&v459.i16[3], *&v362[v459.u32[3]]);
            *&v362[v460.u32[0]] = fminl(*v444.i16, *&v362[v460.u32[0]]);
            *&v362[v462.u32[1]] = fminl(*&v461.i16[1], *&v362[v462.u32[1]]);
            *&v362[v463.u32[2]] = fminl(*&v439.i16[2], *&v362[v463.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v393 = vaddq_f32(v1587, _Q0);
            v390 += 4;
            v391 += 32;
            v392 += 16;
          }

          while (v392 < v370);
          v392 = (((v351 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v373 = a14;
          v378 = a15;
          v375 = a12;
          v374 = a13;
          v386 = a18;
          v367 = *&a11;
          v379 = __PAIR64__(DWORD1(a17), a16);
          v368 = v1450;
          v369 = v1441;
          v371 = 0.5;
          v372 = v1460;
        }

        if (v392 < v351)
        {
          do
          {
            v467 = vcvts_n_f32_u32(v390->u16[0], 3uLL);
            v468 = vaddq_f32(v378, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v375, v368 * (((v392 + v371) - v367) * v467)), v374, v369 * (((v364 + v371) - *(&a11 + 1)) * v467)), v373, v467));
            v469 = 0xFFFF0000FFFFLL;
            if (*&v468.i32[2] >= 0.0 && v467 > 0.0)
            {
              v470 = vcvt_s32_f32(vmla_f32(v386, vdiv_f32(v379, vdup_laneq_s32(v468, 2)), *v468.i8));
              if ((v470.i32[0] & 0x80000000) == 0 && v353 > v470.i32[0] && (v470.i32[1] & 0x80000000) == 0 && v352 > v470.i32[1])
              {
                _S1 = *&v468.i32[2] * 0.001;
                __asm
                {
                  FCVT            H1, S1
                  FCMP            H3, #0
                }

                if (_ZF)
                {
                  v474 = 0;
                }

                else
                {
                  v474 = _H3 <= _H1;
                }

                if (!v474)
                {
                  *&v362[v359 * v470.i32[1] + v470.u32[0]] = _H1;
                }

                v469 = v470;
              }
            }

            *v391 = v469;
            v391[1] = WORD2(v469);
            ++v392;
            v390 = (v390 + 2);
            v391 += 2;
          }

          while (v351 != v392);
        }

        ++v364;
        __asm { FMOV            V0.4S, #1.0 }

        v372 = vaddq_f32(v372, _Q0);
      }

      while (v364 != v350);
      v363 = buf.height;
    }

    v349 = v356;
    if (v363)
    {
      v476 = 0;
      v477 = *&buf.width;
      v478 = buf.data;
      v479 = buf.width >> 4;
      if (buf.width >> 4 <= 1)
      {
        v479 = 1;
      }

      v480 = buf.width & 0xFFFFFFF0;
      do
      {
        v481 = &v478[*(&v477 + 1) * v476];
        v482 = v479;
        if (v477 >= 0x10)
        {
          do
          {
            v483 = v481[2];
            v484 = v481[3];
            v485 = vbic_s8(v481[1], vceq_f16(v481[1], 0x8400840084008400));
            *v481 = vbic_s8(*v481, vceq_f16(*v481, 0x8400840084008400));
            v481[1] = v485;
            v481[2] = vbic_s8(v483, vceq_f16(v483, 0x8400840084008400));
            v481[3] = vbic_s8(v484, vceq_f16(v484, 0x8400840084008400));
            v481 += 4;
            --v482;
          }

          while (v482);
        }

        v486 = v477 & 0xFFFFFFF0;
        if (v480 != v477)
        {
          do
          {
            if (*v481->i16 == COERCE_SHORT_FLOAT(31743))
            {
              v481->i16[0] = 0;
            }

            ++v486;
            v481 = (v481 + 2);
          }

          while (v486 < v477);
        }

        ++v476;
      }

      while (v476 != v363);
    }

    goto LABEL_324;
  }

  if (PixelFormatType == 1751411059)
  {
    v237 = CVPixelBufferGetHeight(a1);
    v238 = CVPixelBufferGetWidth(a1);
    v239 = CVPixelBufferGetHeight(pixelBuffer);
    v240 = CVPixelBufferGetWidth(pixelBuffer);
    v241 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&v1595, 0, sizeof(v1595));
    v242 = MEMORY[0x277CBF3A0];
    v27 = a1;
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v1595);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v242, &buf);
    PixelBufferUtils::asVImageBuffer(v1384, *v242, &v1594);
    v243 = v1594.data;
    v244 = v1594.rowBytes;
    v246 = buf.data;
    v245 = buf.height;
    bzero(buf.data, buf.height * buf.rowBytes);
    v251 = a14;
    v250 = a15;
    v253 = a12;
    v252 = a13;
    v255 = a18;
    v254 = *&a11;
    v256.i32[0] = a16;
    if (v237)
    {
      v257 = 0;
      v258.i32[1] = v1572;
      v259 = 1.0 / *&a9;
      v260 = 1.0 / *&v1572;
      v261 = v238 & 0xFFFFFFFFFFFFFFF0;
      v262 = 0.5;
      *v247.i32 = 0.5 - *(&a11 + 1);
      v263 = vdupq_lane_s32(v247, 0);
      *v247.i32 = vmuls_lane_f32(1.0 / *&v1572, a13, 2);
      *v258.i32 = vmuls_lane_f32(1.0 / *&v1572, *a13.f32, 1);
      *v248.i32 = (1.0 / *&v1572) * a13.f32[0];
      v1440 = vdupq_lane_s32(*a14.i8, 0);
      v1449 = vdupq_lane_s32(v248, 0);
      v1420 = vdupq_lane_s32(*a14.i8, 1);
      v1430 = vdupq_lane_s32(v258, 0);
      v1400 = vdupq_laneq_s32(a14, 2);
      v1410 = vdupq_lane_s32(v247, 0);
      *&v249 = vmuls_lane_f32(1.0 / *&a9, a12, 2);
      v264 = vmuls_lane_f32(1.0 / *&a9, *a12.f32, 1);
      v265 = (1.0 / *&a9) * a12.f32[0];
      v266 = vdupq_laneq_s32(a15, 2);
      v267 = vdupq_lane_s32(*a15.i8, 0);
      v268 = vdupq_lane_s32(*a15.i8, 1);
      v269 = vdupq_n_s32(v240);
      v270 = vdupq_n_s32(v239);
      v1378 = vsubq_f32(xmmword_2404C8610, vdupq_lane_s32(*&a11, 0));
      v271 = vdupq_lane_s32(*&a18, 0);
      v256.i32[1] = DWORD1(a17);
      v272 = v1595.data;
      v273 = v1595.rowBytes;
      v274.i64[0] = 0x3E0000003E000000;
      v274.i64[1] = 0x3E0000003E000000;
      v275.i64[0] = 0x4100000041000000;
      v275.i64[1] = 0x4100000041000000;
      v1397 = v256;
      v1469 = 1.0 / *&a9;
      v1459 = 1.0 / *&v1572;
      v1538 = vdupq_n_s32(v241 >> 1);
      v1548 = v266;
      v1518 = v265;
      v1528 = vdupq_n_s32(v245 * (v241 >> 1) - 2);
      v1498 = vdupq_lane_s32(*&a16, 0);
      v1508 = vdupq_lane_s32(*&a18, 1);
      v1488 = vdupq_lane_s32(*&a17, 1);
      do
      {
        v276 = &v272[v273 * v257];
        v277 = &v243[v257 * v244];
        v278 = 0;
        if (v261)
        {
          v1576 = vmlaq_f32(v1440, v1449, v263);
          v1565 = vmlaq_f32(v1420, v1430, v263);
          v1479 = v263;
          v1557 = vmlaq_f32(v1400, v1410, v263);
          v279 = v1378;
          do
          {
            v1586 = v279;
            v280 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v276)), v274);
            v281 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v276[1])), v274);
            v282 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v276[2])), v274);
            __asm { FMOV            V2.4S, #4.0 }

            v284 = vaddq_f32(v279, _Q2);
            v285 = vaddq_f32(v279, v275);
            v286 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v276[3])), v274);
            __asm { FMOV            V2.4S, #12.0 }

            v288 = vaddq_f32(v279, _Q2);
            v289 = vmlaq_f32(v266, vmlaq_n_f32(v1557, v279, *&v249), v280);
            v290 = vmlaq_f32(v266, vmlaq_n_f32(v1557, v284, *&v249), v281);
            v291 = vmlaq_f32(v266, vmlaq_n_f32(v1557, v285, *&v249), v282);
            v292 = vmlaq_f32(v266, vmlaq_n_f32(v1557, v288, *&v249), v286);
            v293 = vcgtzq_f32(v281);
            v294 = vmlaq_f32(v267, vmlaq_n_f32(v1576, v279, v265), v280);
            v295 = vmlaq_f32(v267, vmlaq_n_f32(v1576, v284, v265), v281);
            v296 = v270;
            v297 = v249;
            v298 = vmlaq_f32(v268, vmlaq_n_f32(v1565, v284, v264), v281);
            v299 = vmlaq_f32(v267, vmlaq_n_f32(v1576, v285, v265), v282);
            v300 = vmlaq_f32(v268, vmlaq_n_f32(v1565, v285, v264), v282);
            v301 = vmlaq_f32(v267, vmlaq_n_f32(v1576, v288, v265), v286);
            v302 = vmlaq_f32(v268, vmlaq_n_f32(v1565, v288, v264), v286);
            v303 = vmlaq_f32(v271, vdivq_f32(v1498, v289), v294);
            v304 = vornq_s8(vmvnq_s8(vcgezq_f32(v290)), v293);
            v305 = vmlaq_f32(v271, vdivq_f32(v1498, v290), v295);
            v306 = vornq_s8(vmvnq_s8(vcgezq_f32(v291)), vcgtzq_f32(v282));
            v307 = vornq_s8(vmvnq_s8(vcgezq_f32(v292)), vcgtzq_f32(v286));
            v308 = vcvtmq_s32_f32(v303);
            v309 = vcvtmq_s32_f32(vmlaq_f32(v1508, vdivq_f32(v1488, v289), vmlaq_f32(v268, vmlaq_n_f32(v1565, v279, v264), v280)));
            v310 = vcvtmq_s32_f32(v305);
            v311 = vcvtmq_s32_f32(vmlaq_f32(v1508, vdivq_f32(v1488, v290), v298));
            v312 = vcvtmq_s32_f32(vmlaq_f32(v271, vdivq_f32(v1498, v291), v299));
            v313 = vcvtmq_s32_f32(vmlaq_f32(v1508, vdivq_f32(v1488, v291), v300));
            v314 = vcvtmq_s32_f32(vmlaq_f32(v271, vdivq_f32(v1498, v292), v301));
            v270 = v296;
            v315 = vcvtmq_s32_f32(vmlaq_f32(v1508, vdivq_f32(v1488, v292), v302));
            v316 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v309, v296), vcgeq_s32(v308, v269)), vcltzq_s32(vorrq_s8(v309, v308))), vornq_s8(vmvnq_s8(vcgezq_f32(v289)), vcgtzq_f32(v280)));
            *v305.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v316), 0xFuLL));
            v317 = vorr_s8(vmovn_s32(v308), *v305.f32);
            *v298.f32 = vorr_s8(vmovn_s32(v309), *v305.f32);
            v318 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v311, v296), vcgeq_s32(v310, v269)), vcltzq_s32(vorrq_s8(v311, v310))), v304);
            v319 = v277;
            vst2_s16(v319, *(&v298 - 8));
            v319 += 8;
            *v305.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v318), 0xFuLL));
            v320 = vorr_s8(vmovn_s32(v310), *v305.f32);
            *v298.f32 = vorr_s8(vmovn_s32(v311), *v305.f32);
            v321 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v313, v296), vcgeq_s32(v312, v269)), vcltzq_s32(vorrq_s8(v313, v312))), v306);
            v322 = vorrq_s8(vorrq_s8(vorrq_s8(vcgeq_s32(v315, v296), vcgeq_s32(v314, v269)), vcltzq_s32(vorrq_s8(v315, v314))), v307);
            vst2_s16(v319, *(&v298 - 8));
            v249 = v297;
            *v305.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v321), 0xFuLL));
            *&v297 = vorr_s8(vmovn_s32(v312), *v305.f32);
            *v296.i8 = vorr_s8(vmovn_s32(v313), *v305.f32);
            v323 = v277 + 16;
            vst2_s16(v323, *(&v296 - 8));
            *v305.f32 = vcltz_s16(vshl_n_s16(vmovn_s32(v322), 0xFuLL));
            *&v297 = vorr_s8(vmovn_s32(v314), *v305.f32);
            *v296.i8 = vorr_s8(vmovn_s32(v315), *v305.f32);
            v324 = v277 + 24;
            vst2_s16(v324, *(&v296 - 8));
            v265 = v1518;
            v266 = v1548;
            v325 = vmlaq_s32(v308, v309, v1538);
            v274.i64[0] = 0x3E0000003E000000;
            v274.i64[1] = 0x3E0000003E000000;
            v326 = vdupq_n_s32(0x447A0000u);
            v327 = vdivq_f32(v326, v291);
            v328 = vdivq_f32(v326, v292);
            v329 = vmlaq_s32(v312, v313, v1538);
            v330 = vmlaq_s32(v314, v315, v1538);
            v331 = vandq_s8(vdivq_f32(v326, v289), vcgezq_s32(vshlq_n_s32(v316, 0x1FuLL)));
            v332 = vandq_s8(vdivq_f32(v326, v290), vcgezq_s32(vshlq_n_s32(v318, 0x1FuLL)));
            v333 = vandq_s8(v327, vcgezq_s32(vshlq_n_s32(v321, 0x1FuLL)));
            v334 = vminq_s32(vmaxq_s32(v325, 0), v1528);
            v335 = vminq_s32(vmaxq_s32(vmlaq_s32(v310, v311, v1538), 0), v1528);
            v336 = vminq_s32(vmaxq_s32(v329, 0), v1528);
            v337 = vminq_s32(vmaxq_s32(v330, 0), v1528);
            v338 = v334.u32[1];
            *v331.f32 = vcvt_f16_f32(v331);
            v246[v334.u32[0]] = fmaxl(*v331.i16, v246[v334.u32[0]]);
            *v332.f32 = vcvt_f16_f32(v332);
            v246[v335.u32[1]] = fmaxl(*&v332.i16[1], v246[v335.u32[1]]);
            *v333.f32 = vcvt_f16_f32(v333);
            v246[v336.u32[2]] = fmaxl(*&v333.i16[2], v246[v336.u32[2]]);
            *v334.i8 = vcvt_f16_f32(vandq_s8(v328, vcgezq_s32(vshlq_n_s32(v322, 0x1FuLL))));
            v246[v337.u32[3]] = fmaxl(*&v334.i16[3], v246[v337.u32[3]]);
            v246[v338] = fmaxl(*&v331.i16[1], v246[v338]);
            v246[v335.u32[2]] = fmaxl(*&v332.i16[2], v246[v335.u32[2]]);
            v246[v336.u32[3]] = fmaxl(*&v333.i16[3], v246[v336.u32[3]]);
            v246[v337.u32[0]] = fmaxl(*v334.i16, v246[v337.u32[0]]);
            v246[v334.u32[2]] = fmaxl(*&v331.i16[2], v246[v334.u32[2]]);
            v246[v335.u32[3]] = fmaxl(*&v332.i16[3], v246[v335.u32[3]]);
            v246[v336.u32[0]] = fmaxl(*v333.i16, v246[v336.u32[0]]);
            v246[v337.u32[1]] = fmaxl(*&v334.i16[1], v246[v337.u32[1]]);
            v246[v334.u32[3]] = fmaxl(*&v331.i16[3], v246[v334.u32[3]]);
            LODWORD(v324) = v335.i32[0];
            v275.i64[0] = 0x4100000041000000;
            v275.i64[1] = 0x4100000041000000;
            v246[v324] = fmaxl(*v332.i16, v246[v324]);
            v246[v336.u32[1]] = fmaxl(*&v333.i16[1], v246[v336.u32[1]]);
            v246[v337.u32[2]] = fmaxl(*&v334.i16[2], v246[v337.u32[2]]);
            __asm { FMOV            V0.4S, #16.0 }

            v279 = vaddq_f32(v1586, _Q0);
            v276 += 4;
            v277 += 32;
            v278 += 16;
          }

          while (v278 < v261);
          v278 = (((v238 & 0xFFFFFFFFFFFFFFF0) - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
          v251 = a14;
          v250 = a15;
          v253 = a12;
          v252 = a13;
          v255 = a18;
          v254 = *&a11;
          v256 = v1397;
          v259 = v1469;
          v260 = v1459;
          v262 = 0.5;
          v263 = v1479;
        }

        if (v278 < v238)
        {
          do
          {
            v340 = vcvts_n_f32_u32(v276->u16[0], 3uLL);
            v341 = vaddq_f32(v250, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v253, v259 * (((v278 + v262) - v254) * v340)), v252, v260 * (((v257 + v262) - *(&a11 + 1)) * v340)), v251, v340));
            v342 = 0xFFFF0000FFFFLL;
            if (*&v341.i32[2] >= 0.0 && v340 > 0.0)
            {
              v343 = vcvt_s32_f32(vmla_f32(v255, vdiv_f32(v256, vdup_laneq_s32(v341, 2)), *v341.i8));
              if (v343.i32[0] < 0)
              {
                v275.i64[0] = 0x4100000041000000;
                v275.i64[1] = 0x4100000041000000;
              }

              else
              {
                v275.i64[0] = 0x4100000041000000;
                v275.i64[1] = 0x4100000041000000;
                if (v240 > v343.i32[0] && (v343.i32[1] & 0x80000000) == 0 && v239 > v343.i32[1])
                {
                  _S1 = 1000.0 / *&v341.i32[2];
                  __asm
                  {
                    FCVT            H1, S1
                    FCMP            H3, #0
                  }

                  if (_ZF)
                  {
                    v347 = 1;
                  }

                  else
                  {
                    v347 = _H3 < _H1;
                  }

                  if (v347)
                  {
                    v246[(v241 >> 1) * v343.i32[1] + v343.u32[0]] = _H1;
                  }

                  v342 = v343;
                }
              }
            }

            *v277 = v342;
            v277[1] = WORD2(v342);
            ++v278;
            v276 = (v276 + 2);
            v277 += 2;
          }

          while (v238 != v278);
        }

        ++v257;
        __asm { FMOV            V0.4S, #1.0 }

        v263 = vaddq_f32(v263, _Q0);
      }

      while (v257 != v237);
    }

    goto LABEL_85;
  }

LABEL_325:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
LABEL_396:
    v1326 = CVPixelBufferGetPixelFormatType(pixelBuffer);
    PixelBufferUtils::pixelFormatAsString(v1326, &v1595);
    if ((v1595.width & 0x8000000000000000) == 0)
    {
      v1327 = &v1595;
    }

    else
    {
      v1327 = v1595.data;
    }

    LODWORD(buf.data) = 136315138;
    *(&buf.data + 4) = v1327;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "illegal output pixel format in reprojection: %s", &buf, 0xCu);
    if (SHIBYTE(v1595.width) < 0)
    {
      operator delete(v1595.data);
    }
  }

  return -22950;
}

void std::__tree<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::__map_value_compare<std::string,std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::__map_value_compare<std::string,std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::__map_value_compare<std::string,std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::__map_value_compare<std::string,std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::__map_value_compare<std::string,std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::__map_value_compare<std::string,std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::__map_value_compare<std::string,std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CA5F48, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_240482C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  operator delete(v17);
  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void Node::~Node(Node *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        MEMORY[0x245CC10E0](*v3, 0x1020C40CBED515FLL);
        v2 = *(this + 3);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(this + 2);
  }

  *(this + 3) = v3;
  if (v3)
  {
    operator delete(v3);
  }
}

void *std::__split_buffer<Node **>::emplace_back<Node **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Node **>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Node **>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Element *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__tree<Element *,Element::ElementCompare,std::allocator<Element *>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<Element *,Element::ElementCompare,std::allocator<Element *>>::destroy(*a1);
    std::__tree<Element *,Element::ElementCompare,std::allocator<Element *>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

id getPropertyType(objc_property *a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getAttributes(a1)];
  v2 = [v1 componentsSeparatedByString:{@", "}];
  v3 = [v2 objectAtIndex:0];

  v4 = [v3 substringFromIndex:1];

  return v4;
}

BOOL isPropertyDerivedFromClass(objc_property *a1, objc_class *a2)
{
  v3 = getPropertyType(a1);
  v4 = [v3 stringByReplacingOccurrencesOfString:@"@" withString:&stru_28524BA50];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"" withString:&stru_28524BA50];

    ;
  }

  v7 = i != 0;

  return v7;
}

uint64_t propertyTypeMatch(uint64_t a1, uint64_t a2)
{
  v2 = (a1 - 5) <= 2 && (a2 - 5) < 3;
  if ((a1 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v2 = (a2 & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  return a1 == a2 || v2;
}

uint64_t propertyOptionType(objc_property *a1)
{
  v1 = getPropertyType(a1);
  if ([v1 isEqualToString:@"f"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"@NSString"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"@NSArray"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"q"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"I"))
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"c"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"B"))
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Q"])
  {
    v2 = 0;
  }

  else
  {
    printf("ADArgumentParser Error: cannot find matching type for %s.\n", [v1 UTF8String]);
    v2 = 9;
  }

  return v2;
}

void getDocoptValueFromMap(void *a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v5 = a1;
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v8 = *(a2 + 8);
  v6 = a2 + 8;
  v7 = v8;
  v9 = v31;
  if (!v8)
  {
    goto LABEL_40;
  }

  v10 = (v31 & 0x80u) == 0 ? v31 : __p[1];
  v11 = (v31 & 0x80u) == 0 ? __p : __p[0];
  v12 = v6;
  do
  {
    v13 = *(v7 + 55);
    if (v13 >= 0)
    {
      v14 = *(v7 + 55);
    }

    else
    {
      v14 = *(v7 + 40);
    }

    if (v13 >= 0)
    {
      v15 = (v7 + 32);
    }

    else
    {
      v15 = *(v7 + 32);
    }

    if (v10 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v10;
    }

    v17 = memcmp(v15, v11, v16);
    v18 = v14 < v10;
    if (v17)
    {
      v18 = v17 < 0;
    }

    v19 = !v18;
    if (v18)
    {
      v20 = 8;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v12 = v7;
    }

    v7 = *(v7 + v20);
  }

  while (v7);
  if (v12 == v6)
  {
    goto LABEL_40;
  }

  v21 = *(v12 + 55);
  if (v21 >= 0)
  {
    v22 = *(v12 + 55);
  }

  else
  {
    v22 = *(v12 + 40);
  }

  if (v21 >= 0)
  {
    v23 = (v12 + 32);
  }

  else
  {
    v23 = *(v12 + 32);
  }

  if (v22 >= v10)
  {
    v24 = v10;
  }

  else
  {
    v24 = v22;
  }

  v25 = memcmp(v11, v23, v24);
  v26 = v10 < v22;
  if (v25)
  {
    v26 = v25 < 0;
  }

  if (v26)
  {
LABEL_40:
    v12 = v6;
  }

  if ((v9 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  if (v6 == v12)
  {
    *a3 = 0;
  }

  else
  {
    v27 = *(v12 + 56);
    *a3 = v27;
    v28 = (a3 + 2);
    if (v27 > 2)
    {
      if (v27 == 4)
      {
        v28->__r_.__value_.__r.__words[0] = 0;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v28, *(v12 + 64), *(v12 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(v12 + 72) - *(v12 + 64)) >> 3));
      }

      else if (v27 == 3)
      {
        if (*(v12 + 87) < 0)
        {
          std::string::__init_copy_ctor_external(v28, *(v12 + 64), *(v12 + 72));
        }

        else
        {
          v29 = *(v12 + 64);
          v28->__r_.__value_.__r.__words[2] = *(v12 + 80);
          *&v28->__r_.__value_.__l.__data_ = v29;
        }
      }
    }

    else if (v27 == 1)
    {
      v28->__r_.__value_.__s.__data_[0] = *(v12 + 64);
    }

    else if (v27 == 2)
    {
      v28->__r_.__value_.__r.__words[0] = *(v12 + 64);
    }
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2);
  }

  std::vector<Element *>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t setProperty(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = *a4;
  if (!*a4)
  {
    goto LABEL_83;
  }

  if (a3 > 2)
  {
    if (a3 == 4)
    {
      v20 = MEMORY[0x277CCACA8];
      docopt::value::throwIfNotKind(a4, 3);
      v21 = (a4 + 8);
      if (*(a4 + 31) < 0)
      {
        v21 = *v21;
      }

      v18 = [v20 stringWithUTF8String:v21];
      if ([v18 isEqualToString:@"(null)"])
      {

        v18 = 0;
      }

      [v9 setValue:v18 forKey:v10];
      goto LABEL_82;
    }

    if (a3 == 3)
    {
      docopt::value::throwIfNotKind(a4, 3);
      *&v17 = std::stof((a4 + 8), 0);
      v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
      [v9 setValue:v18 forKey:v10];
      goto LABEL_82;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v19 = MEMORY[0x277CCABB0];
      docopt::value::throwIfNotKind(a4, 1);
      v18 = [v19 numberWithInteger:*(a4 + 8)];
      [v9 setValue:v18 forKey:v10];
      goto LABEL_82;
    }

    if (a3 == 2)
    {
      v13 = MEMORY[0x277CCABB0];
      if (v12 == 3)
      {
        __idx.__r_.__value_.__r.__words[0] = 0;
        v14 = std::stol((a4 + 8), &__idx, 10);
        v15 = *(a4 + 31);
        if (v15 < 0)
        {
          v15 = *(a4 + 16);
        }

        if (__idx.__r_.__value_.__r.__words[0] != v15)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, (a4 + 8));
          MEMORY[0x245CC0E70](exception, &__dst);
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      else
      {
        docopt::value::throwIfNotKind(a4, 2);
        v14 = *(a4 + 8);
      }

      v18 = [v13 numberWithInteger:v14];
      [v9 setValue:v18 forKey:v10];
      goto LABEL_82;
    }
  }

  if ((a3 - 5) <= 1)
  {
    v41 = *a4;
    if (v12 > 2)
    {
      if (v12 == 4)
      {
        memset(&__p, 0, sizeof(__p));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__p, *(a4 + 8), *(a4 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 16) - *(a4 + 8)) >> 3));
      }

      else if (v12 == 3)
      {
        if (*(a4 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(a4 + 8), *(a4 + 16));
        }

        else
        {
          __p = *(a4 + 8);
        }
      }
    }

    else if (v12 == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = *(a4 + 8);
    }

    else if (v12 == 2)
    {
      __p.__r_.__value_.__r.__words[0] = *(a4 + 8);
    }

    docopt::value::throwIfNotKind(&v41, 4);
    __dst = 0;
    v45 = 0;
    v46 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3));
    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v45 - __dst) >> 3)];
    p_data = &__dst->__r_.__value_.__l.__data_;
    v29 = &v45->__r_.__value_.__l.__data_;
    if (__dst != v45)
    {
      do
      {
        if (*(p_data + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__idx, *p_data, p_data[1]);
        }

        else
        {
          v30 = *p_data;
          __idx.__r_.__value_.__r.__words[2] = p_data[2];
          *&__idx.__r_.__value_.__l.__data_ = v30;
        }

        *&v31 = std::stof(&__idx, 0);
        v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
        [v18 addObject:v32];

        if (SHIBYTE(__idx.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__idx.__r_.__value_.__l.__data_);
        }

        p_data += 3;
      }

      while (p_data != v29);
    }

    __idx.__r_.__value_.__r.__words[0] = &__dst;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__idx);
    if (v41 == 4)
    {
      __dst = &__p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__dst);
    }

    else if (v41 == 3 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    [v9 setValue:v18 forKey:v10];
    goto LABEL_82;
  }

  if (!a3)
  {
    v22 = MEMORY[0x277CCACA8];
    docopt::value::throwIfNotKind(a4, 3);
    v23 = (a4 + 8);
    if (*(a4 + 31) < 0)
    {
      v23 = *v23;
    }

    v18 = [v22 stringWithUTF8String:v23];
    v24 = [v11 objectForKeyedSubscript:v18];
    v25 = v24;
    if (!v24)
    {
      printf("ADArgumentParser Error: %s is not a legal option for %s\n", [v18 UTF8String], objc_msgSend(v10, "UTF8String"));

      goto LABEL_48;
    }

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v24, "integerValue")}];
    [v9 setValue:v26 forKey:v10];

LABEL_82:
LABEL_83:
    v27 = 1;
    goto LABEL_84;
  }

  if (a3 == 7)
  {
    v39 = *a4;
    if (v12 > 2)
    {
      if (v12 == 4)
      {
        memset(&v40, 0, sizeof(v40));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v40, *(a4 + 8), *(a4 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 16) - *(a4 + 8)) >> 3));
      }

      else if (v12 == 3)
      {
        if (*(a4 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v40, *(a4 + 8), *(a4 + 16));
        }

        else
        {
          v40 = *(a4 + 8);
        }
      }
    }

    else if (v12 == 1)
    {
      v40.__r_.__value_.__s.__data_[0] = *(a4 + 8);
    }

    else if (v12 == 2)
    {
      v40.__r_.__value_.__r.__words[0] = *(a4 + 8);
    }

    docopt::value::throwIfNotKind(&v39, 4);
    __dst = 0;
    v45 = 0;
    v46 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__dst, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v40.__r_.__value_.__l.__size_ - v40.__r_.__value_.__r.__words[0]) >> 3));
    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v45 - __dst) >> 3)];
    v33 = &__dst->__r_.__value_.__l.__data_;
    v34 = &v45->__r_.__value_.__l.__data_;
    if (__dst != v45)
    {
      do
      {
        if (*(v33 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__idx, *v33, v33[1]);
        }

        else
        {
          v35 = *v33;
          __idx.__r_.__value_.__r.__words[2] = v33[2];
          *&__idx.__r_.__value_.__l.__data_ = v35;
        }

        if ((__idx.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_idx = &__idx;
        }

        else
        {
          p_idx = __idx.__r_.__value_.__r.__words[0];
        }

        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_idx];
        [v18 addObject:v37];

        if (SHIBYTE(__idx.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__idx.__r_.__value_.__l.__data_);
        }

        v33 += 3;
      }

      while (v33 != v34);
    }

    __idx.__r_.__value_.__r.__words[0] = &__dst;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__idx);
    if (v39 == 4)
    {
      __dst = &v40;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__dst);
    }

    else if (v39 == 3 && SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    [v9 setValue:v18 forKey:v10];
    goto LABEL_82;
  }

  printf("ADArgumentParser Error: cannot find matching for option %s of type %lu", [v10 UTF8String], a3);
LABEL_48:
  v27 = 0;
LABEL_84:

  return v27;
}

void sub_240484CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2 == 1)
  {
    __cxa_get_exception_ptr(a1);
    a12.__vftable = (MEMORY[0x277D82920] + 16);
    __cxa_begin_catch(a1);
    puts("encountered error during argument parsing. user input does not match expected argument type");
    std::exception::~exception(&a12);
    __cxa_end_catch();
    JUMPOUT(0x2404849E8);
  }

  _Unwind_Resume(a1);
}

unsigned int *docopt::value::throwIfNotKind(unsigned int *result, int a2)
{
  if (*result != a2)
  {
    v3 = result;
    std::string::basic_string[abi:ne200100]<0>(&v7, "Illegal cast to ");
    std::string::append(&v7, off_278CA5F50[a2]);
    std::string::append(&v7, "; type is actually ");
    v4 = *v3;
    if (v4 > 4)
    {
      v5 = "unknown";
    }

    else
    {
      v5 = off_278CA5F50[v4];
    }

    std::string::append(&v7, v5);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CC0E70](exception, &v7);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_240484F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void docopt::value::~value(void **this)
{
  if (*this == 4)
  {
    v1 = this + 1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v1);
  }

  else if (*this == 3 && *(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *__dst, void *a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = v3 + 33;
  if (v3 + 33 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  __dst[1] = 0;
  __dst[2] = 0;
  *__dst = 0;
  *(__dst + 23) = v4;
  if ((v2 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  result = memmove(__dst, a2, v3);
  strcpy(__dst + v3, " contains non-numeric characters.");
  return result;
}

void ADJasperPerformanceOverride::ADJasperPerformanceOverride(ADJasperPerformanceOverride *this)
{
  *this = 0u;
  *(this + 1) = 0u;
}

{
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t ADJasperPerformanceOverride::getInstance(ADJasperPerformanceOverride *this)
{
  if (ADJasperPerformanceOverride::getInstance(void)::once[0] != -1)
  {
    dispatch_once(ADJasperPerformanceOverride::getInstance(void)::once, &__block_literal_global);
  }

  return ADJasperPerformanceOverride::getInstance(void)::singleton;
}

void sub_2404852B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___ZL43registerJasperPointCloudConfigurationUpdateP27ADJasperPerformanceOverride_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:kADCoreDeviceConfigurationKeyJasperPerformanceOverridePath])
  {
    v4 = +[ADCoreDeviceConfiguration sharedConfiguration];
    v5 = [v4 stringForKey:v3];

    v6 = *(a1 + 32);
    if (!v5)
    {
      v10 = *v6;
      *v6 = 0;
      if (v10)
      {
        MEMORY[0x245CC10E0](v10, 0x1000C405A239322);
      }

      v5 = 0;
      goto LABEL_14;
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, [v5 UTF8String]);
    ADJasperPerformanceOverride::initFromCsv(v6, &__str);
LABEL_12:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

LABEL_14:

    goto LABEL_15;
  }

  if ([v3 isEqualToString:kADCoreDeviceConfigurationKeyJasperPerformanceEmulatedDevice])
  {
    v7 = +[ADCoreDeviceConfiguration sharedConfiguration];
    v5 = [v7 stringForKey:v3];

    v8 = *(a1 + 32);
    if (v5)
    {
      v9 = [v5 UTF8String];
    }

    else
    {
      v9 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, v9);
    std::string::operator=((v8 + 8), &__str);
    goto LABEL_12;
  }

LABEL_15:
}

void sub_240485438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ADJasperPerformanceOverride::initFromCsv(uint64_t *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    MEMORY[0x245CC10E0](v4, 0x1000C405A239322);
  }

  v10 = a2;
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (!stat(v5, &v11))
  {
    v6 = MEMORY[0x277CCACA8];
    if (*(v10 + 23) >= 0)
    {
      v7 = v10;
    }

    else
    {
      v7 = *v10;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    v9 = [v6 stringWithContentsOfFile:v8 encoding:4 error:0];

    [v9 componentsSeparatedByString:@"\n"];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "illegal PerformanceOverride csv path", buf, 2u);
  }
}

BOOL ADJasperPerformanceOverride::getOverrides(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  result = a2 < 8 && a3 < 0x90;
  if (result)
  {
    v7 = *a1 + 1728 * a2 + 12 * a3;
    v8 = *v7;
    *(a4 + 8) = *(v7 + 8);
    *a4 = v8;
  }

  return result;
}

uint64_t ADJasperPerformanceOverride::resetOverrides(ADJasperPerformanceOverride *this)
{
  result = *this;
  *this = 0;
  if (result)
  {
    JUMPOUT(0x245CC10E0);
  }

  return result;
}

void sub_2404863E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2404869C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22)
{
  __cxa_end_catch();
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v24 = *v22;
  if (*v22)
  {
    *(v22 + 8) = v24;
    operator delete(v24);
  }

  std::ifstream::~ifstream(&a22);
  MEMORY[0x245CC1080](a10);

  _Unwind_Resume(a1);
}

void std::vector<float>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<Element *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x277D82808];
  v2 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x245CC0F60](a1 + 2);

  return std::istream::~istream();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float compareRawBuffers<float,float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, char a7, char a8, float a9)
{
  if (a9 <= 0.0 || a9 > 1.0)
  {
    NSLog(&cfstr_CannotCompareW.isa, a9);
    return 1.0e17;
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (a6)
  {
    LODWORD(v18) = 0;
    while (!a5)
    {
LABEL_18:
      v18 = (v18 + 1);
      if (v18 >= a6)
      {
        v24 = v34;
        v23 = v35;
        goto LABEL_21;
      }
    }

    v19 = 0;
    while (1)
    {
      v20 = *(a1 + a2 * v18 + 4 * v19);
      v21 = *(a3 + a4 * v18 + 4 * v19);
      if (v20 == 0.0 && (a7 & 1) != 0)
      {
        goto LABEL_17;
      }

      if (v21 != 0.0)
      {
        break;
      }

      if ((a8 & 1) == 0)
      {
        v22 = v20 / 0.0001;
        goto LABEL_16;
      }

LABEL_17:
      if (a5 <= ++v19)
      {
        goto LABEL_18;
      }
    }

    v22 = (v21 - v20) / v21;
LABEL_16:
    v33 = fabsf(v22);
    std::vector<float>::push_back[abi:ne200100](&v34, &v33);
    goto LABEL_17;
  }

  v24 = 0;
  v23 = 0;
LABEL_21:
  v25 = (((v23 - v24) >> 2) * a9);
  if (v25 <= 0)
  {
    v11 = 1.0e17;
    if (!v24)
    {
      return v11;
    }
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    if (v25 == 1)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = 0.0;
      v27 = v24;
      v28 = (v25 - 1);
      do
      {
        v29 = *v27++;
        v26 = v26 + v29;
        --v28;
      }

      while (v28);
    }

    v11 = (v26 / (v25 - 1)) * 100.0;
  }

  operator delete(v24);
  return v11;
}

void sub_24048763C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float compareRawBuffers<half,half>(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, char a8, char a9)
{
  if (a1 <= 0.0 || a1 > 1.0)
  {
    NSLog(&cfstr_CannotCompareW.isa, a1);
    return 1.0e17;
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  if (a7)
  {
    LODWORD(v16) = 0;
    while (!a6)
    {
LABEL_19:
      v16 = (v16 + 1);
      if (v16 >= a7)
      {
        v29 = v37;
        v28 = v38;
        goto LABEL_22;
      }
    }

    v17 = 0;
    while (1)
    {
      __asm { FCMP            H0, #0 }

      if (_ZF && (a8 & 1) != 0)
      {
        goto LABEL_18;
      }

      __asm { FCMP            H1, #0 }

      if (!_ZF)
      {
        break;
      }

      if ((a9 & 1) == 0)
      {
        __asm { FCVT            D0, H0 }

        v26 = _D0 / 0.0001;
        goto LABEL_17;
      }

LABEL_18:
      if (a6 <= ++v17)
      {
        goto LABEL_19;
      }
    }

    __asm
    {
      FCVT            S0, H0
      FCVT            S1, H1
    }

    v26 = (_S1 - _S0) / _S1;
LABEL_17:
    v36 = fabsf(v26);
    std::vector<float>::push_back[abi:ne200100](&v37, &v36);
    goto LABEL_18;
  }

  v29 = 0;
  v28 = 0;
LABEL_22:
  v30 = (((v28 - v29) >> 2) * a1);
  if (v30 <= 0)
  {
    v11 = 1.0e17;
    if (!v29)
    {
      return v11;
    }
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    if (v30 == 1)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = 0.0;
      v32 = v29;
      v33 = (v30 - 1);
      do
      {
        v34 = *v32++;
        v31 = v31 + v34;
        --v33;
      }

      while (v33);
    }

    v11 = (v31 / (v30 - 1)) * 100.0;
  }

  operator delete(v29);
  return v11;
}

void sub_2404878CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240488674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t isF16Type(int a1)
{
  result = 1;
  if (a1 > 1751410031)
  {
    if (a1 != 1751410032 && a1 != 1751411059)
    {
      v3 = 1919365992;
LABEL_8:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else if (a1 != 843264104 && a1 != 1278226536)
  {
    v3 = 1380411457;
    goto LABEL_8;
  }

  return result;
}

float compareRawBuffers<half,float>(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, char a8, char a9)
{
  if (a1 <= 0.0 || a1 > 1.0)
  {
    NSLog(&cfstr_CannotCompareW.isa, a1);
    return 1.0e17;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (a7)
  {
    LODWORD(v16) = 0;
    while (!a6)
    {
LABEL_19:
      v16 = (v16 + 1);
      if (v16 >= a7)
      {
        v28 = v38;
        v27 = v39;
        goto LABEL_22;
      }
    }

    v17 = 0;
    while (1)
    {
      v18 = *(a4 + a5 * v16 + 4 * v17);
      __asm { FCMP            H0, #0 }

      if (_ZF && (a8 & 1) != 0)
      {
        goto LABEL_18;
      }

      if (v18 != 0.0)
      {
        break;
      }

      if ((a9 & 1) == 0)
      {
        __asm { FCVT            D0, H0 }

        v25 = _D0 / 0.0001;
        goto LABEL_17;
      }

LABEL_18:
      if (a6 <= ++v17)
      {
        goto LABEL_19;
      }
    }

    __asm { FCVT            S0, H0 }

    v25 = (v18 - _S0) / v18;
LABEL_17:
    v37 = fabsf(v25);
    std::vector<float>::push_back[abi:ne200100](&v38, &v37);
    goto LABEL_18;
  }

  v28 = 0;
  v27 = 0;
LABEL_22:
  v29 = (((v27 - v28) >> 2) * a1);
  if (v29 <= 0)
  {
    v11 = 1.0e17;
    if (!v28)
    {
      return v11;
    }
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    if (v29 == 1)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 0.0;
      v31 = v28;
      v32 = (v29 - 1);
      do
      {
        v33 = *v31++;
        v30 = v30 + v33;
        --v32;
      }

      while (v32);
    }

    v11 = (v30 / (v29 - 1)) * 100.0;
  }

  operator delete(v28);
  return v11;
}

void sub_240488998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float compareRawBuffers<unsigned char,unsigned char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, char a7, char a8, float a9)
{
  if (a9 <= 0.0 || a9 > 1.0)
  {
    NSLog(&cfstr_CannotCompareW.isa, a9);
    return 1.0e17;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (a6)
  {
    LODWORD(v18) = 0;
    while (!a5)
    {
LABEL_18:
      v18 = (v18 + 1);
      if (v18 >= a6)
      {
        v25 = v35;
        v24 = v36;
        goto LABEL_21;
      }
    }

    v19 = 0;
    v20 = a1 + a2 * v18;
    while (1)
    {
      v22 = *(v20 + v19);
      v21 = a3 + a4 * v18;
      if (!*(v20 + v19) && (a7 & 1) != 0)
      {
        goto LABEL_17;
      }

      if (*(v21 + v19))
      {
        break;
      }

      if ((a8 & 1) == 0)
      {
        v23 = v22 / 0.0001;
        goto LABEL_16;
      }

LABEL_17:
      if (a5 <= ++v19)
      {
        goto LABEL_18;
      }
    }

    v23 = fabsf((*(v21 + v19) - v22) / *(v21 + v19));
LABEL_16:
    v34 = v23;
    std::vector<float>::push_back[abi:ne200100](&v35, &v34);
    goto LABEL_17;
  }

  v25 = 0;
  v24 = 0;
LABEL_21:
  v26 = (((v24 - v25) >> 2) * a9);
  if (v26 <= 0)
  {
    v11 = 1.0e17;
    if (!v25)
    {
      return v11;
    }
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    if (v26 == 1)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = 0.0;
      v28 = v25;
      v29 = (v26 - 1);
      do
      {
        v30 = *v28++;
        v27 = v27 + v30;
        --v29;
      }

      while (v29);
    }

    v11 = (v27 / (v26 - 1)) * 100.0;
  }

  operator delete(v25);
  return v11;
}

void sub_240488BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

float compareRawBuffers<unsigned short,unsigned short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, char a7, char a8, float a9)
{
  if (a9 <= 0.0 || a9 > 1.0)
  {
    NSLog(&cfstr_CannotCompareW.isa, a9);
    return 1.0e17;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (a6)
  {
    LODWORD(v18) = 0;
    while (!a5)
    {
LABEL_18:
      v18 = (v18 + 1);
      if (v18 >= a6)
      {
        v25 = v35;
        v24 = v36;
        goto LABEL_21;
      }
    }

    v19 = 0;
    v20 = a1 + a2 * v18;
    while (1)
    {
      v22 = *(v20 + 2 * v19);
      v21 = a3 + a4 * v18;
      if (!*(v20 + 2 * v19) && (a7 & 1) != 0)
      {
        goto LABEL_17;
      }

      if (*(v21 + 2 * v19))
      {
        break;
      }

      if ((a8 & 1) == 0)
      {
        v23 = v22 / 0.0001;
        goto LABEL_16;
      }

LABEL_17:
      if (a5 <= ++v19)
      {
        goto LABEL_18;
      }
    }

    v23 = fabsf((*(v21 + 2 * v19) - v22) / *(v21 + 2 * v19));
LABEL_16:
    v34 = v23;
    std::vector<float>::push_back[abi:ne200100](&v35, &v34);
    goto LABEL_17;
  }

  v25 = 0;
  v24 = 0;
LABEL_21:
  v26 = (((v24 - v25) >> 2) * a9);
  if (v26 <= 0)
  {
    v11 = 1.0e17;
    if (!v25)
    {
      return v11;
    }
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    if (v26 == 1)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = 0.0;
      v28 = v25;
      v29 = (v26 - 1);
      do
      {
        v30 = *v28++;
        v27 = v27 + v30;
        --v29;
      }

      while (v29);
    }

    v11 = (v27 / (v26 - 1)) * 100.0;
  }

  operator delete(v25);
  return v11;
}

void sub_240488E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_24048916C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  docopt::value::~value(va);

  _Unwind_Resume(a1);
}

void *std::map<std::string,docopt::value>::map[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v6 = a1[1];
      v7 = v3;
      if (*a1 == v3)
      {
        goto LABEL_44;
      }

      v8 = a1[1];
      v9 = v3;
      if (v6)
      {
        do
        {
          v7 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = v9[2];
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      if (std::__map_value_compare<std::string,std::__value_type<std::string,docopt::value>,std::less<std::string>,true>::operator()[abi:ne200100](v7 + 4, v5 + 4))
      {
LABEL_44:
        if (!v6 || !v7[1])
        {
LABEL_34:
          operator new();
        }
      }

      else
      {
        if (!v6)
        {
          goto LABEL_34;
        }

        v11 = *(v5 + 55);
        if (v11 >= 0)
        {
          v12 = *(v5 + 55);
        }

        else
        {
          v12 = v5[5];
        }

        if (v11 >= 0)
        {
          v13 = v5 + 4;
        }

        else
        {
          v13 = v5[4];
        }

        while (1)
        {
          while (1)
          {
            v14 = v6;
            v16 = (v6 + 32);
            v15 = *(v6 + 32);
            v17 = *(v6 + 55);
            if (v17 >= 0)
            {
              v18 = *(v6 + 55);
            }

            else
            {
              v18 = *(v6 + 40);
            }

            if (v17 >= 0)
            {
              v19 = v16;
            }

            else
            {
              v19 = v15;
            }

            if (v18 >= v12)
            {
              v20 = v12;
            }

            else
            {
              v20 = v18;
            }

            v21 = memcmp(v13, v19, v20);
            v22 = v12 < v18;
            if (v21)
            {
              v22 = v21 < 0;
            }

            if (!v22)
            {
              break;
            }

            v6 = *v14;
            if (!*v14)
            {
              goto LABEL_34;
            }
          }

          if (!std::__map_value_compare<std::string,std::__value_type<std::string,docopt::value>,std::less<std::string>,true>::operator()[abi:ne200100](v16, v5 + 4))
          {
            break;
          }

          v6 = v14[1];
          if (!v6)
          {
            goto LABEL_34;
          }
        }
      }

      v23 = v5[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v5[2];
          v10 = *v24 == v5;
          v5 = v24;
        }

        while (!v10);
      }

      v5 = v24;
    }

    while (v24 != v4);
  }

  return a1;
}

void sub_240489480(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,docopt::value>,void *>>>::operator()[abi:ne200100](0, v1);
  std::__tree<std::__value_type<std::string,docopt::value>,std::__map_value_compare<std::string,std::__value_type<std::string,docopt::value>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,docopt::value>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,docopt::value>,std::__map_value_compare<std::string,std::__value_type<std::string,docopt::value>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,docopt::value>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,docopt::value>,std::__map_value_compare<std::string,std::__value_type<std::string,docopt::value>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,docopt::value>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,docopt::value>,std::__map_value_compare<std::string,std::__value_type<std::string,docopt::value>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,docopt::value>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 14);
    if (v2 == 4)
    {
      v3 = (a1 + 64);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    }

    else if (v2 == 3 && a1[87] < 0)
    {
      operator delete(*(a1 + 8));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,docopt::value>,void *>>>::operator()[abi:ne200100](char a1, char *__p)
{
  if (a1)
  {
    v3 = *(__p + 14);
    if (v3 == 4)
    {
      v4 = (__p + 64);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    }

    else if (v3 == 3 && __p[87] < 0)
    {
      operator delete(*(__p + 8));
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,docopt::value>,std::less<std::string>,true>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void sub_24048AD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  std::__tree<Element *,Element::ElementCompare,std::allocator<Element *>>::destroy(a12);

  _Unwind_Resume(a1);
}

CFTypeRef PixelBufferUtils::copyAttachment(PixelBufferUtils *this, const __CFString *a2, CVAttachmentMode *a3, CVAttachmentMode *a4)
{
  v4 = 0;
  if (this)
  {
    if (a2)
    {
      Attachment = CVBufferGetAttachment(this, a2, a3);
      v4 = Attachment;
      if (Attachment)
      {
        CFRetain(Attachment);
      }
    }
  }

  return v4;
}

CFDictionaryRef PixelBufferUtils::copyAttachments(PixelBufferUtils *this, __CVBuffer *a2, CVAttachmentMode a3)
{
  if (!this)
  {
    return 0;
  }

  Attachments = CVBufferGetAttachments(this, a2);
  v4 = Attachments;
  if (Attachments)
  {
    CFRetain(Attachments);
  }

  return v4;
}

_BYTE *PixelBufferUtils::pixelFormatAsString@<X0>(PixelBufferUtils *this@<X0>, char *a2@<X8>)
{
  if (this == 32)
  {
    v4 = "ARGB";
    goto LABEL_5;
  }

  if (this == 24)
  {
    v4 = "24RG";
LABEL_5:

    return std::string::basic_string[abi:ne200100]<0>(a2, v4);
  }

  __s[0] = BYTE3(this);
  __s[1] = BYTE2(this);
  __s[2] = BYTE1(this);
  __s[3] = this;
  __s[4] = 0;
  result = std::string::basic_string[abi:ne200100]<0>(a2, __s);
  if (a2[23] >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (*v6 <= 31)
  {
    v45[6] = 0;
    v7 = MEMORY[0x277D82890] + 104;
    v45[0] = MEMORY[0x277D82890] + 104;
    v8 = MEMORY[0x277D82890] + 64;
    v36 = MEMORY[0x277D82890] + 64;
    v9 = MEMORY[0x277D82818];
    v10 = *(MEMORY[0x277D82818] + 24);
    *__s = *(MEMORY[0x277D82818] + 16);
    *&__s[*(*__s - 24)] = v10;
    v35 = 0;
    v11 = &__s[*(*__s - 24)];
    std::ios_base::init(v11, &v37);
    v12 = MEMORY[0x277D82890] + 24;
    v11[1].__vftable = 0;
    v11[1].__fmtflags_ = -1;
    v13 = v9[5];
    v36 = v9[4];
    *(&v36 + *(v36 - 24)) = v13;
    *__s = v9[1];
    *&__s[*(*__s - 24)] = v9[6];
    v45[0] = v7;
    *__s = v12;
    v14 = MEMORY[0x277D82868] + 16;
    v36 = v8;
    v37 = MEMORY[0x277D82868] + 16;
    MEMORY[0x245CC1030](v38);
    v41 = 0u;
    v15 = MEMORY[0x277D82878] + 16;
    memset(&__p, 0, sizeof(__p));
    v44 = 24;
    p_p = &__p;
    v37 = MEMORY[0x277D82878] + 16;
    v38[1].__locale_ = &__p;
    v39 = &__p;
    v40 = &__p;
    std::string::resize(&__p, 0x16uLL, 0);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    *(&v40 + 1) = &__p;
    *&v41 = &__p;
    *(&v41 + 1) = &__p + size;
    MEMORY[0x245CC0F90](&v32, &v36);
    if (v32 == 1)
    {
      v31 = v14;
      v17 = &v36 + *(v36 - 24);
      v18 = *(v17 + 5);
      v19 = *(v17 + 2);
      v20 = *(v17 + 36);
      if (v20 == -1)
      {
        std::ios_base::getloc((&v36 + *(v36 - 24)));
        v21 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
        v20 = (v21->__vftable[2].~facet_0)(v21, 32);
        std::locale::~locale(&__b);
        *(v17 + 36) = v20;
      }

      if ((v19 & 0xB0) == 0x20)
      {
        v22 = "";
      }

      else
      {
        v22 = "0x";
      }

      if (!v18)
      {
        goto LABEL_40;
      }

      v23 = *(v17 + 3);
      v24 = v23 <= 2;
      v25 = v23 - 2;
      v26 = v24 ? 0 : v25;
      if (v22 - "0x" >= 1 && (*(*v18 + 96))(v18, "0x", v22 - "0x") != v22 - "0x")
      {
        goto LABEL_40;
      }

      if (v26 >= 1)
      {
        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v26 >= 0x17)
        {
          operator new();
        }

        v47 = v26;
        memset(&__b, v20, v26);
        *(&__b.__locale_ + v26) = 0;
        if (v47 >= 0)
        {
          p_b = &__b;
        }

        else
        {
          p_b = __b.__locale_;
        }

        v28 = (*(*v18 + 96))(v18, p_b, v26);
        if (v47 < 0)
        {
          operator delete(__b.__locale_);
        }

        if (v28 != v26)
        {
          goto LABEL_40;
        }
      }

      v29 = "0x" - v22 + 2;
      if (v29 < 1 || (*(*v18 + 96))(v18, v22, "0x" - v22 + 2) == v29)
      {
        *(v17 + 3) = 0;
        v14 = v31;
        v9 = MEMORY[0x277D82818];
      }

      else
      {
LABEL_40:
        v14 = v31;
        v9 = MEMORY[0x277D82818];
        std::ios_base::clear((&v36 + *(v36 - 24)), *(&v39 + *(v36 - 24)) | 5);
      }
    }

    MEMORY[0x245CC0FA0](&v32);
    *(&v36 + *(v36 - 24) + 8) = *(&v36 + *(v36 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x245CC0FB0](&v36, this);
    std::stringbuf::str();
    if (a2[23] < 0)
    {
      operator delete(*a2);
    }

    *a2 = v32;
    *(a2 + 2) = v33;
    *__s = *v9;
    v30 = v9[9];
    *&__s[*(*__s - 24)] = v9[8];
    v36 = v30;
    v37 = v15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v37 = v14;
    std::locale::~locale(v38);
    std::iostream::~basic_iostream();
    return MEMORY[0x245CC1080](v45);
  }

  return result;
}

void sub_24048BB2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
  }

  MEMORY[0x245CC0FA0](&a15);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v20 + *(a20 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x24048B9B8);
}

void sub_24048BBCC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a22);
  std::iostream::~basic_iostream();
  JUMPOUT(0x24048BC20);
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

_BYTE *PixelBufferUtils::pixelFormatAsFileExtension@<X0>(PixelBufferUtils *this@<X0>, uint64_t a2@<X8>)
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

  if (v9)
  {
    do
    {
      if (*v8 == 47)
      {
        *v8 = 58;
      }

      ++v8;
      --v9;
    }

    while (v9);
    v4 = *(a2 + 23);
    v6 = *a2;
    v7 = *(a2 + 8);
    v5 = *(a2 + 23);
  }

  if (v5 < 0)
  {
    v4 = v7;
  }

  else
  {
    v6 = a2;
  }

  for (; v4; --v4)
  {
    if (*v6 == 46)
    {
      *v6 = 95;
    }

    ++v6;
  }

  return result;
}

uint64_t PixelBufferUtils::pixelFormatFromFileExtension(PixelBufferUtils *this, const char *a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  if (([v2 isEqualToString:&stru_28524BA50] & 1) != 0 || objc_msgSend(v2, "length") != 4)
  {
    v7 = 0;
  }

  else
  {
    v3 = [v2 stringByReplacingOccurrencesOfString:@":" withString:@"/"];

    v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"."];

    v2 = v4;
    v5 = [v4 UTF8String];
    v7 = PixelBufferUtils::pixelFormatFromString(v5, v6);
  }

  return v7;
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
            goto LABEL_41;
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

      v5 = 1647392359;
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

      v5 = 1932996149;
    }

    else
    {
      if (this == 1717855600 || this == 1717856627)
      {
        return 4;
      }

      v5 = 1751410032;
    }

LABEL_33:
    if (this != v5)
    {
      goto LABEL_41;
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
          v4 = 875704422;
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

    v5 = 825306677;
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

      goto LABEL_41;
    }

    return 4;
  }

  if (this == 875704438 || this == 875836518)
  {
    goto LABEL_17;
  }

  v4 = 875836534;
LABEL_16:
  if (this == v4)
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

LABEL_41:
  v8 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (PixelBufferUtils::planeCountForPixelFormat(this))
  {
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
    v10 = [v9 objectAtIndexedSubscript:a2];

    v8 = v10;
  }

  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CC4ED0]];
  v12 = v11;
  if (v11)
  {
    [v11 floatValue];
    v6 = vcvtps_u32_f32(v13 * 0.125);
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

  return v6;
}

void sub_24048C480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}