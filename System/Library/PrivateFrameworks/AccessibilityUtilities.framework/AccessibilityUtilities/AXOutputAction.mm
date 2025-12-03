@interface AXOutputAction
- (AXOutputAction)initWithAXAction:(id)action;
- (AXOutputAction)initWithString:(id)string brailleString:(id)brailleString;
- (BOOL)isEqual:(id)equal;
- (_NSRange)_rangeOfString;
- (_NSRange)rangeOfString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setObject:(id)object forVariant:(int64_t)variant;
- (void)setString:(id)string overrideOriginalString:(BOOL)originalString;
@end

@implementation AXOutputAction

- (AXOutputAction)initWithAXAction:(id)action
{
  actionCopy = action;
  string = [actionCopy string];
  brailleString = [actionCopy brailleString];
  v7 = [(AXOutputAction *)self initWithString:string brailleString:brailleString];

  if (v7)
  {
    outputVariants = [actionCopy outputVariants];
    v9 = [outputVariants copy];
    variants = v7->_variants;
    v7->_variants = v9;

    v7->_performPunctuationTranslation = [actionCopy performPunctuationTranslation];
    v7->_replaceCommas = [actionCopy replaceCommas];
    v7->_outputActionID = [actionCopy outputActionID];
  }

  return v7;
}

- (AXOutputAction)initWithString:(id)string brailleString:(id)brailleString
{
  if (self)
  {
    brailleStringCopy = brailleString;
    stringCopy = string;
    v8 = [stringCopy copy];
    originalString = self->_originalString;
    self->_originalString = v8;

    v10 = [brailleStringCopy copy];
    brailleString = self->_brailleString;
    self->_brailleString = v10;

    v12 = [stringCopy copy];
    string = self->_string;
    self->_string = v12;

    self->_replaceCommas = 1;
    *&self->_generatesBraille = 1;
    self->_outputActionID = +[AXOutputAction newOutputActionID];
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSString *)self->_string copy];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(NSString *)self->_originalString copy];
  v8 = v4[5];
  v4[5] = v7;

  v9 = [(AXIndexMap *)self->_variants copy];
  v10 = v4[2];
  v4[2] = v9;

  v4[6] = self->_outputActionID;
  *(v4 + 8) = self->_generatesBraille;
  return v4;
}

- (_NSRange)_rangeOfString
{
  v2 = [(NSString *)self->_originalString rangeOfString:self->_string];
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)setString:(id)string overrideOriginalString:(BOOL)originalString
{
  originalStringCopy = originalString;
  [(AXOutputAction *)self setString:string];
  if (originalStringCopy)
  {
    v6 = [(NSString *)self->_string copy];
    originalString = self->_originalString;
    self->_originalString = v6;

    MEMORY[0x1EEE66BB8](v6, originalString);
  }
}

- (void)setObject:(id)object forVariant:(int64_t)variant
{
  objectCopy = object;
  v7 = objectCopy;
  if (objectCopy)
  {
    variants = self->_variants;
    v11 = v7;
    if (!variants)
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E6988788]) init];
      v10 = self->_variants;
      self->_variants = v9;

      variants = self->_variants;
    }

    objectCopy = [(AXIndexMap *)variants setObject:v11 forIndex:variant];
    v7 = v11;
  }

  MEMORY[0x1EEE66BB8](objectCopy, v7);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = AXOutputAction;
  v4 = [(AXOutputAction *)&v7 description];
  v5 = [v3 stringWithFormat:@"[%@] String: %@, Original String: %@, Braille String: %@, variants: %@", v4, self->_string, self->_originalString, self->_brailleString, self->_variants];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[6] == self->_outputActionID;

  return v5;
}

- (_NSRange)rangeOfString
{
  length = self->_rangeOfString.length;
  location = self->_rangeOfString.location;
  result.length = length;
  result.location = location;
  return result;
}

@end