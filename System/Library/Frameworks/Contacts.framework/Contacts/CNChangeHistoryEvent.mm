@interface CNChangeHistoryEvent
+ (unint64_t)instanceSortOrder;
- (CNChangeHistoryEvent)initWithCoder:(id)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (int64_t)comparisonResultBetweenClasses:(id)a3;
- (void)acceptEventVisitor:(id)visitor;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNChangeHistoryEvent

- (id)description
{
  v2 = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (void)acceptEventVisitor:(id)visitor
{
  v4 = visitor;
  v5 = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CNChangeHistoryEvent *)self comparisonResultBetweenClasses:v4];
  if (!v5)
  {
    v5 = [(CNChangeHistoryEvent *)self comparisonResultWithinSameClass:v4];
  }

  return v5;
}

- (int64_t)comparisonResultBetweenClasses:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() instanceSortOrder];
  v5 = objc_opt_class();

  v6 = [v5 instanceSortOrder];
  if (v4 < v6)
  {
    return -1;
  }

  else
  {
    return v4 > v6;
  }
}

+ (unint64_t)instanceSortOrder
{
  v2 = a1;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

@end