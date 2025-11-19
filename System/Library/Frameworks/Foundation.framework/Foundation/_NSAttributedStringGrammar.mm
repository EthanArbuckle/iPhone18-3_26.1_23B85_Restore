@interface _NSAttributedStringGrammar
+ (_NSAttributedStringGrammar)identityGrammar;
- (BOOL)isEqual:(id)a3;
- (_NSAttributedStringGrammar)init;
- (_NSAttributedStringGrammar)initWithMorphology:(id)a3;
- (id)_initWithMarkdownDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _NSAttributedStringGrammar

- (_NSAttributedStringGrammar)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSAttributedStringGrammar;
  return [(_NSAttributedStringGrammar *)&v3 init];
}

+ (_NSAttributedStringGrammar)identityGrammar
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_NSAttributedStringGrammar);
  v4->_aspect = [(_NSAttributedStringGrammar *)self aspect];
  v4->_deictic = [(_NSAttributedStringGrammar *)self deictic];
  v4->_determinationType = [(_NSAttributedStringGrammar *)self determinationType];
  v4->_gender = [(_NSAttributedStringGrammar *)self gender];
  v4->_grammaticalCase = [(_NSAttributedStringGrammar *)self grammaticalCase];
  v4->_mood = [(_NSAttributedStringGrammar *)self mood];
  v4->_number = [(_NSAttributedStringGrammar *)self number];
  v4->_person = [(_NSAttributedStringGrammar *)self person];
  v4->_position = [(_NSAttributedStringGrammar *)self position];
  v4->_tense = [(_NSAttributedStringGrammar *)self tense];
  v4->_verbForm = [(_NSAttributedStringGrammar *)self verbForm];
  return v4;
}

- (unint64_t)hash
{
  v3 = [(_NSAttributedStringGrammar *)self aspect];
  v4 = [(_NSAttributedStringGrammar *)self deictic]^ v3;
  v5 = [(_NSAttributedStringGrammar *)self determinationType];
  v6 = v4 ^ v5 ^ [(_NSAttributedStringGrammar *)self gender];
  v7 = [(_NSAttributedStringGrammar *)self grammaticalCase];
  v8 = v7 ^ [(_NSAttributedStringGrammar *)self mood];
  v9 = v6 ^ v8 ^ [(_NSAttributedStringGrammar *)self number];
  v10 = [(_NSAttributedStringGrammar *)self person];
  v11 = v10 ^ [(_NSAttributedStringGrammar *)self position];
  v12 = v11 ^ [(_NSAttributedStringGrammar *)self tense];
  return v9 ^ v12 ^ [(_NSAttributedStringGrammar *)self verbForm];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(_NSAttributedStringGrammar *)self aspect];
  if (v5 != [a3 aspect])
  {
    return 0;
  }

  v6 = [(_NSAttributedStringGrammar *)self deictic];
  if (v6 != [a3 deictic])
  {
    return 0;
  }

  v7 = [(_NSAttributedStringGrammar *)self determinationType];
  if (v7 != [a3 determinationType])
  {
    return 0;
  }

  v8 = [(_NSAttributedStringGrammar *)self gender];
  if (v8 != [a3 gender])
  {
    return 0;
  }

  v9 = [(_NSAttributedStringGrammar *)self grammaticalCase];
  if (v9 != [a3 grammaticalCase])
  {
    return 0;
  }

  v10 = [(_NSAttributedStringGrammar *)self mood];
  if (v10 != [a3 mood])
  {
    return 0;
  }

  v11 = [(_NSAttributedStringGrammar *)self number];
  if (v11 != [a3 number])
  {
    return 0;
  }

  v12 = [(_NSAttributedStringGrammar *)self person];
  if (v12 != [a3 person])
  {
    return 0;
  }

  v13 = [(_NSAttributedStringGrammar *)self position];
  if (v13 != [a3 position])
  {
    return 0;
  }

  v14 = [(_NSAttributedStringGrammar *)self tense];
  if (v14 != [a3 tense])
  {
    return 0;
  }

  v15 = [(_NSAttributedStringGrammar *)self verbForm];
  return v15 == [a3 verbForm];
}

- (_NSAttributedStringGrammar)initWithMorphology:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _NSAttributedStringGrammar;
  v4 = [(_NSAttributedStringGrammar *)&v14 init];
  if (v4)
  {
    v5 = [a3 grammaticalGender];
    if (v5 <= 3)
    {
      [(_NSAttributedStringGrammar *)v4 setGender:qword_1814462E0[v5]];
    }

    v6 = [a3 number];
    if (v6 <= 6)
    {
      [(_NSAttributedStringGrammar *)v4 setNumber:qword_181446300[v6]];
    }

    v7 = [a3 partOfSpeech];
    if (v7 <= 0xE)
    {
      [(_NSAttributedStringGrammar *)v4 setPosition:v7];
    }

    v8 = [a3 grammaticalCase] - 1;
    if (v8 > 0xC)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_181446338[v8];
    }

    [(_NSAttributedStringGrammar *)v4 setGrammaticalCase:v9];
    v10 = [a3 definiteness];
    v11 = 3;
    if (v10 != 1)
    {
      v11 = 0;
    }

    if (v10 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    [(_NSAttributedStringGrammar *)v4 setDeterminationType:v12];
  }

  return v4;
}

