@interface MusicKit_SoftLinking_MPStoreLibraryPersonalizationContentDescriptor
- (MusicKit_SoftLinking_MPStoreLibraryPersonalizationContentDescriptor)initWithModel:(id)model personalizationStyle:(int64_t)style;
@end

@implementation MusicKit_SoftLinking_MPStoreLibraryPersonalizationContentDescriptor

- (MusicKit_SoftLinking_MPStoreLibraryPersonalizationContentDescriptor)initWithModel:(id)model personalizationStyle:(int64_t)style
{
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = MusicKit_SoftLinking_MPStoreLibraryPersonalizationContentDescriptor;
  v7 = [(MusicKit_SoftLinking_MPStoreLibraryPersonalizationContentDescriptor *)&v15 init];
  if (v7)
  {
    if ((style - 1) >= 4)
    {
      styleCopy = 0;
    }

    else
    {
      styleCopy = style;
    }

    _underlyingObject = [modelCopy _underlyingObject];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v10 = getMPStoreLibraryPersonalizationContentDescriptorClass_softClass;
    v20 = getMPStoreLibraryPersonalizationContentDescriptorClass_softClass;
    if (!getMPStoreLibraryPersonalizationContentDescriptorClass_softClass)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __getMPStoreLibraryPersonalizationContentDescriptorClass_block_invoke;
      v16[3] = &unk_278229610;
      v16[4] = &v17;
      __getMPStoreLibraryPersonalizationContentDescriptorClass_block_invoke(v16);
      v10 = v18[3];
    }

    v11 = v10;
    _Block_object_dispose(&v17, 8);
    v12 = [[v10 alloc] initWithModel:_underlyingObject personalizationStyle:styleCopy];
    underlyingContentDescriptor = v7->_underlyingContentDescriptor;
    v7->_underlyingContentDescriptor = v12;
  }

  return v7;
}

@end