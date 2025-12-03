@interface MMMarkdown
+ (id)HTMLStringWithMarkdown:(id)markdown extensions:(unint64_t)extensions fromSelector:(SEL)selector error:(id *)error;
@end

@implementation MMMarkdown

+ (id)HTMLStringWithMarkdown:(id)markdown extensions:(unint64_t)extensions fromSelector:(SEL)selector error:(id *)error
{
  markdownCopy = markdown;
  if (!markdownCopy)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(selector);
    v20 = [v16 stringWithFormat:@"[%@ %@]: nil argument for markdown", v18, v19];

    v21 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v20 userInfo:0];
    objc_exception_throw(v21);
  }

  v10 = markdownCopy;
  if ([markdownCopy length])
  {
    v11 = [[MMParser alloc] initWithExtensions:extensions];
    v12 = objc_opt_new();
    v13 = [(MMParser *)v11 parseMarkdown:v10 error:error];
    v14 = [v12 generateHTML:v13];
  }

  else
  {
    v14 = &stru_2850323E8;
  }

  return v14;
}

@end