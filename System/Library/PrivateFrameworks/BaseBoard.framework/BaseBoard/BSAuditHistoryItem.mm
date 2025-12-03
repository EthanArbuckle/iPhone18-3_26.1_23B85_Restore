@interface BSAuditHistoryItem
+ (id)itemWithString:(id)string;
+ (id)itemWithWithFormat:(id)format;
- (BSAuditHistoryItem)initWithCoder:(id)coder;
- (BSAuditHistoryItem)initWithXPCDictionary:(id)dictionary;
- (NSString)description;
- (void)_initWithString:(void *)string;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BSAuditHistoryItem

- (void)_initWithString:(void *)string
{
  v3 = a2;
  if (string)
  {
    v9.receiver = string;
    v9.super_class = BSAuditHistoryItem;
    string = objc_msgSendSuper2(&v9, sel_init);
    if (string)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF00]);
      v5 = string[1];
      string[1] = v4;

      v6 = [v3 copy];
      v7 = string[2];
      string[2] = v6;
    }
  }

  return string;
}

+ (id)itemWithString:(id)string
{
  stringCopy = string;
  v5 = [(BSAuditHistoryItem *)[self alloc] _initWithString:stringCopy];

  return v5;
}

+ (id)itemWithWithFormat:(id)format
{
  formatCopy = format;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:formatCopy arguments:&v9];
  v6 = [(BSAuditHistoryItem *)[self alloc] _initWithString:v5];

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

- (BSAuditHistoryItem)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = BSAuditHistoryItem;
  v5 = [(BSAuditHistoryItem *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{BSDeserializeDoubleFromXPCDictionaryWithKey(dictionaryCopy, "date")}];
    date = v5->_date;
    v5->_date = v6;

    v8 = BSCreateDeserializedStringFromXPCDictionaryWithKey(dictionaryCopy, "desc");
    description = v5->_description;
    v5->_description = v8;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(NSDate *)self->_date timeIntervalSinceReferenceDate];
  BSSerializeDoubleToXPCDictionaryWithKey(dictionaryCopy, "date", v4);
  BSSerializeStringToXPCDictionaryWithKey(self->_description, dictionaryCopy, "desc");
}

- (BSAuditHistoryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BSAuditHistoryItem;
  v5 = [(BSAuditHistoryItem *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"desc"];
    description = v5->_description;
    v5->_description = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeObject:self->_description forKey:@"desc"];
}

@end