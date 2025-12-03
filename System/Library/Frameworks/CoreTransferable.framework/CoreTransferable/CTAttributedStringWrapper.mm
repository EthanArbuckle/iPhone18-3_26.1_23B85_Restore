@interface CTAttributedStringWrapper
+ (BOOL)containsAttachments:(id)attachments;
+ (id)attributedStringFromData:(id)data options:(id)options documentAttributes:(id *)attributes error:(id *)error;
+ (id)dataFromAttributedString:(id)string range:(_NSRange)range documentAttributes:(id)attributes error:(id *)error;
@end

@implementation CTAttributedStringWrapper

+ (id)attributedStringFromData:(id)data options:(id)options documentAttributes:(id *)attributes error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  optionsCopy = options;
  if ([objc_opt_class() instancesRespondToSelector:sel_initWithData_options_documentAttributes_error_])
  {
    v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithData:dataCopy options:optionsCopy documentAttributes:attributes error:error];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Conversion of binary data into attributed string is not supported on this platform";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v12 initWithDomain:@"NSAttributedStringConversionErrorDomain" code:1 userInfo:v13];

    v11 = objc_alloc_init(MEMORY[0x277CCA898]);
  }

  v14 = v11;

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)dataFromAttributedString:(id)string range:(_NSRange)range documentAttributes:(id)attributes error:(id *)error
{
  length = range.length;
  location = range.location;
  v19[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  attributesCopy = attributes;
  if (objc_opt_respondsToSelector())
  {
    v12 = [stringCopy dataFromRange:location documentAttributes:length error:{attributesCopy, error}];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Conversion of attributed string into binary data is not supported on this platform";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *error = [v13 initWithDomain:@"NSAttributedStringConversionErrorDomain" code:1 userInfo:v14];

    v12 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v15 = v12;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (BOOL)containsAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  if ([objc_opt_class() instancesRespondToSelector:sel_containsAttachments])
  {
    containsAttachments = [attachmentsCopy containsAttachments];
  }

  else
  {
    containsAttachments = 0;
  }

  return containsAttachments;
}

@end