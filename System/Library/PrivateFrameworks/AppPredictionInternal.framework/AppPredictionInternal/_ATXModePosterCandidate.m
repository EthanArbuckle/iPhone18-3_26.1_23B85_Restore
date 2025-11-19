@interface _ATXModePosterCandidate
- (_ATXModePosterCandidate)initWithDescriptor:(id)a3 fontName:(id)a4 isPreferredForGallery:(BOOL)a5;
@end

@implementation _ATXModePosterCandidate

- (_ATXModePosterCandidate)initWithDescriptor:(id)a3 fontName:(id)a4 isPreferredForGallery:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = _ATXModePosterCandidate;
  v11 = [(_ATXModePosterCandidate *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_descriptor, a3);
    v13 = [v10 copy];
    fontName = v12->_fontName;
    v12->_fontName = v13;

    v12->_isPreferredForGallery = a5;
    v15 = v12;
  }

  return v12;
}

@end