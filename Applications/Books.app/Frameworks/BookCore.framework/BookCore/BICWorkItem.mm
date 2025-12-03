@interface BICWorkItem
+ (id)workItemWithPriority:(id)priority description:(id)description block:(id)block;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)priority;
- (void)performWork:(id)work;
@end

@implementation BICWorkItem

+ (id)workItemWithPriority:(id)priority description:(id)description block:(id)block
{
  blockCopy = block;
  descriptionCopy = description;
  priorityCopy = priority;
  v11 = objc_alloc_init(self);
  v12 = [blockCopy copy];

  [v11 setWorkBlock:v12];
  [v11 setPrioritizer:priorityCopy];

  [v11 setWorkDescription:descriptionCopy];

  return v11;
}

- (unint64_t)priority
{
  prioritizer = [(BICWorkItem *)self prioritizer];
  priority = [prioritizer priority];

  return priority;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  priority = [(BICWorkItem *)self priority];
  priority2 = [compareCopy priority];

  if (priority < priority2)
  {
    return -1;
  }

  else
  {
    return priority > priority2;
  }
}

- (void)performWork:(id)work
{
  workCopy = work;
  v4 = objc_autoreleasePoolPush();
  workBlock = [(BICWorkItem *)self workBlock];
  (workBlock)[2](workBlock, workCopy, self);

  objc_autoreleasePoolPop(v4);
}

- (id)description
{
  workDescription = [(BICWorkItem *)self workDescription];
  v4 = [NSString stringWithFormat:@"<BICWorkItem %p %@ pri=%lu>", self, workDescription, [(BICWorkItem *)self priority]];

  return v4;
}

@end