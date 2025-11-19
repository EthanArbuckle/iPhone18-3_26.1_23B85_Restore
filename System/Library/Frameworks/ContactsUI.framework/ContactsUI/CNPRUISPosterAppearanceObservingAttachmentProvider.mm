@interface CNPRUISPosterAppearanceObservingAttachmentProvider
- (CNPRUISPosterAppearanceObservingAttachmentProvider)initWithConfiguration:(id)a3;
- (CNPRUISPosterAttachment)obscurableContentAttachment;
- (CNPRUISPosterAttachment)overlayContentAttachment;
@end

@implementation CNPRUISPosterAppearanceObservingAttachmentProvider

- (CNPRUISPosterAttachment)overlayContentAttachment
{
  v3 = [CNPRUISPosterAttachment alloc];
  v4 = [(PRUISPosterAppearanceObservingAttachmentProvider *)self->_wrappedProvider overlayContentAttachment];
  v5 = [(CNPRUISPosterAttachment *)v3 initWithAttachment:v4];

  return v5;
}

- (CNPRUISPosterAttachment)obscurableContentAttachment
{
  v3 = [CNPRUISPosterAttachment alloc];
  v4 = [(PRUISPosterAppearanceObservingAttachmentProvider *)self->_wrappedProvider obscurableContentAttachment];
  v5 = [(CNPRUISPosterAttachment *)v3 initWithAttachment:v4];

  return v5;
}

- (CNPRUISPosterAppearanceObservingAttachmentProvider)initWithConfiguration:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CNPRUISPosterAppearanceObservingAttachmentProvider;
  v5 = [(CNPRUISPosterAppearanceObservingAttachmentProvider *)&v13 init];
  if (v5)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v6 = getPRUISPosterAppearanceObservingAttachmentProviderClass_softClass;
    v18 = getPRUISPosterAppearanceObservingAttachmentProviderClass_softClass;
    if (!getPRUISPosterAppearanceObservingAttachmentProviderClass_softClass)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __getPRUISPosterAppearanceObservingAttachmentProviderClass_block_invoke;
      v14[3] = &unk_1E74E7518;
      v14[4] = &v15;
      __getPRUISPosterAppearanceObservingAttachmentProviderClass_block_invoke(v14);
      v6 = v16[3];
    }

    v7 = v6;
    _Block_object_dispose(&v15, 8);
    v8 = [v6 alloc];
    v9 = [v4 wrappedPosterConfiguration];
    v10 = [v8 initWithPRSConfiguration:v9];
    wrappedProvider = v5->_wrappedProvider;
    v5->_wrappedProvider = v10;
  }

  return v5;
}

@end