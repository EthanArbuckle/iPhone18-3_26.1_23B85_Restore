@interface HKNotificationInstruction
- (BOOL)isEqual:(id)a3;
- (HKNotificationInstruction)initWithAction:(int64_t)a3 categoryIdentifier:(id)a4 expirationDate:(id)a5;
- (HKNotificationInstruction)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKNotificationInstruction

- (HKNotificationInstruction)initWithAction:(int64_t)a3 categoryIdentifier:(id)a4 expirationDate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = HKNotificationInstruction;
  v10 = [(HKNotificationInstruction *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_action = a3;
    v12 = [v8 copy];
    categoryIdentifier = v11->_categoryIdentifier;
    v11->_categoryIdentifier = v12;

    v14 = [v9 copy];
    expirationDate = v11->_expirationDate;
    v11->_expirationDate = v14;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromHKNotificationInstructionAction(self->_action);
  v6 = [v3 stringWithFormat:@"<%@:%@ cat:%@ expires:%@", v4, v5, self->_categoryIdentifier, self->_expirationDate];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self->_action != v5->_action)
      {
        goto LABEL_12;
      }

      categoryIdentifier = self->_categoryIdentifier;
      v7 = v5->_categoryIdentifier;
      if (categoryIdentifier != v7 && (!v7 || ![(NSString *)categoryIdentifier isEqualToString:?]))
      {
        goto LABEL_12;
      }

      expirationDate = self->_expirationDate;
      v9 = v5->_expirationDate;
      if (expirationDate == v9)
      {
        v10 = 1;
        goto LABEL_13;
      }

      if (v9)
      {
        v10 = [(NSDate *)expirationDate isEqual:?];
      }

      else
      {
LABEL_12:
        v10 = 0;
      }

LABEL_13:

      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  action = self->_action;
  v4 = [(NSString *)self->_categoryIdentifier hash]^ action;
  return v4 ^ [(NSDate *)self->_expirationDate hash];
}

- (HKNotificationInstruction)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [v5 decodeIntegerForKey:@"action"];
  v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"categoryIdentifier"];
  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];

  if (!v7)
  {
    [(HKNotificationInstruction *)a2 initWithCoder:?];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(HKNotificationInstruction *)a2 initWithCoder:?];
    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKNotificationInstruction *)self initWithAction:v6 categoryIdentifier:v7 expirationDate:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  action = self->_action;
  v5 = a3;
  [v5 encodeInteger:action forKey:@"action"];
  [v5 encodeObject:self->_categoryIdentifier forKey:@"categoryIdentifier"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKNotificationInstruction.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"categoryIdentifier"}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKNotificationInstruction.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"expirationDate"}];
}

@end