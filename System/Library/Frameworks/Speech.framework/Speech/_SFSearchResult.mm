@interface _SFSearchResult
- (_SFSearchResult)initWithVoiceSearchResult:(id)a3;
- (id)description;
@end

@implementation _SFSearchResult

- (id)description
{
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:self->_data options:0 error:0];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:1 error:0];
    v6 = [v4 initWithData:v5 encoding:4];

    if (v6)
    {
      v10.receiver = self;
      v10.super_class = _SFSearchResult;
      v7 = [(_SFSearchResult *)&v10 description];
      v8 = [v7 stringByAppendingString:v6];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = _SFSearchResult;
      v8 = [(_SFSearchResult *)&v11 description];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _SFSearchResult;
    v8 = [(_SFSearchResult *)&v12 description];
  }

  return v8;
}

- (_SFSearchResult)initWithVoiceSearchResult:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _SFSearchResult;
  v5 = [(_SFSearchResult *)&v21 init];
  if (v5)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = [v4 statusCode];
    v8 = [v7 intValue];
    Response = CFHTTPMessageCreateResponse(v6, v8, &stru_1F2139F58, *MEMORY[0x1E695ADB8]);

    if (Response)
    {
      v10 = [v4 headers];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __45___SFSearchResult_initWithVoiceSearchResult___block_invoke;
      v20[3] = &__block_descriptor_40_e35_v32__0__NSString_8__NSString_16_B24l;
      v20[4] = Response;
      [v10 enumerateKeysAndObjectsUsingBlock:v20];

      v11 = CFURLResponseCreateWithHTTPResponse();
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AC68] _responseWithCFURLResponse:v11];
        v14 = v5->_response;
        v5->_response = v13;

        CFRelease(v12);
      }

      CFRelease(Response);
    }

    v15 = [v4 result];
    data = v5->_data;
    v5->_data = v15;

    v17 = [v4 searchType];
    if ([v17 isEqualToString:*MEMORY[0x1E69C81F8]])
    {
      v18 = 1;
    }

    else
    {
      if (![v17 isEqualToString:*MEMORY[0x1E69C8200]])
      {
LABEL_11:

        goto LABEL_12;
      }

      v18 = 2;
    }

    v5->_searchType = v18;
    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

@end