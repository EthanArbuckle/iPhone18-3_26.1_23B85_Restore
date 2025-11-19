@interface AVOutputContextDestinationChange(FigRoutingContextAdditions)
- (uint64_t)changeToTerminalStatusBasedOnRouteChangeEndedReason:()FigRoutingContextAdditions;
- (uint64_t)changeToTerminalStatusBasedOnRouteConfigUpdatedReason:()FigRoutingContextAdditions;
@end

@implementation AVOutputContextDestinationChange(FigRoutingContextAdditions)

- (uint64_t)changeToTerminalStatusBasedOnRouteChangeEndedReason:()FigRoutingContextAdditions
{
  if (FigCFEqual())
  {

    return [a1 markAsFinished];
  }

  if (FigCFEqual())
  {
    goto LABEL_6;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v4 = *MEMORY[0x1E6958680];
      v3 = a1;
      goto LABEL_13;
    }

    if (!FigCFEqual())
    {
LABEL_6:

      return [a1 markAsFailed];
    }
  }

  v3 = a1;
  v4 = 0;
LABEL_13:

  return [v3 markAsCancelledWithReason:v4];
}

- (uint64_t)changeToTerminalStatusBasedOnRouteConfigUpdatedReason:()FigRoutingContextAdditions
{
  if (FigCFEqual())
  {
LABEL_2:

    return [a1 markAsFinished];
  }

  if (FigCFEqual())
  {
    goto LABEL_6;
  }

  if (FigCFEqual())
  {
    v3 = a1;
    v4 = 0;
  }

  else
  {
    if (!FigCFEqual())
    {
      if (FigCFEqual() || FigCFEqual() || FigCFEqual())
      {
        goto LABEL_2;
      }

LABEL_6:

      return [a1 markAsFailed];
    }

    v4 = *MEMORY[0x1E6958680];
    v3 = a1;
  }

  return [v3 markAsCancelledWithReason:v4];
}

@end