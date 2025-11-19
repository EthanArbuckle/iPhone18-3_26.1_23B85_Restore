__n128 stringToColor(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 componentsSeparatedByString:{@", "}];
    v17 = 0u;
    if ([v5 count] == &dword_0 + 3)
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      [v6 floatValue];
      v18 = v7;

      v8 = [v5 objectAtIndexedSubscript:1];
      [v8 floatValue];
      if (a2)
      {
        v16 = v9;

        v10 = [v5 objectAtIndexedSubscript:{2, v16}];
        [v10 floatValue];

        v11 = NTKColorWithRGBA();
        CLKUIConvertToRGBfFromUIColor();
        v17 = v12;
      }

      else
      {
        *&v9 = vdiv_f32(__PAIR64__(v9, v18), vdup_n_s32(0x437F0000u));
        v19 = v9;

        v11 = [v5 objectAtIndexedSubscript:2];
        [v11 floatValue];
        v13 = v19;
        *(&v13 + 2) = v14 / 255.0;
        v17 = v13;
      }
    }
  }

  else
  {
    v17 = 0u;
  }

  return v17;
}

__n128 stringToTwoFloats(void *a1, __n128 a2, float a3)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = [v3 componentsSeparatedByString:{@", "}];
  if ([v5 count] != &dword_0 + 2)
  {

LABEL_5:
    v11 = a2;
    v11.n128_f32[1] = a3;
    v16 = v11;
    goto LABEL_6;
  }

  v6 = [v5 objectAtIndexedSubscript:0];
  [v6 floatValue];
  v15 = v7;

  v8 = [v5 objectAtIndexedSubscript:1];
  [v8 floatValue];
  v9 = v15;
  v9.n128_u32[1] = v10;
  v16 = v9;

LABEL_6:
  return v16;
}

