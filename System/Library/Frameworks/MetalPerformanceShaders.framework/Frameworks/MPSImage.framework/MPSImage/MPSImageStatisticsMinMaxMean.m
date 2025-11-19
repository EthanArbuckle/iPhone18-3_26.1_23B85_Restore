@interface MPSImageStatisticsMinMaxMean
- ($1C75447F214D9465CD650DD956230C7F)clipRectSource;
- (MPSImageStatisticsMinMaxMean)initWithCoder:(id)a3 device:(id)a4;
- (MPSImageStatisticsMinMaxMean)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)initEncoder;
- (void)setClipRectSource:(id *)a3;
- (void)setColorConversionData:(id)a3;
- (void)setColorConversionFunction:(id)a3;
@end

@implementation MPSImageStatisticsMinMaxMean

- (void)setColorConversionFunction:(id)a3
{
  colorConversionFunction = self->_colorConversionFunction;
  if (colorConversionFunction != a3)
  {
    v5 = colorConversionFunction;
    self->_colorConversionFunction = a3;
  }
}

- (void)setColorConversionData:(id)a3
{
  colorConversionData = self->_colorConversionData;
  if (colorConversionData != a3)
  {
    v5 = colorConversionData;
    self->_colorConversionData = a3;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageStatisticsMinMaxMean;
  [(MPSKernel *)&v3 dealloc];
}

- (void)initEncoder
{
  self->super._encodeData = self;
  self->super._encode = sub_23997BBE0;
  *self->_strides = 0x100000001;
  self->_colorConversionData = 0;
  v23 = 0;
  v7 = objc_msgSend_device(self, a2, v2, v3, v4, v5);
  v14 = objc_msgSend_newLibraryWithSource_options_error_(v7, v8, @"[[visible]] float4 __attribute__((__always_inline__)) color_conversion(float4 v, constant void* data){return v;}", 0, &v23, v9);
  if (!v14 && MTLReportFailureTypeEnabled())
  {
    v22 = objc_msgSend_localizedDescription(v23, v10, v16, v11, v12, v13);
    MTLReportFailure();
  }

  v15 = objc_msgSend_newFunctionWithName_(v14, v10, @"color_conversion", v11, v12, v13, v22);
  self->_defaultConversion = v15;
  if (v15 || !MTLReportFailureTypeEnabled())
  {
  }

  else
  {
    objc_msgSend_localizedDescription(v23, v17, v18, v19, v20, v21);
    MTLReportFailure();
  }
}

- (MPSImageStatisticsMinMaxMean)initWithDevice:(id)a3
{
  v12.receiver = self;
  v12.super_class = MPSImageStatisticsMinMaxMean;
  result = [(MPSUnaryImageKernel *)&v12 initWithDevice:a3];
  if (result)
  {
    v9 = result;
    objc_msgSend_initEncoder(result, v4, v5, v6, v7, v8);
    result = v9;
    v9->super._checkFlags = 515;
    v10 = *MEMORY[0x277CD7200];
    v11 = *(MEMORY[0x277CD7200] + 32);
    *&v9->_clipRectSource.origin.z = *(MEMORY[0x277CD7200] + 16);
    *&v9->_clipRectSource.size.height = v11;
    *&v9->_clipRectSource.origin.x = v10;
  }

  return result;
}

- (id)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MPSImageStatisticsMinMaxMean;
  v3 = [(MPSUnaryImageKernel *)&v9 debugDescription];
  return objc_msgSend_stringWithFormat_(v2, v4, @"%@\n", v5, v6, v7, v3);
}

