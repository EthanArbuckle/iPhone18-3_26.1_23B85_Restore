@interface ASCSignpostSpan
- (ASCSignpostSpan)init;
- (ASCSignpostSpan)initWithCoder:(id)a3;
- (NSDateInterval)dateRange;
- (NSSet)supplementaryTags;
- (id)description;
- (void)addSupplementaryTag:(unint64_t)a3;
- (void)beginEmitting;
- (void)encodeWithCoder:(id)a3;
- (void)endEmitting;
@end

@implementation ASCSignpostSpan

- (ASCSignpostSpan)init
{
  +[ASCEligibility assertCurrentProcessEligibility];
  v7.receiver = self;
  v7.super_class = ASCSignpostSpan;
  v3 = [(ASCSignpostSpan *)&v7 init];
  if (v3)
  {
    v3->_primaryTag = ASCSignpostTagUnique();
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mutableSupplementaryTags = v3->_mutableSupplementaryTags;
    v3->_mutableSupplementaryTags = v4;
  }

  return v3;
}

- (ASCSignpostSpan)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"supplementaryTags"];
  if (v8)
  {
    v18.receiver = self;
    v18.super_class = ASCSignpostSpan;
    v9 = [(ASCSignpostSpan *)&v18 init];
    if (v9)
    {
      v9->_primaryTag = [v4 decodeInt64ForKey:@"primaryTag"];
      v10 = [v8 mutableCopy];
      mutableSupplementaryTags = v9->_mutableSupplementaryTags;
      v9->_mutableSupplementaryTags = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
      startDate = v9->_startDate;
      v9->_startDate = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
      endDate = v9->_endDate;
      v9->_endDate = v14;
    }

    self = v9;
    v16 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCSignpostSpan initWithCoder:];
    }

    v16 = 0;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[ASCSignpostSpan primaryTag](self forKey:{"primaryTag"), @"primaryTag"}];
  v5 = [(ASCSignpostSpan *)self supplementaryTags];
  [v4 encodeObject:v5 forKey:@"supplementaryTags"];

  v6 = [(ASCSignpostSpan *)self startDate];
  [v4 encodeObject:v6 forKey:@"startDate"];

  v7 = [(ASCSignpostSpan *)self endDate];
  [v4 encodeObject:v7 forKey:@"endDate"];
}

- (NSSet)supplementaryTags
{
  v2 = [(ASCSignpostSpan *)self mutableSupplementaryTags];
  v3 = [v2 copy];

  return v3;
}

- (NSDateInterval)dateRange
{
  v3 = [(ASCSignpostSpan *)self startDate];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(ASCSignpostSpan *)self endDate];
  if (!v5)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [(ASCSignpostSpan *)self endDate];
  v8 = [(ASCSignpostSpan *)self startDate];
  v9 = [v7 compare:v8];

  if (v9 == -1)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = objc_alloc(MEMORY[0x277CCA970]);
  v4 = [(ASCSignpostSpan *)self startDate];
  v11 = [(ASCSignpostSpan *)self endDate];
  v12 = [v10 initWithStartDate:v4 endDate:v11];

LABEL_7:
LABEL_8:

  return v12;
}

- (void)addSupplementaryTag:(unint64_t)a3
{
  v5 = [(ASCSignpostSpan *)self mutableSupplementaryTags];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v5 addObject:v4];
}

- (void)beginEmitting
{
  v3 = [(ASCSignpostSpan *)self startDate];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v4 initWithName:*MEMORY[0x277CBE658] reason:@"Signpost span has already begun" userInfo:0]);
  }

  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1.0];
  [(ASCSignpostSpan *)self setStartDate:v5];
}

- (void)endEmitting
{
  v3 = [(ASCSignpostSpan *)self startDate];

  if (!v3)
  {
    v5 = objc_alloc(MEMORY[0x277CBEAD8]);
    v6 = *MEMORY[0x277CBE658];
    v7 = @"Cannot end signpost span which has not begun";
    goto LABEL_8;
  }

  v4 = [(ASCSignpostSpan *)self endDate];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEAD8]);
    v6 = *MEMORY[0x277CBE658];
    v7 = @"Signpost span has already ended";
LABEL_8:
    objc_exception_throw([v5 initWithName:v6 reason:v7 userInfo:0]);
  }

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
  [(ASCSignpostSpan *)self setEndDate:v8];
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  [(ASCDescriber *)v3 addUInt64:[(ASCSignpostSpan *)self primaryTag] withName:@"primaryTag"];
  v4 = [(ASCSignpostSpan *)self mutableSupplementaryTags];
  [(ASCDescriber *)v3 addObject:v4 withName:@"supplementaryTags"];

  v5 = [(ASCSignpostSpan *)self startDate];
  [(ASCDescriber *)v3 addObject:v5 withName:@"startDate"];

  v6 = [(ASCSignpostSpan *)self endDate];
  [(ASCDescriber *)v3 addObject:v6 withName:@"endDate"];

  v7 = [(ASCDescriber *)v3 finalizeDescription];

  return v7;
}

@end