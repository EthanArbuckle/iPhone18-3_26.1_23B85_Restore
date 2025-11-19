@interface NotifySessionsSystemInfoChange
@end

@implementation NotifySessionsSystemInfoChange

void ___NotifySessionsSystemInfoChange_block_invoke(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (CFArrayEnsureCreatedAndAppend())
  {
    goto LABEL_9;
  }

  if (CFObjectGetInt64())
  {
    CFArrayEnsureCreatedAndAppend();
  }

  if (APReceiverSystemInfoCopyInfoDict(*(*(a1 + 32) + 160), 0, 0, &cf))
  {
LABEL_9:
    APSLogErrorAt();
  }

  else
  {
    APReceiverRequestProcessorSendSystemInfoUpdate(a2, cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

@end