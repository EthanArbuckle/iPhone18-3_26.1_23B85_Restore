@interface ANSTTensorData
+ (ANSTTensorData)new;
- (ANSTTensorData)init;
- (ANSTTensorData)initWithDescriptor:(id)a3 dataPointer:(void *)a4 length:(unint64_t)a5 deallocator:(id)a6 error:(id *)a7;
- (void)dealloc;
@end

@implementation ANSTTensorData

- (ANSTTensorData)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (ANSTTensorData)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTTensorData)initWithDescriptor:(id)a3 dataPointer:(void *)a4 length:(unint64_t)a5 deallocator:(id)a6 error:(id *)a7
{
  v35[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v33.receiver = self;
  v33.super_class = ANSTTensorData;
  v16 = [(ANSTTensorData *)&v33 init];
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = objc_msgSend_copy(v12, v14, v15);
  tensorDescriptor = v16->_tensorDescriptor;
  v16->_tensorDescriptor = v17;

  v16->_dataPointer = a4;
  v16->_length = a5;
  if (v13)
  {
    v21 = objc_msgSend_copy(v13, v19, v20);
    v22 = MEMORY[0x2318EADA0]();
    deallocator = v16->_deallocator;
    v16->_deallocator = v22;
  }

  else
  {
    v21 = v16->_deallocator;
    v16->_deallocator = 0;
  }

  length = v16->_length;
  if (length < objc_msgSend__minimumContiguousLength(v16->_tensorDescriptor, v25, v26))
  {
    if (a7)
    {
      v28 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA068];
      v35[0] = @"Tensor data length does not satisfy its descriptor's minimum contiguous length.";
      v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v35, &v34, 1);
      *a7 = objc_msgSend_errorWithDomain_code_userInfo_(v28, v30, @"ANSTErrorDomain", 12, v29);

      a7 = 0;
    }
  }

  else
  {
LABEL_8:
    a7 = v16;
  }

  v31 = *MEMORY[0x277D85DE8];
  return a7;
}

- (void)dealloc
{
  if (self->_dataPointer)
  {
    deallocator = self->_deallocator;
    if (deallocator)
    {
      length = self->_length;
      deallocator[2]();
    }
  }

  v5.receiver = self;
  v5.super_class = ANSTTensorData;
  [(ANSTTensorData *)&v5 dealloc];
}

@end