void parseColorway(void *a1, uint64_t a2)
{
  v100 = a1;
  v3 = [v100 objectForKey:@"customTime"];
  v4 = v3;
  if (v3)
  {
    LODWORD(v3) = [v3 intValue];
  }

  *(a2 + 4) = v3;

  v5 = [v100 objectForKey:@"overallScale"];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = 1.1;
  }

  *(a2 + 8) = v8;

  v9 = [v100 objectForKey:@"additiveBlend"];
  v10 = v9;
  if (v9)
  {
    [v9 floatValue];
    v12 = v11;
  }

  else
  {
    v12 = 0.3;
  }

  *(a2 + 16) = v12;

  v13 = [v100 objectForKey:@"linearDim"];
  v14 = v13;
  if (v13)
  {
    [v13 floatValue];
    v16 = v15;
  }

  else
  {
    v16 = 0.5;
  }

  *(a2 + 24) = v16;

  v17 = [v100 objectForKey:@"tritiumSolidLayerIdx"];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 intValue];
  }

  else
  {
    v19 = 1;
  }

  *(a2 + 32) = v19;

  --*(a2 + 32);
  v20 = [v100 objectForKey:@"tritiumSolidLayerLengthMultiplier"];
  v21 = v20;
  if (v20)
  {
    [v20 floatValue];
    v23 = v22;
  }

  else
  {
    v23 = 1.0;
  }

  *(a2 + 40) = v23;

  v24 = [v100 objectForKey:@"jitterScaleNear"];
  v25 = v24;
  v26 = 0.6;
  v27 = 0.6;
  if (v24)
  {
    [v24 floatValue];
    v27 = v28;
  }

  *(a2 + 48) = v27;

  v29 = [v100 objectForKey:@"jitterScaleFar"];
  v30 = v29;
  if (v29)
  {
    [v29 floatValue];
    v26 = v31;
  }

  *(a2 + 56) = v26;

  v32 = [v100 objectForKey:@"jitterAspectRatio"];
  v33 = v32;
  if (v32)
  {
    [v32 floatValue];
    v35 = v34;
  }

  else
  {
    v35 = 1.0;
  }

  *(a2 + 64) = v35;

  v36 = [v100 objectForKey:@"fontEnlargement"];
  v37 = v36;
  if (v36)
  {
    [v36 floatValue];
    v39 = v38;
  }

  else
  {
    v39 = 0.8;
  }

  *(a2 + 72) = v39;

  v40 = [v100 objectForKey:@"darkenEdges"];
  v41 = v40;
  if (v40)
  {
    [v40 floatValue];
    v43 = v42;
  }

  else
  {
    v43 = 1.0;
  }

  *(a2 + 80) = v43;

  v44 = [v100 objectForKey:@"segmentRampLength"];
  v45 = v44;
  if (v44)
  {
    [v44 floatValue];
    v47 = v46;
  }

  else
  {
    v47 = 0.35;
  }

  *(a2 + 88) = v47;

  v48 = [v100 objectForKey:@"segmentGlobalSpeedMultiplier"];
  v49 = v48;
  v50 = 1.0;
  v51 = 1.0;
  if (v48)
  {
    [v48 floatValue];
    v51 = v52;
  }

  *(a2 + 96) = v51;

  v53 = [v100 objectForKey:@"segmentGlobalLengthMultiplier"];
  v54 = v53;
  if (v53)
  {
    [v53 floatValue];
    v50 = v55;
  }

  *(a2 + 104) = v50;

  v56 = [v100 objectForKey:@"bloomTextLayerInputMult"];
  v57 = v56;
  if (v56)
  {
    [v56 floatValue];
  }

  else
  {
    v58 = 1.5;
  }

  *(a2 + 112) = v58;

  v59 = [v100 objectForKey:@"bloomLayerInputMult"];
  v60 = v59;
  if (v59)
  {
    [v59 floatValue];
  }

  else
  {
    v61 = 1067030938;
  }

  *(a2 + 116) = v61;

  v62 = [v100 objectForKey:@"bloomTextContrast"];
  v63 = v62;
  if (v62)
  {
    [v62 floatValue];
  }

  else
  {
    v64 = 1.0;
  }

  *(a2 + 120) = v64;

  v65 = [v100 objectForKey:@"bloomContrast"];
  v66 = v65;
  if (v65)
  {
    [v65 floatValue];
  }

  else
  {
    v67 = 1066192077;
  }

  *(a2 + 124) = v67;

  v68 = [v100 objectForKey:@"bloomCombinedContrast"];
  v69 = v68;
  v70 = 1.5;
  LODWORD(v71) = 1.5;
  if (v68)
  {
    [v68 floatValue];
  }

  *(a2 + 128) = LODWORD(v71);

  v72 = [v100 objectForKey:@"bloomFinalMult"];
  v73 = v72;
  if (v72)
  {
    [v72 floatValue];
    v70 = v74;
  }

  *(a2 + 132) = v70;

  v75 = [v100 objectForKey:@"bloomWhitePoint"];
  v76 = v75;
  if (v75)
  {
    [v75 floatValue];
  }

  else
  {
    v77 = 1050253722;
  }

  *(a2 + 136) = v77;

  v78 = [v100 objectForKey:@"bloomIterations"];
  v79 = v78;
  if (v78)
  {
    v80 = [v78 intValue];
  }

  else
  {
    v80 = 8;
  }

  *(a2 + 140) = v80;

  v81 = [v100 objectForKey:@"jitterScaleMidpoint"];
  v82.n128_u32[0] = 0.5;
  *(a2 + 144) = stringToTwoFloats(v81, v82, 0.4).n128_u64[0];

  v83 = [v100 objectForKey:@"jitterAspectRatioMidpoint"];
  v84.n128_u32[0] = 0.5;
  *(a2 + 152) = stringToTwoFloats(v83, v84, 3.0).n128_u64[0];

  v85 = [v100 objectForKey:@"bloomLayerInputMultMidpoint"];
  v86.n128_u32[0] = 0.5;
  *(a2 + 160) = stringToTwoFloats(v85, v86, 1.5).n128_u64[0];

  v87 = [v100 objectForKey:@"bloomWhitePointMidpoint"];
  v88.n128_u32[0] = 0.5;
  *(a2 + 168) = stringToTwoFloats(v87, v88, 0.8).n128_u64[0];

  v89 = [v100 objectForKey:@"overallScaleMidpoint"];
  v90.n128_u32[0] = 0.5;
  *(a2 + 176) = stringToTwoFloats(v89, v90, 1.2).n128_u64[0];

  v91 = [v100 objectForKey:@"convertToSRGB"];
  v92 = v91;
  if (v91)
  {
    v93 = [v91 BOOLValue];
  }

  else
  {
    v93 = 1;
  }

  *(a2 + 184) = v93;

  v94 = 0;
  v95 = (a2 + 192);
  do
  {
    v96 = v94 + 1;
    v97 = [NSString stringWithFormat:@"color%d", v94 + 1];
    v98 = [v100 objectForKey:v97];

    if (v98)
    {
      v95[v94] = stringToColor(v98, *(a2 + 184));
    }

    else
    {
      v99 = v94 / 3u;
      if (v99 <= 2)
      {
        if (v99)
        {
          if (v99 == 1)
          {
            *(a2 + 208) = xmmword_9160;
          }

          else
          {
            *(a2 + 224) = xmmword_9150;
          }
        }

        else
        {
          *v95 = xmmword_9160;
        }
      }

      else if (v94 / 3u > 4)
      {
        if (v99 == 5)
        {
          *(a2 + 272) = xmmword_9120;
        }

        else
        {
          *(a2 + 288) = xmmword_9110;
        }
      }

      else if (v99 == 3)
      {
        *(a2 + 240) = xmmword_9140;
      }

      else
      {
        *(a2 + 256) = xmmword_9130;
      }
    }

    ++v94;
  }

  while (v96 != 20);
}

