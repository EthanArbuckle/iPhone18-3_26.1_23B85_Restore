@interface MPSNNReduceBinary
- (MPSNNReduceBinary)initWithCoder:(id)a3 device:(id)a4;
- (MPSNNReduceBinary)initWithDevice:(id)a3 reduceOperation:(int)a4;
- (MPSNNReduceBinary)initWithDevice:(id)device;
- (MTLRegion)primarySourceClipRect;
- (MTLRegion)secondarySourceClipRect;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setPrimarySourceClipRect:(MTLRegion *)primarySourceClipRect;
- (void)setSecondarySourceClipRect:(MTLRegion *)secondarySourceClipRect;
@end

@implementation MPSNNReduceBinary

- (MPSNNReduceBinary)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSNNReduceBinary)initWithDevice:(id)a3 reduceOperation:(int)a4
{
  v11.receiver = self;
  v11.super_class = MPSNNReduceBinary;
  result = [(MPSCNNBinaryKernel *)&v11 initWithDevice:a3];
  if (result)
  {
    v6 = MEMORY[0x277CD7200];
    v8 = *(MEMORY[0x277CD7200] + 16);
    v7 = *(MEMORY[0x277CD7200] + 32);
    *&result->_primarySourceClipRect.origin.x = *MEMORY[0x277CD7200];
    *&result->_primarySourceClipRect.origin.z = v8;
    *&result->_primarySourceClipRect.size.height = v7;
    v9 = *v6;
    v10 = v6[2];
    *&result->_secondarySourceClipRect.origin.z = v6[1];
    *&result->_secondarySourceClipRect.size.height = v10;
    *&result->_secondarySourceClipRect.origin.x = v9;
    result->_reduceOp = a4;
    result->super._encode = sub_239D23560;
    result->super._batchEncode = sub_239D238E8;
    result->super._encodeData = result;
    result->super._checkFlags = 2560;
  }

  return result;
}

