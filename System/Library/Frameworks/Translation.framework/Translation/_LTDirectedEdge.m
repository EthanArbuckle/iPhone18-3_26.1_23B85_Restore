@interface _LTDirectedEdge
+ (id)genderEdgeWithTargetPhraseIndex:(unint64_t)a3 targetPreview:(id)a4 gender:(unint64_t)a5 defaultGender:(unint64_t)a6;
+ (id)meaningEdgeWithTargetPhraseIndex:(unint64_t)a3 targetPreview:(id)a4 meaningDescription:(id)a5 targetGender:(id)a6 defaultGender:(id)a7;
- (BOOL)isEqual:(id)a3;
- (_LTDirectedEdge)initWithCoder:(id)a3;
- (id)_initWithTargetPhraseIndex:(unint64_t)a3 type:(unint64_t)a4 targetPreview:(id)a5 targetGender:(id)a6 defaultGender:(id)a7 menuDescription:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTDirectedEdge

+ (id)meaningEdgeWithTargetPhraseIndex:(unint64_t)a3 targetPreview:(id)a4 meaningDescription:(id)a5 targetGender:(id)a6 defaultGender:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [[a1 alloc] _initWithTargetPhraseIndex:a3 type:0 targetPreview:v15 targetGender:v13 defaultGender:v12 menuDescription:v14];

  return v16;
}

+ (id)genderEdgeWithTargetPhraseIndex:(unint64_t)a3 targetPreview:(id)a4 gender:(unint64_t)a5 defaultGender:(unint64_t)a6
{
  v10 = a4;
  v11 = [a1 alloc];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v14 = menuDescriptionForGender(a5);
  v15 = [v11 _initWithTargetPhraseIndex:a3 type:1 targetPreview:v10 targetGender:v12 defaultGender:v13 menuDescription:v14];

  return v15;
}

- (id)_initWithTargetPhraseIndex:(unint64_t)a3 type:(unint64_t)a4 targetPreview:(id)a5 targetGender:(id)a6 defaultGender:(id)a7 menuDescription:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v26.receiver = self;
  v26.super_class = _LTDirectedEdge;
  v18 = [(_LTDirectedEdge *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_targetPhraseIndex = a3;
    v18->_type = a4;
    v20 = [v14 copy];
    targetPreview = v19->_targetPreview;
    v19->_targetPreview = v20;

    objc_storeStrong(&v19->_targetGender, a6);
    objc_storeStrong(&v19->_defaultGender, a7);
    v22 = [v17 copy];
    menuDescription = v19->_menuDescription;
    v19->_menuDescription = v22;

    v24 = v19;
  }

  return v19;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(_LTDirectedEdge *)self type];
  v6 = [v4 type];
  if (v5 != v6)
  {
    v11 = v6;
    v12 = MEMORY[0x277CCABB0];
    sortOrderForType(v5);
    v7 = [v12 numberWithUnsignedInteger:v5];
    v13 = MEMORY[0x277CCABB0];
    sortOrderForType(v11);
LABEL_7:
    v10 = v13;
    v9 = v11;
    goto LABEL_8;
  }

  if (v5 == 1)
  {
    v14 = [(_LTDirectedEdge *)self targetGender];
    v15 = [v14 unsignedIntegerValue];

    v16 = [v4 targetGender];
    v11 = [v16 unsignedIntegerValue];

    v17 = MEMORY[0x277CCABB0];
    sortOrderForGender(v15);
    v7 = [v17 numberWithUnsignedInteger:v15];
    v13 = MEMORY[0x277CCABB0];
    sortOrderForGender(v11);
    goto LABEL_7;
  }

  if (v5)
  {
    v21 = unexpectedDisambiguationTypeException(v5);
    objc_exception_throw(v21);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_LTDirectedEdge targetPhraseIndex](self, "targetPhraseIndex")}];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v4 targetPhraseIndex];
  v10 = v8;
