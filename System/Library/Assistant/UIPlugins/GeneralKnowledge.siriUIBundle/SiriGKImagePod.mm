@interface SiriGKImagePod
- (SiriGKImagePod)initWithPod:(id)pod safariBackURL:(id)l usingPersistentStore:(id)store;
@end

@implementation SiriGKImagePod

- (SiriGKImagePod)initWithPod:(id)pod safariBackURL:(id)l usingPersistentStore:(id)store
{
  podCopy = pod;
  lCopy = l;
  storeCopy = store;
  v27.receiver = self;
  v27.super_class = SiriGKImagePod;
  v11 = [(SiriGKImagePod *)&v27 init];
  if (v11)
  {
    images = [podCopy images];
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [images count]);
    [(SiriGKMediaPod *)v11 setViewArray:v13];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = podCopy;
    images2 = [podCopy images];
    v15 = [images2 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(images2);
          }

          v19 = [[SiriGKImageLinkView alloc] initWithImageLinkedAnswer:*(*(&v23 + 1) + 8 * v18) safariBackURL:lCopy isVideoResult:0 usingPersistentStore:storeCopy];
          viewArray = [(SiriGKMediaPod *)v11 viewArray];
          [viewArray addObject:v19];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [images2 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v16);
    }

    podCopy = v22;
  }

  return v11;
}

@end