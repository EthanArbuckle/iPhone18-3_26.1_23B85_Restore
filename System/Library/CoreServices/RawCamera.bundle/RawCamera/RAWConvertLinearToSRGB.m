@interface RAWConvertLinearToSRGB
- (id)outputImage;
@end

@implementation RAWConvertLinearToSRGB

- (id)outputImage
{
  if (self->inputImage)
  {
    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWConvertLinearToSRGB", &unk_233945DBE, buf, 2u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23387F2E8;
    v14[3] = &unk_2789EE800;
    v14[4] = self;
    v5 = MEMORY[0x2383AC810](v14);
    v6 = self->inputImage;
    v10 = objc_msgSend_kernelWithName_(RAWKernels, v7, @"raw_linear_to_srgb", v8, v9);
    v12 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_(self, v11, v10, v6, 0, self->inputColorSpace, 1);

    v5[2](v5);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end