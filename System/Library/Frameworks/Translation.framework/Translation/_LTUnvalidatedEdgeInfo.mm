@interface _LTUnvalidatedEdgeInfo
+ (id)genderEdgeInfoWithTargetPhraseIndex:(unint64_t)index targetLinkIndex:(unint64_t)linkIndex gender:(unint64_t)gender defaultGender:(unint64_t)defaultGender;
+ (id)meaningEdgeInfoWithTargetPhraseIndex:(unint64_t)index targetLinkIndex:(unint64_t)linkIndex meaningDescription:(id)description;
- (id)_initWithTargetPhraseIndex:(unint64_t)index targetLinkIndex:(unint64_t)linkIndex type:(unint64_t)type meaningDescription:(id)description gender:(id)gender defaultGender:(id)defaultGender;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _LTUnvalidatedEdgeInfo

+ (id)meaningEdgeInfoWithTargetPhraseIndex:(unint64_t)index targetLinkIndex:(unint64_t)linkIndex meaningDescription:(id)description
{
  descriptionCopy = description;
  v9 = [[self alloc] _initWithTargetPhraseIndex:index targetLinkIndex:linkIndex type:0 meaningDescription:descriptionCopy gender:0 defaultGender:0];

  return v9;
}

+ (id)genderEdgeInfoWithTargetPhraseIndex:(unint64_t)index targetLinkIndex:(unint64_t)linkIndex gender:(unint64_t)gender defaultGender:(unint64_t)defaultGender
{
  v10 = [self alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:gender];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:defaultGender];
  v13 = [v10 _initWithTargetPhraseIndex:index targetLinkIndex:linkIndex type:1 meaningDescription:0 gender:v11 defaultGender:v12];

  return v13;
}

- (id)_initWithTargetPhraseIndex:(unint64_t)index targetLinkIndex:(unint64_t)linkIndex type:(unint64_t)type meaningDescription:(id)description gender:(id)gender defaultGender:(id)defaultGender
{
  descriptionCopy = description;
  genderCopy = gender;
  defaultGenderCopy = defaultGender;
  v23.receiver = self;
  v23.super_class = _LTUnvalidatedEdgeInfo;
  v17 = [(_LTUnvalidatedEdgeInfo *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_type = type;
    v17->_targetPhraseIndex = index;
    v17->_targetLinkIndex = linkIndex;
    v19 = [descriptionCopy copy];
    meaningDescription = v18->_meaningDescription;
    v18->_meaningDescription = v19;

    objc_storeStrong(&v18->_targetGender, gender);
    objc_storeStrong(&v18->_defaultGender, defaultGender);
    v21 = v18;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = _LTDisambiguationTypeDescription([(_LTUnvalidatedEdgeInfo *)self type]);
  targetPhraseIndex = [(_LTUnvalidatedEdgeInfo *)self targetPhraseIndex];
  targetLinkIndex = [(_LTUnvalidatedEdgeInfo *)self targetLinkIndex];
  targetGender = [(_LTUnvalidatedEdgeInfo *)self targetGender];
  defaultGender = [(_LTUnvalidatedEdgeInfo *)self defaultGender];
  meaningDescription = [(_LTUnvalidatedEdgeInfo *)self meaningDescription];
  v12 = [v3 stringWithFormat:@"<%@: %p type: %@; targetIndex: %zu; linkIndex: %zu; gender: %@; defaultGender: %@; menuDescription: %@>", v5, self, v6, targetPhraseIndex, targetLinkIndex, targetGender, defaultGender, meaningDescription];;

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  targetPhraseIndex = self->_targetPhraseIndex;
  targetLinkIndex = self->_targetLinkIndex;
  type = self->_type;
  v8 = [(NSString *)self->_meaningDescription copy];
  v9 = [(NSNumber *)self->_targetGender copy];
  v10 = [(NSNumber *)self->_defaultGender copy];
  v11 = [v4 _initWithTargetPhraseIndex:targetPhraseIndex targetLinkIndex:targetLinkIndex type:type meaningDescription:v8 gender:v9 defaultGender:v10];

  return v11;
}

@end