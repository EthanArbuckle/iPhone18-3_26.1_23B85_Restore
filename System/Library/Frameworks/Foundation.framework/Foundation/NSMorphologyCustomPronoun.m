@interface NSMorphologyCustomPronoun
+ (BOOL)_validateCustomPronounWithAccessor:(id)a3 forLanguage:(id)a4 error:(id *)a5;
+ (BOOL)isSupportedForLanguage:(NSString *)language;
+ (NSArray)requiredKeysForLanguage:(NSString *)language;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)_externalRepresentationDictionary;
- (NSMorphologyCustomPronoun)initWithCoder:(id)a3;
- (id)_externalRepresentation;
- (id)_initWithExternalRepresentationDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSMorphologyCustomPronoun

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSMorphologyCustomPronoun;
  [(NSMorphologyCustomPronoun *)&v3 dealloc];
}

- (unint64_t)hash
{
  v3 = [(NSString *)[(NSMorphologyCustomPronoun *)self subjectForm] hash];
  v4 = [(NSString *)[(NSMorphologyCustomPronoun *)self objectForm] hash]^ v3;
  v5 = [(NSString *)[(NSMorphologyCustomPronoun *)self possessiveForm] hash];
  v6 = v4 ^ v5 ^ [(NSString *)[(NSMorphologyCustomPronoun *)self possessiveAdjectiveForm] hash];
  return v6 ^ [(NSString *)[(NSMorphologyCustomPronoun *)self reflexiveForm] hash];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSMorphologyCustomPronoun *)self subjectForm];
    v6 = [a3 subjectForm];
    if (v5 == v6 || (v7 = [(NSString *)v5 isEqual:v6]))
    {
      v8 = [(NSMorphologyCustomPronoun *)self objectForm];
      v9 = [a3 objectForm];
      if (v8 == v9 || (v7 = [(NSString *)v8 isEqual:v9]))
      {
        v10 = [(NSMorphologyCustomPronoun *)self possessiveForm];
        v11 = [a3 possessiveForm];
        if (v10 == v11 || (v7 = [(NSString *)v10 isEqual:v11]))
        {
          v12 = [(NSMorphologyCustomPronoun *)self possessiveAdjectiveForm];
          v13 = [a3 possessiveAdjectiveForm];
          if (v12 == v13 || (v7 = [(NSString *)v12 isEqual:v13]))
          {
            v14 = [(NSMorphologyCustomPronoun *)self reflexiveForm];
            v15 = [a3 reflexiveForm];
            if (v14 == v15)
            {
              LOBYTE(v7) = 1;
            }

            else
            {

              LOBYTE(v7) = [(NSString *)v14 isEqual:v15];
            }
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)isSupportedForLanguage:(NSString *)language
{
  if ([(NSString *)language length]< 2 || [[(NSString *)language substringToIndex:2] caseInsensitiveCompare:@"en"])
  {
    return 0;
  }

  if ([(NSString *)language length]== 2 || [(NSString *)language characterAtIndex:2]== 45)
  {
    return 1;
  }

  return [(NSString *)language characterAtIndex:2]== 95;
}

+ (NSArray)requiredKeysForLanguage:(NSString *)language
{
  if ([a1 isSupportedForLanguage:language])
  {
    return &unk_1EEF57EC0;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[1] = [(NSString *)[(NSMorphologyCustomPronoun *)self subjectForm] copy];
  v4[2] = [(NSString *)[(NSMorphologyCustomPronoun *)self objectForm] copy];
  v4[3] = [(NSString *)[(NSMorphologyCustomPronoun *)self possessiveForm] copy];
  v4[4] = [(NSString *)[(NSMorphologyCustomPronoun *)self possessiveAdjectiveForm] copy];
  v4[5] = [(NSString *)[(NSMorphologyCustomPronoun *)self reflexiveForm] copy];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_subjectForm forKey:@"subjectForm"];
  [a3 encodeObject:self->_objectForm forKey:@"objectForm"];
  [a3 encodeObject:self->_possessiveForm forKey:@"possessiveForm"];
  [a3 encodeObject:self->_possessiveAdjectiveForm forKey:@"possessiveAdjectiveForm"];
  reflexiveForm = self->_reflexiveForm;

  [a3 encodeObject:reflexiveForm forKey:@"reflexiveForm"];
}

- (NSMorphologyCustomPronoun)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSMorphologyCustomPronoun;
  v4 = [(NSMorphologyCustomPronoun *)&v6 init];
  if (v4)
  {
    v4->_subjectForm = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"subjectForm", "copy"}];
    v4->_objectForm = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"objectForm", "copy"}];
    v4->_possessiveForm = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"possessiveForm", "copy"}];
    v4->_possessiveAdjectiveForm = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"possessiveAdjectiveForm", "copy"}];
    v4->_reflexiveForm = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"reflexiveForm", "copy"}];
  }

  return v4;
}

