@interface RAWBayerInterleavedFilter
- (id)outputImage;
@end

@implementation RAWBayerInterleavedFilter

- (id)outputImage
{
  v29[4] = *MEMORY[0x277D85DE8];
  if (self->inputExtent && self->inputImage00 && self->inputImage01 && self->inputImage10 && self->inputImage11)
  {
    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWBayerInterleavedFilter", &unk_233945DBE, buf, 2u);
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_233876AB0;
    v27[3] = &unk_2789EE800;
    v27[4] = self;
    v5 = MEMORY[0x2383AC810](v27);
    v13 = objc_msgSend_kernelWithName_(DMKernels, v6, @"_interleaveRGGB", v7, v8);
    if (!v13 || (objc_msgSend_CGRectValue(self->inputExtent, v9, v10, v11, v12), x = v31.origin.x, y = v31.origin.y, width = v31.size.width, height = v31.size.height, CGRectIsNull(v31)) || (v32.origin.x = x, v32.origin.y = y, v32.size.width = width, v32.size.height = height, CGRectIsInfinite(v32)))
    {
      v20 = 0;
    }

    else
    {
      inputImage01 = self->inputImage01;
      v29[0] = self->inputImage00;
      v29[1] = inputImage01;
      inputImage11 = self->inputImage11;
      v29[2] = self->inputImage10;
      v29[3] = inputImage11;
      v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v29, 4, v19);
      v20 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v13, v24, &unk_28492C330, v23, v25, x, y, width, height);
    }

    v5[2](v5);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end