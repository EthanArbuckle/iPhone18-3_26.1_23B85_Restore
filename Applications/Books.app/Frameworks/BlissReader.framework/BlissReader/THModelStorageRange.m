@interface THModelStorageRange
+ (id)storageRangeWithStorage:(id)a3 range:(_NSRange)a4 context:(id)a5;
- (THModelStorageRange)initWithStorage:(id)a3 range:(_NSRange)a4 context:(id)a5;
- (_NSRange)range;
- (void)dealloc;
- (void)setRange:(_NSRange)a3;
- (void)setStorage:(id)a3;
@end

@implementation THModelStorageRange

- (void)setStorage:(id)a3
{
  [(THModelStorageRange *)self willModify];
  v5 = a3;

  self->mStorage = a3;
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

- (void)setRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [(THModelStorageRange *)self willModify];
  self->mRange.location = location;
  self->mRange.length = length;
}

+ (id)storageRangeWithStorage:(id)a3 range:(_NSRange)a4 context:(id)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithStorage:a3 range:a4.location context:{a4.length, a5}];

  return v5;
}

- (THModelStorageRange)initWithStorage:(id)a3 range:(_NSRange)a4 context:(id)a5
{
  length = a4.length;
  location = a4.location;
  v12.receiver = self;
  v12.super_class = THModelStorageRange;
  v8 = [(THModelStorageRange *)&v12 initWithContext:a5];
  v9 = v8;
  if (v8)
  {
    v10 = [(THModelStorageRange *)v8 context];
    if (v10 != [a3 context])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v9->mStorage = a3;
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