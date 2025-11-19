@interface DownloadDRM
- (DownloadDRM)init;
@end

@implementation DownloadDRM

- (DownloadDRM)init
{
  v2 = self;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = DownloadDRM;
    v2 = [(DownloadDRM *)&v15 init];
    if (v2)
    {
      v3 = objc_alloc_init(NSMutableArray);
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = [0 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v12;
        do
        {
          v7 = 0;
          do
          {
            if (*v12 != v6)
            {
              objc_enumerationMutation(0);
            }

            v8 = sub_10040771C([DownloadSinf alloc], *(*(&v11 + 1) + 8 * v7));
            if (v8)
            {
              [(NSArray *)v3 addObject:v8];
            }

            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [0 countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v5);
      }

      sinfs = v2->_sinfs;
      v2->_sinfs = v3;
    }
  }

  return v2;
}

@end