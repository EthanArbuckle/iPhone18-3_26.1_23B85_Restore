@interface PIVAuthOperation
- (BOOL)finishWithError:(id *)a3;
- (PIVAuthOperation)initWithSession:(id)a3 smartCard:(id)a4;
@end

@implementation PIVAuthOperation

- (PIVAuthOperation)initWithSession:(id)a3 smartCard:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = PIVAuthOperation;
  v9 = [(PIVAuthOperation *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, a3);
    [(PIVAuthOperation *)v10 setSmartCard:v8];
    v11 = [(PIVAuthOperation *)v10 smartCard];
    v19 = [v11 cla];
    v20 = 142606368;
    v21 = -1;

    v12 = [NSData dataWithBytes:&v19 length:13];
    [(PIVAuthOperation *)v10 setAPDUTemplate:v12];

    v13 = objc_alloc_init(TKSmartCardPINFormat);
    [(PIVAuthOperation *)v10 setPINFormat:v13];

    v14 = [(PIVAuthOperation *)v10 PINFormat];
    [v14 setCharset:1];

    v15 = [(PIVAuthOperation *)v10 PINFormat];
    [v15 setMinPINLength:6];

    v16 = [(PIVAuthOperation *)v10 PINFormat];
    [v16 setMaxPINLength:8];
  }

  return v10;
}

- (BOOL)finishWithError:(id *)a3
{
  v8.receiver = self;
  v8.super_class = PIVAuthOperation;
  v4 = [(PIVAuthOperation *)&v8 finishWithError:a3];
  if (v4)
  {
    v5 = [(PIVAuthOperation *)self smartCard];
    [v5 setContext:&__kCFBooleanTrue];

    v6 = [(PIVAuthOperation *)self session];
    [v6 setAuthState:1];
  }

  return v4;
}

@end