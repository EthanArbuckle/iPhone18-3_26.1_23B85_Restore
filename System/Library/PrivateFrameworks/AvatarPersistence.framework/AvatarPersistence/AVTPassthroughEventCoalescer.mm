@interface AVTPassthroughEventCoalescer
- (void)eventDidOccur:(id)a3;
@end

@implementation AVTPassthroughEventCoalescer

- (void)eventDidOccur:(id)a3
{
  v6 = a3;
  v4 = [(AVTPassthroughEventCoalescer *)self handler];
  v4[2]();

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 1);
    v5 = v6;
  }
}

@end