id performParentingOverlays(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
  }

  v8 = [v6 objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [v7 objectForKey:@"parent"];
    if (v11 && ([v5 objectForKey:v11], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v12;
      v14 = performParentingOverlays(v5, v6, v12);
      v10 = [[NSMutableDictionary alloc] initWithDictionary:v14];
      [v10 addEntriesFromDictionary:v7];
      [v10 removeObjectForKey:@"parent"];
      [v6 addEntriesFromDictionary:v10];
    }

    else
    {
      v15 = [v7 objectForKey:@"parents"];
      v13 = v15;
      if (v15)
      {
        v25 = v11;
        v24 = v15;
        v16 = [v15 componentsSeparatedByString:{@", "}];
        v10 = objc_alloc_init(NSMutableDictionary);
        if ([v16 count])
        {
          v17 = 0;
          do
          {
            v18 = [v16 objectAtIndexedSubscript:v17];
            v19 = +[NSCharacterSet whitespaceCharacterSet];
            v20 = [v18 stringByTrimmingCharactersInSet:v19];

            if ([v20 length])
            {
              v21 = [v5 objectForKey:v20];
              if (v21)
              {
                v22 = performParentingOverlays(v5, v6, v21);
                [v10 addEntriesFromDictionary:v22];
              }
            }

            ++v17;
          }

          while ([v16 count] > v17);
        }

        [v10 addEntriesFromDictionary:v7];
        [v10 removeObjectForKey:@"parents"];
        [v6 addEntriesFromDictionary:v10];

        v11 = v25;
        v13 = v24;
      }

      else
      {
        v10 = v7;
      }
    }
  }

  return v10;
}

void NTKPlumeriaSettingsResetToDefaults(int8x16_t *a1)
{
  v14 = objc_alloc_init(NSDictionary);
  v2 = 0;
  v3 = a1 + 161;
  do
  {
    v4 = &a1[32 * v2 + 1];
    v4->i32[0] = v2;
    v3[32 * v2].i32[0] = v2;
    parseColorway(v14, v4);
    parseColorway(v14, v3[32 * v2].i64);
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = 20;
      v10 = v8;
      do
      {
        v11 = v10[13];
        if (v7)
        {
          v5.i32[0] = 0;
          v6.i32[0] = v7 & 1;
          v12 = v10[13];
          v12.i32[0] = 0;
          v6 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v6, v5), 0), v12, v11);
          v13 = v6;
          v13.i32[1] = 0;
          v12.i32[0] = v7 & 2;
          v5 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v12, v5), 0), v13, v6);
          v11 = v5;
          v11.i32[3] = v6.i32[3];
          if (v7 != 4)
          {
            v5.i32[2] = 0;
            v5.i32[3] = v6.i32[3];
            v11 = v5;
          }
        }

        v10[13] = v11;
        v10[173] = v11;
        ++v10;
        --v9;
      }

      while (v9);
      ++v7;
      v8 += 32;
    }

    while (v7 != 5);
    ++v2;
  }

  while (v2 != 5);
  a1->i32[0] = 2371;
}

