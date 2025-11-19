@interface APSZeroTracker
@end

@implementation APSZeroTracker

void __APSZeroTracker_StartZeroLoggerDispatch_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v5 = v2;
      v6 = *(a1 + 40);
      LODWORD(v3) = v2[73];
      v7 = v3;
      if (v6 == 0.0)
      {
        v9 = 0.0;
        v10 = 0.0;
      }

      else
      {
        LODWORD(v4) = v2[28];
        *&v8 = v4;
        v9 = *&v8 / v6;
        LODWORD(v8) = v2[17];
        v10 = v8 / v6;
      }

      if (v10 >= v7)
      {
        v2[17] = 0;
        if (gLogCategory_APSAudioStats <= 50 && (gLogCategory_APSAudioStats != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v11 = LogCategoryCopyOSLogHandle();
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = MEMORY[0x277D86220];
        }

        if (os_signpost_enabled(v13))
        {
          *buf = 134218240;
          v16 = v10;
          v17 = 2048;
          v18 = v9;
          _os_signpost_emit_with_name_impl(&dword_2222B4000, v13, OS_SIGNPOST_EVENT, 0x2B8D0934uLL, "AP_SIGNPOST_CAR_DIGITAL_ZEROS_TRACKER", "Digital zeros detected (%.2lf seconds). Total Duration = %.2lf Secs.\n", buf, 0x16u);
        }

        if (v12)
        {
          os_release(v12);
        }
      }

      CFRelease(v5);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __APSZeroTracker_StartZeroLoggerDispatch_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

@end