@interface CVAVideoPipelineLibrarySPI
+ (BOOL)updateRequestWithLiveData:(id)data mattingRequest:(id)request faceKitProcessOutput:(id)output error:(id *)error;
+ (id)identifyGPU:(id)u;
@end

@implementation CVAVideoPipelineLibrarySPI

+ (id)identifyGPU:(id)u
{
  uCopy = u;
  name = [uCopy name];
  if ([name containsString:@"Apple"])
  {
    NSSelectorFromString(&cfstr_Architecture.isa);
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      v7 = &stru_1F59FA3B0;
      goto LABEL_14;
    }

    name = [uCopy architecture];
    v4Name = [name name];
    v7 = [v4Name stringByReplacingOccurrencesOfString:@"applegpu_" withString:&stru_1F59FA3B0];
    revision = [name revision];
    if ([revision containsString:@"A"])
    {
      v9 = 1;
    }

    else if ([(__CFString *)v7 containsString:@"g16p"])
    {
      revision2 = [name revision];
      v9 = [revision2 containsString:@"B0"];
    }

    else
    {
      v9 = 0;
    }

    if ((v9 & ([(__CFString *)v7 containsString:@"g17p"]^ 1)) == 1)
    {
      v11 = MEMORY[0x1E696AEC0];
      revision3 = [name revision];
      lowercaseString = [revision3 lowercaseString];
      v14 = [v11 stringWithFormat:@"%@_%@", v7, lowercaseString];

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

+ (BOOL)updateRequestWithLiveData:(id)data mattingRequest:(id)request faceKitProcessOutput:(id)output error:(id *)error
{
  dataCopy = data;
  requestCopy = request;
  outputCopy = output;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v12 = dataCopy;
    v13 = v12;
    if (requestCopy)
    {
      background = [v12 background];

      if (background)
      {
        background2 = [v13 background];
        [background2 setMattingRequest:requestCopy];
      }
    }

    if (outputCopy)
    {
      light = [v13 light];

      if (light)
      {
        light2 = [v13 light];
        [light2 setFaceKitProcessOutput:outputCopy];
      }
    }
  }

  return isKindOfClass & 1;
}

@end