- (MPSNNReduceBinary)initWithCoder:(id)a3 device:(id)a4
{
  v87.receiver = self;
  v87.super_class = MPSNNReduceBinary;
  v5 = [(MPSCNNBinaryKernel *)&v87 initWithCoder:a3 device:a4];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->super._encode = sub_239D23560;
    v5->super._batchEncode = sub_239D238E8;
    v5->super._encodeData = v5;
    v5->_primarySourceClipRect.origin.x = objc_msgSend_decodeInt64ForKey_(a3, v6, @"MPSNNReduce.primarySourceClipRect.origin.x", v7, v8, v9, v10, v11);
    v12->_primarySourceClipRect.origin.y = objc_msgSend_decodeInt64ForKey_(a3, v13, @"MPSNNReduce.primarySourceClipRect.origin.y", v14, v15, v16, v17, v18);
    v12->_primarySourceClipRect.origin.z = objc_msgSend_decodeInt64ForKey_(a3, v19, @"MPSNNReduce.primarySourceClipRect.origin.z", v20, v21, v22, v23, v24);
    v12->_primarySourceClipRect.size.width = objc_msgSend_decodeInt64ForKey_(a3, v25, @"MPSNNReduce.primarySourceClipRect.size.width", v26, v27, v28, v29, v30);
    v12->_primarySourceClipRect.size.height = objc_msgSend_decodeInt64ForKey_(a3, v31, @"MPSNNReduce.primarySourceClipRect.size.height", v32, v33, v34, v35, v36);
    v12->_primarySourceClipRect.size.depth = objc_msgSend_decodeInt64ForKey_(a3, v37, @"MPSNNReduce.primarySourceClipRect.size.depth", v38, v39, v40, v41, v42);
    v12->_secondarySourceClipRect.origin.x = objc_msgSend_decodeInt64ForKey_(a3, v43, @"MPSNNReduce.secondarySourceClipRect.origin.x", v44, v45, v46, v47, v48);
    v12->_secondarySourceClipRect.origin.y = objc_msgSend_decodeInt64ForKey_(a3, v49, @"MPSNNReduce.secondarySourceClipRect.origin.y", v50, v51, v52, v53, v54);
    v12->_secondarySourceClipRect.origin.z = objc_msgSend_decodeInt64ForKey_(a3, v55, @"MPSNNReduce.secondarySourceClipRect.origin.z", v56, v57, v58, v59, v60);
    v12->_secondarySourceClipRect.size.width = objc_msgSend_decodeInt64ForKey_(a3, v61, @"MPSNNReduce.secondarySourceClipRect.size.width", v62, v63, v64, v65, v66);
    v12->_secondarySourceClipRect.size.height = objc_msgSend_decodeInt64ForKey_(a3, v67, @"MPSNNReduce.secondarySourceClipRect.size.height", v68, v69, v70, v71, v72);
    v12->_secondarySourceClipRect.size.depth = objc_msgSend_decodeInt64ForKey_(a3, v73, @"MPSNNReduce.secondarySourceClipRect.size.depth", v74, v75, v76, v77, v78);
    v12->_reduceOp = objc_msgSend_decodeInt64ForKey_(a3, v79, @"MPSNNReduce.reduceOp", v80, v81, v82, v83, v84);
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v86 = objc_opt_class();
    NSStringFromClass(v86);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v70.receiver = self;
  v70.super_class = MPSNNReduceBinary;
  [(MPSCNNBinaryKernel *)&v70 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_primarySourceClipRect.origin.x, @"MPSNNReduce.primarySourceClipRect.origin.x", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, self->_primarySourceClipRect.origin.y, @"MPSNNReduce.primarySourceClipRect.origin.y", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, self->_primarySourceClipRect.origin.z, @"MPSNNReduce.primarySourceClipRect.origin.z", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, self->_primarySourceClipRect.size.width, @"MPSNNReduce.primarySourceClipRect.size.width", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(a3, v25, self->_primarySourceClipRect.size.height, @"MPSNNReduce.primarySourceClipRect.size.height", v26, v27, v28, v29);
  objc_msgSend_encodeInt64_forKey_(a3, v30, self->_primarySourceClipRect.size.depth, @"MPSNNReduce.primarySourceClipRect.size.depth", v31, v32, v33, v34);
  objc_msgSend_encodeInt64_forKey_(a3, v35, self->_secondarySourceClipRect.origin.x, @"MPSNNReduce.secondarySourceClipRect.origin.x", v36, v37, v38, v39);
  objc_msgSend_encodeInt64_forKey_(a3, v40, self->_secondarySourceClipRect.origin.y, @"MPSNNReduce.secondarySourceClipRect.origin.y", v41, v42, v43, v44);
  objc_msgSend_encodeInt64_forKey_(a3, v45, self->_secondarySourceClipRect.origin.z, @"MPSNNReduce.secondarySourceClipRect.origin.z", v46, v47, v48, v49);
  objc_msgSend_encodeInt64_forKey_(a3, v50, self->_secondarySourceClipRect.size.width, @"MPSNNReduce.secondarySourceClipRect.size.width", v51, v52, v53, v54);
  objc_msgSend_encodeInt64_forKey_(a3, v55, self->_secondarySourceClipRect.size.height, @"MPSNNReduce.secondarySourceClipRect.size.height", v56, v57, v58, v59);
  objc_msgSend_encodeInt64_forKey_(a3, v60, self->_secondarySourceClipRect.size.depth, @"MPSNNReduce.secondarySourceClipRect.size.depth", v61, v62, v63, v64);
  objc_msgSend_encodeInt64_forKey_(a3, v65, self->_reduceOp, @"MPSNNReduce.reduceOp", v66, v67, v68, v69);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v10.receiver = self;
  v10.super_class = MPSNNReduceBinary;
  result = [(MPSCNNBinaryKernel *)&v10 copyWithZone:a3 device:a4];
  if (result)
  {
    v7 = *&self->_primarySourceClipRect.origin.z;
    v6 = *&self->_primarySourceClipRect.size.height;
    *(result + 520) = *&self->_primarySourceClipRect.origin.x;
    *(result + 536) = v7;
    *(result + 552) = v6;
    v8 = *&self->_secondarySourceClipRect.origin.x;
    v9 = *&self->_secondarySourceClipRect.size.height;
    *(result + 30) = *&self->_secondarySourceClipRect.origin.z;
    *(result + 31) = v9;
    *(result + 29) = v8;
    *(result + 128) = self->_reduceOp;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSNNReduceBinary;
  v4 = [(MPSCNNBinaryKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tReduceOperation: %lu", v6, v7, v8, v9, v10, v4, self->_reduceOp);
}

- (MTLRegion)primarySourceClipRect
{
  v3 = *&self[11].origin.y;
  *&retstr->origin.x = *&self[10].size.depth;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[11].size.width;
  return self;
}

- (void)setPrimarySourceClipRect:(MTLRegion *)primarySourceClipRect
{
  v4 = *&primarySourceClipRect->origin.z;
  v3 = *&primarySourceClipRect->size.height;
  *&self->_primarySourceClipRect.origin.x = *&primarySourceClipRect->origin.x;
  *&self->_primarySourceClipRect.origin.z = v4;
  *&self->_primarySourceClipRect.size.height = v3;
}

- (MTLRegion)secondarySourceClipRect
{
  v3 = *&self[10].origin.x;
  *&retstr->origin.x = *&self[9].size.height;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[10].origin.z;
  return self;
}

- (void)setSecondarySourceClipRect:(MTLRegion *)secondarySourceClipRect
{
  v4 = *&secondarySourceClipRect->origin.z;
  v3 = *&secondarySourceClipRect->size.height;
  *&self->_secondarySourceClipRect.origin.x = *&secondarySourceClipRect->origin.x;
  *&self->_secondarySourceClipRect.origin.z = v4;
  *&self->_secondarySourceClipRect.size.height = v3;
}

@end