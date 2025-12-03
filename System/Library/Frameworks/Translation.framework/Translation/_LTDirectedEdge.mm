@interface _LTDirectedEdge
+ (id)genderEdgeWithTargetPhraseIndex:(unint64_t)index targetPreview:(id)preview gender:(unint64_t)gender defaultGender:(unint64_t)defaultGender;
+ (id)meaningEdgeWithTargetPhraseIndex:(unint64_t)index targetPreview:(id)preview meaningDescription:(id)description targetGender:(id)gender defaultGender:(id)defaultGender;
- (BOOL)isEqual:(id)equal;
- (_LTDirectedEdge)initWithCoder:(id)coder;
- (id)_initWithTargetPhraseIndex:(unint64_t)index type:(unint64_t)type targetPreview:(id)preview targetGender:(id)gender defaultGender:(id)defaultGender menuDescription:(id)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTDirectedEdge

+ (id)meaningEdgeWithTargetPhraseIndex:(unint64_t)index targetPreview:(id)preview meaningDescription:(id)description targetGender:(id)gender defaultGender:(id)defaultGender
{
  defaultGenderCopy = defaultGender;
  genderCopy = gender;
  descriptionCopy = description;
  previewCopy = preview;
  v16 = [[self alloc] _initWithTargetPhraseIndex:index type:0 targetPreview:previewCopy targetGender:genderCopy defaultGender:defaultGenderCopy menuDescription:descriptionCopy];

  return v16;
}

+ (id)genderEdgeWithTargetPhraseIndex:(unint64_t)index targetPreview:(id)preview gender:(unint64_t)gender defaultGender:(unint64_t)defaultGender
{
  previewCopy = preview;
  v11 = [self alloc];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:gender];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:defaultGender];
  v14 = menuDescriptionForGender(gender);
  v15 = [v11 _initWithTargetPhraseIndex:index type:1 targetPreview:previewCopy targetGender:v12 defaultGender:v13 menuDescription:v14];

  return v15;
}

- (id)_initWithTargetPhraseIndex:(unint64_t)index type:(unint64_t)type targetPreview:(id)preview targetGender:(id)gender defaultGender:(id)defaultGender menuDescription:(id)description
{
  previewCopy = preview;
  genderCopy = gender;
  defaultGenderCopy = defaultGender;
  descriptionCopy = description;
  v26.receiver = self;
  v26.super_class = _LTDirectedEdge;
  v18 = [(_LTDirectedEdge *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_targetPhraseIndex = index;
    v18->_type = type;
    v20 = [previewCopy copy];
    targetPreview = v19->_targetPreview;
    v19->_targetPreview = v20;

    objc_storeStrong(&v19->_targetGender, gender);
    objc_storeStrong(&v19->_defaultGender, defaultGender);
    v22 = [descriptionCopy copy];
    menuDescription = v19->_menuDescription;
    v19->_menuDescription = v22;

    v24 = v19;
  }

  return v19;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  type = [(_LTDirectedEdge *)self type];
  type2 = [compareCopy type];
  if (type != type2)
  {
    unsignedIntegerValue2 = type2;
    v12 = MEMORY[0x277CCABB0];
    sortOrderForType(type);
    v7 = [v12 numberWithUnsignedInteger:type];
    v13 = MEMORY[0x277CCABB0];
    sortOrderForType(unsignedIntegerValue2);
LABEL_7:
    v10 = v13;
    targetPhraseIndex = unsignedIntegerValue2;
    goto LABEL_8;
  }

  if (type == 1)
  {
    targetGender = [(_LTDirectedEdge *)self targetGender];
    unsignedIntegerValue = [targetGender unsignedIntegerValue];

    targetGender2 = [compareCopy targetGender];
    unsignedIntegerValue2 = [targetGender2 unsignedIntegerValue];

    v17 = MEMORY[0x277CCABB0];
    sortOrderForGender(unsignedIntegerValue);
    v7 = [v17 numberWithUnsignedInteger:unsignedIntegerValue];
    v13 = MEMORY[0x277CCABB0];
    sortOrderForGender(unsignedIntegerValue2);
    goto LABEL_7;
  }

  if (type)
  {
    v21 = unexpectedDisambiguationTypeException(type);
    objc_exception_throw(v21);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_LTDirectedEdge targetPhraseIndex](self, "targetPhraseIndex")}];
  v8 = MEMORY[0x277CCABB0];
  targetPhraseIndex = [compareCopy targetPhraseIndex];
  v10 = v8;
