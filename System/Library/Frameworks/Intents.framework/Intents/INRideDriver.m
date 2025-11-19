@interface INRideDriver
- (BOOL)isEqual:(id)a3;
- (INRideDriver)initWithCoder:(id)a3;
- (INRideDriver)initWithHandle:(NSString *)handle displayName:(NSString *)displayName image:(INImage *)image rating:(NSString *)rating phoneNumber:(NSString *)phoneNumber;
- (INRideDriver)initWithHandle:(NSString *)handle nameComponents:(NSPersonNameComponents *)nameComponents image:(INImage *)image rating:(NSString *)rating phoneNumber:(NSString *)phoneNumber;
- (INRideDriver)initWithPhoneNumber:(NSString *)phoneNumber nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image rating:(NSString *)rating;
- (NSString)phoneNumber;
- (id)_dictionaryRepresentation;
- (id)_initWithUserInput:(id)a3 personHandle:(id)a4 nameComponents:(id)a5 displayName:(id)a6 image:(id)a7 contactIdentifier:(id)a8 rating:(id)a9 aliases:(id)a10;
- (id)_initWithUserInput:(id)a3 personHandle:(id)a4 nameComponents:(id)a5 displayName:(id)a6 image:(id)a7 contactIdentifier:(id)a8 rating:(id)a9 phoneNumber:(id)a10;
- (unint64_t)hash;
- (void)_injectProxiesForImages:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INRideDriver

- (void)_injectProxiesForImages:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(INRideDriver *)self copy];
    v9 = [(INPerson *)self image];
    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __74__INRideDriver_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      v10[3] = &unk_1E7285CD0;
      v10[4] = v8;
      v11 = v7;
      v6[2](v6, v9, v10);
    }

    else
    {
      (*(v7 + 2))(v7, v8);
    }
  }
}

uint64_t __74__INRideDriver_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setImage:a2];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)_dictionaryRepresentation
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v13.receiver = self;
  v13.super_class = INRideDriver;
  v4 = [(INPerson *)&v13 _dictionaryRepresentation];
  v5 = [v3 dictionaryWithDictionary:v4];

  v14[0] = @"rating";
  rating = self->_rating;
  v7 = rating;
  if (!rating)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = @"phoneNumber";
  v15[0] = v7;
  v8 = [(INRideDriver *)self phoneNumber];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v5 addEntriesFromDictionary:v10];

  if (!v8)
  {
  }

  if (!rating)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INRideDriver;
  v4 = a3;
  [(INPerson *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_rating forKey:{@"rating", v5.receiver, v5.super_class}];
}

