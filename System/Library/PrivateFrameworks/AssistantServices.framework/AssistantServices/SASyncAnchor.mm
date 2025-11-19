@interface SASyncAnchor
- (id)description;
@end

@implementation SASyncAnchor

- (id)description
{
  v3 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = SASyncAnchor;
  v4 = [(SASyncAnchor *)&v8 description];
  v5 = [(SASyncAnchor *)self key];
  v6 = [v3 initWithFormat:@"%@ key: %@", v4, v5];

  return v6;
}

@end