@interface AVTCoreModelPickerDisplayCondition
+ (id)displayConditionFromDictionnary:(id)dictionnary;
- (AVTCoreModelPickerDisplayCondition)initWithTargetSectionIndex:(unint64_t)index value:(unint64_t)value;
@end

@implementation AVTCoreModelPickerDisplayCondition

+ (id)displayConditionFromDictionnary:(id)dictionnary
{
  if (dictionnary)
  {
    v5 = kAVTEditingModelDefinitionsDisplayConditionSectionIndexKey;
    dictionnaryCopy = dictionnary;
    v7 = [dictionnaryCopy objectForKeyedSubscript:v5];
    integerValue = [v7 integerValue];

    v9 = [dictionnaryCopy objectForKeyedSubscript:kAVTEditingModelDefinitionsDisplayConditionValueKey];

    v10 = [self conditionValueFromString:v9];
    v11 = [[AVTCoreModelPickerDisplayCondition alloc] initWithTargetSectionIndex:integerValue value:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (AVTCoreModelPickerDisplayCondition)initWithTargetSectionIndex:(unint64_t)index value:(unint64_t)value
{
  v7.receiver = self;
  v7.super_class = AVTCoreModelPickerDisplayCondition;
  result = [(AVTCoreModelPickerDisplayCondition *)&v7 init];
  if (result)
  {
    result->_targetSectionIndex = index;
    result->_value = value;
  }

  return result;
}

@end