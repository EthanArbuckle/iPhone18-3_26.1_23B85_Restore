@interface MPSImageEDLines
- (MPSImageEDLines)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageEDLines)initWithDevice:(id)device gaussianSigma:(const float)gaussianSigma minLineLength:(const unsigned __int16)minLineLength maxLines:(const NSUInteger)maxLines detailRatio:(const unsigned __int16)detailRatio gradientThreshold:(const float)gradientThreshold lineErrorThreshold:(const float)lineErrorThreshold mergeLocalityThreshold:(const float)mergeLocalityThreshold;
- (MTLRegion)clipRectSource;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)dealloc;
- (void)encodeInternalToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceTexture:(id)a5 destinationTexture:(id)a6 endpointBuffer:(id)a7 endpointOffset:(unint64_t)a8 inputExtent:(id *)a9;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceTexture:(id)a5 destinationTexture:(id)a6 endpointBuffer:(id)a7 endpointOffset:(unint64_t)a8;
- (void)encodeWithCoder:(id)a3;
- (void)setClipRectSource:(MTLRegion *)clipRectSource;
@end

@implementation MPSImageEDLines

- (MPSImageEDLines)initWithDevice:(id)device gaussianSigma:(const float)gaussianSigma minLineLength:(const unsigned __int16)minLineLength maxLines:(const NSUInteger)maxLines detailRatio:(const unsigned __int16)detailRatio gradientThreshold:(const float)gradientThreshold lineErrorThreshold:(const float)lineErrorThreshold mergeLocalityThreshold:(const float)mergeLocalityThreshold
{
  v68 = *MEMORY[0x277D85DE8];
  v63.receiver = self;
  v63.super_class = MPSImageEDLines;
  result = [(MPSKernel *)&v63 initWithDevice:?];
  if (result)
  {
    result->_gaussianSigma = gaussianSigma;
    result->_minLineLength = minLineLength;
    result->_maxLines = maxLines;
    result->_detailRatio = detailRatio;
    result->_gradientThreshold = gradientThreshold;
    result->_lineErrorThreshold = lineErrorThreshold;
    result->_mergeLocalityThreshold = mergeLocalityThreshold;
    v20 = *(MEMORY[0x277CD7200] + 16);
    v19 = *(MEMORY[0x277CD7200] + 32);
    *&result->_clipRectSource.origin.x = *MEMORY[0x277CD7200];
    *&result->_clipRectSource.origin.z = v20;
    *&result->_clipRectSource.size.height = v19;
    v21 = result;
    v22 = [MPSImageGaussianBlur alloc];
    v21->gaussianBlurKernel = v22;
    *&v23 = v21->_gaussianSigma;
    v28 = objc_msgSend_initWithDevice_sigma_(v22, v24, device, v25, v26, v27, v23);
    v21->gaussianBlurKernel = v28;
    objc_msgSend_setEdgeMode_(v28, v29, 1, v30, v31, v32);
    v21->_gradientNormalizationRadius = 5;
    v67 = 1065353216;
    v66 = 3212836864;
    v64 = 0x400000003F800000;
    v65 = 1065353216;
    v33 = [MPSImageConvolution alloc];
    v21->sobel3XHKernel = v33;
    v21->sobel3XHKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v33, v34, device, 3, 1, &v66);
    v35 = [MPSImageConvolution alloc];
    v21->sobel3XVKernel = v35;
    v21->sobel3XVKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v35, v36, device, 1, 3, &v64);
    v37 = [MPSImageConvolution alloc];
    v21->sobel3YVKernel = v37;
    v21->sobel3YVKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v37, v38, device, 1, 3, &v66);
    v39 = [MPSImageConvolution alloc];
    v21->sobel3YHKernel = v39;
    v21->sobel3YHKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v39, v40, device, 3, 1, &v64);
    objc_msgSend_setEdgeMode_(v21->sobel3XHKernel, v41, 1, v42, v43, v44);
    objc_msgSend_setEdgeMode_(v21->sobel3XVKernel, v45, 1, v46, v47, v48);
    objc_msgSend_setEdgeMode_(v21->sobel3YHKernel, v49, 1, v50, v51, v52);
    objc_msgSend_setEdgeMode_(v21->sobel3YVKernel, v53, 1, v54, v55, v56);
    v57 = (2 * v21->_gradientNormalizationRadius) | 1;
    v58 = [MPSImageAreaMax alloc];
    v21->gradientNormalizeAreaMaxKernel = v58;
    v61 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v58, v59, device, v57, v57, v60);
    result = v21;
    v21->gradientNormalizeAreaMaxKernel = v61;
  }

  v62 = *MEMORY[0x277D85DE8];
  return result;
}

