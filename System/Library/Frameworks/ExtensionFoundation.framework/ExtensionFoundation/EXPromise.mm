@interface EXPromise
@end

@implementation EXPromise

id __28___EXPromise_initWithCoder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[_EXPromiseManager sharedInstance];
  v7 = [v6 resolveObjectOfClasses:v5 forIdentifier:*(a1 + 32) endpoint:*(a1 + 40) error:a3];

  return v7;
}

@end