@interface VOTUpdateFocusContext
+ (id)context:(int64_t)a3;
- (VOTUpdateFocusContext)init;
- (id)description;
@end

@implementation VOTUpdateFocusContext

+ (id)context:(int64_t)a3
{
  v4 = objc_alloc_init(VOTUpdateFocusContext);
  [(VOTUpdateFocusContext *)v4 setReason:a3];

  return v4;
}

- (VOTUpdateFocusContext)init
{
  v3.receiver = self;
  v3.super_class = VOTUpdateFocusContext;
  result = [(VOTUpdateFocusContext *)&v3 init];
  if (result)
  {
    result->_senderPID = -1;
  }

  return result;
}

- (id)description
{
  v3 = [NSNumber numberWithBool:[(VOTUpdateFocusContext *)self shouldIgnorePreviousFocusedElement]];
  v4 = [(VOTUpdateFocusContext *)self focusElement];
  v5 = [NSNumber numberWithInt:[(VOTUpdateFocusContext *)self senderPID]];
  v6 = [(VOTUpdateFocusContext *)self senderBundleID];
  v7 = [NSNumber numberWithBool:[(VOTUpdateFocusContext *)self senderIsAppExtension]];
  v8 = [NSString stringWithFormat:@"VOTUpdateFocusContext <%p>.\n\tReason:%@\n\tIgnorePrevious:%@\n\tFocus:%@\n\tSender PID: %@ BundleID: %@. Is Extension:%@", self, 0, v3, v4, v5, v6, v7];

  return v8;
}

@end