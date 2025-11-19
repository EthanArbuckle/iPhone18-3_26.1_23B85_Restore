@interface MKURLParser
@end

@implementation MKURLParser

void __43___MKURLParser_urlParserForURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[_MKURLParser alloc] initWithGEOParser:v5];
    v8 = _MKURLParserCallbackQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43___MKURLParser_urlParserForURL_completion___block_invoke_2;
    block[3] = &unk_1E76CDA20;
    v9 = *(a1 + 32);
    v16 = v7;
    v17 = v9;
    v10 = v7;
    dispatch_async(v8, block);
  }

  else
  {
    v11 = _MKURLParserCallbackQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43___MKURLParser_urlParserForURL_completion___block_invoke_3;
    v12[3] = &unk_1E76CDA20;
    v14 = *(a1 + 32);
    v13 = v6;
    dispatch_async(v11, v12);

    v10 = v14;
  }
}

@end