LABEL_8:
  v18 = [v10 numberWithUnsignedInteger:targetPhraseIndex];
  v19 = [v7 compare:v18];

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = _LTDisambiguationTypeDescription([(_LTDirectedEdge *)self type]);
  targetPhraseIndex = [(_LTDirectedEdge *)self targetPhraseIndex];
  targetPreview = [(_LTDirectedEdge *)self targetPreview];
  menuDescription = [(_LTDirectedEdge *)self menuDescription];
  defaultGender = [(_LTDirectedEdge *)self defaultGender];
  v11 = defaultGender;
  if (defaultGender)
  {
    v12 = menuDescriptionForGender([defaultGender unsignedIntegerValue]);
  }

  else
  {
    v12 = @"n/a";
  }

  v13 = [v3 stringWithFormat:@"<%@: %p type: %@; targetIndex: %zu; preview: %@; menuDescription: %@; defaultGender: %@>", v5, self, v6, targetPhraseIndex, targetPreview, menuDescription, v12];;

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(_LTDirectedEdge *)self type];
    if (type == [v5 type] && (v7 = -[_LTDirectedEdge targetPhraseIndex](self, "targetPhraseIndex"), v7 == objc_msgSend(v5, "targetPhraseIndex")))
    {
      targetPreview = [(_LTDirectedEdge *)self targetPreview];
      targetPreview2 = [v5 targetPreview];
      if ([targetPreview isEqualToString:targetPreview2])
      {
        menuDescription = [(_LTDirectedEdge *)self menuDescription];
        menuDescription2 = [v5 menuDescription];
        if ([menuDescription isEqualToString:menuDescription2])
        {
          targetGender = [(_LTDirectedEdge *)self targetGender];
          targetGender2 = [v5 targetGender];
          if (_LTIsEqual(targetGender, targetGender2))
          {
            defaultGender = [(_LTDirectedEdge *)self defaultGender];
            defaultGender2 = [v5 defaultGender];
            v15 = _LTIsEqual(defaultGender, defaultGender2);
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
  targetPreview = [(_LTDirectedEdge *)self targetPreview];
  v6 = [targetPreview hash];
  menuDescription = [(_LTDirectedEdge *)self menuDescription];
  v8 = v6 ^ [menuDescription hash];
  targetGender = [(_LTDirectedEdge *)self targetGender];
  v10 = v8 ^ [targetGender hash];
  defaultGender = [(_LTDirectedEdge *)self defaultGender];
  v12 = v10 ^ [defaultGender hash];

  return v12 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  targetPhraseIndex = self->_targetPhraseIndex;
  coderCopy = coder;
  [coderCopy encodeInteger:targetPhraseIndex forKey:@"targetPhraseIndex"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_targetPreview forKey:@"targetPreview"];
  [coderCopy encodeObject:self->_targetGender forKey:@"targetGender"];
  [coderCopy encodeObject:self->_defaultGender forKey:@"defaultGender"];
  [coderCopy encodeObject:self->_menuDescription forKey:@"menuDescription"];
}

- (_LTDirectedEdge)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _LTDirectedEdge;
  v5 = [(_LTDirectedEdge *)&v16 init];
  if (v5)
  {
    v5->_targetPhraseIndex = [coderCopy decodeIntegerForKey:@"targetPhraseIndex"];
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetPreview"];
    targetPreview = v5->_targetPreview;
    v5->_targetPreview = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetGender"];
    targetGender = v5->_targetGender;
    v5->_targetGender = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultGender"];
    defaultGender = v5->_defaultGender;
    v5->_defaultGender = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"menuDescription"];
    menuDescription = v5->_menuDescription;
    v5->_menuDescription = v12;

    v14 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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