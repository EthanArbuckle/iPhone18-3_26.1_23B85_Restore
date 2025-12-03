@interface MPSImageConversion
- (MPSImageConversion)initWithCoder:(id)coder device:(id)device;
- (MPSImageConversion)initWithDevice:(id)device;
- (MPSImageConversion)initWithDevice:(id)device srcAlpha:(MPSAlphaType)srcAlpha destAlpha:(MPSAlphaType)destAlpha backgroundColor:(CGFloat *)backgroundColor conversionInfo:(CGColorConversionInfoRef)conversionInfo;
- (MPSImageConversion)initWithDevice:(id)device transform:(id)transform;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageConversion

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v105.receiver = self;
  v105.super_class = MPSImageConversion;
  v4 = [(MPSUnaryImageKernel *)&v105 debugDescription];
  p_convertInfo = &self->convertInfo;
  nStages = self->convertInfo.nStages;
  sourceAlpha = self->sourceAlpha;
  if (sourceAlpha > 2)
  {
    v8 = "<unknown alpha type>";
  }

  else
  {
    v8 = off_278AF6908[sourceAlpha];
  }

  v102 = v8;
  v103 = v4;
  destinationAlpha = self->destinationAlpha;
  if (destinationAlpha > 2)
  {
    v10 = "<unknown alpha type>";
  }

  else
  {
    v10 = off_278AF6908[destinationAlpha];
  }

  v101 = v10;
  v11 = p_convertInfo->bgColor[0];
  v12 = self->convertInfo.bgColor[1];
  v13 = self->convertInfo.bgColor[2];
  v14 = self->convertInfo.bgColor[3];
  nCHOut = self->convertInfo.nCHOut;
  nCHIn = self->convertInfo.nCHIn;
  stagesClampFlags = self->convertInfo.stagesClampFlags;
  v17 = objc_alloc_init(MEMORY[0x277CCACA8]);
  v18 = v17;
  if ((nStages & 0x80000000) != 0)
  {
    v25 = v17;
  }

  else
  {
    v19 = nStages;
    do
    {
      v20 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = objc_msgSend_initWithFormat_(v20, v21, @"%d%@", v22, v23, v24, (stagesClampFlags >> v19) & 1, v18);

      v26 = v19-- + 1;
      v18 = v25;
    }

    while (v26 > 1);
  }

  v27 = v25;
  v32 = objc_msgSend_initWithFormat_(v3, v28, @"%@\n\tConversion Stages:  %d \n\tsourceAlpha:        %s \n\tdestinationAlpha:   %s \n\tBackground Color:   { %g, %g, %g, %g } \n\tInput channels:     %d \n\tOutput channels:    %d\n\tStage clamp flags:  %@\n\tStages:\n\t{\n", v29, v30, v31, v103, nStages, v102, v101, *&v11, *&v12, *&v13, *&v14, nCHIn, nCHOut, v27);
  v37 = v32;
  if (self->convertInfo.nStages >= 1)
  {
    v38 = 0;
    v39 = 0;
    p_convertInfoPtrs = &self->convertInfoPtrs;
    v41 = 0x277CCA000uLL;
    while (1)
    {
      v50 = 0;
      stages = p_convertInfoPtrs->stages;
      v60 = (p_convertInfoPtrs->stages + v38);
      v61 = *(v60 + 2);
      if (v61 > 3)
      {
        if ((v61 - 4) >= 3)
        {
          goto LABEL_16;
        }

        v66 = &p_convertInfoPtrs->data[*v60];
        v67 = &p_convertInfoPtrs->fData[*v66];
        v68 = objc_alloc(*(v41 + 3240));
        v49 = objc_msgSend_initWithFormat_(v68, v69, @"\t\tStage index:      %d\n\t\tLuminance Scale stage:\n\t\tOptions:          %u\n\t\tgain =               %.6f\n\t\tgamma =              %.6f\n\t\tcoefficients =    (%.6f %.6f %.6f %.6f)", v70, v71, v72, v39, v66[5], *v67, v67[1], v67[2], v67[3], v67[4], v67[5], v94, v95, v96, v97, v98, v99);
        goto LABEL_15;
      }

      if (v61 == 1)
      {
        break;
      }

      if (v61 == 2)
      {
        v73 = &p_convertInfoPtrs->data[*v60];
        v74 = objc_alloc(*(v41 + 3240));
        v49 = objc_msgSend_initWithFormat_(v74, v75, @"\t\tStage index:      %d\n\t\tLUT stage:\n\t\tOptions:          %u\n\t\tNum Inputs:       %d\n\t\tNum Outputs:      %d\n\t\tNum Gridpoints:   %d\n\t\tLUT Texture idx:  %d", v76, v77, v78, v39, v73[5], v73[1], v73[2], v73[3], v73[4], v92, v93, v94, v95, v96, v97, v98, v99);
        goto LABEL_15;
      }

      if (v61 == 3)
      {
        v62 = *(stages + v38 + 12);
        v104 = stages + v38;
        if (v62 < 1)
        {
          v65 = 0;
          v64 = 0;
LABEL_31:
          v79 = 0;
        }

        else
        {
          data = p_convertInfoPtrs->data;
          v64 = &data[*v60];
          if (v62 == 1)
          {
            v65 = 0;
            goto LABEL_31;
          }

          v79 = &data[*(stages + v38 + 2)];
          if (v62 < 3)
          {
            v65 = 0;
          }

          else
          {
            v65 = &data[*(stages + v38 + 4)];
            if (v62 != 3)
            {
              v80 = &data[*(stages + v38 + 6)];
              goto LABEL_33;
            }
          }
        }

        v80 = 0;
LABEL_33:
        v81 = sub_239962AB8(v64, p_convertInfoPtrs->fData, 0);
        v82 = sub_239962AB8(v79, p_convertInfoPtrs->fData, 1);
        v83 = sub_239962AB8(v65, p_convertInfoPtrs->fData, 2);
        v84 = sub_239962AB8(v80, p_convertInfoPtrs->fData, 3);
        v85 = objc_alloc(MEMORY[0x277CCACA8]);
        v50 = objc_msgSend_initWithFormat_(v85, v86, @"\t\tStage index:      %d\n\t\tTRC stage:\n\t\tNum channels:     %d\n\t\t{\n%@%@%@%@\n\t\t}", v87, v88, v89, v39, *(v104 + 3), v81, v82, v83, v84);

        v41 = 0x277CCA000;
      }

LABEL_16:
      v51 = p_convertInfo->nStages - 1;
      v52 = objc_alloc(*(v41 + 3240));
      if (v39 >= v51)
      {
        v57 = objc_msgSend_initWithFormat_(v52, v53, @"%@%@\n\t}", v54, v55, v56, v37, v50);
      }

      else
      {
        v57 = objc_msgSend_initWithFormat_(v52, v53, @"%@%@,\n", v54, v55, v56, v37, v50);
      }

      v58 = v57;

      ++v39;
      v38 += 16;
      v37 = v58;
      if (v39 >= p_convertInfo->nStages)
      {
        goto LABEL_39;
      }
    }

    v42 = &p_convertInfoPtrs->data[*v60];
    v43 = &p_convertInfoPtrs->fData[*v42];
    v44 = objc_alloc(*(v41 + 3240));
    v49 = objc_msgSend_initWithFormat_(v44, v45, @"\t\tStage index:      %d\n\t\tMatrix stage:\n\t\tOptions:          %u\n\t\t                 (%.6f %.6f %.6f %.6f)\n\t\tMatrix =         (%.6f %.6f %.6f %.6f)\n\t\t                 (%.6f %.6f %.6f %.6f)", v46, v47, v48, v39, v42[1], *v43, v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10], v43[11]);
