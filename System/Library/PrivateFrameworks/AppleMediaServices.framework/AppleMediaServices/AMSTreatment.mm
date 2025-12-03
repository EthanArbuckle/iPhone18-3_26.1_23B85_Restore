@interface AMSTreatment
- (AMSTreatment)initWithCoder:(id)coder;
- (AMSTreatment)initWithEndDate:(id)date identifier:(id)identifier startDate:(id)startDate;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSTreatment

- (AMSTreatment)initWithEndDate:(id)date identifier:(id)identifier startDate:(id)startDate
{
  dateCopy = date;
  identifierCopy = identifier;
  startDateCopy = startDate;
  v17.receiver = self;
  v17.super_class = AMSTreatment;
  v12 = [(AMSTreatment *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endDate, date);
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_participationType = -2;
    objc_storeStrong(&v13->_startDate, startDate);
  }

  return v13;
}

- (unint64_t)hash
{
  identifier = [(AMSTreatment *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    identifier = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = identifier;

      if (!v7 || (v8 = [(AMSTreatment *)self participationType], v8 != [(AMSTreatment *)v7 participationType]))
      {
        v10 = 0;
        goto LABEL_10;
      }

      identifier = [(AMSTreatment *)self identifier];
      identifier2 = [(AMSTreatment *)v7 identifier];
      v10 = [(AMSTreatment *)identifier isEqualToString:identifier2];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  endDate = [(AMSTreatment *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  identifier = [(AMSTreatment *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[AMSTreatment participationType](self forKey:{"participationType"), @"participationType"}];
  startDate = [(AMSTreatment *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startDate"];
}

- (AMSTreatment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v8 = [(AMSTreatment *)self initWithEndDate:v5 identifier:v6 startDate:v7];
  if (v8)
  {
    v8->_participationType = [coderCopy decodeIntegerForKey:@"participationType"];
  }

  return v8;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"endDate";
  endDate = [(AMSTreatment *)self endDate];
  v10[0] = endDate;
  v9[1] = @"identifier";
  identifier = [(AMSTreatment *)self identifier];
  v10[1] = identifier;
  v9[2] = @"participationType";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSTreatment participationType](self, "participationType")}];
  v10[2] = v5;
  v9[3] = @"startDate";
  startDate = [(AMSTreatment *)self startDate];
  v10[3] = startDate;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end