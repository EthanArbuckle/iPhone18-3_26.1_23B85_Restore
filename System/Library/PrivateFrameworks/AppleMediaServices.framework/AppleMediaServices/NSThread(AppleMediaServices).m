@interface NSThread(AppleMediaServices)
+ (id)ams_symbolicatedCallStackSymbols;
@end

@implementation NSThread(AppleMediaServices)

+ (id)ams_symbolicatedCallStackSymbols
{
  v36 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AF00] callStackReturnAddresses];
  v1 = CSSymbolicatorCreateWithTaskFlagsAndNotification();
  v3 = v2;
  v4 = 0;
  if ((CSIsNull() & 1) == 0)
  {
    mach_absolute_time();
    CSSymbolicatorGetArchitecture();
    v5 = CSArchitectureIs64Bit();
    v27 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = v0;
    obj = v0;
    v28 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v28)
    {
      v6 = 0;
      if (v5)
      {
        v7 = 16;
      }

      else
      {
        v7 = 8;
      }

      v25 = *v32;
      v26 = v7;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v31 + 1) + 8 * i) unsignedIntegerValue];
          CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
          v10 = v1;
          v11 = v3;
          CSSymbolicatorGetSymbolWithAddressAtTime();
          v30 = 0;
          Range = CSSymbolGetRange();
          Name = CSSymbolGetName();
          if (Name)
          {
            asprintf(&v30, " %s + %llu", Name, v9 - Range);
          }

          CSSymbolOwnerGetSourceInfoWithAddress();
          Filename = CSSourceInfoGetFilename();
          v29 = 0;
          if (Filename)
          {
            v15 = Filename;
            LineNumber = CSSourceInfoGetLineNumber();
            asprintf(&v29, " (%s:%u)", v15, LineNumber);
          }

          v17 = CSSymbolOwnerGetName();
          if (v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = "";
          }

          v20 = v29;
          v19 = v30;
          if (!v30)
          {
            v19 = "";
          }

          if (!v29)
          {
            v20 = "";
          }

          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%-3d %-30s\t0x%0*llx%s%s\n", v6, v18, v26, v9, v19, v20];
          if (v30)
          {
            free(v30);
          }

          v1 = v10;
          v3 = v11;
          if (v29)
          {
            free(v29);
          }

          [v27 appendString:v21];
          v6 = (v6 + 1);
        }

        v28 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v28);
    }

    v4 = [v27 copy];
    v0 = v23;
  }

  return v4;
}

@end