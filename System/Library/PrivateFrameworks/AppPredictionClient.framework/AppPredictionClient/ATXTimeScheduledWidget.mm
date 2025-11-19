@interface ATXTimeScheduledWidget
- (ATXTimeScheduledWidget)initWithCoder:(id)a3;
- (ATXTimeScheduledWidget)initWithContainer:(id)a3 kind:(id)a4 extensionId:(id)a5 family:(int64_t)a6 intentDescription:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXTimeScheduledWidget:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTimeScheduledWidget

- (ATXTimeScheduledWidget)initWithContainer:(id)a3 kind:(id)a4 extensionId:(id)a5 family:(int64_t)a6 intentDescription:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = ATXTimeScheduledWidget;
  v16 = [(ATXTimeScheduledWidget *)&v24 init];
  if (v16)
  {
    v17 = [v12 copy];
    container = v16->_container;
    v16->_container = v17;

    v19 = [v13 copy];
    kind = v16->_kind;
    v16->_kind = v19;

    v21 = [v14 copy];
    extensionId = v16->_extensionId;
    v16->_extensionId = v21;

    v16->_family = a6;
    objc_storeStrong(&v16->_intentDescription, a7);
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  kind = self->_kind;
  v5 = a3;
  [v5 encodeObject:kind forKey:@"kind"];
  [v5 encodeObject:self->_extensionId forKey:@"extension"];
  [v5 encodeObject:self->_container forKey:@"container"];
  [v5 encodeInteger:self->_family forKey:@"family"];
  [v5 encodeObject:self->_intentDescription forKey:@"intentDescription"];
}

- (ATXTimeScheduledWidget)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ATXTimeScheduledWidget;
  v5 = [(ATXTimeScheduledWidget *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extension"];
    extensionId = v5->_extensionId;
    v5->_extensionId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    container = v5->_container;
    v5->_container = v10;

    v5->_family = [v4 decodeIntegerForKey:@"family"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentDescription"];
    intentDescription = v5->_intentDescription;
    v5->_intentDescription = v12;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_kind hash];
  v4 = [(NSString *)self->_extensionId hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_container hash];
  return self->_family - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXTimeScheduledWidget *)self isEqualToATXTimeScheduledWidget:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXTimeScheduledWidget:(id)a3
{
  v4 = a3;
  v5 = self->_container;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v8 = self->_kind;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = self->_extensionId;
  v12 = v11;
  if (v11 == v4[3])
  {

    goto LABEL_13;
  }

  v13 = [(NSString *)v11 isEqual:?];

  if (v13)
  {
LABEL_13:
    v14 = self->_family == v4[4];
    goto LABEL_14;
  }

LABEL_11:
  v14 = 0;
LABEL_14:

  return v14;
}

@end