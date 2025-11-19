@interface SiriGKWebLinkPod
- (SiriGKWebLinkPod)initWithPod:(id)a3 safariBackURL:(id)a4;
@end

@implementation SiriGKWebLinkPod

- (SiriGKWebLinkPod)initWithPod:(id)a3 safariBackURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = SiriGKWebLinkPod;
  v8 = [(SiriGKWebLinkPod *)&v23 init];
  if (v8)
  {
    v9 = [v6 links];
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    viewArray = v8->_viewArray;
    v8->_viewArray = v10;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [v6 links];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = [[SiriGKWebLinkView alloc] initWithLinkedAnswer:*(*(&v19 + 1) + 8 * v16) safariBackURL:v7];
          [(NSMutableArray *)v8->_viewArray addObject:v17];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v14);
    }
  }

  return v8;
}

@end