- (MPSImageEDLines)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v99 = *MEMORY[0x277D85DE8];
  v94.receiver = self;
  v94.super_class = MPSImageEDLines;
  v6 = [MPSKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v11 = v6;
  if (v6)
  {
    if (*(&v6->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v6->_minLineLength = objc_msgSend_decodeInt32ForKey_(aDecoder, v7, @"MPSImageEDLines.minLineLength", v8, v9, v10);
      v11->_maxLines = objc_msgSend_decodeInt64ForKey_(aDecoder, v12, @"MPSImageEDLines.maxLines", v13, v14, v15);
      v11->_detailRatio = objc_msgSend_decodeInt32ForKey_(aDecoder, v16, @"MPSImageEDLines.detailRatio", v17, v18, v19);
      objc_msgSend_decodeFloatForKey_(aDecoder, v20, @"MPSImageEDLines.gradientThreshold", v21, v22, v23);
      v11->_gradientThreshold = v24;
      objc_msgSend_decodeFloatForKey_(aDecoder, v25, @"MPSImageEDLines.lineErrorThreshold", v26, v27, v28);
      v11->_lineErrorThreshold = v29;
      v11->_clipRectSource.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v30, @"MPSImageEDLines.clipRectSource.origin.x", v31, v32, v33);
      v11->_clipRectSource.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v34, @"MPSImageEDLines.clipRectSource.origin.y", v35, v36, v37);
      v11->_clipRectSource.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v38, @"MPSImageEDLines.clipRectSource.origin.z", v39, v40, v41);
      v11->_clipRectSource.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v42, @"MPSImageEDLines.clipRectSource.size.width", v43, v44, v45);
      v11->_clipRectSource.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v46, @"MPSImageEDLines.clipRectSource.size.height", v47, v48, v49);
      v11->_clipRectSource.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v50, @"MPSImageEDLines.clipRectSource.size.depth", v51, v52, v53);
      v54 = [MPSImageGaussianBlur alloc];
      v58 = objc_msgSend_initWithCoder_device_(v54, v55, aDecoder, device, v56, v57);
      v11->gaussianBlurKernel = v58;
      objc_msgSend_setEdgeMode_(v58, v59, 1, v60, v61, v62);
      v11->_gradientNormalizationRadius = 5;
      v98 = 1065353216;
      v97 = 3212836864;
      v95 = 0x400000003F800000;
      v96 = 1065353216;
      v63 = [MPSImageConvolution alloc];
      v11->sobel3XHKernel = v63;
      v11->sobel3XHKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v63, v64, device, 3, 1, &v97);
      v65 = [MPSImageConvolution alloc];
      v11->sobel3XVKernel = v65;
      v11->sobel3XVKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v65, v66, device, 1, 3, &v95);
      v67 = [MPSImageConvolution alloc];
      v11->sobel3YVKernel = v67;
      v11->sobel3YVKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v67, v68, device, 1, 3, &v97);
      v69 = [MPSImageConvolution alloc];
      v11->sobel3YHKernel = v69;
      v11->sobel3YHKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v69, v70, device, 3, 1, &v95);
      objc_msgSend_setEdgeMode_(v11->sobel3XHKernel, v71, 1, v72, v73, v74);
      objc_msgSend_setEdgeMode_(v11->sobel3XVKernel, v75, 1, v76, v77, v78);
      objc_msgSend_setEdgeMode_(v11->sobel3YHKernel, v79, 1, v80, v81, v82);
      objc_msgSend_setEdgeMode_(v11->sobel3YVKernel, v83, 1, v84, v85, v86);
      v87 = (2 * v11->_gradientNormalizationRadius) | 1;
      v88 = [MPSImageAreaMax alloc];
      v11->gradientNormalizeAreaMaxKernel = v88;
      v11->gradientNormalizeAreaMaxKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v88, v89, device, v87, v87, v90);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v91 = objc_opt_class();
        NSStringFromClass(v91);
        MTLReportFailure();
      }

      v11 = 0;
    }
  }

  v92 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v46.receiver = self;
  v46.super_class = MPSImageEDLines;
  [(MPSKernel *)&v46 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(a3, v5, self->_minLineLength, @"MPSImageEDLines.maxLines", v6, v7);
  objc_msgSend_encodeInt64_forKey_(a3, v8, self->_maxLines, @"MPSImageEDLines.maxLines", v9, v10);
  objc_msgSend_encodeInt32_forKey_(a3, v11, self->_detailRatio, @"MPSImageEDLines.maxLines", v12, v13);
  *&v14 = self->_gradientThreshold;
  objc_msgSend_encodeFloat_forKey_(a3, v15, @"MPSImageEDLines.gradientThreshold", v16, v17, v18, v14);
  *&v19 = self->_lineErrorThreshold;
  objc_msgSend_encodeFloat_forKey_(a3, v20, @"MPSImageEDLines.lineErrorThreshold", v21, v22, v23, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v24, self->_clipRectSource.origin.x, @"MPSImageEDLines.clipRectSource.origin.x", v25, v26);
  objc_msgSend_encodeInt64_forKey_(a3, v27, self->_clipRectSource.origin.y, @"MPSImageEDLines.clipRectSource.origin.y", v28, v29);
  objc_msgSend_encodeInt64_forKey_(a3, v30, self->_clipRectSource.origin.z, @"MPSImageEDLines.clipRectSource.origin.z", v31, v32);
  objc_msgSend_encodeInt64_forKey_(a3, v33, self->_clipRectSource.size.width, @"MPSImageEDLines.clipRectSource.size.width", v34, v35);
  objc_msgSend_encodeInt64_forKey_(a3, v36, self->_clipRectSource.size.height, @"MPSImageEDLines.clipRectSource.size.height", v37, v38);
  objc_msgSend_encodeInt64_forKey_(a3, v39, self->_clipRectSource.size.depth, @"MPSImageEDLines.clipRectSource.size.depth", v40, v41);
  objc_msgSend_encodeWithCoder_(self->gaussianBlurKernel, v42, a3, v43, v44, v45);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v10.receiver = self;
  v10.super_class = MPSImageEDLines;
  result = [(MPSKernel *)&v10 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 22) = LODWORD(self->_gaussianSigma);
    *(result + 46) = self->_minLineLength;
    *(result + 12) = self->_maxLines;
    *(result + 52) = self->_detailRatio;
    *(result + 27) = LODWORD(self->_gradientThreshold);
    *(result + 28) = LODWORD(self->_lineErrorThreshold);
    *(result + 27) = LODWORD(self->_gradientThreshold);
    v7 = *&self->_clipRectSource.origin.z;
    v6 = *&self->_clipRectSource.size.height;
    *(result + 120) = *&self->_clipRectSource.origin.x;
    *(result + 136) = v7;
    *(result + 152) = v6;
    v8 = result;
    *(result + 22) = self->gaussianBlurKernel;
    v8[23] = self->sobel3XHKernel;
    v8[24] = self->sobel3XVKernel;
    v8[25] = self->sobel3YVKernel;
    v8[26] = self->sobel3YHKernel;
    v9 = self->gradientNormalizeAreaMaxKernel;
    result = v8;
    v8[27] = v9;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageEDLines;
  [(MPSKernel *)&v3 dealloc];
}