uint64_t NTKPlumeriaSettingsLoadFromDictionary(void *a1, unsigned int *a2)
{
  v3 = a1;
  v18 = [v3 objectForKey:@"global"];
  v4 = [v18 objectForKey:@"randomSeed"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
  }

  else
  {
    v6 = 2371;
  }

  *a2 = v6;

  v7 = 0;
  v8 = (a2 + 644);
  v9 = -5;
  do
  {
    v10 = [NSString stringWithFormat:@"colorway%d", v9 + 6];
    v11 = [v3 objectForKey:v10];

    if (v11)
    {
      v12 = performParentingOverlays(v3, 0, v11);

      parseColorway(v12, v8 - 2560);
      v7 = (v7 + 1);
    }

    v13 = [NSString stringWithFormat:@"tritium%d", v9 + 6];
    v14 = [v3 objectForKey:v13];

    if (v14)
    {
      v15 = performParentingOverlays(v3, 0, v14);

      parseColorway(v15, v8);
      v7 = (v7 + 1);
    }

    v8 += 512;
  }

  while (!__CFADD__(v9++, 1));

  return v7;
}

uint64_t NTKPlumeriaSettingsLoadFromPlistResource(void *a1, void *a2, int8x16_t *a3)
{
  v5 = a1;
  v6 = a2;
  NTKPlumeriaSettingsResetToDefaults(a3);
  if (v5)
  {
    v7 = [v5 pathForResource:v6 ofType:@"plist"];
    v8 = [NSDictionary dictionaryWithContentsOfFile:v7];
    v9 = NTKPlumeriaSettingsLoadFromDictionary(v8, a3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t NTKPlumeriaSettingsLoadFromFile(void *a1, int8x16_t *a2)
{
  v3 = a1;
  NTKPlumeriaSettingsResetToDefaults(a2);
  v4 = [NSURL fileURLWithPath:v3];

  v12 = 0;
  v5 = [NSData dataWithContentsOfURL:v4 options:0 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v11 = 0;
    v9 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = NTKPlumeriaSettingsLoadFromDictionary(v9, a2);
    }
  }

  return v8;
}

uint64_t NTKPlumeriaSettingIndexFromColorwayName(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length])
  {
    v3 = [v2 characterAtIndex:{objc_msgSend(v2, "length") - 1}];
    if (v3 >= 52)
    {
      v3 = 52;
    }

    if (v3 <= 48)
    {
      v3 = 48;
    }

    v4 = (v3 - 48);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_34FC(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
  v7 = v6;
  if (a3)
  {
    v14 = v6;
    v8 = &v14;
    v9 = 4000;
  }

  else
  {
    v15 = v6;
    v8 = &v15;
    v9 = 7000;
  }

  v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
  v8[1] = v10;
  v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
  v8[2] = v11;
  v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:14 zOrder:v9];
  v8[3] = v12;
  v13 = [NSArray arrayWithObjects:v8 count:4];
  [(NTKFace *)v5 setCurationPlacements:v13];
}

id generateColorArray(int a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v1 = NTKColorWithRGBA();
      v13[0] = v1;
      v2 = NTKColorWithRGBA();
      v13[1] = v2;
      v3 = NTKColorWithRGBA();
      v13[2] = v3;
      v4 = NTKColorWithRGBA();
      v13[3] = v4;
      v5 = NTKColorWithRGBA();
      v13[4] = v5;
      v6 = v13;
      goto LABEL_11;
    }

    if (a1 == 4)
    {
      v1 = NTKColorWithRGBA();
      v12[0] = v1;
      v2 = NTKColorWithRGBA();
      v12[1] = v2;
      v3 = NTKColorWithRGBA();
      v12[2] = v3;
      v4 = NTKColorWithRGBA();
      v12[3] = v4;
      v7 = [NSArray arrayWithObjects:v12 count:4];
      goto LABEL_13;
    }
  }

  else
  {
    if (a1 == 1)
    {
      v1 = NTKColorWithRGBA();
      v15[0] = v1;
      v2 = NTKColorWithRGBA();
      v15[1] = v2;
      v3 = NTKColorWithRGBA();
      v15[2] = v3;
      v4 = NTKColorWithRGBA();
      v15[3] = v4;
      v5 = NTKColorWithRGBA();
      v15[4] = v5;
      v6 = v15;
      goto LABEL_11;
    }

    if (a1 == 2)
    {
      v1 = NTKColorWithRGBA();
      v14[0] = v1;
      v2 = NTKColorWithRGBA();
      v14[1] = v2;
      v3 = NTKColorWithRGBA();
      v14[2] = v3;
      v4 = NTKColorWithRGBA();
      v14[3] = v4;
      v5 = NTKColorWithRGBA();
      v14[4] = v5;
      v6 = v14;
LABEL_11:
      v7 = [NSArray arrayWithObjects:v6 count:5];
      goto LABEL_12;
    }
  }

  v1 = NTKColorWithRGBA();
  v16[0] = v1;
  v2 = NTKColorWithRGBA();
  v16[1] = v2;
  v3 = NTKColorWithRGBA();
  v16[2] = v3;
  v4 = NTKColorWithRGBA();
  v16[3] = v4;
  v5 = NTKColorWithRGBA();
  v16[4] = v5;
  v8 = NTKColorWithRGBA();
  v16[5] = v8;
  v9 = NTKColorWithRGBA();
  v16[6] = v9;
  v10 = NTKColorWithRGBA();
  v16[7] = v10;
  v7 = [NSArray arrayWithObjects:v16 count:8];

