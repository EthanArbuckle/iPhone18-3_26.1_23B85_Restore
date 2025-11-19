@interface _HKCachedSharedSummary
- (BOOL)isEqual:(id)a3;
- (_HKCachedSharedSummary)initWithSummary:(id)a3;
- (unint64_t)hash;
@end

@implementation _HKCachedSharedSummary

- (_HKCachedSharedSummary)initWithSummary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _HKCachedSharedSummary;
  v6 = [(_HKCachedSharedSummary *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_summary, a3);
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HKSharedSummary *)self->_summary package];
  v4 = [v3 hash];
  v5 = [(HKSharedSummary *)self->_summary name];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HKSharedSummary *)self->_summary UUID];
    v6 = [v4 summary];
    v7 = [v6 UUID];
    if ([v5 isEqual:v7])
    {
      v8 = 1;
    }

    else
    {
      v9 = [(HKSharedSummary *)self->_summary name];
      v10 = [v4 summary];
      v11 = [v10 name];
      if ([v9 isEqualToString:v11])
      {
        v15 = [(HKSharedSummary *)self->_summary package];
        v12 = [v4 summary];
        v13 = [v12 package];
        v8 = [v15 isEqualToString:v13];
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