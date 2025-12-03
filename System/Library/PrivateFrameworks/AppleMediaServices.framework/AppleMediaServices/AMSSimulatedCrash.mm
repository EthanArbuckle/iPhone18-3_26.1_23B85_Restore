@interface AMSSimulatedCrash
+ (void)throwSimulatedCrashWithFormat:(id)format;
@end

@implementation AMSSimulatedCrash

+ (void)throwSimulatedCrashWithFormat:(id)format
{
  formatCopy = format;
  if (os_variant_has_internal_content())
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:formatCopy arguments:&v14];
    v5 = getpid();
    v6 = v4;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v7 = _MergedGlobals_147;
    v13 = _MergedGlobals_147;
    if (!_MergedGlobals_147)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getSimulateCrashSymbolLoc_block_invoke;
      v9[3] = &unk_1E73B3880;
      v9[4] = &v10;
      __getSimulateCrashSymbolLoc_block_invoke(v9);
      v7 = v11[3];
    }

    _Block_object_dispose(&v10, 8);
    if (!v7)
    {
      dlerror();
      v8 = abort_report_np();
      _Block_object_dispose(&v10, 8);
      _Unwind_Resume(v8);
    }

    v7(v5, 195939070, v6);
  }
}

@end