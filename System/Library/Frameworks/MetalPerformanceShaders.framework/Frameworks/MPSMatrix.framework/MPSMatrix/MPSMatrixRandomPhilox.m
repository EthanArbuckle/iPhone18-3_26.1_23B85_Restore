@interface MPSMatrixRandomPhilox
- (MPSMatrixRandomPhilox)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3 destinationMatrix:(id)a4;
- (void)encodeToCommandBuffer:(id)a3 destinationVector:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSMatrixRandomPhilox

- (void)encodeToCommandBuffer:(id)a3 destinationVector:(id)a4
{
  objc_msgSend_batchSize(self, a2, a3, a4, v4, v5, v6, v7);
  if (objc_msgSend_batchSize(self, v11, v12, v13, v14, v15, v16, v17) != 1 && MTLReportFailureTypeEnabled())
  {
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v56 = objc_opt_class();
    v57 = v55;
    v58 = NSStringFromClass(v56);
    MTLReportFailure();
  }

  parallelFilter = self->_parallelFilter;
  v26 = objc_msgSend_data(a4, v18, v19, v20, v21, v22, v23, v24, v57, v58);
  v27 = *(a4 + *MEMORY[0x277CD74A8]);
  v35 = objc_msgSend_batchStart(self, v28, v29, v30, v31, v32, v33, v34);
  v43 = v27 + objc_msgSend_vectorBytes(a4, v36, v37, v38, v39, v40, v41, v42) * v35;
  v51 = objc_msgSend_length(a4, v44, v45, v46, v47, v48, v49, v50);

  MEMORY[0x2821F9670](parallelFilter, sel_encodeToCommandBuffer_destinationBuffer_destinationOffset_numEntries_, a3, v26, v43, v51, v52, v53);
}

- (void)encodeToCommandBuffer:(id)a3 destinationMatrix:(id)a4
{
  objc_msgSend_batchSize(self, a2, a3, a4, v4, v5, v6, v7);
  if (objc_msgSend_batchSize(self, v11, v12, v13, v14, v15, v16, v17) != 1 && MTLReportFailureTypeEnabled())
  {
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    v73 = objc_opt_class();
    v74 = v72;
    v75 = NSStringFromClass(v73);
    MTLReportFailure();
  }

  v25 = objc_msgSend_rowBytes(a4, v18, v19, v20, v21, v22, v23, v24, v74, v75);
  v33 = objc_msgSend_dataType(a4, v26, v27, v28, v29, v30, v31, v32);
  parallelFilter = self->_parallelFilter;
  v35 = v25 / (v33 >> 3);
  v43 = objc_msgSend_data(a4, v36, v37, v38, v39, v40, v41, v42);
  v44 = *(a4 + *MEMORY[0x277CD73A8]);
  v52 = objc_msgSend_batchStart(self, v45, v46, v47, v48, v49, v50, v51);
  v60 = v44 + objc_msgSend_matrixBytes(a4, v53, v54, v55, v56, v57, v58, v59) * v52;
  v68 = objc_msgSend_rows(a4, v61, v62, v63, v64, v65, v66, v67) * v35;

  MEMORY[0x2821F9670](parallelFilter, sel_encodeToCommandBuffer_destinationBuffer_destinationOffset_numEntries_, a3, v43, v60, v68, v69, v70);
}

- (MPSMatrixRandomPhilox)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v15.receiver = self;
  v15.super_class = MPSMatrixRandomPhilox;
  result = [MPSMatrixRandom initWithCoder:sel_initWithCoder_device_ device:?];
  if (result)
  {
    v7 = result;
    v8 = objc_alloc(MEMORY[0x277CD7298]);
    v14 = objc_msgSend_initWithCoder_device_(v8, v9, aDecoder, device, v10, v11, v12, v13);
    result = v7;
    v7->_parallelFilter = v14;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = MPSMatrixRandomPhilox;
  [(MPSMatrixRandom *)&v11 encodeWithCoder:?];
  objc_msgSend_encodeWithCoder_(self->_parallelFilter, v5, a3, v6, v7, v8, v9, v10);
}

- (void)dealloc
{
  objc_msgSend_dealloc(self->_parallelFilter, a2, v2, v3, v4, v5, v6, v7);
  v9.receiver = self;
  v9.super_class = MPSMatrixRandomPhilox;
  [(MPSKernel *)&v9 dealloc];
}

@end