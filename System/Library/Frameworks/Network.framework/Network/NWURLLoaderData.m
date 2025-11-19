@interface NWURLLoaderData
- (OS_nw_connection)underlyingConnection;
- (void)readDataOfMinimumIncompleteLength:(unint64_t)a3 maximumLength:(unint64_t)a4 completionHandler:(id)a5;
- (void)readResponse:(id)a3;
- (void)start:(id)a3;
- (void)writeData:(id)a3 complete:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation NWURLLoaderData

- (OS_nw_connection)underlyingConnection
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)writeData:(id)a3 complete:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  _os_crash();
  __break(1u);
}

- (void)readDataOfMinimumIncompleteLength:(unint64_t)a3 maximumLength:(unint64_t)a4 completionHandler:(id)a5
{
  v13 = a5;
  if (self && (data = self->_data) != 0)
  {
    size = dispatch_data_get_size(self->_data);
    offset = self->_offset;
    if (size - offset >= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = size - offset;
    }

    subrange = dispatch_data_create_subrange(data, offset, v10);
    self->_offset += v10;
    v12 = v13[2];
  }

  else
  {
    subrange = [[NWURLError alloc] initWithErrorCode:-1000];
    v12 = v13[2];
  }

  v12();
}

- (void)readResponse:(id)a3
{
  v14 = a3;
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
    v14[2](v14, v11, 0);
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
    (v14)[2](v14, 0, v5);
  }
}

- (void)start:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v7 = [(__CFData *)resourceData _createDispatchData];
    if (self)
    {
      objc_storeStrong(&self->_data, v7);
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

    v4[2](v4);
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

    v4[2](v4);
  }
}

@end