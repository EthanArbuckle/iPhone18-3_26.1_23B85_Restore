@interface VPCMetalLib
+ (id)metalLibraryWithDevice:(id)a3 error:(id *)a4;
@end

@implementation VPCMetalLib

+ (id)metalLibraryWithDevice:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:@"cvaviewpointcorrection" withExtension:@"metallib"];

  if (!v7)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v12 = qword_280C03850;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = @"Could not find metal library";
      _os_log_debug_impl(&dword_2401B8000, v12, OS_LOG_TYPE_DEBUG, "Check failed: %@", buf, 0xCu);
    }

    if (!a4)
    {
      v11 = 0;
      goto LABEL_18;
    }

    v9 = [MEMORY[0x277CBEB38] dictionary];
    [(__CFString *)v9 setValue:@"Could not find metal library" forKey:*MEMORY[0x277CCA450]];
    v13 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v10 bundleIdentifier];
    *a4 = [v13 errorWithDomain:v14 code:0 userInfo:v9];

    goto LABEL_16;
  }

  v18 = 0;
  v8 = [v5 newLibraryWithURL:v7 error:&v18];
  v9 = v18;
  if (!v8)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v15 = qword_280C03850;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_debug_impl(&dword_2401B8000, v15, OS_LOG_TYPE_DEBUG, "Forwarding NSError: %@", buf, 0xCu);
    }

    if (a4)
    {
      v16 = v9;
      v10 = 0;
      v11 = 0;
      *a4 = v9;
      goto LABEL_17;
    }

    v10 = 0;
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v10 = v8;
  v11 = v10;
LABEL_17:

LABEL_18:

  return v11;
}

@end