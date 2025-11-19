@interface CVAVideoPipelineLibrarySPI
+ (BOOL)updateRequestWithLiveData:(id)a3 mattingRequest:(id)a4 faceKitProcessOutput:(id)a5 error:(id *)a6;
+ (id)identifyGPU:(id)a3;
@end

@implementation CVAVideoPipelineLibrarySPI

+ (id)identifyGPU:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  if ([v4 containsString:@"Apple"])
  {
    NSSelectorFromString(&cfstr_Architecture.isa);
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      v7 = &stru_1F59FA3B0;
      goto LABEL_14;
    }

    v4 = [v3 architecture];
    v6 = [v4 name];
    v7 = [v6 stringByReplacingOccurrencesOfString:@"applegpu_" withString:&stru_1F59FA3B0];
    v8 = [v4 revision];
    if ([v8 containsString:@"A"])
    {
      v9 = 1;
    }

    else if ([(__CFString *)v7 containsString:@"g16p"])
    {
      v10 = [v4 revision];
      v9 = [v10 containsString:@"B0"];
    }

    else
    {
      v9 = 0;
    }

    if ((v9 & ([(__CFString *)v7 containsString:@"g17p"]^ 1)) == 1)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [v4 revision];
      v13 = [v12 lowercaseString];
      v14 = [v11 stringWithFormat:@"%@_%@", v7, v13];

      v7 = v14;
    }
  }

  else
  {
    v7 = &stru_1F59FA3B0;
  }

LABEL_14:

  return v7;
}

+ (BOOL)updateRequestWithLiveData:(id)a3 mattingRequest:(id)a4 faceKitProcessOutput:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v12 = v8;
    v13 = v12;
    if (v9)
    {
      v14 = [v12 background];

      if (v14)
      {
        v15 = [v13 background];
        [v15 setMattingRequest:v9];
      }
    }

    if (v10)
    {
      v16 = [v13 light];

      if (v16)
      {
        v17 = [v13 light];
        [v17 setFaceKitProcessOutput:v10];
      }
    }
  }

  return isKindOfClass & 1;
}

@end