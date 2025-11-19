@interface AVTCoreModelPickerDisplayCondition
+ (id)displayConditionFromDictionnary:(id)a3;
- (AVTCoreModelPickerDisplayCondition)initWithTargetSectionIndex:(unint64_t)a3 value:(unint64_t)a4;
@end

@implementation AVTCoreModelPickerDisplayCondition

+ (id)displayConditionFromDictionnary:(id)a3
{
  if (a3)
  {
    v5 = kAVTEditingModelDefinitionsDisplayConditionSectionIndexKey;
    v6 = a3;
    v7 = [v6 objectForKeyedSubscript:v5];
    v8 = [v7 integerValue];

    v9 = [v6 objectForKeyedSubscript:kAVTEditingModelDefinitionsDisplayConditionValueKey];

    v10 = [a1 conditionValueFromString:v9];
    v11 = [[AVTCoreModelPickerDisplayCondition alloc] initWithTargetSectionIndex:v8 value:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (AVTCoreModelPickerDisplayCondition)initWithTargetSectionIndex:(unint64_t)a3 value:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = AVTCoreModelPickerDisplayCondition;
  result = [(AVTCoreModelPickerDisplayCondition *)&v7 init];
  if (result)
  {
    result->_targetSectionIndex = a3;
    result->_value = a4;
  }

  return result;
}

@end