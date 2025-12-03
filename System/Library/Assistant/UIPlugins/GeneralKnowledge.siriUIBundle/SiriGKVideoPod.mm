@interface SiriGKVideoPod
- (SiriGKVideoPod)initWithPod:(id)pod safariBackURL:(id)l usingPersistentStore:(id)store;
@end

@implementation SiriGKVideoPod

- (SiriGKVideoPod)initWithPod:(id)pod safariBackURL:(id)l usingPersistentStore:(id)store
{
  podCopy = pod;
  lCopy = l;
  storeCopy = store;
  v27.receiver = self;
  v27.super_class = SiriGKVideoPod;
  v11 = [(SiriGKVideoPod *)&v27 init];
  if (v11)
  {
    videos = [podCopy videos];
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [videos count]);
    [(SiriGKMediaPod *)v11 setViewArray:v13];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = podCopy;
    videos2 = [podCopy videos];
    v15 = [videos2 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(videos2);
          }

          v19 = [[SiriGKImageLinkView alloc] initWithImageLinkedAnswer:*(*(&v23 + 1) + 8 * v18) safariBackURL:lCopy isVideoResult:1 usingPersistentStore:storeCopy];
          viewArray = [(SiriGKMediaPod *)v11 viewArray];
          [viewArray addObject:v19];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [videos2 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v16);
    }

    podCopy = v22;
  }

  return v11;
}

@end