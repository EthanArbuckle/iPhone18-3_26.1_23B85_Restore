@interface AVAssetResourceLoaderRemoteHandlerContext
- (AVAssetResourceLoaderRemoteHandlerContext)initWithCoder:(id)coder;
- (AVAssetResourceLoaderRemoteHandlerContext)initWithEndpoint:(id)endpoint customURLHandlerObjectID:(unint64_t)d authHandlerObjectID:(unint64_t)iD contentKeySessionHandlerObjectID:(unint64_t)objectID;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAssetResourceLoaderRemoteHandlerContext

- (AVAssetResourceLoaderRemoteHandlerContext)initWithEndpoint:(id)endpoint customURLHandlerObjectID:(unint64_t)d authHandlerObjectID:(unint64_t)iD contentKeySessionHandlerObjectID:(unint64_t)objectID
{
  v11.receiver = self;
  v11.super_class = AVAssetResourceLoaderRemoteHandlerContext;
  v9 = [(AVAssetResourceLoaderRemoteHandlerContext *)&v11 init];
  if (v9)
  {
    v9->_endpoint = FigXPCRetain();
    v9->_customURLHandlerObjectID = d;
    v9->_authHandlerObjectID = iD;
    v9->_contentKeySessionHandlerObjectID = objectID;
  }

  return v9;
}

- (AVAssetResourceLoaderRemoteHandlerContext)initWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = objc_opt_class();
    v17 = @"can be decoded only by a NSXPCCoder";
    goto LABEL_8;
  }

  v19.receiver = self;
  v19.super_class = AVAssetResourceLoaderRemoteHandlerContext;
  v6 = [(AVAssetResourceLoaderRemoteHandlerContext *)&v19 init];
  if (v6)
  {
    v7 = [coder decodeXPCObjectForKey:@"endpoint"];
    if (v7)
    {
      -[AVAssetResourceLoaderRemoteHandlerContext initWithEndpoint:customURLHandlerObjectID:authHandlerObjectID:contentKeySessionHandlerObjectID:](v6, "initWithEndpoint:customURLHandlerObjectID:authHandlerObjectID:contentKeySessionHandlerObjectID:", v7, [coder decodeInt64ForKey:@"customURLHandlerObjectID"], objc_msgSend(coder, "decodeInt64ForKey:", @"authHandlerObjectID"), objc_msgSend(coder, "decodeInt64ForKey:", @"contentKeySessionHandlerObjectID"));
      return v6;
    }

    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = objc_opt_class();
    v17 = @"NSXPCCoder returned NULL endpoint";
LABEL_8:
    v18 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithClassAndSelector(v11 userInfo:{a2, v17, v12, v13, v14, v15, v16, v19.receiver), 0}];
    objc_exception_throw(v18);
  }

  return v6;
}

- (void)dealloc
{
  FigXPCRelease();
  v3.receiver = self;
  v3.super_class = AVAssetResourceLoaderRemoteHandlerContext;
  [(AVAssetResourceLoaderRemoteHandlerContext *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = objc_opt_class();
    v15 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithClassAndSelector(v9 userInfo:{a2, @"can be encoded only by a NSXPCCoder", v10, v11, v12, v13, v14, v16), 0}];
    objc_exception_throw(v15);
  }

  [coder encodeXPCObject:self->_endpoint forKey:@"endpoint"];
  [coder encodeInt64:self->_customURLHandlerObjectID forKey:@"customURLHandlerObjectID"];
  [coder encodeInt64:self->_authHandlerObjectID forKey:@"authHandlerObjectID"];
  contentKeySessionHandlerObjectID = self->_contentKeySessionHandlerObjectID;

  [coder encodeInt64:contentKeySessionHandlerObjectID forKey:@"contentKeySessionHandlerObjectID"];
}

@end