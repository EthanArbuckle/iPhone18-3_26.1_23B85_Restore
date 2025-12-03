@interface _INPBSearchForBillsIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForBillsIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addBills:(id)bills;
- (void)encodeWithCoder:(id)coder;
- (void)setBills:(id)bills;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForBillsIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_bills count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_bills;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"bills"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    bills = [(_INPBSearchForBillsIntentResponse *)self bills];
    bills2 = [equalCopy bills];
    v7 = bills2;
    if ((bills != 0) != (bills2 == 0))
    {
      bills3 = [(_INPBSearchForBillsIntentResponse *)self bills];
      if (!bills3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = bills3;
      bills4 = [(_INPBSearchForBillsIntentResponse *)self bills];
      bills5 = [equalCopy bills];
      v12 = [bills4 isEqual:bills5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForBillsIntentResponse allocWithZone:](_INPBSearchForBillsIntentResponse init];
  v6 = [(NSArray *)self->_bills copyWithZone:zone];
  [(_INPBSearchForBillsIntentResponse *)v5 setBills:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForBillsIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForBillsIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForBillsIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_bills;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addBills:(id)bills
{
  billsCopy = bills;
  bills = self->_bills;
  v8 = billsCopy;
  if (!bills)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_bills;
    self->_bills = array;

    billsCopy = v8;
    bills = self->_bills;
  }

  [(NSArray *)bills addObject:billsCopy];
}

- (void)setBills:(id)bills
{
  v4 = [bills mutableCopy];
  bills = self->_bills;
  self->_bills = v4;

  MEMORY[0x1EEE66BB8](v4, bills);
}

@end