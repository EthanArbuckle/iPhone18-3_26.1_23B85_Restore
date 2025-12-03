@interface NSTermOfAddress
+ (NSTermOfAddress)feminine;
+ (NSTermOfAddress)localizedForLanguageIdentifier:(NSString *)language withPronouns:(NSArray *)pronouns;
+ (NSTermOfAddress)masculine;
+ (NSTermOfAddress)neutral;
+ (id)currentUser;
- (BOOL)_containsPronoun:(id)pronoun withGrammemes:(id)grammemes;
- (BOOL)_isSupportedInLanguage:(id)language;
- (BOOL)isEqual:(id)equal;
- (NSTermOfAddress)initWithCoder:(id)coder;
- (id)_initWithGender:(int64_t)gender addressingUser:(BOOL)user;
- (id)_initWithPronouns:(id)pronouns forLanguage:(id)language;
- (id)_morphologyForLanguage:(id)language;
- (id)_withExtrapolatedPronouns;
- (id)debugDescription;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSTermOfAddress

+ (id)currentUser
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__NSTermOfAddress_currentUser__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  if (qword_1ED43FBC0 != -1)
  {
    dispatch_once(&qword_1ED43FBC0, v3);
  }

  return qword_1ED43FBB8;
}

uint64_t __30__NSTermOfAddress_currentUser__block_invoke(uint64_t a1)
{
  result = [objc_alloc(*(a1 + 32)) _initWithGender:0 addressingUser:1];
  qword_1ED43FBB8 = result;
  return result;
}

- (BOOL)_isSupportedInLanguage:(id)language
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(language);
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = NSTermOfAddress.isSupportedInLanguage(_:)(v8);

  return v4 & 1;
}

- (id)_morphologyForLanguage:(id)language
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(language);
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  NSTermOfAddress.morphologyForLanguage(_:)(v8);

  if (v22)
  {
    type metadata accessor for NSMorphology();
    v15 = v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v9.i64[0] = 0xFFFFFFFFFFLL;
    v9.i64[1] = 0xFFFFFFFFFFLL;
    v10 = vandq_s8(vdupq_n_s64(v23 | (v24 << 32)), v9);
    v11 = vshlq_u64(v10, xmmword_1812E0130);
    *v10.i8 = vmovn_s64(vshlq_u64(v10, xmmword_1812E0140));
    *v11.i8 = vmovn_s64(v11);
    v11.i16[1] = v11.i16[2];
    v11.i16[2] = v10.i16[0];
    v11.i16[3] = v10.i16[2];
    v19 = vmovn_s16(v11).u32[0];
    v12 = &v15;
    NSMorphology.init(_:)(v10.u32[1], *&v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_containsPronoun:(id)pronoun withGrammemes:(id)grammemes
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(pronoun);
  v8 = v7;
  grammemes._rawValue = 0;
  selfCopy = self;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSS_SSTt1g5(grammemes, &grammemes);
  if (grammemes._rawValue)
  {
    v11._countAndFlagsBits = v6;
    v11._object = v8;
    v12 = NSTermOfAddress.containsPronoun(_:grammemes:)(v11, grammemes);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)_withExtrapolatedPronouns
{
  selfCopy = self;
  NSTermOfAddress.withExtrapolatedPronouns()(&v7);

  if (v8 == 4)
  {
    v3 = 0;
  }

  else
  {
    TermOfAddress._bridgeToObjectiveC()(v8);
    v5 = v4;
    outlined destroy of TermOfAddress?(&v7, &_s10Foundation13TermOfAddressVSgMd);
    v3 = v5;
  }

  return v3;
}

- (id)_initWithGender:(int64_t)gender addressingUser:(BOOL)user
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSTermOfAddress;
  result = [(NSTermOfAddress *)&v7 init];
  if (result)
  {
    *(result + 1) = gender;
    *(result + 3) = 0;
    *(result + 4) = 0;
    *(result + 16) = user;
  }

  return result;
}

- (id)_initWithPronouns:(id)pronouns forLanguage:(id)language
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSTermOfAddress;
  v6 = [(NSTermOfAddress *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_gender = 0;
    v6->_language = [language copy];
    v7->_pronouns = [pronouns copy];
    v7->_addressesCurrentUser = 0;
  }

  return v7;
}

+ (NSTermOfAddress)neutral
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__NSTermOfAddress_neutral__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  if (qword_1ED43FB90 != -1)
  {
    dispatch_once(&qword_1ED43FB90, v3);
  }

  return _MergedGlobals_120;
}

uint64_t __26__NSTermOfAddress_neutral__block_invoke(uint64_t a1)
{
  result = [objc_alloc(*(a1 + 32)) _initWithGender:3 addressingUser:0];
  _MergedGlobals_120 = result;
  return result;
}

+ (NSTermOfAddress)feminine
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__NSTermOfAddress_feminine__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  if (qword_1ED43FBA0 != -1)
  {
    dispatch_once(&qword_1ED43FBA0, v3);
  }

  return qword_1ED43FB98;
}