- (void)encodeInternalToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceTexture:(id)a5 destinationTexture:(id)a6 endpointBuffer:(id)a7 endpointOffset:(unint64_t)a8 inputExtent:(id *)a9
{
  var0 = a9->var1.var0;
  var1 = a9->var1.var1;
  MEMORY[0x23EE7BAC0](v225, a4, 0);
  v15 = *MEMORY[0x277CD7350];
  PixelInfo = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatBGRA8Unorm, MPSImageFeatureChannelFormatNone);
  v223[1] = var0;
  v223[2] = var1;
  v223[3] = 1;
  v224 = PixelInfo;
  TempTexture = MPSAutoCache::GetTempTexture();
  v224 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatRGBA16Float, MPSImageFeatureChannelFormatNone);
  CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
  v196 = MPSAutoCache::GetCompressedTempTexture();
  v17 = MPSAutoCache::GetCompressedTempTexture();
  v224 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatR16Float, MPSImageFeatureChannelFormatNone);
  v192 = MPSAutoCache::GetCompressedTempTexture();
  v224 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatR16Float, MPSImageFeatureChannelFormatNone);
  v18 = MPSAutoCache::GetTempTexture();
  v194 = MPSAutoCache::GetTempTexture();
  if (!a6)
  {
    a6 = MPSAutoCache::GetCompressedTempTexture();
  }

  detailRatio = self->_detailRatio;
  v188 = (var1 + detailRatio - 1) / detailRatio * ((var0 + detailRatio - 1) / detailRatio);
  TempBuffer = MPSAutoCache::GetTempBuffer(v225, 8 * v188 * ((detailRatio + 31) >> 5), 0);
  v191 = MPSAutoCache::GetTempBuffer(v225, 4, 0);
  v190 = MPSAutoCache::GetTempBuffer(v225, 8 * ((var1 * var0) & 0x3FFFFFFF), 0);
  v184 = (var1 * var0);
  v189 = MPSAutoCache::GetTempBuffer(v225, v184, 0);
  v223[0] = 0;
  v20 = *(&self->super.super.isa + v15);
  v26 = objc_msgSend_pixelFormat(a5, v21, v22, v23, v24, v25);
  v222 = 0;
  v223[0] = MPSDevice::GetPixelInfo(v20, v26, MPSImageFeatureChannelFormatNone);
  v222 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatBGRA8Unorm, MPSImageFeatureChannelFormatNone);
  v219[0] = v223;
  v219[1] = &v222;
  memset(&v219[2], 0, 24);
  v219[5] = var0;
  v219[6] = var1;
  v219[7] = 1;
  v220 = 0u;
  v221 = 0u;
  v218 = 0;
  v218 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatRGBA16Float, MPSImageFeatureChannelFormatNone);
  v215[0] = v223;
  v215[1] = &v218;
  memset(&v215[2], 0, 24);
  v215[5] = var0;
  v215[6] = var1;
  v215[7] = 1;
  v216 = 0u;
  v217 = 0u;
  v214 = 0;
  v214 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatR16Float, MPSImageFeatureChannelFormatNone);
  v211[0] = v223;
  v211[1] = &v214;
  memset(&v211[2], 0, 24);
  v211[5] = var0;
  v211[6] = var1;
  v211[7] = 1;
  v212 = 0u;
  v213 = 0u;
  sub_23993B970(self->gaussianBlurKernel, a3, a4, a5, TempTexture, v219);
  sub_23993B970(self->sobel3XHKernel, a3, a4, TempTexture, v17, v215);
  sub_23993B970(self->sobel3XVKernel, a3, a4, v17, CompressedTempTexture, v215);
  sub_23993B970(self->sobel3YVKernel, a3, a4, TempTexture, v17, v215);
  sub_23993B970(self->sobel3YHKernel, a3, a4, v17, v196, v215);
  v27 = vmovn_s64(*&a9->var0.var0);
  v201[1] = v27.i16[2];
  v28 = vmovn_s64(*&a9->var1.var0);
  v29 = sqrt((a9->var1.var0 * a9->var1.var0 + a9->var1.var1 * a9->var1.var1));
  v201[0] = v27.i16[0];
  v27.i16[0] = v28.i16[0];
  v27.i16[1] = v28.i16[2];
  v27.i32[1] = v29;
  v202 = v27;
  gradientThreshold = self->_gradientThreshold;
  minLineLength = self->_minLineLength;
  maxLines = var1 * var0;
  v206 = 5;
  v27.i32[0] = LODWORD(self->_lineErrorThreshold);
  v207 = self->_detailRatio;
  v28.i32[0] = LODWORD(self->_mergeLocalityThreshold);
  v208 = *v27.i32;
  v209 = v28.i32[0];
  lineErrorThreshold = 0.0;
  v30 = *MEMORY[0x277CD7370];
  v31 = *(&self->super.super.isa + v30);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(a3, v32, ComputeState, v33, v34, v35);
    v37 = *(&self->super.super.isa + v30);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setBytes_length_atIndex_(a3, v38, v201, 48, 0, v39);
    objc_msgSend_setTexture_atIndex_(a3, v40, CompressedTempTexture, 0, v41, v42);
    objc_msgSend_setTexture_atIndex_(a3, v43, v196, 1, v44, v45);
    objc_msgSend_setTexture_atIndex_(a3, v46, v192, 2, v47, v48);
    objc_msgSend_setTexture_atIndex_(a3, v49, v18, 3, v50, v51);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v52, TempBuffer, 0, 1, v53);
    v54.i64[0] = 0x700000007;
    v55 = vshr_n_u32(*&vaddw_u16(v54, v202), 3uLL);
    *&v56 = v55.u32[0];
    *(&v56 + 1) = v55.u32[1];
    *v200 = v56;
    *&v200[16] = 1;
    *v199 = vdupq_n_s64(8uLL);
    *&v199[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v57, v200, v199, v58, v59);
    sub_23993B970(self->gradientNormalizeAreaMaxKernel, a3, a4, v18, v194, v211);
    v60 = *(&self->super.super.isa + v30);
    v65 = MPSLibrary::GetComputeState();
    if (v65)
    {
      objc_msgSend_setComputePipelineState_(a3, v61, v65, v62, v63, v64);
      v66 = *(&self->super.super.isa + v30);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setTexture_atIndex_(a3, v67, v18, 0, v68, v69);
      objc_msgSend_setTexture_atIndex_(a3, v70, v194, 1, v71, v72);
      objc_msgSend_setBytes_length_atIndex_(a3, v73, v201, 48, 0, v74);
      objc_msgSend_setBuffer_offset_atIndex_(a3, v75, TempBuffer, 0, 1, v76);
      objc_msgSend_setBuffer_offset_atIndex_(a3, v77, v191, 0, 2, v78);
      v79.i64[0] = 0x700000007;
      v80 = vshr_n_u32(*&vaddw_u16(v79, v202), 3uLL);
      *&v81 = v80.u32[0];
      *(&v81 + 1) = v80.u32[1];
      *v200 = v81;
      *&v200[16] = 1;
      *v199 = vdupq_n_s64(8uLL);
      *&v199[16] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v82, v200, v199, v83, v84);
      v85 = *(&self->super.super.isa + v30);
      v90 = MPSLibrary::GetComputeState();
      if (v90)
      {
        objc_msgSend_setComputePipelineState_(a3, v86, v90, v87, v88, v89);
        objc_msgSend_setTexture_atIndex_(a3, v91, v18, 0, v92, v93);
        objc_msgSend_setTexture_atIndex_(a3, v94, v192, 1, v95, v96);
        objc_msgSend_setTexture_atIndex_(a3, v97, a6, 2, v98, v99);
        objc_msgSend_setBytes_length_atIndex_(a3, v100, v201, 48, 0, v101);
        objc_msgSend_setBuffer_offset_atIndex_(a3, v102, TempBuffer, 0, 1, v103);
        objc_msgSend_setBuffer_offset_atIndex_(a3, v104, v191, 0, 3, v105);
        objc_msgSend_setBuffer_offset_atIndex_(a3, v106, v190, 0, 4, v107);
        objc_msgSend_setBuffer_offset_atIndex_(a3, v108, v189, 0, 6, v109);
        v110 = (2 * self->_detailRatio + 31) & 0x3FFE0;
        *v200 = 1;
        *&v200[8] = v188;
        *&v200[16] = 1;
        *v199 = v110;
        *&v199[8] = vdupq_n_s64(1uLL);
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v111, v200, v199, v112, v113);
        v114 = *(&self->super.super.isa + v30);
        MPSLibrary::ReleaseComputeState();
        if (self->_maxLines)
        {
          if (self->_lineErrorThreshold != 0.0)
          {
            v115 = *(&self->super.super.isa + v30);
            v120 = MPSLibrary::GetComputeState();
            if (v120)
            {
              objc_msgSend_setComputePipelineState_(a3, v116, v120, v117, v118, v119);
              v121 = *(&self->super.super.isa + v30);
              MPSLibrary::ReleaseComputeState();
              maxLines = self->_maxLines;
              objc_msgSend_setBytes_length_atIndex_(a3, v122, v201, 48, 0, v123);
              objc_msgSend_setBuffer_offset_atIndex_(a3, v124, v190, 0, 1, v125);
              objc_msgSend_setBuffer_offset_atIndex_(a3, v126, v191, 0, 2, v127);
              objc_msgSend_setBuffer_offset_atIndex_(a3, v128, a7, a8, 5, v129);
              objc_msgSend_setBuffer_offset_atIndex_(a3, v130, v189, 0, 4, v131);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(a3, v132, 4 * self->_maxLines, 0, v133, v134);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(a3, v135, 16, 1, v136, v137);
              v143 = objc_msgSend_threadExecutionWidth(v120, v138, v139, v140, v141, v142);
              v147 = (3.14159265 / (v208 + v208));
              *v200 = v147;
              v148 = vdupq_n_s64(1uLL);
              *&v200[8] = v148;
              v149 = v143 <= 1 ? 1 : v143;
              *v199 = v149;
              *&v199[8] = v148;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v144, v200, v199, v145, v146, v184);
              lineErrorThreshold = self->_lineErrorThreshold;
              objc_msgSend_setBytes_length_atIndex_(a3, v150, v201, 48, 0, v151);
              *v200 = v147;
              *&v200[8] = vdupq_n_s64(1uLL);
              *v199 = v149;
              *&v199[8] = *&v200[8];
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v152, v200, v199, v153, v154);
              v155 = *(&self->super.super.isa + v30);
              v160 = MPSLibrary::GetComputeState();
              if (v160)
              {
                objc_msgSend_setComputePipelineState_(a3, v156, v160, v157, v158, v159);
                v161 = *(&self->super.super.isa + v30);
                MPSLibrary::ReleaseComputeState();
                maxLines = self->_maxLines;
                objc_msgSend_setBytes_length_atIndex_(a3, v162, v201, 48, 0, v163);
                objc_msgSend_setBuffer_offset_atIndex_(a3, v164, v190, 0, 1, v165);
                objc_msgSend_setBuffer_offset_atIndex_(a3, v166, a7, a8, 2, v167);
                objc_msgSend_setBuffer_offset_atIndex_(a3, v168, v189, 0, 3, v169);
                objc_msgSend_setBuffer_offset_atIndex_(a3, v170, v191, 0, 4, v171);
                objc_msgSend_setBuffer_offset_atIndex_(a3, v172, a7, a8, 5, v173);
                v179 = objc_msgSend_threadExecutionWidth(v160, v174, v175, v176, v177, v178);
                if (v179 <= 1)
                {
                  v183 = 1;
                }

                else
                {
                  v183 = v179;
                }

                *v200 = (v185 + v183 - 1) / v183;
                *&v200[8] = vdupq_n_s64(1uLL);
                *v199 = v183;
                *&v199[8] = *&v200[8];
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v180, v200, v199, v181, v182);
              }
            }
          }
        }
      }
    }
  }

  MPSAutoCache::~MPSAutoCache(v225);
}

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceTexture:(id)a5 destinationTexture:(id)a6 endpointBuffer:(id)a7 endpointOffset:(unint64_t)a8
{
  v8 = a8;
  v9 = a7;
  v12 = a4;
  v14 = MEMORY[0x277CD7378];
  v15 = *MEMORY[0x277CD7378];
  v16 = *(&self->super.super.isa + v15);
  if ((v16 & 1) == 0)
  {
    v19 = *(&self->super.super.isa + *MEMORY[0x277CD7350]);
    v20 = objc_msgSend_pixelFormat(a6, a2, a3, a4, a5, a6);
    v26 = objc_msgSend_pixelFormat(a5, v21, v22, v23, v24, v25);
    v140 = v20;
    PixelInfo = MPSDevice::GetPixelInfo(v19, v20, MPSImageFeatureChannelFormatNone);
    v32 = MPSDevice::GetPixelInfo(v19, v26, MPSImageFeatureChannelFormatNone);
    if (!a5 && MTLReportFailureTypeEnabled())
    {
      v128 = objc_opt_class();
      v136 = NSStringFromClass(v128);
      MTLReportFailure();
    }

    v33 = v16 & 0xFFFFFFFFFFFFFFE0;
    if (v33 && MTLReportFailureTypeEnabled())
    {
      v129 = objc_opt_class();
      v136 = NSStringFromClass(v129);
      v138 = v33;
      MTLReportFailure();
    }

    objc_msgSend_textureType(a5, v27, v28, v29, v30, v31, v136, v138);
    if (objc_msgSend_textureType(a5, v34, v35, v36, v37, v38) != 2 && MTLReportFailureTypeEnabled())
    {
      v136 = a5;
      MTLReportFailure();
    }

    if ((~v32 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v136 = a5;
      v138 = v26;
      MTLReportFailure();
    }

    v12 = a4;
    v9 = a7;
    v8 = a8;
    v14 = MEMORY[0x277CD7378];
    if (a6)
    {
      objc_msgSend_textureType(a6, a2, v39, a4, a5, a6);
      if (objc_msgSend_textureType(a6, v40, v41, v42, v43, v44) != 2 && MTLReportFailureTypeEnabled())
      {
        v136 = a6;
        MTLReportFailure();
      }

      v45 = PixelInfo;
      if ((PixelInfo & 0xF000000) != 0x1000000)
      {
        v130 = MTLReportFailureTypeEnabled();
        v45 = PixelInfo;
        if (v130)
        {
          v136 = a6;
          v138 = v140;
          MTLReportFailure();
          v45 = PixelInfo;
        }
      }

      if ((v45 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
      {
        v136 = a6;
        v138 = v140;
        MTLReportFailure();
      }
    }
  }

  if (a5 != a6 && (objc_msgSend_isEqual_(a5, a2, a6, a4, a5, a6) & 1) == 0)
  {
    if ((*(&self->super.super.isa + v15) & 1) == 0)
    {
      if (!v9 && MTLReportFailureTypeEnabled())
      {
        v131 = objc_opt_class();
        v136 = NSStringFromClass(v131);
        MTLReportFailure();
      }

      objc_msgSend_length(v9, v46, v47, v48, v49, v50, v136, v138);
      if (objc_msgSend_length(v9, v51, v52, v53, v54, v55) < v8 + 4 + 8 * self->_maxLines && MTLReportFailureTypeEnabled())
      {
        v136 = (v8 + 4 + 8 * self->_maxLines);
        v138 = objc_msgSend_length(v9, v46, v47, v48, v49, v50);
        MTLReportFailure();
      }
    }

    memset(&v146, 0, sizeof(v146));
    v145.width = objc_msgSend_width(a5, v46, v47, v48, v49, v50, v136, v138);
    v145.height = objc_msgSend_height(a5, v56, v57, v58, v59, v60);
    v145.depth = 1;
    v61 = *&self->_clipRectSource.origin.z;
    *&v144.origin.x = *&self->_clipRectSource.origin.x;
    *&v144.origin.z = v61;
    *&v144.size.height = *&self->_clipRectSource.size.height;
    MPSGetEffectiveClipRegion(&v146, &v145, &v144);
    if ((*(&self->super.super.isa + v15) & 1) == 0)
    {
      objc_msgSend_width(a5, v62, v63, v64, v65, v66);
      v67 = v146.size.width + v146.origin.x;
      if (v67 > objc_msgSend_width(a5, v68, v69, v70, v71, v72) && MTLReportFailureTypeEnabled())
      {
        v137 = v146.size.width + v146.origin.x;
        v139 = objc_msgSend_width(a5, v73, v74, v75, v76, v77);
        MTLReportFailure();
      }

      objc_msgSend_height(a5, v73, v74, v75, v76, v77, v137, v139);
      v78 = v146.size.height + v146.origin.y;
      if (v78 > objc_msgSend_height(a5, v79, v80, v81, v82, v83) && MTLReportFailureTypeEnabled())
      {
        v137 = v146.size.height + v146.origin.y;
        v139 = objc_msgSend_height(a5, v62, v132, v133, v134, v135);
        MTLReportFailure();
      }
    }

    if (v146.size.height && v146.size.width)
    {
      if (a3)
      {
        v144 = v146;
        objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTexture_destinationTexture_endpointBuffer_endpointOffset_inputExtent_(self, v62, a3, v12, a5, a6, v9, v8, &v144);
      }

      else
      {
        v89 = objc_alloc(MEMORY[0x277CD7210]);
        v97 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v89, v90, v12, 0, v91, v92);
        v145.width = v97;
        v145.height = self;
        if ((*(&self->super.super.isa + *v14) & 0x18) != 0)
        {
          v98 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
          if (v98 || (v99 = objc_opt_class(), v100 = NSStringFromClass(v99), objc_msgSend_setLabel_(self, v101, v100, v102, v103, v104), (v98 = v100) != 0))
          {
            objc_msgSend_setLabel_(v97, v93, v98, v94, v95, v96, v137, v139);
          }
        }

        v144 = v146;
        objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTexture_destinationTexture_endpointBuffer_endpointOffset_inputExtent_(self, v93, v97, v12, a5, a6, v9, v8, &v144);
        objc_msgSend_endEncoding(v97, v105, v106, v107, v108, v109);
      }

      if (v9)
      {
        v110 = objc_msgSend_userDictionary(v12, v84, v85, v86, v87, v88);
        v115 = objc_msgSend_objectForKey_(v110, v111, @"_MPSCommandBufferRetainListKey", v112, v113, v114);
        if (!v115)
        {
          v120 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v110, v121, v120, @"_MPSCommandBufferRetainListKey", v122, v123);

          v144.origin.x = MEMORY[0x277D85DD0];
          v144.origin.y = 3221225472;
          v144.origin.z = sub_23993D93C;
          v144.size.width = &unk_278AC37A8;
          v144.size.height = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v12, v124, &v144, v125, v126, v127);
          v115 = v120;
        }

        objc_msgSend_addObject_(v115, v116, v9, v117, v118, v119);
      }
    }
  }
}

- (MTLRegion)clipRectSource
{
  v3 = *&self[2].size.depth;
  *&retstr->origin.x = *&self[2].size.width;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[3].origin.y;
  return self;
}

- (void)setClipRectSource:(MTLRegion *)clipRectSource
{
  v4 = *&clipRectSource->origin.z;
  v3 = *&clipRectSource->size.height;
  *&self->_clipRectSource.origin.x = *&clipRectSource->origin.x;
  *&self->_clipRectSource.origin.z = v4;
  *&self->_clipRectSource.size.height = v3;
}

@end