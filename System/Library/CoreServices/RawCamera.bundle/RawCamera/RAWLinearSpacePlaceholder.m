@interface RAWLinearSpacePlaceholder
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWLinearSpacePlaceholder

- (id)outputImage
{
  v3 = sub_23378E104();
  v4 = v3;
  if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWLinearSpacePlaceholder", &unk_233945DBE, buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23387BFA8;
  v8[3] = &unk_2789EE800;
  v8[4] = self;
  v5 = MEMORY[0x2383AC810](v8);
  v6 = self->inputImage;
  v5[2](v5);

  return v6;
}

+ (id)customAttributes
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"inputColorSpace";
  v9[0] = *MEMORY[0x277CBF798];
  v2 = sub_2338F2BB4();
  v9[1] = *MEMORY[0x277CBF7A0];
  v10[0] = v2;
  v10[1] = @"inputColorSpace";
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v10, v9, 2);
  v11[1] = @"kCIRAWFilterDoesClip";
  v5 = *MEMORY[0x277CBED10];
  v12[0] = v4;
  v12[1] = v5;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v12, v11, 2);

  return v7;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes, v3, v4, v5);
}

@end