uint64_t __27__NSTermOfAddress_feminine__block_invoke(uint64_t a1)
{
  result = [objc_alloc(*(a1 + 32)) _initWithGender:1 addressingUser:0];
  qword_1ED43FB98 = result;
  return result;
}

+ (NSTermOfAddress)masculine
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__NSTermOfAddress_masculine__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  if (qword_1ED43FBB0 != -1)
  {
    dispatch_once(&qword_1ED43FBB0, v3);
  }

  return qword_1ED43FBA8;
}

uint64_t __28__NSTermOfAddress_masculine__block_invoke(uint64_t a1)
{
  result = [objc_alloc(*(a1 + 32)) _initWithGender:2 addressingUser:0];
  qword_1ED43FBA8 = result;
  return result;
}

+ (NSTermOfAddress)localizedForLanguageIdentifier:(NSString *)language withPronouns:(NSArray *)pronouns
{
  v4 = [[NSTermOfAddress alloc] _initWithPronouns:pronouns forLanguage:language];

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSTermOfAddress;
  [(NSTermOfAddress *)&v3 dealloc];
}

- (id)debugDescription
{
  if ([(NSTermOfAddress *)self isEqual:+[NSTermOfAddress neutral]])
  {
    return [NSString stringWithFormat:@"<%@ %p>{ neutral }", objc_opt_class(), self, v6, v7];
  }

  if ([(NSTermOfAddress *)self isEqual:+[NSTermOfAddress feminine]])
  {
    return [NSString stringWithFormat:@"<%@ %p>{ feminine }", objc_opt_class(), self, v6, v7];
  }

  if ([(NSTermOfAddress *)self isEqual:+[NSTermOfAddress masculine]])
  {
    return [NSString stringWithFormat:@"<%@ %p>{ masculine }", objc_opt_class(), self, v6, v7];
  }

  v4 = [(NSTermOfAddress *)self isEqual:+[NSTermOfAddress currentUser]];
  v5 = objc_opt_class();
  if (v4)
  {
    return [NSString stringWithFormat:@"<%@ %p>{ currentUser }", v5, self, v6, v7];
  }

  else
  {
    return [NSString stringWithFormat:@"<%@ %p>{ languageIdentifier: %@, pronouns: %@ }", v5, self, self->_language, self->_pronouns];
  }
}

- (NSTermOfAddress)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = NSTermOfAddress;
  v4 = [(NSTermOfAddress *)&v14 init];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Encoder does not allow keyed coding!";
    goto LABEL_13;
  }

  if (v4)
  {
    v5 = [coder decodeIntegerForKey:@"termOfAddress"];
    v4->_gender = v5;
    if ((v5 - 1) <= 2)
    {
      v4->_addressesCurrentUser = 0;
LABEL_6:
      v4->_language = 0;
      v4->_pronouns = 0;
      return v4;
    }

    v6 = [coder decodeBoolForKey:@"addressesUser"];
    v4->_addressesCurrentUser = v6;
    if (v6)
    {
      goto LABEL_6;
    }

    v4->_language = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"language", "copy"}];
    p_language = &v4->_language;
    v8 = [objc_msgSend(coder decodeArrayOfObjectsOfClass:objc_opt_class() forKey:{@"pronouns", "copy"}];
    v4->_pronouns = v8;
    if (!v4->_language || v8 == 0)
    {

      *p_language = 0;
      v4->_pronouns = 0;

      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = @"Could not decode language or pronouns for NSTermOfAddress";
LABEL_13:
      objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:0]);
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Encoder does not allow keyed coding!" userInfo:0]);
  }

  if (self->_addressesCurrentUser)
  {
    [coder encodeBool:1 forKey:@"addressesUser"];
  }

  gender = self->_gender;
  if (gender)
  {
    [coder encodeInteger:gender forKey:@"termOfAddress"];
  }

  language = self->_language;
  if (language)
  {
    [coder encodeObject:language forKey:@"language"];
  }

  if (self->_pronouns)
  {

    [coder encodeObject:? forKey:?];
  }
}

- (unint64_t)hash
{
  v3 = self->_gender ^ self->_addressesCurrentUser;
  language = self->_language;
  if (language)
  {
    v3 ^= [(NSString *)language hash];
  }

  pronouns = self->_pronouns;
  if (pronouns)
  {
    v3 ^= [(NSArray *)pronouns hash];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_gender == *(equal + 1) && self->_addressesCurrentUser == *(equal + 16))
  {
    pronouns = self->_pronouns;
    if (pronouns == *(equal + 4) || (v6 = [(NSArray *)pronouns isEqualToArray:?]))
    {
      language = self->_language;
      if (language == *(equal + 3))
      {
        LOBYTE(v6) = 1;
      }

      else
      {

        LOBYTE(v6) = [(NSString *)language isEqualToString:?];
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end