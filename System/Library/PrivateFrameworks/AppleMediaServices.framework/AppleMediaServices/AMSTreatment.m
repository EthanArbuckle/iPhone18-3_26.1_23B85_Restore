@interface AMSTreatment
- (AMSTreatment)initWithCoder:(id)a3;
- (AMSTreatment)initWithEndDate:(id)a3 identifier:(id)a4 startDate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSTreatment

- (AMSTreatment)initWithEndDate:(id)a3 identifier:(id)a4 startDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AMSTreatment;
  v12 = [(AMSTreatment *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endDate, a3);
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_participationType = -2;
    objc_storeStrong(&v13->_startDate, a5);
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = [(AMSTreatment *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;

      if (!v7 || (v8 = [(AMSTreatment *)self participationType], v8 != [(AMSTreatment *)v7 participationType]))
      {
        v10 = 0;
        goto LABEL_10;
      }

      v6 = [(AMSTreatment *)self identifier];
      v9 = [(AMSTreatment *)v7 identifier];
      v10 = [(AMSTreatment *)v6 isEqualToString:v9];
    }

    else
    {
      v7 = 0;
      v10 = 0;
    }

LABEL_10:
    goto LABEL_11;
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSTreatment *)self endDate];
  [v4 encodeObject:v5 forKey:@"endDate"];

  v6 = [(AMSTreatment *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  [v4 encodeInteger:-[AMSTreatment participationType](self forKey:{"participationType"), @"participationType"}];
  v7 = [(AMSTreatment *)self startDate];
  [v4 encodeObject:v7 forKey:@"startDate"];
}

- (AMSTreatment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v8 = [(AMSTreatment *)self initWithEndDate:v5 identifier:v6 startDate:v7];
  if (v8)
  {
    v8->_participationType = [v4 decodeIntegerForKey:@"participationType"];
  }

  return v8;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"endDate";
  v3 = [(AMSTreatment *)self endDate];
  v10[0] = v3;
  v9[1] = @"identifier";
  v4 = [(AMSTreatment *)self identifier];
  v10[1] = v4;
  v9[2] = @"participationType";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSTreatment participationType](self, "participationType")}];
  v10[2] = v5;
  v9[3] = @"startDate";
  v6 = [(AMSTreatment *)self startDate];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end