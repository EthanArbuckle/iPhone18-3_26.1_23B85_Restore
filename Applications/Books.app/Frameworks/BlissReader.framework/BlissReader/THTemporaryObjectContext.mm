@interface THTemporaryObjectContext
+ (id)temporaryContextForDocumentContext:(id)context;
- (THTemporaryObjectContext)initWithDelegate:(id)delegate documentContext:(id)context;
- (void)dealloc;
@end

@implementation THTemporaryObjectContext

+ (id)temporaryContextForDocumentContext:(id)context
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (!result)
  {
    v6 = [[self alloc] initWithDelegate:objc_msgSend([TSPTemporaryObjectContextDelegate alloc] documentContext:{"initWithPackageURL:", 0), context}];

    return v6;
  }

  return result;
}

- (THTemporaryObjectContext)initWithDelegate:(id)delegate documentContext:(id)context
{
  v7.receiver = self;
  v7.super_class = THTemporaryObjectContext;
  v5 = [(THTemporaryObjectContext *)&v7 initWithDelegate:delegate];
  if (v5)
  {
    v5->_documentContext = context;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THTemporaryObjectContext;
  [(THTemporaryObjectContext *)&v3 dealloc];
}

@end