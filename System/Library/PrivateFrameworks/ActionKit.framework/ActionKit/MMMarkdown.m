@interface MMMarkdown
+ (id)HTMLStringWithMarkdown:(id)a3 extensions:(unint64_t)a4 fromSelector:(SEL)a5 error:(id *)a6;
@end

@implementation MMMarkdown

+ (id)HTMLStringWithMarkdown:(id)a3 extensions:(unint64_t)a4 fromSelector:(SEL)a5 error:(id *)a6
{
  v9 = a3;
  if (!v9)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a5);
    v20 = [v16 stringWithFormat:@"[%@ %@]: nil argument for markdown", v18, v19];

    v21 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v20 userInfo:0];
    objc_exception_throw(v21);
  }

  v10 = v9;
  if ([v9 length])
  {
    v11 = [[MMParser alloc] initWithExtensions:a4];
    v12 = objc_opt_new();
    v13 = [(MMParser *)v11 parseMarkdown:v10 error:a6];
    v14 = [v12 generateHTML:v13];
  }

  else
  {
    v14 = &stru_2850323E8;
  }

  return v14;
}

@end