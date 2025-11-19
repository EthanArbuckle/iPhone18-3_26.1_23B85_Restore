@interface CNContactClassifiedHandleStringInterpreter
- (CNContactClassifiedHandleStringInterpreter)init;
- (CNContactClassifiedHandleStringInterpreter)initWithHandleStringClassification:(id)a3;
- (NSArray)emailAddresses;
- (NSArray)phoneNumbers;
- (id)description;
- (void)interpretEmailAddresses;
- (void)interpretPhoneNumbers;
- (void)interpretUnknownsAsEmailAddresses;
- (void)interpretValues;
@end

@implementation CNContactClassifiedHandleStringInterpreter

- (CNContactClassifiedHandleStringInterpreter)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNContactClassifiedHandleStringInterpreter)initWithHandleStringClassification:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CNContactClassifiedHandleStringInterpreter;
  v6 = [(CNContactClassifiedHandleStringInterpreter *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classification, a3);
    v7->_hasBeenInterpreted = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    emailAddressesImpl = v7->_emailAddressesImpl;
    v7->_emailAddressesImpl = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    phoneNumbersImpl = v7->_phoneNumbersImpl;
    v7->_phoneNumbersImpl = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    unconvertableHandles = v7->_unconvertableHandles;
    v7->_unconvertableHandles = v12;

    v14 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"classification" object:self->_classification];
  v5 = [v3 build];

  return v5;
}

- (void)interpretValues
{
  [(CNContactClassifiedHandleStringInterpreter *)self interpretEmailAddresses];
  [(CNContactClassifiedHandleStringInterpreter *)self interpretPhoneNumbers];
  [(CNContactClassifiedHandleStringInterpreter *)self interpretUnknownsAsEmailAddresses];

  [(CNContactClassifiedHandleStringInterpreter *)self setHasBeenInterpreted:1];
}

- (void)interpretEmailAddresses
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CNHandleStringClassification *)self->_classification emailAddresses];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [CNLabeledValue labeledValueWithLabel:0 value:*(*(&v9 + 1) + 8 * v7)];
        [(NSMutableArray *)self->_emailAddressesImpl addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)interpretPhoneNumbers
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(CNHandleStringClassification *)self->_classification phoneNumbers];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    *&v5 = 138412290;
    v13 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [CNPhoneNumber phoneNumberWithStringValue:v9, v13];
        if (v10)
        {
          v11 = [CNLabeledValue labeledValueWithLabel:0 value:v10];
          [(NSMutableArray *)self->_phoneNumbersImpl addObject:v11];
        }

        else
        {
          v12 = +[CNContact os_log];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v13;
            v19 = v9;
            _os_log_error_impl(&dword_1954A0000, v12, OS_LOG_TYPE_ERROR, "Handle “%@” was classified as a phone number, but could not be converted to CNPhoneNumber. Will be treated as an email address.", buf, 0xCu);
          }

          [(NSMutableArray *)self->_unconvertableHandles addObject:v9];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)interpretUnknownsAsEmailAddresses
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNHandleStringClassification *)self->_classification unknown];
  [v3 _cn_each:&__block_literal_global_95];

  v4 = [(CNHandleStringClassification *)self->_classification unknown];
  unconvertableHandles = self->_unconvertableHandles;
  v19[0] = v4;
  v19[1] = unconvertableHandles;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v7 = [v6 _cn_flatten];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [CNLabeledValue labeledValueWithLabel:0 value:*(*(&v14 + 1) + 8 * v12), v14];
        [(NSMutableArray *)self->_emailAddressesImpl addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

void __79__CNContactClassifiedHandleStringInterpreter_interpretUnknownsAsEmailAddresses__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[CNContact os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1954A0000, v3, OS_LOG_TYPE_DEFAULT, "Handle “%@” could not be classified; it will be included as an email address.", &v4, 0xCu);
  }
}

- (NSArray)emailAddresses
{
  if (!self->_hasBeenInterpreted)
  {
    [(CNContactClassifiedHandleStringInterpreter *)self interpretValues];
  }

  emailAddressesImpl = self->_emailAddressesImpl;

  return emailAddressesImpl;
}

- (NSArray)phoneNumbers
{
  if (!self->_hasBeenInterpreted)
  {
    [(CNContactClassifiedHandleStringInterpreter *)self interpretValues];
  }

  phoneNumbersImpl = self->_phoneNumbersImpl;

  return phoneNumbersImpl;
}

@end