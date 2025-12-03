@interface MMDocument
+ (id)documentWithMarkdown:(id)markdown;
- (MMDocument)initWithMarkdown:(id)markdown;
- (void)addElement:(id)element;
@end

@implementation MMDocument

- (void)addElement:(id)element
{
  elementCopy = element;
  [(MMDocument *)self willChangeValueForKey:@"elements"];
  [(NSMutableArray *)self->_elements addObject:elementCopy];

  [(MMDocument *)self didChangeValueForKey:@"elements"];
}

- (MMDocument)initWithMarkdown:(id)markdown
{
  markdownCopy = markdown;
  v11.receiver = self;
  v11.super_class = MMDocument;
  v6 = [(MMDocument *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_markdown, markdown);
    v8 = objc_opt_new();
    elements = v7->_elements;
    v7->_elements = v8;
  }

  return v7;
}

+ (id)documentWithMarkdown:(id)markdown
{
  markdownCopy = markdown;
  v4 = [objc_alloc(objc_opt_class()) initWithMarkdown:markdownCopy];

  return v4;
}

@end