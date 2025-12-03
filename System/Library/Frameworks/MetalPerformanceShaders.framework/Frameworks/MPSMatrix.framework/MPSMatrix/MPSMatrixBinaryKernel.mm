@interface MPSMatrixBinaryKernel
- (MPSMatrixBinaryKernel)initWithCoder:(id)coder device:(id)device;
- (MPSMatrixBinaryKernel)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
- (void)setPrimarySourceMatrixOrigin:(MTLOrigin *)primarySourceMatrixOrigin;
- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin;
- (void)setSecondarySourceMatrixOrigin:(MTLOrigin *)secondarySourceMatrixOrigin;
@end

@implementation MPSMatrixBinaryKernel

- (MPSMatrixBinaryKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixBinaryKernel;
  result = [(MPSKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_primarySourceMatrixOrigin.y = 0;
    result->_primarySourceMatrixOrigin.z = 0;
    result->_primarySourceMatrixOrigin.x = 0;
    result->_secondarySourceMatrixOrigin.y = 0;
    result->_secondarySourceMatrixOrigin.z = 0;
    result->_secondarySourceMatrixOrigin.x = 0;
    result->_resultMatrixOrigin.y = 0;
    result->_resultMatrixOrigin.z = 0;
    result->_resultMatrixOrigin.x = 0;
    result->_batchStart = 0;
    result->_batchSize = -1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSMatrixBinaryKernel;
  result = [(MPSKernel *)&v9 copyWithZone:zone device:device];
  if (result)
  {
    z = self->_primarySourceMatrixOrigin.z;
    *(result + 104) = *&self->_primarySourceMatrixOrigin.x;
    *(result + 15) = z;
    v7 = self->_secondarySourceMatrixOrigin.z;
    *(result + 8) = *&self->_secondarySourceMatrixOrigin.x;
    *(result + 18) = v7;
    v8 = *&self->_resultMatrixOrigin.x;
    *(result + 21) = self->_resultMatrixOrigin.z;
    *(result + 152) = v8;
    *(result + 11) = self->_batchStart;
    *(result + 12) = self->_batchSize;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v60.receiver = self;
  v60.super_class = MPSMatrixBinaryKernel;
  [(MPSKernel *)&v60 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_primarySourceMatrixOrigin.x, @"MPSMatrixUnaryKernel.primarySourceMatrixOrigin.x", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_primarySourceMatrixOrigin.y, @"MPSMatrixUnaryKernel.primarySourceMatrixOrigin.y", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_primarySourceMatrixOrigin.z, @"MPSMatrixUnaryKernel.primarySourceMatrixOrigin.z", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_secondarySourceMatrixOrigin.x, @"MPSMatrixUnaryKernel.secondarySourceMatrixOrigin.x", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(coder, v25, self->_secondarySourceMatrixOrigin.y, @"MPSMatrixUnaryKernel.secondarySourceMatrixOrigin.y", v26, v27, v28, v29);
  objc_msgSend_encodeInt64_forKey_(coder, v30, self->_secondarySourceMatrixOrigin.z, @"MPSMatrixUnaryKernel.secondarySourceMatrixOrigin.z", v31, v32, v33, v34);
  objc_msgSend_encodeInt64_forKey_(coder, v35, self->_resultMatrixOrigin.x, @"MPSMatrixUnaryKernel.resultMatrixOrigin.x", v36, v37, v38, v39);
  objc_msgSend_encodeInt64_forKey_(coder, v40, self->_resultMatrixOrigin.y, @"MPSMatrixUnaryKernel.resultMatrixOrigin.y", v41, v42, v43, v44);
  objc_msgSend_encodeInt64_forKey_(coder, v45, self->_resultMatrixOrigin.z, @"MPSMatrixUnaryKernel.resultMatrixOrigin.z", v46, v47, v48, v49);
  objc_msgSend_encodeInt64_forKey_(coder, v50, self->_batchStart, @"MPSMatrixUnaryKernel.batchStart", v51, v52, v53, v54);
  objc_msgSend_encodeInt64_forKey_(coder, v55, self->_batchSize, @"MPSMatrixUnaryKernel.batchSize", v56, v57, v58, v59);
}

- (MPSMatrixBinaryKernel)initWithCoder:(id)coder device:(id)device
{
  v75.receiver = self;
  v75.super_class = MPSMatrixBinaryKernel;
  v5 = [(MPSKernel *)&v75 initWithCoder:coder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 1) << 8 == 256)
  {
    v5->_primarySourceMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(coder, v6, @"MPSMatrixUnaryKernel.primarySourceMatrixOrigin.x", v7, v8, v9, v10, v11);
    v12->_primarySourceMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(coder, v13, @"MPSMatrixUnaryKernel.primarySourceMatrixOrigin.y", v14, v15, v16, v17, v18);
    v12->_primarySourceMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(coder, v19, @"MPSMatrixUnaryKernel.primarySourceMatrixOrigin.z", v20, v21, v22, v23, v24);
    v12->_secondarySourceMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(coder, v25, @"MPSMatrixUnaryKernel.secondarySourceMatrixOrigin.x", v26, v27, v28, v29, v30);
    v12->_secondarySourceMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(coder, v31, @"MPSMatrixUnaryKernel.secondarySourceMatrixOrigin.y", v32, v33, v34, v35, v36);
    v12->_secondarySourceMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(coder, v37, @"MPSMatrixUnaryKernel.secondarySourceMatrixOrigin.z", v38, v39, v40, v41, v42);
    v12->_resultMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(coder, v43, @"MPSMatrixUnaryKernel.resultMatrixOrigin.x", v44, v45, v46, v47, v48);
    v12->_resultMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(coder, v49, @"MPSMatrixUnaryKernel.resultMatrixOrigin.y", v50, v51, v52, v53, v54);
    v12->_resultMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(coder, v55, @"MPSMatrixUnaryKernel.resultMatrixOrigin.z", v56, v57, v58, v59, v60);
    v12->_batchStart = objc_msgSend_decodeInt64ForKey_(coder, v61, @"MPSMatrixUnaryKernel.batchStart", v62, v63, v64, v65, v66);
    v12->_batchSize = objc_msgSend_decodeInt64ForKey_(coder, v67, @"MPSMatrixUnaryKernel.batchSize", v68, v69, v70, v71, v72);
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v74 = objc_opt_class();
    NSStringFromClass(v74);
    MTLReportFailure();
  }

  return 0;
}

- (void)setPrimarySourceMatrixOrigin:(MTLOrigin *)primarySourceMatrixOrigin
{
  z = primarySourceMatrixOrigin->z;
  *&self->_primarySourceMatrixOrigin.x = *&primarySourceMatrixOrigin->x;
  self->_primarySourceMatrixOrigin.z = z;
}

- (void)setSecondarySourceMatrixOrigin:(MTLOrigin *)secondarySourceMatrixOrigin
{
  z = secondarySourceMatrixOrigin->z;
  *&self->_secondarySourceMatrixOrigin.x = *&secondarySourceMatrixOrigin->x;
  self->_secondarySourceMatrixOrigin.z = z;
}

- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin
{
  z = resultMatrixOrigin->z;
  *&self->_resultMatrixOrigin.x = *&resultMatrixOrigin->x;
  self->_resultMatrixOrigin.z = z;
}

@end