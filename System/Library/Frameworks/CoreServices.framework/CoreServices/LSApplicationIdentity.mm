@interface LSApplicationIdentity
+ (BOOL)personaWithUniqueString:(id)string getPersonaType:(unint64_t *)type error:(id *)error;
+ (id)bundleIdentifierForIdentityString:(id)string error:(id *)error;
+ (id)enumeratorWithOptions:(unint64_t)options;
+ (id)identityStringsForApplicationWithBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (LSApplicationIdentity)initWithBundleIdentifier:(id)identifier URL:(id)l personaUniqueString:(id)string personaType:(unint64_t)type;
- (LSApplicationIdentity)initWithCoder:(id)coder;
- (LSApplicationIdentity)initWithIdentityBookmark:(id)bookmark identityString:(id)string personaUniqueString:(id)uniqueString personaType:(unint64_t)type;
- (LSApplicationIdentity)initWithIdentityString:(id)string;
- (LSApplicationIdentity)initWithIdentityString:(id)string parsedIdentityStringDictionary:(id)dictionary error:(id *)error;
- (id)findApplicationRecordFetchingPlaceholder:(int64_t)placeholder error:(id *)error;
- (id)initForRecord:(id)record personaWithAttributes:(id)attributes;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSApplicationIdentity

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = LSApplicationIdentity;
  [(LSBundleIdentity *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:objc_msgSend(objc_opt_class() forKey:{"classVersion"), @"version"}];
  [coderCopy encodeObject:self->_identityBookmark forKey:@"identityBookmark"];
}

- (LSApplicationIdentity)initWithIdentityString:(id)string parsedIdentityStringDictionary:(id)dictionary error:(id *)error
{
  stringCopy = string;
  dictionaryCopy = dictionary;
  v10 = objc_opt_class();
  v11 = [dictionaryCopy objectForKey:@"b"];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (v11)
    {
LABEL_9:
      v15 = v12;
      goto LABEL_14;
    }
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      goto LABEL_9;
    }
  }

  v16 = _LSDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [LSApplicationIdentity initWithIdentityString:stringCopy parsedIdentityStringDictionary:v16 error:?];
  }

  v15 = 0;
LABEL_14:
  v17 = objc_opt_class();
  v18 = [dictionaryCopy objectForKey:@"p"];
  v19 = v18;
  if (v17 && v18 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v19 = 0;
  }

  v20 = objc_opt_class();
  v21 = [dictionaryCopy objectForKey:@"pt"];
  v22 = v21;
  if (v20 && v21 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v22 = 0;
  }

  v23 = objc_opt_class();
  v24 = [dictionaryCopy objectForKey:@"v"];
  v25 = v24;
  if (v23 && v24 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v25 = 0;
  }

  if (!v15 || (v19 == 0) == (v22 != 0))
  {

    v27 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, 0, "[LSApplicationIdentity initWithIdentityString:parsedIdentityStringDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/RunIdentity/LSApplicationIdentity.mm", 319);
  }

  else
  {
    if (v22)
    {
      unsignedIntegerValue = [v22 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 4;
    }

    v33.receiver = self;
    v33.super_class = LSApplicationIdentity;
    v31 = [(LSBundleIdentity *)&v33 initWithIdentityString:stringCopy personaUniqueString:v19 personaType:unsignedIntegerValue];
    v30 = v31;
    if (v31)
    {
      objc_storeStrong(&v31->_identityBookmark, v15);
      v28 = 0;
      goto LABEL_37;
    }

    v27 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 12, 0, "[LSApplicationIdentity initWithIdentityString:parsedIdentityStringDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/RunIdentity/LSApplicationIdentity.mm", 314);
  }

  v28 = v27;
  if (error)
  {
    v29 = v27;
    v30 = 0;
    *error = v28;
  }

  else
  {
    v30 = 0;
  }

LABEL_37:

  return v30;
}

- (LSApplicationIdentity)initWithIdentityString:(id)string
{
  stringCopy = string;
  v6 = MEMORY[0x1E696ACB0];
  v7 = [stringCopy dataUsingEncoding:4];
  v15 = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:&v15];
  v9 = v15;

  if (!v8)
  {

LABEL_5:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:0 file:@"LSApplicationIdentity.mm" lineNumber:339 description:{@"Bad input initializing with identity string: %@", v9}];

    v10 = 0;
    goto LABEL_6;
  }

  v14 = v9;
  v10 = [(LSApplicationIdentity *)self initWithIdentityString:stringCopy parsedIdentityStringDictionary:v8 error:&v14];
  v11 = v14;

  v9 = v11;
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v10;
}

- (LSApplicationIdentity)initWithBundleIdentifier:(id)identifier URL:(id)l personaUniqueString:(id)string personaType:(unint64_t)type
{
  identifierCopy = identifier;
  lCopy = l;
  stringCopy = string;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSApplicationIdentity.mm" lineNumber:364 description:@"bundleIdentifier was nil when creating application identity"];
  }

  if (stringCopy)
  {
    if (type == 4)
    {
      v14 = _LSDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(LSApplicationIdentity *)v14 initWithBundleIdentifier:v15 URL:v16 personaUniqueString:v17 personaType:v18, v19, v20, v21];
      }
    }

    v22 = identifierCopy;
    v24 = [[_LSPersonaWithAttributes alloc] initWithPersonaType:type personaUniqueString:stringCopy];
  }

  else
  {
    if (type != 4)
    {
      v25 = _LSDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        [(LSApplicationIdentity *)v25 initWithBundleIdentifier:v26 URL:v27 personaUniqueString:v28 personaType:v29, v30, v31, v32];
      }
    }

    v33 = identifierCopy;
    v24 = 0;
  }

  v34 = computeIdentityString(identifierCopy, v24, v23);
  v35 = [(LSApplicationIdentity *)self initWithIdentityBookmark:identifierCopy identityString:v34 personaUniqueString:stringCopy personaType:type];

  return v35;
}

