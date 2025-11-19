@interface FKSuggestionsOrderBanner
- (FKSuggestionsOrderBanner)initWithData:(id)a3 error:(id *)a4;
@end

@implementation FKSuggestionsOrderBanner

- (FKSuggestionsOrderBanner)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = FKSuggestionsOrderBanner;
  v7 = [(FKSuggestionsOrderBanner *)&v12 init];
  if (v7 && (v8 = [[_TtC12FinanceKitUI22SuggestionsOrderBanner alloc] init:v6 error:a4], orderBanner = v7->_orderBanner, v7->_orderBanner = v8, orderBanner, !v7->_orderBanner))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

@end