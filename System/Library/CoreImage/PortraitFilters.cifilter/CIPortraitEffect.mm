@interface CIPortraitEffect
+ (id)customAttributes;
+ (void)checkFeaturesDictionary:(id)dictionary;
- (id)backgroundPreviewCubePath;
- (id)previewCubePath;
- (id)standbyCubePath;
@end

@implementation CIPortraitEffect

+ (void)checkFeaturesDictionary:(id)dictionary
{
  if ([dictionary sanityCheckStatus])
  {
    return;
  }

  if ([dictionary objectForKeyedSubscript:@"faceBoundingBox"])
  {
    v4 = [dictionary objectForKeyedSubscript:@"faceBoundingBox"];
    [objc_msgSend(v4 objectForKeyedSubscript:{@"x", "doubleValue"}];
    v6 = v5;
    [objc_msgSend(v4 objectForKeyedSubscript:{@"y", "doubleValue"}];
    v8 = v7;
    [objc_msgSend(v4 objectForKeyedSubscript:{@"w", "doubleValue"}];
    v10 = v9;
    [objc_msgSend(v4 objectForKeyedSubscript:{@"h", "doubleValue"}];
    *&v11 = v11;
    v12 = v6;
    v13 = v10;
    v14 = v8;
    v15 = *&v11;
  }

  else
  {
    v15 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
  }

  memset(&v109, 0, sizeof(v109));
  [dictionary imageWidthScale];
  v17 = v16;
  [dictionary imageHeightScale];
  CGAffineTransformMakeScale(&v109, v17, v18);
  dictionaryCopy = dictionary;
  v19 = [dictionary objectForKeyedSubscript:@"allPoints"];
  v20 = [v19 count];
  v94 = &v94;
  v23 = __chkstk_darwin((16 * v20), v20, v21, v22);
  *&v107 = &v94 - 2 * v23;
  v106 = COERCE_DOUBLE(__chkstk_darwin(v26, v23, v24, v25));
  v101 = (&v94 - 2 * *&v106);
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v27 = [v19 countByEnumeratingWithState:&v110 objects:v114 count:16];
  if (v27)
  {
    v29 = v27;
    v30 = 0;
    v31 = *v111;
    v108 = *&v107 + 8;
    do
    {
      v32 = 0;
      v33 = (v108 + 16 * v30);
      v30 += v29;
      do
      {
        if (*v111 != v31)
        {
          objc_enumerationMutation(v19);
        }

        v34 = *(*(&v110 + 1) + 8 * v32);
        [objc_msgSend(v34 objectForKeyedSubscript:{@"x", "doubleValue"}];
        v36 = v35;
        [objc_msgSend(v34 objectForKeyedSubscript:{@"y", "doubleValue"}];
        *(v33 - 1) = v36;
        *v33 = v37;
        v32 = v32 + 1;
        v33 += 2;
      }

      while (v29 != v32);
      v29 = [v19 countByEnumeratingWithState:&v110 objects:v114 count:16];
    }

    while (v29);
  }

  v38 = dictionaryCopy;
  v39 = v101;
  v40 = v106;
  if (v106 == 0.0)
  {
LABEL_29:
    [v38 setSanityCheckStatus:1];
    v52 = 0;
    v53 = v39[49];
    v114[8] = v39[48];
    v114[9] = v53;
    v115 = v39[50];
    v54 = v39[45];
    v114[4] = v39[44];
    v114[5] = v54;
    v55 = v39[47];
    v114[6] = v39[46];
    v114[7] = v55;
    v56 = v39[41];
    v114[0] = v39[40];
    v114[1] = v56;
    v57 = v39[43];
    v114[2] = v39[42];
    v114[3] = v57;
    v106 = *(v114 + 1);
    v107 = *v114;
    v58 = *v114;
    v59 = *(v114 + 1);
    v60 = v58;
    v61 = v59;
    do
    {
      v62 = *&v114[v52 + 1];
      v63 = *(&v114[v52 + 1] + 1);
      if (v62 <= v58)
      {
        v58 = v62;
      }

      if (v62 >= v60)
      {
        v60 = v62;
      }

      if (v63 <= v59)
      {
        v59 = v63;
      }

      if (v63 >= v61)
      {
        v61 = v63;
      }

      ++v52;
    }

    while (v52 != 10);
    v103 = v60;
    v104 = v58;
    v105 = v59;
    v64 = v39[61].f64[0];
    v101 = *&v39[61].f64[1];
    v102 = v64;
    v65 = &v115.f64[1];
    v96 = v115.f64[1];
    v97 = v115.f64[0];
    v66 = sub_34098(v115.f64[0], v115.f64[1], v107);
    v68 = sub_3410C(v66, v67);
    v99 = v69;
    v100 = v68;
    v98 = -v69;
    v70 = 10;
    while (1)
    {
      *&v108 = v61;
      v71 = v102;
      v72 = sub_34098(*(v65 - 1), *v65, v102);
      v74 = v73;
      v75 = v99;
      v76 = v100;
      v77 = sub_340FC(v72, v73, v100, v99);
      v78 = v98;
      LODWORD(v72) = sub_340FC(v72, v74, v98, v76);
      v79 = sub_340CC(v76, v75, v77);
      v81 = v80;
      v82 = sub_340CC(v78, v76, -*&v72);
      v83 = sub_3408C(v79, v81, v82);
      v85 = sub_3408C(v83, v84, v71);
      if (v85 >= 0.0)
      {
        v87 = v85;
      }

      else
      {
        v87 = 0.0;
      }

      if (v86 >= 0.0)
      {
        v88 = v86;
      }

      else
      {
        v88 = 0.0;
      }

      if (v70 < 6)
      {
        v93 = sub_34178(v97, v96, v107, v106, v87, v88);
        v61 = *&v108;
        if (v93 == 0.0)
        {
LABEL_48:
          if (v87 <= v104)
          {
            v90 = v87;
          }

          else
          {
            v90 = v104;
          }

          v91 = v103;
          if (v87 >= v103)
          {
            v91 = v87;
          }

          v103 = v91;
          v104 = v90;
          v92 = v105;
          if (v88 <= v105)
          {
            v92 = v88;
          }

          v105 = v92;
          if (v88 >= v61)
          {
            v61 = v88;
          }
        }
      }

      else
      {
        v89 = sub_34178(v107, v106, v97, v96, v87, v88);
        v61 = *&v108;
        if (v89 != 0.0)
        {
          goto LABEL_48;
        }
      }

      --v70;
      v65 -= 2;
      if (v70 == -1)
      {
        [v38 setCoreImageROIrect:{v104, v105, (v103 - v104), (v61 - v105)}];
        return;
      }
    }
  }

  v41 = *&v109.a;
  v42 = *&v109.c;
  v43 = (*&v107 + 8);
  LODWORD(v28) = 1.0;
  v44 = v101;
  v45 = *&v109.tx;
  while (1)
  {
    v46 = *(v43 - 1);
    v47 = *v43;
    v48 = v46 < 1.0 && v47 < 1.0;
    v49 = v12 + v13 * v46;
    *&v49 = v49;
    v50 = v48 && *&v49 <= 1.0;
    if (!v50 || *&v49 < 0.0)
    {
      break;
    }

    v47 = v14 + v15 * v47;
    *&v47 = v47;
    if (*&v47 < 0.0 || *&v47 > 1.0)
    {
      break;
    }

    *v44++ = vaddq_f64(v45, vmlaq_n_f64(vmulq_n_f64(v42, *&v47), v41, *&v49));
    v43 += 2;
    --*&v40;
    if (v40 == 0.0)
    {
      goto LABEL_29;
    }
  }

  [v38 setSanityCheckStatus:{0xFFFFFFFFLL, v41.f64[0], v42.f64[0], 1.0, v28, v45.f64[0], v49, v47}];
}

+ (id)customAttributes
{
  v18[0] = kCIAttributeFilterCategories;
  v17[0] = kCICategoryColorEffect;
  v17[1] = kCICategoryVideo;
  v17[2] = kCICategoryInterlaced;
  v17[3] = kCICategoryNonSquarePixels;
  v17[4] = kCICategoryStillImage;
  v17[5] = kCICategoryBuiltIn;
  v17[6] = kCICategoryApplePrivate;
  v19[0] = [NSArray arrayWithObjects:v17 count:7];
  v19[1] = @"10";
  v18[1] = kCIAttributeFilterAvailable_iOS;
  v18[2] = kCIAttributeFilterAvailable_Mac;
  v19[2] = @"10.11";
  v18[3] = @"inputSmooth";
  v15[0] = kCIAttributeMin;
  v15[1] = kCIAttributeSliderMin;
  v16[0] = &off_7A510;
  v16[1] = &off_7A510;
  v15[2] = kCIAttributeSliderMax;
  v15[3] = kCIAttributeDefault;
  v16[2] = &off_7A520;
  v16[3] = &off_7A530;
  v15[4] = kCIAttributeIdentity;
  v15[5] = kCIAttributeType;
  v16[4] = &off_7A540;
  v16[5] = kCIAttributeTypeScalar;
  v19[3] = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:6];
  v18[4] = @"inputEnrich";
  v13[0] = kCIAttributeMin;
  v13[1] = kCIAttributeSliderMin;
  v14[0] = &off_7A540;
  v14[1] = &off_7A540;
  v13[2] = kCIAttributeSliderMax;
  v13[3] = kCIAttributeDefault;
  v14[2] = &off_7A520;
  v14[3] = &off_7A550;
  v13[4] = kCIAttributeIdentity;
  v13[5] = kCIAttributeType;
  v14[4] = &off_7A540;
  v14[5] = kCIAttributeTypeScalar;
  v19[4] = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];
  v18[5] = @"inputTeeth";
  v11[0] = kCIAttributeMin;
  v11[1] = kCIAttributeSliderMin;
  v12[0] = &off_7A540;
  v12[1] = &off_7A540;
  v11[2] = kCIAttributeSliderMax;
  v11[3] = kCIAttributeDefault;
  v12[2] = &off_7A520;
  v12[3] = &off_7A560;
  v11[4] = kCIAttributeIdentity;
  v11[5] = kCIAttributeType;
  v12[4] = &off_7A540;
  v12[5] = kCIAttributeTypeScalar;
  v19[5] = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];
  v18[6] = @"inputEyes";
  v9[0] = kCIAttributeMin;
  v9[1] = kCIAttributeSliderMin;
  v10[0] = &off_7A540;
  v10[1] = &off_7A540;
  v9[2] = kCIAttributeSliderMax;
  v9[3] = kCIAttributeDefault;
  v10[2] = &off_7A520;
  v10[3] = &off_7A570;
  v9[4] = kCIAttributeIdentity;
  v9[5] = kCIAttributeType;
  v10[4] = &off_7A540;
  v10[5] = kCIAttributeTypeScalar;
  v19[6] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];
  v18[7] = @"inputLocalContrast";
  v7[0] = kCIAttributeMin;
  v7[1] = kCIAttributeSliderMin;
  v8[0] = &off_7A510;
  v8[1] = &off_7A510;
  v7[2] = kCIAttributeSliderMax;
  v7[3] = kCIAttributeDefault;
  v8[2] = &off_7A520;
  v8[3] = &off_7A540;
  v7[4] = kCIAttributeIdentity;
  v7[5] = kCIAttributeType;
  v8[4] = &off_7A540;
  v8[5] = kCIAttributeTypeScalar;
  v19[7] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:6];
  v18[8] = @"inputStrength";
  v5[0] = kCIAttributeMin;
  v5[1] = kCIAttributeSliderMin;
  v6[0] = &off_7A540;
  v6[1] = &off_7A540;
  v5[2] = kCIAttributeSliderMax;
  v5[3] = kCIAttributeDefault;
  v6[2] = &off_7A580;
  v6[3] = &off_7A580;
  v5[4] = kCIAttributeIdentity;
  v5[5] = kCIAttributeType;
  v6[4] = &off_7A580;
  v6[5] = kCIAttributeTypeScalar;
  v19[8] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:6];
  v18[9] = @"inputScale";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeSliderMin;
  v4[0] = &off_7A590;
  v4[1] = &off_7A590;
  v3[2] = kCIAttributeSliderMax;
  v3[3] = kCIAttributeDefault;
  v4[2] = &off_7A580;
  v4[3] = &off_7A580;
  v3[4] = kCIAttributeIdentity;
  v3[5] = kCIAttributeType;
  v4[4] = &off_7A580;
  v4[5] = kCIAttributeTypeScalar;
  v19[9] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:10];
}

- (id)previewCubePath
{
  result = [(CIPortraitEffect *)self previewCubeName];
  if (result)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    previewCubeName = [(CIPortraitEffect *)self previewCubeName];

    return [(NSBundle *)v4 pathForResource:previewCubeName ofType:@"scube"];
  }

  return result;
}

- (id)standbyCubePath
{
  result = [(CIPortraitEffect *)self standbyCubeName];
  if (result)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    standbyCubeName = [(CIPortraitEffect *)self standbyCubeName];

    return [(NSBundle *)v4 pathForResource:standbyCubeName ofType:@"scube"];
  }

  return result;
}

- (id)backgroundPreviewCubePath
{
  result = [(CIPortraitEffect *)self backgroundPreviewCubeName];
  if (result)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    backgroundPreviewCubeName = [(CIPortraitEffect *)self backgroundPreviewCubeName];

    return [(NSBundle *)v4 pathForResource:backgroundPreviewCubeName ofType:@"scube"];
  }

  return result;
}

@end