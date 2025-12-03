@interface FKSaveOrder
+ (void)saveOrderAtURL:(id)l completion:(id)completion;
@end

@implementation FKSaveOrder

+ (void)saveOrderAtURL:(id)l completion:(id)completion
{
  v5 = MEMORY[0x277CBEA90];
  v11 = 0;
  completionCopy = completion;
  v7 = [v5 dataWithContentsOfURL:l options:1 error:&v11];
  v8 = v11;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    [_TtC12FinanceKitUI17SaveOrderProvider saveOrderWithData:v7 completionHandler:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 1, v8);
  }
}

@end