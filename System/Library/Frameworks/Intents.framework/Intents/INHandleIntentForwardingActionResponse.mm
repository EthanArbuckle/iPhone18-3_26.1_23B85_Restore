@interface INHandleIntentForwardingActionResponse
- (INHandleIntentForwardingActionResponse)initWithCoder:(id)coder;
- (INHandleIntentForwardingActionResponse)initWithIntentResponse:(id)response launchContextActivityData:(id)data cacheItems:(id)items error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INHandleIntentForwardingActionResponse

- (INHandleIntentForwardingActionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentResponse"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchContextActivityData"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"cacheItems"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"error"];

  v17 = [(INHandleIntentForwardingActionResponse *)self initWithIntentResponse:v20 launchContextActivityData:v19 cacheItems:v7 error:v16];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INHandleIntentForwardingActionResponse;
  coderCopy = coder;
  [(INIntentForwardingActionResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_intentResponse forKey:{@"intentResponse", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_launchContextActivityData forKey:@"launchContextActivityData"];
  [coderCopy encodeObject:self->_cacheItems forKey:@"cacheItems"];
}

- (INHandleIntentForwardingActionResponse)initWithIntentResponse:(id)response launchContextActivityData:(id)data cacheItems:(id)items error:(id)error
{
  responseCopy = response;
  dataCopy = data;
  itemsCopy = items;
  v17.receiver = self;
  v17.super_class = INHandleIntentForwardingActionResponse;
  v14 = [(INIntentForwardingActionResponse *)&v17 initWithError:error];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_intentResponse, response);
    objc_storeStrong(&v15->_launchContextActivityData, data);
    objc_storeStrong(&v15->_cacheItems, items);
  }

  return v15;
}

@end