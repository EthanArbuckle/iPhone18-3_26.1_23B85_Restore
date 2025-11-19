@interface THTemporaryObjectContext
+ (id)temporaryContextForDocumentContext:(id)a3;
- (THTemporaryObjectContext)initWithDelegate:(id)a3 documentContext:(id)a4;
- (void)dealloc;
@end

@implementation THTemporaryObjectContext

+ (id)temporaryContextForDocumentContext:(id)a3
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (!result)
  {
    v6 = [[a1 alloc] initWithDelegate:objc_msgSend([TSPTemporaryObjectContextDelegate alloc] documentContext:{"initWithPackageURL:", 0), a3}];

    return v6;
  }

  return result;
}

- (THTemporaryObjectContext)initWithDelegate:(id)a3 documentContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = THTemporaryObjectContext;
  v5 = [(THTemporaryObjectContext *)&v7 initWithDelegate:a3];
  if (v5)
  {
    v5->_documentContext = a4;
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