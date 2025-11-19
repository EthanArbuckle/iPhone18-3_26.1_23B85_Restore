@interface AXOutputAction
- (AXOutputAction)initWithAXAction:(id)a3;
- (AXOutputAction)initWithString:(id)a3 brailleString:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_NSRange)_rangeOfString;
- (_NSRange)rangeOfString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setObject:(id)a3 forVariant:(int64_t)a4;
- (void)setString:(id)a3 overrideOriginalString:(BOOL)a4;
@end

@implementation AXOutputAction

- (AXOutputAction)initWithAXAction:(id)a3
{
  v4 = a3;
  v5 = [v4 string];
  v6 = [v4 brailleString];
  v7 = [(AXOutputAction *)self initWithString:v5 brailleString:v6];

  if (v7)
  {
    v8 = [v4 outputVariants];
    v9 = [v8 copy];
    variants = v7->_variants;
    v7->_variants = v9;

    v7->_performPunctuationTranslation = [v4 performPunctuationTranslation];
    v7->_replaceCommas = [v4 replaceCommas];
    v7->_outputActionID = [v4 outputActionID];
  }

  return v7;
}

- (AXOutputAction)initWithString:(id)a3 brailleString:(id)a4
{
  if (self)
  {
    v6 = a4;
    v7 = a3;
    v8 = [v7 copy];
    originalString = self->_originalString;
    self->_originalString = v8;

    v10 = [v6 copy];
    brailleString = self->_brailleString;
    self->_brailleString = v10;

    v12 = [v7 copy];
    string = self->_string;
    self->_string = v12;

    self->_replaceCommas = 1;
    *&self->_generatesBraille = 1;
    self->_outputActionID = +[AXOutputAction newOutputActionID];
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)setString:(id)a3 overrideOriginalString:(BOOL)a4
{
  v4 = a4;
  [(AXOutputAction *)self setString:a3];
  if (v4)
  {
    v6 = [(NSString *)self->_string copy];
    originalString = self->_originalString;
    self->_originalString = v6;

    MEMORY[0x1EEE66BB8](v6, originalString);
  }
}

- (void)setObject:(id)a3 forVariant:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
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

    v6 = [(AXIndexMap *)variants setObject:v11 forIndex:a4];
    v7 = v11;
  }

  MEMORY[0x1EEE66BB8](v6, v7);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[6] == self->_outputActionID;

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