- (MPSImageStatisticsMinMaxMean)initWithCoder:(id)a3 device:(id)a4
{
  v46.receiver = self;
  v46.super_class = MPSImageStatisticsMinMaxMean;
  v5 = [(MPSUnaryImageKernel *)&v46 initWithCoder:a3 device:a4];
  v11 = v5;
  if (!v5)
  {
    return v11;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_initEncoder(v5, v6, v7, v8, v9, v10);
    v11->super._checkFlags = 515;
    v11->_clipRectSource.origin.x = objc_msgSend_decodeInt64ForKey_(a3, v12, @"MPSImageStatistics.clipRectSource.origin.x", v13, v14, v15);
    v11->_clipRectSource.origin.y = objc_msgSend_decodeInt64ForKey_(a3, v16, @"MPSImageStatistics.clipRectSource.origin.y", v17, v18, v19);
    v11->_clipRectSource.origin.z = objc_msgSend_decodeInt64ForKey_(a3, v20, @"MPSImageStatistics.clipRectSource.origin.z", v21, v22, v23);
    v11->_clipRectSource.size.width = objc_msgSend_decodeInt64ForKey_(a3, v24, @"MPSImageStatistics.clipRectSource.size.width", v25, v26, v27);
    v11->_clipRectSource.size.height = objc_msgSend_decodeInt64ForKey_(a3, v28, @"MPSImageStatistics.clipRectSource.size.height", v29, v30, v31);
    v11->_clipRectSource.size.depth = objc_msgSend_decodeInt64ForKey_(a3, v32, @"MPSImageStatistics.clipRectSource.size.depth", v33, v34, v35);
    *v11->_strides = objc_msgSend_decodeInt64ForKey_(a3, v36, @"MPSImageStatistics.stride.x", v37, v38, v39);
    *&v11->_strides[4] = objc_msgSend_decodeInt64ForKey_(a3, v40, @"MPSImageStatistics.stride.y", v41, v42, v43);
    return v11;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v45 = objc_opt_class();
    NSStringFromClass(v45);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v29.receiver = self;
  v29.super_class = MPSImageStatisticsMinMaxMean;
  [(MPSUnaryImageKernel *)&v29 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, v4->_clipRectSource.origin.x, @"MPSImageStatistics.clipRectSource.origin.x", v6, v7);
  objc_msgSend_encodeInt64_forKey_(a3, v8, v4->_clipRectSource.origin.y, @"MPSImageStatistics.clipRectSource.origin.y", v9, v10);
  objc_msgSend_encodeInt64_forKey_(a3, v11, v4->_clipRectSource.origin.z, @"MPSImageStatistics.clipRectSource.origin.z", v12, v13);
  objc_msgSend_encodeInt64_forKey_(a3, v14, v4->_clipRectSource.size.width, @"MPSImageStatistics.clipRectSource.size.width", v15, v16);
  objc_msgSend_encodeInt64_forKey_(a3, v17, v4->_clipRectSource.size.height, @"MPSImageStatistics.clipRectSource.size.height", v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, v4->_clipRectSource.size.depth, @"MPSImageStatistics.clipRectSource.size.depth", v21, v22);
  v4 = (v4 + 256);
  objc_msgSend_encodeInt64_forKey_(a3, v23, v4->super.super.super.isa, @"MPSImageStatistics.stride.x", v24, v25);
  objc_msgSend_encodeInt64_forKey_(a3, v26, HIDWORD(v4->super.super.super.isa), @"MPSImageStatistics.stride.y", v27, v28);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v14.receiver = self;
  v14.super_class = MPSImageStatisticsMinMaxMean;
  v10 = [(MPSUnaryImageKernel *)&v14 copyWithZone:a3 device:a4];
  if (v10)
  {
    objc_msgSend_initEncoder(self, v5, v6, v7, v8, v9);
    v12 = *&self->_clipRectSource.origin.z;
    v11 = *&self->_clipRectSource.size.height;
    v10[13] = *&self->_clipRectSource.origin.x;
    v10[14] = v12;
    v10[15] = v11;
    *(v10 + 32) = *self->_strides;
    *(v10 + 34) = self->_colorConversionFunction;
    *(v10 + 35) = self->_colorConversionData;
  }

  return v10;
}

- ($1C75447F214D9465CD650DD956230C7F)clipRectSource
{
  v3 = *&self[4].var1.var1;
  *&retstr->var0.var0 = *&self[4].var0.var2;
  *&retstr->var0.var2 = v3;
  *&retstr->var1.var1 = *&self[5].var0.var0;
  return self;
}

- (void)setClipRectSource:(id *)a3
{
  v4 = *&a3->var0.var2;
  v3 = *&a3->var1.var1;
  *&self->_clipRectSource.origin.x = *&a3->var0.var0;
  *&self->_clipRectSource.origin.z = v4;
  *&self->_clipRectSource.size.height = v3;
}

@end