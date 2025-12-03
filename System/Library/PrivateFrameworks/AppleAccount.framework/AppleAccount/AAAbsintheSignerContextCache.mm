@interface AAAbsintheSignerContextCache
+ (AAAbsintheSignerContextCache)cacheWithContext:(id)context;
- (AAAbsintheSignerContextCache)init;
- (AAAbsintheSignerContextCache)initWithContext:(id)context;
@end

@implementation AAAbsintheSignerContextCache

+ (AAAbsintheSignerContextCache)cacheWithContext:(id)context
{
  contextCopy = context;
  v5 = [[self alloc] initWithContext:contextCopy];

  return v5;
}

- (AAAbsintheSignerContextCache)init
{
  [(AAAbsintheSignerContextCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (AAAbsintheSignerContextCache)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = AAAbsintheSignerContextCache;
  v6 = [(AAAbsintheSignerContextCache *)&v10 init];
  if (v6)
  {
    date = [MEMORY[0x1E695DF00] date];
    creationDate = v6->_creationDate;
    v6->_creationDate = date;

    objc_storeStrong(&v6->_context, context);
  }

  return v6;
}

@end