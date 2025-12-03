@interface _INPBPaymentMethodList
- (BOOL)isEqual:(id)equal;
- (_INPBPaymentMethodList)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addPaymentMethods:(id)methods;
- (void)encodeWithCoder:(id)coder;
- (void)setPaymentMethods:(id)methods;
- (void)writeTo:(id)to;
@end

@implementation _INPBPaymentMethodList

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  condition = [(_INPBPaymentMethodList *)self condition];
  dictionaryRepresentation = [condition dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"condition"];

  if ([(NSArray *)self->_paymentMethods count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_paymentMethods;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"paymentMethods"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  condition = [(_INPBPaymentMethodList *)self condition];
  condition2 = [equalCopy condition];
  if ((condition != 0) == (condition2 == 0))
  {
    goto LABEL_11;
  }

  condition3 = [(_INPBPaymentMethodList *)self condition];
  if (condition3)
  {
    v8 = condition3;
    condition4 = [(_INPBPaymentMethodList *)self condition];
    condition5 = [equalCopy condition];
    v11 = [condition4 isEqual:condition5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  condition = [(_INPBPaymentMethodList *)self paymentMethods];
  condition2 = [equalCopy paymentMethods];
  if ((condition != 0) != (condition2 == 0))
  {
    paymentMethods = [(_INPBPaymentMethodList *)self paymentMethods];
    if (!paymentMethods)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = paymentMethods;
    paymentMethods2 = [(_INPBPaymentMethodList *)self paymentMethods];
    paymentMethods3 = [equalCopy paymentMethods];
    v16 = [paymentMethods2 isEqual:paymentMethods3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPaymentMethodList allocWithZone:](_INPBPaymentMethodList init];
  v6 = [(_INPBCondition *)self->_condition copyWithZone:zone];
  [(_INPBPaymentMethodList *)v5 setCondition:v6];

  v7 = [(NSArray *)self->_paymentMethods copyWithZone:zone];
  [(_INPBPaymentMethodList *)v5 setPaymentMethods:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPaymentMethodList *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPaymentMethodList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPaymentMethodList *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  condition = [(_INPBPaymentMethodList *)self condition];

  if (condition)
  {
    condition2 = [(_INPBPaymentMethodList *)self condition];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_paymentMethods;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addPaymentMethods:(id)methods
{
  methodsCopy = methods;
  paymentMethods = self->_paymentMethods;
  v8 = methodsCopy;
  if (!paymentMethods)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_paymentMethods;
    self->_paymentMethods = array;

    methodsCopy = v8;
    paymentMethods = self->_paymentMethods;
  }

  [(NSArray *)paymentMethods addObject:methodsCopy];
}

- (void)setPaymentMethods:(id)methods
{
  v4 = [methods mutableCopy];
  paymentMethods = self->_paymentMethods;
  self->_paymentMethods = v4;

  MEMORY[0x1EEE66BB8](v4, paymentMethods);
}

@end