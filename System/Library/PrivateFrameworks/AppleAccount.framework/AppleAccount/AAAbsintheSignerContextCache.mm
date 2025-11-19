@interface AAAbsintheSignerContextCache
+ (AAAbsintheSignerContextCache)cacheWithContext:(id)a3;
- (AAAbsintheSignerContextCache)init;
- (AAAbsintheSignerContextCache)initWithContext:(id)a3;
@end

@implementation AAAbsintheSignerContextCache

+ (AAAbsintheSignerContextCache)cacheWithContext:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithContext:v4];

  return v5;
}

- (AAAbsintheSignerContextCache)init
{
  [(AAAbsintheSignerContextCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (AAAbsintheSignerContextCache)initWithContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = AAAbsintheSignerContextCache;
  v6 = [(AAAbsintheSignerContextCache *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    creationDate = v6->_creationDate;
    v6->_creationDate = v7;

    objc_storeStrong(&v6->_context, a3);
  }

  return v6;
}

@end