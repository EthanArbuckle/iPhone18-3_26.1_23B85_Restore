@interface VCCaptionsUtilities
+ (id)formattedTextWithTranscription:(id)transcription;
@end

@implementation VCCaptionsUtilities

+ (id)formattedTextWithTranscription:(id)transcription
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  segments = [transcription segments];
  v6 = [segments countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(segments);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        for (i = [v4 length]; i < objc_msgSend(v10, "range"); ++i)
        {
          [v4 appendString:@" "];
        }

        [v4 appendString:{objc_msgSend(v10, "text")}];
        ++v9;
      }

      while (v9 != v7);
      v7 = [segments countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v7);
  }

  return v4;
}

@end