@interface MPSRNNMatrixTrainingState
- (id)initForSingleGateWithCommandBuffer:(id)a3 matrixDescriptor:(id)a4 isTemporary:(BOOL)a5;
- (void)dealloc;
- (void)setReadCount:(unint64_t)a3;
@end

@implementation MPSRNNMatrixTrainingState

- (id)initForSingleGateWithCommandBuffer:(id)a3 matrixDescriptor:(id)a4 isTemporary:(BOOL)a5
{
  v5 = a5;
  v47.receiver = self;
  v47.super_class = MPSRNNMatrixTrainingState;
  v15 = [(MPSState *)&v47 initWithResource:0];
  v15->_isTemporary = v5;
  if (v5)
  {
    v16 = objc_msgSend_temporaryMatrixWithCommandBuffer_matrixDescriptor_(MEMORY[0x277CD72B0], v8, a3, a4, v11, v12, v13, v14);
  }

  else
  {
    v17 = objc_msgSend_rows(a4, v8, v9, v10, v11, v12, v13, v14);
    v25 = objc_msgSend_rowBytes(a4, v18, v19, v20, v21, v22, v23, v24) * v17;
    v33 = objc_msgSend_device(a3, v26, v27, v28, v29, v30, v31, v32);
    v39 = objc_msgSend_newBufferWithLength_options_(v33, v34, v25, 32, v35, v36, v37, v38);
    v40 = objc_alloc(MEMORY[0x277CD7250]);
    v16 = objc_msgSend_initWithBuffer_descriptor_(v40, v41, v39, a4, v42, v43, v44, v45);
  }

  v15->singleGateZ = v16;
  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSRNNMatrixTrainingState;
  [(MPSState *)&v3 dealloc];
}

- (void)setReadCount:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = MPSRNNMatrixTrainingState;
  [(MPSState *)&v11 setReadCount:?];
  if (*(&self->super.super.isa + *MEMORY[0x277CD7470]))
  {
    objc_msgSend_setReadCount_(self->singleGateZ, v5, a3, v6, v7, v8, v9, v10);
  }
}

@end