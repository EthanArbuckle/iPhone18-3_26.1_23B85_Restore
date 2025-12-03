@interface BKPaginationJob
- (id)init:(unint64_t)init;
- (void)copyState:(id)state;
@end

@implementation BKPaginationJob

- (id)init:(unint64_t)init
{
  v4 = [(BKJob *)self init];
  v5 = v4;
  if (v4)
  {
    [(BKPaginationJob *)v4 setJobGeneration:init];
  }

  return v5;
}

- (void)copyState:(id)state
{
  jobGeneration = [state jobGeneration];

  [(BKPaginationJob *)self setJobGeneration:jobGeneration];
}

@end