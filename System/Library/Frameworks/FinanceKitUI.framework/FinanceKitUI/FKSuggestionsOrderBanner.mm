@interface FKSuggestionsOrderBanner
- (FKSuggestionsOrderBanner)initWithData:(id)data error:(id *)error;
@end

@implementation FKSuggestionsOrderBanner

- (FKSuggestionsOrderBanner)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = FKSuggestionsOrderBanner;
  v7 = [(FKSuggestionsOrderBanner *)&v12 init];
  if (v7 && (v8 = [[_TtC12FinanceKitUI22SuggestionsOrderBanner alloc] init:dataCopy error:error], orderBanner = v7->_orderBanner, v7->_orderBanner = v8, orderBanner, !v7->_orderBanner))
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