@interface AVCaptureDeferredPhotoProcessingRequest
- (AVCaptureDeferredPhotoProcessingRequest)initWithPhotoProxy:(id)a3 delegate:(id)a4 delegateQueue:(id)a5 qosClass:(unsigned int)a6;
- (id)description;
- (void)addDelegate:(id)a3;
- (void)addProxy:(id)a3;
- (void)dealloc;
@end

@implementation AVCaptureDeferredPhotoProcessingRequest

- (AVCaptureDeferredPhotoProcessingRequest)initWithPhotoProxy:(id)a3 delegate:(id)a4 delegateQueue:(id)a5 qosClass:(unsigned int)a6
{
  v13.receiver = self;
  v13.super_class = AVCaptureDeferredPhotoProcessingRequest;
  v10 = [(AVCaptureDeferredPhotoProcessingRequest *)&v13 init];
  if (v10)
  {
    v10->_delegatesStorage = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10->_delegateQueue = a5;
    [(AVCaptureDeferredPhotoProcessingRequest *)v10 addDelegate:a4];
    v10->_photoProxies = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a3, 0}];
    v10->_expectedPhotoCount = 1;
    v10->_originalDeferredPhotoIdentifier = [objc_msgSend(a3 "deferredPhotoIdentifier")];
    v10->_qosClass = a6;
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"AVCaptureDeferredPhotoProcessor-%@", objc_msgSend(a3, "deferredPhotoIdentifier")];
    [v11 cStringUsingEncoding:4];
    v10->_transaction = FigOSTransactionCreate();
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureDeferredPhotoProcessingRequest;
  [(AVCaptureDeferredPhotoProcessingRequest *)&v3 dealloc];
}

- (void)addDelegate:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E69881A0]);
  [v5 setDelegate:a3 queue:self->_delegateQueue];
  [(NSMutableArray *)self->_delegatesStorage addObject:v5];
}

- (void)addProxy:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  photoProxies = self->_photoProxies;
  v6 = [(NSMutableArray *)photoProxies countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(photoProxies);
      }

      if ([objc_msgSend(*(*(&v11 + 1) + 8 * v9) "deferredPhotoIdentifier")])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)photoProxies countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    [(NSMutableArray *)self->_photoProxies addObject:a3];
    ++self->_expectedPhotoCount;
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"proxies: "];
  if ([(NSMutableArray *)self->_photoProxies count])
  {
    v4 = 0;
    do
    {
      [v3 appendFormat:@"%@", objc_msgSend(-[NSMutableArray objectAtIndexedSubscript:](self->_photoProxies, "objectAtIndexedSubscript:", v4), "deferredPhotoIdentifier")];
      if ([(NSMutableArray *)self->_photoProxies count]- 1 > v4)
      {
        [v3 appendString:{@", "}];
      }

      ++v4;
    }

    while ([(NSMutableArray *)self->_photoProxies count]> v4);
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  return [v5 stringWithFormat:@"<%@: %p %@ %@>", v7, self, v3, AVCaptureQOSClassToString(self->_qosClass)];
}

@end