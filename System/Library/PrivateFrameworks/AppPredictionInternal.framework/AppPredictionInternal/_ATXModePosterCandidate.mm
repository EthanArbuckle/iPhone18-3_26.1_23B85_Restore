@interface _ATXModePosterCandidate
- (_ATXModePosterCandidate)initWithDescriptor:(id)descriptor fontName:(id)name isPreferredForGallery:(BOOL)gallery;
@end

@implementation _ATXModePosterCandidate

- (_ATXModePosterCandidate)initWithDescriptor:(id)descriptor fontName:(id)name isPreferredForGallery:(BOOL)gallery
{
  descriptorCopy = descriptor;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = _ATXModePosterCandidate;
  v11 = [(_ATXModePosterCandidate *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_descriptor, descriptor);
    v13 = [nameCopy copy];
    fontName = v12->_fontName;
    v12->_fontName = v13;

    v12->_isPreferredForGallery = gallery;
    v15 = v12;
  }

  return v12;
}

@end