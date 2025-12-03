@interface SHReferenceMatch
- (SHReferenceMatch)initWithSignature:(id)signature mediaItems:(id)items;
@end

@implementation SHReferenceMatch

- (SHReferenceMatch)initWithSignature:(id)signature mediaItems:(id)items
{
  signatureCopy = signature;
  itemsCopy = items;
  v12.receiver = self;
  v12.super_class = SHReferenceMatch;
  v9 = [(SHReferenceMatch *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signature, signature);
    objc_storeStrong(&v10->_mediaItems, items);
  }

  return v10;
}

@end