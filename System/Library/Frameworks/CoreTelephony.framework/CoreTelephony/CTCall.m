@interface CTCall
+ (id)callForCXCall:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)dealloc;
@end

@implementation CTCall

+ (id)callForCXCall:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = objc_alloc_init(CTCall);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ([a3 isOutgoing])
  {
    v6 = @"CTCallStateDialing";
  }

  else
  {
    v6 = @"CTCallStateIncoming";
  }

  [(CTCall *)v5 setCallState:v6];
  if ([a3 hasConnected])
  {
    [(CTCall *)v5 setCallState:@"CTCallStateConnected"];
  }

  if ([a3 hasEnded])
  {
    [(CTCall *)v5 setCallState:@"CTCallStateDisconnected"];
  }

  -[CTCall setCallID:](v5, "setCallID:", [objc_msgSend(a3 "UUID")]);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CTCall;
  [(CTCall *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (!-[CTCall callID](self, "callID") || ![a3 callID])
  {
    return 0;
  }

  v5 = [(CTCall *)self callID];
  v6 = [a3 callID];

  return [(NSString *)v5 isEqualToString:v6];
}

@end