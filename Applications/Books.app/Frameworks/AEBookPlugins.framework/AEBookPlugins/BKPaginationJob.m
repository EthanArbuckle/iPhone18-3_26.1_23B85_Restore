@interface BKPaginationJob
- (id)init:(unint64_t)a3;
- (void)copyState:(id)a3;
@end

@implementation BKPaginationJob

- (id)init:(unint64_t)a3
{
  v4 = [(BKJob *)self init];
  v5 = v4;
  if (v4)
  {
    [(BKPaginationJob *)v4 setJobGeneration:a3];
  }

  return v5;
}

- (void)copyState:(id)a3
{
  v4 = [a3 jobGeneration];

  [(BKPaginationJob *)self setJobGeneration:v4];
}

@end