@interface MPSMatrixRandomMTGP32
- (MPSMatrixRandomMTGP32)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer destinationMatrix:(id)matrix;
- (void)encodeToCommandBuffer:(id)buffer destinationVector:(id)vector;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSMatrixRandomMTGP32

- (void)encodeToCommandBuffer:(id)buffer destinationVector:(id)vector
{
  objc_msgSend_batchSize(self, a2, buffer, vector, v4, v5, v6, v7);
  if (objc_msgSend_batchSize(self, v11, v12, v13, v14, v15, v16, v17) != 1 && MTLReportFailureTypeEnabled())
  {
    v63 = objc_opt_class();
    v64 = NSStringFromClass(v63);
    v65 = objc_opt_class();
    v66 = v64;
    v67 = NSStringFromClass(v65);
    MTLReportFailure();
  }

  v25 = *(vector + *MEMORY[0x277CD74A8]);
  v26 = objc_msgSend_batchStart(self, v18, v19, v20, v21, v22, v23, v24, v66, v67);
  v34 = v25 + objc_msgSend_vectorBytes(vector, v27, v28, v29, v30, v31, v32, v33) * v26;
  v42 = objc_msgSend_dataType(vector, v35, v36, v37, v38, v39, v40, v41);
  parallelFilter = self->_parallelFilter;
  v44 = v34 / (v42 >> 3);
  v52 = objc_msgSend_data(vector, v45, v46, v47, v48, v49, v50, v51);
  v60 = objc_msgSend_length(vector, v53, v54, v55, v56, v57, v58, v59);

  MEMORY[0x2821F9670](parallelFilter, sel_encodeToCommandBuffer_destinationBuffer_destinationOffset_numEntries_, buffer, v52, v44, v60, v61, v62);
}

- (void)encodeToCommandBuffer:(id)buffer destinationMatrix:(id)matrix
{
  objc_msgSend_batchSize(self, a2, buffer, matrix, v4, v5, v6, v7);
  if (objc_msgSend_batchSize(self, v11, v12, v13, v14, v15, v16, v17) != 1 && MTLReportFailureTypeEnabled())
  {
    v80 = objc_opt_class();
    v81 = NSStringFromClass(v80);
    v82 = objc_opt_class();
    v83 = v81;
    v84 = NSStringFromClass(v82);
    MTLReportFailure();
  }

  v25 = objc_msgSend_rowBytes(matrix, v18, v19, v20, v21, v22, v23, v24, v83, v84);
  v33 = objc_msgSend_dataType(matrix, v26, v27, v28, v29, v30, v31, v32);
  v34 = *(matrix + *MEMORY[0x277CD73A8]);
  v35 = v25 / (v33 >> 3);
  v43 = objc_msgSend_batchStart(self, v36, v37, v38, v39, v40, v41, v42);
  v51 = v34 + objc_msgSend_matrixBytes(matrix, v44, v45, v46, v47, v48, v49, v50) * v43;
  v59 = objc_msgSend_dataType(matrix, v52, v53, v54, v55, v56, v57, v58);
  parallelFilter = self->_parallelFilter;
  v61 = v51 / (v59 >> 3);
  v69 = objc_msgSend_data(matrix, v62, v63, v64, v65, v66, v67, v68);
  v77 = objc_msgSend_rows(matrix, v70, v71, v72, v73, v74, v75, v76) * v35;

  MEMORY[0x2821F9670](parallelFilter, sel_encodeToCommandBuffer_destinationBuffer_destinationOffset_numEntries_, buffer, v69, v61, v77, v78, v79);
}

- (MPSMatrixRandomMTGP32)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v15.receiver = self;
  v15.super_class = MPSMatrixRandomMTGP32;
  result = [MPSMatrixRandom initWithCoder:sel_initWithCoder_device_ device:?];
  if (result)
  {
    v7 = result;
    v8 = objc_alloc(MEMORY[0x277CD7288]);
    v14 = objc_msgSend_initWithCoder_device_(v8, v9, aDecoder, device, v10, v11, v12, v13);
    result = v7;
    v7->_parallelFilter = v14;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = MPSMatrixRandomMTGP32;
  [(MPSMatrixRandom *)&v11 encodeWithCoder:?];
  objc_msgSend_encodeWithCoder_(self->_parallelFilter, v5, coder, v6, v7, v8, v9, v10);
}

- (void)dealloc
{
  objc_msgSend_dealloc(self->_parallelFilter, a2, v2, v3, v4, v5, v6, v7);
  v9.receiver = self;
  v9.super_class = MPSMatrixRandomMTGP32;
  [(MPSKernel *)&v9 dealloc];
}

@end