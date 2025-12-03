@interface ACXIDSReplyContext
- (ACXIDSReplyContext)initWithTimeout:(double)timeout queue:(id)queue logDescription:(id)description sentID:(id)d replyHandler:(id)handler completion:(id)completion;
- (void)runReplyHandlerWithMessage:(id)message error:(id)error;
@end

@implementation ACXIDSReplyContext

- (ACXIDSReplyContext)initWithTimeout:(double)timeout queue:(id)queue logDescription:(id)description sentID:(id)d replyHandler:(id)handler completion:(id)completion
{
  queueCopy = queue;
  descriptionCopy = description;
  dCopy = d;
  handlerCopy = handler;
  completionCopy = completion;
  v30.receiver = self;
  v30.super_class = ACXIDSReplyContext;
  v19 = [(ACXIDSReplyContext *)&v30 init];
  if (v19)
  {
    v20 = [handlerCopy copy];
    [(ACXIDSReplyContext *)v19 setReplyBlock:v20];

    v21 = [completionCopy copy];
    [(ACXIDSReplyContext *)v19 setCompletion:v21];

    [(ACXIDSReplyContext *)v19 setQueue:queueCopy];
    v22 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queueCopy);
    v23 = dispatch_time(0, 1000000000 * timeout);
    dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100016F50;
    handler[3] = &unk_10008CA48;
    v27 = descriptionCopy;
    v28 = dCopy;
    v24 = v19;
    v29 = v24;
    dispatch_source_set_event_handler(v22, handler);
    [(ACXIDSReplyContext *)v24 setTimeoutTimer:v22];
    dispatch_resume(v22);
  }

  return v19;
}

- (void)runReplyHandlerWithMessage:(id)message error:(id)error
{
  errorCopy = error;
  messageCopy = message;
  replyBlock = [(ACXIDSReplyContext *)self replyBlock];
  (replyBlock)[2](replyBlock, messageCopy, errorCopy);

  [(ACXIDSReplyContext *)self setReplyBlock:0];
  completion = [(ACXIDSReplyContext *)self completion];
  completion[2]();

  [(ACXIDSReplyContext *)self setCompletion:0];
  timeoutTimer = [(ACXIDSReplyContext *)self timeoutTimer];
  dispatch_source_cancel(timeoutTimer);

  [(ACXIDSReplyContext *)self setTimeoutTimer:0];
}

@end