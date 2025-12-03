@interface ANSTTensorData
+ (ANSTTensorData)new;
- (ANSTTensorData)init;
- (ANSTTensorData)initWithDescriptor:(id)descriptor dataPointer:(void *)pointer length:(unint64_t)length deallocator:(id)deallocator error:(id *)error;
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
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTTensorData)initWithDescriptor:(id)descriptor dataPointer:(void *)pointer length:(unint64_t)length deallocator:(id)deallocator error:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  deallocatorCopy = deallocator;
  v33.receiver = self;
  v33.super_class = ANSTTensorData;
  v16 = [(ANSTTensorData *)&v33 init];
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = objc_msgSend_copy(descriptorCopy, v14, v15);
  tensorDescriptor = v16->_tensorDescriptor;
  v16->_tensorDescriptor = v17;

  v16->_dataPointer = pointer;
  v16->_length = length;
  if (deallocatorCopy)
  {
    v21 = objc_msgSend_copy(deallocatorCopy, v19, v20);
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
    if (error)
    {
      v28 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA068];
      v35[0] = @"Tensor data length does not satisfy its descriptor's minimum contiguous length.";
      v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v35, &v34, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v28, v30, @"ANSTErrorDomain", 12, v29);

      error = 0;
    }
  }

  else
  {
LABEL_8:
    error = v16;
  }

  v31 = *MEMORY[0x277D85DE8];
  return error;
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