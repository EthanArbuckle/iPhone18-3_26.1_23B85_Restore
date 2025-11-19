@interface AAPaymentSummaryResponse
- (AAPaymentSummaryResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (unint64_t)numberOfCards;
@end

@implementation AAPaymentSummaryResponse

- (AAPaymentSummaryResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v17.receiver = self;
  v17.super_class = AAPaymentSummaryResponse;
  v7 = [(AAResponse *)&v17 initWithHTTPResponse:a3 data:v6 bodyIsPlist:0];
  v8 = v7;
  if (v6 && v7 && [v6 length])
  {
    v16 = 0;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v16];
    v10 = v16;
    responseParameters = v8->_responseParameters;
    v8->_responseParameters = v9;

    if (v10)
    {
      v12 = _AALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
        *buf = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Error: Could not parse server response data: %@. Details: %@", buf, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unint64_t)numberOfCards
{
  v2 = [(NSDictionary *)self->_responseParameters objectForKey:@"numberOfCards"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

@end