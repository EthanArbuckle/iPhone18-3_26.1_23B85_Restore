@interface CIPortraitSkinMaskProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
@end

@implementation CIPortraitSkinMaskProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputImageExtent", "CGRectValue"}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"faceROI", "CGRectValue"}];
  if ((CGRectIsIntegral() & 1) == 0)
  {
    sub_4B744();
  }

  v17 = [objc_msgSend(arguments objectForKeyedSubscript:{@"useMetal", "BOOLValue"}];
  v18 = [arguments objectForKeyedSubscript:@"faceLandmarks"];
  v19 = objc_opt_self();
  v20 = sub_3C354(v19, v18);
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputImageTransformN1", "getBytes:length:", &v221, 48}];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputImageTransform1N", "getBytes:length:", &v220, 48}];
  v163 = v221;
  v245.origin.x = v10;
  v245.origin.y = v12;
  v245.size.width = v14;
  v245.size.height = v16;
  v246 = CGRectApplyAffineTransform(v245, &v163);
  x = v246.origin.x;
  y = v246.origin.y;
  height = v246.size.height;
  width = v246.size.width;
  v23 = [inputs objectAtIndexedSubscript:0];
  [v23 region];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v162 = v16 + -1.0;
  v31 = v16 + -1.0 - v30 - v28;
  [output region];
  v145 = v16 + -1.0 - v32 - v34;
  v146 = v33;
  v251.origin.x = v33 + 1.0;
  v251.origin.y = v145 + 1.0;
  v149 = v35;
  v150 = v34;
  v251.size.width = v35 + -2.0;
  v251.size.height = v34 + -2.0;
  v247.origin.x = v25;
  v247.origin.y = v31;
  v247.size.width = v27;
  v247.size.height = v29;
  v155 = CGRectIntersection(v247, v251);
  if ((sub_27994([v20 objectForKeyedSubscript:@"faceBoundingBox"], &v217) & 1) == 0)
  {
    sub_4B770();
  }

  v36.f64[0] = width;
  v217 = x + v217 * width;
  v218 = y + v218 * height;
  v36.f64[1] = height;
  v219 = vmulq_f64(v36, v219);
  v37 = [objc_msgSend(v20 objectForKeyedSubscript:{@"leftPupil", "objectAtIndex:", 0}];
  if ((sub_27A78(v37, &v215, v217, v218, v219.f64[0], v219.f64[1]) & 1) == 0)
  {
    sub_4B79C();
  }

  v38 = [objc_msgSend(v20 objectForKeyedSubscript:{@"rightPupil", "objectAtIndex:", 0}];
  if ((sub_27A78(v38, &v213, v217, v218, v219.f64[0], v219.f64[1]) & 1) == 0)
  {
    sub_4B7C8();
  }

  v39 = [v20 objectForKeyedSubscript:@"innerLips"];
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v40 = [v39 countByEnumeratingWithState:&v209 objects:v240 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = 0;
    v43 = *v210;
    v44 = 0.0;
    v45 = 0.0;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v210 != v43)
        {
          objc_enumerationMutation(v39);
        }

        if (sub_27A78(*(*(&v209 + 1) + 8 * i), &v163.a, v217, v218, v219.f64[0], v219.f64[1]))
        {
          v45 = v45 + v163.a;
          v44 = v44 + v163.b;
          ++v42;
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v209 objects:v240 count:16];
    }

    while (v41);
  }

  else
  {
    v42 = 0;
    v44 = 0.0;
    v45 = 0.0;
  }

  if (v42 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = v42;
  }

  v48 = v44 / v47;
  v49 = v214;
  v50 = v216;
  v51 = sqrt((v214 - v216) * (v214 - v216) + (v213 - v215) * (v213 - v215));
  v52 = v213 + (v215 - v213) * 0.5;
  v53 = v214 + (v216 - v214) * 0.5;
  v54 = sqrt((v53 - v48) * (v53 - v48) + (v52 - v45 / v47) * (v52 - v45 / v47));
  v55 = v51;
  if (v51 >= 0.01)
  {
    v56 = (v213 - v215) / v51;
  }

  else
  {
    v56 = 0.0;
  }

  if (v51 >= 0.01)
  {
    v57 = (v214 - v216) / v51;
  }

  else
  {
    v57 = 0.0;
  }

  v160 = (v51 * -0.25);
  v58 = v54 * 0.15;
  v157 = v58;
  v59 = v57 * v58;
  v60 = (v54 * 0.5);
  v154 = v215 + v56 * v160 + v57 * v60;
  v151 = v215 + v56 * v160 + v59;
  v152 = v213 + v59 - v56 * v160;
  v153 = v213 + v57 * v60 - v56 * v160;
  v248.origin.x = v217 + v219.f64[0] * -0.305999994;
  v248.origin.y = v218 + v219.f64[1] * -0.300000012;
  v248.size.width = v219.f64[0] + v219.f64[0] * 0.611999989;
  v248.size.height = v219.f64[1] + v219.f64[1] * 0.75;
  v163 = v220;
  v249 = CGRectApplyAffineTransform(v248, &v163);
  v249.origin.y = v162 - v249.origin.y - v249.size.height;
  v250 = CGRectIntersection(v249, v155);
  v143 = v250.origin.y;
  v144 = v250.origin.x;
  v147 = v250.size.width;
  v148 = v250.size.height;
  v61 = 0;
  *&v250.origin.x = v55 * 0.3;
  v62 = v52 + 0.0;
  v63 = v53 + *&v250.origin.x;
  v64 = *&v220.a;
  v65 = *&v220.c;
  v66 = *&v220.tx;
  v67 = v55 * 0.03;
  v68 = v67;
  v69 = v56 * v67;
  v70 = v57 * v68;
  do
  {
    v71 = &v239[v61];
    *v71 = *&v66 + v63 * *&v65 + *&v64 * v62;
    v71[1] = v162 - (*(&v66 + 1) + v63 * *(&v65 + 1) + *(&v64 + 1) * v62);
    v62 = v62 - v70;
    v63 = v69 + v63;
    v61 += 16;
  }

  while (v61 != 64);
  v72 = 0;
  *&v73 = v50 + v57 * v160 - v56 * v157;
  *&v74 = v49 + -(v56 * v157) - v57 * v160;
  *&v75 = v49 + -(v56 * v60) - v57 * v160;
  *&v76 = *&v74 - *&v75;
  v142 = v50 + v57 * v160 - v56 * v60;
  v161 = vdupq_lane_s64(COERCE__INT64(v152 - v151), 0);
  v158 = vdupq_lane_s64(*&v151, 0);
  v77 = vdupq_lane_s64(COERCE__INT64(*&v74 - *&v73), 0);
  v139 = *&v73;
  v140 = *&v74;
  v78 = vdupq_lane_s64(v73, 0);
  v79 = vdupq_lane_s64(v64, 0);
  v80 = vdupq_lane_s64(v66, 0);
  v81 = vdupq_lane_s64(*(&v64 + 1), 0);
  v82 = vdupq_lane_s64(*(&v66 + 1), 0);
  v83 = vdupq_lane_s64(*&v162, 0);
  v84 = vdupq_lane_s64(COERCE__INT64(v153 - v152), 0);
  v85 = vdupq_lane_s64(*&v152, 0);
  v86 = vdupq_lane_s64(COERCE__INT64(*&v75 - *&v74), 0);
  v87 = vdupq_lane_s64(v74, 0);
  v88 = vdupq_lane_s64(COERCE__INT64(v154 - v153), 0);
  v89 = vdupq_lane_s64(*&v153, 0);
  v90 = vdupq_lane_s64(COERCE__INT64(v142 - *&v75), 0);
  v141 = *&v75;
  v91 = vdupq_lane_s64(v75, 0);
  v92 = vdupq_lane_s64(COERCE__INT64(v152 - v153), 0);
  v93 = vdupq_lane_s64(v76, 0);
  v94 = 0x100000000;
  do
  {
    v95.i64[0] = v94.u32[0];
    v95.i64[1] = v94.u32[1];
    __asm { FMOV            V8.2D, #0.25 }

    v101 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(v95), _Q8)));
    v102 = vmlaq_f64(v158, v161, v101);
    v103 = vmlaq_f64(v78, v77, v101);
    v242.val[0] = vaddq_f64(v80, vmlaq_f64(vmulq_n_f64(v103, *&v65), v102, v79));
    v104 = vaddq_f64(v82, vmlaq_f64(vmulq_n_f64(v103, *(&v65 + 1)), v102, v81));
    v105 = vmlaq_f64(v85, v84, v101);
    v106 = vmlaq_f64(v87, v86, v101);
    v243.val[0] = vaddq_f64(v80, vmlaq_f64(vmulq_n_f64(v106, *&v65), v105, v79));
    v107 = vmlaq_f64(vmulq_n_f64(v106, *(&v65 + 1)), v105, v81);
    v108 = vmlaq_f64(v89, v88, v101);
    v109 = vmlaq_f64(v91, v90, v101);
    v110 = vmlaq_f64(vmulq_n_f64(v109, *&v65), v108, v79);
    v111 = vmlaq_f64(vmulq_n_f64(v109, *(&v65 + 1)), v108, v81);
    v242.val[1] = vsubq_f64(v83, v104);
    v112 = vmlaq_f64(v89, v92, v101);
    v113 = vmlaq_f64(v91, v93, v101);
    v243.val[1] = vsubq_f64(v83, vaddq_f64(v82, v107));
    v241.val[0] = vaddq_f64(v80, v110);
    v241.val[1] = vsubq_f64(v83, vaddq_f64(v82, v111));
    v114 = &v239[v72 + 64];
    vst2q_f64(v114, v242);
    v115 = &v239[v72 + 128];
    v116 = &v239[v72 + 192];
    vst2q_f64(v115, v243);
    v244.val[0] = vaddq_f64(v80, vmlaq_f64(vmulq_n_f64(v113, *&v65), v112, v79));
    vst2q_f64(v116, v241);
    v244.val[1] = vsubq_f64(v83, vaddq_f64(v82, vmlaq_f64(vmulq_n_f64(v113, *(&v65 + 1)), v112, v81)));
    v117 = &v239[v72 + 256];
    vst2q_f64(v117, v244);
    v94 = vadd_s32(v94, 0x200000002);
    v72 += 32;
  }

  while (v72 != 64);
  if ((sub_27994([v20 objectForKeyedSubscript:@"faceBoundingBox"], v208) & 1) == 0)
  {
    sub_4B7F4();
  }

  v118 = [v20 objectForKeyedSubscript:@"leftEye"];
  if (!v118)
  {
    sub_4B8FC();
  }

  v119 = v118;
  v120 = [v20 objectForKeyedSubscript:@"rightEye"];
  if (!v120)
  {
    sub_4B8D0();
  }

  v121 = v120;
  if ([v119 count] != &dword_8)
  {
    sub_4B820();
  }

  if ([v121 count] != &dword_8)
  {
    sub_4B84C();
  }

  v122 = 0;
  for (j = 0; j != 8; ++j)
  {
    v124 = [v119 objectAtIndexedSubscript:j];
    if ((sub_27A78(v124, &v163.a, v217, v218, v219.f64[0], v219.f64[1]) & 1) == 0)
    {
      sub_4B878();
    }

    v125 = v162 - (v220.ty + v163.b * v220.d + v220.b * v163.a);
    v126 = &v231.f64[v122];
    *v126 = v220.tx + v163.b * v220.c + v220.a * v163.a;
    v126[1] = v125;
    v127 = [v121 objectAtIndexedSubscript:j];
    if ((sub_27A78(v127, &v163.a, v217, v218, v219.f64[0], v219.f64[1]) & 1) == 0)
    {
      sub_4B8A4();
    }

    v128 = *&v220.a;
    v129 = *&v220.c;
    v130 = *&v220.tx;
    v131 = v162 - (v220.ty + v163.b * v220.d + v220.b * v163.a);
    v132 = &v223.f64[v122];
    *v132 = v220.tx + v163.b * v220.c + v220.a * v163.a;
    v132[1] = v131;
    v122 += 2;
  }

  v222[0] = *&v130 + v139 * *&v129 + *&v128 * v151;
  v222[1] = v162 - (*(&v130 + 1) + v139 * *(&v129 + 1) + *(&v128 + 1) * v151);
  v222[2] = *&v130 + v140 * *&v129 + *&v128 * v152;
  v222[3] = v162 - (*(&v130 + 1) + v140 * *(&v129 + 1) + *(&v128 + 1) * v152);
  v222[4] = *&v130 + v141 * *&v129 + *&v128 * v153;
  v222[5] = v162 - (*(&v130 + 1) + v141 * *(&v129 + 1) + *(&v128 + 1) * v153);
  v222[6] = *&v130 + v142 * *&v129 + *&v128 * v154;
  v222[7] = v162 - (*(&v130 + 1) + v142 * *(&v129 + 1) + *(&v128 + 1) * v154);
  v133 = fmax(v147, v148) * 0.0500000007;
  v163.b = 0.0;
  LODWORD(v163.a) = 8;
  HIDWORD(v163.a) = vcvtas_u32_f32(v133);
  *&v163.c = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v231)));
  *&v163.d = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v232)));
  __asm { FMOV            V0.2D, #0.5 }

  *&v163.tx = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmlaq_f64(v232, _Q0, vsubq_f64(v238, v232)))));
  *&v163.ty = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v238)));
  d = v163.d;
  v165 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v233)));
  v166 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v237)));
  ty = v163.ty;
  v168 = v165;
  v169 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v234)));
  v170 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v236)));
  v171 = v166;
  v172 = v169;
  v173 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v235)));
  v174 = v170;
  v175 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmlaq_f64(v234, _Q0, vsubq_f64(v236, v234)))));
  v176 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v223)));
  v177 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v224)));
  v178 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmlaq_f64(v224, _Q0, vsubq_f64(v230, v224)))));
  v179 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v230)));
  v180 = v177;
  v181 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v225)));
  v182 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v229)));
  v183 = v179;
  v184 = v181;
  v185 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v226)));
  v186 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v228)));
  v187 = v182;
  v188 = v185;
  v189 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v227)));
  v190 = v186;
  v191 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmlaq_f64(v226, _Q0, vsubq_f64(v228, v226)))));
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  if (v17)
  {
    v135 = [objc_msgSend(v23 "metalTexture")];
    v136 = -[MetalFaceMask initForDevice:]([MetalFaceMask alloc], "initForDevice:", [objc_msgSend(output "metalTexture")]);
    [(CPUFaceMask *)v136 setLumaDilateRadius:1];
    [(CPUFaceMask *)v136 setLumaErodeRadius:1];
    [(CPUFaceMask *)v136 setChromaDilateRadius:5];
    [(CPUFaceMask *)v136 setChromaErodeRadius:1];
    -[CPUFaceMask clearOutputTexture:CommandBuffer:](v136, "clearOutputTexture:CommandBuffer:", [output metalTexture], objc_msgSend(output, "metalCommandBuffer"));
    -[CPUFaceMask trainSkinMaskUsingInputTexture:InputRegion:QuadRegion:CommandBuffer:](v136, "trainSkinMaskUsingInputTexture:InputRegion:QuadRegion:CommandBuffer:", v135, v222, [output metalCommandBuffer], v155.origin.x, v155.origin.y, v155.size.width, v155.size.height);
    -[CPUFaceMask findSkinMaskUsingInputTexture:InputRegion:OutputMaskTexture:OutputRegion:FaceBounds:SeedPoints:NumberOfSeedPoints:FillValue:CommandBuffer:](v136, "findSkinMaskUsingInputTexture:InputRegion:OutputMaskTexture:OutputRegion:FaceBounds:SeedPoints:NumberOfSeedPoints:FillValue:CommandBuffer:", v135, [output metalTexture], v239, 20, 255, objc_msgSend(output, "metalCommandBuffer"), v155.origin.x, v155.origin.y, v155.size.width, v155.size.height, v146, v145, v149, v150, *&v144, *&v143, *&v147, *&v148);
    -[CPUFaceMask drawEyeMaskUsingQuads:OutputMaskTexture:OutputRegion:FaceBounds:CommandBuffer:](v136, "drawEyeMaskUsingQuads:OutputMaskTexture:OutputRegion:FaceBounds:CommandBuffer:", &v163, [output metalTexture], objc_msgSend(output, "metalCommandBuffer"), v146, v145, v149, v150, v144, v143, v147, v148);
  }

  else
  {
    v136 = objc_alloc_init(CPUFaceMask);
    [(CPUFaceMask *)v136 setLumaDilateRadius:1];
    [(CPUFaceMask *)v136 setLumaErodeRadius:1];
    [(CPUFaceMask *)v136 setChromaDilateRadius:5];
    [(CPUFaceMask *)v136 setChromaErodeRadius:1];
    -[CPUFaceMask clearOutputMask:WithBytesPerRow:OutputRegion:](v136, "clearOutputMask:WithBytesPerRow:OutputRegion:", [output baseAddress], objc_msgSend(output, "bytesPerRow"), v146, v145, v149, v150);
    -[CPUFaceMask trainSkinMaskUsingInputImage:InputBytesPerRow:InputRegion:QuadRegion:](v136, "trainSkinMaskUsingInputImage:InputBytesPerRow:InputRegion:QuadRegion:", [v23 baseAddress], objc_msgSend(v23, "bytesPerRow"), v222, v155.origin.x, v155.origin.y, v155.size.width, v155.size.height);
    LOBYTE(v138) = -1;
    -[CPUFaceMask findSkinMaskUsingInputImage:InputBytesPerRow:InputRegion:OutputMask:OutputBytesPerRow:OutputRegion:FaceBounds:SeedPoints:NumberOfSeedPoints:FillValue:](v136, "findSkinMaskUsingInputImage:InputBytesPerRow:InputRegion:OutputMask:OutputBytesPerRow:OutputRegion:FaceBounds:SeedPoints:NumberOfSeedPoints:FillValue:", [v23 baseAddress], objc_msgSend(v23, "bytesPerRow"), objc_msgSend(output, "baseAddress"), objc_msgSend(output, "bytesPerRow"), v239, 20, v155.origin.x, v155.origin.y, v155.size.width, v155.size.height, v146, v145, v149, v150, *&v144, *&v143, *&v147, *&v148, v138);
    -[CPUFaceMask drawEyeMaskUsingQuads:OutputMask:OutputBytesPerRow:OutputRegion:](v136, "drawEyeMaskUsingQuads:OutputMask:OutputBytesPerRow:OutputRegion:", &v163, [output baseAddress], objc_msgSend(output, "bytesPerRow"), v146, v145, v149, v150);
  }

  return 1;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  if (input)
  {
    sub_4B928();
  }

  v5 = [arguments objectForKeyedSubscript:{@"faceROI", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  [v5 CGRectValue];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end