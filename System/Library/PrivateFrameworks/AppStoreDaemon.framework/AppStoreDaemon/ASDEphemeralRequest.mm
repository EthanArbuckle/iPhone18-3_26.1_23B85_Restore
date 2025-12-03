@interface ASDEphemeralRequest
- (ASDEphemeralRequest)initWithCoder:(id)coder;
- (void)_initWithOptions:(void *)options;
- (void)_startWithCompletionHandler:(void *)result;
- (void)encodeWithCoder:(id)coder;
- (void)receiveResponse:(id)response;
@end

@implementation ASDEphemeralRequest

- (void)_initWithOptions:(void *)options
{
  v3 = a2;
  if (options)
  {
    v7.receiver = options;
    v7.super_class = ASDEphemeralRequest;
    options = objc_msgSendSuper2(&v7, sel_init);
    if (options)
    {
      v4 = [v3 copy];
      v5 = options[5];
      options[5] = v4;
    }
  }

  return options;
}

- (void)receiveResponse:(id)response
{
  responseCopy = response;
  if (self)
  {
    v6 = objc_getProperty(self, v4, 32, 1);
    if (v6)
    {
      v7 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__ASDEphemeralRequest__callCompletionHandlerWithResponse___block_invoke;
      block[3] = &unk_1E7CDBAE0;
      v13 = v6;
      v11 = responseCopy;
      selfCopy = self;
      dispatch_async(v7, block);

      objc_setProperty_atomic_copy(self, v8, 0, 32);
    }

    else
    {
      v9 = +[ASDRequest _sharedBroker];
      [(ASDRequestBroker *)v9 markRequestAsComplete:?];
    }
  }
}

- (ASDEphemeralRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ASDEphemeralRequest;
  v5 = [(ASDRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    options = v5->_options;
    v5->_options = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ASDEphemeralRequest;
  coderCopy = coder;
  [(ASDRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(ASDEphemeralRequest *)self options:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"options"];
}

void __58__ASDEphemeralRequest__callCompletionHandlerWithResponse___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) success];
  v4 = *(a1 + 32);
  v5 = [v4 error];
  (*(v2 + 16))(v2, v3, v4, v5);

  v6 = +[ASDRequest _sharedBroker];
  [(ASDRequestBroker *)v6 markRequestAsComplete:?];
}

void __55__ASDEphemeralRequest__failCompletionHandlerWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v3 = +[ASDRequest _sharedBroker];
  [(ASDRequestBroker *)v3 markRequestAsComplete:?];
}

- (void)_startWithCompletionHandler:(void *)result
{
  if (result)
  {
    v2 = result;
    objc_setProperty_atomic_copy(result, newValue, newValue, 32);
    v3 = +[ASDRequest _sharedBroker];
    [(ASDRequestBroker *)v3 markRequestAsActive:v2];

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__ASDEphemeralRequest__startWithCompletionHandler___block_invoke;
    v4[3] = &unk_1E7CDB980;
    v4[4] = v2;
    return [v2 _startWithErrorHandler:v4];
  }

  return result;
}

uint64_t __51__ASDEphemeralRequest__startWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v5 = a2;
    if (v3)
    {
      v6 = objc_getProperty(v3, v4, 32, 1);
      if (v6)
      {
        v7 = dispatch_get_global_queue(21, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __55__ASDEphemeralRequest__failCompletionHandlerWithError___block_invoke;
        block[3] = &unk_1E7CDBAE0;
        v14 = v6;
        v12 = v5;
        v13 = v3;
        dispatch_async(v7, block);
      }

      else
      {
        v8 = +[ASDRequest _sharedBroker];
        [(ASDRequestBroker *)v8 markRequestAsComplete:v3];
      }
    }
  }

  v9 = *(a1 + 32);

  return [v9 setProxy:0];
}

@end