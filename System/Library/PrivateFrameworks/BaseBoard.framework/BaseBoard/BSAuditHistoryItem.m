@interface BSAuditHistoryItem
+ (id)itemWithString:(id)a3;
+ (id)itemWithWithFormat:(id)a3;
- (BSAuditHistoryItem)initWithCoder:(id)a3;
- (BSAuditHistoryItem)initWithXPCDictionary:(id)a3;
- (NSString)description;
- (void)_initWithString:(void *)a1;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BSAuditHistoryItem

- (void)_initWithString:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = BSAuditHistoryItem;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF00]);
      v5 = a1[1];
      a1[1] = v4;

      v6 = [v3 copy];
      v7 = a1[2];
      a1[2] = v6;
    }
  }

  return a1;
}

+ (id)itemWithString:(id)a3
{
  v4 = a3;
  v5 = [(BSAuditHistoryItem *)[a1 alloc] _initWithString:v4];

  return v5;
}

+ (id)itemWithWithFormat:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v4 arguments:&v9];
  v6 = [(BSAuditHistoryItem *)[a1 alloc] _initWithString:v5];

  return v6;
}

- (NSString)description
{
  if (self)
  {
    if (qword_1ED44FD60 != -1)
    {
      dispatch_once(&qword_1ED44FD60, &__block_literal_global_6);
    }

    v3 = _MergedGlobals_7;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 stringFromDate:self->_date];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TIME: %@ DESCRIPTION: %@", v4, self->_description];;

  return v5;
}

uint64_t __36__BSAuditHistoryItem__timeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_7;
  _MergedGlobals_7 = v0;

  v2 = _MergedGlobals_7;

  return [v2 setDateFormat:@"HH:mm:ss.SSS"];
}

- (BSAuditHistoryItem)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BSAuditHistoryItem;
  v5 = [(BSAuditHistoryItem *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{BSDeserializeDoubleFromXPCDictionaryWithKey(v4, "date")}];
    date = v5->_date;
    v5->_date = v6;

    v8 = BSCreateDeserializedStringFromXPCDictionaryWithKey(v4, "desc");
    description = v5->_description;
    v5->_description = v8;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v5 = a3;
  [(NSDate *)self->_date timeIntervalSinceReferenceDate];
  BSSerializeDoubleToXPCDictionaryWithKey(v5, "date", v4);
  BSSerializeStringToXPCDictionaryWithKey(self->_description, v5, "desc");
}

- (BSAuditHistoryItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BSAuditHistoryItem;
  v5 = [(BSAuditHistoryItem *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"desc"];
    description = v5->_description;
    v5->_description = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_date forKey:@"date"];
  [v4 encodeObject:self->_description forKey:@"desc"];
}

@end