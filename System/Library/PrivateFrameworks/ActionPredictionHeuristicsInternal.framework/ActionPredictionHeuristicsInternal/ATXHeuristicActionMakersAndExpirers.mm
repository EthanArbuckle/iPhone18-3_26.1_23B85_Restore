@interface ATXHeuristicActionMakersAndExpirers
- (ATXHeuristicActionMakersAndExpirers)initWithActionMakers:(id)a3 expirers:(id)a4;
- (ATXHeuristicActionMakersAndExpirers)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXHeuristicActionMakersAndExpirers

- (ATXHeuristicActionMakersAndExpirers)initWithActionMakers:(id)a3 expirers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXHeuristicActionMakersAndExpirers;
  v9 = [(ATXHeuristicActionMakersAndExpirers *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionMakers, a3);
    objc_storeStrong(&v10->_expirers, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  actionMakers = self->_actionMakers;
  v5 = a3;
  [v5 encodeObject:actionMakers forKey:@"actionMakers"];
  [v5 encodeObject:self->_expirers forKey:@"expirers"];
}

- (ATXHeuristicActionMakersAndExpirers)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"actionMakers"];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"expirers"];

  v13 = [(ATXHeuristicActionMakersAndExpirers *)self initWithActionMakers:v8 expirers:v12];
  return v13;
}

@end