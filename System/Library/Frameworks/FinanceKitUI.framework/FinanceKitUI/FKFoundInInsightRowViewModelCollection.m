@interface FKFoundInInsightRowViewModelCollection
- (FKFoundInInsightRowViewModelCollection)initWithMailItemsRowViewModels:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FKFoundInInsightRowViewModelCollection

- (FKFoundInInsightRowViewModelCollection)initWithMailItemsRowViewModels:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FKFoundInInsightRowViewModelCollection;
  v5 = [(FKFoundInInsightRowViewModelCollection *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4 copyItems:1];
    mailItemRowViewModels = v5->_mailItemRowViewModels;
    v5->_mailItemRowViewModels = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_mailItemRowViewModels copyItems:1];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

@end