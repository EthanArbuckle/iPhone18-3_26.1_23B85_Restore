@interface CTAttributedStringWrapper
+ (BOOL)containsAttachments:(id)a3;
+ (id)attributedStringFromData:(id)a3 options:(id)a4 documentAttributes:(id *)a5 error:(id *)a6;
+ (id)dataFromAttributedString:(id)a3 range:(_NSRange)a4 documentAttributes:(id)a5 error:(id *)a6;
@end

@implementation CTAttributedStringWrapper

+ (id)attributedStringFromData:(id)a3 options:(id)a4 documentAttributes:(id *)a5 error:(id *)a6
{
  v18[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if ([objc_opt_class() instancesRespondToSelector:sel_initWithData_options_documentAttributes_error_])
  {
    v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithData:v9 options:v10 documentAttributes:a5 error:a6];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Conversion of binary data into attributed string is not supported on this platform";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *a6 = [v12 initWithDomain:@"NSAttributedStringConversionErrorDomain" code:1 userInfo:v13];

    v11 = objc_alloc_init(MEMORY[0x277CCA898]);
  }

  v14 = v11;

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)dataFromAttributedString:(id)a3 range:(_NSRange)a4 documentAttributes:(id)a5 error:(id *)a6
{
  length = a4.length;
  location = a4.location;
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  if (objc_opt_respondsToSelector())
  {
    v12 = [v10 dataFromRange:location documentAttributes:length error:{v11, a6}];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Conversion of attributed string into binary data is not supported on this platform";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a6 = [v13 initWithDomain:@"NSAttributedStringConversionErrorDomain" code:1 userInfo:v14];

    v12 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v15 = v12;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (BOOL)containsAttachments:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() instancesRespondToSelector:sel_containsAttachments])
  {
    v4 = [v3 containsAttachments];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end