LABEL_8:
  v18 = [v10 numberWithUnsignedInteger:v9];
  v19 = [v7 compare:v18];

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = _LTDisambiguationTypeDescription([(_LTDirectedEdge *)self type]);
  v7 = [(_LTDirectedEdge *)self targetPhraseIndex];
  v8 = [(_LTDirectedEdge *)self targetPreview];
  v9 = [(_LTDirectedEdge *)self menuDescription];
  v10 = [(_LTDirectedEdge *)self defaultGender];
  v11 = v10;
  if (v10)
  {
    v12 = menuDescriptionForGender([v10 unsignedIntegerValue]);
  }

  else
  {
    v12 = @"n/a";
  }

  v13 = [v3 stringWithFormat:@"<%@: %p type: %@; targetIndex: %zu; preview: %@; menuDescription: %@; defaultGender: %@>", v5, self, v6, v7, v8, v9, v12];;

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_LTDirectedEdge *)self type];
    if (v6 == [v5 type] && (v7 = -[_LTDirectedEdge targetPhraseIndex](self, "targetPhraseIndex"), v7 == objc_msgSend(v5, "targetPhraseIndex")))
    {
      v8 = [(_LTDirectedEdge *)self targetPreview];
      v9 = [v5 targetPreview];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(_LTDirectedEdge *)self menuDescription];
        v11 = [v5 menuDescription];
        if ([v10 isEqualToString:v11])
        {
          v12 = [(_LTDirectedEdge *)self targetGender];
          v13 = [v5 targetGender];
          if (_LTIsEqual(v12, v13))
          {
            v17 = [(_LTDirectedEdge *)self defaultGender];
            v14 = [v5 defaultGender];
            v15 = _LTIsEqual(v17, v14);
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_LTDirectedEdge type](self, "type")}];
  v4 = [v3 hash];
  v5 = [(_LTDirectedEdge *)self targetPreview];
  v6 = [v5 hash];
  v7 = [(_LTDirectedEdge *)self menuDescription];
  v8 = v6 ^ [v7 hash];
  v9 = [(_LTDirectedEdge *)self targetGender];
  v10 = v8 ^ [v9 hash];
  v11 = [(_LTDirectedEdge *)self defaultGender];
  v12 = v10 ^ [v11 hash];

  return v12 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  targetPhraseIndex = self->_targetPhraseIndex;
  v5 = a3;
  [v5 encodeInteger:targetPhraseIndex forKey:@"targetPhraseIndex"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_targetPreview forKey:@"targetPreview"];
  [v5 encodeObject:self->_targetGender forKey:@"targetGender"];
  [v5 encodeObject:self->_defaultGender forKey:@"defaultGender"];
  [v5 encodeObject:self->_menuDescription forKey:@"menuDescription"];
}

- (_LTDirectedEdge)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _LTDirectedEdge;
  v5 = [(_LTDirectedEdge *)&v16 init];
  if (v5)
  {
    v5->_targetPhraseIndex = [v4 decodeIntegerForKey:@"targetPhraseIndex"];
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetPreview"];
    targetPreview = v5->_targetPreview;
    v5->_targetPreview = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetGender"];
    targetGender = v5->_targetGender;
    v5->_targetGender = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultGender"];
    defaultGender = v5->_defaultGender;
    v5->_defaultGender = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"menuDescription"];
    menuDescription = v5->_menuDescription;
    v5->_menuDescription = v12;

    v14 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  targetPhraseIndex = self->_targetPhraseIndex;
  type = self->_type;
  v7 = [(NSString *)self->_targetPreview copy];
  v8 = [(NSNumber *)self->_targetGender copy];
  v9 = [(NSNumber *)self->_defaultGender copy];
  v10 = [(NSString *)self->_menuDescription copy];
  v11 = [v4 _initWithTargetPhraseIndex:targetPhraseIndex type:type targetPreview:v7 targetGender:v8 defaultGender:v9 menuDescription:v10];

  return v11;
}

@end