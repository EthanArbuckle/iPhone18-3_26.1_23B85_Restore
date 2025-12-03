@interface VPCMetalLib
+ (id)metalLibraryWithDevice:(id)device error:(id *)error;
@end

@implementation VPCMetalLib

+ (id)metalLibraryWithDevice:(id)device error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
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

    if (!error)
    {
      v11 = 0;
      goto LABEL_18;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(__CFString *)dictionary setValue:@"Could not find metal library" forKey:*MEMORY[0x277CCA450]];
    v13 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v10 bundleIdentifier];
    *error = [v13 errorWithDomain:bundleIdentifier code:0 userInfo:dictionary];

    goto LABEL_16;
  }

  v18 = 0;
  v8 = [deviceCopy newLibraryWithURL:v7 error:&v18];
  dictionary = v18;
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
      v20 = dictionary;
      _os_log_debug_impl(&dword_2401B8000, v15, OS_LOG_TYPE_DEBUG, "Forwarding NSError: %@", buf, 0xCu);
    }

    if (error)
    {
      v16 = dictionary;
      v10 = 0;
      v11 = 0;
      *error = dictionary;
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