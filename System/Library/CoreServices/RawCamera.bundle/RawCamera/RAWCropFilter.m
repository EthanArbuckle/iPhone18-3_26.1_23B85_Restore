@interface RAWCropFilter
- (id)outputImage;
@end

@implementation RAWCropFilter

- (id)outputImage
{
  inputImage = self->inputImage;
  if (inputImage)
  {
    if (self->inputCropRect)
    {
      v4 = sub_23378E104();
      v5 = v4;
      if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v4))
      {
        LOWORD(v28.a) = 0;
        _os_signpost_emit_with_name_impl(&dword_23371F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWCropFilter", &unk_233945DBE, &v28, 2u);
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_2338F37DC;
      v29[3] = &unk_2789EE800;
      v29[4] = self;
      v6 = MEMORY[0x2383AC810](v29);
      objc_msgSend_CGRectValue(self->inputCropRect, v7, v8, v9, v10);
      v12 = v11;
      v14 = v13;
      v15 = self->inputImage;
      CGAffineTransformMakeTranslation(&v28, -v16, -v17);
      v21 = objc_msgSend_imageByApplyingTransform_(v15, v18, &v28, v19, v20);
      v26 = objc_msgSend_imageByCroppingToRect_(v21, v22, v23, v24, v25, 0.0, 0.0, v12, v14);

      v6[2](v6);
    }

    else
    {
      v26 = inputImage;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end