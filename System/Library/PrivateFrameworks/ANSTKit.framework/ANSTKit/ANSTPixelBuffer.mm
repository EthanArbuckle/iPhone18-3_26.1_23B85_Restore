@interface ANSTPixelBuffer
+ (ANSTPixelBuffer)new;
- (ANSTPixelBuffer)init;
- (ANSTPixelBuffer)initWithDescriptor:(id)descriptor pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation error:(id *)error;
- (void)dealloc;
@end

@implementation ANSTPixelBuffer

- (ANSTPixelBuffer)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (ANSTPixelBuffer)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTPixelBuffer)initWithDescriptor:(id)descriptor pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation error:(id *)error
{
  v31[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v29.receiver = self;
  v29.super_class = ANSTPixelBuffer;
  v13 = [(ANSTPixelBuffer *)&v29 init];
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = objc_msgSend_copy(descriptorCopy, v11, v12);
  pixelBufferDescriptor = v13->_pixelBufferDescriptor;
  v13->_pixelBufferDescriptor = v14;

  v13->_pixelBuffer = CVPixelBufferRetain(buffer);
  v13->_orientation = orientation;
  v18 = objc_msgSend_width(v13->_pixelBufferDescriptor, v16, v17);
  if (v18 != CVPixelBufferGetWidth(v13->_pixelBuffer))
  {
    goto LABEL_6;
  }

  v21 = objc_msgSend_height(v13->_pixelBufferDescriptor, v19, v20);
  if (v21 == CVPixelBufferGetHeight(v13->_pixelBuffer) && (v23 = objc_msgSend_pixelFormatType(v13->_pixelBufferDescriptor, v19, v22), v23 == CVPixelBufferGetPixelFormatType(v13->_pixelBuffer)))
  {
LABEL_5:
    error = v13;
  }

  else
  {
LABEL_6:
    if (error)
    {
      v24 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA068];
      v31[0] = @"Pixel buffer's width, height, and pixel format type must match its designated descriptor.";
      v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v31, &v30, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v24, v26, @"ANSTErrorDomain", 13, v25);

      error = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return error;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = ANSTPixelBuffer;
  [(ANSTPixelBuffer *)&v3 dealloc];
}

@end