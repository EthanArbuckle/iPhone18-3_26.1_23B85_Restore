@interface MPSImageSIFT
- (MPSImageSIFT)initWithDevice:(id)device descriptor:(id)descriptor;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationGaussianPyramid:(id)pyramid destinationDOGPyramid:(id)gPyramid keypointsBuffer:(id)keypointsBuffer keypointBufferOffset:(unint64_t)offset keypointCountBuffer:(id)countBuffer keypointCountBufferOffset:(unint64_t)self0;
@end

@implementation MPSImageSIFT

- (MPSImageSIFT)initWithDevice:(id)device descriptor:(id)descriptor
{
  v187.receiver = self;
  v187.super_class = MPSImageSIFT;
  v6 = [(MPSUnaryImageKernel *)&v187 initWithDevice:?];
  v7 = v6;
  if (v6)
  {
    v6->_sigma = *(descriptor + 2);
    v6->_layersPerOctave = *(descriptor + 2);
    v6->_octaves = *(descriptor + 3);
    v6->_upscale = *(descriptor + 32);
    v6->_contrastThreshold = *(descriptor + 9);
    v6->_edgeThreshold = *(descriptor + 5);
    v6->_initialSigma = *(descriptor + 12);
    v6->_imageBoundary = *(descriptor + 7);
    v6->_orientationRadius = *(descriptor + 16);
    v6->_orientationWeight = *(descriptor + 17);
    v6->_orientationBins = *(descriptor + 9);
    v6->_orientationThreshold = *(descriptor + 20);
    v6->_maximumKeyPoints = *(descriptor + 11);
    v6->_fusedKeypointOrientation = 0;
    v8 = *MEMORY[0x277CD7350];
    v6->_useCompressedTexture = ((*(&v6->super.super.super.isa + v8))[369] & 0x80000) != 0;
    if (v6->_upscale && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v163 = v8;
    if (v7->_sigma < v7->_initialSigma && MTLReportFailureTypeEnabled())
    {
      sigma = v7->_sigma;
      initialSigma = v7->_initialSigma;
      MTLReportFailure();
    }

    v9 = malloc_type_malloc(4 * v7->_layersPerOctave + 12, 0x100004052888210uLL);
    v7->_sigmas = v9;
    v10 = v7->_sigma;
    layersPerOctave = v7->_layersPerOctave;
    *v9 = v10;
    v12 = exp2(1.0 / layersPerOctave);
    v152 = v7;
    if (layersPerOctave + 3 < 2)
    {
LABEL_13:
      v27 = 4.0;
      if (!v7->_upscale)
      {
        v27 = 1.0;
      }

      v28 = -(((v7->_initialSigma * v7->_initialSigma) * v27) - (v10 * v10));
      if (v28 < 0.01)
      {
        v28 = 0.01;
      }

      v29 = sqrtf(v28);
      v30 = vcvtas_u32_f32((v29 * 6.0) + 1.0);
      v31 = v30 | 1;
      if (layersPerOctave + 3 < 2)
      {
        v35 = ((v30 | 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        v33 = v163;
        goto LABEL_26;
      }

      v32 = layersPerOctave + 2;
      v33 = v163;
      if (layersPerOctave + 2 >= 8)
      {
        v34 = v32 & 0xFFFFFFFFFFFFFFF8 | 1;
        v36 = 0uLL;
        v37.i64[1] = 0;
        v37.i64[0] = ((v30 | 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        v38 = (v9 + 5);
        __asm
        {
          FMOV            V2.4S, #6.0
          FMOV            V3.4S, #1.0
        }

        v45 = vdupq_n_s64(1uLL);
        v46 = vdupq_n_s64(7uLL);
        v47 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
        v48 = v32 & 0xFFFFFFFFFFFFFFF8;
        v49 = 0uLL;
        v50 = 0uLL;
        do
        {
          v51 = vrndaq_f32(vmlaq_f32(_Q3, v38[-1], _Q2));
          v52 = vrndaq_f32(vmlaq_f32(_Q3, *v38, _Q2));
          v36 = vaddq_s64(vandq_s8(vaddq_s64(vorrq_s8(vcvtq_u64_f64(vcvt_hight_f64_f32(v51)), v45), v46), v47), v36);
          v37 = vaddq_s64(vandq_s8(vaddq_s64(vorrq_s8(vcvtq_u64_f64(vcvtq_f64_f32(*v51.f32)), v45), v46), v47), v37);
          v50 = vaddq_s64(vandq_s8(vaddq_s64(vorrq_s8(vcvtq_u64_f64(vcvt_hight_f64_f32(v52)), v45), v46), v47), v50);
          v49 = vaddq_s64(vandq_s8(vaddq_s64(vorrq_s8(vcvtq_u64_f64(vcvtq_f64_f32(*v52.f32)), v45), v46), v47), v49);
          v38 += 2;
          v48 -= 8;
        }

        while (v48);
        v35 = vaddvq_s64(vaddq_s64(vaddq_s64(v49, v37), vaddq_s64(v50, v36)));
        if (v32 == (v32 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_26:
          v56 = (*(**(&v7->super.super.super.isa + v33) + 24))(*(&v7->super.super.super.isa + v33));
          v57 = (*(**(&v7->super.super.super.isa + v33) + 40))(*(&v7->super.super.super.isa + v33));
          v61 = objc_msgSend_newBufferWithLength_options_(device, v58, 4 * v35, v57 | (16 * v56), v59, v60);
          v7->_weights = v61;
          v67 = objc_msgSend_contents(v61, v62, v63, v64, v65, v66);
          v70 = v67;
          sigmas = v7->_sigmas;
          v71 = v7->_layersPerOctave;
          if ((v30 & 0x8000000000000000) == 0)
          {
            v72 = v30 >> 1;
            *&v69 = -0.5 / (v29 * v29);
            v180 = v69;
            if (v30 >= 4)
            {
              v159 = vdupq_n_s64(v72);
              v73 = v30 & 0x7FFFFFFFFFFFFFFCLL;
              v74 = xmmword_2399888A0;
              v75 = (v67 + 8);
              LODWORD(v68) = 0;
              v154 = vdupq_n_s64(4uLL);
              v156 = vdupq_n_s64(2uLL);
              v76 = v30 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v183 = *&v68;
                v171 = v74;
                v77 = vsubq_s64(v74, v159);
                v78 = vaddq_s64(v77, v156);
                *v77.i8 = vcvt_f32_f64(vcvtq_f64_s64(v77));
                *v78.i8 = vcvt_f32_f64(vcvtq_f64_s64(v78));
                v79 = vmul_f32(vmul_n_f32(*v77.i8, *&v69), *v77.i8);
                v167 = v79.f32[0];
                v174 = vmul_f32(vmul_n_f32(*v78.i8, *&v69), *v78.i8);
                v177 = expf(v79.f32[1]);
                v164 = expf(v167);
                *&v80 = expf(v174.f32[1]);
                v161 = v80;
                *&v81 = expf(v174.f32[0]);
                LODWORD(v69) = v180;
                v68 = v161;
                HIDWORD(v81) = v161;
                *(v75 - 1) = __PAIR64__(LODWORD(v177), LODWORD(v164));
                *v75 = v81;
                *&v68 = (((v183 + v164) + v177) + *&v81) + *&v161;
                v74 = vaddq_s64(v171, v154);
                v75 += 2;
                v76 -= 4;
              }

              while (v76);
            }

            else
            {
              v73 = 0;
              *&v68 = 0;
            }

            v82 = v31 - v73;
            v83 = &v70->f32[v73];
            v84 = v73 - v72;
            do
            {
              v184 = v68;
              v85 = expf((*&v69 * v84) * v84);
              v69 = v180;
              v68 = v184;
              *v83++ = v85;
              *&v68 = *&v184 + v85;
              ++v84;
              --v82;
            }

            while (v82);
            if (v30 >= 8)
            {
              v86 = v30 & 0x7FFFFFFFFFFFFFF8;
              v87 = vdupq_lane_s32(*&v68, 0);
              v88 = v70 + 1;
              v89 = v30 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v90 = vdivq_f32(*v88, v87);
                v88[-1] = vdivq_f32(v88[-1], v87);
                *v88 = v90;
                v88 += 2;
                v89 -= 8;
              }

              while (v89);
            }

            else
            {
              v86 = 0;
            }

            v91 = v31 - v86;
            v92 = &v70->f32[v86];
            do
            {
              *v92 = *v92 / *&v68;
              ++v92;
              --v91;
            }

            while (v91);
          }

          v93 = v71 + 3;
          if (v71 + 3 < 2)
          {
            v7 = v152;
          }

          else
          {
            v151 = v71;
            v94 = (v70 + 4 * (((v30 | 1) + 7) & 0xFFFFFFFFFFFFFFF8));
            v95 = 1;
            v96 = vdupq_n_s64(2uLL);
            v155 = vdupq_n_s64(4uLL);
            v160 = v96;
            do
            {
              v97 = sigmas[v95];
              v98 = vcvtas_u32_f32((v97 * 6.0) + 1.0);
              v99 = v98 | 1;
              if ((v98 & 0x8000000000000000) == 0)
              {
                v100 = v98 >> 1;
                *&v69 = -0.5 / (v97 * v97);
                v181 = v69;
                if (v98 >= 4)
                {
                  v101 = v98 & 0x7FFFFFFFFFFFFFFCLL;
                  v157 = vdupq_n_s64(v100);
                  v102 = &v94->i64[1];
                  LODWORD(v68) = 0;
                  v103 = v98 & 0x7FFFFFFFFFFFFFFCLL;
                  v104 = xmmword_2399888A0;
                  do
                  {
                    v185 = *&v68;
                    v172 = v104;
                    v105 = vsubq_s64(v104, v157);
                    v106 = vaddq_s64(v105, v96);
                    *v105.i8 = vcvt_f32_f64(vcvtq_f64_s64(v105));
                    *v106.i8 = vcvt_f32_f64(vcvtq_f64_s64(v106));
                    v107 = vmul_f32(vmul_n_f32(*v105.i8, *&v69), *v105.i8);
                    v168 = v107.f32[0];
                    v175 = vmul_f32(vmul_n_f32(*v106.i8, *&v69), *v106.i8);
                    v178 = expf(v107.f32[1]);
                    *&v108 = expf(v168);
                    v165 = *&v108;
                    v109 = v108;
                    *(&v109 + 1) = v178;
                    v169 = v109;
                    v162 = expf(v175.f32[1]);
                    *&v110 = expf(v175.f32[0]);
                    LODWORD(v69) = v181;
                    v96 = v160;
                    *(&v110 + 1) = v162;
                    v68 = v169;
                    *(v102 - 1) = v169;
                    *v102 = v110;
                    *&v68 = (((v185 + v165) + v178) + *&v110) + v162;
                    v104 = vaddq_s64(v172, v155);
                    v102 += 2;
                    v103 -= 4;
                  }

                  while (v103);
                }

                else
                {
                  v101 = 0;
                  *&v68 = 0;
                }

                v111 = v99 - v101;
                v112 = &v94->f32[v101];
                v113 = v101 - v100;
                do
                {
                  v186 = v68;
                  v114 = expf((*&v69 * v113) * v113);
                  v69 = v181;
                  v68 = v186;
                  *v112++ = v114;
                  *&v68 = *&v186 + v114;
                  ++v113;
                  --v111;
                }

                while (v111);
                if (v98 >= 8)
                {
                  v115 = v98 & 0x7FFFFFFFFFFFFFF8;
                  v116 = vdupq_lane_s32(*&v68, 0);
                  v117 = v94 + 1;
                  v118 = v98 & 0x7FFFFFFFFFFFFFF8;
                  do
                  {
                    v119 = vdivq_f32(*v117, v116);
                    v117[-1] = vdivq_f32(v117[-1], v116);
                    *v117 = v119;
                    v117 += 2;
                    v118 -= 8;
                  }

                  while (v118);
                }

                else
                {
                  v115 = 0;
                }

                v120 = v99 - v115;
                v121 = &v94->f32[v115];
                v96 = v160;
                do
                {
                  *v121 = *v121 / *&v68;
                  ++v121;
                  --v120;
                }

                while (v120);
              }

              v94 = (v94 + 4 * ((v99 + 7) & 0x3FFFFFFFFFFFFFF8));
              ++v95;
            }

            while (v95 != v93);
            v122 = v151 + 2;
            if (v151 + 2 < 8)
            {
              v123 = 1;
              v7 = v152;
              goto LABEL_62;
            }

            v123 = v122 & 0xFFFFFFFFFFFFFFF8 | 1;
            v124 = vdupq_n_s64(v31);
            v125 = (sigmas + 5);
            __asm
            {
              FMOV            V1.4S, #6.0
              FMOV            V2.4S, #1.0
            }

            v128 = vdupq_n_s64(1uLL);
            v129 = v122 & 0xFFFFFFFFFFFFFFF8;
            v130 = v124;
            v131 = v124;
            v132 = v124;
            v7 = v152;
            do
            {
              v133 = vrndaq_f32(vmlaq_f32(_Q2, v125[-1], _Q1));
              v134 = vrndaq_f32(vmlaq_f32(_Q2, *v125, _Q1));
              v135 = vcvtq_u64_f64(vcvt_hight_f64_f32(v133));
              v136 = vcvtq_u64_f64(vcvt_hight_f64_f32(v134));
              v137 = vorrq_s8(vcvtq_u64_f64(vcvtq_f64_f32(*v133.f32)), v128);
              v138 = vorrq_s8(v135, v128);
              v139 = vorrq_s8(vcvtq_u64_f64(vcvtq_f64_f32(*v134.f32)), v128);
              v140 = vorrq_s8(v136, v128);
              v130 = vbslq_s8(vcgtq_u64(v130, v138), v130, v138);
              v124 = vbslq_s8(vcgtq_u64(v124, v137), v124, v137);
              v132 = vbslq_s8(vcgtq_u64(v132, v140), v132, v140);
              v131 = vbslq_s8(vcgtq_u64(v131, v139), v131, v139);
              v125 += 2;
              v129 -= 8;
            }

            while (v129);
            v141 = vbslq_s8(vcgtq_u64(v124, v131), v124, v131);
            v142 = vbslq_s8(vcgtq_u64(v130, v132), v130, v132);
            v143 = vbslq_s8(vcgtq_u64(v141, v142), v141, v142);
            v142.i64[0] = vextq_s8(v143, v143, 8uLL).u64[0];
            v31 = vbsl_s8(vcgtd_u64(v143.u64[0], v142.u64[0]), *v143.i8, *v142.i8);
            if (v122 != (v122 & 0xFFFFFFFFFFFFFFF8))
            {
LABEL_62:
              v144 = v151 - v123 + 3;
              v145 = &sigmas[v123];
              do
              {
                v146 = *v145++;
                v147 = vcvtas_u32_f32((v146 * 6.0) + 1.0) | 1;
                if (v31 <= v147)
                {
                  v31 = v147;
                }

                --v144;
              }

              while (v144);
            }
          }

          v7->_maxinumKernelWidth = v31;
          v7->super._checkFlags = 12;
          return v7;
        }
      }

      else
      {
        v34 = 1;
        v35 = ((v30 | 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      v53 = layersPerOctave - v34 + 3;
      v54 = &v9[v34];
      do
      {
        v55 = *v54++;
        v35 += ((vcvtas_u32_f32((v55 * 6.0) + 1.0) | 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        --v53;
      }

      while (v53);
      goto LABEL_26;
    }

    v13 = v12;
    deviceCopy = device;
    v176 = v10;
    v182 = v12;
    if (layersPerOctave <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = (layersPerOctave + 2) & 0xFFFFFFFFFFFFFFFELL;
      v14 = (layersPerOctave + 2) | 1;
      v16 = xmmword_2399888B0;
      v17 = (v9 + 1);
      v166 = vdupq_n_s64(2uLL);
      do
      {
        v179 = v16;
        v18.i64[0] = -1;
        v18.i64[1] = -1;
        v170 = vcvtq_f64_u64(vaddq_s64(v16, v18));
        v173 = pow(v13, v170.f64[0]);
        v19 = pow(v182, v170.f64[1]);
        v13 = v182;
        v20.f64[0] = v173;
        v20.f64[1] = v19;
        v21 = vmulq_n_f64(v20, v176);
        v22 = vmulq_n_f64(v21, v182);
        *v17++ = vcvt_f32_f64(vsqrtq_f64(vmlsq_f64(vmulq_f64(v22, v22), v21, v21)));
        v16 = vaddq_s64(v179, v166);
        v15 -= 2;
      }

      while (v15);
      v7 = v152;
      if (layersPerOctave + 2 == ((layersPerOctave + 2) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v14 = 1;
    }

    v23 = layersPerOctave - v14 + 3;
    v24 = &v9[v14];
    v25 = v14 - 1;
    do
    {
      v26 = pow(v13, v25);
      v13 = v182;
      *&v26 = sqrt(-(v26 * v176 * (v26 * v176) - v182 * (v26 * v176) * (v182 * (v26 * v176))));
      *v24++ = *&v26;
      ++v25;
      --v23;
    }

    while (v23);
LABEL_12:
    v10 = v7->_sigma;
    device = deviceCopy;
    goto LABEL_13;
  }

  return v7;
}

- (void)dealloc
{
  free(self->_sigmas);

  v3.receiver = self;
  v3.super_class = MPSImageSIFT;
  [(MPSKernel *)&v3 dealloc];
}

- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationGaussianPyramid:(id)pyramid destinationDOGPyramid:(id)gPyramid keypointsBuffer:(id)keypointsBuffer keypointBufferOffset:(unint64_t)offset keypointCountBuffer:(id)countBuffer keypointCountBufferOffset:(unint64_t)self0
{
  offsetCopy = offset;
  keypointsBufferCopy = keypointsBuffer;
  bufferCopy = buffer;
  v674 = *MEMORY[0x277D85DE8];
  *&v642 = *MEMORY[0x277CD7350];
  v14 = *(&self->super.super.super.isa + v642);
  v15 = objc_msgSend_pixelFormat(texture, a2, buffer, texture, pyramid, gPyramid);
  PixelInfo = MPSDevice::GetPixelInfo(v14, v15, MPSImageFeatureChannelFormatNone);
  v22 = objc_msgSend_width(texture, v17, v18, v19, v20, v21);
  textureCopy = texture;
  v28 = objc_msgSend_height(texture, v23, v24, v25, v26, v27);
  upscale = self->_upscale;
  v619 = v28;
  v620 = v22;
  v30 = v22 << upscale;
  gPyramidCopy = gPyramid;
  if (v30 >= v28 << upscale)
  {
    v30 = v28 << upscale;
  }

  v37 = vcvtas_u32_f32(log2f(v30) + -2.0);
  octaves = self->_octaves;
  if (octaves >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = self->_octaves;
  }

  v617 = 216;
  layersPerOctave = self->_layersPerOctave;
  if (octaves)
  {
    v37 = v39;
  }

  v634 = v37;
  v40 = *MEMORY[0x277CD7378];
  selfCopy = self;
  v643 = v40;
  if ((*(v40 + self) & 1) == 0)
  {
    if (upscale && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!bufferCopy && MTLReportFailureTypeEnabled())
    {
      v605 = objc_opt_class();
      NSStringFromClass(v605);
      MTLReportFailure();
    }

    if (!textureCopy && MTLReportFailureTypeEnabled())
    {
      v606 = objc_opt_class();
      NSStringFromClass(v606);
      MTLReportFailure();
    }

    objc_msgSend_textureType(textureCopy, v32, v33, v34, v35, v36);
    if (objc_msgSend_textureType(textureCopy, v41, v42, v43, v44, v45) != 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((PixelInfo & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((selfCopy->super._checkFlags & 0x40) == 0 && (PixelInfo & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((selfCopy->super._checkFlags & 4) != 0 && (PixelInfo & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (keypointsBufferCopy)
    {
      objc_msgSend_length(keypointsBufferCopy, v32, v46, v34, v35, v36);
      if (objc_msgSend_length(keypointsBufferCopy, v47, v48, v49, v50, v51) < 36 * selfCopy->_maximumKeyPoints)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v608 = 36 * selfCopy->_maximumKeyPoints;
          objc_msgSend_length(keypointsBufferCopy, v32, v46, v34, v35, v36);
          MTLReportFailure();
        }
      }
    }

    if (pyramid)
    {
      objc_msgSend_count(pyramid, v32, v46, v34, v35, v36);
      if (objc_msgSend_count(pyramid, v52, v53, v54, v55, v56) < v634)
      {
        if (MTLReportFailureTypeEnabled())
        {
          objc_msgSend_count(pyramid, v32, v46, v34, v35, v36);
          MTLReportFailure();
        }
      }
    }

    if (gPyramid)
    {
      objc_msgSend_count(gPyramid, v32, v46, v34, v35, v36);
      if (objc_msgSend_count(gPyramid, v57, v58, v59, v60, v61) < v634)
      {
        if (MTLReportFailureTypeEnabled())
        {
          objc_msgSend_count(gPyramid, v32, v607, v34, v35, v36);
          MTLReportFailure();
        }
      }
    }

    if (pyramid && v634)
    {
      v62 = 0;
      v64 = v619;
      v63 = v620;
      do
      {
        v65 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v32, v62, v34, v35, v36);
        objc_msgSend_width(v65, v66, v67, v68, v69, v70);
        v75 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v71, v62, v72, v73, v74);
        if (objc_msgSend_width(v75, v76, v77, v78, v79, v80) != v63 && MTLReportFailureTypeEnabled())
        {
          v121 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v81, v62, v82, v83, v84);
          objc_msgSend_width(v121, v122, v123, v124, v125, v126);
          MTLReportFailure();
        }

        v85 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v81, v62, v82, v83, v84);
        objc_msgSend_height(v85, v86, v87, v88, v89, v90);
        v95 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v91, v62, v92, v93, v94);
        if (objc_msgSend_height(v95, v96, v97, v98, v99, v100) != v64 && MTLReportFailureTypeEnabled())
        {
          v127 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v101, v62, v102, v103, v104);
          objc_msgSend_height(v127, v128, v129, v130, v131, v132);
          MTLReportFailure();
        }

        v105 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v101, v62, v102, v103, v104);
        objc_msgSend_arrayLength(v105, v106, v107, v108, v109, v110);
        v115 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v111, v62, v112, v113, v114);
        if (objc_msgSend_arrayLength(v115, v116, v117, v118, v119, v120) < *(&selfCopy->super.super.super.isa + v617) + 3 && MTLReportFailureTypeEnabled())
        {
          v133 = *(&selfCopy->super.super.super.isa + v617) + 3;
          v134 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v32, v62, v34, v35, v36);
          objc_msgSend_arrayLength(v134, v135, v136, v137, v138, v139);
          MTLReportFailure();
        }

        v63 >>= 1;
        v64 >>= 1;
        ++v62;
      }

      while (v634 != v62);
    }

    if (gPyramidCopy && v634)
    {
      v140 = 0;
      v142 = v619;
      v141 = v620;
      do
      {
        v143 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v32, v140, v34, v35, v36);
        objc_msgSend_width(v143, v144, v145, v146, v147, v148);
        v153 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v149, v140, v150, v151, v152);
        if (objc_msgSend_width(v153, v154, v155, v156, v157, v158) != v141 && MTLReportFailureTypeEnabled())
        {
          v199 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v159, v140, v160, v161, v162);
          objc_msgSend_width(v199, v200, v201, v202, v203, v204);
          MTLReportFailure();
        }

        v163 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v159, v140, v160, v161, v162);
        objc_msgSend_height(v163, v164, v165, v166, v167, v168);
        v173 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v169, v140, v170, v171, v172);
        if (objc_msgSend_height(v173, v174, v175, v176, v177, v178) != v142 && MTLReportFailureTypeEnabled())
        {
          v205 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v179, v140, v180, v181, v182);
          objc_msgSend_height(v205, v206, v207, v208, v209, v210);
          MTLReportFailure();
        }

        v183 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v179, v140, v180, v181, v182);
        objc_msgSend_arrayLength(v183, v184, v185, v186, v187, v188);
        v193 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v189, v140, v190, v191, v192);
        if (objc_msgSend_arrayLength(v193, v194, v195, v196, v197, v198) < *(&selfCopy->super.super.super.isa + v617) + 2 && MTLReportFailureTypeEnabled())
        {
          v211 = *(&selfCopy->super.super.super.isa + v617) + 2;
          v212 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v32, v140, v34, v35, v36);
          objc_msgSend_arrayLength(v212, v213, v214, v215, v216, v217);
          MTLReportFailure();
        }

        v141 >>= 1;
        v142 >>= 1;
        ++v140;
      }

      while (v634 != v140);
    }
  }

  v611 = 208;
  v218 = 4.0;
  if (!selfCopy->_upscale)
  {
    v218 = 1.0;
  }

  if (-(((selfCopy->_initialSigma * selfCopy->_initialSigma) * v218) - (selfCopy->_sigma * selfCopy->_sigma)) >= 0.01)
  {
    v219 = -(((selfCopy->_initialSigma * selfCopy->_initialSigma) * v218) - (selfCopy->_sigma * selfCopy->_sigma));
  }

  else
  {
    v219 = 0.01;
  }

  v220 = *(&selfCopy->super.super.super.isa + v642);
  if (pyramid)
  {
    v221 = objc_msgSend_objectAtIndexedSubscript_(pyramid, v32, 0, v34, v35, v36);
    v227 = objc_msgSend_pixelFormat(v221, v222, v223, v224, v225, v226);
  }

  else
  {
    v227 = MTLPixelFormatR16Unorm;
  }

  v228 = v634;
  v662 = MPSDevice::GetPixelInfo(v220, v227, MPSImageFeatureChannelFormatNone);
  v233 = *(&selfCopy->super.super.super.isa + v642);
  bufferOffsetCopy = pyramid;
  if (gPyramidCopy)
  {
    v234 = objc_msgSend_objectAtIndexedSubscript_(gPyramidCopy, v229, 0, v230, v231, v232);
    v240 = objc_msgSend_pixelFormat(v234, v235, v236, v237, v238, v239);
  }

  else
  {
    v240 = MTLPixelFormatR16Snorm;
  }

  v609[1] = v609;
  v661 = MPSDevice::GetPixelInfo(v233, v240, MPSImageFeatureChannelFormatNone);
  LODWORD(v639) = selfCopy->_useCompressedTexture & ((*(&selfCopy->super.super.super.isa + v642))[369] >> 19);
  v241 = (MEMORY[0x28223BE20])();
  v243 = (v609 - ((v242 + 15) & 0xFFFFFFFFFFFFFFF0));
  v641 = v242;
  MEMORY[0x28223BE20](v241);
  v245 = (v609 - v244);
  v246 = gPyramidCopy;
  v640 = v243;
  v647 = v609 - v244;
  v247 = 0;
  if (v228)
  {
    TempBuffer = (layersPerOctave + 2);
    countBufferCopy = (layersPerOctave + 3);
    v248 = v228;
    v250 = v619;
    v249 = v620;
    v251 = v642;
    while (1)
    {
      if (bufferOffsetCopy)
      {
        *v243 = 0;
        if (!gPyramidCopy)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v252 = v251;
        v253 = selfCopy;
        v254 = *(&selfCopy->super.super.super.isa + v252);
        *&v649 = v249;
        *(&v649 + 1) = v250;
        *&v650 = countBufferCopy;
        *v243 = sub_2399696CC(v254, &v662, &v649, v639);
        v247 += (*(**(&v253->super.super.super.isa + v252) + 64))(*(&v253->super.super.super.isa + v252));
        v251 = v252;
        gPyramidCopy = v246;
        if (!v246)
        {
LABEL_71:
          v255 = v251;
          v256 = selfCopy;
          v257 = *(&selfCopy->super.super.super.isa + v255);
          *&v649 = v249;
          *(&v649 + 1) = v250;
          *&v650 = TempBuffer;
          *v245 = sub_2399696CC(v257, &v661, &v649, v639);
          v247 += (*(**(&v256->super.super.super.isa + v255) + 64))(*(&v256->super.super.super.isa + v255));
          v251 = v255;
          gPyramidCopy = v246;
          goto LABEL_66;
        }
      }

      *v245 = 0;
LABEL_66:
      v249 >>= 1;
      v250 >>= 1;
      ++v245;
      ++v243;
      if (!--v248)
      {
        goto LABEL_73;
      }
    }
  }

  v251 = v642;
