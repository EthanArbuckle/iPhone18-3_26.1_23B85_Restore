@interface _HKCachedSharedSummary
- (BOOL)isEqual:(id)equal;
- (_HKCachedSharedSummary)initWithSummary:(id)summary;
- (unint64_t)hash;
@end

@implementation _HKCachedSharedSummary

- (_HKCachedSharedSummary)initWithSummary:(id)summary
{
  summaryCopy = summary;
  v9.receiver = self;
  v9.super_class = _HKCachedSharedSummary;
  v6 = [(_HKCachedSharedSummary *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_summary, summary);
  }

  return v7;
}

- (unint64_t)hash
{
  package = [(HKSharedSummary *)self->_summary package];
  v4 = [package hash];
  name = [(HKSharedSummary *)self->_summary name];
  v6 = [name hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uUID = [(HKSharedSummary *)self->_summary UUID];
    summary = [equalCopy summary];
    uUID2 = [summary UUID];
    if ([uUID isEqual:uUID2])
    {
      v8 = 1;
    }

    else
    {
      name = [(HKSharedSummary *)self->_summary name];
      summary2 = [equalCopy summary];
      name2 = [summary2 name];
      if ([name isEqualToString:name2])
      {
        package = [(HKSharedSummary *)self->_summary package];
        summary3 = [equalCopy summary];
        package2 = [summary3 package];
        v8 = [package isEqualToString:package2];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end