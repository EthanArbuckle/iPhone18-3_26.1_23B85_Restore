@interface _MKCategoriesTicket
- (_MKCategoriesTicket)initWithTicket:(id)a3;
- (void)submitWithHandler:(id)a3 networkActivity:(id)a4;
@end

@implementation _MKCategoriesTicket

- (void)submitWithHandler:(id)a3 networkActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    ticket = self->_ticket;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57___MKCategoriesTicket_submitWithHandler_networkActivity___block_invoke;
    v11[3] = &unk_1E76C8490;
    v12 = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57___MKCategoriesTicket_submitWithHandler_networkActivity___block_invoke_3;
    v9[3] = &unk_1E76C9DD8;
    v10 = v7;
    [(GEOMapServiceCategoriesTicket *)ticket submitWithHandler:v11 networkActivity:v9];
  }
}

- (_MKCategoriesTicket)initWithTicket:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _MKCategoriesTicket;
  v6 = [(_MKCategoriesTicket *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, a3);
    v8 = v7;
  }

  return v7;
}

@end