LABEL_15:
    v50 = v49;
    goto LABEL_16;
  }

  v58 = v32;
  v41 = 0x277CCA000uLL;
LABEL_39:
  v90 = objc_msgSend_stringWithString_(*(v41 + 3240), v33, v58, v34, v35, v36);

  return v90;
}

- (MPSImageConversion)initWithDevice:(id)device
{
  v17.receiver = self;
  v17.super_class = MPSImageConversion;
  v4 = [(MPSUnaryImageKernel *)&v17 initWithDevice:?];
  v5 = v4;
  if (v4)
  {
    v4->super._checkFlags = 3;
    v4->transform = 0;
    v4->sourceAlpha = 1;
    v4->destinationAlpha = 1;
    __asm { FMOV            V1.4S, #1.0 }

    *v4->srcDecode = 0u;
    *&v4->srcDecode[16] = _Q1;
    *v4->destDecode = 0u;
    *&v4->destDecode[16] = _Q1;
    v4->super._encode = sub_23995A480;
    v4->super._encodeData = v4;
    sub_23995D1B4(v4, 0);
    sub_23995D4C4(v5, device, v15, v11, v12, v13, v14);
  }

  return v5;
}

- (MPSImageConversion)initWithCoder:(id)coder device:(id)device
{
  v139.receiver = self;
  v139.super_class = MPSImageConversion;
  v6 = [MPSUnaryImageKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (!v6)
  {
    return v6;
  }

  MPSDevice = MPSDevice::GetMPSDevice();
  if (!MPSDevice)
  {
    return 0;
  }

  *(v6 + 42) = 3;
  *(v6 + 26) = 0;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  *(v6 + 20) = 0u;
  *(v6 + 21) = 0u;
  v12 = MEMORY[0x277CD7358];
  *(v6 + 44) = 0;
  if (*&v6[*v12 + 2] << 16 != 0x10000)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v57 = objc_opt_class();
      NSStringFromClass(v57);
      MTLReportFailure();
    }

    goto LABEL_27;
  }

  v136 = MPSDevice;
  *(v6 + 22) = sub_23995A480;
  *(v6 + 24) = v6;
  *(v6 + 60) = objc_msgSend_decodeInt64ForKey_(coder, v8, @"kMPSImageConversion.sourceAlpha", v9, v10, v11);
  *(v6 + 61) = objc_msgSend_decodeInt64ForKey_(coder, v13, @"kMPSImageConversion.destinationAlpha", v14, v15, v16);
  v138 = 0;
  v137 = 0;
  v19 = sub_23995E98C(coder, @"kMPSImageConversion.srcDecode", &v138, &v137, v17, v18);
  v20 = v137;
  if (v137 != 1 || v138 < 8)
  {
    v58 = v19;

    if ((v20 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v135 = objc_opt_class();
      NSStringFromClass(v135);
      MTLReportFailure();
    }

    if (v58)
    {
      free(v58);
    }

    return 0;
  }

  v21 = *(v6 + 14);
  v22 = *(v6 + 15);
  LODWORD(v21) = *v19;
  *(v6 + 56) = *v19;
  DWORD1(v21) = v19[1];
  *(v6 + 14) = v21;
  DWORD2(v21) = v19[2];
  *(v6 + 14) = v21;
  HIDWORD(v21) = v19[3];
  *(v6 + 14) = v21;
  LODWORD(v22) = v19[4];
  *(v6 + 60) = v22;
  DWORD1(v22) = v19[5];
  *(v6 + 15) = v22;
  DWORD2(v22) = v19[6];
  *(v6 + 15) = v22;
  HIDWORD(v22) = v19[7];
  *(v6 + 15) = v22;
  free(v19);
  v25 = sub_23995E98C(coder, @"kMPSImageConversion.destDecode", &v138, &v137, v23, v24);
  v26 = v137;
  if (v137 != 1 || v138 <= 7)
  {

    if ((v26 & 1) != 0 || !MTLReportFailureTypeEnabled())
    {
      return 0;
    }

    goto LABEL_61;
  }

  v27 = *(v6 + 16);
  v28 = *(v6 + 17);
  LODWORD(v27) = *v25;
  *(v6 + 64) = *v25;
  DWORD1(v27) = v25[1];
  *(v6 + 16) = v27;
  DWORD2(v27) = v25[2];
  *(v6 + 16) = v27;
  HIDWORD(v27) = v25[3];
  *(v6 + 16) = v27;
  LODWORD(v28) = v25[4];
  *(v6 + 68) = v28;
  DWORD1(v28) = v25[5];
  *(v6 + 17) = v28;
  DWORD2(v28) = v25[6];
  *(v6 + 17) = v28;
  HIDWORD(v28) = v25[7];
  *(v6 + 17) = v28;
  free(v25);
  v31 = sub_23995E98C(coder, @"kMPSImageConversion.info", &v138, &v137, v29, v30);
  v32 = v137;
  if (v137 != 1 || v138 <= 0x11)
  {

    if ((v32 & 1) != 0 || !MTLReportFailureTypeEnabled())
    {
      return 0;
    }

    goto LABEL_61;
  }

  *(v6 + 18) = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = v31[3];
  *(v6 + 44) = *(v31 + 8);
  *(v6 + 20) = v34;
  *(v6 + 21) = v35;
  *(v6 + 19) = v33;
  free(v31);
  v36 = (v6 + 360);
  *(v6 + 360) = 0u;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 51) = 0;
  *(v6 + 46) = sub_23995E98C(coder, @"kMPSImageConversion.iData", &v138, &v137, v37, v38);
  if (!v137)
  {

    if (!MTLReportFailureTypeEnabled())
    {
      return 0;
    }

LABEL_61:
    v133 = objc_opt_class();
    NSStringFromClass(v133);
    MTLReportFailure();
    return 0;
  }

  if (v138 < *(v6 + 76))
  {
LABEL_27:

    return 0;
  }

  *(v6 + 47) = sub_23995E98C(coder, @"kMPSImageConversion.fData", &v138, &v137, v39, v40);
  if (!v137)
  {

    if (!MTLReportFailureTypeEnabled())
    {
      return 0;
    }

    goto LABEL_61;
  }

  if (v138 < *(v6 + 77))
  {
    goto LABEL_27;
  }

  *(v6 + 51) = sub_23995EACC(coder, device, @"kMPSImageConversion.devFloatData", &v138, &v137, v41);
  if ((v137 & 1) == 0)
  {

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_61;
    }

    return 0;
  }

  *v36 = malloc_type_malloc(16 * *(v6 + 78), 0x1000040451B5BE8uLL);
  if (*(v6 + 78) >= 1)
  {
    v42 = 0;
    v43 = 0;
    while (1)
    {
      v44 = *v36;
      v141 = 0;
      v45 = objc_alloc(MEMORY[0x277CCACA8]);
      v50 = objc_msgSend_initWithFormat_(v45, v46, @"%@.%d", v47, v48, v49, @"kMPSImageConversion.stages", v43);
      v53 = sub_23995E98C(coder, v50, &v140, &v141, v51, v52);
      v54 = v141;
      if (v141 == 1 && v53 != 0)
      {
        v56 = &v44[v42];
        *v56 = vmovn_s32(*v53);
        v56[1].i32[1] = v53[1].i32[0];
        v56[1].i32[0] = v53[1].i32[1];
      }

      free(v53);

      if ((v54 & 1) == 0)
      {
        break;
      }

      ++v43;
      v42 += 16;
      if (v43 >= *(v6 + 78))
      {
        goto LABEL_44;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      return 0;
    }

    goto LABEL_61;
  }

  v54 = 1;
LABEL_44:
  v137 = v54;
  *(v6 + 49) = 0;
  *(v6 + 50) = 0;
  *(v6 + 48) = 0;
  v59 = *(v6 + 80);
  if (v59 >= 1)
  {
    v60 = malloc_type_malloc(8 * v59, 0x80040B8603338uLL);
    *(v6 + 48) = v60;
    if (!v60)
    {

      if ((v54 & 1) != 0 || !MTLReportFailureTypeEnabled())
      {
        return 0;
      }

      goto LABEL_61;
    }

    if (*(v6 + 80) >= 1)
    {
      v61 = 0;
      while (1)
      {
        v62 = objc_alloc(MEMORY[0x277CCACA8]);
        v67 = objc_msgSend_initWithFormat_(v62, v63, @"%@%d", v64, v65, v66, @"kMPSImageConversion.texLuts", v61);
        *(*(v6 + 48) + 8 * v61) = sub_23995EB78(coder, device, v67, &v137);

        if ((v137 & 1) == 0)
        {
          break;
        }

        if (++v61 >= *(v6 + 80) || !*(v6 + 48))
        {
          v54 = 1;
          goto LABEL_52;
        }
      }

      if (!MTLReportFailureTypeEnabled())
      {
        return 0;
      }

      goto LABEL_61;
    }
  }

LABEL_52:
  v68 = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
  *(v6 + 50) = v68;
  if (!v68)
  {

    if ((v54 & 1) != 0 || !MTLReportFailureTypeEnabled())
    {
      return 0;
    }

    goto LABEL_61;
  }

  v69 = objc_alloc_init(MEMORY[0x277CD7058]);
  objc_msgSend_setPixelFormat_(v69, v70, 110, v71, v72, v73);
  objc_msgSend_setWidth_(v69, v74, 1, v75, v76, v77);
  objc_msgSend_setHeight_(v69, v78, 1, v79, v80, v81);
  objc_msgSend_setDepth_(v69, v82, 1, v83, v84, v85);
  objc_msgSend_setUsage_(v69, v86, 1, v87, v88, v89);
  v90 = (*(*v136 + 24))(v136);
  objc_msgSend_setStorageMode_(v69, v91, v90, v92, v93, v94);
  objc_msgSend_setTextureType_(v69, v95, 0, v96, v97, v98);
  **(v6 + 50) = objc_msgSend_newTextureWithDescriptor_(device, v99, v69, v100, v101, v102);
  objc_msgSend_setTextureType_(v69, v103, 2, v104, v105, v106);
  *(*(v6 + 50) + 8) = objc_msgSend_newTextureWithDescriptor_(device, v107, v69, v108, v109, v110);
  objc_msgSend_setTextureType_(v69, v111, 7, v112, v113, v114);
  *(*(v6 + 50) + 16) = objc_msgSend_newTextureWithDescriptor_(device, v115, v69, v116, v117, v118);
  *(*(v6 + 50) + 24) = objc_msgSend_newTextureWithDescriptor_(device, v119, v69, v120, v121, v122);

  v123 = *(v6 + 82);
  if (v123 >= 1)
  {
    v124 = malloc_type_malloc(8 * v123, 0x80040B8603338uLL);
    *(v6 + 49) = v124;
    if (!v124)
    {

      if ((v54 & 1) != 0 || !MTLReportFailureTypeEnabled())
      {
        return 0;
      }

      goto LABEL_61;
    }

    if (*(v6 + 82) >= 1)
    {
      v125 = 0;
      while (1)
      {
        v126 = objc_alloc(MEMORY[0x277CCACA8]);
        v131 = objc_msgSend_initWithFormat_(v126, v127, @"%@%d", v128, v129, v130, @"kMPSImageConversion.trcLuts", v125);
        v140 = 0;
        *(*(v6 + 49) + 8 * v125) = sub_23995EACC(coder, device, v131, &v140, &v137, v132);

        if ((v137 & 1) == 0)
        {
          break;
        }

        if (++v125 >= *(v6 + 82))
        {
          return v6;
        }
      }

      if (!MTLReportFailureTypeEnabled())
      {
        return 0;
      }

      goto LABEL_61;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v242 = *MEMORY[0x277D85DE8];
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v238.receiver = self;
  v238.super_class = MPSImageConversion;
  [(MPSUnaryImageKernel *)&v238 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->sourceAlpha, @"kMPSImageConversion.sourceAlpha", v6, v7);
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->destinationAlpha, @"kMPSImageConversion.destinationAlpha", v9, v10);
  v240 = *self->srcDecode;
  v241 = v240;
  sub_23995F540(coder, &v240, @"kMPSImageConversion.srcDecode", 8, v11, v12);
  v240 = *self->destDecode;
  v241 = v240;
  sub_23995F540(coder, &v240, @"kMPSImageConversion.destDecode", 8, v13, v14);
  p_convertInfo = &self->convertInfo;
  sub_23995F540(coder, &self->convertInfo, @"kMPSImageConversion.info", 18, v16, v17);
  p_convertInfoPtrs = &self->convertInfoPtrs;
  sub_23995F540(coder, self->convertInfoPtrs.data, @"kMPSImageConversion.iData", self->convertInfo.nData, v19, v20);
  v21 = self->convertInfo.nFData + 8 * self->convertInfo.nStages;
  coderCopy = coder;
  sub_23995F540(coder, self->convertInfoPtrs.fData, @"kMPSImageConversion.fData", v21 + 8, v22, v23);
  var2 = self->convertInfoPtrs.var2;
  if (var2)
  {
    v30 = objc_msgSend_contents(var2, v24, v25, v26, v27, v28);
  }

  else
  {
    v30 = 0;
  }

  sub_23995F540(coder, v30, @"kMPSImageConversion.devFloatData", v21 + 8, v27, v28);
  if (self->convertInfo.nStages >= 1)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      stages = p_convertInfoPtrs->stages;
      v34 = malloc_type_malloc(0x18uLL, 0x100004052888210uLL);
      if (v34)
      {
        v35 = v34;
        v36 = (stages + v31);
        v37 = objc_alloc(MEMORY[0x277CCACA8]);
        v42 = objc_msgSend_initWithFormat_(v37, v38, @"%@.%d", v39, v40, v41, @"kMPSImageConversion.stages", v32);
        *v35 = vmovl_u16(*v36);
        *(v35 + 4) = v36[1].i32[1];
        *(v35 + 5) = v36[1].i32[0];
        sub_23995F540(coderCopy, v35, v42, 6, v43, v44);
        free(v35);
      }

      ++v32;
      v31 += 16;
    }

    while (v32 < self->convertInfo.nStages);
  }

  if (self->convertInfo.nLuts >= 1)
  {
    v45 = 0;
    v230 = &self->convertInfo;
    v236 = &self->convertInfoPtrs;
    do
    {
      v46 = objc_alloc(MEMORY[0x277CCACA8]);
      v56 = objc_msgSend_initWithFormat_(v46, v47, @"%@%d", v48, v49, v50, @"kMPSImageConversion.texLuts", v45);
      texLUTs = p_convertInfoPtrs->texLUTs;
      v58 = texLUTs[v45];
      if (v58)
      {
        v59 = objc_msgSend_width(texLUTs[v45], v51, v52, v53, v54, v55);
        v65 = objc_msgSend_height(v58, v60, v61, v62, v63, v64);
        v71 = 16 * v59 * v65 * objc_msgSend_depth(v58, v66, v67, v68, v69, v70);
        v72 = malloc_type_malloc(v71, 0x100004052888210uLL);
        if (v72)
        {
          v78 = v72;
          v235 = v71;
          v79 = objc_msgSend_width(v58, v73, v74, v75, v76, v77);
          v85 = objc_msgSend_height(v58, v80, v81, v82, v83, v84);
          v91 = objc_msgSend_depth(v58, v86, v87, v88, v89, v90);
          v97 = 16 * objc_msgSend_width(v58, v92, v93, v94, v95, v96);
          v103 = objc_msgSend_width(v58, v98, v99, v100, v101, v102);
          v109 = objc_msgSend_height(v58, v104, v105, v106, v107, v108);
          memset(v239, 0, 24);
          v239[3] = v79;
          v239[4] = v85;
          v239[5] = v91;
          objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v58, v110, v78, v97, 16 * v103 * v109, v239, 0, 0);
          v111 = objc_alloc(MEMORY[0x277CCACA8]);
          v233 = objc_msgSend_initWithFormat_(v111, v112, @"%@%@", v113, v114, v115, v56, @".width");
          v116 = objc_alloc(MEMORY[0x277CCACA8]);
          v232 = objc_msgSend_initWithFormat_(v116, v117, @"%@%@", v118, v119, v120, v56, @".heigth");
          v121 = objc_alloc(MEMORY[0x277CCACA8]);
          v126 = objc_msgSend_initWithFormat_(v121, v122, @"%@%@", v123, v124, v125, v56, @".depth");
          v127 = objc_alloc(MEMORY[0x277CCACA8]);
          v132 = v78;
          v133 = objc_msgSend_initWithFormat_(v127, v128, @"%@%@", v129, v130, v131, v56, @".pixelFormat");
          v134 = objc_alloc(MEMORY[0x277CCACA8]);
          v231 = objc_msgSend_initWithFormat_(v134, v135, @"%@%@", v136, v137, v138, v56, @".textureType");
          v139 = objc_alloc(MEMORY[0x277CCACA8]);
          v234 = objc_msgSend_initWithFormat_(v139, v140, @"%@%@", v141, v142, v143, v56, @".data");
          objc_msgSend_encodeBool_forKey_(coderCopy, v144, 1, v56, v145, v146);
          v152 = objc_msgSend_width(v58, v147, v148, v149, v150, v151);
          objc_msgSend_encodeInt64_forKey_(coderCopy, v153, v152, v233, v154, v155);
          v161 = objc_msgSend_height(v58, v156, v157, v158, v159, v160);
          objc_msgSend_encodeInt64_forKey_(coderCopy, v162, v161, v232, v163, v164);
          v170 = objc_msgSend_depth(v58, v165, v166, v167, v168, v169);
          objc_msgSend_encodeInt64_forKey_(coderCopy, v171, v170, v126, v172, v173);
          v179 = objc_msgSend_pixelFormat(v58, v174, v175, v176, v177, v178);
          objc_msgSend_encodeInt64_forKey_(coderCopy, v180, v179, v133, v181, v182);
          v188 = objc_msgSend_textureType(v58, v183, v184, v185, v186, v187);
          objc_msgSend_encodeInt64_forKey_(coderCopy, v189, v188, v231, v190, v191);
          objc_msgSend_width(v58, v192, v193, v194, v195, v196);
          objc_msgSend_height(v58, v197, v198, v199, v200, v201);
          objc_msgSend_depth(v58, v202, v203, v204, v205, v206);
          MPSCopyToFromNetworkByteOrder32();
          objc_msgSend_encodeBytes_length_forKey_(coderCopy, v207, v132, v235, v234, v208);
          free(v132);

          p_convertInfo = v230;
        }
      }

      else
      {
        objc_msgSend_encodeBool_forKey_(coderCopy, v51, 0, v56, v54, v55);
      }

      ++v45;
      p_convertInfoPtrs = v236;
    }

    while (v45 < p_convertInfo->nLuts);
  }

  if (p_convertInfo->nTRCs >= 1)
  {
    v209 = 0;
    do
    {
      v213 = objc_alloc(MEMORY[0x277CCACA8]);
      v218 = objc_msgSend_initWithFormat_(v213, v214, @"%@%d", v215, v216, v217, @"kMPSImageConversion.trcLuts", v209);
      v219 = p_convertInfoPtrs->var0[v209];
      v228 = objc_msgSend_length(v219, v220, v221, v222, v223, v224);
      if (v219)
      {
        v210 = objc_msgSend_contents(v219, v225, v226, v227, v211, v212);
      }

      else
      {
        v210 = 0;
      }

      sub_23995F540(coderCopy, v210, v218, (v228 >> 2), v211, v212);

      ++v209;
    }

    while (v209 < p_convertInfo->nTRCs);
  }

  v229 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v92.receiver = self;
  v92.super_class = MPSImageConversion;
  v7 = [MPSUnaryImageKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v11 = v7;
  if (!v7)
  {
    return v11;
  }

  v7[22] = sub_23995A480;
  v7[24] = v7;
  v7[60] = self->sourceAlpha;
  v7[61] = self->destinationAlpha;
  *(v7 + 14) = *self->srcDecode;
  *(v7 + 15) = *&self->srcDecode[16];
  *(v7 + 16) = *self->destDecode;
  *(v7 + 17) = *&self->destDecode[16];
  v7[26] = 0;
  transform = self->transform;
  if (transform)
  {
    v13 = objc_msgSend_copyWithZone_device_(transform, v8, zone, device, v9, v10);
    *(v11 + 26) = v13;
    if (!v13)
    {
      goto LABEL_58;
    }
  }

  v14 = v11 + 360;
  *(v11 + 46) = 0;
  v15 = v11 + 368;
  *(v11 + 47) = 0;
  *(v11 + 45) = 0;
  *(v11 + 78) = self->convertInfo.nStages;
  *(v11 + 42) = *&self->convertInfo.nCHIn;
  *(v11 + 72) = LODWORD(self->convertInfo.bgColor[0]);
  *(v11 + 73) = LODWORD(self->convertInfo.bgColor[1]);
  *(v11 + 74) = LODWORD(self->convertInfo.bgColor[2]);
  *(v11 + 75) = LODWORD(self->convertInfo.bgColor[3]);
  *(v11 + 48) = 0;
  v16 = v11 + 384;
  *(v11 + 49) = 0;
  *(v11 + 50) = 0;
  *(v11 + 86) = self->convertInfo.containsATableTRC;
  *(v11 + 316) = *&self->convertInfo.nMatrices;
  *(v11 + 83) = self->convertInfo.nLuminanceScales;
  *(v11 + 348) = *&self->convertInfo.stagesClampFlags;
  *(v11 + 89) = self->convertInfo.stageTypesFC;
  *(v11 + 48) = 0;
  p_convertInfoPtrs = &self->convertInfoPtrs;
  if (self->convertInfoPtrs.data)
  {
    nData = self->convertInfo.nData;
    if (nData)
    {
      v19 = malloc_type_malloc(4 * nData, 0x100004052888210uLL);
      *v15 = v19;
      *(v11 + 76) = nData;
      memcpy(v19, self->convertInfoPtrs.data, 4 * nData);
      if (!*v15)
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }
  }

  if (p_convertInfoPtrs->stages)
  {
    v20 = malloc_type_malloc(16 * self->convertInfo.nStages, 0x1000040451B5BE8uLL);
    *v14 = v20;
    memcpy(v20, p_convertInfoPtrs->stages, 16 * self->convertInfo.nStages);
    if (!*v14)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  if (self->convertInfoPtrs.fData)
  {
    nFData = self->convertInfo.nFData;
    if (nFData)
    {
      v22 = 32 * self->convertInfo.nStages + 4 * nFData;
      v23 = malloc_type_malloc(v22 + 32, 0x100004052888210uLL);
      *(v11 + 47) = v23;
      *(v11 + 77) = self->convertInfo.nFData;
      memcpy(v23, self->convertInfoPtrs.fData, v22 + 32);
      if (!*(v11 + 47))
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }
  }

  v24 = *MEMORY[0x277CD7350];
  v25 = *(*&v11[v24] + 16);
  if (!self->convertInfoPtrs.texLUTs)
  {
    goto LABEL_25;
  }

  nLuts = self->convertInfo.nLuts;
  if (nLuts < 1)
  {
    goto LABEL_25;
  }

  v27 = malloc_type_malloc(8 * nLuts, 0x80040B8603338uLL);
  *v16 = v27;
  if (!v27)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

LABEL_57:
    v65 = objc_opt_class();
    NSStringFromClass(v65);
    MTLReportFailure();
    goto LABEL_58;
  }

  if (self->convertInfo.nLuts >= 1)
  {
    for (i = 0; i < self->convertInfo.nLuts; ++i)
    {
      if (!self->convertInfoPtrs.texLUTs)
      {
        break;
      }

      *(*v16 + 8 * i) = 0;
      v29 = self->convertInfoPtrs.texLUTs[i];
      if (v29)
      {
        if (v25 == (*(&self->super.super.super.isa + v24))[2])
        {
          *(*v16 + 8 * i) = v29;
        }

        else
        {
          *(*v16 + 8 * i) = sub_23995FEE0(v29, v25);
          if (!*(*v16 + 8 * i))
          {
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }
        }
      }
    }
  }

LABEL_25:
  v30 = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
  *(v11 + 50) = v30;
  if (!v30)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (!self->convertInfoPtrs.var1)
  {
    goto LABEL_48;
  }

  *v30 = 0;
  v31 = *self->convertInfoPtrs.var1;
  if (v31)
  {
    if (v25 == (*(&self->super.super.super.isa + v24))[2])
    {
      **(v11 + 50) = v31;
      if (!self->convertInfoPtrs.var1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      **(v11 + 50) = sub_23995FEE0(v31, v25);
      if (!**(v11 + 50))
      {
        goto LABEL_71;
      }

      if (!self->convertInfoPtrs.var1)
      {
        goto LABEL_48;
      }
    }
  }

  *(*(v11 + 50) + 8) = 0;
  v32 = *(self->convertInfoPtrs.var1 + 1);
  if (v32)
  {
    if (v25 == (*(&self->super.super.super.isa + v24))[2])
    {
      *(*(v11 + 50) + 8) = v32;
      if (!self->convertInfoPtrs.var1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(*(v11 + 50) + 8) = sub_23995FEE0(v32, v25);
      if (!*(*(v11 + 50) + 8))
      {
        goto LABEL_71;
      }

      if (!self->convertInfoPtrs.var1)
      {
        goto LABEL_48;
      }
    }
  }

  *(*(v11 + 50) + 16) = 0;
  v33 = *(self->convertInfoPtrs.var1 + 2);
  if (!v33)
  {
    goto LABEL_45;
  }

  if (v25 == (*(&self->super.super.super.isa + v24))[2])
  {
    *(*(v11 + 50) + 16) = v33;
    if (!self->convertInfoPtrs.var1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  *(*(v11 + 50) + 16) = sub_23995FEE0(v33, v25);
  if (!*(*(v11 + 50) + 16))
  {
LABEL_71:
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (!self->convertInfoPtrs.var1)
  {
LABEL_48:
    v35 = malloc_type_malloc(8 * self->convertInfo.nTRCs, 0x80040B8603338uLL);
    *(v11 + 49) = v35;
    if (v35)
    {
      goto LABEL_49;
    }

    goto LABEL_67;
  }

LABEL_45:
  *(*(v11 + 50) + 24) = 0;
  v34 = *(self->convertInfoPtrs.var1 + 3);
  if (!v34)
  {
    goto LABEL_48;
  }

  if (v25 != (*(&self->super.super.super.isa + v24))[2])
  {
    *(*(v11 + 50) + 24) = sub_23995FEE0(v34, v25);
    if (*(*(v11 + 50) + 24))
    {
      goto LABEL_48;
    }

    goto LABEL_71;
  }

  *(*(v11 + 50) + 24) = v34;
  v91 = malloc_type_malloc(8 * self->convertInfo.nTRCs, 0x80040B8603338uLL);
  *(v11 + 49) = v91;
  if (!v91)
  {
LABEL_67:
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_49:
  if (self->convertInfo.nTRCs >= 1)
  {
    for (j = 0; j < self->convertInfo.nTRCs; ++j)
    {
      *(*(v11 + 49) + 8 * j) = 0;
      v42 = self->convertInfoPtrs.var0[j];
      if (v42)
      {
        if (v25 == (*(&self->super.super.super.isa + v24))[2])
        {
          *(*(v11 + 49) + 8 * j) = v42;
        }

        else
        {
          v43 = objc_msgSend_length(v42, v36, v37, v38, v39, v40);
          *(*(v11 + 49) + 8 * j) = objc_msgSend_newBufferWithLength_options_(v25, v44, v43, 0, v45, v46);
          v52 = objc_msgSend_contents(*(*(v11 + 49) + 8 * j), v47, v48, v49, v50, v51);
          v58 = objc_msgSend_contents(self->convertInfoPtrs.var0[j], v53, v54, v55, v56, v57);
          v64 = objc_msgSend_length(self->convertInfoPtrs.var0[j], v59, v60, v61, v62, v63);
          memcpy(v52, v58, v64);
          if (!*(*(v11 + 49) + 8 * j))
          {
            if (MTLReportFailureTypeEnabled())
            {
              goto LABEL_57;
            }

LABEL_58:

            return 0;
          }
        }
      }
    }
  }

  *(v11 + 51) = 0;
  var2 = self->convertInfoPtrs.var2;
  if (var2)
  {
    if (v25 == (*(&self->super.super.super.isa + v24))[2])
    {
      *(v11 + 51) = var2;
      return v11;
    }

    v67 = objc_msgSend_length(var2, v36, v37, v38, v39, v40);
    v71 = objc_msgSend_newBufferWithLength_options_(v25, v68, v67, 0, v69, v70);
    *(v11 + 51) = v71;
    v77 = objc_msgSend_contents(v71, v72, v73, v74, v75, v76);
    v83 = objc_msgSend_contents(self->convertInfoPtrs.var2, v78, v79, v80, v81, v82);
    v89 = objc_msgSend_length(self->convertInfoPtrs.var2, v84, v85, v86, v87, v88);
    memcpy(v77, v83, v89);
    if (!*(v11 + 51))
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  return v11;
}

- (void)dealloc
{
  p_convertInfoPtrs = &self->convertInfoPtrs;
  data = self->convertInfoPtrs.data;
  if (data)
  {
    free(data);
    self->convertInfoPtrs.data = 0;
  }

  fData = self->convertInfoPtrs.fData;
  if (fData)
  {
    free(fData);
    self->convertInfoPtrs.fData = 0;
  }

  if (p_convertInfoPtrs->stages)
  {
    free(p_convertInfoPtrs->stages);
    p_convertInfoPtrs->stages = 0;
  }

  if (self->convertInfo.nLutTextures < 1)
  {
LABEL_13:
    texLUTs = self->convertInfoPtrs.texLUTs;
    if (texLUTs)
    {
      free(texLUTs);
      self->convertInfoPtrs.texLUTs = 0;
    }
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = self->convertInfoPtrs.texLUTs;
      if (!v7)
      {
        break;
      }

      v8 = v7[v6];
      if (v8)
      {

        v7 = self->convertInfoPtrs.texLUTs;
      }

      v7[v6++] = 0;
      if (v6 >= self->convertInfo.nLutTextures)
      {
        goto LABEL_13;
      }
    }
  }

  var1 = self->convertInfoPtrs.var1;
  if (var1)
  {
    if (*var1)
    {

      var1 = self->convertInfoPtrs.var1;
    }

    *var1 = 0;
    v11 = self->convertInfoPtrs.var1;
    if (v11)
    {
      v12 = v11[1];
      if (v12)
      {

        v11 = self->convertInfoPtrs.var1;
      }

      v11[1] = 0;
      v13 = self->convertInfoPtrs.var1;
      if (v13)
      {
        v14 = v13[2];
        if (v14)
        {

          v13 = self->convertInfoPtrs.var1;
        }

        v13[2] = 0;
        v15 = self->convertInfoPtrs.var1;
        if (v15)
        {
          v16 = v15[3];
          if (v16)
          {

            v15 = self->convertInfoPtrs.var1;
          }

          v15[3] = 0;
          v17 = self->convertInfoPtrs.var1;
          if (v17)
          {
            free(v17);
            self->convertInfoPtrs.var1 = 0;
          }
        }
      }
    }
  }

  if (self->convertInfo.nTRCs < 1)
  {
LABEL_35:
    var0 = self->convertInfoPtrs.var0;
    if (var0)
    {
      free(var0);
    }
  }

  else
  {
    v18 = 0;
    while (1)
    {
      v19 = self->convertInfoPtrs.var0;
      if (!v19)
      {
        break;
      }

      v20 = v19[v18];
      if (v20)
      {

        v19 = self->convertInfoPtrs.var0;
      }

      v19[v18++] = 0;
      if (v18 >= self->convertInfo.nTRCs)
      {
        goto LABEL_35;
      }
    }
  }

  self->convertInfoPtrs.var0 = 0;
  var2 = self->convertInfoPtrs.var2;
  if (var2)
  {
  }

  self->convertInfoPtrs.var2 = 0;
  v23.receiver = self;
  v23.super_class = MPSImageConversion;
  [(MPSKernel *)&v23 dealloc];
}

- (MPSImageConversion)initWithDevice:(id)device transform:(id)transform
{
  result = objc_msgSend_initWithDevice_(self, a2, device, transform, v4, v5);
  if (result)
  {
    v8 = result;
    transformCopy = transform;
    result = v8;
    v8->transform = transform;
  }

  return result;
}

- (MPSImageConversion)initWithDevice:(id)device srcAlpha:(MPSAlphaType)srcAlpha destAlpha:(MPSAlphaType)destAlpha backgroundColor:(CGFloat *)backgroundColor conversionInfo:(CGColorConversionInfoRef)conversionInfo
{
  v29.receiver = self;
  v29.super_class = MPSImageConversion;
  v12 = [(MPSUnaryImageKernel *)&v29 initWithDevice:?];
  v13 = v12;
  if (v12)
  {
    v12->super._checkFlags = 3;
    v12->super._encode = sub_23995A480;
    v12->super._encodeData = v12;
    v12->transform = 0;
    __asm { FMOV            V1.4S, #1.0 }

    *v12->srcDecode = 0u;
    *&v12->srcDecode[16] = _Q1;
    *v12->destDecode = 0u;
    *&v12->destDecode[16] = _Q1;
    v12->sourceAlpha = srcAlpha;
    v12->destinationAlpha = destAlpha;
    if (conversionInfo)
    {
      if (qword_27DF85570 != -1)
      {
        dispatch_once(&qword_27DF85570, &unk_284C6BA88);
      }

      v13->matFun = qword_27DF85538;
      v13->trcFun = qword_27DF85540;
      v13->lutFun = qword_27DF85548;
      v13->optionsFun = qword_27DF85550;
      v13->inputRangeFun = qword_27DF85558;
      v13->outputRangeFun = qword_27DF85560;
      v13->propertiesFun = qword_27DF85568;
      if (!v13->matFun || !v13->trcFun || !v13->lutFun || !v13->optionsFun)
      {
        if (MTLReportFailureTypeEnabled())
        {
LABEL_13:
          MTLReportFailure();
        }

LABEL_14:

        return 0;
      }

      v27[4] = v13;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_239960784;
      v28[3] = &unk_278AF6870;
      v28[4] = v13;
      v28[5] = backgroundColor;
      v26[4] = v13;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_239962204;
      v27[3] = &unk_278AF6898;
      v25[4] = v13;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_239962718;
      v26[3] = &unk_278AF68C0;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_239962894;
      v25[3] = &unk_278AF68C0;
      if ((off_27DF85530(conversionInfo, 0, v28, v27, v26, v25, 2, 0) & 1) == 0)
      {
        if (MTLReportFailureTypeEnabled())
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_23995D1B4(v12, backgroundColor);
    }

    sub_23995D4C4(v13, device, v23, v19, v20, v21, v22);
  }

  return v13;
}

@end