- (id)_initWithExternalRepresentationDictionary:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSMorphologyCustomPronoun;
  v4 = [(NSMorphologyCustomPronoun *)&v11 init];
  if (v4)
  {
    v5 = [a3 objectForKeyedSubscript:@"subjectForm"];
    if (v5 && (_NSIsNSString() & 1) == 0 || (v6 = [a3 objectForKeyedSubscript:@"objectForm"]) != 0 && (_NSIsNSString() & 1) == 0 || (v7 = objc_msgSend(a3, "objectForKeyedSubscript:", @"possessiveForm")) != 0 && (_NSIsNSString() & 1) == 0 || (v8 = objc_msgSend(a3, "objectForKeyedSubscript:", @"possessiveAdjectiveForm")) != 0 && (_NSIsNSString() & 1) == 0 || (v9 = objc_msgSend(a3, "objectForKeyedSubscript:", @"reflexiveForm")) != 0 && (_NSIsNSString() & 1) == 0)
    {

      return 0;
    }

    else
    {
      v4->_subjectForm = [v5 copy];
      v4->_objectForm = [v6 copy];
      v4->_possessiveForm = [v7 copy];
      v4->_possessiveAdjectiveForm = [v8 copy];
      v4->_reflexiveForm = [v9 copy];
    }
  }

  return v4;
}

- (NSDictionary)_externalRepresentationDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:-[NSMorphologyCustomPronoun subjectForm](self forKeyedSubscript:{"subjectForm"), @"subjectForm"}];
  [v3 setObject:-[NSMorphologyCustomPronoun objectForm](self forKeyedSubscript:{"objectForm"), @"objectForm"}];
  [v3 setObject:-[NSMorphologyCustomPronoun possessiveForm](self forKeyedSubscript:{"possessiveForm"), @"possessiveForm"}];
  [v3 setObject:-[NSMorphologyCustomPronoun possessiveAdjectiveForm](self forKeyedSubscript:{"possessiveAdjectiveForm"), @"possessiveAdjectiveForm"}];
  [v3 setObject:-[NSMorphologyCustomPronoun reflexiveForm](self forKeyedSubscript:{"reflexiveForm"), @"reflexiveForm"}];

  return v3;
}

- (id)_externalRepresentation
{
  v2 = [(NSMorphologyCustomPronoun *)self _externalRepresentationDictionary];

  return [NSJSONSerialization dataWithJSONObject:v2 options:0 error:0];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSMorphologyCustomPronoun;
  return [NSString stringWithFormat:@"%@ { subject: '%@', object: '%@', possessive: '%@', possessive adjective: '%@', reflexive: '%@' }", [(NSMorphologyCustomPronoun *)&v3 description], [(NSMorphologyCustomPronoun *)self subjectForm], [(NSMorphologyCustomPronoun *)self objectForm], [(NSMorphologyCustomPronoun *)self possessiveForm], [(NSMorphologyCustomPronoun *)self possessiveAdjectiveForm], [(NSMorphologyCustomPronoun *)self reflexiveForm]];
}

+ (BOOL)_validateCustomPronounWithAccessor:(id)a3 forLanguage:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  if ([NSMorphologyCustomPronoun isSupportedForLanguage:a4])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [NSMorphologyCustomPronoun requiredKeysForLanguage:a4];
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        v14 = (*(a3 + 2))(a3, v13);
        if (!v14 || v14 == [MEMORY[0x1E695DFB0] null])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v22 count:16];
          result = 1;
          if (v10)
          {
            goto LABEL_4;
          }

          return result;
        }
      }

      if (!a5)
      {
        return 0;
      }

      v20 = @"NSInvalidValue";
      v21 = v13;
      v16 = MEMORY[0x1E695DF20];
      v17 = &v21;
      v18 = &v20;
      goto LABEL_16;
    }

    return 1;
  }

  else
  {
    if (a5)
    {
      v27 = @"NSInvalidValue";
      v28[0] = @"self";
      v16 = MEMORY[0x1E695DF20];
      v17 = v28;
      v18 = &v27;
LABEL_16:
      v19 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 1024, [v16 dictionaryWithObjects:v17 forKeys:v18 count:{1, v20, v21}]);
      result = 0;
      *a5 = v19;
      return result;
    }

    return 0;
  }
}

@end