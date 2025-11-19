@interface _LTUnvalidatedEdgeInfo
+ (id)genderEdgeInfoWithTargetPhraseIndex:(unint64_t)a3 targetLinkIndex:(unint64_t)a4 gender:(unint64_t)a5 defaultGender:(unint64_t)a6;
+ (id)meaningEdgeInfoWithTargetPhraseIndex:(unint64_t)a3 targetLinkIndex:(unint64_t)a4 meaningDescription:(id)a5;
- (id)_initWithTargetPhraseIndex:(unint64_t)a3 targetLinkIndex:(unint64_t)a4 type:(unint64_t)a5 meaningDescription:(id)a6 gender:(id)a7 defaultGender:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation _LTUnvalidatedEdgeInfo

+ (id)meaningEdgeInfoWithTargetPhraseIndex:(unint64_t)a3 targetLinkIndex:(unint64_t)a4 meaningDescription:(id)a5
{
  v8 = a5;
  v9 = [[a1 alloc] _initWithTargetPhraseIndex:a3 targetLinkIndex:a4 type:0 meaningDescription:v8 gender:0 defaultGender:0];

  return v9;
}

+ (id)genderEdgeInfoWithTargetPhraseIndex:(unint64_t)a3 targetLinkIndex:(unint64_t)a4 gender:(unint64_t)a5 defaultGender:(unint64_t)a6
{
  v10 = [a1 alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v13 = [v10 _initWithTargetPhraseIndex:a3 targetLinkIndex:a4 type:1 meaningDescription:0 gender:v11 defaultGender:v12];

  return v13;
}

- (id)_initWithTargetPhraseIndex:(unint64_t)a3 targetLinkIndex:(unint64_t)a4 type:(unint64_t)a5 meaningDescription:(id)a6 gender:(id)a7 defaultGender:(id)a8
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v23.receiver = self;
  v23.super_class = _LTUnvalidatedEdgeInfo;
  v17 = [(_LTUnvalidatedEdgeInfo *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_type = a5;
    v17->_targetPhraseIndex = a3;
    v17->_targetLinkIndex = a4;
    v19 = [v14 copy];
    meaningDescription = v18->_meaningDescription;
    v18->_meaningDescription = v19;

    objc_storeStrong(&v18->_targetGender, a7);
    objc_storeStrong(&v18->_defaultGender, a8);
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
  v7 = [(_LTUnvalidatedEdgeInfo *)self targetPhraseIndex];
  v8 = [(_LTUnvalidatedEdgeInfo *)self targetLinkIndex];
  v9 = [(_LTUnvalidatedEdgeInfo *)self targetGender];
  v10 = [(_LTUnvalidatedEdgeInfo *)self defaultGender];
  v11 = [(_LTUnvalidatedEdgeInfo *)self meaningDescription];
  v12 = [v3 stringWithFormat:@"<%@: %p type: %@; targetIndex: %zu; linkIndex: %zu; gender: %@; defaultGender: %@; menuDescription: %@>", v5, self, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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