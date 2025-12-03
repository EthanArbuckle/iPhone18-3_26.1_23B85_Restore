@interface NWURLLoaderData
- (OS_nw_connection)underlyingConnection;
- (void)readDataOfMinimumIncompleteLength:(unint64_t)length maximumLength:(unint64_t)maximumLength completionHandler:(id)handler;
- (void)readResponse:(id)response;
- (void)start:(id)start;
- (void)writeData:(id)data complete:(BOOL)complete completionHandler:(id)handler;
@end

@implementation NWURLLoaderData

- (OS_nw_connection)underlyingConnection
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)writeData:(id)data complete:(BOOL)complete completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  _os_crash();
  __break(1u);
}

- (void)readDataOfMinimumIncompleteLength:(unint64_t)length maximumLength:(unint64_t)maximumLength completionHandler:(id)handler
{
  handlerCopy = handler;
  if (self && (data = self->_data) != 0)
  {
    size = dispatch_data_get_size(self->_data);
    offset = self->_offset;
    if (size - offset >= maximumLength)
    {
      maximumLengthCopy = maximumLength;
    }

    else
    {
      maximumLengthCopy = size - offset;
    }

    subrange = dispatch_data_create_subrange(data, offset, maximumLengthCopy);
    self->_offset += maximumLengthCopy;
    v12 = handlerCopy[2];
  }

  else
  {
    subrange = [[NWURLError alloc] initWithErrorCode:-1000];
    v12 = handlerCopy[2];
  }

  v12();
}

- (void)readResponse:(id)response
{
  responseCopy = response;
  if (self && self->_data)
  {
    v4 = objc_alloc(MEMORY[0x1E695AC70]);
    v5 = self->_URL;
    v6 = self->_MIMEType;
    data = self->_data;
    size = dispatch_data_get_size(data);
    textEncodingName = self->_textEncodingName;
    v10 = data;
    v11 = [v4 initWithURL:v5 MIMEType:v6 expectedContentLength:size textEncodingName:textEncodingName];
    responseCopy[2](responseCopy, v11, 0);
  }

  else
  {
    v12 = [[NWURLError alloc] initWithErrorCode:-1000];
    v5 = v12;
    if (self)
    {
      URL = self->_URL;
    }

    else
    {
      URL = 0;
    }

    [(NWURLError *)v12 setFailingURL:URL];
    (responseCopy)[2](responseCopy, 0, v5);
  }
}

- (void)start:(id)start
{
  v17 = *MEMORY[0x1E69E9840];
  startCopy = start;
  properties = 0;
  resourceData = 0;
  errorCode = 0;
  if (self)
  {
    URL = self->_URL;
  }

  else
  {
    URL = 0;
  }

  if (CFURLCreateDataAndPropertiesFromResource(*MEMORY[0x1E695E480], URL, &resourceData, &properties, 0, &errorCode))
  {
    v6 = resourceData;
    _createDispatchData = [(__CFData *)resourceData _createDispatchData];
    if (self)
    {
      objc_storeStrong(&self->_data, _createDispatchData);
    }

    v8 = properties;
    v9 = [(__CFDictionary *)properties objectForKeyedSubscript:@"kCFDataURLMimeType"];
    if (self)
    {
      objc_storeStrong(&self->_MIMEType, v9);
    }

    v10 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"kCFDataURLTextEncodingName"];
    if (self)
    {
      objc_storeStrong(&self->_textEncodingName, v10);
    }

    startCopy[2](startCopy);
  }

  else
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v11 = gurlLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v16 = errorCode;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "Failed to parse data URL %d", buf, 8u);
    }

    startCopy[2](startCopy);
  }
}

@end