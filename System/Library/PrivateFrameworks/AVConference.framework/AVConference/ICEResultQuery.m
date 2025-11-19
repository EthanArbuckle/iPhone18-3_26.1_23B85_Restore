@interface ICEResultQuery
- (ICEResultQuery)initWithCallID:(unsigned int)a3;
- (ICEResultQuery)initWithResult:(tagCONNRESULT *)a3;
- (void)dealloc;
- (void)setResult:(tagCONNRESULT *)a3;
@end

@implementation ICEResultQuery

- (ICEResultQuery)initWithResult:(tagCONNRESULT *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = ICEResultQuery;
  v4 = [(ICEResultQuery *)&v8 init];
  v5 = v4;
  if (a3)
  {
    v4->callID = a3->dwCallID;
    v6 = malloc_type_calloc(1uLL, 0x140uLL, 0x1020040A6FBA1A4uLL);
    v5->result = v6;
    memcpy(v6, a3, sizeof(tagCONNRESULT));
  }

  v5->isQueryAnswered = 1;
  return v5;
}

- (ICEResultQuery)initWithCallID:(unsigned int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = ICEResultQuery;
  result = [(ICEResultQuery *)&v5 init];
  result->result = 0;
  result->callID = a3;
  result->isQueryAnswered = 0;
  return result;
}

- (void)setResult:(tagCONNRESULT *)a3
{
  if (a3)
  {
    result = self->result;
    if (result)
    {
      free(result);
    }

    v6 = malloc_type_calloc(1uLL, 0x140uLL, 0x1020040A6FBA1A4uLL);
    self->result = v6;
    memcpy(v6, a3, sizeof(tagCONNRESULT));
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