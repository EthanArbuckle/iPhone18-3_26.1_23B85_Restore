@interface ICEResultQuery
- (ICEResultQuery)initWithCallID:(unsigned int)d;
- (ICEResultQuery)initWithResult:(tagCONNRESULT *)result;
- (void)dealloc;
- (void)setResult:(tagCONNRESULT *)result;
@end

@implementation ICEResultQuery

- (ICEResultQuery)initWithResult:(tagCONNRESULT *)result
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = ICEResultQuery;
  v4 = [(ICEResultQuery *)&v8 init];
  v5 = v4;
  if (result)
  {
    v4->callID = result->dwCallID;
    v6 = malloc_type_calloc(1uLL, 0x140uLL, 0x1020040A6FBA1A4uLL);
    v5->result = v6;
    memcpy(v6, result, sizeof(tagCONNRESULT));
  }

  v5->isQueryAnswered = 1;
  return v5;
}

- (ICEResultQuery)initWithCallID:(unsigned int)d
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = ICEResultQuery;
  result = [(ICEResultQuery *)&v5 init];
  result->result = 0;
  result->callID = d;
  result->isQueryAnswered = 0;
  return result;
}

- (void)setResult:(tagCONNRESULT *)result
{
  if (result)
  {
    result = self->result;
    if (result)
    {
      free(result);
    }

    v6 = malloc_type_calloc(1uLL, 0x140uLL, 0x1020040A6FBA1A4uLL);
    self->result = v6;
    memcpy(v6, result, sizeof(tagCONNRESULT));
  }

  self->isQueryAnswered = 1;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  free(self->result);
  v3.receiver = self;
  v3.super_class = ICEResultQuery;
  [(ICEResultQuery *)&v3 dealloc];
}

@end