@interface _NSInflectionRuleExplicit
- (BOOL)isEqual:(id)a3;
- (_NSInflectionRuleExplicit)initWithAttributesDictionary:(id)a3;
- (_NSInflectionRuleExplicit)initWithMorphology:(id)a3 agreeWithArgument:(int64_t)a4 agreeWithConcept:(int64_t)a5 referentConcept:(int64_t)a6;
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

- (_NSInflectionRuleExplicit)initWithAttributesDictionary:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  [a3 objectForKeyedSubscript:@"NSInflectionAgreementArgument"];
  if (_NSIsNSNumber())
  {
    v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"NSInflectionAgreementArgument", "integerValue"}];
  }

  else
  {
    v5 = 0;
  }

  [a3 objectForKeyedSubscript:@"NSInflectionAgreementConcept"];
  if (_NSIsNSNumber())
  {
    v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"NSInflectionAgreementConcept", "integerValue"}];
  }

  else
  {
    v6 = 0;
  }

  [a3 objectForKeyedSubscript:@"NSInflectionReferentConcept"];
  if (_NSIsNSNumber())
  {
    v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"NSInflectionReferentConcept", "integerValue"}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a3 objectForKeyedSubscript:@"NSInflect"];
  if (!v8)
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
    v8 = [v8 morphology];
    goto LABEL_13;
  }

  v8 = 0;
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (!v6 && !v7 && !v8)
  {

    return 0;
  }

LABEL_20:
  v11.receiver = self;
  v11.super_class = _NSInflectionRuleExplicit;
  v9 = [(NSInflectionRule *)&v11 _init];
  if (v9)
  {
    v9->_morphology = [v8 copy];
    v9->_agreeWithConcept = v6;
    v9->_agreeWithArgument = v5;
    v9->_referentConcept = v7;
  }

  return v9;
}

- (_NSInflectionRuleExplicit)initWithMorphology:(id)a3 agreeWithArgument:(int64_t)a4 agreeWithConcept:(int64_t)a5 referentConcept:(int64_t)a6
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 || a5 | a4 | a6)
  {
    v12.receiver = self;
    v12.super_class = _NSInflectionRuleExplicit;
    v10 = [(NSInflectionRule *)&v12 _init];
    if (v10)
    {
      v10->_morphology = [a3 copy];
      v10->_agreeWithConcept = a5;
      v10->_agreeWithArgument = a4;
      v10->_referentConcept = a6;
    }
  }

  else
  {

    return 0;
  }

  return v10;
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
  v5 = [(_NSInflectionRuleExplicit *)self referentConcept];
  v6 = v5 ^ [(_NSInflectionRuleExplicit *)self agreeWithConcept];
  return v4 ^ v6 ^ [(_NSInflectionRuleExplicit *)self agreeWithArgument];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!-[_NSInflectionRuleExplicit morphology](self, "morphology") || (v5 = -[NSMorphology isEqual:](-[_NSInflectionRuleExplicit morphology](self, "morphology"), "isEqual:", [a3 morphology])))
  {
    v6 = [(_NSInflectionRuleExplicit *)self referentConcept];
    if (v6 == [a3 referentConcept])
    {
      v7 = [(_NSInflectionRuleExplicit *)self agreeWithConcept];
      if (v7 == [a3 agreeWithConcept])
      {
        v8 = [(_NSInflectionRuleExplicit *)self agreeWithArgument];
        LOBYTE(v5) = v8 == [a3 agreeWithArgument];
        return v5;
      }
    }

LABEL_7:
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end