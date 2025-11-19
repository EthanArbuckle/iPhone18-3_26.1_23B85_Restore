@interface CTSweetgumUsagePlanItemMessages
- (BOOL)isEqual:(id)a3;
- (CTSweetgumUsagePlanItemMessages)init;
- (CTSweetgumUsagePlanItemMessages)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSweetgumUsagePlanItemMessages

- (CTSweetgumUsagePlanItemMessages)init
{
  v7.receiver = self;
  v7.super_class = CTSweetgumUsagePlanItemMessages;
  v2 = [(CTSweetgumUsagePlanItemMessages *)&v7 init];
  v3 = v2;
  if (v2)
  {
    capacity = v2->_capacity;
    v2->_capacity = 0;

    used = v3->_used;
    v3->_used = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTSweetgumUsagePlanItemMessages *)self capacity];
  [v3 appendFormat:@", capacity=%@", v4];

  v5 = [(CTSweetgumUsagePlanItemMessages *)self used];
  [v3 appendFormat:@", used=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(CTSweetgumUsagePlanItemMessages *)self capacity];
      v8 = [(CTSweetgumUsagePlanItemMessages *)v6 capacity];
      if (v7 == v8 || (-[CTSweetgumUsagePlanItemMessages capacity](self, "capacity"), v3 = objc_claimAutoreleasedReturnValue(), -[CTSweetgumUsagePlanItemMessages capacity](v6, "capacity"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToString:v4]))
      {
        v10 = [(CTSweetgumUsagePlanItemMessages *)self used];
        v11 = [(CTSweetgumUsagePlanItemMessages *)v6 used];
        if (v10 == v11)
        {
          v9 = 1;
        }

        else
        {
          v12 = [(CTSweetgumUsagePlanItemMessages *)self used];
          v13 = [(CTSweetgumUsagePlanItemMessages *)v6 used];
          v9 = [v12 isEqualToString:v13];
        }

        if (v7 == v8)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  capacity = self->_capacity;
  v5 = a3;
  [v5 encodeObject:capacity forKey:@"capacity"];
  [v5 encodeObject:self->_used forKey:@"used"];
}

- (CTSweetgumUsagePlanItemMessages)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTSweetgumUsagePlanItemMessages;
  v5 = [(CTSweetgumUsagePlanItemMessages *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capacity"];
    capacity = v5->_capacity;
    v5->_capacity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"used"];
    used = v5->_used;
    v5->_used = v8;
  }

  return v5;
}

@end