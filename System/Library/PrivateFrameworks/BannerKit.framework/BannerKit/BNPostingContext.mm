@interface BNPostingContext
- (BNPostingContext)initWithPresentable:(id)presentable presentationOptions:(unint64_t)options userInfo:(id)info;
- (NSUUID)pendingIdentifier;
@end

@implementation BNPostingContext

- (BNPostingContext)initWithPresentable:(id)presentable presentationOptions:(unint64_t)options userInfo:(id)info
{
  presentableCopy = presentable;
  infoCopy = info;
  if (!presentableCopy)
  {
    [BNPostingContext initWithPresentable:a2 presentationOptions:self userInfo:?];
  }

  v15.receiver = self;
  v15.super_class = BNPostingContext;
  v12 = [(BNPostingContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_presentable, presentable);
    v13->_presentationOptions = options;
    objc_storeStrong(&v13->_userInfo, info);
  }

  return v13;
}

- (NSUUID)pendingIdentifier
{
  v2 = [(NSDictionary *)self->_userInfo objectForKey:@"BNPresentableQueueUserInfoUniquePendingIdentifierKey"];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)initWithPresentable:(uint64_t)a1 presentationOptions:(uint64_t)a2 userInfo:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNPresentableQueue.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"presentable"}];
}

@end