LABEL_73:
  v258 = selfCopy;
  v660 = MPSDevice::GetPixelInfo(*(&selfCopy->super.super.super.isa + v251), MTLPixelFormatR16Unorm, MPSImageFeatureChannelFormatNone);
  v259 = *(&v258->super.super.super.isa + v251);
  *&v649 = v620;
  *(&v649 + 1) = v619;
  *&v650 = 1;
  v260 = sub_2399696CC(v259, &v660, &v649, v639);
  v616 = 320;
  v261 = *(&v258->super.super.super.isa + v251);
  if (v258->_maxinumKernelWidth > 0x1F || (v261[1477] & 8) == 0)
  {
    (*(*v261 + 64))(v261, v260);
  }

  v262 = bufferCopy;
  v263 = v634;
  v264 = v246;
  v265 = v643;

  v266 = objc_alloc(MEMORY[0x277CD7210]);
  v274 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v266, v267, v262, 0, v268, v269);
  v658 = v274;
  v659 = v258;
  v275 = v265[v258];
  v276 = bufferOffsetCopy;
  if ((v275 & 0x18) != 0)
  {
    v277 = *(&v258->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v277 || (v278 = objc_opt_class(), v279 = NSStringFromClass(v278), objc_msgSend_setLabel_(v258, v280, v279, v281, v282, v283), (v277 = v279) != 0))
    {
      objc_msgSend_setLabel_(v274, v270, v277, v271, v272, v273);
    }
  }

  MEMORY[0x23EE7BAC0](v657, bufferCopy, 0);
  v285 = v619;
  v284 = v620;
  v286 = MPSAutoCache::PrefetchHeapSize();
  v287 = MEMORY[0x28223BE20](v286);
  v628 = v609 - ((v288 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v287);
  v621 = v609 - v293;
  if (v263)
  {
    v294 = 0;
    v618 = layersPerOctave + 3;
    v295 = layersPerOctave + 2;
    v296 = sqrtf(v219);
    v297 = v640;
    do
    {
      *&v649 = v284;
      *(&v649 + 1) = v285;
      *&v650 = v618;
      if (v276)
      {
        CompressedTempTexture = objc_msgSend_objectAtIndexedSubscript_(v276, v289, v294, v290, v291, v292);
      }

      else
      {
        v303 = *(v297 + 8 * v294);
        CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
      }

      *&v628[8 * v294] = CompressedTempTexture;
      *&v650 = v295;
      if (v264)
      {
        v304 = objc_msgSend_objectAtIndexedSubscript_(v264, v299, v294, v300, v301, v302);
      }

      else
      {
        v305 = *(v647 + 8 * v294);
        v304 = MPSAutoCache::GetCompressedTempTexture();
      }

      *&v621[8 * v294] = v304;

      v284 >>= 1;
      v285 >>= 1;
      ++v294;
    }

    while (v634 != v294);
    v647 = 0;
    if (v639)
    {
      v308 = 0x1000000;
    }

    else
    {
      v308 = 0;
    }

    v637 = v308;
    if (v639)
    {
      v309 = 16;
    }

    else
    {
      v309 = 15;
    }

    v627 = v309 << 8;
    v310 = roundf((v296 * 6.0) + 1.0);
    v615 = v309;
    v614 = v309 - 1;
    v640 = (layersPerOctave + 3);
    v311 = textureCopy;
    v312 = selfCopy;
    v314 = v619;
    v313 = v620;
    while (1)
    {
      v654 = v313;
      v655 = v314;
      v656 = 1;
      if (*(&v312->super.super.super.isa + v616) > 0x1F || ((*(&v312->super.super.super.isa + v642))[1477] & 8) == 0)
      {
        v636 = MPSAutoCache::GetCompressedTempTexture();
        v619 = v314;
        v620 = v313;
        if (v618)
        {
          break;
        }

        goto LABEL_168;
      }

      v636 = 0;
      v619 = v314;
      v620 = v313;
      if (v618)
      {
        break;
      }

LABEL_168:
      MPSAutoCache::ReleaseTempResource();
      v313 = v620 >> 1;
      v314 = v619 >> 1;
      v311 = textureCopy;
      v263 = v634;
      if (++v647 == v634)
      {
        goto LABEL_171;
      }
    }

    v315 = 0;
    v316 = 0;
    v632 = &v628[8 * v647];
    countBufferCopy = *v632;
    if (v647)
    {
      v317 = 0;
    }

    else
    {
      v317 = v311;
    }

    v625 = *&v621[8 * v647];
    v626 = v317;
    v635 = v647 + 1;
    v318 = (v313 + 31) >> 5;
    if (v318 >= 2)
    {
      v318 = 2;
    }

    v622 = (v314 + 15) >> 4;
    v623 = 32 * v318;
    *&v307 = __PAIR64__(v314, v313);
    v638 = v307;
    v641 = v314 - 1;
    v629 = (v313 + 63) >> 6;
    v630 = (v614 + v313) / v615;
    v624 = (v313 + 32 * v318 - 1) / (32 * v318);
    while (1)
    {
      v319 = v310;
      if (v316 | v647)
      {
        v319 = roundf((v312->_sigmas[v316] * 6.0) + 1.0);
      }

      v320 = v319;
      v321 = v319 | 1;
      if (v647 && !v316)
      {
        goto LABEL_108;
      }

      if (objc_msgSend_textureType(countBufferCopy, v289, v306, v290, v291, v292) != 3)
      {
        break;
      }

      v327 = objc_msgSend_pixelFormat(countBufferCopy, v322, v323, v324, v325, v326);
      v643 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(countBufferCopy, v328, v327, 2, 0, 1, v316, 1);
      if (v316)
      {
        v329 = objc_msgSend_pixelFormat(countBufferCopy, v322, v323, v324, v325, v326);
        TempBuffer = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(countBufferCopy, v330, v329, 2, 0, 1, v316 - 1, 1);
        v336 = objc_msgSend_pixelFormat(v625, v331, v332, v333, v334, v335);
        bufferOffsetCopy = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v625, v337, v336, 2, 0, 1, v316 - 1, 1);
        goto LABEL_117;
      }

      bufferOffsetCopy = 0;
      TempBuffer = v626;
      v338 = 0;
      v339 = selfCopy;
      if (!layersPerOctave)
      {
LABEL_118:
        if (v635 != v634)
        {
          v338 = *&v628[8 * v635];
          if (objc_msgSend_textureType(v338, v322, v323, v324, v325, v326) == 3)
          {
            v340 = objc_msgSend_pixelFormat(v338, v322, v323, v324, v325, v326);
            v338 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v338, v341, v340, 2, 0, 1, 0, 1);
          }

          v339 = selfCopy;
        }
      }

LABEL_122:
      if (v320 <= 0x1F && ((*(&v339->super.super.super.isa + v642))[1477] & 8) != 0)
      {
        v405 = objc_msgSend_contents(v339->_weights, v322, v323, v324, v325, v326);
        v406 = v642;
        memcpy(&v649, (v405 + 4 * v315), 4 * v321);
        v407 = *(&v339->super.super.super.isa + v406);
        edgeMode = v339->super._edgeMode;
        Sampler = MPSDevice::GetSampler();
        v410 = (v624 + 40 * (*(&v339->super.super.super.isa + v406))[1480] - 1) / v624;
        if (v410 >= v622)
        {
          v410 = v622;
        }

        v411 = 16 * ((v641 + (16 * v410)) / (16 * v410));
        if (v411 >= 0x200)
        {
          v412 = 512;
        }

        else
        {
          v412 = v411;
        }

        *&v413 = -1;
        *(&v413 + 1) = -1;
        *&v667[48] = v413;
        *&v667[64] = v413;
        *&v667[24] = -1;
        *&v667[32] = v413;
        *v667 = v413;
        *&v667[16] = v412 | ((v338 != 0) << 20) | ((bufferOffsetCopy != 0) << 21) | v637 | (v321 << 25);
        v414 = *(&v339->super.super.super.isa + *MEMORY[0x277CD7370]);
        ComputeState = MPSLibrary::GetComputeState();
        v668.i64[0] = 0;
        v668.i16[5] = WORD2(v638);
        v668.i16[4] = v638;
        v668.i32[3] = v321;
        v669 = __PAIR64__(v316, v647);
        v670 = 0u;
        v671 = 0u;
        v672 = 0u;
        v673 = 0;
        objc_msgSend_setComputePipelineState_(v274, v416, ComputeState, v417, v418, v419);
        objc_msgSend_setTexture_atIndex_(v274, v420, TempBuffer, 0, v421, v422);
        objc_msgSend_setTexture_atIndex_(v274, v423, v643, 1, v424, v425);
        if (v338)
        {
          objc_msgSend_setTexture_atIndex_(v274, v426, v338, 2, v427, v428);
        }

        if (bufferOffsetCopy)
        {
          objc_msgSend_setTexture_atIndex_(v274, v426, bufferOffsetCopy, 3, v427, v428);
        }

        objc_msgSend_setBytes_length_atIndex_(v274, v426, &v668, 76, 0, v428);
        objc_msgSend_setBytes_length_atIndex_(v274, v429, &v649, 128, 1, v430);
        objc_msgSend_setSamplerState_atIndex_(v274, v431, Sampler, 0, v432, v433);
        if (v639)
        {
          objc_msgSend_setImageblockWidth_height_(v274, v434, v623, 16, v435, v436);
        }

        *&v665 = v624;
        *(&v665 + 1) = (v641 + v412) / v412;
        v666 = 1;
        v663 = v623;
        v664 = vdupq_n_s64(1uLL);
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v274, v434, &v665, &v663, v435, v436);
      }

      else
      {
        v342 = v339->super._edgeMode;
        v343 = MPSDevice::GetSampler();
        *&v344 = -1;
        *(&v344 + 1) = -1;
        v652 = v344;
        v653 = v344;
        v650 = v344;
        v651 = v344;
        v649 = v344;
        if (v321 >= 8)
        {
          v345 = 8;
        }

        else
        {
          v345 = v321;
        }

        v346 = v321 % v345;
        if (v321 % v345 > 3)
        {
          v346 = v321 % v345 - 4;
        }

        if (v346 <= 1)
        {
          v347 = 4 * (v321 % v345 > 3);
        }

        else
        {
          v347 = (4 * (v321 % v345 > 3)) | 2;
        }

        if (v346 > 1)
        {
          v346 -= 2;
        }

        if (v346)
        {
          v348 = v347 + 1;
        }

        else
        {
          v348 = v347;
        }

        *&v650 = v627 | (v348 << 16) | v637 | v345 | 0x80000;
        v349 = *(&selfCopy->super.super.super.isa + *MEMORY[0x277CD7370]);
        v350 = MPSLibrary::GetComputeState();
        *v667 = 0;
        *&v667[10] = WORD2(v638);
        *&v667[8] = v638;
        *&v667[12] = v321;
        *&v667[16] = __PAIR64__(v316, v647);
        memset(&v667[24], 0, 52);
        objc_msgSend_setComputePipelineState_(v274, v351, v350, v352, v353, v354);
        objc_msgSend_setTexture_atIndex_(v274, v355, TempBuffer, 0, v356, v357);
        objc_msgSend_setTexture_atIndex_(v274, v358, v636, 1, v359, v360);
        objc_msgSend_setBytes_length_atIndex_(v274, v361, v667, 76, 0, v362);
        objc_msgSend_setBuffer_offset_atIndex_(v274, v363, selfCopy->_weights, 4 * v315, 1, v364);
        objc_msgSend_setSamplerState_atIndex_(v274, v365, v343, 0, v366, v367);
        if (v639)
        {
          objc_msgSend_setImageblockWidth_height_(v274, v368, 16, 64, v369, v370);
          v371 = 64;
          v372 = 6;
        }

        else
        {
          v371 = 128;
          v372 = 7;
        }

        v668.i64[0] = v630;
        v668.i64[1] = (v371 + v641) >> v372;
        v669 = 1;
        *&v665 = 1;
        *(&v665 + 1) = v371;
        v666 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v274, v368, &v668, &v665, v369, v370);
        v274 = v658;
        v373 = *(&selfCopy->super.super.super.isa + v642);
        v374 = selfCopy->super._edgeMode;
        v375 = MPSDevice::GetSampler();
        *&v376 = -1;
        *(&v376 + 1) = -1;
        v652 = v376;
        v653 = v376;
        *(&v650 + 1) = -1;
        v651 = v376;
        v649 = v376;
        *&v650 = v637 | ((v348 | (16 * (v338 != 0)) | (32 * (bufferOffsetCopy != 0))) << 16) | v345 | 0x1000;
        v377 = *(&selfCopy->super.super.super.isa + *MEMORY[0x277CD7370]);
        v378 = MPSLibrary::GetComputeState();
        *v667 = 0;
        *&v667[10] = WORD2(v638);
        *&v667[8] = v638;
        *&v667[12] = v321;
        *&v667[16] = __PAIR64__(v316, v647);
        memset(&v667[24], 0, 52);
        objc_msgSend_setComputePipelineState_(v274, v379, v378, v380, v381, v382);
        objc_msgSend_setTexture_atIndex_(v274, v383, v636, 0, v384, v385);
        objc_msgSend_setTexture_atIndex_(v274, v386, v643, 1, v387, v388);
        if (v338)
        {
          objc_msgSend_setTexture_atIndex_(v274, v389, v338, 2, v390, v391);
        }

        if (bufferOffsetCopy)
        {
          objc_msgSend_setTexture_atIndex_(v274, v389, TempBuffer, 3, v390, v391);
          objc_msgSend_setTexture_atIndex_(v274, v392, bufferOffsetCopy, 4, v393, v394);
        }

        objc_msgSend_setBytes_length_atIndex_(v274, v389, v667, 76, 0, v391);
        objc_msgSend_setBuffer_offset_atIndex_(v274, v395, selfCopy->_weights, 4 * v315, 1, v396);
        objc_msgSend_setSamplerState_atIndex_(v274, v397, v375, 0, v398, v399);
        if (v639)
        {
          objc_msgSend_setImageblockWidth_height_(v274, v400, 64, 16, v401, v402);
          v403 = 0;
          v404 = 1;
        }

        else
        {
          v403 = 2;
          v404 = 4;
        }

        v668.i64[0] = v629;
        v668.i64[1] = (v641 + (16 << v403)) >> (v403 | 4u);
        v669 = 1;
        *&v665 = 64;
        *(&v665 + 1) = v404;
        v666 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v274, v400, &v668, &v665, v401, v402);
      }

      if (v643 != countBufferCopy)
      {
      }

      if (TempBuffer != textureCopy)
      {
      }

      if (v338 != v632[1])
      {
      }

