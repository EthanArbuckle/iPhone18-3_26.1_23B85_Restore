@interface _NSInflectionRuleExplicit
- (BOOL)isEqual:(id)equal;
- (_NSInflectionRuleExplicit)initWithAttributesDictionary:(id)dictionary;
- (_NSInflectionRuleExplicit)initWithMorphology:(id)morphology agreeWithArgument:(int64_t)argument agreeWithConcept:(int64_t)concept referentConcept:(int64_t)referentConcept;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _NSInflectionRuleExplicit

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSInflectionRuleExplicit;
  [(_NSInflectionRuleExplicit *)&v3 dealloc];
}

- (_NSInflectionRuleExplicit)initWithAttributesDictionary:(id)dictionary
{
  v12 = *MEMORY[0x1E69E9840];
  [dictionary objectForKeyedSubscript:@"NSInflectionAgreementArgument"];
  if (_NSIsNSNumber())
  {
    v5 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"NSInflectionAgreementArgument", "integerValue"}];
  }

  else
  {
    v5 = 0;
  }

  [dictionary objectForKeyedSubscript:@"NSInflectionAgreementConcept"];
  if (_NSIsNSNumber())
  {
    v6 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"NSInflectionAgreementConcept", "integerValue"}];
  }

  else
  {
    v6 = 0;
  }

  [dictionary objectForKeyedSubscript:@"NSInflectionReferentConcept"];
  if (_NSIsNSNumber())
  {
    v7 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"NSInflectionReferentConcept", "integerValue"}];
  }

  else
  {
    v7 = 0;
  }

  morphology = [dictionary objectForKeyedSubscript:@"NSInflect"];
  if (!morphology)
  {
LABEL_13:
    if (v5)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    morphology = [morphology morphology];
    goto LABEL_13;
  }

  morphology = 0;
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (!v6 && !v7 && !morphology)
  {

    return 0;
  }

LABEL_20:
  v11.receiver = self;
  v11.super_class = _NSInflectionRuleExplicit;
  _init = [(NSInflectionRule *)&v11 _init];
  if (_init)
  {
    _init->_morphology = [morphology copy];
    _init->_agreeWithConcept = v6;
    _init->_agreeWithArgument = v5;
    _init->_referentConcept = v7;
  }

  return _init;
}

- (_NSInflectionRuleExplicit)initWithMorphology:(id)morphology agreeWithArgument:(int64_t)argument agreeWithConcept:(int64_t)concept referentConcept:(int64_t)referentConcept
{
  v13 = *MEMORY[0x1E69E9840];
  if (morphology || concept | argument | referentConcept)
  {
    v12.receiver = self;
    v12.super_class = _NSInflectionRuleExplicit;
    _init = [(NSInflectionRule *)&v12 _init];
    if (_init)
    {
      _init->_morphology = [morphology copy];
      _init->_agreeWithConcept = concept;
      _init->_agreeWithArgument = argument;
      _init->_referentConcept = referentConcept;
    }
  }

  else
  {

    return 0;
  }

  return _init;
}

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  if ([(_NSInflectionRuleExplicit *)self morphology])
  {
    [v3 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"morphology = %@", -[_NSInflectionRuleExplicit morphology](self, "morphology"))}];
  }

  if ([(_NSInflectionRuleExplicit *)self agreeWithConcept])
  {
    [v3 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"agreeWithConcept = %ld", -[_NSInflectionRuleExplicit agreeWithConcept](self, "agreeWithConcept"))}];
  }

  if ([(_NSInflectionRuleExplicit *)self agreeWithArgument])
  {
    [v3 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"agreeWithArgument = %ld", -[_NSInflectionRuleExplicit agreeWithArgument](self, "agreeWithArgument"))}];
  }

  if ([(_NSInflectionRuleExplicit *)self referentConcept])
  {
    [v3 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"referentConcept = %ld", -[_NSInflectionRuleExplicit referentConcept](self, "referentConcept"))}];
  }

  if ([v3 count])
  {
    v9.receiver = self;
    v9.super_class = _NSInflectionRuleExplicit;
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ { %@ }", -[_NSInflectionRuleExplicit description](&v9, sel_description), [v3 componentsJoinedByString:{@", "}]);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _NSInflectionRuleExplicit;
    v4 = [NSString stringWithFormat:@"%@ (automatic inflection rule)", [(_NSInflectionRuleExplicit *)&v8 description], v7];
  }

  v5 = v4;

  return v5;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  v4 = [(NSMorphology *)[(_NSInflectionRuleExplicit *)self morphology] hash]^ v3;
  referentConcept = [(_NSInflectionRuleExplicit *)self referentConcept];
  v6 = referentConcept ^ [(_NSInflectionRuleExplicit *)self agreeWithConcept];
  return v4 ^ v6 ^ [(_NSInflectionRuleExplicit *)self agreeWithArgument];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!-[_NSInflectionRuleExplicit morphology](self, "morphology") || (v5 = -[NSMorphology isEqual:](-[_NSInflectionRuleExplicit morphology](self, "morphology"), "isEqual:", [equal morphology])))
  {
    referentConcept = [(_NSInflectionRuleExplicit *)self referentConcept];
    if (referentConcept == [equal referentConcept])
    {
      agreeWithConcept = [(_NSInflectionRuleExplicit *)self agreeWithConcept];
      if (agreeWithConcept == [equal agreeWithConcept])
      {
        agreeWithArgument = [(_NSInflectionRuleExplicit *)self agreeWithArgument];
        LOBYTE(v5) = agreeWithArgument == [equal agreeWithArgument];
        return v5;
      }
    }

LABEL_7:
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end