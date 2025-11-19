@interface MMDocument
+ (id)documentWithMarkdown:(id)a3;
- (MMDocument)initWithMarkdown:(id)a3;
- (void)addElement:(id)a3;
@end

@implementation MMDocument

- (void)addElement:(id)a3
{
  v4 = a3;
  [(MMDocument *)self willChangeValueForKey:@"elements"];
  [(NSMutableArray *)self->_elements addObject:v4];

  [(MMDocument *)self didChangeValueForKey:@"elements"];
}

- (MMDocument)initWithMarkdown:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MMDocument;
  v6 = [(MMDocument *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_markdown, a3);
    v8 = objc_opt_new();
    elements = v7->_elements;
    v7->_elements = v8;
  }

  return v7;
}

+ (id)documentWithMarkdown:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithMarkdown:v3];

  return v4;
}

@end