LABEL_12:
LABEL_13:

  return v7;
}

void sub_40C8(id a1)
{
  qword_17580 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

id sub_42B0()
{
  if (qword_175A0 != -1)
  {
    sub_6ECC();
  }

  v1 = qword_17598;

  return v1;
}

float splineInterpolation(float result, float a2, float a3, float a4, float a5)
{
  if (a5 > 0.0)
  {
    if (a5 >= 1.0)
    {
      return a4;
    }

    else
    {
      if (a5 >= a2)
      {
        v11 = (a5 - a2) / (1.0 - a2);
        v6 = a3;
        v7 = v11;
        v8 = v7 * 0.5;
        v9 = (a4 - result);
        v10 = a3 * -5.0 + result * 2.0 + a4 * 4.0 - a3 + v7 * (a3 + (a3 - a4) * 3.0 - result);
      }

      else
      {
        v5 = a5 / a2;
        v6 = result;
        v7 = v5;
        v8 = v7 * 0.5;
        v9 = (a3 - a3);
        v10 = result * -5.0 + a3 * 2.0 + a3 * 4.0 - a4 + v7 * (a4 + (result - a3) * 3.0 - a3);
      }

      return v6 + v8 * (v9 + v7 * v10);
    }
  }

  return result;
}

void sub_66DC(id a1)
{
  qword_17598 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_6738(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

id sub_6D64(void *a1, int a2)
{
  v3 = a1;
  v4 = +[MTLRenderPassDescriptor renderPassDescriptor];
  v5 = [v4 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript:0];
  [v6 setTexture:v3];

  v7 = [v4 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 setLevel:a2];

  return v4;
}

void sub_6F48(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 24);
  v3 = 138412546;
  v4 = @"plumeriaFragmentShader";
  v5 = 2112;
  v6 = v2;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Plumeria: Failed to create %@ shader for device %@", &v3, 0x16u);
}