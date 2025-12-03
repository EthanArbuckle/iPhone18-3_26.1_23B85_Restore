@interface ASCSignpostSpan
- (ASCSignpostSpan)init;
- (ASCSignpostSpan)initWithCoder:(id)coder;
- (NSDateInterval)dateRange;
- (NSSet)supplementaryTags;
- (id)description;
- (void)addSupplementaryTag:(unint64_t)tag;
- (void)beginEmitting;
- (void)encodeWithCoder:(id)coder;
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

- (ASCSignpostSpan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"supplementaryTags"];
  if (v8)
  {
    v18.receiver = self;
    v18.super_class = ASCSignpostSpan;
    v9 = [(ASCSignpostSpan *)&v18 init];
    if (v9)
    {
      v9->_primaryTag = [coderCopy decodeInt64ForKey:@"primaryTag"];
      v10 = [v8 mutableCopy];
      mutableSupplementaryTags = v9->_mutableSupplementaryTags;
      v9->_mutableSupplementaryTags = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
      startDate = v9->_startDate;
      v9->_startDate = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
      endDate = v9->_endDate;
      v9->_endDate = v14;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCSignpostSpan initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[ASCSignpostSpan primaryTag](self forKey:{"primaryTag"), @"primaryTag"}];
  supplementaryTags = [(ASCSignpostSpan *)self supplementaryTags];
  [coderCopy encodeObject:supplementaryTags forKey:@"supplementaryTags"];

  startDate = [(ASCSignpostSpan *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startDate"];

  endDate = [(ASCSignpostSpan *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];
}

- (NSSet)supplementaryTags
{
  mutableSupplementaryTags = [(ASCSignpostSpan *)self mutableSupplementaryTags];
  v3 = [mutableSupplementaryTags copy];

  return v3;
}

- (NSDateInterval)dateRange
{
  startDate = [(ASCSignpostSpan *)self startDate];
  if (!startDate)
  {
    goto LABEL_5;
  }

  startDate3 = startDate;
  endDate = [(ASCSignpostSpan *)self endDate];
  if (!endDate)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v6 = endDate;
  endDate2 = [(ASCSignpostSpan *)self endDate];
  startDate2 = [(ASCSignpostSpan *)self startDate];
  v9 = [endDate2 compare:startDate2];

  if (v9 == -1)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = objc_alloc(MEMORY[0x277CCA970]);
  startDate3 = [(ASCSignpostSpan *)self startDate];
  endDate3 = [(ASCSignpostSpan *)self endDate];
  v12 = [v10 initWithStartDate:startDate3 endDate:endDate3];

LABEL_7:
LABEL_8:

  return v12;
}

- (void)addSupplementaryTag:(unint64_t)tag
{
  mutableSupplementaryTags = [(ASCSignpostSpan *)self mutableSupplementaryTags];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:tag];
  [mutableSupplementaryTags addObject:v4];
}

- (void)beginEmitting
{
  startDate = [(ASCSignpostSpan *)self startDate];

  if (startDate)
  {
    v4 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v4 initWithName:*MEMORY[0x277CBE658] reason:@"Signpost span has already begun" userInfo:0]);
  }

  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1.0];
  [(ASCSignpostSpan *)self setStartDate:v5];
}

- (void)endEmitting
{
  startDate = [(ASCSignpostSpan *)self startDate];

  if (!startDate)
  {
    v5 = objc_alloc(MEMORY[0x277CBEAD8]);
    v6 = *MEMORY[0x277CBE658];
    v7 = @"Cannot end signpost span which has not begun";
    goto LABEL_8;
  }

  endDate = [(ASCSignpostSpan *)self endDate];

  if (endDate)
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
  mutableSupplementaryTags = [(ASCSignpostSpan *)self mutableSupplementaryTags];
  [(ASCDescriber *)v3 addObject:mutableSupplementaryTags withName:@"supplementaryTags"];

  startDate = [(ASCSignpostSpan *)self startDate];
  [(ASCDescriber *)v3 addObject:startDate withName:@"startDate"];

  endDate = [(ASCSignpostSpan *)self endDate];
  [(ASCDescriber *)v3 addObject:endDate withName:@"endDate"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end