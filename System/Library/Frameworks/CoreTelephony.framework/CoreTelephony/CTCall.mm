@interface CTCall
+ (id)callForCXCall:(id)call;
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation CTCall

+ (id)callForCXCall:(id)call
{
  if (!call)
  {
    return 0;
  }

  v4 = objc_alloc_init(CTCall);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ([call isOutgoing])
  {
    v6 = @"CTCallStateDialing";
  }

  else
  {
    v6 = @"CTCallStateIncoming";
  }

  [(CTCall *)v5 setCallState:v6];
  if ([call hasConnected])
  {
    [(CTCall *)v5 setCallState:@"CTCallStateConnected"];
  }

  if ([call hasEnded])
  {
    [(CTCall *)v5 setCallState:@"CTCallStateDisconnected"];
  }

  -[CTCall setCallID:](v5, "setCallID:", [objc_msgSend(call "UUID")]);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CTCall;
  [(CTCall *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (!-[CTCall callID](self, "callID") || ![equal callID])
  {
    return 0;
  }

  callID = [(CTCall *)self callID];
  callID2 = [equal callID];

  return [(NSString *)callID isEqualToString:callID2];
}

@end