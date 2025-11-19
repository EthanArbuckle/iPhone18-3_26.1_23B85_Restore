@interface SiriGKImagePod
- (SiriGKImagePod)initWithPod:(id)a3 safariBackURL:(id)a4 usingPersistentStore:(id)a5;
@end

@implementation SiriGKImagePod

- (SiriGKImagePod)initWithPod:(id)a3 safariBackURL:(id)a4 usingPersistentStore:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = SiriGKImagePod;
  v11 = [(SiriGKImagePod *)&v27 init];
  if (v11)
  {
    v12 = [v8 images];
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    [(SiriGKMediaPod *)v11 setViewArray:v13];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v8;
    v14 = [v8 images];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        v18 = 0;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[SiriGKImageLinkView alloc] initWithImageLinkedAnswer:*(*(&v23 + 1) + 8 * v18) safariBackURL:v9 isVideoResult:0 usingPersistentStore:v10];
          v20 = [(SiriGKMediaPod *)v11 viewArray];
          [v20 addObject:v19];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v16);
    }

    v8 = v22;
  }

  return v11;
}

@end