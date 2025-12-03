@interface ATXHeuristicActionMakersAndExpirers
- (ATXHeuristicActionMakersAndExpirers)initWithActionMakers:(id)makers expirers:(id)expirers;
- (ATXHeuristicActionMakersAndExpirers)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHeuristicActionMakersAndExpirers

- (ATXHeuristicActionMakersAndExpirers)initWithActionMakers:(id)makers expirers:(id)expirers
{
  makersCopy = makers;
  expirersCopy = expirers;
  v12.receiver = self;
  v12.super_class = ATXHeuristicActionMakersAndExpirers;
  v9 = [(ATXHeuristicActionMakersAndExpirers *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionMakers, makers);
    objc_storeStrong(&v10->_expirers, expirers);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  actionMakers = self->_actionMakers;
  coderCopy = coder;
  [coderCopy encodeObject:actionMakers forKey:@"actionMakers"];
  [coderCopy encodeObject:self->_expirers forKey:@"expirers"];
}

- (ATXHeuristicActionMakersAndExpirers)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"actionMakers"];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"expirers"];

  v13 = [(ATXHeuristicActionMakersAndExpirers *)self initWithActionMakers:v8 expirers:v12];
  return v13;
}

@end