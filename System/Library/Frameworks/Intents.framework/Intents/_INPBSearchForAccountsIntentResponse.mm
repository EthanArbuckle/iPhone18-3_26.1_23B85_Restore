@interface _INPBSearchForAccountsIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForAccountsIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addAccounts:(id)accounts;
- (void)encodeWithCoder:(id)coder;
- (void)setAccounts:(id)accounts;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForAccountsIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_accounts count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_accounts;
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

    [dictionary setObject:array forKeyedSubscript:@"accounts"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    accounts = [(_INPBSearchForAccountsIntentResponse *)self accounts];
    accounts2 = [equalCopy accounts];
    v7 = accounts2;
    if ((accounts != 0) != (accounts2 == 0))
    {
      accounts3 = [(_INPBSearchForAccountsIntentResponse *)self accounts];
      if (!accounts3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = accounts3;
      accounts4 = [(_INPBSearchForAccountsIntentResponse *)self accounts];
      accounts5 = [equalCopy accounts];
      v12 = [accounts4 isEqual:accounts5];

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
  v5 = [+[_INPBSearchForAccountsIntentResponse allocWithZone:](_INPBSearchForAccountsIntentResponse init];
  v6 = [(NSArray *)self->_accounts copyWithZone:zone];
  [(_INPBSearchForAccountsIntentResponse *)v5 setAccounts:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForAccountsIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForAccountsIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForAccountsIntentResponse *)self initWithData:selfCopy];

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
  v5 = self->_accounts;
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

- (void)addAccounts:(id)accounts
{
  accountsCopy = accounts;
  accounts = self->_accounts;
  v8 = accountsCopy;
  if (!accounts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_accounts;
    self->_accounts = array;

    accountsCopy = v8;
    accounts = self->_accounts;
  }

  [(NSArray *)accounts addObject:accountsCopy];
}

- (void)setAccounts:(id)accounts
{
  v4 = [accounts mutableCopy];
  accounts = self->_accounts;
  self->_accounts = v4;

  MEMORY[0x1EEE66BB8](v4, accounts);
}

@end