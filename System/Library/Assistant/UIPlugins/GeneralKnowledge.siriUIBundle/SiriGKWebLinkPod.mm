@interface SiriGKWebLinkPod
- (SiriGKWebLinkPod)initWithPod:(id)pod safariBackURL:(id)l;
@end

@implementation SiriGKWebLinkPod

- (SiriGKWebLinkPod)initWithPod:(id)pod safariBackURL:(id)l
{
  podCopy = pod;
  lCopy = l;
  v23.receiver = self;
  v23.super_class = SiriGKWebLinkPod;
  v8 = [(SiriGKWebLinkPod *)&v23 init];
  if (v8)
  {
    links = [podCopy links];
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [links count]);
    viewArray = v8->_viewArray;
    v8->_viewArray = v10;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    links2 = [podCopy links];
    v13 = [links2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(links2);
          }

          v17 = [[SiriGKWebLinkView alloc] initWithLinkedAnswer:*(*(&v19 + 1) + 8 * v16) safariBackURL:lCopy];
          [(NSMutableArray *)v8->_viewArray addObject:v17];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [links2 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v14);
    }
  }

  return v8;
}

@end