@interface THModelStorageRange
+ (id)storageRangeWithStorage:(id)storage range:(_NSRange)range context:(id)context;
- (THModelStorageRange)initWithStorage:(id)storage range:(_NSRange)range context:(id)context;
- (_NSRange)range;
- (void)dealloc;
- (void)setRange:(_NSRange)range;
- (void)setStorage:(id)storage;
@end

@implementation THModelStorageRange

- (void)setStorage:(id)storage
{
  [(THModelStorageRange *)self willModify];
  storageCopy = storage;

  self->mStorage = storage;
}

- (_NSRange)range
{
  p_mRange = &self->mRange;
  location = self->mRange.location;
  length = p_mRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)setRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(THModelStorageRange *)self willModify];
  self->mRange.location = location;
  self->mRange.length = length;
}

+ (id)storageRangeWithStorage:(id)storage range:(_NSRange)range context:(id)context
{
  v5 = [objc_alloc(objc_opt_class()) initWithStorage:storage range:range.location context:{range.length, context}];

  return v5;
}

- (THModelStorageRange)initWithStorage:(id)storage range:(_NSRange)range context:(id)context
{
  length = range.length;
  location = range.location;
  v12.receiver = self;
  v12.super_class = THModelStorageRange;
  v8 = [(THModelStorageRange *)&v12 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    context = [(THModelStorageRange *)v8 context];
    if (context != [storage context])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v9->mStorage = storage;
    v9->mRange.location = location;
    v9->mRange.length = length;
  }

  return v9;
}

- (void)dealloc
{
  self->mStorage = 0;
  v3.receiver = self;
  v3.super_class = THModelStorageRange;
  [(THModelStorageRange *)&v3 dealloc];
}

@end