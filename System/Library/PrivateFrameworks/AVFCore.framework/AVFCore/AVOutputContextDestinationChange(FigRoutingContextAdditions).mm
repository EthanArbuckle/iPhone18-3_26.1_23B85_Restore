@interface AVOutputContextDestinationChange(FigRoutingContextAdditions)
- (uint64_t)changeToTerminalStatusBasedOnRouteChangeEndedReason:()FigRoutingContextAdditions;
- (uint64_t)changeToTerminalStatusBasedOnRouteConfigUpdatedReason:()FigRoutingContextAdditions;
@end

@implementation AVOutputContextDestinationChange(FigRoutingContextAdditions)

- (uint64_t)changeToTerminalStatusBasedOnRouteChangeEndedReason:()FigRoutingContextAdditions
{
  if (FigCFEqual())
  {

    return [self markAsFinished];
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
      selfCopy2 = self;
      goto LABEL_13;
    }

    if (!FigCFEqual())
    {
LABEL_6:

      return [self markAsFailed];
    }
  }

  selfCopy2 = self;
  v4 = 0;
LABEL_13:

  return [selfCopy2 markAsCancelledWithReason:v4];
}

- (uint64_t)changeToTerminalStatusBasedOnRouteConfigUpdatedReason:()FigRoutingContextAdditions
{
  if (FigCFEqual())
  {
LABEL_2:

    return [self markAsFinished];
  }

  if (FigCFEqual())
  {
    goto LABEL_6;
  }

  if (FigCFEqual())
  {
    selfCopy2 = self;
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

      return [self markAsFailed];
    }

    v4 = *MEMORY[0x1E6958680];
    selfCopy2 = self;
  }

  return [selfCopy2 markAsCancelledWithReason:v4];
}

@end