LABEL_108:
      v315 += (v321 + 7) & 0xFFFFFFFFFFFFFFF8;
      ++v316;
      v312 = selfCopy;
      if (v640 == v316)
      {
        goto LABEL_168;
      }
    }

    bufferOffsetCopy = 0;
    v643 = countBufferCopy;
    TempBuffer = v626;
LABEL_117:
    v338 = 0;
    v339 = selfCopy;
    if (layersPerOctave == v316)
    {
      goto LABEL_118;
    }

    goto LABEL_122;
  }

  v312 = selfCopy;
LABEL_171:
  *&v437 = -1;
  *(&v437 + 1) = -1;
  v652 = v437;
  v653 = v437;
  v650 = v437;
  v651 = v437;
  v649 = v437;
  *&v650 = *(&v312->super.super.super.isa + v617);
  v438 = *MEMORY[0x277CD7370];
  v439 = *(&v312->super.super.super.isa + v438);
  v639 = MPSLibrary::GetComputeState();
  v647 = 312;
  v440 = *(&v312->super.super.super.isa + v438);
  if (v312->_fusedKeypointOrientation)
  {
    v640 = MPSLibrary::GetComputeState();
    v641 = 0;
    *&v638 = 0;
  }

  else
  {
    v641 = MPSLibrary::GetComputeState();
    v441 = *(&selfCopy->super.super.super.isa + v438);
    *&v638 = MPSLibrary::GetComputeState();
    v640 = 0;
  }

  v442 = *(&selfCopy->super.super.super.isa + v642);
  v443 = selfCopy->super._edgeMode;
  v643 = MPSDevice::GetSampler();
  TempBuffer = MPSAutoCache::GetTempBuffer(v657, 16, 0);
  LODWORD(v663) = 0;
  objc_msgSend_setComputePipelineState_(v274, v444, v639, v445, v446, v447);
  v448 = keypointsBufferCopy;
  v449 = v658;
  countBufferCopy = countBuffer;
  bufferOffsetCopy = bufferOffset;
  objc_msgSend_setBuffer_offset_atIndex_(v658, v450, countBuffer, bufferOffset, 0, v451);
  objc_msgSend_setBuffer_offset_atIndex_(v449, v452, TempBuffer, 0, 1, v453);
  LODWORD(v663) = 0;
  objc_msgSend_setBytes_length_atIndex_(v449, v454, &v663, 4, 2, v455);
  *v667 = vdupq_n_s64(1uLL);
  *&v667[16] = 1;
  v668 = *v667;
  v669 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v449, v456, v667, &v668, v457, v458);
  if (v263)
  {
    v464 = 0;
    v642 = xmmword_239988E10;
    do
    {
      v465 = *&v628[8 * v464];
      v466 = *&v621[8 * v464];
      v467 = objc_msgSend_width(v466, v459, v460, v461, v462, v463);
      if (v467 > 2 * selfCopy->_imageBoundary)
      {
        v468 = objc_msgSend_height(v466, v459, v460, v461, v462, v463);
        if (v468 > 2 * selfCopy->_imageBoundary)
        {
          if ((*(&selfCopy->super.super.super.isa + v647) & 1) == 0)
          {
            objc_msgSend_setComputePipelineState_(v449, v459, v639, v461, v462, v463);
            v449 = v658;
            objc_msgSend_setBuffer_offset_atIndex_(v658, v469, countBufferCopy, bufferOffsetCopy, 0, v470);
            objc_msgSend_setBuffer_offset_atIndex_(v449, v471, TempBuffer, 0, 1, v472);
            LODWORD(v663) = 1;
            objc_msgSend_setBytes_length_atIndex_(v449, v473, &v663, 4, 2, v474);
            *v667 = vdupq_n_s64(1uLL);
            *&v667[16] = 1;
            v668 = *v667;
            v669 = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v449, v475, v667, &v668, v476, v477);
          }

          contrastThreshold = selfCopy->_contrastThreshold;
          v479 = *(&selfCopy->super.super.super.isa + v617);
          memset(v667, 0, 76);
          v480 = objc_msgSend_width(v466, v459, v460, v461, v462, v463);
          v486 = objc_msgSend_height(v466, v481, v482, v483, v484, v485);
          *&v491 = contrastThreshold / v479 * 0.996108949;
          *&v667[10] = v486;
          *&v667[8] = v480;
          *&v667[16] = v464;
          *&v667[24] = selfCopy->_imageBoundary;
          v492 = *(&selfCopy->super.super.super.isa + v617);
          *&v667[26] = v492;
          *&v493 = selfCopy->_edgeThreshold;
          *&v667[28] = 1.0 / v492;
          *&v667[32] = __PAIR64__(v493, v491);
          *&v667[40] = *(&selfCopy->super.super.super.isa + v611);
          orientationRadius = selfCopy->_orientationRadius;
          orientationWeight = selfCopy->_orientationWeight;
          orientationBins = selfCopy->_orientationBins;
          *&v667[44] = orientationBins;
          *&v667[48] = __PAIR64__(LODWORD(orientationWeight), LODWORD(orientationRadius));
          *&v667[56] = selfCopy->_orientationThreshold;
          *&v667[60] = selfCopy->_maximumKeyPoints;
          *&v667[64] = orientationBins / 6.2832;
          *&v667[68] = 360.0 / orientationBins;
          *&v667[72] = (1 << (v464 + 1));
          if (*(&selfCopy->super.super.super.isa + v647))
          {
            objc_msgSend_setComputePipelineState_(v449, v487, v640, v488, v489, v490);
          }

          else
          {
            objc_msgSend_setComputePipelineState_(v449, v487, v641, v488, v489, v490);
          }

          v449 = v658;
          objc_msgSend_setTexture_atIndex_(v658, v497, v466, 0, v498, v499);
          objc_msgSend_setTexture_atIndex_(v449, v500, v465, 1, v501, v502);
          objc_msgSend_setBytes_length_atIndex_(v449, v503, v667, 76, 0, v504);
          objc_msgSend_setBuffer_offset_atIndex_(v449, v505, v448, offsetCopy, 1, v506);
          objc_msgSend_setBuffer_offset_atIndex_(v449, v507, countBufferCopy, bufferOffsetCopy, 2, v508);
          if (*(&selfCopy->super.super.super.isa + v647) == 1)
          {
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(v449, v509, 8 * selfCopy->_orientationBins, 0, v510, v511);
          }

          objc_msgSend_setSamplerState_atIndex_(v449, v509, v643, 0, v510, v511);
          v517 = objc_msgSend_width(v466, v512, v513, v514, v515, v516);
          imageBoundary = selfCopy->_imageBoundary;
          v524 = objc_msgSend_height(v466, v519, v520, v521, v522, v523);
          v525 = (v524 - 2 * selfCopy->_imageBoundary + 1) >> 1;
          v668.i64[0] = (v517 - 2 * imageBoundary + 61) / 0x3E;
          v668.i64[1] = v525;
          v669 = 1;
          v665 = v642;
          v666 = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v449, v526, &v668, &v665, v527, v528);
          if ((*(&selfCopy->super.super.super.isa + v647) & 1) == 0)
          {
            objc_msgSend_setComputePipelineState_(v449, v459, v639, v461, v462, v463);
            objc_msgSend_setBuffer_offset_atIndex_(v449, v529, countBufferCopy, bufferOffsetCopy, 0, v530);
            objc_msgSend_setBuffer_offset_atIndex_(v449, v531, TempBuffer, 0, 1, v532);
            LODWORD(v663) = 2;
            objc_msgSend_setBytes_length_atIndex_(v449, v533, &v663, 4, 2, v534);
            v668 = vdupq_n_s64(1uLL);
            v669 = 1;
            v665 = v668;
            v666 = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v449, v535, &v668, &v665, v536, v537);
            objc_msgSend_setComputePipelineState_(v449, v538, v638, v539, v540, v541);
            objc_msgSend_setTexture_atIndex_(v449, v542, v465, 0, v543, v544);
            objc_msgSend_setBytes_length_atIndex_(v449, v545, v667, 76, 0, v546);
            objc_msgSend_setBuffer_offset_atIndex_(v449, v547, keypointsBufferCopy, offsetCopy, 1, v548);
            objc_msgSend_setBuffer_offset_atIndex_(v449, v549, countBufferCopy, bufferOffsetCopy, 2, v550);
            objc_msgSend_setBuffer_offset_atIndex_(v449, v551, TempBuffer, 0, 3, v552);
            objc_msgSend_setSamplerState_atIndex_(v449, v553, v643, 0, v554, v555);
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(v449, v556, 8 * selfCopy->_orientationBins, 0, v557, v558);
            v668 = v642;
            v669 = 1;
            objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v449, v559, TempBuffer, 4, &v668, v560);
          }

          v448 = keypointsBufferCopy;
        }
      }

      ++v464;
    }

    while (v634 != v464);
  }

  v561 = textureCopy;
  if (textureCopy)
  {
    v562 = objc_msgSend_userDictionary(bufferCopy, v459, v460, v461, v462, v463);
    v567 = objc_msgSend_objectForKey_(v562, v563, @"_MPSCommandBufferRetainListKey", v564, v565, v566);
    if (!v567)
    {
      v572 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v562, v573, v572, @"_MPSCommandBufferRetainListKey", v574, v575);

      *v667 = MEMORY[0x277D85DD0];
      *&v667[8] = 3221225472;
      *&v667[16] = sub_23993DA2C;
      *&v667[24] = &unk_278AC37A8;
      *&v667[32] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(bufferCopy, v576, v667, v577, v578, v579);
      v567 = v572;
    }

    objc_msgSend_addObject_(v567, v568, v561, v569, v570, v571);
  }

  if (v448)
  {
    v580 = bufferCopy;
    v581 = objc_msgSend_userDictionary(bufferCopy, v459, v460, v461, v462, v463);
    v586 = objc_msgSend_objectForKey_(v581, v582, @"_MPSCommandBufferRetainListKey", v583, v584, v585);
    if (!v586)
    {
      v591 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v581, v592, v591, @"_MPSCommandBufferRetainListKey", v593, v594);

      *v667 = MEMORY[0x277D85DD0];
      *&v667[8] = 3221225472;
      *&v667[16] = sub_23993DA2C;
      *&v667[24] = &unk_278AC37A8;
      *&v667[32] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(v580, v595, v667, v596, v597, v598);
      v586 = v591;
    }

    objc_msgSend_addObject_(v586, v587, v448, v588, v589, v590);
  }

  MPSAutoCache::~MPSAutoCache(v657);
  objc_msgSend_endEncoding(v449, v599, v600, v601, v602, v603);

  v604 = *MEMORY[0x277D85DE8];
}

@end