@interface MPSMatrixUnaryKernel
- (MPSMatrixUnaryKernel)initWithCoder:(id)a3 device:(id)a4;
- (MPSMatrixUnaryKernel)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin;
- (void)setSourceMatrixOrigin:(MTLOrigin *)sourceMatrixOrigin;
@end

@implementation MPSMatrixUnaryKernel

- (MPSMatrixUnaryKernel)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSMatrixUnaryKernel;
  result = [(MPSKernel *)&v4 initWithDevice:a3];
  if (result)
  {
    result->_sourceMatrixOrigin.y = 0;
    result->_sourceMatrixOrigin.z = 0;
    result->_sourceMatrixOrigin.x = 0;
    result->_resultMatrixOrigin.y = 0;
    result->_resultMatrixOrigin.z = 0;
    result->_resultMatrixOrigin.x = 0;
    result->_batchStart = 0;
    result->_batchSize = -1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSMatrixUnaryKernel;
  result = [(MPSKernel *)&v8 copyWithZone:a3 device:a4];
  if (result)
  {
    z = self->_sourceMatrixOrigin.z;
    *(result + 104) = *&self->_sourceMatrixOrigin.x;
    *(result + 15) = z;
    v7 = self->_resultMatrixOrigin.z;
    *(result + 8) = *&self->_resultMatrixOrigin.x;
    *(result + 18) = v7;
    *(result + 11) = self->_batchStart;
    *(result + 12) = self->_batchSize;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v45.receiver = self;
  v45.super_class = MPSMatrixUnaryKernel;
  [(MPSKernel *)&v45 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_sourceMatrixOrigin.x, @"MPSMatrixUnaryKernel.sourceMatrixOrigin.x", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, self->_sourceMatrixOrigin.y, @"MPSMatrixUnaryKernel.sourceMatrixOrigin.y", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, self->_sourceMatrixOrigin.z, @"MPSMatrixUnaryKernel.sourceMatrixOrigin.z", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, self->_resultMatrixOrigin.x, @"MPSMatrixUnaryKernel.resultMatrixOrigin.x", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(a3, v25, self->_resultMatrixOrigin.y, @"MPSMatrixUnaryKernel.resultMatrixOrigin.y", v26, v27, v28, v29);
  objc_msgSend_encodeInt64_forKey_(a3, v30, self->_resultMatrixOrigin.z, @"MPSMatrixUnaryKernel.resultMatrixOrigin.z", v31, v32, v33, v34);
  objc_msgSend_encodeInt64_forKey_(a3, v35, self->_batchStart, @"MPSMatrixUnaryKernel.batchStart", v36, v37, v38, v39);
  objc_msgSend_encodeInt64_forKey_(a3, v40, self->_batchSize, @"MPSMatrixUnaryKernel.batchSize", v41, v42, v43, v44);
}

- (MPSMatrixUnaryKernel)initWithCoder:(id)a3 device:(id)a4
{
  v57.receiver = self;
  v57.super_class = MPSMatrixUnaryKernel;
  v5 = [(MPSKernel *)&v57 initWithCoder:a3 device:a4];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 1) << 8 == 256)
  {
    v5->_sourceMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(a3, v6, @"MPSMatrixUnaryKernel.sourceMatrixOrigin.x", v7, v8, v9, v10, v11);
    v12->_sourceMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(a3, v13, @"MPSMatrixUnaryKernel.sourceMatrixOrigin.y", v14, v15, v16, v17, v18);
    v12->_sourceMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(a3, v19, @"MPSMatrixUnaryKernel.sourceMatrixOrigin.z", v20, v21, v22, v23, v24);
    v12->_resultMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(a3, v25, @"MPSMatrixUnaryKernel.resultMatrixOrigin.x", v26, v27, v28, v29, v30);
    v12->_resultMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(a3, v31, @"MPSMatrixUnaryKernel.resultMatrixOrigin.y", v32, v33, v34, v35, v36);
    v12->_resultMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(a3, v37, @"MPSMatrixUnaryKernel.resultMatrixOrigin.z", v38, v39, v40, v41, v42);
    v12->_batchStart = objc_msgSend_decodeInt64ForKey_(a3, v43, @"MPSMatrixUnaryKernel.batchStart", v44, v45, v46, v47, v48);
    v12->_batchSize = objc_msgSend_decodeInt64ForKey_(a3, v49, @"MPSMatrixUnaryKernel.batchSize", v50, v51, v52, v53, v54);
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v56 = objc_opt_class();
    NSStringFromClass(v56);
    MTLReportFailure();
  }

  return 0;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSMatrixUnaryKernel;
  v4 = [(MPSKernel *)&v13 debugDescription];
  batchStart = self->_batchStart;
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@\n\tsourceMatrixOrigin (rowIndex, columnIndex, batchIndex): \t(%lu, %lu, %lu)\n\tresultMatrixOrigin (rowIndex, columnIndex, batchIndex): \t(%lu, %lu, %lu)\n\tbatchStart:\t\t\t\t%lu\n\tbatchSize:\t\t\t\t%lu\n", v7, v8, v9, v10, v11, v4, self->_sourceMatrixOrigin.x, self->_sourceMatrixOrigin.y, self->_sourceMatrixOrigin.z, self->_resultMatrixOrigin.x, self->_resultMatrixOrigin.y, self->_resultMatrixOrigin.z, batchStart, self->_batchSize);
}

- (void)setSourceMatrixOrigin:(MTLOrigin *)sourceMatrixOrigin
{
  z = sourceMatrixOrigin->z;
  *&self->_sourceMatrixOrigin.x = *&sourceMatrixOrigin->x;
  self->_sourceMatrixOrigin.z = z;
}

- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin
{
  z = resultMatrixOrigin->z;
  *&self->_resultMatrixOrigin.x = *&resultMatrixOrigin->x;
  self->_resultMatrixOrigin.z = z;
}

@end