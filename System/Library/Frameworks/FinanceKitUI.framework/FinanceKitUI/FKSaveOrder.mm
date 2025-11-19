@interface FKSaveOrder
+ (void)saveOrderAtURL:(id)a3 completion:(id)a4;
@end

@implementation FKSaveOrder

+ (void)saveOrderAtURL:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CBEA90];
  v11 = 0;
  v6 = a4;
  v7 = [v5 dataWithContentsOfURL:a3 options:1 error:&v11];
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
    [_TtC12FinanceKitUI17SaveOrderProvider saveOrderWithData:v7 completionHandler:v6];
  }

  else
  {
    v6[2](v6, 1, v8);
  }
}

@end