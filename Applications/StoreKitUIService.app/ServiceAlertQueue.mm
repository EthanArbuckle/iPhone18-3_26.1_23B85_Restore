@interface ServiceAlertQueue
+ (id)defaultQueue;
- (ServiceAlertQueue)init;
- (void)getNextAlertForClassName:(id)name completionBlock:(id)block;
@end

@implementation ServiceAlertQueue

- (ServiceAlertQueue)init
{
  v7.receiver = self;
  v7.super_class = ServiceAlertQueue;
  v2 = [(ServiceAlertQueue *)&v7 init];
  if (v2)
  {
    v3 = [SSXPCConnection alloc];
    v4 = [v3 initWithServiceName:SSXPCPrivateServiceName];
    connection = v2->_connection;
    v2->_connection = v4;
  }

  return v2;
}

+ (id)defaultQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025F90;
  block[3] = &unk_1000517F8;
  block[4] = self;
  if (qword_100069610[0] != -1)
  {
    dispatch_once(qword_100069610, block);
  }

  v2 = qword_100069608;

  return v2;
}

- (void)getNextAlertForClassName:(id)name completionBlock:(id)block
{
  blockCopy = block;
  nameCopy = name;
  v8 = SSXPCCreateMessageDictionary();
  SSXPCDictionarySetCFObject();

  v9 = objc_alloc_init(ServiceAlertProxy);
  receiverEndpoint = [(ServiceAlertProxy *)v9 receiverEndpoint];
  xpc_dictionary_set_value(v8, "2", receiverEndpoint);

  connection = self->_connection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000260F4;
  v14[3] = &unk_100051F48;
  v15 = v9;
  v16 = blockCopy;
  v12 = blockCopy;
  v13 = v9;
  [(SSXPCConnection *)connection sendMessage:v8 withReply:v14];
}

@end