@interface PIVAuthOperation
- (BOOL)finishWithError:(id *)error;
- (PIVAuthOperation)initWithSession:(id)session smartCard:(id)card;
@end

@implementation PIVAuthOperation

- (PIVAuthOperation)initWithSession:(id)session smartCard:(id)card
{
  sessionCopy = session;
  cardCopy = card;
  v18.receiver = self;
  v18.super_class = PIVAuthOperation;
  v9 = [(PIVAuthOperation *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    [(PIVAuthOperation *)v10 setSmartCard:cardCopy];
    smartCard = [(PIVAuthOperation *)v10 smartCard];
    v19 = [smartCard cla];
    v20 = 142606368;
    v21 = -1;

    v12 = [NSData dataWithBytes:&v19 length:13];
    [(PIVAuthOperation *)v10 setAPDUTemplate:v12];

    v13 = objc_alloc_init(TKSmartCardPINFormat);
    [(PIVAuthOperation *)v10 setPINFormat:v13];

    pINFormat = [(PIVAuthOperation *)v10 PINFormat];
    [pINFormat setCharset:1];

    pINFormat2 = [(PIVAuthOperation *)v10 PINFormat];
    [pINFormat2 setMinPINLength:6];

    pINFormat3 = [(PIVAuthOperation *)v10 PINFormat];
    [pINFormat3 setMaxPINLength:8];
  }

  return v10;
}

- (BOOL)finishWithError:(id *)error
{
  v8.receiver = self;
  v8.super_class = PIVAuthOperation;
  v4 = [(PIVAuthOperation *)&v8 finishWithError:error];
  if (v4)
  {
    smartCard = [(PIVAuthOperation *)self smartCard];
    [smartCard setContext:&__kCFBooleanTrue];

    session = [(PIVAuthOperation *)self session];
    [session setAuthState:1];
  }

  return v4;
}

@end