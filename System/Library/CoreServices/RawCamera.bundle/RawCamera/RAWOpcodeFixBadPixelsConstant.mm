@interface RAWOpcodeFixBadPixelsConstant
- (RAWOpcodeFixBadPixelsConstant)initWithArguments:(id)arguments;
- (id)outputImage;
@end

@implementation RAWOpcodeFixBadPixelsConstant

- (RAWOpcodeFixBadPixelsConstant)initWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  v11.receiver = self;
  v11.super_class = RAWOpcodeFixBadPixelsConstant;
  v5 = [(RAWOpcodeFixBadPixelsConstant *)&v11 init];
  v9 = v5;
  if (v5)
  {
    objc_msgSend_setArguments_(v5, v6, argumentsCopy, v7, v8);
  }

  return v9;
}

- (id)outputImage
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_kernelWithString_(MEMORY[0x277CBF738], a2, @"kernel vec4 rc_fix_bad_pixels_constant (__sample c) { return c }", v2, v3);;
  v10 = objc_msgSend_inputImage(self, v6, v7, v8, v9);
  objc_msgSend_extent(v10, v11, v12, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v31[0] = self->inputImage;
  v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, v31, 1, v24);
  v29 = objc_msgSend_applyWithExtent_arguments_(v5, v26, v25, v27, v28, v16, v18, v20, v22);

  return v29;
}

@end