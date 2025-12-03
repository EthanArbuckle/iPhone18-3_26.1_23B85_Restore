@interface CTSweetgumUsagePlanItemMessages
- (BOOL)isEqual:(id)equal;
- (CTSweetgumUsagePlanItemMessages)init;
- (CTSweetgumUsagePlanItemMessages)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  capacity = [(CTSweetgumUsagePlanItemMessages *)self capacity];
  [v3 appendFormat:@", capacity=%@", capacity];

  used = [(CTSweetgumUsagePlanItemMessages *)self used];
  [v3 appendFormat:@", used=%@", used];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      capacity = [(CTSweetgumUsagePlanItemMessages *)self capacity];
      capacity2 = [(CTSweetgumUsagePlanItemMessages *)equalCopy capacity];
      if (capacity == capacity2 || (-[CTSweetgumUsagePlanItemMessages capacity](self, "capacity"), v3 = objc_claimAutoreleasedReturnValue(), -[CTSweetgumUsagePlanItemMessages capacity](equalCopy, "capacity"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToString:v4]))
      {
        used = [(CTSweetgumUsagePlanItemMessages *)self used];
        used2 = [(CTSweetgumUsagePlanItemMessages *)equalCopy used];
        if (used == used2)
        {
          v9 = 1;
        }

        else
        {
          used3 = [(CTSweetgumUsagePlanItemMessages *)self used];
          used4 = [(CTSweetgumUsagePlanItemMessages *)equalCopy used];
          v9 = [used3 isEqualToString:used4];
        }

        if (capacity == capacity2)
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

- (void)encodeWithCoder:(id)coder
{
  capacity = self->_capacity;
  coderCopy = coder;
  [coderCopy encodeObject:capacity forKey:@"capacity"];
  [coderCopy encodeObject:self->_used forKey:@"used"];
}

- (CTSweetgumUsagePlanItemMessages)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTSweetgumUsagePlanItemMessages;
  v5 = [(CTSweetgumUsagePlanItemMessages *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capacity"];
    capacity = v5->_capacity;
    v5->_capacity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"used"];
    used = v5->_used;
    v5->_used = v8;
  }

  return v5;
}

@end