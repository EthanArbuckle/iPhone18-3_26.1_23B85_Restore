@interface ADExternalRequestListener
- (ADExternalRequestListener)init;
- (ADExternalRequestListener)initWithInstanceContext:(id)a3;
- (void)listen;
@end

@implementation ADExternalRequestListener

- (void)listen
{
  instanceContext = self->_instanceContext;
  v4 = AFExternalRequestMachService;
  v5 = dispatch_get_global_queue(0, 0);
  v6 = [(AFInstanceContext *)instanceContext createXPCListenerForMachService:v4 targetQueue:v5 flags:1];
  externalRequestListener = self->_externalRequestListener;
  self->_externalRequestListener = v6;

  xpc_connection_set_event_handler(self->_externalRequestListener, &stru_100512F08);
  v8 = self->_externalRequestListener;

  xpc_connection_resume(v8);
}

- (ADExternalRequestListener)initWithInstanceContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADExternalRequestListener;
  v5 = [(ADExternalRequestListener *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v6;
  }

  return v5;
}

- (ADExternalRequestListener)init
{
  v3 = +[AFInstanceContext currentContext];
  v4 = [(ADExternalRequestListener *)self initWithInstanceContext:v3];

  return v4;
}

@end