- (LSApplicationIdentity)initWithIdentityBookmark:(id)bookmark identityString:(id)string personaUniqueString:(id)uniqueString personaType:(unint64_t)type
{
  bookmarkCopy = bookmark;
  stringCopy = string;
  uniqueStringCopy = uniqueString;
  v17.receiver = self;
  v17.super_class = LSApplicationIdentity;
  v13 = [(LSBundleIdentity *)&v17 initWithIdentityString:stringCopy personaUniqueString:uniqueStringCopy personaType:type];
  if (v13)
  {
    v14 = [bookmarkCopy copy];
    identityBookmark = v13->_identityBookmark;
    v13->_identityBookmark = v14;
  }

  return v13;
}

- (LSApplicationIdentity)initWithCoder:(id)coder
{
  v20[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = LSApplicationIdentity;
  v5 = [(LSBundleIdentity *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy ls_decodeObjectOfClasses:v8 forKey:@"identityBookmark"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v9)
      {
        Property = objc_getProperty(v9, v10, 16, 1);
      }

      else
      {
        Property = 0;
      }

      v12 = Property;
    }

    else
    {
      v12 = v9;
    }

    identityBookmark = v5->_identityBookmark;
    v5->_identityBookmark = v12;

    if (!v5->_identityBookmark)
    {

      v19 = *MEMORY[0x1E696A278];
      v20[0] = @"could not decode identity (missing bundleID?)";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v15 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 118, v14, "[LSApplicationIdentity initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/RunIdentity/LSApplicationIdentity.mm", 414);
      [coderCopy failWithError:v15];

      v5 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = LSApplicationIdentity;
  return [(NSString *)self->_identityBookmark hash]^ __ROR8__([(LSBundleIdentity *)&v3 hash], 56);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v8.receiver = self;
    v8.super_class = LSApplicationIdentity;
    if ([(LSBundleIdentity *)&v8 isEqual:v5])
    {
      v6 = [(NSString *)self->_identityBookmark isEqual:v5[4]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initForRecord:(id)record personaWithAttributes:(id)attributes
{
  recordCopy = record;
  attributesCopy = attributes;
  v8 = computeIdentityBookmark(recordCopy);
  v9 = computeIdentityString(recordCopy, attributesCopy);
  personaUniqueString = [(_LSPersonaWithAttributes *)attributesCopy personaUniqueString];
  if (attributesCopy)
  {
    personaType = [(_LSPersonaWithAttributes *)attributesCopy personaType];
  }

  else
  {
    personaType = 4;
  }

  v12 = [(LSApplicationIdentity *)self initWithIdentityBookmark:v8 identityString:v9 personaUniqueString:personaUniqueString personaType:personaType];

  return v12;
}

- (id)findApplicationRecordFetchingPlaceholder:(int64_t)placeholder error:(id *)error
{
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:self->_identityBookmark fetchingPlaceholder:placeholder error:error];
  v6 = v5;
  if (error && !v5)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[LSApplicationIdentity findApplicationRecordFetchingPlaceholder:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/RunIdentity/LSApplicationIdentity.mm", 471);
  }

  return v6;
}

+ (id)enumeratorWithOptions:(unint64_t)options
{
  v3 = [[LSApplicationIdentityEnumerator alloc] initWithAppEnumerationOptions:options];

  return v3;
}

+ (id)bundleIdentifierForIdentityString:(id)string error:(id *)error
{
  v5 = MEMORY[0x1E696ACB0];
  v6 = [string dataUsingEncoding:4];
  v14 = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:&v14];
  v8 = v14;

  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = objc_opt_class();
  v10 = [v7 objectForKey:@"b"];
  v11 = v10;
  if (v9 && v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    v11 = 0;
  }

  if (error && !v11)
  {
    v12 = v8;
    *error = v8;
  }

  return v11;
}

+ (id)identityStringsForApplicationWithBundleIdentifier:(id)identifier error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v18 = 0;
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifierCopy fetchingPlaceholder:1 error:&v18];
  v6 = v18;
  if (!v5)
  {
    v8 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  identities = [(LSApplicationRecord *)v5 identities];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(identities, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = identities;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        identityString = [*(*(&v19 + 1) + 8 * i) identityString];
        [v8 addObject:identityString];
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if (error)
  {
LABEL_12:
    if (!v8)
    {
      v14 = v6;
      *error = v6;
    }
  }

LABEL_14:

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (BOOL)personaWithUniqueString:(id)string getPersonaType:(unint64_t *)type error:(id *)error
{
  stringCopy = string;
  v8 = [getUMUserPersonaAttributesClass() personaAttributesForPersonaUniqueString:stringCopy withError:error];
  v9 = v8;
  if (v8)
  {
    *type = LSPersonaTypeForPersonaAttributes(v8);
  }

  return v9 != 0;
}

- (void)initWithIdentityString:(uint64_t)a1 parsedIdentityStringDictionary:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "No bundleID in identity string %@; need one for an identity on this platform", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end