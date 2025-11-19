@interface RequestThrottleRecord
- (BOOL)isEqual:(id)a3;
- (RequestThrottleRecord)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RequestThrottleRecord

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v9 = 1;
      goto LABEL_17;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      itemID = self->_itemID;
      v8 = v6->_itemID;
      if (itemID == v8)
      {
        goto LABEL_8;
      }

      v9 = 0;
      if (itemID && v8)
      {
        if ([(NSString *)itemID isEqual:?])
        {
LABEL_8:
          externalVersionID = self->_externalVersionID;
          v11 = v6->_externalVersionID;
          if (externalVersionID == v11)
          {
            v9 = 1;
          }

          else
          {
            v9 = 0;
            if (externalVersionID && v11)
            {
              v9 = [(NSString *)externalVersionID isEqual:?];
            }
          }

          goto LABEL_16;
        }

        v9 = 0;
      }

LABEL_16:

      goto LABEL_17;
    }
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (RequestThrottleRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = RequestThrottleRecord;
  v5 = [(RequestThrottleRecord *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_externalVersionID"];
    externalVersionID = v5->_externalVersionID;
    v5->_externalVersionID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_requestDate"];
    requestDate = v5->_requestDate;
    v5->_requestDate = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (self->_error)
  {
    v4 = ASDErrorWithSafeUserInfo();
    [v5 encodeObject:v4 forKey:@"_error"];
  }

  [v5 encodeObject:self->_itemID forKey:@"_itemID"];
  [v5 encodeObject:self->_externalVersionID forKey:@"_externalVersionID"];
  [v5 encodeObject:self->_requestDate forKey:@"_requestDate"];
}

@end