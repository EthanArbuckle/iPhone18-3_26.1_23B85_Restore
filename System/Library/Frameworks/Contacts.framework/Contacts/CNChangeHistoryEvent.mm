@interface CNChangeHistoryEvent
+ (unint64_t)instanceSortOrder;
- (CNChangeHistoryEvent)initWithCoder:(id)coder;
- (id)description;
- (int64_t)compare:(id)compare;
- (int64_t)comparisonResultBetweenClasses:(id)classes;
- (void)acceptEventVisitor:(id)visitor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryEvent

- (id)description
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (void)acceptEventVisitor:(id)visitor
{
  v4 = visitor;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = [(CNChangeHistoryEvent *)self comparisonResultBetweenClasses:compareCopy];
  if (!v5)
  {
    v5 = [(CNChangeHistoryEvent *)self comparisonResultWithinSameClass:compareCopy];
  }

  return v5;
}

- (int64_t)comparisonResultBetweenClasses:(id)classes
{
  classesCopy = classes;
  instanceSortOrder = [objc_opt_class() instanceSortOrder];
  v5 = objc_opt_class();

  instanceSortOrder2 = [v5 instanceSortOrder];
  if (instanceSortOrder < instanceSortOrder2)
  {
    return -1;
  }

  else
  {
    return instanceSortOrder > instanceSortOrder2;
  }
}

+ (unint64_t)instanceSortOrder
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

@end