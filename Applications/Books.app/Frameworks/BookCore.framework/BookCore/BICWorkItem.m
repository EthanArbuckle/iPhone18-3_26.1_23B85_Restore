@interface BICWorkItem
+ (id)workItemWithPriority:(id)a3 description:(id)a4 block:(id)a5;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)priority;
- (void)performWork:(id)a3;
@end

@implementation BICWorkItem

+ (id)workItemWithPriority:(id)a3 description:(id)a4 block:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  v12 = [v8 copy];

  [v11 setWorkBlock:v12];
  [v11 setPrioritizer:v10];

  [v11 setWorkDescription:v9];

  return v11;
}

- (unint64_t)priority
{
  v2 = [(BICWorkItem *)self prioritizer];
  v3 = [v2 priority];

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(BICWorkItem *)self priority];
  v6 = [v4 priority];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (void)performWork:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(BICWorkItem *)self workBlock];
  (v5)[2](v5, v6, self);

  objc_autoreleasePoolPop(v4);
}

- (id)description
{
  v3 = [(BICWorkItem *)self workDescription];
  v4 = [NSString stringWithFormat:@"<BICWorkItem %p %@ pri=%lu>", self, v3, [(BICWorkItem *)self priority]];

  return v4;
}

@end