- (INRideDriver)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = INRideDriver;
  v5 = [(INPerson *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rating"];
    rating = v5->_rating;
    v5->_rating = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = INRideDriver, [(INPerson *)&v9 isEqual:v4]))
  {
    v5 = v4;
    rating = self->_rating;
    v7 = rating == v5[17] || [(NSString *)rating isEqual:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = INRideDriver;
  v3 = [(INPerson *)&v5 hash];
  return [(NSString *)self->_rating hash]^ v3;
}

- (id)_initWithUserInput:(id)a3 personHandle:(id)a4 nameComponents:(id)a5 displayName:(id)a6 image:(id)a7 contactIdentifier:(id)a8 rating:(id)a9 phoneNumber:(id)a10
{
  v41[1] = *MEMORY[0x1E69E9840];
  v17 = a10;
  v18 = v17;
  if (v17)
  {
    v40 = v17;
    v19 = a9;
    v20 = a8;
    v21 = a7;
    v22 = a6;
    v23 = a5;
    v24 = a4;
    v25 = a3;
    v26 = [[INPersonHandle alloc] initWithValue:v40 type:2];
    v41[0] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v28 = [(INRideDriver *)self _initWithUserInput:v25 personHandle:v24 nameComponents:v23 displayName:v22 image:v21 contactIdentifier:v20 rating:v19 aliases:v27];

    v29 = v28;
    v18 = v40;
  }

  else
  {
    v30 = a9;
    v31 = a8;
    v32 = a7;
    v33 = a6;
    v34 = a5;
    v35 = a4;
    v36 = a3;
    v37 = [(INRideDriver *)self _initWithUserInput:v36 personHandle:v35 nameComponents:v34 displayName:v33 image:v32 contactIdentifier:v31 rating:v30 aliases:0];

    v29 = v37;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)_initWithUserInput:(id)a3 personHandle:(id)a4 nameComponents:(id)a5 displayName:(id)a6 image:(id)a7 contactIdentifier:(id)a8 rating:(id)a9 aliases:(id)a10
{
  v17 = a9;
  v24.receiver = self;
  v24.super_class = INRideDriver;
  v23 = 0;
  v22 = 0;
  v18 = [(INPerson *)&v24 _initWithUserInput:a3 personHandle:a4 nameComponents:a5 displayName:a6 image:a7 contactIdentifier:a8 customIdentifier:0 relationship:0 aliases:a10 suggestionType:0 isMe:v22 scoredAlternatives:0 sourceAppBundleIdentifier:0 phonemeData:0 isContactSuggestion:v23 searchProvider:0];
  if (v18)
  {
    v19 = [v17 copy];
    v20 = v18[17];
    v18[17] = v19;
  }

  return v18;
}

- (INRideDriver)initWithPhoneNumber:(NSString *)phoneNumber nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image rating:(NSString *)rating
{
  v12 = rating;
  v13 = image;
  v14 = displayName;
  v15 = nameComponents;
  v16 = phoneNumber;
  v17 = [[INPersonHandle alloc] initWithValue:v16 type:2];

  v24.receiver = self;
  v24.super_class = INRideDriver;
  v23 = 0;
  v22 = 0;
  v18 = [(INPerson *)&v24 _initWithUserInput:0 personHandle:v17 nameComponents:v15 displayName:v14 image:v13 contactIdentifier:0 customIdentifier:0 relationship:0 aliases:0 suggestionType:0 isMe:v22 scoredAlternatives:0 sourceAppBundleIdentifier:0 phonemeData:0 isContactSuggestion:v23 searchProvider:0];

  if (v18)
  {
    v19 = [(NSString *)v12 copy];
    v20 = v18->_rating;
    v18->_rating = v19;
  }

  return v18;
}

- (NSString)phoneNumber
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(INPerson *)self personHandle];
  v4 = [v3 value];
  if (v4)
  {
    v5 = v4;
    v6 = [(INPerson *)self personHandle];
    v7 = [v6 type];

    if (v7 == 2)
    {
      v8 = [(INPerson *)self personHandle];
      v9 = v8;
LABEL_16:
      v10 = [v8 value];
      goto LABEL_17;
    }
  }

  else
  {
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(INPerson *)self aliases];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 value];
        if (v14)
        {
          v15 = v14;
          v16 = [v13 type];

          if (v16 == 2)
          {
            v8 = v13;
            goto LABEL_16;
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

- (INRideDriver)initWithHandle:(NSString *)handle nameComponents:(NSPersonNameComponents *)nameComponents image:(INImage *)image rating:(NSString *)rating phoneNumber:(NSString *)phoneNumber
{
  v12 = phoneNumber;
  v13 = rating;
  v14 = image;
  v15 = nameComponents;
  v16 = handle;
  v17 = [[INPersonHandle alloc] initWithValue:v16 type:0];

  v18 = [(INRideDriver *)self initWithPersonHandle:v17 nameComponents:v15 displayName:0 image:v14 rating:v13 phoneNumber:v12];
  return v18;
}

- (INRideDriver)initWithHandle:(NSString *)handle displayName:(NSString *)displayName image:(INImage *)image rating:(NSString *)rating phoneNumber:(NSString *)phoneNumber
{
  v12 = phoneNumber;
  v13 = rating;
  v14 = image;
  v15 = displayName;
  v16 = handle;
  v17 = [[INPersonHandle alloc] initWithValue:v16 type:0];

  v18 = [(INRideDriver *)self initWithPersonHandle:v17 nameComponents:0 displayName:v15 image:v14 rating:v13 phoneNumber:v12];
  return v18;
}

@end