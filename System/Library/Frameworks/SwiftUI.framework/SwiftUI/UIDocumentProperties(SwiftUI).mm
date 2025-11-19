@interface UIDocumentProperties(SwiftUI)
- (uint64_t)initWithTitle:()SwiftUI iconProvider:imageProvider:;
@end

@implementation UIDocumentProperties(SwiftUI)

- (uint64_t)initWithTitle:()SwiftUI iconProvider:imageProvider:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v11 = getLPLinkMetadataClass_softClass;
  v20 = getLPLinkMetadataClass_softClass;
  if (!getLPLinkMetadataClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getLPLinkMetadataClass_block_invoke;
    v16[3] = &unk_1E7237578;
    v16[4] = &v17;
    __getLPLinkMetadataClass_block_invoke(v16);
    v11 = v18[3];
  }

  v12 = v11;
  _Block_object_dispose(&v17, 8);
  v13 = objc_alloc_init(v11);
  [v13 setTitle:v8];
  [v13 setIconProvider:v9];
  [v13 setImageProvider:v10];
  v14 = [a1 initWithMetadata:v13];

  return v14;
}

@end