- (id)_initWithMarkdownDictionary:(id)a3
{
  v4 = [(_NSAttributedStringGrammar *)self init];
  if (v4)
  {
    v5 = [a3 objectForKeyedSubscript:@"aspect"];
    if (v5 && (v6 = v5, ([v5 isEqual:@"none"] & 1) == 0))
    {
      if ([v6 isEqual:@"perfect"])
      {
        v7 = 1;
      }

      else
      {
        if (([v6 isEqual:@"imperfect"] & 1) == 0)
        {
          goto LABEL_152;
        }

        v7 = 2;
      }
    }

    else
    {
      v7 = 0;
    }

    [(_NSAttributedStringGrammar *)v4 setAspect:v7];
    v8 = [a3 objectForKeyedSubscript:@"deictic"];
    if (v8 && (v9 = v8, ([v8 isEqual:@"none"] & 1) == 0))
    {
      if ([v9 isEqual:@"distal"])
      {
        v10 = 1;
      }

      else
      {
        if (([v9 isEqual:@"proximal"] & 1) == 0)
        {
          goto LABEL_152;
        }

        v10 = 2;
      }
    }

    else
    {
      v10 = 0;
    }

    [(_NSAttributedStringGrammar *)v4 setDeictic:v10];
    v11 = [a3 objectForKeyedSubscript:@"determinationType"];
    if (v11 && (v12 = v11, ([v11 isEqual:@"none"] & 1) == 0))
    {
      if ([v12 isEqual:@"demonstrative"])
      {
        v13 = 1;
      }

      else if ([v12 isEqual:@"definite"])
      {
        v13 = 2;
      }

      else
      {
        if (([v12 isEqual:@"indefinite"] & 1) == 0)
        {
          goto LABEL_152;
        }

        v13 = 3;
      }
    }

    else
    {
      v13 = 0;
    }

    [(_NSAttributedStringGrammar *)v4 setDeterminationType:v13];
    v14 = [a3 objectForKeyedSubscript:@"grammaticalGender"];
    if (v14 && (v15 = v14, ([v14 isEqual:@"none"] & 1) == 0))
    {
      if ([v15 isEqual:@"masculine"])
      {
        v16 = 1;
      }

      else if ([v15 isEqual:@"feminine"])
      {
        v16 = 2;
      }

      else if ([v15 isEqual:@"neuter"])
      {
        v16 = 3;
      }

      else
      {
        if (([v15 isEqual:@"common"] & 1) == 0)
        {
          goto LABEL_152;
        }

        v16 = 4;
      }
    }

    else
    {
      v16 = 0;
    }

    [(_NSAttributedStringGrammar *)v4 setGender:v16];
    v17 = [a3 objectForKeyedSubscript:@"grammaticalCase"];
    if (v17 && (v18 = v17, ([v17 isEqual:@"none"] & 1) == 0))
    {
      if ([v18 isEqual:@"accusative"])
      {
        v19 = 1;
      }

      else if ([v18 isEqual:@"dative"])
      {
        v19 = 2;
      }

      else if ([v18 isEqual:@"genitive"])
      {
        v19 = 3;
      }

      else if ([v18 isEqual:@"locative"])
      {
        v19 = 4;
      }

      else if ([v18 isEqual:@"nominative"])
      {
        v19 = 5;
      }

      else if ([v18 isEqual:@"partitive"])
      {
        v19 = 6;
      }

      else if ([v18 isEqual:@"instrumental"])
      {
        v19 = 7;
      }

      else if ([v18 isEqual:@"prepositional"])
      {
        v19 = 8;
      }

      else if ([v18 isEqual:@"object"])
      {
        v19 = 9;
      }

      else if ([v18 isEqual:@"directObject"])
      {
        v19 = 10;
      }

      else
      {
        if (([v18 isEqual:@"indirectObject"] & 1) == 0)
        {
          goto LABEL_152;
        }

        v19 = 11;
      }
    }

    else
    {
      v19 = 0;
    }

    [(_NSAttributedStringGrammar *)v4 setGrammaticalCase:v19];
    v20 = [a3 objectForKeyedSubscript:@"mood"];
    if (v20 && (v21 = v20, ([v20 isEqual:@"none"] & 1) == 0))
    {
      if ([v21 isEqual:@"conditional"])
      {
        v22 = 1;
      }

      else if ([v21 isEqual:@"subjunctive"])
      {
        v22 = 2;
      }

      else if ([v21 isEqual:@"imperative"])
      {
        v22 = 3;
      }

      else
      {
        if (([v21 isEqual:@"indicative"] & 1) == 0)
        {
          goto LABEL_152;
        }

        v22 = 4;
      }
    }

    else
    {
      v22 = 0;
    }

    [(_NSAttributedStringGrammar *)v4 setMood:v22];
    v23 = [a3 objectForKeyedSubscript:@"number"];
    if (v23 && (v24 = v23, ([v23 isEqual:@"none"] & 1) == 0))
    {
      if ([v24 isEqual:@"one"])
      {
        v25 = 1;
      }

      else if ([v24 isEqual:@"two"])
      {
        v25 = 2;
      }

      else if ([v24 isEqual:@"few"])
      {
        v25 = 3;
      }

      else if ([v24 isEqual:@"many"])
      {
        v25 = 4;
      }

      else if ([v24 isEqual:@"zero"])
      {
        v25 = 5;
      }

      else
      {
        if (([v24 isEqual:@"other"] & 1) == 0)
        {
          goto LABEL_152;
        }

        v25 = 6;
      }
    }

    else
    {
      v25 = 0;
    }

    [(_NSAttributedStringGrammar *)v4 setNumber:v25];
    v26 = [a3 objectForKeyedSubscript:@"person"];
    if (v26 && (v27 = v26, ([v26 isEqual:@"none"] & 1) == 0))
    {
      if ([v27 isEqual:@"first"])
      {
        v28 = 1;
      }

      else if ([v27 isEqual:@"second"])
      {
        v28 = 2;
      }

      else
      {
        if (([v27 isEqual:@"third"] & 1) == 0)
        {
          goto LABEL_152;
        }

        v28 = 3;
      }
    }

    else
    {
      v28 = 0;
    }

    [(_NSAttributedStringGrammar *)v4 setPerson:v28];
    v29 = [a3 objectForKeyedSubscript:@"partOfSpeech"];
    if (v29 && (v30 = v29, ([v29 isEqual:@"none"] & 1) == 0))
    {
      if ([v30 isEqual:@"determiner"])
      {
        v31 = 1;
      }

      else if ([v30 isEqual:@"pronoun"])
      {
        v31 = 2;
      }

      else if ([v30 isEqual:@"letter"])
      {
        v31 = 3;
      }

      else if ([v30 isEqual:@"adverb"])
      {
        v31 = 4;
      }

      else if ([v30 isEqual:@"particle"])
      {
        v31 = 5;
      }

      else if ([v30 isEqual:@"adjective"])
      {
        v31 = 6;
      }

      else if ([v30 isEqual:@"adposition"])
      {
        v31 = 7;
      }

      else if ([v30 isEqual:@"verb"])
      {
        v31 = 8;
      }

      else if ([v30 isEqual:@"noun"])
      {
        v31 = 9;
      }

      else if ([v30 isEqual:@"conjunction"])
      {
        v31 = 10;
      }

      else if ([v30 isEqual:@"numeral"])
      {
        v31 = 11;
      }

      else if ([v30 isEqual:@"interjection"])
      {
        v31 = 12;
      }

      else if ([v30 isEqual:@"preposition"])
      {
        v31 = 13;
      }

      else
      {
        if (([v30 isEqual:@"abbreviation"] & 1) == 0)
        {
          goto LABEL_152;
        }

        v31 = 14;
      }
    }

    else
    {
      v31 = 0;
    }

    [(_NSAttributedStringGrammar *)v4 setPosition:v31];
    v32 = [a3 objectForKeyedSubscript:@"tense"];
    if (v32 && (v33 = v32, ([v32 isEqual:@"none"] & 1) == 0))
    {
      if ([v33 isEqual:@"past"])
      {
        v34 = 1;
      }

      else if ([v33 isEqual:@"present"])
      {
        v34 = 2;
      }

      else
      {
        if (([v33 isEqual:@"future"] & 1) == 0)
        {
          goto LABEL_152;
        }

        v34 = 3;
      }
    }

    else
    {
      v34 = 0;
    }

    [(_NSAttributedStringGrammar *)v4 setTense:v34];
    v35 = [a3 objectForKeyedSubscript:@"verbForm"];
    if (!v35)
    {
      v38 = v4;
      v37 = 0;
LABEL_119:
      [(_NSAttributedStringGrammar *)v38 setVerbForm:v37];
      return v4;
    }

    v36 = v35;
    if ([v35 isEqual:@"none"])
    {
      v37 = 0;
LABEL_118:
      v38 = v4;
      goto LABEL_119;
    }

    if ([v36 isEqual:@"gerund"])
    {
      v37 = 1;
      goto LABEL_118;
    }

    if ([v36 isEqual:@"participative"])
    {
      v37 = 2;
      goto LABEL_118;
    }

    if ([v36 isEqual:@"infinitive"])
    {
      v37 = 3;
      goto LABEL_118;
    }

    if ([v36 isEqual:@"participle"])
    {
      v37 = 4;
      goto LABEL_118;
    }

    if ([v36 isEqual:@"supine"])
    {
      v37 = 5;
      goto LABEL_118;
    }

LABEL_152:

    return 0;
  }

  return v4;
}

@end