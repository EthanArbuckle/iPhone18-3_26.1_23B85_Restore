@interface AVTPassthroughEventCoalescer
- (void)eventDidOccur:(id)occur;
@end

@implementation AVTPassthroughEventCoalescer

- (void)eventDidOccur:(id)occur
{
  occurCopy = occur;
  handler = [(AVTPassthroughEventCoalescer *)self handler];
  handler[2]();

  v5 = occurCopy;
  if (occurCopy)
  {
    (*(occurCopy + 2))(occurCopy, 1);
    v5 = occurCopy;
  }
}

@end