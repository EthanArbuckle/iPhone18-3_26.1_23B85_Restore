@interface INRideDriver
- (BOOL)isEqual:(id)equal;
- (INRideDriver)initWithCoder:(id)coder;
- (INRideDriver)initWithHandle:(NSString *)handle displayName:(NSString *)displayName image:(INImage *)image rating:(NSString *)rating phoneNumber:(NSString *)phoneNumber;
- (INRideDriver)initWithHandle:(NSString *)handle nameComponents:(NSPersonNameComponents *)nameComponents image:(INImage *)image rating:(NSString *)rating phoneNumber:(NSString *)phoneNumber;
- (INRideDriver)initWithPhoneNumber:(NSString *)phoneNumber nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image rating:(NSString *)rating;
- (NSString)phoneNumber;
- (id)_dictionaryRepresentation;
- (id)_initWithUserInput:(id)input personHandle:(id)handle nameComponents:(id)components displayName:(id)name image:(id)image contactIdentifier:(id)identifier rating:(id)rating aliases:(id)self0;
- (id)_initWithUserInput:(id)input personHandle:(id)handle nameComponents:(id)components displayName:(id)name image:(id)image contactIdentifier:(id)identifier rating:(id)rating phoneNumber:(id)self0;
- (unint64_t)hash;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INRideDriver

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [(INRideDriver *)self copy];
    image = [(INPerson *)self image];
    if (image)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __74__INRideDriver_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      v10[3] = &unk_1E7285CD0;
      v10[4] = v8;
      v11 = completionCopy;
      imagesCopy[2](imagesCopy, image, v10);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v8);
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
  _dictionaryRepresentation = [(INPerson *)&v13 _dictionaryRepresentation];
  v5 = [v3 dictionaryWithDictionary:_dictionaryRepresentation];

  v14[0] = @"rating";
  rating = self->_rating;
  null = rating;
  if (!rating)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = @"phoneNumber";
  v15[0] = null;
  phoneNumber = [(INRideDriver *)self phoneNumber];
  null2 = phoneNumber;
  if (!phoneNumber)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v5 addEntriesFromDictionary:v10];

  if (!phoneNumber)
  {
  }

  if (!rating)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INRideDriver;
  coderCopy = coder;
  [(INPerson *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_rating forKey:{@"rating", v5.receiver, v5.super_class}];
}

- (INRideDriver)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = INRideDriver;
  v5 = [(INPerson *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rating"];
    rating = v5->_rating;
    v5->_rating = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = INRideDriver, [(INPerson *)&v9 isEqual:equalCopy]))
  {
    v5 = equalCopy;
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

- (id)_initWithUserInput:(id)input personHandle:(id)handle nameComponents:(id)components displayName:(id)name image:(id)image contactIdentifier:(id)identifier rating:(id)rating phoneNumber:(id)self0
{
  v41[1] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v18 = numberCopy;
  if (numberCopy)
  {
    v40 = numberCopy;
    ratingCopy = rating;
    identifierCopy = identifier;
    imageCopy = image;
    nameCopy = name;
    componentsCopy = components;
    handleCopy = handle;
    inputCopy = input;
    v26 = [[INPersonHandle alloc] initWithValue:v40 type:2];
    v41[0] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v28 = [(INRideDriver *)self _initWithUserInput:inputCopy personHandle:handleCopy nameComponents:componentsCopy displayName:nameCopy image:imageCopy contactIdentifier:identifierCopy rating:ratingCopy aliases:v27];

    v29 = v28;
    v18 = v40;
  }

  else
  {
    ratingCopy2 = rating;
    identifierCopy2 = identifier;
    imageCopy2 = image;
    nameCopy2 = name;
    componentsCopy2 = components;
    handleCopy2 = handle;
    inputCopy2 = input;
    v37 = [(INRideDriver *)self _initWithUserInput:inputCopy2 personHandle:handleCopy2 nameComponents:componentsCopy2 displayName:nameCopy2 image:imageCopy2 contactIdentifier:identifierCopy2 rating:ratingCopy2 aliases:0];

    v29 = v37;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)_initWithUserInput:(id)input personHandle:(id)handle nameComponents:(id)components displayName:(id)name image:(id)image contactIdentifier:(id)identifier rating:(id)rating aliases:(id)self0
{
  ratingCopy = rating;
  v24.receiver = self;
  v24.super_class = INRideDriver;
  v23 = 0;
  v22 = 0;
  v18 = [(INPerson *)&v24 _initWithUserInput:input personHandle:handle nameComponents:components displayName:name image:image contactIdentifier:identifier customIdentifier:0 relationship:0 aliases:aliases suggestionType:0 isMe:v22 scoredAlternatives:0 sourceAppBundleIdentifier:0 phonemeData:0 isContactSuggestion:v23 searchProvider:0];
  if (v18)
  {
    v19 = [ratingCopy copy];
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
  personHandle = [(INPerson *)self personHandle];
  value = [personHandle value];
  if (value)
  {
    v5 = value;
    personHandle2 = [(INPerson *)self personHandle];
    type = [personHandle2 type];

    if (type == 2)
    {
      personHandle3 = [(INPerson *)self personHandle];
      aliases = personHandle3;
LABEL_16:
      value2 = [personHandle3 value];
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
  aliases = [(INPerson *)self aliases];
  value2 = [aliases countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (value2)
  {
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != value2; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(aliases);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        value3 = [v13 value];
        if (value3)
        {
          v15 = value3;
          type2 = [v13 type];

          if (type2 == 2)
          {
            personHandle3 = v13;
            goto LABEL_16;
          }
        }
      }

      value2 = [aliases countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (value2)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v17 = *MEMORY[0x1E69E9840];

  return value2;
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