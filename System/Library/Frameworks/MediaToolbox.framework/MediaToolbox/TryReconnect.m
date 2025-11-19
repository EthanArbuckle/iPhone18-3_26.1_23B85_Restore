@interface TryReconnect
@end

@implementation TryReconnect

void __fbf_TryReconnect_block_invoke(uint64_t a1, int a2, NSObject *a3)
{
  if (a2 == 5)
  {
    if (*(a1 + 32))
    {
      v3 = *(a1 + 32);

      CFRelease(v3);
    }
  }

  else
  {
    FigRetainProxyLockMutex();
    if (!FigRetainProxyIsInvalidated())
    {
      FigRetainProxyGetOwner();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 488))
      {
        v7 = DerivedStorage;
        if (a2 == 4)
        {
          if (a3)
          {
            v8 = nw_error_copy_cf_error(a3);
            error_domain = nw_error_get_error_domain(a3);
            error_code = nw_error_get_error_code(a3);
            if (error_domain - 1 > 2)
            {
              v11 = kCoreMediaErrorDomain;
            }

            else
            {
              v11 = qword_1E74833D8[error_domain - 1];
            }

            CFError = FigCreateCFError(*v11, error_code, @"Reconnect failure", 0, 0, *(v7 + 168), v8);
            if (v8)
            {
              CFRelease(v8);
            }
          }

          else
          {
            CFError = FigCreateCFError(@"CoreMediaErrorDomain", -12935, @"Reconnect failure", 0, 0, *(DerivedStorage + 168), 0);
          }

          fbf_CancelReconnect(v7);
          ++*(v7 + 496);
          if (CFError)
          {
            fbf_ReleaseAndRetainLastErrorFromCFError(v7, CFError);
          }

          if (*(v7 + 520) <= FigGetUpTimeNanoseconds())
          {
            *(v7 + 512) = 0;
            fbf_postConnectionToHostLostNotification(v7);
          }

          else
          {
            *(v7 + 512) = FigGetUpTimeNanoseconds() + 30000000000;
            FigHTTPRescheduleTimer(30.0, *(v7 + 48), *(v7 + 456));
          }
        }

        else if (a2 == 3)
        {
          *(DerivedStorage + 17) = 0;
          fbf_CancelReconnect(DerivedStorage);
          if (FigByteFlumePostHostAvailableNotification(v7))
          {
            fbf_ReportingAgentResetErrorStats(v7);
          }
        }
      }

      else
      {
        __fbf_TryReconnect_block_invoke_cold_1();
      }
    }

    FigRetainProxyUnlockMutex();
  }
}

@end