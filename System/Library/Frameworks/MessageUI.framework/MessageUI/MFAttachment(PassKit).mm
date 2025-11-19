@interface MFAttachment(PassKit)
- (id)passWithError:()PassKit;
@end

@implementation MFAttachment(PassKit)

- (id)passWithError:()PassKit
{
  v5 = [a1 metadataValueForKey:@"_MFAttachmentPassKey"];
  if (!v5)
  {
    v6 = [a1 fetchDataSynchronously:0];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v7 = getPKPassClass_softClass;
    v14 = getPKPassClass_softClass;
    if (!getPKPassClass_softClass)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getPKPassClass_block_invoke;
      v10[3] = &unk_1E806CA38;
      v10[4] = &v11;
      __getPKPassClass_block_invoke(v10);
      v7 = v12[3];
    }

    v8 = v7;
    _Block_object_dispose(&v11, 8);
    v5 = [[v7 alloc] initWithData:v6 error:a3];
  }

  return v5;
}

@end