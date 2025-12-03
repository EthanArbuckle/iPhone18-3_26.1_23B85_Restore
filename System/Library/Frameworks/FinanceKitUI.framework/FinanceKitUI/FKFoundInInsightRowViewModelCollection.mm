@interface FKFoundInInsightRowViewModelCollection
- (FKFoundInInsightRowViewModelCollection)initWithMailItemsRowViewModels:(id)models;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FKFoundInInsightRowViewModelCollection

- (FKFoundInInsightRowViewModelCollection)initWithMailItemsRowViewModels:(id)models
{
  modelsCopy = models;
  v9.receiver = self;
  v9.super_class = FKFoundInInsightRowViewModelCollection;
  v5 = [(FKFoundInInsightRowViewModelCollection *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:modelsCopy copyItems:1];
    mailItemRowViewModels = v5->_mailItemRowViewModels;
    v5->_mailItemRowViewModels = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_mailItemRowViewModels copyItems:1];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

@end